desc mysql.user;
select user, host from mysql.user;

CREATE USER 'admin02'@'localhost' identified BY 'admin02';
GRANT ALL PRIVILEGES ON *.* TO 'admin02'@'localhost' WITH GRANT OPTION;

DROP USER 'root'@'localhost';

DROP USER 'admin02'@'localhost';