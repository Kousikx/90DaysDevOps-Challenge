y 20 – Bash Scripting Challenge: Log Analyzer & Report Generator

## Overview
Today I built a real-world style Bash script that analyzes server log files
and generates a summary report. This task helped me combine everything I
learned from scripting basics, loops, arguments, and error handling.

---

## Script: log_analyzer.sh
The script accepts a log file as input and performs:

- Validation of input file
- Counts ERROR and Failed events
- Extracts CRITICAL events with line numbers
- Finds top 5 most common error messages
- Generates a daily summary report
- Moves processed logs to an archive folder

---

## Sample Output
Total Errors: 23

--- Critical Events ---
Line 84: CRITICAL Disk space below threshold
Line 217: CRITICAL Database connection lost

--- Top 5 Error Messages ---
45 Connection timed out
32 File not found
28 Permission denied
15 Disk I/O error
9 Out of memory

---

## Tools & Commands Used
- grep → search log patterns
- awk → process log messages
- sort & uniq → count occurrences
- wc → line counting
- date → report timestamp
- mv → archive processed logs

---

## What I Learned
1. Bash scripts can automate real log analysis tasks.
2. Combining grep, awk, and sort creates powerful text-processing pipelines.
3. Proper validation and error handling make scripts reliable for production use.

---

## Key Takeaway
This project showed how DevOps engineers automate log monitoring and reporting
to quickly identify errors and critical issues in production systems.

