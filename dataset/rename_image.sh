#!/bin/bash

# Define the directory containing the images
directory="images"

# Change to the directory
cd "$directory" || exit

# Initialize counter
count=1

# Iterate over each file in the directory
for file in *; do
    # Define new filename
    new_filename="face-$count.jpg"
    
    # Rename the file
    mv "$file" "$new_filename"
    
    # Increment counter
    ((count++))
done

echo "Image files renamed successfully."
