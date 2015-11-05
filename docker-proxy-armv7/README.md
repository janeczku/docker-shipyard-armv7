# Docker Proxy (armv7 image)
Forked from [ehazlett/dockerfiles](https://github.com/ehazlett/dockerfiles/tree/master/docker-proxy)   

This enables a proxy to connect to the Docker socket without needing to change
the Docker Engine configuration.

By default, the proxy will listen on TCP.  You can also enable TLS by specifying
the following environment variables:

- `SSL_CA`: path to the CA certificate
- `SSL_CERT`: path to the server certificate
- `SSL_KEY`: path to the server key