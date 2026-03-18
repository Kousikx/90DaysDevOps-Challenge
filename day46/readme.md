# Day 46 – Reusable Workflows & Composite Actions

## 🚀 What I Learned

Today I learned how to avoid repetition in GitHub Actions by creating reusable workflows and composite actions.

Instead of writing the same workflow again and again, I can now:

- Create reusable workflows using workflow_call
- Pass inputs and secrets to workflows
- Return outputs from workflows
- Create custom composite actions
- Reuse logic across multiple workflows and repositories

This is how real DevOps teams standardize CI/CD pipelines.

---

## 🛠️ What I Practiced

### 1. Reusable Workflow (workflow_call)

```yaml
name: Reusable Build

on:
  workflow_call:
    inputs:
      app_name:
        required: true
        type: string
      environment:
        required: true
        type: string
        default: staging
    secrets:
      docker_token:
        required: true

jobs:
  build:
    runs-on: ubuntu-latest
    outputs:
      build_version: ${{ steps.version.outputs.build_version }}

    steps:
      - uses: actions/checkout@v4

      - name: Print Info
        run: |
          echo "Building ${{ inputs.app_name }} for ${{ inputs.environment }}"
          if [ -n "${{ secrets.docker_token }}" ]; then
            echo "Docker token is set: true"
          fi

      - name: Generate version
        id: version
        run: echo "build_version=v1.0-${GITHUB_SHA::7}" >> $GITHUB_OUTPUT
