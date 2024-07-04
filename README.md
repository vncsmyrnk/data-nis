# data-nis

Web API para o controle de informações relacionadas ao NIS (Número de Identificação Social)

## 🔧 Development with docker

```bash
docker run --rm -it \
    -v "$(pwd)"/src:/app \
    -v "$(pwd)"/config/apache/000-default.conf:/etc/apache2/sites-available \
    -v ~/.ssh:/home/dev/.ssh \
    -e GIT_USERNAME="$(git config --list | grep "user.name" | cut -d = -f2)" \
    -e GIT_EMAIL="$(git config --list | grep "user.email" | cut -d = -f2)" \
    -p 8080:80 \
    composer:2.7.7 bash
```
