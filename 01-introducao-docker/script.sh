###### COMANDOS BASICOS ######

# Criar e executar um container Hello World
docker run hello-world # Cria um container de forma persistente
docker run --rm hello-world # Cria um container temporário

# Listar os containers
docker container list # Comando que lista todos os containers em execução
docker ps -a # Comando que lista todos os containers, mesmo parados

# Listar imagens offline (cache do docker hub)
docker image list

# Comandos de gerenciamento de estado do container
docker start NOME_DO_CONTAINER ou ID_DO_CONTAINER # Iniciar
docker stop NOME_DO_CONTAINER ou ID_DO_CONTAINER # Parar
docker restart NOME_DO_CONTAINER ou ID_DO_CONTAINER # Reiniciar
docker rm NOME_DO_CONTAINER ou ID_DO_CONTAINER # Remover
docker rename NOME_ATUAL_DO_CONTAINER NOVO_NOME_DO_CONTAINER # Renomear

# Comando em lote para gerenciar containers a partir dos IDs (Dica: usar em ambiente de testes)
docker start $(docker ps -a -q) # Iniciar todos
docker stop $(docker ps -a -q) # Parar todos
docker restart $(docker ps -a -q) # Reiniciar todos
docker rm $(docker ps -a -q) # Remover todos

# Zerar o docker
docker system prune --all -f


###### CONTAINER COM EXECUÇÃO CONSTANTE ######
docker run --name nginx1 -p 80:80 -d --rm nginx:1.25-alpine
docker run --name nginx2 -p 81:80 -d --rm nginx:1.25-alpine
docker run --name nginx3 -p 82:80 -d --rm nginx:1.25-alpine