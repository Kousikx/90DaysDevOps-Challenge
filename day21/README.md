# Day 21 – Shell Scripting Cheat Sheet & Practice

## What Today Was About

Today was not about learning something new.

It was about revising everything I’ve learned in the past few days and
putting it together in a way that actually makes sense to me.

Instead of moving forward blindly, I decided to pause and build my own
shell scripting cheat sheet — something I can refer to anytime in the future.

Writing it in my own words made a big difference.

---

## What I Did Today

### 1. Created My Own Shell Scripting Cheat Sheet

I documented:

- How shebang works (#!/bin/bash)
- How to run scripts
- Variables and quoting rules
- Taking user input with read
- Using command-line arguments ($1, $@, $#)
- If-else conditions
- File checks like -f, -d
- Loops (for, while, until)
- Writing and calling functions
- Using local variables
- Strict mode (set -euo pipefail)
- Common text-processing commands (grep, awk, sed, sort, uniq)

Keeping explanations short helped me understand better.

---

### 2. Practiced With Real Scripts

To make sure I really understood things, I:

- Wrote a simple system health check script
- Practiced renaming multiple files using loops
- Created a small log analyzer
- Tested strict mode and saw how scripts stop on errors
- Used functions to organize my scripts better

I tried to avoid copy-paste and type everything manually.

---

## Commands I Used Today

```bash
chmod +x script.sh
./script.sh
read -p "Enter value: " VAR
if [ -f file ]; then
for file in *.log; do
while read line; do
function_name() { ... }
local VAR="value"
set -euo pipefail
grep -i "error" file.log
awk -F: '{print $1}'
sed -i 's/old/new/g' file
sort | uniq -c
wc -l
head -n 5
tail -f logfile.log
find /path -mtime +7 -delete
systemctl status service
