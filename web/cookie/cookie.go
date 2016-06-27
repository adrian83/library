package cookie

import (
	"fmt"
	"net/http"
	"time"
)

const (
	sessionIdCookieName = "session_id"
)

func ByName(name string, request *http.Request) (sessionID string, exists bool) {

	cookie, err := request.Cookie(name)
	if err != nil {
		fmt.Printf("Error while getting cookie with name '%v' caused by %v\n", name, err)
		return
	}

	return cookie.Value, true
}

func SessionID(request *http.Request) (sessionID string, cookieExists bool) {
	return ByName(sessionIdCookieName, request)
}

func Save(name, value string, maxAge time.Duration, w http.ResponseWriter) {
	cookie := http.Cookie{
		Name:   name,
		Value:  value,
		MaxAge: int(maxAge.Seconds())}

	http.SetCookie(w, &cookie)
}

func SaveSessionID(sessionID string, maxAge time.Duration, w http.ResponseWriter) {
	Save(sessionIdCookieName, sessionID, maxAge, w)
}
