package session

import (
	"fmt"
	"github.com/adrian83/go-redis-session"
	"net/http"
	"time"
	"web/cookie"
)

const (
	defSessionDuration = time.Duration(30) * time.Minute
)

type SessionHandler func(w http.ResponseWriter, r *http.Request, s redissession.Session) (map[string]interface{}, error)

func WithSession(sessionStore redissession.SessionStore, handler SessionHandler) func(http.ResponseWriter, *http.Request) (map[string]interface{}, error) {

	return func(w http.ResponseWriter, r *http.Request) (map[string]interface{}, error) {

		sessionID, ok := cookie.SessionID(r)

		var session redissession.Session

		if !ok {

			// create new session
			sess, err := sessionStore.NewSession(defSessionDuration)
			if err != nil {
				return nil, err

			}

			// create and save cookie with session id
			cookie.SaveSessionID(sess.ID(), w)

			session = sess

		} else {

			// get existing session
			sess, err := sessionStore.FindSession(sessionID)
			if err != nil {
				return nil, err
			}
			session = sess
		}

		// execute controller function
		model, err := handler(w, r, session)
		if err != nil {
			return nil, err
		}

		// save all session changes
		if err := sessionStore.SaveSession(session); err != nil {
			return nil, err
		}

		fmt.Printf("Model: %v\n", model)
		return model, err

	}
}
