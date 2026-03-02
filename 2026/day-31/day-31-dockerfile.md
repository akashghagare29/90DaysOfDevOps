# Day 31 - Dockerfile Tasks

## Task 1: First Dockerfile

```dockerfile
FROM ubuntu
RUN apt-get update && apt-get install -y curl
CMD ["echo", "Hello from my custom image!"]
```

```bash
docker build -t my-ubuntu:v1 .
docker run my-ubuntu:v1
```

---

## Task 2: All Dockerfile Instructions

```dockerfile
FROM nginx:alpine
RUN apk add --no-cache curl
WORKDIR /app
COPY index.html /app/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

```bash
docker build -t full-demo:v1 .
docker run -p 8080:80 full-demo:v1
```

---

## Task 3: CMD vs ENTRYPOINT

### CMD Example
```dockerfile
FROM alpine
CMD ["echo", "hello"]
```
- `docker run cmd-image` → prints "hello"
- `docker run cmd-image echo bye` → prints "bye" (CMD overridden)

### ENTRYPOINT Example
```dockerfile
FROM alpine
ENTRYPOINT ["echo"]
```
- `docker run entry-image` → prints nothing
- `docker run entry-image hello` → prints "hello" (args appended)

**Use CMD** for default commands that can be overridden.  
**Use ENTRYPOINT** when container should always run specific executable.

---

## Task 4: Simple Web App

**index.html**
```html
<!DOCTYPE html>
<html>
<body><h1>My First Docker Website</h1></body>
</html>
```

**Dockerfile**
```dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
```

```bash
docker build -t my-website:v1 .
docker run -p 8080:80 my-website:v1
# Access: http://localhost:8080
```

---

## Task 5: .dockerignore

**.dockerignore**
```
node_modules
.git
*.md
.env
```

```bash
docker build -t optimized:v1 .
# Verify ignored files not included
```

---

## Task 6: Build Optimization

**Bad Order (rebuilds often)**
```dockerfile
FROM node:alpine
COPY . .
RUN npm install
```

**Good Order (uses cache)**
```dockerfile
FROM node:alpine
COPY package.json .
RUN npm install
COPY . .
```

**Why?** Docker caches layers. Put frequently changing files (source code) last, dependencies first.

---

## Key Learnings
- Layer order affects build speed due to caching
- ENTRYPOINT for fixed commands, CMD for defaults
- .dockerignore reduces image size
- COPY dependencies before source code for better caching
