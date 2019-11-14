# Docker Postgres

Создаем виртуальную машину для локальной разработки и тестирования

```sh
docker-machine create postgres
```

Получаем переменные окружания виртуальной машины

```sh
docker-machine env postgres
```

Применяем переменные окружения для работы docker

```sh
eval $(docker-machine env postgres)
```

Собираем наш образ docker из Dockerfile

```sh
docker-compose build
```

* Dockerfile - Dockerfile для нашего Postgres
* create_db.sh - Скрипт создания базы данных, схемы и загрузки данных
* schema.sql - SQL файл содержащий схему базы данных
* data.sql - SQL файл содержащий данные используемы для загрузки в базу данных
* .env - Файл с переменными окружения

Просмотр информации раздела базы данных

```sh
docker volume inspect postgres-data
```
Работа с базой данных из командной строки в контейнере

```sh
docker exec -it $(docker-compose ps -q <db_service_name>) psql -U<user_name> -a <db_name>
```

Пример:

```sh
docker exec -it $(docker-compose ps -q postgres) psql -Udemo -a demodb
```
