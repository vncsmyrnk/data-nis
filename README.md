# data-nis

Web API para o controle de informações relacionadas ao NIS (Número de Identificação Social)

## 🔧 Development with docker

```bash
docker run --rm -it \
    -v "$(pwd)"/src:/var/www/html \
    -v "$(pwd)"/config/apache/000-default-conf:/etc/apache2/sites-available \
    -p 8080:80 \
    php:8.3.8-apache bash
```
