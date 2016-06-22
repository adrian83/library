package session

import (
	"github.com/adrian83/go-redis-session"
	"net/http"
	//"web/cookie"
)

type SessionHandler func(w http.ResponseWriter, r *http.Request, s redissession.Session) (map[string]interface{}, error)

/*
type SessionHandler struct {
	SessionStore redissession.SessionStore
	HandlerFunc  handler.ModelHandler
}

func (h *SessionHandler) ServeHTTP(w http.ResponseWriter, req *http.Request) {

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

*/
