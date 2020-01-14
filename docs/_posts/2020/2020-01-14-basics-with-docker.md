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

Basics commands with docker

## Get images and run it to create a container

    docker run -d --rm centos-suresh:v01 tail -f /dev/null

    docker run centos:7 tail -f /dev/null


## Do what you wish with your container and have fun

    docker exec -it 8891619cbcf0 /bin/sh

    docker exec -it -u root 8891619cbcf0 /bin/sh

