Day 35 – Multi-Stage Builds & Docker Hub
Task
Today's goal is to build optimized images and share them with the world.

Multi-stage builds are how real teams ship small, secure images. Docker Hub is how you distribute them. Both are interview favourites.

Expected Output
A markdown file: day-35-multistage-hub.md
Dockerfiles demonstrating multi-stage builds
An image pushed to your Docker Hub account
Challenge Tasks
Task 1: The Problem with Large Images
Write a simple Go, Java, or Node.js app (even a "Hello World" is fine)
Create a Dockerfile that builds and runs it in a single stage
Build the image and check its size
Note down the size — you'll compare it later.

Task 2: Multi-Stage Build
Rewrite the Dockerfile using multi-stage build:
Stage 1: Build the app (install dependencies, compile)
Stage 2: Copy only the built artifact into a minimal base image (alpine, distroless, or scratch)
Build the image and check its size again
Compare the two sizes
Write in your notes: Why is the multi-stage image so much smaller?

Task 3: Push to Docker Hub
Create a free account on Docker Hub (if you don't have one)
Log in from your terminal
Tag your image properly: yourusername/image-name:tag
Push it to Docker Hub
Pull it on a different machine (or after removing locally) to verify
Task 4: Docker Hub Repository
Go to Docker Hub and check your pushed image
Add a description to the repository
Explore the tags tab — understand how versioning works
Pull a specific tag vs latest — what happens?
Task 5: Image Best Practices
Apply these to one of your images and rebuild:

Use a minimal base image (alpine vs ubuntu — compare sizes)
Don't run as root — add a non-root USER in your Dockerfile
Combine RUN commands to reduce layers
Use specific tags for base images (not latest)
Check the size before and after.

Hints
Multi-stage: use FROM ... AS builder then COPY --from=builder
Login: docker login
Tag: docker tag local-image:tag username/repo:tag
Push: docker push username/repo:tag
Non-root user: RUN adduser + USER
Submission
Add your Dockerfiles and day-35-multistage-hub.md to 2026/day-35/
Include the link to your Docker Hub repo
Commit and push to your fork
