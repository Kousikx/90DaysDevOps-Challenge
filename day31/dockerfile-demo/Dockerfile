FROM ubuntu 
RUN apt update && apt install -y curl 
WORKDIR /app 
COPY . . 
EXPOSE 8080
CMD ["echo", "Dockerfile demo running"]
