# Day 30 – Docker Images & Container Lifecycle

## Docker Images

Pulled:
- nginx
- ubuntu
- alpine

Compared sizes:
Alpine is much smaller because it is minimal and lightweight.
Ubuntu includes full libraries and utilities.

Used:
docker images
docker inspect
docker rmi

---

## Image Layers

Checked:
docker image history nginx

Each line represents a layer.
Layers are immutable and cached.
Docker reuses layers across images to save space.

0B layers usually represent metadata instructions.

---

## Container Lifecycle

Practiced:
docker create
docker start
docker pause
docker unpause
docker stop
docker restart
docker kill
docker rm

Observed state changes:
Created → Running → Paused → Exited → Removed

---

## Working with Running Containers

Ran nginx in detached mode.

Viewed logs:
docker logs
docker logs -f

Executed commands:
docker exec -it
docker exec

Inspected container:
docker inspect

Found:
- Container IP
- Port mappings
- Network settings

---

## Cleanup Commands

Stopped all containers.
Removed stopped containers.
Pruned unused images.
Checked disk usage using:
docker system df

---

## What I Learned

- Images are blueprints.
- Containers are running instances.
- Docker uses layered filesystem.
- Containers have lifecycle states.
- Proper cleanup prevents disk waste.
