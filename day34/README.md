# Day 34 – Docker Compose: Real-World Multi-Container Apps

## Task 1 – Application Stack

Created a three-service architecture using Docker Compose:

- Flask Web Application
- PostgreSQL Database
- Redis Cache

The web app was built using a custom Dockerfile.

---

## Task 2 – Service Dependencies

Used `depends_on` with a healthcheck to ensure the web service waits for the database to become ready before starting.

Database healthcheck:

pg_isready -U devops

This ensures proper startup ordering.

---

## Task 3 – Restart Policies

Added:

restart: always

to the database service.

Tested by killing the container. Docker automatically restarted it.

Restart policy types:

- no
- always
- on-failure

---

## Task 4 – Custom Dockerfile

The web service image was built using:

build: ./app

This allows application changes to be rebuilt using:

docker compose up --build

---

## Task 5 – Named Networks & Volumes

Created custom network:

app-network

Created named volume:

postgres-data

This stores database data persistently even if containers are removed.

---

## Task 6 – Scaling

Attempted to scale the web service using:

docker compose up --scale web=3

Scaling failed due to port conflicts.

This demonstrates why load balancers are required when scaling containerized applications.

---

## What I Learned

- Docker Compose simplifies multi-container setups
- Healthchecks ensure services start correctly
- Restart policies improve reliability
- Named volumes provide persistent storage
- Scaling requires load balancing and orchestration tools
