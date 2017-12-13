package handler

import (
	"encoding/json"
	"net/http"

	"github.com/adrian83/go-mvc-library/library/domain/user/model"
	libjson "github.com/adrian83/go-mvc-library/library/web/json"
	libsession "github.com/adrian83/go-mvc-library/library/web/session"

	"github.com/adrian83/go-redis-session"
)

// AccountHandler is a handler for everything account-related.
type AccountHandler struct {
	SessionStore session.Store
}

// Routes implements Controller interface.
func (ah *AccountHandler) Routes() []Route {
	return []Route{
		Route{
			Path:    apiV1 + "auth/login",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(ah.SessionStore, ah.login)},
			Method:  "POST",
		},
	}
}

func (ah *AccountHandler) login(w http.ResponseWriter, r *http.Request, s session.Session) error {

	var user model.User
	if err := json.NewDecoder(r.Body).Decode(&user); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}

	s.Add("user.Login", user.Login)

	//model := NewModel()
	//model.Values["user"] = user

	return nil
}
