CREATE TABLE XWING.EXPANSION (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(255),
    wave VARCHAR(20),
    cost DECIMAL(5,2) NOT NULL);

insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 1,'Base','Boîte de base','Vague 1',39.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 2,'X-wing','Chasseur X-wing','Vague 1',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 3,'Chasseur TIE','Chasseur TIE','Vague 1',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 4,'Y-Wing','Chasseur Y-wing','Vague 1',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 5,'TIE Advanced','Chasseur TIE Advanced','Vague 1',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 6,'Faucon Millenium','Faucon Millenium','Vague 2',29.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 7,'Slave-1','Slave 1','Vague 2',29.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 8,'A-Wing','Chasseur A-wing','Vague 2',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 9,'Intercepteur TIE','Intercepteur TIE','Vague 2',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 10,'HWK-290','HWK-290','Vague 3',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 11,'B-Wing','B-wing','Vague 3',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 12,'Bombardier TIE','Bombardier TIE','Vague 3',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 13,'Navette de classe Lambda','Navette de Classe Lambda','Vague 3',29.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 14,'As Impériaux','As Impériaux','As',29.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 15,'As Rebelles','As Rebelles','As',29.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 16,'Z-95','Chasseur de Têtes Z-95','Vague 4',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 17,'Défenseur TIE','Défenseur TIE','Vague 4',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 18,'E-Wing','E-wing','Vague 4',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 19,'TIE Fantôme','TIE Fantôme','Vague 4',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 20,'Transport Rebelle','Transport Rebelle','Vague épique',59.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 21,'Tantive IV','Tantive IV','Vague épique',89.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 22,'YT-2400','Cargo YT-2400','Vague 5',29.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 23,'VT-49','Décimateur VT-49','Vague 5',39.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 24,'Ennemis Publics','Ennemis Publics','Vague 6',39.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 25,'StarViper','StarViper','Vague 6',19.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 26,'Intercepteur M3-A','Intercepteur M3-A','Vague 6',14.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 27,'IG-2000','IG-2000','Vague 6',29.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 28,'Raider Impérial','Raider Impérial','Vague épique',99.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 29,'K-Wing','K-Wing','Vague 7',19.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 30,'TIE Punisher','TIE Punisher','Vague 7',19.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 31,'Hound’s Tooth','Hound''s Tooth','Vague 7',39.95);
insert into XWING.EXPANSION (ID,NAME,DESCRIPTION,WAVE,COST)
values ( 32,'Chasseur Kihraxz','Chasseur Kihraxz','Vague 7',14.95);

commit;
