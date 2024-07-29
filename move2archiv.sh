#!/bin/bash

# Configuration
suchordner="/Users/bla/Test"  # Path to the folder to be searched
archivordner="/Users/bla/TArchiv"  # Path to the archive folder
berichtdatei="/Users/bla/Bericht.txt"  # Path to the report file
endberichtdatei="/Users/bla/AbschließendenBericht.txt"  # Path to the final report file
emailadresse="bla@test.net"  # E-mail address for the final report


# Check if the archive folder exists. If not, create it.
if [ ! -d "$archivordner" ]; then
  mkdir -p "$archivordner"
fi

# Check if the report file exists. If so, delete it.
if [ -f "$berichtdatei" ]; then
  rm "$berichtdatei"
fi

# Search the specified folder and its subfolders for files that are older than three years.
while IFS= read -r -d '' file; do
  # Retrieve file information
  filename="$(basename "$file")"
  filesize="$(stat -c%s "$file")"
  fileyear="$(date -r "$file" +"%Y")"
  filemonth="$(date -r "$file" +"%m")"

  # Create report
  {
    echo "Dateiname: $filename"
    echo "Größe: $filesize Bytes"
    echo "Verschiebungspfad: $archivordner/$fileyear/$filemonth/$filename"
    echo ""
  } >> "$berichtdatei"

done < <(find "$suchordner" -type f -mtime +1095 -print0)

# Present the report and ask for confirmation
echo "The report has been generated. Would you like to move the files and send the report? (yes/no)"
read -r confirmation
if [ "$confirmation" != "yes" ]; then
  echo "Operation cancelled."
  exit
fi

# If confirmed, move the files, create a final report, convert it to a PDF, and send it by e-mail
while IFS= read -r -d '' file; do
  # Retrieve file information
  filename="$(basename "$file")"
  fileyear="$(date -r "$file" +"%Y")"
  filemonth="$(date -r "$file" +"%m")"

  # Move the file to the archive folder
  mkdir -p "$archivordner/$fileyear/$filemonth"
  mv "$file" "$archivordner/$fileyear/$filemonth/$filename"
done < <(find "$suchordner" -type f -mtime +1095 -print0)

# Create a final report with the same details as the first report.
cp "$berichtdatei" "$endberichtdatei"

# Convert the final report into a PDF
enscript -p "$endberichtdatei.pdf" "$endberichtdatei"

# Send the final report by e-mail

echo "Hier ist der abschließende Bericht." | mutt -s "Abschließender Bericht" -a "$endberichtdatei.pdf" -- "$emailadresse"

#echo "Hier ist der abschließende Bericht." | mail -s "Abschließender Bericht" -a "$endberichtdatei.pdf" "$emailadresse"

