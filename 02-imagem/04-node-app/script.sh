# -> Compilar a imagem
docker build -t node-app .

# -> Listar Imagens
docker image list

# -> # Criar container a partir da imagem criada
docker run --name node-app-c1 --rm -p 8080:3000 -d node-app
docker run --name node-app-c2 --rm -p 8081:3000 -d node-app

# Listar Containers
docker ps