CREATE TABLE XWING.MANEUVER_TYPE (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(255),
    difficulty VARCHAR(5),
    icon VARCHAR(30) NOT NULL);

insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 1,'Straight','Straight Green','Green','icone_straight-g.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 2,'Straight','Straight White','White','icone_straight.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 3,'Straight','Straight Red','Red','icone_straight-r.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 4,'Bank Left','Bank Left Green','Green','icone_bankleft-g.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 5,'Bank Left','Bank Left White','White','icone_bankleft.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 6,'Bank Left','Bank Left Red','Red','icone_bankleft-r.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 7,'Bank Right','Bank Right Green','Green','icone_bankright-g.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 8,'Bank Right','Bank Right White','White','icone_bankright.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 9,'Bank Right','Bank Right Red','Red','icone_bankright-r.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 10,'Turn Left','Turn Left Green','Green','icone_turnleft-g.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 11,'Turn Left','Turn Left White','White','icone_turnleft.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 12,'Turn Left','Turn Left Red','Red','icone_turnleft-r.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 13,'Turn Right','Turn Right Green','Green','icone_turnright-g.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 14,'Turn Right','Turn Right White','White','icone_turnright.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 15,'Turn Right','Turn Right Red','Red','icone_turnright-r.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 16,'Koiogran Turn','Koiogran Turn Red','Red','icone_koiogran-r.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 17,'Stationary','Stationary Red','Red','icone_stationary-r.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 18,'Segnors Left','Segnors Left Red','Red','icone_segnorsleft-r.png');
insert into XWING.MANEUVER_TYPE (ID,NAME,DESCRIPTION,DIFFICULTY,ICON)
values ( 19,'Segnors Right','Segnors Right Red','Red','icone_segnorsright-r.png');

commit;
