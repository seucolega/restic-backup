#!/usr/bin/env bash
# Run a restic backup command using the correct repo and environment values
set -a
source $HOME/.config/restic-backup/restic-backup.conf
set +a

echo "Running command using the repository $RESTIC_REPOSITORY"

restic unlock

restic backup \
    --files-from="$INCLUDE_FILE" \
    --exclude-file="$EXCLUDE_FILE" \
    --exclude-caches

restic forget --keep-last "$KEEP_LAST" \
    --keep-daily "$RETENTION_DAYS" \
    --keep-weekly "$RETENTION_WEEKS" \
    --keep-monthly "$RETENTION_MONTHS" \
    --keep-yearly "$RETENTION_YEARS" \
    --prune

restic check --with-cache
