CREATE TABLE XWING.UPGRADE_EXPANSION (
	id INT NOT NULL PRIMARY KEY,
	upgrade_id INT NOT NULL,
	expansion_id INT NOT NULL,
	quantity INT(1) NOT NULL);

ALTER TABLE XWING.UPGRADE_EXPANSION 
ADD CONSTRAINT FK_UPGRADE_EXPANSION_UPGRADE_ID FOREIGN KEY (upgrade_id) REFERENCES XWING.UPGRADE (id);
ALTER TABLE XWING.UPGRADE_EXPANSION 
ADD CONSTRAINT FK_UPGRADE_EXPANSION_EXPANSION_ID FOREIGN KEY (expansion_id) REFERENCES XWING.EXPANSION (id);

insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '1', ID, '1','1' from XWING.UPGRADE where NAME = 'Adresse au tir' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '2', ID, '1','1' from XWING.UPGRADE where NAME = 'Détermination' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '3', ID, '1','1' from XWING.UPGRADE where NAME = 'R2-D2' and UPGRADE_TYPE_ID = '2';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '4', ID, '1','1' from XWING.UPGRADE where NAME = 'R2-F2' and UPGRADE_TYPE_ID = '2';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '5', ID, '1','1' from XWING.UPGRADE where NAME = 'Torpilles à protons' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '6', ID, '2','1' from XWING.UPGRADE where NAME = 'Adresse au tir' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '7', ID, '2','1' from XWING.UPGRADE where NAME = 'As de l''espace' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '8', ID, '2','1' from XWING.UPGRADE where NAME = 'R5-K6' and UPGRADE_TYPE_ID = '2';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '9', ID, '2','1' from XWING.UPGRADE where NAME = 'Astromech R5' and UPGRADE_TYPE_ID = '2';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '10', ID, '2','1' from XWING.UPGRADE where NAME = 'Torpilles à protons' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '11', ID, '4','1' from XWING.UPGRADE where NAME = 'R5-D8' and UPGRADE_TYPE_ID = '2';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '12', ID, '4','1' from XWING.UPGRADE where NAME = 'Astromech R2' and UPGRADE_TYPE_ID = '2';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '13', ID, '4','2' from XWING.UPGRADE where NAME = 'Torpilles à protons' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '14', ID, '4','1' from XWING.UPGRADE where NAME = 'Tourelles à canons ioniques' and UPGRADE_TYPE_ID = '7';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '15', ID, '3','1' from XWING.UPGRADE where NAME = 'Tactique de nuée' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '16', ID, '3','1' from XWING.UPGRADE where NAME = 'Détermination' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '17', ID, '5','1' from XWING.UPGRADE where NAME = 'As de l''espace' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '18', ID, '5','1' from XWING.UPGRADE where NAME = 'Chef d''escouade' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '19', ID, '5','1' from XWING.UPGRADE where NAME = 'Tactique de nuée' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '20', ID, '5','1' from XWING.UPGRADE where NAME = 'Missiles à concussion' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '21', ID, '5','1' from XWING.UPGRADE where NAME = 'Missiles groupés' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '22', ID, '8','1' from XWING.UPGRADE where NAME = 'Repousser les limites' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '23', ID, '8','1' from XWING.UPGRADE where NAME = 'Tireur d''élite' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '24', ID, '8','1' from XWING.UPGRADE where NAME = 'Missiles à concussion' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '25', ID, '8','1' from XWING.UPGRADE where NAME = 'Missiles à tête chercheuse' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '26', ID, '8','1' from XWING.UPGRADE where NAME = 'Missiles groupés' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '27', ID, '9','1' from XWING.UPGRADE where NAME = 'Casse-cou' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '28', ID, '9','1' from XWING.UPGRADE where NAME = 'Insaissisable' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '29', ID, '6','1' from XWING.UPGRADE where NAME = 'Insaissisable' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '30', ID, '6','1' from XWING.UPGRADE where NAME = 'Instinct de vétéran' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '31', ID, '6','1' from XWING.UPGRADE where NAME = 'Je les attire' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '32', ID, '6','1' from XWING.UPGRADE where NAME = 'Luke Skywalker' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '33', ID, '6','1' from XWING.UPGRADE where NAME = 'Chewbacca' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '34', ID, '6','1' from XWING.UPGRADE where NAME = 'Ingénieur en armement' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '35', ID, '6','1' from XWING.UPGRADE where NAME = 'Nien Nunb' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '36', ID, '6','1' from XWING.UPGRADE where NAME = 'Missiles à concussion' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '37', ID, '6','1' from XWING.UPGRADE where NAME = 'Missiles d''assaut' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '38', ID, '6','2' from XWING.UPGRADE where NAME = 'Boucliers améliorés' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '39', ID, '6','2' from XWING.UPGRADE where NAME = 'Moteurs améliorés' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '40', ID, '6','1' from XWING.UPGRADE where NAME = 'Faucon Millenium' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '41', ID, '7','1' from XWING.UPGRADE where NAME = 'Instinct de vétéran' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '42', ID, '7','1' from XWING.UPGRADE where NAME = 'Prise de risque' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '43', ID, '7','1' from XWING.UPGRADE where NAME = 'Canon ionique' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '44', ID, '7','1' from XWING.UPGRADE where NAME = 'Canon laser lourd' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '45', ID, '7','1' from XWING.UPGRADE where NAME = 'Canonnier' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '46', ID, '7','1' from XWING.UPGRADE where NAME = 'Copilote mercenaire' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '47', ID, '7','1' from XWING.UPGRADE where NAME = 'Missiles à tête chercheuse' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '48', ID, '7','1' from XWING.UPGRADE where NAME = 'Missiles d''assaut' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '49', ID, '7','1' from XWING.UPGRADE where NAME = 'Charges sismiques' and UPGRADE_TYPE_ID = '6';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '50', ID, '7','1' from XWING.UPGRADE where NAME = 'Mines de proximité' and UPGRADE_TYPE_ID = '6';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '51', ID, '7','2' from XWING.UPGRADE where NAME = 'Système d''occultation' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '52', ID, '7','1' from XWING.UPGRADE where NAME = 'Slave-1' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '53', ID, '11','1' from XWING.UPGRADE where NAME = 'Autoblaster' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '54', ID, '11','1' from XWING.UPGRADE where NAME = 'Canon ionique' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '55', ID, '11','1' from XWING.UPGRADE where NAME = 'Système de commande de tir' and UPGRADE_TYPE_ID = '10';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '56', ID, '11','1' from XWING.UPGRADE where NAME = 'Torpilles à protons' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '57', ID, '11','1' from XWING.UPGRADE where NAME = 'Torpilles à protons avancées' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '58', ID, '12','1' from XWING.UPGRADE where NAME = 'Montée d''adrénaline' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '59', ID, '12','1' from XWING.UPGRADE where NAME = 'Bombes à protons' and UPGRADE_TYPE_ID = '6';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '60', ID, '12','1' from XWING.UPGRADE where NAME = 'Charges sismiques' and UPGRADE_TYPE_ID = '6';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '61', ID, '12','1' from XWING.UPGRADE where NAME = 'Missiles d''assaut' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '62', ID, '12','1' from XWING.UPGRADE where NAME = 'Torpilles à protons avancées' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '63', ID, '10','1' from XWING.UPGRADE where NAME = 'Agent de renseignement' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '64', ID, '10','1' from XWING.UPGRADE where NAME = 'Officier en reconnaissance' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '65', ID, '10','1' from XWING.UPGRADE where NAME = 'Saboteur' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '66', ID, '10','1' from XWING.UPGRADE where NAME = 'Tourelles à canons ioniques' and UPGRADE_TYPE_ID = '7';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '67', ID, '10','1' from XWING.UPGRADE where NAME = 'Tourelles blaster' and UPGRADE_TYPE_ID = '7';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '68', ID, '10','1' from XWING.UPGRADE where NAME = 'Moldy Crow' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '69', ID, '13','1' from XWING.UPGRADE where NAME = 'Canon laser lourd' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '70', ID, '13','1' from XWING.UPGRADE where NAME = 'Dark Vador' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '71', ID, '13','1' from XWING.UPGRADE where NAME = 'Navigateur' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '72', ID, '13','1' from XWING.UPGRADE where NAME = 'Pilote instructeur' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '73', ID, '13','1' from XWING.UPGRADE where NAME = 'Prisonnier rebelle' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '74', ID, '13','1' from XWING.UPGRADE where NAME = 'Brouilleur de senseurs' and UPGRADE_TYPE_ID = '10';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '75', ID, '13','1' from XWING.UPGRADE where NAME = 'Senseurs avancés' and UPGRADE_TYPE_ID = '10';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '76', ID, '13','2' from XWING.UPGRADE where NAME = 'Lasers antipoursuite' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '77', ID, '13','1' from XWING.UPGRADE where NAME = 'ST-321' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '78', ID, '18','1' from XWING.UPGRADE where NAME = 'Manoeuvre improbable' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '79', ID, '18','1' from XWING.UPGRADE where NAME = 'R7-T1' and UPGRADE_TYPE_ID = '2';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '80', ID, '18','1' from XWING.UPGRADE where NAME = 'Astromech R7' and UPGRADE_TYPE_ID = '2';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '81', ID, '18','1' from XWING.UPGRADE where NAME = 'Senseurs avancés' and UPGRADE_TYPE_ID = '10';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '82', ID, '18','1' from XWING.UPGRADE where NAME = 'Torpilles fléchettes' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '83', ID, '16','1' from XWING.UPGRADE where NAME = 'Leurre' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '84', ID, '16','1' from XWING.UPGRADE where NAME = 'Ailier' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '85', ID, '16','1' from XWING.UPGRADE where NAME = 'Missiles d''assaut' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '86', ID, '16','1' from XWING.UPGRADE where NAME = 'Missiles à impulsion ionique' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '87', ID, '16','1' from XWING.UPGRADE where NAME = 'Munitions à sureté intégrée' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '88', ID, '17','1' from XWING.UPGRADE where NAME = 'Manoeuvre improbable' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '89', ID, '17','1' from XWING.UPGRADE where NAME = 'Prédateur' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '90', ID, '17','1' from XWING.UPGRADE where NAME = 'Canon ionique' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '91', ID, '17','1' from XWING.UPGRADE where NAME = 'Missiles à impulsion ionique' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '92', ID, '17','1' from XWING.UPGRADE where NAME = 'Munitions à sureté intégrée' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '93', ID, '19','1' from XWING.UPGRADE where NAME = 'Système de commande de tir' and UPGRADE_TYPE_ID = '10';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '94', ID, '19','1' from XWING.UPGRADE where NAME = 'Officier en reconnaissance' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '95', ID, '19','1' from XWING.UPGRADE where NAME = 'Tacticien' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '96', ID, '19','1' from XWING.UPGRADE where NAME = 'Système d''occultation avancé' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '97', ID, '19','1' from XWING.UPGRADE where NAME = 'Accélérateur de particules de Stygium' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '98', ID, '14','2' from XWING.UPGRADE where NAME = 'Opportuniste' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '99', ID, '14','2' from XWING.UPGRADE where NAME = 'Repousser les limites' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '100', ID, '14','2' from XWING.UPGRADE where NAME = 'Boucliers améliorés' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '101', ID, '14','2' from XWING.UPGRADE where NAME = 'Coque améliorée' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '102', ID, '14','2' from XWING.UPGRADE where NAME = 'Ordinateur de visée' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '103', ID, '14','2' from XWING.UPGRADE where NAME = 'TIE de la garde royale' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '104', ID, '15','1' from XWING.UPGRADE where NAME = 'Kyle Katarn' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '105', ID, '15','1' from XWING.UPGRADE where NAME = 'Jan Ors' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '106', ID, '15','3' from XWING.UPGRADE where NAME = 'Radoub à Chardaan' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '107', ID, '15','2' from XWING.UPGRADE where NAME = 'Roquettes à proton' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '108', ID, '15','2' from XWING.UPGRADE where NAME = 'Pilote d''essais sur A-wing' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '109', ID, '15','2' from XWING.UPGRADE where NAME = 'Radars améliorés' and UPGRADE_TYPE_ID = '10';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '110', ID, '15','2' from XWING.UPGRADE where NAME = 'B-wing/E2' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '111', ID, '20','1' from XWING.UPGRADE where NAME = 'R5-P9' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '112', ID, '20','1' from XWING.UPGRADE where NAME = 'R3-A2' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '113', ID, '20','1' from XWING.UPGRADE where NAME = 'R2-D6' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '114', ID, '20','1' from XWING.UPGRADE where NAME = 'R4-D6' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '115', ID, '20','1' from XWING.UPGRADE where NAME = 'Jan Dodonna' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '116', ID, '20','1' from XWING.UPGRADE where NAME = 'Torynn Farr' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '117', ID, '20','1' from XWING.UPGRADE where NAME = 'Carlist Rieekan' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '118', ID, '20','1' from XWING.UPGRADE where NAME = 'Droïde de réparation WED-15' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '119', ID, '20','3' from XWING.UPGRADE where NAME = 'Torpilles fléchettes' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '120', ID, '20','1' from XWING.UPGRADE where NAME = 'Outils de slicer' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '121', ID, '20','1' from XWING.UPGRADE where NAME = 'Brouilleur de fréquence' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '122', ID, '20','1' from XWING.UPGRADE where NAME = 'Amplificateur comm' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '123', ID, '20','1' from XWING.UPGRADE where NAME = 'Projecteur de boucliers' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '124', ID, '20','1' from XWING.UPGRADE where NAME = 'Réserves de gaz Tibanna' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '125', ID, '20','1' from XWING.UPGRADE where NAME = 'Générateur de bouclier auxiliaire' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '126', ID, '20','1' from XWING.UPGRADE where NAME = 'Emetteur EM' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '127', ID, '20','1' from XWING.UPGRADE where NAME = 'Booster' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '128', ID, '20','1' from XWING.UPGRADE where NAME = 'Compartiments supplémentaires' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '129', ID, '20','1' from XWING.UPGRADE where NAME = 'Préparé pour le combat' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '130', ID, '20','1' from XWING.UPGRADE where NAME = 'Bright Hope' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '131', ID, '20','1' from XWING.UPGRADE where NAME = 'Quantum Storm' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '132', ID, '20','1' from XWING.UPGRADE where NAME = 'Duty Free' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '133', ID, '21','1' from XWING.UPGRADE where NAME = 'Raymus Antilles' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '134', ID, '21','1' from XWING.UPGRADE where NAME = 'Leia Organa' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '135', ID, '21','1' from XWING.UPGRADE where NAME = 'R2-D2' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '136', ID, '21','1' from XWING.UPGRADE where NAME = 'Coordinateur de visée' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '137', ID, '21','1' from XWING.UPGRADE where NAME = 'Z-6PO' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '138', ID, '21','1' from XWING.UPGRADE where NAME = 'Han Solo' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '139', ID, '21','3' from XWING.UPGRADE where NAME = 'Turbolaser' and UPGRADE_TYPE_ID = '15';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '140', ID, '21','3' from XWING.UPGRADE where NAME = 'Canons quadrilaser' and UPGRADE_TYPE_ID = '15';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '141', ID, '21','1' from XWING.UPGRADE where NAME = 'Equipe de mécaniciens' and UPGRADE_TYPE_ID = '16';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '142', ID, '21','1' from XWING.UPGRADE where NAME = 'Equipe d''artilleurs' and UPGRADE_TYPE_ID = '16';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '143', ID, '21','1' from XWING.UPGRADE where NAME = 'Equipe des senseurs' and UPGRADE_TYPE_ID = '16';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '144', ID, '21','1' from XWING.UPGRADE where NAME = 'Amplificateur comm' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '145', ID, '21','1' from XWING.UPGRADE where NAME = 'Réacteur à ionisation' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '146', ID, '21','1' from XWING.UPGRADE where NAME = 'Réserves de gaz Tibanna' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '147', ID, '21','1' from XWING.UPGRADE where NAME = 'Générateur de bouclier auxiliaire' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '148', ID, '21','1' from XWING.UPGRADE where NAME = 'Booster' and UPGRADE_TYPE_ID = '14';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '149', ID, '21','1' from XWING.UPGRADE where NAME = 'Tantive IV' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '150', ID, '21','1' from XWING.UPGRADE where NAME = 'Dodonna''s Pride' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '151', ID, '21','1' from XWING.UPGRADE where NAME = 'Jaina''s Light' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '152', ID, '22','1' from XWING.UPGRADE where NAME = 'Loup solitaire' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '153', ID, '22','1' from XWING.UPGRADE where NAME = 'Restez en ligne' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '154', ID, '22','1' from XWING.UPGRADE where NAME = 'Canon laser lourd' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '155', ID, '22','1' from XWING.UPGRADE where NAME = 'Canonnier' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '156', ID, '22','1' from XWING.UPGRADE where NAME = 'Lando Calrissian' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '157', ID, '22','1' from XWING.UPGRADE where NAME = 'Dash Rendar' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '158', ID, '22','1' from XWING.UPGRADE where NAME = '"Leebo"' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '159', ID, '22','1' from XWING.UPGRADE where NAME = 'Copilote mercenaire' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '160', ID, '22','1' from XWING.UPGRADE where NAME = 'Roquettes à proton' and UPGRADE_TYPE_ID = '5';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '161', ID, '22','2' from XWING.UPGRADE where NAME = 'Contres-mesures' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '162', ID, '22','1' from XWING.UPGRADE where NAME = 'Interface expérimentale' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '163', ID, '22','1' from XWING.UPGRADE where NAME = 'Outrider' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '164', ID, '23','2' from XWING.UPGRADE where NAME = 'Impitoyable' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '165', ID, '23','1' from XWING.UPGRADE where NAME = 'Intimidation' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '166', ID, '23','2' from XWING.UPGRADE where NAME = 'Torpilles ioniques' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '167', ID, '23','1' from XWING.UPGRADE where NAME = 'Bombes à protons' and UPGRADE_TYPE_ID = '6';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '168', ID, '23','1' from XWING.UPGRADE where NAME = 'Ysanne Isard' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '169', ID, '23','1' from XWING.UPGRADE where NAME = 'Officier de la flotte' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '170', ID, '23','1' from XWING.UPGRADE where NAME = 'Moff Jerjerrod' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '171', ID, '23','1' from XWING.UPGRADE where NAME = 'Mara Jade' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '172', ID, '23','2' from XWING.UPGRADE where NAME = 'Brouilleur tactique' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '173', ID, '23','1' from XWING.UPGRADE where NAME = 'Dauntless' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '174', ID, '24','1' from XWING.UPGRADE where NAME = 'Droïde de sécurité K4' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '175', ID, '24','1' from XWING.UPGRADE where NAME = 'Technicien hors la loi' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '176', ID, '24','1' from XWING.UPGRADE where NAME = 'Greedo' and UPGRADE_TYPE_ID = '9';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '177', ID, '24','1' from XWING.UPGRADE where NAME = 'R4-B11' and UPGRADE_TYPE_ID = '3';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '178', ID, '24','2' from XWING.UPGRADE where NAME = 'Agromech R4' and UPGRADE_TYPE_ID = '3';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '179', ID, '24','2' from XWING.UPGRADE where NAME = 'Astromech Récupéré' and UPGRADE_TYPE_ID = '3';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '180', ID, '24','2' from XWING.UPGRADE where NAME = 'Astromech Déglingué' and UPGRADE_TYPE_ID = '3';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '181', ID, '24','1' from XWING.UPGRADE where NAME = '"Génie"' and UPGRADE_TYPE_ID = '3';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '182', ID, '24','2' from XWING.UPGRADE where NAME = 'Tourelle autoblaster' and UPGRADE_TYPE_ID = '7';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '183', ID, '24','2' from XWING.UPGRADE where NAME = 'Chargement de bombes' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '184', ID, '24','1' from XWING.UPGRADE where NAME = 'Blaster "De la Mort"' and UPGRADE_TYPE_ID = '11';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '185', ID, '24','1' from XWING.UPGRADE where NAME = 'Andrasta' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '186', ID, '24','2' from XWING.UPGRADE where NAME = 'Y-wing BLT-A4' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '187', ID, '25','1' from XWING.UPGRADE where NAME = 'Torpilles ioniques' and UPGRADE_TYPE_ID = '4';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '188', ID, '25','1' from XWING.UPGRADE where NAME = 'Calcul' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '189', ID, '25','1' from XWING.UPGRADE where NAME = 'Garde du corps' and UPGRADE_TYPE_ID = '1';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '190', ID, '25','1' from XWING.UPGRADE where NAME = 'Correcteur de Précision' and UPGRADE_TYPE_ID = '10';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '191', ID, '25','1' from XWING.UPGRADE where NAME = 'Amortisseurs inertiels' and UPGRADE_TYPE_ID = '11';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '192', ID, '25','1' from XWING.UPGRADE where NAME = 'Coque améliorée' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '193', ID, '25','2' from XWING.UPGRADE where NAME = 'Autopropulseurs' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '194', ID, '25','1' from XWING.UPGRADE where NAME = 'Virago' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '195', ID, '26','1' from XWING.UPGRADE where NAME = 'Canon "lacérateur"' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '196', ID, '26','1' from XWING.UPGRADE where NAME = 'Canon ionique' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '197', ID, '26','1' from XWING.UPGRADE where NAME = 'Canon à fléchettes' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '198', ID, '26','1' from XWING.UPGRADE where NAME = 'Système d''occultation' and UPGRADE_TYPE_ID = '12';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '199', ID, '26','1' from XWING.UPGRADE where NAME = 'Intercepteur "Scyk lourd"' and UPGRADE_TYPE_ID = '13';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '200', ID, '27','1' from XWING.UPGRADE where NAME = 'Correcteur de Précision' and UPGRADE_TYPE_ID = '10';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '201', ID, '27','1' from XWING.UPGRADE where NAME = 'Autoblaster' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '202', ID, '27','1' from XWING.UPGRADE where NAME = 'Canon "lacérateur"' and UPGRADE_TYPE_ID = '8';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '203', ID, '27','1' from XWING.UPGRADE where NAME = 'Mines de proximité' and UPGRADE_TYPE_ID = '6';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '204', ID, '27','1' from XWING.UPGRADE where NAME = 'Charges sismiques' and UPGRADE_TYPE_ID = '6';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '205', ID, '27','1' from XWING.UPGRADE where NAME = 'Blaster "De la Mort"' and UPGRADE_TYPE_ID = '11';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '206', ID, '27','1' from XWING.UPGRADE where NAME = 'Salve Automatique' and UPGRADE_TYPE_ID = '11';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '207', ID, '27','1' from XWING.UPGRADE where NAME = 'Dispositif de Retour' and UPGRADE_TYPE_ID = '11';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '208', ID, '27','1' from XWING.UPGRADE where NAME = 'Amortisseurs inertiels' and UPGRADE_TYPE_ID = '11';
insert into XWING.UPGRADE_EXPANSION (ID, UPGRADE_ID, EXPANSION_ID, QUANTITY)
select '209', ID, '27','1' from XWING.UPGRADE where NAME = 'IG-2000' and UPGRADE_TYPE_ID = '13';

commit;
