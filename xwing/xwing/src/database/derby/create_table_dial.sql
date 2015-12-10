CREATE TABLE XWING.DIAL (
    id INT NOT NULL PRIMARY KEY,
    ship_type_id INT NOT NULL,
    maneuver_type_id INT NOT NULL,
    speed DECIMAL(1) NOT NULL);

ALTER TABLE XWING.DIAL 
ADD CONSTRAINT FK_DIAL_SHIP_TYPE_ID FOREIGN KEY (ship_type_id) REFERENCES XWING.SHIP_TYPE (id);
ALTER TABLE XWING.DIAL 
ADD CONSTRAINT FK_DIAL_MANEUVER_TYPE_ID FOREIGN KEY (maneuver_type_id) REFERENCES XWING.MANEUVER_TYPE (id);

insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  1, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 3, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 12, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 15, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 5, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  2, 8, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 1, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 16, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 1, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 10, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 13, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  3, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 3, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 6, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 9, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 16, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 12, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  4, 15, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 5, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  5, 8, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 2, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 5, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  6, 8, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 2, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  7, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 2, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  8, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 2, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 16, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 1, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 10, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 13, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  9, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 16, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 12, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 15, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 5, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 3, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  10, 8, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 1, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 1, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 12, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 15, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 12, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 5, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 8, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  11, 15, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  12, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  13, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  14, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  15, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 3, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 6, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 9, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  16, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 6, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 9, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 12, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 15, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  17, 17, 0 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  18, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 5, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 2, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  19, 8, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 3, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 12, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 15, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 5, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  20, 8, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 5, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  21, 8, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 18, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 19, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 8, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  22, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 16, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  23, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 16, 5 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 18, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 4, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 1, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 7, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 19, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 4, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 7, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 11, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  24, 14, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 2, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 16, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 11, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 5, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 8, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 14, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 16, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  30, 7, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 3, 4 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 6, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 2, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 9, 3 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 11, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 5, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 1, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 8, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 14, 2 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 4, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 1, 1 from XWING.DIAL;
insert into XWING.DIAL (ID, SHIP_TYPE_ID, MANEUVER_TYPE_ID, SPEED)
select count('x') + 1,  31, 7, 1 from XWING.DIAL;

commit;
