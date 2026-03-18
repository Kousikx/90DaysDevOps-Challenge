# Day 47 – Advanced Triggers: PR Events, Cron & Event-Driven Pipelines

## 🚀 What I Learned

Today I explored advanced triggers in GitHub Actions and how pipelines can react to different events.

I learned how to:

- Handle full PR lifecycle events
- Build real-world PR validation checks
- Schedule workflows using cron
- Trigger workflows based on file changes
- Chain workflows together
- Trigger workflows from external systems

This made CI/CD feel event-driven and production-ready.

---

## 🛠️ What I Practiced

---

### 1. PR Lifecycle Workflow

```yaml
name: PR Lifecycle

on:
  pull_request:
    types: [opened, synchronize, reopened, closed]

jobs:
  pr-info:
    runs-on: ubuntu-latest
    steps:
      - run: |
          echo "Event: ${{ github.event.action }}"
          echo "Title: ${{ github.event.pull_request.title }}"
          echo "Author: ${{ github.event.pull_request.user.login }}"
          echo "Source: ${{ github.head_ref }}"
          echo "Target: ${{ github.base_ref }}"

      - name: Run only on merge
        if: github.event.pull_request.merged == true
        run: echo "PR was merged"
