package test

import (
	"bytes"
	"domain/author/model"
	"encoding/json"
	"net/http"
	"testing"
)

const (
	createAuthorUrl = "http://localhost:9090/rest/api/v1.0/authors"
)

func AuthorToHttpBody(t *testing.T, author model.Author) *bytes.Buffer {
	data, err := json.Marshal(author)
	if err != nil {
		t.Errorf("Error while marshaling to json. Error: %v", err)
	}
	return bytes.NewBuffer(data)
}

type CreateAuthorResponse struct {
	Author model.Author
}

func DecodeCreateAuthorResp(t *testing.T, response *http.Response) CreateAuthorResponse {
	respData := new(CreateAuthorResponse)
	if err := json.NewDecoder(response.Body).Decode(&respData); err != nil {
		t.Error("Cannot decore response")
	}
	return *respData
}

func TestCreteAuthor(t *testing.T) {

	author := model.Author{FirstName: "Adam", LastName: "Mickiewicz"}

	body := AuthorToHttpBody(t, author)

	resp := Post(t, createAuthorUrl, body)
	defer resp.Body.Close()

	AssertResponseStatus(t, resp, http.StatusOK)

	respData := DecodeCreateAuthorResp(t, resp)

	AsserAuthorIDNotEmpty(t, respData.Author.ID)
	AsserAuthorFirstName(t, author.FirstName, respData.Author.FirstName)
	AsserAuthorLastName(t, author.LastName, respData.Author.LastName)

}

func TestCreteAuthorWithoutFirstName(t *testing.T) {

	author := model.Author{LastName: "Sienkiewicz"}

	body := AuthorToHttpBody(t, author)

	resp := Post(t, createAuthorUrl, body)
	defer resp.Body.Close()

	AssertResponseStatus(t, resp, http.StatusOK)

	respData := DecodeCreateAuthorResp(t, resp)

	AsserAuthorIDNotEmpty(t, respData.Author.ID)
	AsserAuthorFirstName(t, author.FirstName, respData.Author.FirstName)
	AsserAuthorLastName(t, author.LastName, respData.Author.LastName)
}

func TestCreteAuthorWithoutLastName(t *testing.T) {

	author := model.Author{FirstName: "Cyprian"}

	body := AuthorToHttpBody(t, author)

	resp := Post(t, createAuthorUrl, body)
	defer resp.Body.Close()

	AssertResponseStatus(t, resp, http.StatusBadRequest)

	respData := DecodeBadRequestResponse(t, resp)

	AssertGeneralInfoHttpStatus(t, http.StatusBadRequest, respData.GeneralInformation.HttpStatus)
	AssertGeneralInfoCode(t, "error.generic.400", respData.GeneralInformation.Code)

}

func AsserAuthorIDNotEmpty(t *testing.T, ID string) {
	if ID == "" {
		t.Errorf("Author's ID should be be empty but is '%s'.", ID)
	}
}

func AsserAuthorFirstName(t *testing.T, expected, actual string) {
	if actual != expected {
		t.Errorf("Author's first name should be '%s' but is '%s'.", expected, actual)
	}
}

func AsserAuthorLastName(t *testing.T, expected, actual string) {
	if actual != expected {
		t.Errorf("Author's last name should be '%s' but is '%s'.", expected, actual)
	}
}
