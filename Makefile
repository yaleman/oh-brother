CONTAINER_NAME ?= ohbrother
IMAGE_NAME ?= yaleman/oh-brother
.DEFAULT: build

.PHONY: build
build: ## build the docker image yaleman/oh-brother:latest
build:
	./build_container.sh

.PHONY: download
download: ## download the .deb installer for brscan
download:
	./download_deb.sh

.PHONY: run
run: ## run the docker image on 8080
run:
	mkdir -p ./scans/
	docker run --rm -it -p "8080:8080" --init \
	 -v "$(PWD)/scans:/app/data/output" \
	--name "$(CONTAINER_NAME)" \
	--platform linux/amd64 --env-file .env \
	"$(IMAGE_NAME):latest"

.PHONY: background
background: ## run the docker image on 8080
background:
	mkdir -p ./scans/
	docker run -d --rm -p "8080:8080" --init \
	 -v "$(PWD)/scans:/app/data/output" \
	--name "$(CONTAINER_NAME)" \
	--platform linux/amd64 --env-file .env \
	"$(IMAGE_NAME):latest"



.PHONY: kill
kill: ## kill the docker container
kill:
	docker rm -f "$(CONTAINER_NAME)"