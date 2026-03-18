# Day 41 – Triggers & Matrix Builds

## 🚀 What I Learned

Today was a big step in understanding how flexible GitHub Actions can be.

Earlier, my workflows were only running on `push`, but today I learned that workflows can be triggered in multiple ways depending on the situation.

I explored:

- 🔁 Running workflows on Pull Requests
- ⏰ Scheduling workflows using cron jobs
- 🧑‍💻 Triggering workflows manually with inputs
- 🔀 Running jobs in parallel using matrix builds
- ⚙️ Controlling matrix behavior using exclude and fail-fast

This made me realize how powerful automation can be when combined with proper triggers.

---

## 🛠️ What I Practiced

### 1. Pull Request Trigger

I created a workflow that runs whenever a PR is opened or updated against the `main` branch.

```yaml
name: PR Check

on:
  pull_request:
    branches:
      - main

jobs:
  pr-check:
    runs-on: ubuntu-latest
    steps:
      - name: Print PR Info
        run: echo "PR check running for branch: ${{ github.head_ref }}"
