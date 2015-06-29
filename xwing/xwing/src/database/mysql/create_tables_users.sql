create table xwing.users(username VARCHAR(50) not null primary key,password VARCHAR(500) not null,enabled boolean not null);
create table xwing.authorities (username VARCHAR(50) not null,authority VARCHAR(50) not null,constraint fk_authorities_users foreign key(username) references xwing.users(username));
create unique index ix_auth_username on xwing.authorities (username,authority);