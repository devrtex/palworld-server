#!/bin/bash

# Directory where the files are located
backup_dir="/home/steam/Palworld_backups/"

# Check if the directory exists
if [ ! -d "$backup_dir" ]; then
    echo "Backup directory $backup_dir not found."
    exit 1
fi

# Change directory to the backup directory
cd "$backup_dir" || exit 1

# Check if there are any files in the directory
if [ -z "$(ls -A $backup_dir)" ]; then
    echo "No files found in $backup_dir"
    exit 0
fi

# Find the oldest file in the directory
oldest_file=$(ls -t | tail -n 1)

# Delete the oldest file
if [ -n "$oldest_file" ]; then
    echo "Deleting oldest file: $oldest_file"
    rm "$oldest_file"
else
    echo "Failed to find oldest file"
    exit 1
fi

exit 0
