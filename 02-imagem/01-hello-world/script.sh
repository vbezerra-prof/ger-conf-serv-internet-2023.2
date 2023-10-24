# -> Compilar a nova imagem a partir do arquivo dockerfile
docker image build -t ola-mundo-alpine .
docker image ls

# -> Criar um novo container a partir da imagem criada em modo detached
docker run --name ola-mundo-c1 ola-mundo-alpine
docker run --name ola-mundo-c2 --rm -d ola-mundo-alpine
docker ps -a

# -> Executar o container ol-mundo-c1 já criado e habilitando a saída de resultados no console do host
docker start -i ola-mundo-c1