#!/bin/bash

LOG_DIR=$1

if [ ! -d "$LOG_DIR" ]; then
    echo "Directory doesn't exist"
    exit 1
fi

# Compress logs older than 7 days
COMPRESSED=$(find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \; -print | wc -l)

# Delete .gz older than 30 days
DELETED=$(find "$LOG_DIR" -name "*.gz" -mtime +30 -delete -print | wc -l)

echo "Compressed: $COMPRESSED files"
echo "Deleted: $DELETED old archives"
