#!/bin/bash
#to check_directory
read -p "Enter directory path: " dir

if [ -d "$dir" ]; then
   echo "Directory exists: $dir"
else
    echo "Directory does not exist: $dir"
fi
