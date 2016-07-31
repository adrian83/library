package test

import (
	"bytes"
	"domain/author/model"
	"encoding/json"
	"net/http"
	"testing"
)

const (
	post = "POST"
	get  = "GET"
)

const (
	jsonContentType = "application/json"
)

const (
	createAuthorUrl = "http://localhost:9090/rest/api/v1.0/authors"
)

func TestCanary(t *testing.T) {
	t.Log("Canary test")
}

func TestCreteAuthor(t *testing.T) {

	author := model.Author{FirstName: "Adam", LastName: "Mickiewicz"}

	data, err := json.Marshal(author)
	if err != nil {
		t.Errorf("Error while marshaling to json. Error: %v", err)
		return
	}

	body := bytes.NewBuffer(data)

	req, err := http.NewRequest(post, createAuthorUrl, body)
	if err != nil {
		t.Errorf("Error while making '%v' request to '%v'. Error: %v", post, createAuthorUrl, err)
		return
	}

	client := http.Client{}

	resp, err := client.Do(req)
	if err != nil {
		t.Errorf("Error while getting response from '%v'. Error: %v", createAuthorUrl, err)
		return
	}

	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Errorf("Response status should be '%d' but is '%d'", http.StatusOK, resp.StatusCode)
	}

	respData := new(struct {
		Author model.Author
	})

	if err := json.NewDecoder(resp.Body).Decode(&respData); err != nil {
		t.Error("Cannot decore response")
	}

	if respData.Author.ID == "" {
		t.Error("Author's ID cannot be empty")
	}

	if respData.Author.FirstName != author.FirstName {
		t.Errorf("Author's first name should be '%s' but is '%s'.", author.FirstName, respData.Author.FirstName)
	}

	if respData.Author.LastName != author.LastName {
		t.Errorf("Author's last name should be '%s' but is '%s'.", author.LastName, respData.Author.LastName)
	}

}
