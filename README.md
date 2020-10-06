переименовать TAMPLATE_NAME на префикс и DOMAIN_NAME на домен проекта в docker-compose файлах

```sh
# сгенерировать ключи
cd ./custom/keys
openssl genrsa -out private.pem 2048
openssl req -x509 -new -nodes -days 3650 -key private.pem -out server.crt

# вывести публичный ключ на экран, требуется в переменной HASURA_GRAPHQL_JWT_SECRET
awk -v ORS='\\n' '1' server.crt
```
