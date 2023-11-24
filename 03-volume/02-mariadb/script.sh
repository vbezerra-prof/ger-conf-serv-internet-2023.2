# MariaDB: https://hub.docker.com/_/mariadb

# -> Criar um volume para armazenar dados do mariadb
docker volume create mariadb-volume

# -> Criar um novo container do mariadb
docker run --rm -d --name mariadb \
-e MARIADB_ROOT_PASSWORD='123456' \
-v mariadb-volume:/var/lib/mysql \
-p 3306:3306 \
mariadb:11

# Com a extensão do Vscode Database Client, crie um nova conexão com o banco de dados
# Nome conexão: mariadb-docker
# Host: 127.0.0.1
# Porta: 3306
# Usuário: root
# Senha: 123456

