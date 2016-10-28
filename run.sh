#!/bin/bash
MAIL=smtp
IMAGE_MAIL=postfix_image
docker stop $MAIL
docker rm -f $MAIL
docker run -d -p $MAILPORT:25 --restart=$RESTART -v $DIR/domainkeys:/etc/opendkim/domainkeys -e maildomain=$DOMAIN --name $MAIL $IMAGE_MAIL

