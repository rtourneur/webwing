CREATE TABLE XWING.SHIP_SIZE (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL);

insert into XWING.SHIP_SIZE (id, name)
values ('1','Normal');
insert into XWING.SHIP_SIZE (id, name)
values ('2','Grand vaisseau');
insert into XWING.SHIP_SIZE (id, name)
values ('3','Vaisseau immense');

commit;
