# Hello World
docker run hello-world

# Container Nginx
docker run --name nginx1 -p 80:80 -d nginx:1.25-alpine
docker run --name nginx2 -p 81:80 -d nginx:1.25-alpine
docker run --name nginx3 -p 82:80 -d nginx:1.25-alpine