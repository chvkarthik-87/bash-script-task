#!/bin/bash
#create multiple files.

read -p "Enter number of files to create: " n

for ((i=1; i<=n; i++))
do
    touch "file$i.txt"
done

echo "$n files created successfully."
