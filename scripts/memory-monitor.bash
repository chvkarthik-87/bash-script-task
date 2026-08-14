#!/bin/bash

MEM=$(free | awk '/Mem:/ {printf "%.0f", ($3/$2)*100}')

echo "Current memory usage: ${MEM}%"

if [ "$MEM" -gt 80 ]; then
    echo "Memory usage is ${MEM}% on $(hostname)" | mail -s "Memory Usage Alert" your@email.com
    echo "Email notification sent."
else
    echo "Memory usage is normal."
fi
