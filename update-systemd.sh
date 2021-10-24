#!/usr/bin/env bash

SYSTEMD_USER_DIR="$HOME/.config/systemd/user"

if [ ! -d $SYSTEMD_USER_DIR ]
then
    mkdir -p $SYSTEMD_USER_DIR
fi

cp -r systemd/* $SYSTEMD_USER_DIR

systemctl --user daemon-reload

echo "Then, you can activate the timer with the command below:"
echo "systemctl --user enable restic-backup.timer"
