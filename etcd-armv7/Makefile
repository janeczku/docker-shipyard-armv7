# Makefile for the Docker image janeczku/etcd-armv7
# MAINTAINER: Jan Broer <janeczku@yahoo.com>

.PHONY: all container release

PREFIX = janeczku
TAG = 0.4.9

all: container

container:
	docker build -t $(PREFIX)/etcd-armv7 .
	docker tag $(PREFIX)/etcd-armv7:latest $(PREFIX)/etcd-armv7:$(TAG)

release: container
	docker push $(PREFIX)/etcd-armv7
