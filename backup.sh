#!/bin/bash

# Create backup directory if it doesn't exist
mkdir -p backup

# Get the current timestamp (YYYYMMDD_HHMMSS)
timestamp=$(date +"%Y%m%d_%H%M%S")

# Loop through all .txt files in current directory
for file in *.txt; do
    if [ -f "$file" ]; then
        # Extract filename without extension
        filename=$(basename "$file" .txt)
        # Copy file into backup directory with timestamp
        cp "$file" "backup/${filename}_${timestamp}.txt"
        echo "Backed up $file -> backup/${filename}_${timestamp}.txt"
    fi
done