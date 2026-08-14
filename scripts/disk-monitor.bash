#!/bin/bash

DISK=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current disk usage: ${DISK}%"

if [ "$DISK" -gt 80 ]; then
    echo "Disk usage is ${DISK}% on $(hostname)" | mail -s "Disk Space Alert" your@email.com
    echo "Email notification sent."
else
    echo "Disk usage is normal."
fi
