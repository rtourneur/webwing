create table XWING.USERS (
	username VARCHAR(50) not null primary key,
	password VARCHAR(500) not null,
	enabled boolean not null,
	accountNonExpired boolean NOT NULL DEFAULT true ,
	accountNonLocked boolean NOT NULL DEFAULT true ,
	credentialsNonExpired boolean NOT NULL DEFAULT true
);
create table XWING.authorities (username VARCHAR(50) not null,authority VARCHAR(50) not null,constraint fk_authorities_users foreign key(username) references xwing.users(username));
create unique index XWING.ix_auth_username on XWING.authorities (username,authority);
insert into XWING.users(username, password, enabled) values ('user', '$2a$10$Za.4NW0knHnCDm5/3t.FuOperuw9dQX7QNt67y6MV2JjKgXzTx3em', true);
insert into XWING.users(username, password, enabled) values ('admin', '$2a$10$986Eg6qhr9n9TJO5oFMQN.HRdXm3uy10yoTQemqLYmZiYaC6RxieK', true);
insert into XWING.authorities(username, authority) values ('admin', 'ROLE_ADMIN');
insert into XWING.authorities(username, authority) values ('admin', 'ROLE_USER');
insert into XWING.authorities(username, authority) values ('user', 'ROLE_USER');

