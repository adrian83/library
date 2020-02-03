package api

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
	"strconv"
	"time"

	"github.com/adrian83/library/pkg/common"
)

const (
	contentType = "Content-Type"

	typeJSON = "application/json"
	typeText = "plain/text"

	// RequestTimeout is the default timeout for all requests.
	RequestTimeout = 10 * time.Second

	defaultLimit  int64 = 5
	defaultOffset int64 = 0
	defaultSort         = "_id"
)

type Logger interface {
	Info(...interface{})
	Infof(string, ...interface{})
	Errorf(string, ...interface{})
}

// UnmarshalReqBody transforms UnmarshalAndValidate into given interface{}.
func UnmarshalReqBody(rc io.Reader, str interface{}) error {
	bodyBts, err := ioutil.ReadAll(rc)
	if err != nil {
		return fmt.Errorf("cannot read from Reader, error: %w", err)
	}

	return json.Unmarshal(bodyBts, str)
}

// UnmarshalAndValidate transforms UnmarshalAndValidate into given instance of
// Validable, taen validates if the struct is correct.
func UnmarshalAndValidate(rc io.Reader, val Validable) error {
	if err := UnmarshalReqBody(rc, val); err != nil {
		return fmt.Errorf("cannot unmarshal from Reader to Validable, error: %w", err)
	}

	return val.Validate()
}

// ResponseText writes given text and status into ResponseWriter in form of text.
func ResponseText(status int, msg string, w http.ResponseWriter, logger Logger) {
	w.Header().Add(contentType, typeText)
	w.WriteHeader(status)

	if _, err := w.Write([]byte(msg)); err != nil {
		logger.Errorf("cannot write to http.ResponseWriter, error: %v", err)
	}
}

// ResponseJSON writes given interface{} and status into ResponseWritercin form of json.
func ResponseJSON(status int, resp interface{}, w http.ResponseWriter, logger Logger) {
	var respBts []byte

	if resp != nil {
		bts, err := json.Marshal(resp)
		if err != nil {
			HandleError(err, w, logger)
			return
		}

		respBts = bts
	}

	w.Header().Add(contentType, typeJSON)
	w.WriteHeader(status)

	if _, err := w.Write(respBts); err != nil {
		logger.Errorf("cannot write to http.ResponseWriter, error: %v", err)
	}
}

// Validable is an interface for all structures that can be validated.
type Validable interface {
	Validate() error
}

func ParseListRequest(params map[string][]string) *common.ListRequest {
	limit, offset, sort := defaultLimit, defaultOffset, defaultSort

	limits := params["limit"]
	if len(limits) > 0 {
		limitStr := limits[0]
		limit, _ = strconv.ParseInt(limitStr, 10, 64)
	}

	offsets := params["offset"]
	if len(offsets) > 0 {
		offsetStr := offsets[0]
		offset, _ = strconv.ParseInt(offsetStr, 10, 64)
	}

	sorts := params["sort"]
	if len(sorts) > 0 {
		sort = sorts[0]
	}

	return common.NewListRequest(offset, limit, sort)
}
