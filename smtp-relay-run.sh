#!/bin/bash
. smtp-config
docker run -d --name $SMTP_CONTAINER \
	--restart=$SMTP_RESTART \
	 -p 0.0.0.0:$SMTP_PORT:25 \
	 -e maildomain=$SMTP_DOMAIN \
	 -e SMTP_SERVER=$SMTP_SERVER \
	 -e SMTP_USERNAME=$SMTP_USERNAME \
	 -e SMTP_PASSWORD=$SMTP_PASSWORD $SMTP_IMAGE

