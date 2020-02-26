# kohana-env
Docker Envirement for PHP 5.6 &amp; MySQL &amp; NGINX 

## Описание
  - Данный репозиторий предназначен для поднятия через docker окружения для разработки в PHP
    - в процессе развертывания поднимается три связанных контейнера.
      - nginx
      - PHP 5.6
      - mysql
      - memcache (опционально)
     
    ### Структура  
 
    - backup (бекапы базы при старте)
    - etc (файлы конфигов)
        - mysql
        - php 
        - nginx (пример виртуального хоста приложен, новые именовать host-name.conf)
    - logs (логи nginx)
    - www (в данную дирректорию надо разместить проекты которые будут работать в данном окружении)
    - docker-compose.yaml (настройки контейнеров)

##### ВАЖНО
 - Первый запуск сделать по принципу docker-compose up
 - запуск понтейнера с восстановлением mysql из бекапа "sh dock-start.sh"
 - остановка контейнера с предварительным бекапом всех баз в mysql "sh dock-stop.sh"
 - на Mac Os для указания в настройках mysqli connect в своем приложении имя хоста mysql указывать как "docker.for.mac.host.internal"

##### Автор
 - **Andrey Verstov** - [verstov](https://github.com/verstov)

