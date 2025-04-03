#!/bin/bash

# Prompt the user for input
echo "Enter the filename:"
read filename

echo "Enter the line number to delete:"
read line_num

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Use sed to delete the specified line
sed -i "${line_num}d" "$filename"

echo "Line $line_num deleted from $filename successfully!"

