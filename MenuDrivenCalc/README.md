# Menu-Driven Calculator

## Project Overview

A menu-driven calculator developed using Bash scripting that performs basic arithmetic operations through the Linux terminal.

The calculator allows users to perform addition, subtraction, multiplication, and division. It continues running until the user selects the Exit option.

## Features

- Performs addition, subtraction, multiplication, and division.
- Accepts user input through the terminal.
- Supports decimal calculations using `bc`.
- Prevents division by zero.
- Handles invalid menu choices.
- Repeats the menu until the user chooses Exit.

## Technologies Used

- Linux (Ubuntu)
- Bash Shell
- Basic Calculator (`bc`)

## Project Structure

```text
MenuDrivenCalc/
├── main_code.sh
└── README.md
```

## How to Run

1. Clone the repository.
2. Navigate to the project directory:

```bash
cd MenuDrivenCalc
```

3. Install `bc` if it is not already installed:

```bash
sudo apt install bc
```

4. Give execution permission:

```bash
chmod +x main_code.sh
```

5. Execute the script:

```bash
./main_code.sh
```

## Sample Output

```text
=================================================
                BASH CALCULATOR
=================================================

1.Addition
2.Subtraction
3.Multiplication
4.Division
5.Exit

Enter Your Choice: 1

Enter the First Number: 20
Enter the Second Number: 10

Result = 30
```

## Error Handling

- Displays an error message for invalid menu choices.
- Prevents division by zero.
- Allows users to continue performing calculations after each operation.

## Key Concepts Learned

- Bash variables
- User input using `read`
- Conditional statements (`if-else`)
- Menu handling using `case`
- Loops using `while`
- Arithmetic operations
- Command substitution using `$()`
- Decimal calculations using `bc`
- Basic input validation

## Purpose

Built as part of my hands-on Linux and Bash scripting practice to strengthen Bash programming fundamentals and develop practical scripting skills relevant to Linux system administration and Application Support.
