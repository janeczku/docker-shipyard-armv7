# Makefile for the Docker image janeczku/etcd-armv7
# MAINTAINER: Jan Broer <janeczku@yahoo.com>

.PHONY: all container release

PREFIX = janeczku

all: container

container:
	docker build -t $(PREFIX)/curl-armv7 .

release: container
	docker push $(PREFIX)/curl-armv7
