CREATE TABLE XWING.PILOT (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    description VARCHAR(255),
    level INT(1) NOT NULL,
	cost INT(1) NOT NULL,
	uniqueness BOOLEAN NOT NULL,
	ship_type_id INT NOT NULL,
	faction_id INT NOT NULL,
	upgrade_type_id INT);

ALTER TABLE XWING.PILOT 
ADD CONSTRAINT FK_PILOT_SHIP_TYPE_ID FOREIGN KEY (ship_type_id) REFERENCES XWING.SHIP_TYPE (id);
ALTER TABLE XWING.PILOT 
ADD CONSTRAINT FK_PILOT_FACTION_ID FOREIGN KEY (faction_id) REFERENCES XWING.FACTION (id);
ALTER TABLE XWING.PILOT 
ADD CONSTRAINT FK_PILOT_UPGRADE_TYPE_ID FOREIGN KEY (upgrade_type_id) REFERENCES XWING.UPGRADE_TYPE (id);

insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('1','Luke Skywalker','Quand vous défendez, vous pouvez échanger 1 de vos résultats <img class="smallicon" src="$path/action/icone_focus.png"> contre un résultat <img class="smallicon" src="$path/action/icone_evade.png">.','8','28','1','1', '1', '1');
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('2','Biggs Darklighter','Les autres vaisseaux alliés situés à portée 1 ne peuvent être les cibles d''attaques si l''assaillant est en mesure de vous attaquer à la place.','5','25','1','1', '1', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('3','Pilote de l''escadron Rouge','<i>Véritable unité d''élite, l''escadron Rouge regroupait certains des meilleurs pilotes de l''Alliance rebelle.</i>','4','23','0','1', '1', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('4','Pilote débutant','<i>Conçu par Incom Corporation, le X-wing T-65 compta rapidement parmi les appareils militaires les plus efficaces de la galaxie et fut d''un réel secours pour la Rébellion.</i>','2','21','0','1', '1', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('5','Mauler Mithel','Quand vous attaquez à portée 1, lancez 1 dé d''attaque supplémentaire.','7','17','1','7', '2', '1');
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('6','Dark Curse','Quand vous défendez, les vaisseaux qui vous attaquent ne peuvent ni utiliser de marqueurs de concentration ni relancer les dés d''attaque.','6','16','1','7', '2', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('7','Night Beast','Après avoir éxécuté une manoeuvre verte, vous pouvez effectuer une action de concentration gratuite.','5','15','1','7', '2', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('8','Pilote de l''escadron Noir','Le chasseur TIE n''a ni boucliers ni systèmes de survie, si bien que les pilotes ne peuvent compter que sur eux-mêmes.','4','14','0','7', '2', '1');
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('9','Pilote de l''escadron Obsidian','Son système de moteurs ioniques jumeaux fait du TIE un des chasseurs les plus maniables jamais produits.','3','13','0','7', '2', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('10','Pilote de l''académie','Dévellopé par Sienar Fleet System, ce TIE/ln rapide et maniable devint le principal chasseur de l''Empire lors de la Guerre civile galactique.','1','12','0','7', '2', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('11','Wedge Antilles','Quand vous attaquez, réduisez la valeur d''agilité du défenseur de 1 (jusqu''à un minimim de 0).','9','28','1','1', '1', '1');
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('12','Garven Dreis','Après avoir utulisé un marqueur de concentration, vous pouvez placer ce dernier sur tout autre vaisseau allié situé à portée 1 ou 2 (plutôt que de le défausser).','6','26','1','1', '1', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('13','Horton Salm','Quand vous attaquez à portée 2 ou 3, vous pouvez relancer vos résultats vierges.','8','25','1','2', '1', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('14','Dutch Vander','Après avoir verrouillé une cible, choisissez un vaisseau allié situé à portée 1 ou 2. Cet autre vaisseau peut aussitôt verrouiller une cible.','6','23','1','2', '1', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('15','Pilote de l''escadron Gris','<i>Grâce à sa vitesse, sa robustesse et son armement, le Y-wing resta l''un des principaux chasseurs de la flotte rebelle longtemps après avoir pris sa retraite officielle.</i>','4','20','0','2', '1', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('16','Pilote de l''escadron Or','<i>Le très polyvalent et fiable Y-wing BTL-A4 fut le principal chasseur de la Rébellion jusqu''à l''arrivée du X-wing T-65.</i>','2','18','0','2', '1', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('17','Howlrunner','Quand un autre vaisseau allié situé à portée 1 attaque avec son arme pricipale, il peut relancer 1 dé d''attaque.','8','18','1','7', '2', '1');
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('18','Backstabber','Quand vous attaquez en dehors de l''arc de tir du défenseur, lancez un dé d''attaque supplémentaire.','6','16','1','7', '2', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('19','Winged Gundark','Quand vous attaquez à portée 1, vous pouvez échanger 1 de vos résultats <img class="smallicon" src="$path/icone_hit.png"> contre un résultat <img class="smallicon" src="$path/icone_criticalhit.png">','5','2','0','7', '2', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('20','Dark Vador','Vous pouvez effectuer 2 actions lors de l''étape "Effectuer une action".','9','29','1','8', '2', '1');
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('21','Maarek Stele','Si votre attaque se solde par une carte de dégâts face visible pour le défenseur, piochez 3 cartes de dégâts, choisissez-en une que vous lui infligez, et défaussez les autres.','7','27','1','8', '2', '1');
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('22','Pilote de l''escadron Orage','<i>Le TIE Advanced est une version améliorée du célèbre chasseur TIE/ln disposant de boucliers, d''un meilleur système d''armement, de panneux solaires incurvés et d''un hyperdrive.</i>','4','23','0','8', '2', null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('23','Pilote de l''escadron Tempête','<i>Le TIE Advanced a été produit en série limitées, mais ultérieurement les ingénieurs de Sienar incorporèrent la plus grande partie de ces améliorations dans leur nouveau modèle de TIE : Le TIE Intercepteur.</i>','2','21','0','8', '2', null);

commit;
