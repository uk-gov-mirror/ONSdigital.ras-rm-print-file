NAME := ras-rm-printfile
MAIN_SRC_FILE=cmd/ras-rm-print-file/main.go

.PHONY: test
test:
	go test  ./...

.PHONY: build
build:
	GOOS=linux GOARCH=arm64 CGO_ENABLED=0 go build -o build/$(NAME) $(MAIN_SRC_FILE)

.PHONY: fmt
fmt:
	go fmt  ./...

