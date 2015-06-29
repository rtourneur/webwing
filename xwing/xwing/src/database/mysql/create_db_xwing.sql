CREATE DATABASE xwing CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'xwing' IDENTIFIED BY 'xwing';
GRANT ALL ON xwing.* TO 'xwing'@'%' IDENTIFIED BY 'xwing';
GRANT ALL ON xwing.* TO 'xwing'@'localhost' IDENTIFIED BY 'xwing';
FLUSH PRIVILEGES;
