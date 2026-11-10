# Linux Process Checker

A beginner-friendly Bash scripting project that checks whether a specific process is running on a Linux system.

## Features

- Menu-driven interface.
- Accepts a process name from the user.
- Checks process status using `pgrep`.
- Displays process name and PID when running.
- Displays a message when the process is not found.
- Validates empty process-name input.
- Supports multiple matching PIDs.
- Allows the user to exit the script.

## Technologies Used

- Linux
- Bash Shell Scripting
- `pgrep`
- `if-else`
- `while` loop
- `case` statement

## Project Structure

```text
ProcessChecker/
├── process_checker.sh
└── README.md
```

## How to Run

1. Open the terminal.
2. Navigate to the project directory.
3. Give execution permission:

```bash
chmod +x process_checker.sh
```

4. Run the script:

```bash
./process_checker.sh
```

## Sample Output

```text
============================
     PROCESS CHECKER
============================

1.Check Process Status
2.Exit

Enter Your Choice: 1
Enter the Process Name: sleep

Process Status: RUNNING
Process Name: sleep
Process ID: 2456
```

## Learning Outcome

This project demonstrates basic Linux process monitoring using Bash scripting. It helps build foundational troubleshooting skills relevant to Linux administration and Application Support.
