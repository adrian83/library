package session

import (
	"github.com/adrian83/go-redis-session"
	"net/http"
	"time"
	"web/cookie"
)

const (
	defSessionDuration = time.Duration(1000) * time.Minute
)

type SessionHandler func(w http.ResponseWriter, r *http.Request, s session.Session) error

func WithSession(sessionStore session.Store, sessionHandler SessionHandler) func(http.ResponseWriter, *http.Request) error {

	return func(w http.ResponseWriter, r *http.Request) error {

		sessionID, ok := cookie.SessionID(r)

		var session session.Session

		if !ok {

			// create new session
			sess, err := sessionStore.NewSession(defSessionDuration)
			if err != nil {
				return err
			}

			// create and save cookie with session id
			cookie.SaveSessionID(sess.ID(), defSessionDuration, w)

			session = sess

		} else {

			// get existing session
			sess, err := sessionStore.FindSession(sessionID)
			if err != nil {
				return err
			}
			session = sess
		}

		// execute controller function
		err := sessionHandler(w, r, session)
		if err != nil {
			return err
		}

		// save all session changes
		if err := sessionStore.SaveSession(session); err != nil {
			return err
		}

		return err

	}
}
