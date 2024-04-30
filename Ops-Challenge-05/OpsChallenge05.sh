#!/bin/bash
# Script Name:                  Clearing Logs
# Author:                       Joaquin Cortes
# Date of last revision:        04/30/2024
# Purpose:                      Script that compresses logs into another directory and clears log files and compares compressed file sizes.


# Step 1: Print file size of log files before compression
echo "File sizes before compression:"
echo "syslog: $(du -h /var/log/syslog)"
echo "wtmp: $(du -h /var/log/wtmp)"

# Step 2: Compress the log files to a backup directory with timestamped filenames
backup_dir="/var/log/backups"
timestamp=$(date "+%Y%m%d%H%M%S")

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Compress syslog
gzip -c /var/log/syslog > "$backup_dir/syslog-$timestamp.gz"
echo "syslog compressed and saved as: $backup_dir/syslog-$timestamp.gz"

# Compress wtmp
gzip -c /var/log/wtmp > "$backup_dir/wtmp-$timestamp.gz"
echo "wtmp compressed and saved as: $backup_dir/wtmp-$timestamp.gz"

# Step 3: Clear the contents of the log files
echo "" > /var/log/syslog
echo "" > /var/log/wtmp
echo "Log files cleared."

# Step 4: Print file size of compressed files
echo "File sizes after compression:"
echo "syslog: $(du -h $backup_dir/syslog-$timestamp.gz)"
echo "wtmp: $(du -h $backup_dir/wtmp-$timestamp.gz)"

# Step 5: Compare sizes of original and compressed files
echo "Comparison of file sizes:"
echo "syslog:"
du -h /var/log/syslog
du -h $backup_dir/syslog-$timestamp.gz
echo "wtmp:"
du -h /var/log/wtmp
du -h $backup_dir/wtmp-$timestamp.gz
