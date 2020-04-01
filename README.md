![Gearbox](https://raw.githubusercontent.com/gearboxworks/gearboxworks.github.io/master/assets/images/gearbox-logo.png)


# composer Docker container service for [Gearbox](https://github.com/gearboxworks/)
This is the repository for the [composer](https://getcomposer.org/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-composer?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-composer) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-composer?sort=semver) [![release-state](https://github.com/gearboxworks/docker-composer/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-composer/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags |
| ------- | -------------- | -------------- | ----------- | ----------- |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.1.3-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.1.3) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.1.3) | _([`1.1.3`, `1.1`](https://github.com/gearboxworks/docker-composer/blob/master/1.1/DockerfileRuntime))_ |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.10.0-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.10.0) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.10.0) | _([`1.10.0`, `1.10`, `latest`](https://github.com/gearboxworks/docker-composer/blob/master/1.10/DockerfileRuntime))_ |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.2.4-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.2.4) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.2.4) | _([`1.2.4`, `1.2`](https://github.com/gearboxworks/docker-composer/blob/master/1.2/DockerfileRuntime))_ |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.3.3-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.3.3) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.3.3) | _([`1.3.3`, `1.3`](https://github.com/gearboxworks/docker-composer/blob/master/1.3/DockerfileRuntime))_ |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.4.3-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.4.3) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.4.3) | _([`1.4.3`, `1.4`](https://github.com/gearboxworks/docker-composer/blob/master/1.4/DockerfileRuntime))_ |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.5.6-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.5.6) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.5.6) | _([`1.5.6`, `1.5`](https://github.com/gearboxworks/docker-composer/blob/master/1.5/DockerfileRuntime))_ |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.6.5-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.6.5) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.6.5) | _([`1.6.5`, `1.6`](https://github.com/gearboxworks/docker-composer/blob/master/1.6/DockerfileRuntime))_ |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.7.3-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.7.3) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.7.3) | _([`1.7.3`, `1.7`](https://github.com/gearboxworks/docker-composer/blob/master/1.7/DockerfileRuntime))_ |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.8.6-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.8.6) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.8.6) | _([`1.8.6`, `1.8`](https://github.com/gearboxworks/docker-composer/blob/master/1.8/DockerfileRuntime))_ |
| [composer](https://getcomposer.org/) | ![composer](https://img.shields.io/badge/composer-1.9.3-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/composer/1.9.3) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/composer/1.9.3) | _([`1.9.3`, `1.9`](https://github.com/gearboxworks/docker-composer/blob/master/1.9/DockerfileRuntime))_ |


## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/)
framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.
You can either use it directly from DockerHub or GitHub.


## Method 1: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/composer-docker.git`

### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.

### Runtime from GitHub repo
You can either build your container as above, or use it from DockerHub with these commands:

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


## Method 2: Docker Hub

### Setup from Docker Hub
A simple `docker pull gearbox/composer` will pull down the latest version.

### Starting
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name composer-latest --restart unless-stopped --network gearboxnet gearbox/composer:latest`

### Stopping
stop - Stop a Docker container.

`docker stop composer-latest`

### Remove container
rm - Remove the Docker container.

`docker container rm composer-latest`

### Run in foreground
run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name composer-latest --network gearboxnet gearbox/composer:latest`

### Run a shell
shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name composer-latest -i -t --network gearboxnet gearbox/composer:latest /bin/bash`

### SSH
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.

```
SSH_PORT="$(docker port composer-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

