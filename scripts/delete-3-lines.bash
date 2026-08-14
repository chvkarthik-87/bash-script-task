#!/bin/bash

read -p "Enter file name: " file

if [ -f "$file" ]; then
    head -n -3 "$file" > temp.txt
    mv temp.txt "$file"
    echo "Last 3 lines deleted successfully."
else
    echo "File does not exist."
fi
