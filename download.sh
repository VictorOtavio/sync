#!/bin/bash

set -e

SSHUSER="<SSH_USER>"
SSHPASS="<SSH_PASSWORD>"
HOST="<HOST_IP>"
LOCALPATH="/path/to/files/"
REMOTEPATH="/path/to/backup/"

sshpass -p $SSHPASS rsync -rptvu --delete -e ssh $SSHUSER@$HOST:$REMOTEPATH $LOCALPATH

echo "*** FINISHED ***"

exit 0

