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
)

// UnmarshalReqBody transforms UnmarshalAndValidate into given interface{}.
func UnmarshalReqBody(rc io.ReadCloser, str interface{}) error {
	bodyBts, err := ioutil.ReadAll(rc)
	if err != nil {
		return err
	}

	return json.Unmarshal(bodyBts, str)
}

// UnmarshalAndValidate transforms UnmarshalAndValidate into given instance of
// Validable, taen validates if the struct is correct.
func UnmarshalAndValidate(rc io.ReadCloser, val Validable) error {
	if err := UnmarshalReqBody(rc, val); err != nil {
		return err
	}

	return val.Validate()
}

// ResponseText writes given text and status into ResponseWriter in form of text.
func ResponseText(status int, msg string, w http.ResponseWriter) {
	w.Header().Add(contentType, typeText)
	w.WriteHeader(status)
	w.Write([]byte(msg))
}

// ResponseJSON writes given interface{} and status into ResponseWritercin form of json.
func ResponseJSON(status int, resp interface{}, w http.ResponseWriter) {

	var respBts []byte
	if resp != nil {
		bts, err := json.Marshal(resp)
		if err != nil {
			HandleError(err, w)
			return
		}
		respBts = bts
	}

	w.Header().Add(contentType, typeJSON)
	w.WriteHeader(status)
	w.Write(respBts)
}

// Validable is an interface for all structures that can be validated.
type Validable interface {
	Validate() error
}

const (
	defaultLimit  int64 = 2
	defaultOffset int64 = 0
	defaultSort         = "_id"
)

func ParseListRequest(params map[string][]string) *common.ListRequest {

	limit, offset, sort := defaultLimit, defaultOffset, defaultSort

	limits := params["limit"]
	if len(limits) > 0 {
		fmt.Printf("\nLimits: %v\n", limits)
		limitStr := limits[0]
		limit, _ = strconv.ParseInt(limitStr, 10, 64)
	}

	offsets := params["offset"]
	if len(offsets) > 0 {
		fmt.Printf("\nOffsets: %v\n", offsets)
		offsetStr := offsets[0]
		offset, _ = strconv.ParseInt(offsetStr, 10, 64)
	}

	sorts := params["sort"]
	if len(sorts) > 0 {
		fmt.Printf("\nSorts: %v\n", sorts)
		sort = sorts[0]
	}

	fmt.Printf("limit: %v, offer: %v, sort: %v\n", limit, offset, sort)

	return common.NewListRequest(offset, limit, sort)

}
