#!/bin/sh

LOG_FILE="/var/log/app/app.log"

echo "Iniciando generador de logs..."

touch "$LOG_FILE"

while true
do
    echo "$(date '+%Y-%m-%d %H:%M:%S') - INFO - Log generado automáticamente" >> "$LOG_FILE"

    sleep 1
done