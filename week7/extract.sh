#!/bin/bash

# Ask user for input file and line range
echo "Enter the file name:"
read filename

echo "Enter the starting line number:"
read start

echo "Enter the ending line number:"
read end

# Extract lines using sed
sed -n "${start},${end}p" "$filename"

