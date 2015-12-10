CREATE TABLE XWING.UPGRADE_TYPE (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(255),
    icon VARCHAR(30) NOT NULL);

insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (1, 'Pilote', 'Talent de pilote expérimenté', 'Card_Talents.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (2, 'Astromech', 'Droïde Astromech', 'Card_Astromech.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (3, 'Astromech déglingué', 'Droïde Astromech de récupération', 'Card_Salvaged.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (4, 'Torpilles', 'Torpilles', 'Card_Torpedoes.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (5, 'Missiles', 'Missiles', 'Card_Missiles.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (6, 'Bombes', 'Bombes', 'Card_Bombs.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (7, 'Tourelles', 'Tourelles', 'Card_Turret.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (8, 'Canons', 'Canons', 'Card_Cannons.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (9, 'Equipage', 'Membres d''équipage', 'Card_Crew.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (10, 'Systèmes', 'Systèmes de vaisseaux', 'Card_Systems.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (11, 'Illégale', 'Améliorations illégales', 'Card_Illicit.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (12, 'Modifications', 'Modifications de vaisseau', 'Card_Upgrades.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (13, 'Titres', 'Titres de vaisseau', 'Card_Title.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (14, 'Cargo', 'Cargo', 'Card_Cargo.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (15, 'Armement', 'Tourelles d''armement', 'Card_Hardpoint.png');
insert into XWING.UPGRADE_TYPE (id, name, description,icon)
values (16, 'Equipes', 'Equipes techniques', 'Card_Team.png');


commit;
