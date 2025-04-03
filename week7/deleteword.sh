#!/bin/bash

i
echo "Enter the filename:"
read filename

echo "Enter the word to search for:"
read word


if [ ! -f "$filename" ]; then
    echo "Error: File not found!"
    exit 1
fi


sed -i "/$word/d" "$filename"

echo "All lines containing '$word' deleted from $filename successfully!"

