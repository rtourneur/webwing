CREATE TABLE XWING.FACTION (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(255));

insert into XWING.FACTION (id, name, description)
values ( 1,'Rebelles','Alliance Rebelles');
insert into XWING.FACTION (id, name, description)
values ( 2,'Impériaux','Empire Galactique');
insert into XWING.FACTION (id, name, description)
values ( 3,'Racailles','Racailles et Scélérats');

commit;
