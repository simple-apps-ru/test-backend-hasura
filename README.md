Конвертация сертификата в строку

```sh
awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}'  ca.pem
```
