#!/usr/bin/env bash
# Run a restic command using the correct repo and environment values
set -e -o pipefail

source $RESTIC_BACKUP_DIRECTORY/env.sh

if [ ! -d $RESTORE_MOUNT_POINT ]
then
    mkdir -p $RESTORE_MOUNT_POINT
fi

restic mount $RESTORE_MOUNT_POINT
