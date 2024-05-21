### Comandos

`➜  ~ docker-compose up -d`

`➜  ~ docker build -t usuarios . -f ./msvc-usuarios/Dockerfile`

`➜  ~ docker build -t cursos . -f ./msvc-cursos/Dockerfile`

`➜  ~ docker network create [NETWORK_NAME]`

`➜  ~ docker run -p 8001:8001 -d --rm --name msvc-usuarios --network [NETWORK_NAME] usuarios`

`➜  ~ docker run -p 8002:8002 -d --rm --name msvc-cursos --network [NETWORK_NAME] cursos`

#### Obtener logs
`➜  ~ docker cp [CONTAINER_ID]:/app/logs ./logs`
