---
categories:
    - Training
    - AWS
    - Container
tags:
    - containers
    - docker
    - training
    - cloud
    - aws
    - security
    - best practices
---

Docker images and containers start with basic and bonus advanced security
![Docker logo](https://www.docker.com/sites/default/files/d8/2019-07/vertical-logo-monochromatic.png)

## Get images and run it to create a container

    docker run -d --rm centos-suresh:v01 tail -f /dev/null

    docker run centos:7 tail -f /dev/null

## Do what you wish with your container and have fun

    docker exec -it 8891619cbcf0 /bin/sh

    docker exec -it -u root 8891619cbcf0 /bin/sh

## Bonus advanced security with Docker containers and images

- [Keynote: Running with Scissors - Liz Rice, Technology Evangelist, Aqua Security](https://youtu.be/ltrV-Qmh3oY)

- More to come

`chroot`

`unshared`

`....`