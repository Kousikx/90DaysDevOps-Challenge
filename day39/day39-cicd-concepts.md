# Day 39 – CI/CD Concepts

## The Problem with Manual Deployments

When multiple developers push code and deploy manually, many problems can occur:

- Different versions of code deployed
- Missing tests
- Broken production environments
- Difficult rollback processes

"It works on my machine" means code runs locally but fails in other environments due to dependency or configuration differences.

Manual deployments are slow and risky compared to automated CI/CD pipelines.

---

# CI vs CD

## Continuous Integration (CI)

Continuous Integration automatically builds and tests code whenever developers push changes to the repository.

Purpose:
- Detect bugs early
- Ensure code from multiple developers integrates correctly

Example:
A developer pushes code and automated tests run immediately.

---

## Continuous Delivery

Continuous Delivery ensures code is always in a deployable state.

The pipeline prepares builds automatically, but deployment requires manual approval.

Example:
Pipeline builds Docker image and prepares it for release.

---

## Continuous Deployment

Continuous Deployment automatically deploys successful builds to production without manual approval.

Example:
A successful pipeline automatically releases a new application version.

---

# Pipeline Anatomy

Trigger  
Event that starts the pipeline (push, pull request).

Stage  
Logical pipeline phase such as build, test, or deploy.

Job  
Unit of work inside a stage.

Step  
Single command executed inside a job.

Runner  
Machine responsible for executing pipeline jobs.

Artifact  
Output produced by pipeline jobs such as compiled files or Docker images.

---

# Example Pipeline

Developer pushes code → Pipeline starts

Stages:

1. Build
2. Test
3. Deploy

Build stage installs dependencies and compiles the application.

Test stage runs automated tests.

Deploy stage builds Docker image and deploys to staging server.

---

# Exploring a Real CI Pipeline

Repository explored: FastAPI

Workflow location:
.github/workflows/

Trigger:
Push and pull request events.

Jobs included:
- Run tests
- Check formatting
- Build package

Purpose:
Ensure code quality before merging new changes.

---

# What I Learned

CI/CD helps automate building, testing, and deploying applications.

Pipelines reduce human errors and allow teams to deploy faster and more reliably.

CI/CD tools include GitHub Actions, Jenkins, GitLab CI, and CircleCI.
