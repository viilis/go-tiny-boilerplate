.PHONY:build-run
build-run:
	go build -o ./tmp/main ./cmd/app/main.go
	./tmp/main