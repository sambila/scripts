#!/bin/bash

# Ask for the path to the directory containing the files
echo "Enter the path to the directory containing the files:"
read directory_path

# Check if the provided directory path exists
if [ -d "$directory_path" ]; then
  # Change to the directory
  cd "$directory_path" || exit

  # Loop through all pdf files in the specified directory
  for file in *.pdf; do
    # Use 'mv' to rename the file by removing spaces from the filename
    mv "$file" "${file// /}"
  done

  echo "Spaces have been removed from the filenames."
else
  echo "The specified directory does not exist."
fi
