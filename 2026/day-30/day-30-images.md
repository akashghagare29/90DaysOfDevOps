# Day 30 – Docker Images & Container Lifecycle

## Docker Images

```bash
# Pull images
docker pull nginx
docker pull ubuntu
docker pull alpine

# List images
docker images

# Inspect image
docker inspect nginx

# Remove image
docker rmi alpine
```

**Ubuntu vs Alpine:**
- Ubuntu: ~77MB (full-featured)
- Alpine: ~7MB (minimal, lightweight)
- Alpine uses musl libc instead of glibc

---

## Image Layers

```bash
# View image layers
docker image history nginx
```

**What are layers?**
- Each instruction in Dockerfile creates a layer
- Layers are cached and reused
- Only changed layers are rebuilt
- Saves time and disk space

---

## Container Lifecycle

```bash
# Create (without starting)
docker create --name test nginx

# Start
docker start test

# Pause
docker pause test

# Unpause
docker unpause test

# Stop
docker stop test

# Restart
docker restart test

# Kill (force stop)
docker kill test

# Remove
docker rm test
```

---

## Working with Containers

```bash
# Run in detached mode
docker run -d --name web nginx

# View logs
docker logs web

# Follow logs (real-time)
docker logs -f web

# Exec into container
docker exec -it web bash

# Run single command
docker exec web ls /usr/share/nginx/html

# Inspect container
docker inspect web
```

---

## Cleanup

```bash
# Stop all containers
docker stop $(docker ps -q)

# Remove all stopped containers
docker container prune

# Remove unused images
docker image prune

# Check disk usage
docker system df

# Clean everything
docker system prune -a
```

---

## What I Learned

- Images are built in layers for efficiency
- Alpine is perfect for production (small size)
- Container lifecycle: create → start → pause → stop → remove
- `docker inspect` shows all container details
- Regular cleanup prevents disk space issues
