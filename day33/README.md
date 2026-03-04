Day 34 – Docker Compose: Real-World Multi-Container Apps
Task
Today's goal is to build more complex, production-like setups with Docker Compose.

Yesterday was basics. Today you handle real scenarios — app + database + cache, healthchecks, restart policies, and service dependencies.

Expected Output
A markdown file: day-34-compose-advanced.md
All compose files and Dockerfiles you create
Challenge Tasks
Task 1: Build Your Own App Stack
Create a docker-compose.yml for a 3-service stack:

A web app (use Python Flask, Node.js, or any language you know)
A database (Postgres or MySQL)
A cache (Redis)
Write a simple Dockerfile for the web app. The app doesn't need to be complex — even a "Hello World" that connects to the database is enough.

Task 2: depends_on & Healthchecks
Add depends_on to your compose file so the app starts after the database
Add a healthcheck on the database service
Use depends_on with condition: service_healthy so the app waits for the database to be truly ready, not just started
Test: Bring everything down and up — does the app wait for the DB?

Task 3: Restart Policies
Add restart: always to your database service
Manually kill the database container — does it come back?
Try restart: on-failure — how is it different?
Write in your notes: When would you use each restart policy?
Task 4: Custom Dockerfiles in Compose
Instead of using a pre-built image for your app, use build: in your compose file to build from a Dockerfile
Make a code change in your app
Rebuild and restart with one command
Task 5: Named Networks & Volumes
Define explicit networks in your compose file instead of relying on the default
Define named volumes for database data
Add labels to your services for better organization
Task 6: Scaling (Bonus)
Try scaling your web app to 3 replicas using docker compose up --scale
What happens? What breaks?
Write in your notes: Why doesn't simple scaling work with port mapping?
Hints
Build from Dockerfile: build: ./app
Healthcheck: healthcheck: with test, interval, timeout
Rebuild: docker compose up --build
Scale: docker compose up --scale web=3
Submission
Add your compose files, Dockerfiles, and day-34-compose-advanced.md to 2026/day-34/
Commit and push to your fork
