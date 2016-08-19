package main

import (
	"fmt"
	"net/http"
)

func init() {
	http.HandleFunc("/", fromGo)
}

func fromGo(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "From Go program")
}
