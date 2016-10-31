#!/bin/bash
. smtp-config
docker rmi -f $IMAGE
docker build -t $IMAGE .
