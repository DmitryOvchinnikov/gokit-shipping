SHELL := /bin/bash

# Module support

tidy:
	go mod tidy
	go mod vendor

update:
	go get -u -t -d -v ./...

