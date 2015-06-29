CREATE TABLE XWING.SHIP_ACTION (
	ship_type_id INT NOT NULL,
	action_type_id INT NOT NULL, 
	PRIMARY KEY (ship_type_id, action_type_id));

ALTER TABLE XWING.SHIP_ACTION 
ADD CONSTRAINT FK_SHIP_ACTION_SHIP_TYPE_ID FOREIGN KEY (ship_type_id) REFERENCES XWING.SHIP_TYPE (id);
ALTER TABLE XWING.SHIP_ACTION 
ADD CONSTRAINT FK_SHIP_ACTION_ACTION_TYPE_ID FOREIGN KEY (action_type_id) REFERENCES XWING.ACTION_TYPE (id);

insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('1','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('2','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('3','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('4','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('5','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('6','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('7','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('8','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('9','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('10','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('11','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('12','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('13','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('14','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('15','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('16','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('17','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('18','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('19','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('20','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('21','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('22','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('23','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('24','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('30','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('31','2');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('1','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('2','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('3','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('4','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('5','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('6','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('8','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('10','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('11','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('13','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('14','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('15','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('16','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('17','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('18','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('19','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('20','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('21','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('22','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('23','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('24','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('26','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('29','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('30','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('31','3');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('3','1');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('6','1');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('7','1');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('8','1');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('9','1');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('12','1');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('15','1');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('23','1');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('24','1');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('30','1');	
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('4','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('6','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('7','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('8','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('9','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('10','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('11','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('12','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('18','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('22','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('23','4');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('3','5');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('9','5');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('22','5');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('24','5');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('12','6');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('25','7');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('27','7');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('28','7');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('25','8');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('27','8');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('28','8');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('25','9');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('25','10');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('26','10');
insert into XWING.SHIP_ACTION (ship_type_id, action_type_id)
values ('29','10');

commit;
