#!/bin/bash
. smtp-config
docker stop $CONTAINER
docker rm -f $CONTAINER
docker rmi -f $IMAGE

