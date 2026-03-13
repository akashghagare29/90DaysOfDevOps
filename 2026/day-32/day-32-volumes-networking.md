# Day 32 - Docker Volumes & Networking

## Task 1: The Problem

```bash
docker run -d -e MYSQL_ROOT_PASSWORD=test@123 mysql:latest
docker ps
docker exec -it <container_id> bash
# Login into DB, mysql -u root -p `test@123` and created mysql db `mysql_data`
docker stop mysql:latest && docker rm mysql:latest
docker run -d -e MYSQL_ROOT_PASSWORD=test@123 mysql:latest
# Data is GONE! Containers are ephemeral.
```

**Why?** Container filesystem is temporary. Data lost on removal.

---

## Task 2: Named Volumes

```bash
docker volume create mysql-data
docker run --name mysql-data -v db-data:/var/lib/mysql/data -e MYSQL_ROOT_PASSWORD=test@123 mysql
docker exec -it mysql-data mysql -U root -c "CREATE TABLE users(id INT);"
docker stop mysql-data && docker rm mysql-data

# New container, same volume
docker run --name mysql-data2 -v db-data:/var/lib/mysql/data -e MYSQL_ROOT_PASSWORD=test@123 mysql
# Data PERSISTS! ✅
```

```bash
docker volume ls
docker volume inspect mysql-data
```

---

## Task 3: Bind Mounts

**index.html**
```html
<h1>Hello from Host!</h1>
```

```bash
docker run -d -p 8080:80 -v $(pwd):/usr/share/nginx/html nginx
# Edit index.html on host → refresh browser → changes reflect instantly
```

**Difference:**
- **Named Volume**: Managed by Docker, stored in Docker area
- **Bind Mount**: Direct link to host filesystem, real-time sync

---

## Task 4: Docker Networking Basics

```bash
docker network ls
docker network inspect bridge

docker run -d --name c1 alpine sleep 3600
docker run -d --name c2 alpine sleep 3600

docker exec c1 ping c2  # ❌ Fails (name resolution doesn't work)
docker exec c1 ping <c2-ip>  # ✅ Works (IP-based)
```

---

## Task 5: Custom Networks

```bash
docker network create my-app-net

docker run -d --name app1 --network my-app-net alpine sleep 3600
docker run -d --name app2 --network my-app-net alpine sleep 3600

docker exec app1 ping app2  # ✅ Works! Name-based DNS
```

**Why?** Custom networks have built-in DNS. Default bridge doesn't.

---

## Task 6: Put It Together

```bash
docker network create app-network
docker volume create db-volume

# Database
docker run -d --name database \
  --network app-network \
  -v db-volume:/var/lib/mysql/data \
  -e MYSQL_ROOT_PASSWORD=secret \
  postgres

# App
docker run -d --name app \
  --network app-network \
  alpine sleep 3600

# Verify connection
docker exec app ping database  # ✅ Works by name
```

---

## Key Learnings

- **Volumes** persist data beyond container lifecycle
- **Bind mounts** sync host and container in real-time
- **Custom networks** enable container name resolution
- **Default bridge** only supports IP-based communication
- Always use volumes for databases in production
