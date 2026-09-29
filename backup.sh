#!/bin/bash

SOURCE="$HOME/Linux-ubuntu-Automation"
BACKUP_DIR="$HOME/linux-backups"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

echo "================================="
echo " Linux Backup Automation"
echo "================================="

echo "Source: $SOURCE"
echo "Backup: $BACKUP_FILE"

tar -czf "$BACKUP_FILE" "$SOURCE"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
    echo "Backup file: $BACKUP_FILE"
else
    echo "Backup failed."
fi
