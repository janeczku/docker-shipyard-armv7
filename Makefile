# Makefile for the Docker image janeczku/shipyard-armv7
# MAINTAINER: Jan Broer <janeczku@yahoo.com>

.PHONY: all container release

PREFIX = janeczku
TAG = dev-5a6b9b9

all: container

container:
	@echo Building Shipyard image $(TAG)
	docker build -t $(PREFIX)/shipyard-armv7 .
	docker tag $(PREFIX)/shipyard-armv7:latest $(PREFIX)/shipyard-armv7:$(TAG)

release: container
	@echo Pushing Shipyard image $(TAG)
	docker push $(PREFIX)/shipyard-armv7
