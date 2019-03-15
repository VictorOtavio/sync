#!/bin/bash

set -e

DATE=$(date '+%Y-%m-%d %H:%M:%S')

printf "[${DATE}]\n** STARTED **\n\n"

SSHUSER="<SSH_USERNAME>"
SSHPASS="<SSH_PASSWORD>"
HOST="<SSH_HOST>"
LOCALPATH="/path/to/local/files/"
REMOTEPATH="/path/to/remote/files/"

sshpass -p $SSHPASS rsync -azv --delete -e ssh $LOCALPATH $SSHUSER@$HOST:$REMOTEPATH

printf "\n\n** FINISHED **\n\n"

exit 0
