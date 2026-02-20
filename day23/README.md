# Day 23 – Git Branching & Working with GitHub

## Overview

Today I learned one of the most powerful concepts in Git — branching.

Until now, I was working only on the main branch.
Today I understood how branches allow isolated development
without affecting stable code.

I also pushed my repository to GitHub for the first time.

---

## What I Learned

### What is a Branch?

A branch is an independent line of development.
It allows working on new features without affecting main.

---

### Why Use Branches?

Branches protect the main codebase.
They allow safe experimentation and feature development.

---

### What is HEAD?

HEAD is a pointer to the current branch and commit.
It shows where I am currently working.

---

### What Happens When Switching Branches?

Git updates the working directory
to match the selected branch’s state.

If commits exist only in one branch,
they will not appear in another branch.

---

## Commands I Practiced

```bash
git branch
git branch feature-1
git switch feature-1
git switch -c feature-2
git checkout -b feature-2
git branch -d feature-2
git remote add origin <url>
git remote -v
git push -u origin main
git push -u origin feature-1
git pull
git clone <url>
