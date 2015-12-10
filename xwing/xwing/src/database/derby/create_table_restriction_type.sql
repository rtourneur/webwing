CREATE TABLE XWING.RESTRICTION_TYPE (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL);

insert into XWING.RESTRICTION_TYPE (id, name)
values ( 1,'Ship');
insert into XWING.RESTRICTION_TYPE (id, name)
values ( 2,'Size');
insert into XWING.RESTRICTION_TYPE (id, name)
values ( 3,'Faction');

commit;
