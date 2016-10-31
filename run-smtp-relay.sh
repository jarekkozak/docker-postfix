#!/bin/bash
. smtp-config
docker run -d --name $CONTAINER -p 0.0.0.0:$PORT:25 -e maildomain=$DOMAIN -e SMTP_SERVER=$SMTP_SERVER -e SMTP_USERNAME=$SMTP_USERNAME -e SMTP_PASSWORD=$SMTP_PASSWORD $IMAGE

