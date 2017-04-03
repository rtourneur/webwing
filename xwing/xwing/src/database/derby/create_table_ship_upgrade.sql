CREATE TABLE XWING.SHIP_UPGRADE (
	ship_type_id INT NOT NULL,
	upgrade_type_id INT NOT NULL,
	quantity DECIMAL(1) NOT NULL,
	PRIMARY KEY (ship_type_id, upgrade_type_id));

ALTER TABLE XWING.SHIP_UPGRADE 
ADD CONSTRAINT FK_SHIP_UPGRADE_SHIP_TYPE_ID FOREIGN KEY (ship_type_id) REFERENCES XWING.SHIP_TYPE (id);
ALTER TABLE XWING.SHIP_UPGRADE 
ADD CONSTRAINT FK_SHIP_UPGRADE_UPGRAD_TYPE_ID FOREIGN KEY (upgrade_type_id) REFERENCES XWING.UPGRADE_TYPE (id);

insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 1, 2,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 2, 2,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 6, 2,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 12, 9,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 13, 9,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 14, 9,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 15, 9,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 16, 9,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 17, 9,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 18, 9,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 19, 9,  3);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 30, 9,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 31, 9,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 1, 4,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 2, 4,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 4, 4,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 6, 4,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 10, 4,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 19, 4,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 3, 5,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 5, 5,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 8, 5,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 10, 5,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 11, 5,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 14, 5,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 15, 5,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 18, 5,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 30, 5,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 4, 8,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 11, 8,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 15, 8,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 17, 8,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 18, 8,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 30, 8,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 2, 7,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 16, 7,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 31, 7,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 10, 6,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 15, 6,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 19, 6,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 30, 6,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 4, 10,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 6, 10,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 12, 10,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 17, 10,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 30, 11,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 31, 11,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 25, 14,  3);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 26, 14,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 27, 14,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 28, 14,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 29, 14,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 26, 15,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 27, 15,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 28, 15,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 29, 15,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 26, 16,  2);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 27, 16,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 28, 16,  1);
insert into XWING.SHIP_UPGRADE (ship_type_id, upgrade_type_id, quantity)
values ( 29, 16,  2);

