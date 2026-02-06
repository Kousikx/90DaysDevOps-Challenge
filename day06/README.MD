# Day 06 – Linux File Read & Write Practice

## Objective
Today I practiced basic file input and output operations in Linux.
The focus was on creating a file, writing text, appending lines,
and reading file content using simple commands.

---

## Commands Practiced and What They Do

### touch notes.txt
Creates an empty file named notes.txt.

---

### echo "text" > notes.txt
Writes text into the file.
This overwrites any existing content in the file.

---

### echo "text" >> notes.txt
Appends a new line to the file without removing existing content.

---

### echo "text" | tee -a notes.txt
Writes text to the file and displays it on the terminal at the same time.

---

### cat notes.txt
Displays the full content of the file.

---

### head -n 2 notes.txt
Displays the first two lines of the file.

---

### tail -n 2 notes.txt
Displays the last two lines of the file.

---

## What I Learned
- `>` replaces file content, while `>>` appends content
- `cat` is useful for small files, while `head` and `tail` are better for large files
- `tee` is helpful when I want to write and see output at the same time

---

## Key Takeaway
Basic file operations are essential in DevOps.
Logs, configuration files, and scripts all depend on these commands.
Practicing these regularly improves speed and confidence.



