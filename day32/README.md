# Day 32 – Docker Volumes & Networking

## Task 1 – Ephemeral Containers

Ran Postgres without volume.
Created database and table.
Removed container.
Data was lost.

Reason:
Container filesystem is temporary.

---

## Task 2 – Named Volumes

Created volume pg-data.
Attached volume to Postgres container.
Removed container.
Started new container with same volume.
Data persisted.

Conclusion:
Volumes store data outside container lifecycle.

---

## Task 3 – Bind Mounts

Mounted host folder to Nginx container.
Editing file on host reflected instantly in browser.

Named Volume vs Bind Mount:

Named Volume:
Managed by Docker, production-friendly.

Bind Mount:
Direct host mapping, good for development.

---

## Task 4 – Networking Basics

Default bridge:
Containers can communicate by IP only.

Custom bridge:
Containers can communicate by name.

Reason:
Custom networks provide automatic DNS resolution.

---

## Task 6 – Combined Setup

Created custom network.
Ran database with volume.
Ran app container on same network.
Verified communication using container name.

---

## What I Learned

- Containers are ephemeral.
- Volumes enable persistence.
- Bind mounts are useful for development.
- Custom networks allow name-based communication.
- Docker networking simplifies microservices communication.
