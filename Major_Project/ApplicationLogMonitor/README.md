# Application Log Monitoring and Alerting System

## Project Overview

The Application Log Monitoring and Alerting System is a Bash-based automation project designed to monitor application log files, identify critical errors, track recurring error messages, and generate monitoring reports.

The script automatically checks application logs at regular intervals using Cron jobs and maintains a checkpoint to process only newly added log entries instead of scanning the entire file during every execution.

## Objectives

- Monitor application log files automatically.
- Identify `ERROR` and `CRITICAL` log entries.
- Generate alerts for detected errors.
- Identify recurring error messages.
- Generate execution summaries.
- Avoid reprocessing previously analyzed log entries using checkpoints.
- Automate monitoring using Cron.

## Technologies Used

- Linux (Ubuntu)
- Bash Shell Scripting
- AWK
- SED
- GREP
- SORT and UNIQ
- Cron Jobs

## Project Structure

```text
ApplicationLogMonitor/
│
├── logs/
│   └── App.log
│
├── state/
│   └── checkpoint.txt
│
├── reports/
│   ├── Alerts.log
│    ── summary.txt
│   
│
└── scripts/
    └── log_monitor.sh
```

## Key Features

### 1. Log File Validation
- Checks whether the application log file exists.
- Verifies file readability.
- Handles empty log files.

### 2. Error Detection
Identifies log entries containing:
- ERROR
- CRITICAL

### 3. Checkpoint Management
Maintains the last successfully processed line number to avoid processing the same log entries repeatedly.

### 4. Alert Generation
Extracts ERROR and CRITICAL entries and stores them in `Alerts.log`.

### 5. Recurring Error Detection
Uses AWK, SORT, and UNIQ to identify repeated error messages.

### 6. Summary Report
Generates a summary containing:
- Execution date and time
- Number of new entries processed
- ERROR count
- CRITICAL count
- Total alerts
- Recurring error messages

### 7. Cron Automation
Uses Linux Cron to execute the monitoring script automatically at regular intervals.

Example Cron entry:

```bash
* * * * * /home/hithesh/ApplicationLogMonitor/scripts/log_monitor.sh >> /home/hithesh/ApplicationLogMonitor/reports/cron.log 2>&1
```

## Concepts Practiced

- Bash functions and conditional statements
- File handling and redirection
- Text processing using AWK and SED
- Log analysis and error detection
- Checkpoint-based processing
- Cron job scheduling
- Basic log truncation handling
- Linux troubleshooting fundamentals


## Learning Outcome

This project helped me understand how Linux shell scripting can be used to automate basic application log monitoring and how application support teams can analyze logs to identify errors and recurring issues.

It also provided practical experience with Linux commands, text processing, file handling, scheduling, and basic monitoring concepts.

---

**Author:** Hitesh Shetty  
**Project:** Application Log Monitoring and Alerting System
