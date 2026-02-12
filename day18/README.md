# Day 18 – Shell Scripting: Functions & Advanced Concepts

## Overview
Today I learned how to write cleaner and reusable shell scripts using functions.
I also explored strict mode (set -euo pipefail) to make scripts safer and
more reliable in real-world scenarios.

---

## Basic Functions
I created functions for greeting a user and adding two numbers.
This showed how functions help avoid repeating code and make scripts modular.

---

## Disk & Memory Check Script
I wrote functions that check disk usage and memory usage using df and free.
A main function was used to call these checks in a structured way.

---

## Strict Mode (set -euo pipefail)
This mode makes scripts safer by:
- Exiting when any command fails (set -e)
- Failing when undefined variables are used (set -u)
- Detecting failures inside pipelines (set -o pipefail)

This prevents silent script errors.

---

## Local Variables
I used the local keyword inside functions and observed that
local variables are not accessible outside the function scope.
This helps avoid accidental variable conflicts.

---

## System Info Reporter Script
I built a script that:
- Prints hostname and OS info
- Shows uptime
- Displays top disk usage
- Shows memory usage
- Lists top CPU-

