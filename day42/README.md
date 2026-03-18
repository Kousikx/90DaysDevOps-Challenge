# Day 42 – Runners: GitHub-Hosted & Self-Hosted

## 🚀 What I Learned

Today I learned about runners — the machines where GitHub Actions jobs actually run.

Earlier, I was using GitHub-hosted runners without realizing it. Today I understood:

- What GitHub-hosted runners are
- What tools are pre-installed on them
- How to set up my own self-hosted runner
- How to run workflows on my own machine/server
- How labels help manage multiple runners

This gave me a deeper understanding of how CI/CD actually executes in real environments.

---

## 🛠️ What I Practiced

### 1. GitHub-Hosted Runners

I created a workflow that runs on 3 different operating systems.

```yaml
name: Multi-OS Runner Test

on: push

jobs:
  ubuntu-job:
    runs-on: ubuntu-latest
    steps:
      - run: |
          echo "OS: Ubuntu"
          hostname
          whoami

  windows-job:
    runs-on: windows-latest
    steps:
      - run: |
          echo "OS: Windows"
          hostname
          whoami

  mac-job:
    runs-on: macos-latest
    steps:
      - run: |
          echo "OS: macOS"
          hostname
          whoami
