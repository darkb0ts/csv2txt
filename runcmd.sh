#!/bin/bash

# Check if a file argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file>"
    echo "Example: $0 example.csv"
    echo "Add Command for Httpx"
    exit 1
fi

# Run the Go program and capture the output
filename=$(go run csv2txt.go "$1")

# Set the options
read -p "Enter additional options for httpx (e.g., -sc -ct -pt): " additional_options

# Run the httpx command with the captured filename and additional options

cat "$filename" | httpx $additional_options

# Clean up the temporary file
rm "$filename"