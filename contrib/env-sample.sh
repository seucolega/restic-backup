#!/usr/bin/env bash

# Environment variables with the credentials you can find in the dashboard on the "Buckets" page when signed into
# your B2 account.
# More information at https://restic.readthedocs.io/en/latest/030_preparing_a_new_repo.html#backblaze-b2
export B2_ACCOUNT_ID="<b2_account_id>"
export B2_ACCOUNT_KEY="<b2_account_key>"
export RESTIC_REPOSITORY="b2:<b2_repository_name>"

# Files you want to back up from one or more files. This is especially useful if a lot of files have to be backed up
# that are not in the same folder or are maybe pre-filtered by other software.
# https://restic.readthedocs.io/en/latest/040_backup.html?highlight=exclude#including-files
export INCLUDE_FILE="./include.txt"

# Exclude folders and files by specifying exclude patterns.
# https://restic.readthedocs.io/en/latest/040_backup.html?highlight=exclude#excluding-files
export EXCLUDE_FILE="./exclude.txt"

# Directory on the system that will be used as the repository mount point. 
# I advise that this directory is present in the ignore list, in the "exclude.txt" file.
export RESTORE_MOUNT_POINT="$HOME/restore"

# You can specify how many hourly, daily, weekly, monthly and yearly snapshots to keep, any other snapshots are removed.
# More information at https://restic.readthedocs.io/en/latest/060_forget.html#removing-snapshots-according-to-a-policy
export KEEP_LAST=48
export RETENTION_DAYS=7
export RETENTION_WEEKS=4
export RETENTION_MONTHS=3
export RETENTION_YEARS=3
