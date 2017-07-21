#!/bin/bash
. smtp-config
docker stop $SMTP_CONTAINER
docker rmi -f $SMTP_IMAGE
docker build -t $SMTP_IMAGE .
