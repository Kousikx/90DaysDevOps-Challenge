# Day 43 – Jobs, Steps, Env Vars & Conditionals

## 🚀 What I Learned

Today I learned how to control the flow of a GitHub Actions pipeline.

Instead of just running steps, I now understand how to:

- Create multiple jobs in a workflow
- Control execution order using dependencies
- Use environment variables at different levels
- Pass data between jobs using outputs
- Run jobs and steps conditionally

This made workflows feel more like real CI/CD pipelines used in production.

---

## 🛠️ What I Practiced

### 1. Multi-Job Workflow

I created a workflow with 3 jobs: build → test → deploy

```yaml
name: Multi Job Pipeline

on: push

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - run: echo "Building the app"

  test:
    runs-on: ubuntu-latest
    needs: build
    steps:
      - run: echo "Running tests"

  deploy:
    runs-on: ubuntu-latest
    needs: test
    steps:
      - run: echo "Deploying"
