# Day 31 – Dockerfile: Build Your Own Images

## Task 1 – First Image

Created custom Ubuntu image.
Installed curl.
Set default CMD.
Built using:
docker build -t my-ubuntu:v1 .
Verified output using:
docker run my-ubuntu:v1

---

## Task 2 – Dockerfile Instructions

Practiced:
FROM
RUN
COPY
WORKDIR
EXPOSE
CMD

Understood difference between build-time and runtime instructions.

---

## Task 3 – CMD vs ENTRYPOINT

CMD:
Default command, can be overridden.

ENTRYPOINT:
Fixed executable, arguments appended.

Use CMD for flexibility.
Use ENTRYPOINT for strict behavior.

---

## Task 4 – Static Website

Used nginx:alpine.
Copied index.html.
Mapped port and accessed in browser.
Successfully deployed custom containerized website.

---

## Task 5 – .dockerignore

Excluded unnecessary files.
Improved security and build performance.

---

## Task 6 – Build Optimization

Docker uses layer caching.
Layer order affects rebuild speed.
Frequently changing instructions should be placed last.

---

## What I Learned

- Docker images are layered.
- Dockerfile defines image behavior.
- CMD and ENTRYPOINT control runtime.
- Build caching improves performance.
- Proper Dockerfile structure is important for production.
