# etcd Docker image for armv7 platform

[etcd](https://github.com/coreos/etcd) is a distributed, consistent key-value store for shared configuration and service discovery, with a focus on being:

## Usage

```sh
docker run \
	-ti \
	--rm \
	-p 4001:4001 \
	-p 7001:7001 \
	-v /var/etcd/:/data \
	--name etcd \
	janeczku/etcd-armv7:0.4.9 \
	-name test-server
```

This will bring up etcd listening on default ports (4001 for client communication and 7001 for server-to-server communication)
