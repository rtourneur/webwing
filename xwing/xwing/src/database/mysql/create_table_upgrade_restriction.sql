CREATE TABLE XWING.UPGRADE_RESTRICTION (
	upgrade_id INT NOT NULL,
	restriction_id INT NOT NULL,
	PRIMARY KEY (upgrade_id, restriction_id));

ALTER TABLE XWING.UPGRADE_RESTRICTION 
ADD CONSTRAINT FK_UPGRADE_RESTRICTION_UPGRADE_ID FOREIGN KEY (upgrade_id) REFERENCES XWING.UPGRADE (id);
ALTER TABLE XWING.UPGRADE_RESTRICTION 
ADD CONSTRAINT FK_UPGRADE_RESTRICTION_RESTRICTION_ID FOREIGN KEY (restriction_id) REFERENCES XWING.RESTRICTION (id);

insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('23','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('24','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('26','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('30','18');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('39','20');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('49','14');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('50','1');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('53','1');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('56','4');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('57','15');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('68','10');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('73','22');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('74','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('75','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('76','7');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('78','7');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('80','1');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('85','5');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('85','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('86','5');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('86','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('87','5');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('87','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('88','5');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('97','9');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('98','9');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('99','9');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('100','9');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('101','9');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('102','5');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('102','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('103','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('104','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('105','5');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('106','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('107','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('114','13');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('115','13');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('116','13');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('119','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('120','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('121','3');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('122','4');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('124','12');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('125','1');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('128','1');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('129','1');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('130','1');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('131','1');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('132','4');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('133','16');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('134','2');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('135','2');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('136','2');
insert into XWING.UPGRADE_RESTRICTION (UPGRADE_ID, RESTRICTION_ID)
values ('145','20');

commit;
