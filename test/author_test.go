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
	createAuthorUrl = "http://localhost:8080/rest/api/v1.0/authors"
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

	t.Log(req)

	client := http.Client{}

	resp, err := client.Do(req)
	if err != nil {
		t.Errorf("Error while getting response from '%v'. Error: %v", createAuthorUrl, err)
		return
	}

	defer resp.Body.Close()

	t.Log(resp)

	// resp.StatusCode

}
