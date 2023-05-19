#!/bin/bash

# Set constant username for server A
usernameA="your_username_A"

# Prompt for password
read -s -p "Enter your password for server A: " passwordA

# Download the file from server A to client X
curl ftp://serverA/path/to/file --user ${usernameA}:${passwordA} -o filename.jpg

# Generate and store checksum for the downloaded file
checksumA=$(md5sum filename.jpg | awk '{ print $1 }')

# Upload the file from client X to server B (assuming SSH key is set up)
scp filename.jpg serverB:/path/to/destination/

# Generate and store checksum for the uploaded file
ssh serverB "md5sum /path/to/destination/filename.jpg" > checksumB.txt
checksumB=$(awk '{ print $1 }' checksumB.txt)

# Compare the checksums
if [ "$checksumA" == "$checksumB" ]; then
  echo "File transfer completed successfully."
  # Delete the file from server A if the checksums match
  curl ftp://serverA/path/to/file --user ${usernameA}:${passwordA} -O -Q "-DELE filename.jpg"
else
  echo "File transfer failed. Checksums do not match."
fi
