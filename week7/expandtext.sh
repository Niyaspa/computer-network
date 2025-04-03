#!/bin/bash


echo "Enter the filename:"
read filename

echo "Enter the text to append to every line:"
read append_text


if [ ! -f "$filename" ]; then
    echo "Error: File not found!"
    exit 1
fi


sed -i "s/$/ $append_text/" "$filename"

echo "Text '$append_text' added to every line in $filename successfully!"

