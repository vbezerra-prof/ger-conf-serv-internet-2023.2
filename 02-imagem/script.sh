# -> Compilar a nova imagem a partir do arquivo dockerfile
docker image build -t minha-primeira-imagem .
docker image ls

# -> Criar um novo container a partir da imagem criada em modo detached
docker run --rm -d -p 80:80 minha-primeira-imagem
docker ps