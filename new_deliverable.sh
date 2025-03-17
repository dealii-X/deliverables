#!/bin/bash

# Check if correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <deliverable_number> <short_title> <full_title>"
    echo "Example: $0 3.4 short_title \"Long and full title\""
    exit 1
fi

# Get arguments
deliverable_number=$1
short_title=$2
full_title=$3

# Format the file name
file_name="D${deliverable_number}/D${deliverable_number}_${short_title// /_}.tex"

# If the deliverable directory does not exist, create it
if [ ! -d "D${deliverable_number}" ]; then
    mkdir "D${deliverable_number}"
fi

# Check if file already exists
if [ -f "$filename" ]; then
    echo "Error: ${file_name} already exists!"
    exit 1
fi

# Create the new deliverable file
cp D0.0_template/D0.0_template.tex "${file_name}"

# Replace the title in the file with the full title
sed -i "" "s/\[Full deliverable title\]/${full_title}/" "${file_name}"

sed -i "" "s/\[Deliverable number\]/${deliverable_number}/" "${file_name}"

# Output success message
echo "Created new deliverable: ${file_name}"ho "Title set to: ${full_title}"