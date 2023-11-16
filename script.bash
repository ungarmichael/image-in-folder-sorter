#!/bin/bash

# Create folders for image files with format YYYYMMDD
for file in [0-9][0-9][0-9][0-9][0-1][0-9][0-3][0-9]*; do
    if [[ -f $file ]]; then
        folder="${file:0:8}"
        mkdir -p "$folder"
        mv "$file" "$folder/"
    fi
done

echo "Image files moved into folders based on YYYYMMDD format."
