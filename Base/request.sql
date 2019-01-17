create database todolist;

use todolist;

CREATE TABLE tasks(task_id int, task_description varchar(255), task_is_done int(1));

INSERT INTO tasks (task_id, task_description, task_is_done) VALUES
(1,'learn how to use mysql',1),
(2,'learn how to use php',1),
(3,'learn how to use docker',1),
(4,'learn how to use docker-compose',1),
(5,'use it at work',0);