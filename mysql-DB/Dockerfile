FROM --platform=amd64 ubuntu/mysql 

USER root

ENV MYSQL_ROOT_PASSWORD=root \
    MYSQL_PASSWORD=dockercicd \
    TZ=UTC \
    MYSQL_USER=docker \
    MYSQL_DATABASE=docker_cicd \
    MYSQL_ALLOW_EMPTY_PASSWORD=yes \
    MYSQL_RANDOM_ROOT_PASSWORD=no 
    
#VOLUME [ "/data/mysql:/var/lib/mysql" ]
EXPOSE 3306 22