#!/bin/bash

read -p "Enter directory path to backup: " source

if [ -d "$source" ]; then
    backup="/tmp/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

    tar -czf "$backup" "$source"

    echo "Backup created successfully: $backup"
else
    echo "Directory does not exist."
fi
