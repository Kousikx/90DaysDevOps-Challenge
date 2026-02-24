# Day 29 – Introduction to Docker

## What is Docker?

Docker is a container platform that allows packaging applications
with all dependencies so they run consistently everywhere.

It solves the "works on my machine" problem.

---

## Containers vs Virtual Machines

Containers:
- Lightweight
- Share host OS
- Fast startup

Virtual Machines:
- Full OS
- Heavy
- Slower

---

## Docker Architecture

Docker Client:
Command-line tool (docker command).

Docker Daemon:
Background service that builds and runs containers.

Images:
Blueprint/template for containers.

Containers:
Running instance of an image.

Registry:
Docker Hub stores images.

Flow:
CLI → Daemon → Pull Image → Run Container

---

## Installation & Verification

Installed Docker using apt.
Started and enabled Docker service.

Verified using:
docker --version
docker run hello-world

---

## Containers I Ran

### Nginx Container

docker run -d -p 8080:80 --name my-nginx nginx

Accessed in browser at:
http://localhost:8080

---

### Ubuntu Interactive Container

docker run -it ubuntu

Explored basic Linux commands inside container.

---

## Commands Used

docker run
docker ps
docker ps -a
docker stop
docker rm
docker images
docker logs
docker exec
docker rmi

---

## What I Learned

- Containers are isolated processes.
- Docker images are templates.
- Port mapping allows host access.
- Detached mode runs in background.
- Containers are lightweight compared to VMs.

Today was my first real step into containerization.
