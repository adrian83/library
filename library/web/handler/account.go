package handler

import (
	"encoding/json"
	"net/http"

	"github.com/adrian83/go-mvc-library/library/domain/user/model"
	"github.com/adrian83/go-redis-session"
)

type AccountHandler struct {
}

func (h *AccountHandler) Login(w http.ResponseWriter, r *http.Request, s session.Session) error {

	decoder := json.NewDecoder(r.Body)
	var user model.User
	if err := decoder.Decode(&user); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}

	s.Add("user.Login", user.Login)

	model := NewModel()
	model.Values["user"] = user

	return nil
}
