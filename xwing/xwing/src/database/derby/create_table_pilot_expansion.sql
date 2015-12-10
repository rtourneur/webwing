CREATE TABLE XWING.PILOT_EXPANSION (
	id INT NOT NULL PRIMARY KEY,
	pilot_id INT NOT NULL,
	expansion_id INT NOT NULL,
	quantity DECIMAL(1) NOT NULL);

ALTER TABLE XWING.PILOT_EXPANSION 
ADD CONSTRAINT FK_PILOT_EXPANSION_PILOT_ID FOREIGN KEY (pilot_id) REFERENCES XWING.PILOT (id);
ALTER TABLE XWING.PILOT_EXPANSION 
ADD CONSTRAINT FK_PILOT_EXPANSION_EXPANSION_ID FOREIGN KEY (expansion_id) REFERENCES XWING.EXPANSION (id);

insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  1, ID,  1, 1 from XWING.PILOT where NAME = 'Luke Skywalker' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  2, ID,  1, 1 from XWING.PILOT where NAME = 'Biggs Darklighter' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  3, ID,  1, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Rouge' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  4, ID,  1, 1 from XWING.PILOT where NAME = 'Pilote débutant' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  5, ID,  1, 1 from XWING.PILOT where NAME = 'Mauler Mithel' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  6, ID,  1, 1 from XWING.PILOT where NAME = 'Dark Curse' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  7, ID,  1, 1 from XWING.PILOT where NAME = 'Night Beast' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  8, ID,  1, 2 from XWING.PILOT where NAME = 'Pilote de l''escadron Noir' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  9, ID,  1, 2 from XWING.PILOT where NAME = 'Pilote de l''escadron Obsidian' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  10, ID,  1, 2 from XWING.PILOT where NAME = 'Pilote de l''académie' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  11, ID,  2, 1 from XWING.PILOT where NAME = 'Wedge Antilles' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  12, ID,  2, 1 from XWING.PILOT where NAME = 'Garven Dreis' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  13, ID,  2, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Rouge' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  14, ID,  2, 1 from XWING.PILOT where NAME = 'Pilote débutant' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  15, ID,  4, 1 from XWING.PILOT where NAME = 'Horton Salm' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  16, ID,  4, 1 from XWING.PILOT where NAME = 'Dutch Vander' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  17, ID,  4, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Gris' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  18, ID,  4, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Or' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  19, ID,  3, 1 from XWING.PILOT where NAME = 'Howlrunner' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  20, ID,  3, 1 from XWING.PILOT where NAME = 'Backstabber' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  21, ID,  3, 1 from XWING.PILOT where NAME = 'Winged Gundark' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  22, ID,  3, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Noir' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  23, ID,  3, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Obsidian' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  24, ID,  3, 1 from XWING.PILOT where NAME = 'Pilote de l''académie' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  25, ID,  5, 1 from XWING.PILOT where NAME = 'Dark Vador' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  26, ID,  5, 1 from XWING.PILOT where NAME = 'Maarek Stele' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  27, ID,  5, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Orage' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  28, ID,  5, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Tempête' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  29, ID,  8, 1 from XWING.PILOT where NAME = 'Tycho Celchu' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  30, ID,  8, 1 from XWING.PILOT where NAME = 'Arvel Crynyd' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  31, ID,  8, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Vert' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select  32, ID,  8, 1 from XWING.PILOT where NAME = 'Pilote sur prototype' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '33', ID,  9, 1 from XWING.PILOT where NAME = 'Soontir Fel' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '34', ID,  9, 1 from XWING.PILOT where NAME = 'Turr Phennir' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '35', ID,  9, 1 from XWING.PILOT where NAME = 'Colère de Fel' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '36', ID,  9, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Sabre' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '37', ID,  9, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Avenger' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '38', ID,  9, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Alpha' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '39', ID,  6, 1 from XWING.PILOT where NAME = 'Contrebandier de la Bordure extérieure' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '40', ID,  6, 1 from XWING.PILOT where NAME = 'Han Solo' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '41', ID,  6, 1 from XWING.PILOT where NAME = 'Lando Calrissian' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '42', ID,  6, 1 from XWING.PILOT where NAME = 'Chewbacca' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '43', ID,  7, 1 from XWING.PILOT where NAME = 'Boba Fett' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '44', ID,  7, 1 from XWING.PILOT where NAME = 'Kath Scarlet' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '45', ID,  7, 1 from XWING.PILOT where NAME = 'Krassis Trelix' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '46', ID,  7, 1 from XWING.PILOT where NAME = 'Chasseur de primes' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '47', ID,  11, 1 from XWING.PILOT where NAME = 'Ten Numb' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '48', ID,  11, 1 from XWING.PILOT where NAME = 'Ibtisam' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '49', ID,  11, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Dague' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '50', ID,  11, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Bleu' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '51', ID,  12, 1 from XWING.PILOT where NAME = 'Major Rhymer' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '52', ID,  12, 1 from XWING.PILOT where NAME = 'Capitaine Jonus' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '53', ID,  12, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Gamma' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '54', ID,  12, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Cimeterre' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '55', ID,  10, 1 from XWING.PILOT where NAME = 'Jan Ors' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '56', ID,  10, 1 from XWING.PILOT where NAME = 'Kyle Katarn' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '57', ID,  10, 1 from XWING.PILOT where NAME = 'Roark Garnet' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '58', ID,  10, 1 from XWING.PILOT where NAME = 'Agent rebelle' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '59', ID,  13, 1 from XWING.PILOT where NAME = 'Capitaine Kagi' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '60', ID,  13, 1 from XWING.PILOT where NAME = 'Colonel Jendon' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '61', ID,  13, 1 from XWING.PILOT where NAME = 'Capitaine Yorr' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '62', ID,  13, 1 from XWING.PILOT where NAME = 'Pilote du Groupe Omicron' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '63', ID,  18, 1 from XWING.PILOT where NAME = 'Corran Horn' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '64', ID,  18, 1 from XWING.PILOT where NAME = 'Ethan A''baht' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '65', ID,  18, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Lune Noire' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '66', ID,  18, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Valet' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '67', ID,  16, 1 from XWING.PILOT where NAME = 'Airen Cracken' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '68', ID,  16, 1 from XWING.PILOT where NAME = 'Lieutenant Blount' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '69', ID,  16, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Tala' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '70', ID,  16, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Bandit' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '71', ID,  17, 1 from XWING.PILOT where NAME = 'Rexler Brath' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '72', ID,  17, 1 from XWING.PILOT where NAME = 'Colonel Vessery' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '73', ID,  17, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Onyx' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '74', ID,  17, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Delta' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '75', ID,  19, 1 from XWING.PILOT where NAME = 'Whisper' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '76', ID,  19, 1 from XWING.PILOT where NAME = 'Echo' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '77', ID,  19, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Ombre' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '78', ID,  19, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Sigma' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '79', ID,  14, 1 from XWING.PILOT where NAME = 'Carnor Jax' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '80', ID,  14, 1 from XWING.PILOT where NAME = 'Tetran Cowall' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '81', ID,  14, 1 from XWING.PILOT where NAME = 'Kir Kanos' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '82', ID,  14, 1 from XWING.PILOT where NAME = 'Lieutenant Lorrir' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '83', ID,  14, 2 from XWING.PILOT where NAME = 'Pilote de la Garde Royale' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '84', ID,  14, 2 from XWING.PILOT where NAME = 'Pilote de l''escadron Sabre' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '85', ID,  15, 1 from XWING.PILOT where NAME = 'Jake Farrell' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '86', ID,  15, 1 from XWING.PILOT where NAME = 'Gemmer Sojan' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '87', ID,  15, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Vert' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '88', ID,  15, 1 from XWING.PILOT where NAME = 'Pilote sur prototype' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '89', ID,  15, 1 from XWING.PILOT where NAME = 'Keyan Farlander' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '90', ID,  15, 1 from XWING.PILOT where NAME = 'Nera Dantels' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '91', ID,  15, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Dague' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '92', ID,  15, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Bleu' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '93', ID,  20, 1 from XWING.PILOT where NAME = 'Transport moyen GR-75' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '94', ID,  20, 1 from XWING.PILOT where NAME = 'Wes Janson' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '95', ID,  20, 1 from XWING.PILOT where NAME = 'Jek Porkins' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '96', ID,  20, 1 from XWING.PILOT where NAME = 'Hobbie Klivian' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '97', ID,  20, 1 from XWING.PILOT where NAME = 'Tarn Mison' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '98', ID,  20, 1 from XWING.PILOT where NAME = 'Pilote de l''escadron Rouge' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '99', ID,  20, 1 from XWING.PILOT where NAME = 'Pilote débutant' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '100', ID,  21, 1 from XWING.PILOT where NAME = 'CR90 Corvette (fore)' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '101', ID,  21, 1 from XWING.PILOT where NAME = 'CR90 Corvette (aft)' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '102', ID,  22, 1 from XWING.PILOT where NAME = 'Dash Rendar' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '103', ID,  22, 1 from XWING.PILOT where NAME = 'Leebo' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '104', ID,  22, 1 from XWING.PILOT where NAME = 'Eaden Vrill' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '105', ID,  22, 1 from XWING.PILOT where NAME = 'Frontalier de l''espace sauvage' and FACTION_ID =  1;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '106', ID,  23, 1 from XWING.PILOT where NAME = 'Contre-amiral Chiraneau' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '107', ID,  23, 1 from XWING.PILOT where NAME = 'Commandant Kenkirk' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '108', ID,  23, 1 from XWING.PILOT where NAME = 'Capitaine Oicunn' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '109', ID,  23, 1 from XWING.PILOT where NAME = 'Chef de patrouille' and FACTION_ID =  2;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '110', ID,  24, 1 from XWING.PILOT where NAME = 'N''dru Suhlak' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '111', ID,  24, 1 from XWING.PILOT where NAME = 'Kaa''to Leeachos' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '112', ID,  24, 2 from XWING.PILOT where NAME = 'Soldat du Soleil Noir' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '113', ID,  24, 2 from XWING.PILOT where NAME = 'Pirate Binayre' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '114', ID,  24, 1 from XWING.PILOT where NAME = 'Kavil' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '115', ID,  24, 1 from XWING.PILOT where NAME = 'Drea Renthal' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '116', ID,  24, 2 from XWING.PILOT where NAME = 'Soudard' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '117', ID,  24, 2 from XWING.PILOT where NAME = 'Malfrat' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '118', ID,  24, 1 from XWING.PILOT where NAME = 'Boba Fett' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '119', ID,  24, 1 from XWING.PILOT where NAME = 'Kath Scarlet' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '120', ID,  24, 1 from XWING.PILOT where NAME = 'Emon Azzameen' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '121', ID,  24, 1 from XWING.PILOT where NAME = 'Mercenaire Mandalorien' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '122', ID,  24, 1 from XWING.PILOT where NAME = 'Dace Bonearm' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '123', ID,  24, 1 from XWING.PILOT where NAME = 'Palob Codalhi' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '124', ID,  24, 1 from XWING.PILOT where NAME = 'Torkil Mux' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '125', ID,  24, 1 from XWING.PILOT where NAME = 'Trafiquant d''épice' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '126', ID,  25, 1 from XWING.PILOT where NAME = 'Prince Xizor' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '127', ID,  25, 1 from XWING.PILOT where NAME = 'Guri' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '128', ID,  25, 1 from XWING.PILOT where NAME = 'Vigo du Soleil Noir' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '129', ID,  25, 1 from XWING.PILOT where NAME = 'Homme de main du Soleil Noir' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '130', ID,  26, 1 from XWING.PILOT where NAME = 'Serissu' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '131', ID,  26, 1 from XWING.PILOT where NAME = 'Laetin A''shera' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '132', ID,  26, 1 from XWING.PILOT where NAME = 'Vétéran de Tansarri Point' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '133', ID,  26, 1 from XWING.PILOT where NAME = 'Astropilote du Cartel' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '134', ID,  27, 1 from XWING.PILOT where NAME = 'IG-88A' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '135', ID,  27, 1 from XWING.PILOT where NAME = 'IG-88B' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '136', ID,  27, 1 from XWING.PILOT where NAME = 'IG-88C' and FACTION_ID =  3;
insert into XWING.PILOT_EXPANSION (ID, PILOT_ID, EXPANSION_ID, QUANTITY)
select '137', ID,  27, 1 from XWING.PILOT where NAME = 'IG-88D' and FACTION_ID =  3;

commit;
