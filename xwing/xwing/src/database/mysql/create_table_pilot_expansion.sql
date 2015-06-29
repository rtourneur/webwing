CREATE TABLE XWING.PILOT_EXPANSION (
	pilot_id INT NOT NULL,
	expansion_id INT NOT NULL,
	quantity INT(1) NOT NULL,
	PRIMARY KEY (pilot_id, expansion_id));

ALTER TABLE XWING.PILOT_EXPANSION 
ADD CONSTRAINT FK_PILOT_EXPANSION_PILOT_ID FOREIGN KEY (pilot_id) REFERENCES XWING.PILOT (id);
ALTER TABLE XWING.PILOT_EXPANSION 
ADD CONSTRAINT FK_PILOT_EXPANSION_EXPANSION_ID FOREIGN KEY (expansion_id) REFERENCES XWING.EXPANSION (id);

insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Luke Skywalker' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Biggs Darklighter' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Rouge' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Pilote débutant' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Mauler Mithel' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Dark Curse' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Night Beast' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','2' from XWING.PILOT where NAME = 'Pilote de l''escadron Noir' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','2' from XWING.PILOT where NAME = 'Pilote de l''escadron Obsidian' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','2' from XWING.PILOT where NAME = 'Pilote de l''académie' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.PILOT where NAME = 'Wedge Antilles' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.PILOT where NAME = 'Garven Dreis' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Rouge' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.PILOT where NAME = 'Pilote débutant' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.PILOT where NAME = 'Horton Salm' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.PILOT where NAME = 'Dutch Vander' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Gris' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Or' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Howlrunner' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Backstabber' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Winged Gundark' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Noir' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Obsidian' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Pilote de l''académie' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.PILOT where NAME = 'Dark Vador' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.PILOT where NAME = 'Maarek Stele' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Orage' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Tempête' and FACTION_ID = '2';

commit;
