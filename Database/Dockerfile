FROM mariadb:latest

ENV MARIADB_ROOT_PASSWORD 'shrek'

ADD ./wsbookstore.sql /docker-entrypoint-initdb.d/one.sql


EXPOSE 3306

