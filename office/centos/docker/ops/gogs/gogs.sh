#!/bin/sh

keysFile="/home/git/.ssh/authorized_keys"
gogsKeysFile="/data/db/gogs/git/.ssh/authorized_keys"
rsaPubFile="/home/git/.ssh/id_rsa.pub"

if [[ `grep -c "git@$(hostname)" ${gogsKeysFile}` -eq '0' ]]; then
    idRsa=`cat ${rsaPubFile}`
    echo "no-port-forwarding,no-X11-forwarding,no-agent-forwarding,no-pty $idRsa" >> ${gogsKeysFile}
fi

isDiff=$(diff -q ${keysFile} ${gogsKeysFile})
if [[ -n "${isDiff}" ]]; then
    cp -f ${gogsKeysFile} ${keysFile}
fi

gogsBin="/app/gogs/gogs"
sed -i 's#/app/gogs/gogs#/data/db/gogs/ssh-gogs#' ${keysFile}

ssh -p 10022 -o StrictHostKeyChecking=no git@127.0.0.1 "SSH_ORIGINAL_COMMAND=\"$SSH_ORIGINAL_COMMAND\" $gogsBin $@"
