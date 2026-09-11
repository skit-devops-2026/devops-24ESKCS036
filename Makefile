.PHONY: install test build run docker-build docker-up

install:
	@echo "No external dependencies required for the static frontend."

test:
	@bash tests/test_project.sh

build:
	@echo "Validating production files..."
	@test -f index.html
	@test -f css/style.css
	@test -f js/script.js
	@echo "Build validation successful."

run:
	@echo "Open index.html in a web browser."

# Needed from M4 onwards
docker-build:
	@echo "Docker build will be configured in the containerization stage."

docker-up:
	docker compose up --build