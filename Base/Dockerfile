FROM mariadb

ENV MYSQL_ROOT_PASSWORD root

COPY request.sql /docker-entrypoint-initdb.d
RUN ["/bin/sh", "-c", "chmod 777 /docker-entrypoint-initdb.d/request.sql"]
EXPOSE 3306

CMD ["mysqld"]

