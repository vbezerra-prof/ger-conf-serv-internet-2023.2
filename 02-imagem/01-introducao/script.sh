# -> Compilar a nova imagem a partir do arquivo dockerfile
docker image build -t meu-nginx .
docker image ls

# -> Criar um novo container a partir da imagem criada em modo detached
docker run --name nginx-c1 --rm -d -p 80:80 meu-nginx
docker run --name nginx-c2 --rm -d -p 81:80 meu-nginx
docker ps