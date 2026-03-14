# Day 37 – Docker Revision

## Self Assessment

Run containers from Docker Hub – ✔ Can do  
Manage containers and images – ✔ Can do  
Understand image layers and caching – ✔ Can do  
Write Dockerfile from scratch – ✔ Can do  
CMD vs ENTRYPOINT – ✔ Can do  
Build and tag images – ✔ Can do  
Volumes and bind mounts – ✔ Can do  
Custom networks – ✔ Can do  
Docker Compose multi-container setup – ✔ Can do  
Environment variables in compose – ✔ Can do  
Multi-stage Docker builds – ✔ Can do  
Push images to Docker Hub – ✔ Can do  
Healthchecks and depends_on – ✔ Can do

---

# Quick-Fire Questions

### Difference between image and container
An image is a blueprint used to create containers.  
A container is a running instance of an image.

### What happens to data inside a container when removed?
The data is lost unless it is stored in a volume or bind mount.

### How do containers communicate on same network?
Containers can communicate using the container name as the hostname when connected to the same Docker network.

### docker compose down vs docker compose down -v
docker compose down removes containers and networks.  
docker compose down -v also removes volumes.

### Why multi-stage builds are useful
They reduce image size by copying only the final compiled artifacts into the production image.

### Difference between COPY and ADD
COPY only copies files.  
ADD can also extract archives and download URLs.

### What does -p 8080:80 mean
Maps port 8080 on the host to port 80 inside the container.

### How to check Docker disk usage
docker system df

---

# Topic Revisited

### Docker Volumes

Containers lose data when deleted.  
Volumes allow persistent storage by keeping data outside the container filesystem.

Example:

docker volume create myvolume

docker run -v myvolume:/data nginx

---

# Key Takeaways

Docker images are layered which improves caching and build speed.

Docker Compose simplifies running multi-container applications.

Volumes are essential for persistent data.

Multi-stage builds create smaller and more secure images.

Understanding networking is critical for container communication.
