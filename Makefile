SHELL_PATH = /bin/bash
SHELL = $(if $(wildcard $(SHELL_PATH)),/bin/bash,/bin/bash)

chat-run:
	go run chat/api/services/cap/main.go | go run chat/api/tooling/logfmt/main.go

tidy:
	go mod tidy
	go mod vendor

deps-upgrade:
	go get -u -v ./...
	go mdo tidy
	go mod vendor

