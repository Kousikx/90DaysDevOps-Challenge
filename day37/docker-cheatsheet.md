# Docker Cheat Sheet

This is my personal quick reference for Docker commands learned from Day 29–36.

---

# Container Commands

docker run image  
Run a container from an image

docker run -it ubuntu bash  
Run container in interactive mode

docker run -d nginx  
Run container in detached mode

docker ps  
List running containers

docker ps -a  
List all containers including stopped ones

docker stop container_id  
Stop a running container

docker rm container_id  
Remove a container

docker exec -it container_id bash  
Enter a running container

docker logs container_id  
View container logs

docker logs -f container_id  
Follow container logs in real time

---

# Image Commands

docker pull image  
Download image from Docker Hub

docker images  
List local images

docker build -t image_name .  
Build an image from Dockerfile

docker tag image local:tag username/repo:tag  
Tag image for Docker Hub

docker push username/repo:tag  
Push image to Docker Hub

docker rmi image_id  
Remove image

---

# Volume Commands

docker volume create volume_name  
Create a named volume

docker volume ls  
List volumes

docker volume inspect volume_name  
Inspect volume details

docker volume rm volume_name  
Remove volume

---

# Network Commands

docker network create network_name  
Create a custom network

docker network ls  
List networks

docker network inspect network_name  
View network details

docker network connect network_name container  
Connect container to network

---

# Docker Compose Commands

docker compose up  
Start services

docker compose up -d  
Start services in detached mode

docker compose down  
Stop and remove containers

docker compose ps  
View running services

docker compose logs  
View logs

docker compose build  
Build images defined in compose file

---

# Cleanup Commands

docker system df  
Show Docker disk usage

docker system prune  
Remove unused containers, images, networks

docker container prune  
Remove stopped containers

docker volume prune  
Remove unused volumes

---

# Dockerfile Instructions

FROM  
Defines base image

RUN  
Execute command during build

COPY  
Copy files from host to container

WORKDIR  
Set working directory

EXPOSE  
Document application port

CMD  
Default command for container

ENTRYPOINT  
Main executable for container
