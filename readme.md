# Shipyard for the armhf (ARMv7) platform

This repository provides the [janeczku/shipyard-armv7](https://hub.docker.com/r/janeczku/shipyard-armv7/) image of the [Shipyard](https://github.com/shipyard/shipyard) Docker management controller.

Addditionally the `deploy` script has been adapted for ARMv7 platform devices by replacing the following Docker images:

* alpine => scaleway/alpine
* swarm => hypriot/rpi-swarm
* microbox/etcd => janeczku/etcd-armv7
* rethinkdb => mscook/rethinkdb-armv7
* ehazlett/docker-proxy => janeczku/docker-proxy-armv7
* ehazlett/curl => janeczku/curl-armv7
* shipyard/shipyard => janeczku/shipyard-armv7

## Quick Start

### Setup the master controller

This will deploy a Shipyard master on the host.

Once deployed, the script will output the URL to connect along with credential information.

> Note: The target host must already have the Docker engine installed

```sh
curl -s https://raw.githubusercontent.com/janeczku/docker-shipyard-armv7/master/deploy.sh | bash -s
```

For full usage details:

```sh
curl -s https://raw.githubusercontent.com/janeczku/docker-shipyard-armv7/master/deploy.sh | bash -s -- -h
```

### Adding a Node

To add additional nodes to the Swarm cluster, you can use this script again by specifying node for the ACTION. For example, if the IP of your initial node is 10.0.0.10 you can add a node by running the following:

```sh
curl -sSL https://raw.githubusercontent.com/janeczku/docker-shipyard-armv7/master/deploy.sh | ACTION=node DISCOVERY=etcd://10.0.1.10:4001 bash -s
```

# Documentation

Full docs are available at http://shipyard-project.com
