# Day 49 – DevSecOps: Securing the CI/CD Pipeline

## 🚀 What is DevSecOps?

DevSecOps means integrating security into the CI/CD pipeline so that vulnerabilities are detected early — during development — instead of after deployment.

Instead of treating security as a separate step, it becomes part of the automation.

---

## 🔐 What I Implemented

Today I enhanced my CI/CD pipeline by adding security checks:

- Docker image vulnerability scanning (Trivy)
- Dependency vulnerability checks on PRs
- GitHub secret scanning & push protection
- Workflow permission restrictions

---

## 🛠️ Security Enhancements

---

### 1. Docker Image Vulnerability Scan (Trivy)

Added to main pipeline after Docker build:

```yaml
- name: Scan Docker Image for Vulnerabilities
  uses: aquasecurity/trivy-action@master
  with:
    image-ref: '${{ secrets.DOCKER_USERNAME }}/myapp:latest'
    format: 'table'
    exit-code: '1'
    severity: 'CRITICAL,HIGH'
