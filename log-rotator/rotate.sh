#!/bin/sh

LOG_DIR="/var/log/app"
LOG_FILE="$LOG_DIR/app.log"
MAX_SIZE=5242880

if [ -f "$LOG_FILE" ]; then

    SIZE=$(stat -c %s "$LOG_FILE")

    if [ "$SIZE" -gt "$MAX_SIZE" ]; then

        TIMESTAMP=$(date '+%Y%m%d-%H%M%S')
        ROTATED_FILE="$LOG_DIR/app-$TIMESTAMP.log"

        mv "$LOG_FILE" "$ROTATED_FILE"

        touch "$LOG_FILE"

        chmod 644 "$LOG_FILE"

        echo "Log rotado: $ROTATED_FILE"
    fi
fi