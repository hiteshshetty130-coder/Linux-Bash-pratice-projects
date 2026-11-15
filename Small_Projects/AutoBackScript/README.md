# Automated Backup Script

## Project Overview

A Bash scripting project that automates the process of backing up application files into a separate directory with a date-based folder name.
The script checks whether a backup directory already exists, creates a new directory for the backup, copies application files, and displays a backup status report.

## Features

- Automatically generates a date-based backup directory.
- Checks whether the backup directory already exists.
- Creates backup directories when required.
- Copies application files recursively.
- Prevents overwriting an existing daily backup.
- Displays backup status and source/destination paths.
- Supports scheduled execution using Cron.

## Technologies Used

- Linux (Ubuntu)
- Bash Shell
- Linux commands: `date`, `mkdir`, `cp`, `realpath`
- Cron for task scheduling

## Project Structure

```text
AutoBackScript/
├── app/
│   |── Main.txt
│   
├── backups/
│   └── backups_DD_MM_YY/
└── main_code.sh
```

## How to Run

1. Clone this repository.
2. Navigate to the project directory:

```bash
cd AutoBackScript
```

3. Give execution permission:

```bash
chmod +x main_code.sh
```

4. Execute the script:

```bash
./main_code.sh
```

## Sample Output

```text
============================================
               BACKUP REPORT
============================================
Source             : /home/user/AutoBackScript/app
Destination        : /home/user/AutoBackScript/backups/backups_03_11_26
Status             : BACKUP COMPLETED SUCCESSFULLY
============================================
```

*Note: The date, paths, and status will vary depending on the system and backup result.*

## Cron Scheduling

The script can be scheduled to run automatically every day at 2:00 AM using Cron.

Open the Cron editor:

```bash
crontab -e
```

Add:

```bash
0 2 * * * /home/user/AutoBackScript/main_code.sh
```

Check scheduled tasks:

```bash
crontab -l
```

*Note: Replace `/home/user/AutoBackScript/` with the actual absolute path. Cron requires the system to be running when the scheduled task is due.*

## Key Concepts Learned

- Bash variables and command substitution
- Date formatting using `date`
- Conditional statements (`if-else`)
- Directory checking using `-d`
- Directory creation using `mkdir`
- Recursive file copying using `cp -r`
- Exit status and basic error handling
- Formatted output using `printf`
- Task scheduling using Cron

## Purpose

Built as part of my hands-on Linux and Bash scripting practice to develop practical skills in file management, backup automation, and Linux system administration relevant to Application Support.
