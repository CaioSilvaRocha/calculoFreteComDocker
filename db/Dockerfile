FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=123456789
ENV MYSQL_DATABASE=banco-dados-pdsi2

COPY ./db.sql /docker-entrypoint-initdb.d/

EXPOSE 3306