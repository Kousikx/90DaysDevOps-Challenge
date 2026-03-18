# Day 44 – Secrets, Artifacts & Running Real Tests in CI

## 🚀 What I Learned

Today I moved from basic workflows to more production-like pipelines.

I learned how to:

- Store sensitive data securely using GitHub Secrets
- Use secrets safely inside workflows
- Save and download files using artifacts
- Share files between jobs
- Run real scripts/tests in CI
- Improve performance using caching

This made the pipeline feel much closer to real-world DevOps workflows.

---

## 🛠️ What I Practiced

### 1. GitHub Secrets

I created a secret and accessed it in a workflow.

```yaml
name: Secrets Demo

on: push

jobs:
  secret-job:
    runs-on: ubuntu-latest
    steps:
      - name: Check Secret
        run: |
          if [ -n "${{ secrets.MY_SECRET_MESSAGE }}" ]; then
            echo "The secret is set: true"
          else
            echo "The secret is missing"
          fi
