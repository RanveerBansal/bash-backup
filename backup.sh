#!/bin/bash

echo "===== Backup Utility ====="
echo ""

FOLDER=$1

echo "Folder selected: $FOLDER"

if [ -z "$FOLDER" ]
then
    echo "Please provide a folder name."
    exit 1
fi

if [ ! -d "$FOLDER" ]
then
    echo "Folder not found."
    exit 1 
fi

mkdir -p backups

TODAY=$(date +%F)
echo $TODAY

BACKUP_FILE="backups/${FOLDER}_${TODAY}.tar.gz"
tar -czf "$BACKUP_FILE" "$FOLDER"

echo ""
echo "Backup completed successfully!"
echo "Saved as: $BACKUP_FILE"