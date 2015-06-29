CREATE TABLE XWING.PILOT_EXPANSION (
	pilot_id INT NOT NULL,
	expansion_id INT NOT NULL,
	quantity INT(1) NOT NULL,
	PRIMARY KEY (pilot_id, expansion_id));

ALTER TABLE XWING.PILOT_EXPANSION 
ADD CONSTRAINT FK_PILOT_EXPANSION_PILOT_ID FOREIGN KEY (pilot_id) REFERENCES XWING.PILOT (id);
ALTER TABLE XWING.PILOT_EXPANSION 
ADD CONSTRAINT FK_PILOT_EXPANSION_EXPANSION_ID FOREIGN KEY (expansion_id) REFERENCES XWING.EXPANSION (id);

insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Luke Skywalker' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Biggs Darklighter' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Rouge' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Pilote débutant' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Mauler Mithel' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Dark Curse' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','1' from XWING.PILOT where NAME = 'Night Beast' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','2' from XWING.PILOT where NAME = 'Pilote de l''escadron Noir' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','2' from XWING.PILOT where NAME = 'Pilote de l''escadron Obsidian' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '1','2' from XWING.PILOT where NAME = 'Pilote de l''académie' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.PILOT where NAME = 'Wedge Antilles' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.PILOT where NAME = 'Garven Dreis' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Rouge' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '2','1' from XWING.PILOT where NAME = 'Pilote débutant' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.PILOT where NAME = 'Horton Salm' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.PILOT where NAME = 'Dutch Vander' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Gris' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '4','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Or' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Howlrunner' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Backstabber' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Winged Gundark' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Noir' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Obsidian' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '3','1' from XWING.PILOT where NAME = 'Pilote de l''académie' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.PILOT where NAME = 'Dark Vador' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.PILOT where NAME = 'Maarek Stele' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Orage' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '5','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Tempête' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '8','1' from XWING.PILOT where NAME = 'Tycho Celchu' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '8','1' from XWING.PILOT where NAME = 'Arvel Crynyd' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '8','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Vert' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '8','1' from XWING.PILOT where NAME = 'Pilote sur prototype' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '9','1' from XWING.PILOT where NAME = 'Soontir Fel' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '9','1' from XWING.PILOT where NAME = 'Turr Phennir' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '9','1' from XWING.PILOT where NAME = 'Colère de Fel' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '9','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Sabre' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '9','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Avenger' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '9','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Alpha' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.PILOT where NAME = 'Contrebandier de la Bordure extérieure' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.PILOT where NAME = 'Han Solo' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.PILOT where NAME = 'Lando Calrissian' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '6','1' from XWING.PILOT where NAME = 'Chewbacca' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.PILOT where NAME = 'Boba Fett' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.PILOT where NAME = 'Kath Scarlet' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.PILOT where NAME = 'Krassis Trelix' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '7','1' from XWING.PILOT where NAME = 'Chasseur de primes' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '11','1' from XWING.PILOT where NAME = 'Ten Numb' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '11','1' from XWING.PILOT where NAME = 'Ibtisam' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '11','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Dague' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '11','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Bleu' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '12','1' from XWING.PILOT where NAME = 'Major Rhymer' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '12','1' from XWING.PILOT where NAME = 'Capitaine Jonus' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '12','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Gamma' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '12','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Cimeterre' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.PILOT where NAME = 'Jan Ors' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.PILOT where NAME = 'Kyle Katarn' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.PILOT where NAME = 'Roark Garnet' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '10','1' from XWING.PILOT where NAME = 'Agent rebelle' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.PILOT where NAME = 'Capitaine Kagi' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.PILOT where NAME = 'Colonel Jendon' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.PILOT where NAME = 'Capitaine Yorr' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '13','1' from XWING.PILOT where NAME = 'Pilote du Groupe Omicron' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '18','1' from XWING.PILOT where NAME = 'Corran Horn' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '18','1' from XWING.PILOT where NAME = 'Ethan A''baht' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '18','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Lune Noire' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '18','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Valet' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '16','1' from XWING.PILOT where NAME = 'Airen Cracken' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '16','1' from XWING.PILOT where NAME = 'Lieutenant Blount' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '16','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Tala' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '16','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Bandit' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '17','1' from XWING.PILOT where NAME = 'Rexler Brath' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '17','1' from XWING.PILOT where NAME = 'Colonel Vessery' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '17','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Onyx' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '17','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Delta' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '19','1' from XWING.PILOT where NAME = 'Whisper' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '19','1' from XWING.PILOT where NAME = 'Echo' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '19','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Ombre' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '19','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Sigma' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '14','1' from XWING.PILOT where NAME = 'Carnor Jax' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '14','1' from XWING.PILOT where NAME = 'Tetran Cowall' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '14','1' from XWING.PILOT where NAME = 'Kir Kanos' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '14','1' from XWING.PILOT where NAME = 'Lieutenant Lorrir' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '14','2' from XWING.PILOT where NAME = 'Pilote de la Garde Royale' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '14','2' from XWING.PILOT where NAME = 'Pilote de l''escadron Sabre' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.PILOT where NAME = 'Jake Farrell' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.PILOT where NAME = 'Gemmer Sojan' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Vert' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.PILOT where NAME = 'Pilote sur prototype' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.PILOT where NAME = 'Keyan Farlander' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.PILOT where NAME = 'Nera Dantels' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Dague' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '15','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Bleu' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.PILOT where NAME = 'Transport moyen GR-75' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.PILOT where NAME = 'Wes Janson' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.PILOT where NAME = 'Jek Porkins' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.PILOT where NAME = 'Hobbie Klivian' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.PILOT where NAME = 'Tarn Mison' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.PILOT where NAME = 'Pilote de l''escadron Rouge' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '20','1' from XWING.PILOT where NAME = 'Pilote débutant' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.PILOT where NAME = 'CR90 Corvette (fore)' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '21','1' from XWING.PILOT where NAME = 'CR90 Corvette (aft)' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.PILOT where NAME = 'Dash Rendar' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.PILOT where NAME = 'Leebo' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.PILOT where NAME = 'Eaden Vrill' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '22','1' from XWING.PILOT where NAME = 'Frontalier de l''espace sauvage' and FACTION_ID = '1';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.PILOT where NAME = 'Contre-amiral Chiraneau' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.PILOT where NAME = 'Commandant Kenkirk' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.PILOT where NAME = 'Capitaine Oicunn' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '23','1' from XWING.PILOT where NAME = 'Chef de patrouille' and FACTION_ID = '2';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'N''dru Suhlak' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Kaa''to Leeachos' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.PILOT where NAME = 'Soldat du Soleil Noir' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.PILOT where NAME = 'Pirate Binayre' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Kavil' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Drea Renthal' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.PILOT where NAME = 'Soudard' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','2' from XWING.PILOT where NAME = 'Malfrat' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Boba Fett' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Kath Scarlet' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Emon Azzameen' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Mercenaire Mandalorien' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Dace Bonearm' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Palob Codalhi' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Torkil Mux' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '24','1' from XWING.PILOT where NAME = 'Trafiquant d''épice' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.PILOT where NAME = 'Prince Xizor' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.PILOT where NAME = 'Guri' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.PILOT where NAME = 'Vigo du Soleil Noir' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '25','1' from XWING.PILOT where NAME = 'Homme de main du Soleil Noir' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '26','1' from XWING.PILOT where NAME = 'Serissu' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '26','1' from XWING.PILOT where NAME = 'Laetin A''shera' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '26','1' from XWING.PILOT where NAME = 'Vétéran de Tansarri Point' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '26','1' from XWING.PILOT where NAME = 'Astropilote du Cartel' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.PILOT where NAME = 'IG-88A' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.PILOT where NAME = 'IG-88B' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.PILOT where NAME = 'IG-88C' and FACTION_ID = '3';
insert into XWING.PILOT_EXPANSION (PILOT_ID, EXPANSION_ID, QUANTITY)
select ID, '27','1' from XWING.PILOT where NAME = 'IG-88D' and FACTION_ID = '3';

commit;
