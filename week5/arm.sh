#!/bin/bash

# Read the number from the user
echo "Enter a number:"
read number

sum=0
temp=$number

# Calculate the sum of cubes of digits
while [ $temp -gt 0 ]
do
    digit=$((temp % 10))  # Get the last digit
    sum=$((sum + digit * digit * digit))  # Add the cube of the digit to the sum
    temp=$((temp / 10))  # Remove the last digit
done

# Check if the sum is equal to the original number
if [ $sum -eq $number ]; then
    echo "$number is an Armstrong number."
else
    echo "$number is not an Armstrong number."
fi

