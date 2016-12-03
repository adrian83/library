package handler

import (
	"domain/user/model"
	"encoding/json"
	"github.com/adrian83/go-redis-session"
	"net/http"
)

type AccountHandler struct {
}

func (h *AccountHandler) Login(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	decoder := json.NewDecoder(r.Body)
	var user model.User
	if err := decoder.Decode(&user); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}

	s.Add("user.Login", user.Login)

	model := NewModel()
	model.Values["user"] = user

	return model, nil
}
