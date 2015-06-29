CREATE TABLE XWING.UPGRADE_TYPE (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(255),
    icon VARCHAR(30) NOT NULL);

insert into XWING.UPGRADE_TYPE (id, name, description)
values ('1','Pilote','Talent de pilote expérimenté');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('2','Astromech','Droïde Astromech');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('3','Astromech déglingué','Droïde Astromech de récupération');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('4','Torpilles','Torpilles');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('5','Missiles','Missiles');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('6','Bombes','Bombes');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('7','Tourelles','Tourelles');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('8','Canons','Canons');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('9','Equipage','Membres d''équipage');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('10','Systèmes','Systèmes de vaisseaux');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('11','Illégale','Améliorations illégales');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('12','Modifications','Modifications de vaisseau');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('13','Titres','Titres de vaisseau');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('14','Cargo','Cargo');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('15','Armement','Tourelles d''armement');
insert into XWING.UPGRADE_TYPE (id, name, description)
values ('16','Equipes','Equipes techniques');

commit;
