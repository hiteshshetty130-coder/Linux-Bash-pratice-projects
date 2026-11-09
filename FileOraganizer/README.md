# File Organizer using Bash

## Project Overview

A Bash scripting project that automatically organizes files inside a predefined `downloads` directory based on their file extensions.

The script identifies file types, creates appropriate category folders, and moves files into those folders automatically.

## Features

- Uses a predefined source directory (`./downloads`).
- Checks whether the source directory exists.
- Automatically detects file extensions.
- Supports uppercase and lowercase extensions.
- Creates category folders automatically.
- Organizes files into Images, Documents, Audios, Scripts, and Others.
- Skips directories.
- Handles filenames containing spaces.
- Prevents overwriting existing files using `mv -n`.
- Displays the number of successfully organized files.

## Technologies Used

- Linux (Ubuntu)
- Bash Shell
- Linux commands: `basename`, `mkdir`, `mv`, `printf`
- Bash features: loops, conditional statements, `case`, string manipulation

## Project Structure

```text
FileOrganizer/
├── file_organizer.sh
├── README.md
└── downloads/
    ├── Documents/
    ├── Images/
    ├── Audios/
    ├── Scripts/
    └── Others/
```

## File Categories

| Extension | Destination |
|---|---|
| `.jpg`, `.jpeg`, `.png`, `.gif` | Images |
| `.doc`, `.docx`, `.pdf`, `.txt` | Documents |
| `.mp3`, `.wav` | Audios |
| `.sh`, `.py` | Scripts |
| Other or no extension | Others |

## How to Run

1. Clone this repository.
2. Navigate to the project directory:

```bash
cd FileOrganizer
```

3. Create the source directory if it does not exist:

```bash
mkdir -p downloads
```

4. Add files that you want to organize inside `downloads/`.

5. Give execution permission:

```bash
chmod +x file_organizer.sh
```

6. Execute the script:

```bash
./file_organizer.sh
```

## Sample Output

```text
=======================================================
                    FILE ORGANIZER
=======================================================

Target Directory: ./downloads

Organizing files...

Moved Photo.JPG --> Images/
Moved REPORT.PDF --> Documents/
Moved song.mp3 --> Audios/
Moved script.sh --> Scripts/
Moved notes.xyz --> Others/

5 Files Organized

=======================================================
              File Organization Completed
=======================================================
```

*Note: Output depends on the files present in the downloads directory.*

## Key Concepts Learned

- Bash variables
- Directory validation using `-d`
- File validation using `-f`
- Iterating through files using `for` loops
- Extracting file extensions using `${filename##*.}`
- Converting filenames to lowercase using `${filename,,}`
- Categorizing files using `case`
- Creating directories using `mkdir -p`
- Moving files using `mv`
- Preventing overwrites using `mv -n`
- Handling filenames with spaces through quoting
- Counting successfully organized files

## Purpose

Built as part of my hands-on Linux and Bash scripting practice to improve file management, automation, and scripting skills relevant to Linux system administration and Application Support.
