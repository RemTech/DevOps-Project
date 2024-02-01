FROM --platform=amd64 ubuntu/mysql:8.0-22.04_beta

USER root

RUN apt-get update && apt-get upgrade -y

ENV MYSQL_ROOT_PASSWORD=root \
    TZ=UTC \
    MYSQL_PASSWORD=dockercicd \
    MYSQL_USER=docker \
    MYSQL_DATABASE=docker_cicd \
    MYSQL_ALLOW_EMPTY_PASSWORD=yes \
    MYSQL_RANDOM_ROOT_PASSWORD=no 
    
#VOLUME [ "/data/mysql:/var/lib/mysql" ]
EXPOSE 3306 22