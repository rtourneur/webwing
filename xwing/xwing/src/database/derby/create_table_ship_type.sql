CREATE TABLE XWING.SHIP_TYPE (
    id INT NOT NULL generated by default as identity PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    primary_weapon DECIMAL(1) NOT NULL,
    agility DECIMAL(1) NOT NULL,
    hull DECIMAL(2) NOT NULL,
    shield DECIMAL(1) NOT NULL,
    energy DECIMAL(1) NOT NULL,
    ship_size_id INT NOT NULL,
    icon VARCHAR(30) NOT NULL);

ALTER TABLE XWING.SHIP_TYPE 
ADD CONSTRAINT FK_SHIP_TYPE_SHIP_SIZE_ID FOREIGN KEY (ship_size_id) REFERENCES XWING.SHIP_SIZE (id);

insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 1,'X-Wing', 3, 2, 3, 2, 0,  1,'sil_X-wing.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 2,'Y-Wing', 2, 1, 5, 3, 0,  1,'sil_Y-wing.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 3,'A-Wing', 2, 3, 2, 2, 0,  1,'sil_A-wing.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 4,'B-Wing', 3, 1, 3, 5, 0,  1,'sil_B-wing.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 5,'Z-95', 2, 2, 2, 2, 0,  1,'sil_Z-95 Headhunter.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 6,'E-Wing', 3, 3, 2, 3, 0,  1,'sil_E-wing.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 7,'Chasseur TIE', 2, 3, 3, 0, 0,  1,'sil_TIE Fighter.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 8,'TIE Advanced', 2, 3, 3, 2, 0,  1,'sil_TIE Advanced.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 9,'Intercepteur TIE', 3, 3, 3, 0, 0,  1,'sil_TIE Interceptor.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 10,'Bombardier TIE', 2, 2, 6, 0, 0,  1,'sil_TIE Bomber.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 11,'Défenseur TIE', 3, 3, 3, 3, 0,  1,'sil_TIE Defender.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 12,'TIE Fantôme', 4, 2, 2, 2, 0,  1,'sil_TIE Phantom.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 13,'YT-1300', 2, 1, 6, 4, 0,  2,'sil_YT-1300.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 14,'Faucon Millenium', 3, 1, 8, 5, 0,  2,'sil_YT-1300.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 15,'Firespray-31', 3, 2, 6, 4, 0,  2,'sil_Firespray.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 16,'HWK-290', 1, 2, 4, 1, 0,  1,'sil_HWK-290.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 17,'Navette Lambda', 3, 1, 5, 5, 0,  2,'sil_Lambda-Class Shuttle.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 18,'YT-2400', 2, 2, 5, 5, 0,  2,'sil_YT-2400.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 19,'VT-49 Décimateur', 3, 0, 12, 4, 0,  2,'sil_VT-49.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 20,'Y-Wing (scum)', 2, 1, 5, 3, 0,  1,'sil_Y-wing.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 21,'Z-95 (scum)', 2, 2, 2, 2, 0,  1,'sil_Z-95 Headhunter.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 22,'StarViper', 3, 3, 4, 1, 0,  1,'sil_StarViper.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 23,'Intercepteur M3-A', 2, 3, 2, 1, 0,  1,'sil_M3-A.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 24,'IG-2000', 3, 3, 4, 4, 0,  2,'sil_Aggressor.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 25,'GR-75', 0, 0, 8, 4, 4,  3,'sil_GR-75.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 26,'CR-90 proue', 4, 0, 8, 5, 0,  3,'sil_CR90.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 27,'CR-90 poupe', 0, 0, 8, 3, 5,  3,'sil_CR90.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 28,'Raider Impérial proue', 4, 0, 8, 6, 0,  3,'sil_Raider-class corvette.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 29,'Raider Impérial poupe', 0, 0, 8, 4, 6,  3,'sil_Raider-class corvette.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 30,'Firespray-31 (scum)', 3, 2, 6, 4, 0,  2,'sil_Firespray.png');
insert into XWING.SHIP_TYPE (id, name, primary_weapon, agility, hull, shield, energy, ship_size_id,icon)
values ( 31,'HWK-290 (scum)', 1, 2, 4, 1, 0,  1,'sil_HWK-290.png');

commit;