BASE_IMAGE_NAME := pgcat
REPO_URL ?=
IMAGE_TAG := $(if $(REPO_URL),$(REPO_URL)/$(BASE_IMAGE_NAME),$(BASE_IMAGE_NAME))

build:
	docker buildx build --progress plain -t $(IMAGE_TAG) .

release:
	docker push $(IMAGE_TAG)
