#!/bin/sh

LOG_DIR="/var/log/app"

for FILE in "$LOG_DIR"/app-*.log
do
    if [ -f "$FILE" ]; then

        echo "Comprimiendo: $FILE"

        gzip "$FILE"

        chmod 644 "$FILE.gz"
    fi
done