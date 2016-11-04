#!/bin/sh
CMDARGS=""
if ! [ -z "$PKEY" ]; then
	CMDARGS="${CMDARGS} -i \"$PKEY\""
fi

if ! [ -z "$SSHCONF" ]; then
	CMDARGS="${CMDARGS} -F $SSHCONF"
fi
ssh $CMDARGS "$@"
