BASE_IMAGE_NAME:=pgcat

build:
	docker build \
		-t $(REPO_URL)/$(BASE_IMAGE_NAME) \
		.

release:
	docker push $(REPO_URL)/$(BASE_IMAGE_NAME)
