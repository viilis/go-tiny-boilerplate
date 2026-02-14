build-run:
	go build -o ./tmp/main ./cmd/app/main.go
	./tmp/main

watch:
	@if command -v wgo > /dev/null; then \
			echo "Watching..."; \
			wgo -file .go clear :: wgo run ./cmd/app/main.go; \
		else \
			read -p "'wgo' is not installed. Do you want to install it? [Y/n] " choice; \
			if [ "$$choice" != "n" ] && [ "$$choice" != "N" ]; then \
				go install github.com/bokwoon95/wgo@latest; \
				wgo -file .go clear :: wgo run ./cmd/app/main.go; \
			else \
				echo "You chose not to install wgo. Exiting..."; \
				exit 1; \
			fi; \
    	fi

.PHONY: watch build-run