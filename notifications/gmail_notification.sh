#!/bin/bash
EMAIL="mysol.c.t@gmail.com"
SUBJECT="Alerte Système"
BODY="Une alerte a été déclenchée sur le système."
echo "$BODY" | mail -s "$SUBJECT" -r "sender@gmail.com" "$EMAIL"