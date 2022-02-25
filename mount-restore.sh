#!/usr/bin/env bash
# Run a restic command using the correct repo and environment values
set -a
source $HOME/.config/restic-backup/restic-backup.conf
set +a

if [ ! -d $RESTORE_MOUNT_POINT ]
then
    mkdir -p $RESTORE_MOUNT_POINT
fi

restic mount $RESTORE_MOUNT_POINT
