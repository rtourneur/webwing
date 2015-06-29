CREATE TABLE XWING.UPGRADE_EXPANSION (
	upgrade_id INT NOT NULL,
	expansion_id INT NOT NULL,
	quantity INT(1) NOT NULL,
	PRIMARY KEY (upgrade_id, expansion_id));

ALTER TABLE XWING.UPGRADE_EXPANSION 
ADD CONSTRAINT FK_UPGRADE_EXPANSION_UPGRADE_ID FOREIGN KEY (upgrade_id) REFERENCES XWING.UPGRADE (id);
ALTER TABLE XWING.UPGRADE_EXPANSION 
ADD CONSTRAINT FK_UPGRADE_EXPANSION_EXPANSION_ID FOREIGN KEY (expansion_id) REFERENCES XWING.EXPANSION (id);

insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.UPGRADE where NAME = 'Adresse au tir';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.UPGRADE where NAME = 'Détermination';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.UPGRADE where NAME = 'R2-D2';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.UPGRADE where NAME = 'R2-F2';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.UPGRADE where NAME = 'Torpilles à protons';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.UPGRADE where NAME = 'Adresse au tir';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.UPGRADE where NAME = 'As de l''espace';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.UPGRADE where NAME = 'R5-K6';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.UPGRADE where NAME = 'Astromech R5';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.UPGRADE where NAME = 'Torpilles à protons';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.UPGRADE where NAME = 'R5-D8';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.UPGRADE where NAME = 'Astromech R2';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '4','2' from XWING.UPGRADE where NAME = 'Torpilles à protons';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.UPGRADE where NAME = 'Tourelles à canons ioniques';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.UPGRADE where NAME = 'Tactique de nuée';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.UPGRADE where NAME = 'Détermination';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.UPGRADE where NAME = 'As de l''espace';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.UPGRADE where NAME = 'Chef d''escouade';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.UPGRADE where NAME = 'Tactique de nuée';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.UPGRADE where NAME = 'Missiles à concussion';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.UPGRADE where NAME = 'Missiles groupés';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '8','1' from XWING.UPGRADE where NAME = 'Repousser les limites';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '8','1' from XWING.UPGRADE where NAME = 'Tireur d''élite';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '8','1' from XWING.UPGRADE where NAME = 'Missiles à concussion';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '8','1' from XWING.UPGRADE where NAME = 'Missiles à tête chercheuse';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '8','1' from XWING.UPGRADE where NAME = 'Missiles groupés';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '9','1' from XWING.UPGRADE where NAME = 'Casse-cou';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '9','2' from XWING.UPGRADE where NAME = 'Insaissisable';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.UPGRADE where NAME = 'Instinct de vétéran';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.UPGRADE where NAME = 'Je les attire';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.UPGRADE where NAME = 'Luke Skywalker';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.UPGRADE where NAME = 'Chewbacca';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.UPGRADE where NAME = 'Ingénieur en armement';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.UPGRADE where NAME = 'Nien Nunb';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.UPGRADE where NAME = 'Missiles à concussion';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.UPGRADE where NAME = 'Missiles d''assaut';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','2' from XWING.UPGRADE where NAME = 'Boucliers améliorés';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','2' from XWING.UPGRADE where NAME = 'Moteurs améliorés';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.UPGRADE where NAME = 'Faucon Millenium';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Instinct de vétéran';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Prise de risque';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Canon ionique';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Canon laser lourd';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Canonnier';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Copilote mercenaire';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Missiles à tête chercheuse';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Missiles d''assaut';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Charges sismiques';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Mines de proximité';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','2' from XWING.UPGRADE where NAME = 'Système d''occultation';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.UPGRADE where NAME = 'Slave-1';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '11','1' from XWING.UPGRADE where NAME = 'Autoblaster';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '11','1' from XWING.UPGRADE where NAME = 'Canon ionique';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '11','1' from XWING.UPGRADE where NAME = 'Système de commande de tir';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '11','1' from XWING.UPGRADE where NAME = 'Torpilles à protons';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '11','1' from XWING.UPGRADE where NAME = 'Torpilles à protons avancées';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '12','1' from XWING.UPGRADE where NAME = 'Montée d''adrénaline';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '12','1' from XWING.UPGRADE where NAME = 'Bombes à protons';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '12','1' from XWING.UPGRADE where NAME = 'Charges sismiques';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '12','1' from XWING.UPGRADE where NAME = 'Missiles d''assaut';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '12','1' from XWING.UPGRADE where NAME = 'Torpilles à protons avancées';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.UPGRADE where NAME = 'Agent de renseignement';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.UPGRADE where NAME = 'Officier en reconnaissance';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.UPGRADE where NAME = 'Saboteur';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.UPGRADE where NAME = 'Tourelles à canons ioniques';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.UPGRADE where NAME = 'Tourelles blaster';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.UPGRADE where NAME = 'Moldy Crow';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.UPGRADE where NAME = 'Canon laser lourd';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.UPGRADE where NAME = 'Dark Vador';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.UPGRADE where NAME = 'Navigateur';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.UPGRADE where NAME = 'Pilote instructeur';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.UPGRADE where NAME = 'Prisonnier rebelle';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.UPGRADE where NAME = 'Brouilleur de senseurs';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.UPGRADE where NAME = 'Senseurs avancés';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '13','2' from XWING.UPGRADE where NAME = 'Lasers antipoursuite';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.UPGRADE where NAME = 'ST-321';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '18','1' from XWING.UPGRADE where NAME = 'Manœuvre improbable';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '18','1' from XWING.UPGRADE where NAME = 'R7-T1';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '18','1' from XWING.UPGRADE where NAME = 'Astromech R7';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '18','1' from XWING.UPGRADE where NAME = 'Senseurs avancés';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '18','1' from XWING.UPGRADE where NAME = 'Torpilles fléchettes';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '16','1' from XWING.UPGRADE where NAME = 'Leurre';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '16','1' from XWING.UPGRADE where NAME = 'Ailier';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '16','1' from XWING.UPGRADE where NAME = 'Missiles d''assaut';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '16','1' from XWING.UPGRADE where NAME = 'Missiles à impulsion ionique';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '16','1' from XWING.UPGRADE where NAME = 'Munitions à sureté intégrée';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '17','1' from XWING.UPGRADE where NAME = 'Manœuvre improbable';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '17','1' from XWING.UPGRADE where NAME = 'Prédateur';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '17','1' from XWING.UPGRADE where NAME = 'Canon ionique';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '17','1' from XWING.UPGRADE where NAME = 'Missiles à impulsion ionique';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '17','1' from XWING.UPGRADE where NAME = 'Munitions à sureté intégrée';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '19','1' from XWING.UPGRADE where NAME = 'Système de commande de tir';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '19','1' from XWING.UPGRADE where NAME = 'Officier en reconnaissance';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '19','1' from XWING.UPGRADE where NAME = 'Tacticien';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '19','1' from XWING.UPGRADE where NAME = 'Système d''occultation avancé';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '19','1' from XWING.UPGRADE where NAME = 'Accélérateur de particules de Stygium';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '14','2' from XWING.UPGRADE where NAME = 'Opportuniste';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '14','2' from XWING.UPGRADE where NAME = 'Repousser les limites';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '14','2' from XWING.UPGRADE where NAME = 'Boucliers améliorés';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '14','2' from XWING.UPGRADE where NAME = 'Coque améliorée';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '14','2' from XWING.UPGRADE where NAME = 'Ordinateur de visée';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '14','2' from XWING.UPGRADE where NAME = 'TIE de la garde royale';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.UPGRADE where NAME = 'Kyle Katarn';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.UPGRADE where NAME = 'Jan Ors';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '15','3' from XWING.UPGRADE where NAME = 'Radoub à Chardaan';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '15','2' from XWING.UPGRADE where NAME = 'Roquettes à proton';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '15','2' from XWING.UPGRADE where NAME = 'Pilote d''essais sur A-wing';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '15','2' from XWING.UPGRADE where NAME = 'Radars améliorés';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '15','2' from XWING.UPGRADE where NAME = 'B-wing/E2';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'R5-P9';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'R3-A2';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'R2-D6';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'R4-D6';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Jan Dodonna';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Torynn Farr';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Carlist Rieekan';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Droïde de réparation WED-15';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','3' from XWING.UPGRADE where NAME = 'Torpilles fléchettes';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Outils de slicer';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Brouilleur de fréquence';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Amplificateur comm';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Projecteur de boucliers';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Réserves de gaz Tibanna';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Générateur de bouclier auxiliaire';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Emetteur EM';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Booster';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Compartiments supplémentaires';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Préparé pour le combat';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Bright Hope';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Quantum Storm';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.UPGRADE where NAME = 'Duty Free';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Raymus Antilles';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Leia Organa';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'R2-D2';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Coordinateur de visée';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Z-6PO';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Han Solo';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','3' from XWING.UPGRADE where NAME = 'Turbolaser';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','3' from XWING.UPGRADE where NAME = 'Canons quadrilaser';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Equipe de mécaniciens';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Equipe d''artilleurs';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Equipe des senseurs';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Amplificateur comm';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Réacteur à ionisation';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Réserves de gaz Tibanna';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Générateur de bouclier auxiliaire';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Booster';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Tantive IV';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Dodonna''s Pride';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.UPGRADE where NAME = 'Jaina''s Light';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Loup solitaire';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Restez en ligne';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Canon laser lourd';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Canonnier';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Lando Calrissian';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Dash Rendar';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = '"Leebo"';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Copilote mercenaire';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Roquettes à proton';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','2' from XWING.UPGRADE where NAME = 'Contres-mesures';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Interface expérimentale';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.UPGRADE where NAME = 'Outrider';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','2' from XWING.UPGRADE where NAME = 'Impitoyable';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.UPGRADE where NAME = 'Intimidation';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','2' from XWING.UPGRADE where NAME = 'Torpilles ioniques';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.UPGRADE where NAME = 'Bombes à protons';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.UPGRADE where NAME = 'Ysanne Isard';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.UPGRADE where NAME = 'Officier de la flotte';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.UPGRADE where NAME = 'Moff Jerjerrod';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.UPGRADE where NAME = 'Mara Jade';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','2' from XWING.UPGRADE where NAME = 'Brouilleur tactique';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.UPGRADE where NAME = 'Dauntless';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.UPGRADE where NAME = 'Droïde de sécurité K4';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.UPGRADE where NAME = 'Technicien hors la loi';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.UPGRADE where NAME = 'Greedo';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.UPGRADE where NAME = 'R4-B11';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.UPGRADE where NAME = 'Agromech R4';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.UPGRADE where NAME = 'Astromech Récupéré';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.UPGRADE where NAME = 'Astromech Déglingué';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.UPGRADE where NAME = '"Génie"';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.UPGRADE where NAME = 'Tourelle autoblaster';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.UPGRADE where NAME = 'Chargement de bombres';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.UPGRADE where NAME = 'Blaster "De la Mort"';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.UPGRADE where NAME = 'Andrasta';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.UPGRADE where NAME = 'Y-wing BLT-A4';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.UPGRADE where NAME = 'Torpilles ioniques';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.UPGRADE where NAME = 'Calcul';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.UPGRADE where NAME = 'Garde du corps';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.UPGRADE where NAME = 'Correcteur de Précision';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.UPGRADE where NAME = 'Amortisseurs inertiels';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.UPGRADE where NAME = 'Coque améliorée';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '25','2' from XWING.UPGRADE where NAME = 'Autopropulseurs';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.UPGRADE where NAME = 'Virago';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '26','1' from XWING.UPGRADE where NAME = 'Canon "lacérateur"';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '26','1' from XWING.UPGRADE where NAME = 'Canon ionique';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '26','1' from XWING.UPGRADE where NAME = 'Canon à fléchettes';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '26','1' from XWING.UPGRADE where NAME = 'Système d''occultation';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '26','1' from XWING.UPGRADE where NAME = 'Intercepteur "Scyk lourd"';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'Correcteur de Précision';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'Autoblaster';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'Canon "lacérateur"';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'Mines de proximité';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'Charges sismiques';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'Blaster "De la Mort"';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'Salve Automatique';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'Dispositif de Retour';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'Amortisseurs inertiels';
insert into XWING.UPGRADE_EXPANSION (UPGRADE_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.UPGRADE where NAME = 'IG-2000';

commit;
