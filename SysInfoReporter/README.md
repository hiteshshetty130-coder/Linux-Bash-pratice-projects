# System Information Reporter

## Project Overview
A simple Bash scripting project that collects and displays essential Linux system information in a structured report.
This project demonstrates basic Linux commands, Bash variables, command substitution, pipes, and text processing.

## Features
- Displays current date and time.
- Shows the logged-in username.
- Displays the system hostname.
- Identifies the operating system.
- Reports system uptime.
- Displays disk usage.
- Shows memory usage.

## Technologies Used
- Linux (Ubuntu)
- Bash Shell
- Linux commands: `date`, `whoami`, `hostname`, `uptime`, `free`, `df`
- Text processing: `awk`

## Project Structure
```text
01-system-information-reporter/
└── main_code.sh
```

## How to Run

1. Clone this repository.
2. Navigate to the project directory.
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
================================
   SYSTEM INFORMATION REPORTER
================================
Date and Time : Thu Oct 29 14:16:51 UTC 2026
Username      : hithesh
Hostname      : HITESHLAPTOP
OS            : Ubuntu 26.04 LTS
Uptime        : up 1 hour, 30 minutes
Disk Usage    : 3% Used
Memory        : 1.0Gi used / 5.8Gi total
================================
       END OF REPORT
```

*Note: Output values will vary depending on the system.*

## Key Concepts Learned
- Bash variables
- Command substitution using `$()`
- Pipes (`|`)
- Text processing with `awk`
- Using `printf` for formatted output
- Executing Linux commands through Bash scripts

## Purpose
Built as part of my hands-on Linux and Bash scripting practice, focusing on foundational skills relevant to Linux system administration and application support.
