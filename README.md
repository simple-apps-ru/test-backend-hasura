переименовать TAMPLATE_NAME на префикс и DOMAIN_NAME на домен проекта в docker-compose файлах

```sh
# сгенерировать ключи
openssl req -newkey rsa:2048 -new -nodes -keyout key.pem -out csr.pem
openssl x509 -req -days 365 -in csr.pem -signkey key.pem -out server.crt

# вывести ключи на экран
awk -v ORS='\\n' '1' key.pem
awk -v ORS='\\n' '1' server.crt
```
