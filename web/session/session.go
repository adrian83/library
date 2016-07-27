package session

import (
	"github.com/adrian83/go-redis-session"
	"net/http"
	"time"
	"web/cookie"
	"web/handler"
)

const (
	defSessionDuration = time.Duration(1000) * time.Minute
)

type SessionHandler func(w http.ResponseWriter, r *http.Request, s redissession.Session) (handler.Model, error)

func WithSession(sessionStore redissession.SessionStore, sessionHandler SessionHandler) func(http.ResponseWriter, *http.Request) (handler.Model, error) {

	return func(w http.ResponseWriter, r *http.Request) (handler.Model, error) {

		model := handler.NewModel()

		sessionID, ok := cookie.SessionID(r)

		var session redissession.Session

		if !ok {

			// create new session
			sess, err := sessionStore.NewSession(defSessionDuration)
			if err != nil {
				return model, err
			}

			// create and save cookie with session id
			cookie.SaveSessionID(sess.ID(), defSessionDuration, w)

			session = sess

		} else {

			// get existing session
			sess, err := sessionStore.FindSession(sessionID)
			if err != nil {
				return model, err
			}
			session = sess
		}

		// execute controller function
		model, err := sessionHandler(w, r, session)
		if err != nil {
			return model, err
		}

		// save all session changes
		if err := sessionStore.SaveSession(session); err != nil {
			return model, err
		}

		return model, err

	}
}
