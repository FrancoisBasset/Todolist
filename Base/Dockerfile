FROM mariadb

ENV MYSQL_ROOT_PASSWORD 0000

COPY request /usr/sql/task.sql
EXPOSE 3306

RUN echo 'ok'

CMD ["mysqld"]

CMD ["mysql -u root -p0000 -e 'CREATE DATABASE todolist;'"]

CMD ["mysql -u root -p0000 -D tasks < /usr/sql/request"]

