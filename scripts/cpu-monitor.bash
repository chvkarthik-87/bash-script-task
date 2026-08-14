#!/bin/bash

CPU=$(top -bn1 | awk '/Cpu\(s\)/ {print 100 - $8}')
CPU_INT=${CPU%.*}

echo "Current CPU usage: ${CPU}%"

if [ "$CPU_INT" -gt 80 ]; then
    echo "CPU usage is ${CPU}% on $(hostname)" | mail -s "CPU Usage Alert" your@email.com
    echo "Email notification sent."
else
    echo "CPU usage is normal."
fi
