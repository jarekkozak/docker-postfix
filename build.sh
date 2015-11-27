#!/bin/bash
IMAGE=jarek/postfix
docker rmi -f $IMAGE
docker build -t $IMAGE .
