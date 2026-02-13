.PHONY: build-run
build-run:
	go build -o ./tmp/main ./cmd/app/main.go
	./tmp/main

.PHONY: watch
watch:
	wgo -file .go clear :: wgo run ./cmd/app/main.go