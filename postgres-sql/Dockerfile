
FROM postgres:15.5-alpine3.18

RUN apk upgrade && apk cache clean

ENV POSTGRES_USER=sonar \
    POSTGRES_PASSWORD=sonar

EXPOSE 5432 22 8080