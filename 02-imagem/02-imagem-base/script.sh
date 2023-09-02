# -> Compilar a nova imagem a partir do alpine
docker build -f dockerfile-alpine -t meu-alpine .
docker image ls

# -> Criar um novo container a partir
docker run -it --name alpine-c1 --rm meu-alpine /bin/sh
docker run -it --name alpine-c2 --rm meu-alpine /bin/sh
docker ps


# -> Compilar a nova imagem a partir do ubuntu
docker build -f dockerfile-ubuntu -t meu-ubuntu .
docker image ls

# -> Criar um novo container a partir
docker run -it --name ubuntu-c1 --rm meu-ubuntu /bin/bash
docker run -it --name ubuntu-c2 --rm meu-ubuntu /bin/bash
docker ps