# Day 10 – File Permissions & File Operations Challenge

## Overview
Today I practiced Linux file creation, reading files, and managing permissions.
The focus was on understanding how read, write, and execute permissions affect
files and directories.

---

## Files Created
- devops.txt (empty file)
- notes.txt (text file with content)
- script.sh (shell script)
- project/ (directory)

---

## Reading Files
- Used cat to read notes.txt
- Opened script.sh in read-only mode using vim -R
- Used head and tail to read parts of /etc/passwd

These commands helped me understand different ways to view file content.

---

## Understanding Permissions
Linux permissions follow this format:
rwxrwxrwx → owner | group | others

- r = read (4)
- w = write (2)
- x = execute (1)

Initially, files had read and write permissions but no execute permission.

---

## Permission Changes Performed

### script.sh
- Added execute permission using chmod +x
- Successfully ran the script using ./script.sh
- Removed execute permission and confirmed execution failed

### devops.txt
- Removed write permission for all users
- Confirmed that writing to the file failed with permission denied error

### notes.txt
- Changed permissions to 640
- Owner can read/write, group can read, others have no access

### project/
- Set directory permission to 755
- Owner has full access, others can read and execute

---

## Commands Used
touch, echo, cat, vim, head, tail  
chmod +x, chmod -w, chmod 640, chmod 755  
ls -l, ls -ld

---

## What I Learned
1. Execute permission is required to run scripts.
2. chmod can be used symbolically (+x, -w) or numerically (640, 755).
3. Incorrect permissions can block access and execution.

---

## Key Takeaway
File permissions control security and access in Linux.
Understanding them is essential for managing scripts, logs, and applications
in real DevOps environments.

