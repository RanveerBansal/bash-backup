# Bash Backup Utility

A beginner Bash scripting project that creates compressed backups of directories.

## Overview

This script accepts a directory as a command-line argument, verifies that it exists, and creates a compressed `.tar.gz` backup inside a `backups` directory. It also includes basic error handling to ensure valid input is provided.

## Features

- Accepts a directory as a command-line argument
- Checks if a directory has been provided
- Verifies that the directory exists
- Creates a `backups` folder if it doesn't already exist
- Compresses the directory into a `.tar.gz` archive
- Adds the current date to the backup filename
- Displays success and error messages

## Commands Used

- `echo` – Display messages to the user
- `tar -czf` – Create compressed archive files
- `mkdir -p` – Create directories if they don't exist
- `date +%F` – Generate the current date for filenames
- `exit` – Stop the script when an error occurs

## Skills Demonstrated

- Bash scripting
- Variables
- Command-line arguments (`$1`)
- Conditional statements (`if`)
- Directory validation
- Error handling
- File compression
- Working with Linux command-line utilities

## Project Structure

```text
bash-backup-script/
├── backup.sh
├── README.md
└── backups/
```

## Usage

Make the script executable:

```bash
chmod +x backup.sh
```

Run the script:

```bash
./backup.sh Documents
```

## Example Output

```text
===== Backup Utility =====

Folder selected: Documents

Backup completed successfully!
Saved as:
backups/Documents_2026-06-29.tar.gz
```

## Future Improvements

- Add timestamps to backup filenames
- Create log files for each backup
- Support backing up multiple directories
- Display backup file size
- Add coloured terminal output