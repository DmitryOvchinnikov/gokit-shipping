SHELL := /bin/bash

# Module support

tidy:
	go mod tidy -compat=1.17
	go mod vendor

update:
	go get -u -t -d -v ./...

