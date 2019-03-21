#!/bin/bash

SSH_HOST="<SSH_HOST_WITH_PORT>"
SSH_USER="<SSH_USER>"
SSH_RSAKEY="/path/to/id_rsa_key"
LOCALPATH="/local/path/to/sync"
REMOTEPATH="/remote/path/to/sync"

/usr/local/bin/osync.sh --initiator="${LOCALPATH}" --target="ssh://${SSH_USER}@${SSH_HOST}/${REMOTEPATH}" --rsakey="${SSH_RSAKEY}"
