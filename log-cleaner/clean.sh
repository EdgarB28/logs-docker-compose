#!/bin/sh

LOG_DIR="/var/log/app"

find "$LOG_DIR" \
    -type f \
    -name "*.gz" \
    -mmin +10 \
    -print \
    -delete