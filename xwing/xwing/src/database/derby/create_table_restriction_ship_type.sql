CREATE TABLE XWING.RESTRICTION_SHIP_TYPE (
	restriction_id INT NOT NULL,
	ship_type_id INT NOT NULL,
	PRIMARY KEY (restriction_id, ship_type_id));

ALTER TABLE XWING.RESTRICTION_SHIP_TYPE 
ADD CONSTRAINT FK_RESTRICTION_SHIP_TYPE_RESTRICTION_ID FOREIGN KEY (restriction_id) REFERENCES XWING.RESTRICTION (id);
ALTER TABLE XWING.RESTRICTION_SHIP_TYPE 
ADD CONSTRAINT FK_RESTRICTION_SHIP_TYPE_SHIP_TYPE_ID FOREIGN KEY (ship_type_id) REFERENCES XWING.SHIP_TYPE (id);

insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 6, 2); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 6, 20);
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 7, 3); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 8, 8); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 9, 25); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 10, 12); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 11, 4); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 12, 18); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 13, 26); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 14, 16); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 15, 17); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 16, 19); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 17, 23); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 18, 14); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 19, 22); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 20, 15); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 20, 30);
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 21, 24); 
insert into RESTRICTION_SHIP_TYPE (RESTRICTION_ID,SHIP_TYPE_ID) values ( 22, 9); 

commit;
