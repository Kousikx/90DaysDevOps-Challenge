# Day 28 – Full Revision (Day 1–27)

## Self-Assessment

### Linux
- File system navigation – ✅
- Process management – ⚠
- systemd services – ✅
- Text editing – ✅
- Troubleshooting (CPU, memory, disk) – ⚠
- File permissions & ownership – ✅
- LVM – ⚠
- Networking commands – ✅

### Shell Scripting
- Variables & arguments – ✅
- Loops & conditionals – ✅
- Functions & strict mode – ⚠
- Text processing tools – ⚠
- Crontab scheduling – ✅

### Git & GitHub
- Basic workflow – ✅
- Branching – ✅
- Merge vs Rebase – ⚠
- Reset vs Revert – ⚠
- GitHub CLI – ✅
- Branching strategies – ⚠

---

## Topics I Revisited Today

### 1. Git Rebase vs Merge

Re-practiced rebase and checked history using:

git log --oneline --graph --all

Re-learned that rebase rewrites history,
while merge preserves branch structure.

---

### 2. LVM

Recreated physical volume, volume group, and logical volume.
Extended volume and resized filesystem.

Now I understand why LVM is flexible for production systems.

---

### 3. Shell Script Error Handling

Practiced using:

set -euo pipefail

Understood:
- -e exits on error
- -u fails on unset variable
- pipefail catches errors in pipelines

---

## Quick-Fire Answers

**What does chmod 755 script.sh do?**  
Gives owner full permission, group and others read + execute.

**Process vs Service?**  
Process is running program.  
Service is managed background process controlled by systemd.

**Find process using port 8080?**  
ss -tulpn | grep 8080

**Difference between git reset --hard and git revert?**  
reset removes history.  
revert adds a new commit to undo changes.

**Schedule script at 3 AM daily?**  
0 3 * * * /path/script.sh

**Difference between git fetch and git pull?**  
fetch downloads changes.  
pull downloads and merges automatically.

**What is LVM?**  
Logical Volume Manager allows flexible disk management and resizing.

---

## Teaching It Back

### Explaining Git Branching Simply

Imagine you're writing a book.

The main branch is your final published version.
A feature branch is like writing a new chapter in a separate notebook.
You can experiment without affecting the main book.
When ready, you merge the chapter back.

That’s how teams safely develop features.

---

## What I Realized

- Revision exposes gaps.
- Muscle memory matters more than theory.
- Git mistakes are recoverable (thanks to reflog).
- DevOps is about systems thinking.

Day 28 complete.
