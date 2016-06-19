package cookie

import (
	"fmt"
	"net/http"
)

const (
	sessionIdCookieName = "session_id"
)

func SessionID(request *http.Request) (sessionID string, cookieExists bool) {

	sessionIDCookie, err := request.Cookie(sessionIdCookieName)
	if err != nil {
		fmt.Printf("Error while getting cookie with name '%v' caused by %v\n", sessionIdCookieName, err)
		return
	}

	return sessionIDCookie.Value, true
}
