---
categories:
    - Training
    - AWS
    - Containers
    
tags:
    - containers
    - docker
    - training
    - cloud
    - aws
    - security
    - best-practices
---

Docker images and containers start with basic and bonus advanced security ![Docker logo](https://www.docker.com/sites/default/files/d8/2019-07/vertical-logo-monochromatic.png)

## Sample basic command for Docker containers and images

`docker --help` - list the help options for `docker` command

`docker run --help` - list the help option for `docker run` command

`docker images` - list your local docker images

`docker ps` - list local running docker containers

`docker ps -a` - list local running OR stopped docker containers

`docker rm f66ae9b25d96` - remove docker container with ID f66ae9b25d96

`docker run --rm centos:7 tail -f /dev/null` - runs a docker container from image `centos:7`, keeps container running with `tail -f /dev/null` command

`docker exec -it 513ee56fde09 /bin/sh` - interactive shell on the container that is running

`docker exec -it -u root 8891619cbcf0 /bin/sh` - interactive shell with sudo privileges (NOT RECOMMENDED, security risk)

`docker kill 513ee56fde09` - kill (stops) the docker container that was running

`docker run ubuntu` - runs a docker container with version ubuntu. It will download the docker image `ubuntu:latest` from [docker-hub](https://hub.docker.com/) if it does not find it locally in the machine.

`docker pull amazonlinux` - updates the local docker images named `

`docker commit 3808b8454239 centos-suresh:v01` - save current container with a image, which you can run more containers after

(...)

---

## Bonus advanced security with Docker containers and images

- [Keynote: Running with Scissors - Liz Rice, Technology Evangelist, Aqua Security](https://youtu.be/ltrV-Qmh3oY)

- More to come

`chroot`

`unshared`

`....`
