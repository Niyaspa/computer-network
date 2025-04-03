#!/bin/bash


echo "Enter the filename:"
read filename

echo "Enter the word to replace:"
read old_word

echo "Enter the new word:"
read new_word


if [ ! -f "$filename" ]; then
    echo "Error: File not found!"
    exit 1
fi


sed -i "s/$old_word/$new_word/g" "$filename"

echo "All occurrences of '$old_word' replaced with '$new_word' in $filename successfully!"

