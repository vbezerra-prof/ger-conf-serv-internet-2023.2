# -> Compilar a nova imagem a partir do arquivo dockerfile sem volume
docker image build -f dockerfile-html -t nginx-html .
docker image ls

# -> Criar um novo container a partir da imagem criada em modo detached
docker run --name nginx-c1 --rm -d -p 80:80 nginx-html
docker run --name nginx-c2 --rm -d -p 81:80 nginx-html
docker ps -a

# -> Compilar a nova imagem a partir do arquivo dockerfile com volume
docker image build -f dockerfile-html-volume -t nginx-html-volume .

# -> Criar um novo container a partir da imagem criada em modo detached
docker run --name nginx-vol-c1 --rm -d -p 90:80 -v $(pwd)/src:/usr/share/nginx/html nginx-html-volume
docker run --name nginx-vol-c2 --rm -d -p 91:80 -v $(pwd)/src:/usr/share/nginx/html nginx-html-volume