# Day 35 – Multi-Stage Builds & Docker Hub

## Task 1 – Large Image Problem

Created a Node.js application and built a Docker image using a single-stage Dockerfile.

The image size was large because it contained build tools, dependencies, and runtime components.

---

## Task 2 – Multi-Stage Build

Implemented a multi-stage Dockerfile:

Stage 1: Builder image to install dependencies and prepare the app  
Stage 2: Minimal runtime image using node:alpine

Only the necessary application files were copied to the final image.

This significantly reduced the image size.

---

## Task 3 – Docker Hub Push

Logged into Docker Hub using:

docker login

Tagged the image:

docker tag node-multistage:v1 <dockerhub-username>/node-multistage:v1

Pushed the image:

docker push <dockerhub-username>/node-multistage:v1

Verified by pulling the image from Docker Hub.

Docker Hub Repository:
https://hub.docker.com/r/<dockerhub-username>/node-multistage

---

## Task 4 – Tags and Versioning

Docker images can have multiple tags such as:

v1
v2
latest

Pulling without specifying a tag defaults to the latest version.

---

## Task 5 – Image Best Practices

Applied best practices:

- Used minimal base image (node:alpine)
- Added non-root user for security
- Combined commands to reduce layers
- Used specific version tags

---

## What I Learned

- Multi-stage builds reduce image size significantly.
- Docker Hub allows sharing container images publicly.
- Proper tagging helps manage versions.
- Using minimal images improves security and performance.
