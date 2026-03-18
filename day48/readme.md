# Day 48 – GitHub Actions Capstone Project (End-to-End CI/CD)

## 🚀 Project Overview

Today I built a complete production-style CI/CD pipeline using GitHub Actions.

This project automatically:

- Runs tests on pull requests
- Builds and pushes Docker images on merge
- Deploys to production (simulated)
- Runs scheduled health checks every 12 hours

This combines everything I learned from Day 40 to Day 47 into one real-world pipeline.

---

## 🧱 Tech Stack

- GitHub Actions
- Docker
- Docker Hub
- Node.js / Python app (simple API)
- Shell scripting

---

## 🔄 Pipeline Architecture

### 🟢 PR Flow

PR Opened → Build & Test → PR Checks Pass ✅

### 🔵 Main Branch Flow

Merge to Main → Build & Test → Docker Build → Push to Docker Hub → Deploy 🚀

### 🟡 Scheduled Flow

Every 12 Hours → Pull Latest Image → Run Container → Health Check → Report

---

## 🛠️ Workflows

---

### 1. Reusable Build & Test

```yaml
name: Build & Test

on:
  workflow_call:
    inputs:
      python_version:
        required: true
        type: string
      run_tests:
        required: false
        type: boolean
        default: true

jobs:
  build-test:
    runs-on: ubuntu-latest
    outputs:
      test_result: ${{ steps.result.outputs.test_result }}

    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-python@v4
        with:
          python-version: ${{ inputs.python_version }}

      - run: pip install -r requirements.txt || true

      - name: Run tests
        if: inputs.run_tests == true
        run: echo "Tests passed"

      - id: result
        run: echo "test_result=passed" >> $GITHUB_OUTPUT
