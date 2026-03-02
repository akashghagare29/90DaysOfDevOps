# Day 29 – Introduction to Docker

## What is Docker?

**Container**: Lightweight, isolated environment that packages an application with all its dependencies.

**Why containers?**
- Consistent across environments (dev, test, prod)
- Faster than VMs
- Efficient resource usage
- Easy to deploy and scale

**Containers vs VMs:**
- Containers share host OS kernel (lightweight)
- VMs have full OS (heavy)
- Containers start in seconds, VMs in minutes

**Docker Architecture:**
- **Docker Client**: CLI to interact with Docker
- **Docker Daemon**: Background service that manages containers
- **Images**: Read-only templates to create containers
- **Containers**: Running instances of images
- **Registry**: Storage for images (Docker Hub)

---

## Installation & First Container

```bash
# Verify installation
docker --version

# Run hello-world
docker run hello-world
```

---

## Running Containers

```bash
# Run Nginx (detached mode with port mapping)
docker run -d -p 8080:80 --name my-nginx nginx

# Run Ubuntu (interactive mode)
docker run -it ubuntu bash

# List running containers
docker ps

# List all containers
docker ps -a

# Stop container
docker stop my-nginx

# Remove container
docker rm my-nginx
```

---

## Useful Commands

```bash
# Run in detached mode
docker run -d nginx

# Custom name
docker run --name my-app nginx

# Port mapping
docker run -p 8080:80 nginx

# View logs
docker logs my-nginx

# Execute command in running container
docker exec -it my-nginx bash
```

---

## What I Learned

- Containers are faster and lighter than VMs
- Docker makes deployment consistent across environments
- Images are templates, containers are running instances
- Port mapping connects container ports to host ports
- Interactive mode (`-it`) lets you explore containers like a Linux machine

---

## Why Docker Matters for DevOps

Docker is the foundation of modern deployment - CI/CD pipelines, Kubernetes, and microservices all rely on containers. It solves the "works on my machine" problem forever.
