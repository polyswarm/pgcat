BASE_IMAGE_NAME:=pgcat

build:
	docker buildx build --progress plain \
		-t $(REPO_URL)/$(BASE_IMAGE_NAME) \
		.

release:
	docker push $(REPO_URL)/$(BASE_IMAGE_NAME)
