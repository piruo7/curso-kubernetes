### Comandos

`➜  ~ docker network create [NETWORK_NAME]`

`➜  ~ docker run -d -p 3306:3306 --name mysql8 --network [NETWORK_NAME] -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=msvc_usuarios -v data-mysql:/var/lib/mysql --restart=always mysql:8`

`➜  ~ docker run -d -p 5432:5432 --name postgres14 --network [NETWORK_NAME] -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=msvc_cursos -d -v data-postgres:/var/lib/postgresql/data --restart=always postgres:14-alpine`

`➜  ~ docker start mysql8`

`➜  ~ docker start postgres14`

`➜  ~ docker build -t usuarios . -f ./msvc-usuarios/Dockerfile`

`➜  ~ docker build -t cursos . -f ./msvc-cursos/Dockerfile`

`➜  ~ docker run -p 8001:8001 -d --rm --name msvc-usuarios --network [NETWORK_NAME] usuarios`

`➜  ~ docker run -p 8002:8002 -d --rm --name msvc-cursos --network [NETWORK_NAME] cursos`

#### Obtener logs
`➜  ~ docker cp [CONTAINER_ID]:/app/logs ./logs`

