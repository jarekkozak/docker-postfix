#!/bin/bash
.  smtp-config
if [ -n "$SMTP_SERVER" ] && [ -n "$SMTP_USERNAME" ] && [ -n "$SMTP_PASSWORD" ]; then 
echo $SMTP_SERVER
echo $SMTP_USERNAME
echo $SMTP_PASSWORD
fi

