CREATE TABLE XWING.PILOT (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    description VARCHAR(1024),
    level DECIMAL(1) NOT NULL,
    cost DECIMAL(2) NOT NULL,
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
values (1,'Luke Skywalker','Quand vous défendez, vous pouvez échanger 1 de vos résultats <img class=""smallicon"" src=""$path/action/icone_focus.png""> contre un résultat <img class=""smallicon"" src=""$path/action/icone_evade.png"">.',8,28,true,1, 1, 1);

insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 1,'Luke Skywalker','Quand vous défendez, vous pouvez échanger 1 de vos résultats <img class="smallicon" src="$path/action/icone_focus.png"> contre un résultat <img class="smallicon" src="$path/action/icone_evade.png">.', 8, 28, 1, 1,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 2,'Biggs Darklighter','Les autres vaisseaux alliés situés à portée 1 ne peuvent être les cibles d''attaques si l''assaillant est en mesure de vous attaquer à la place.', 5, 25, 1, 1,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 3,'Pilote de l''escadron Rouge','<i>Véritable unité d''élite, l''escadron Rouge regroupait certains des meilleurs pilotes de l''Alliance rebelle.</i>', 4, 23, 0, 1,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 4,'Pilote débutant','<i>Conçu par Incom Corporation, le X-wing T-65 compta rapidement parmi les appareils militaires les plus efficaces de la galaxie et fut d''un réel secours pour la Rébellion.</i>', 2, 21, 0, 1,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 5,'Mauler Mithel','Quand vous attaquez à portée 1, lancez 1 dé d''attaque supplémentaire.', 7, 17, 1, 7,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 6,'Dark Curse','Quand vous défendez, les vaisseaux qui vous attaquent ne peuvent ni utiliser de marqueurs de concentration ni relancer les dés d''attaque.', 6, 16, 1, 7,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 7,'Night Beast','Après avoir exécuté une manoeuvre verte, vous pouvez effectuer une action de concentration gratuite.', 5, 15, 1, 7,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 8,'Pilote de l''escadron Noir','Le chasseur TIE n''a ni boucliers ni systèmes de survie, si bien que les pilotes ne peuvent compter que sur eux-mêmes.', 4, 14, 0, 7,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 9,'Pilote de l''escadron Obsidian','Son système de moteurs ioniques jumeaux fait du TIE un des chasseurs les plus maniables jamais produits.', 3, 13, 0, 7,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 10,'Pilote de l''académie','Développé par Sienar Fleet System, ce TIE/ln rapide et maniable devint le principal chasseur de l''Empire lors de la Guerre civile galactique.', 1, 12, 0, 7,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 11,'Wedge Antilles','Quand vous attaquez, réduisez la valeur d''agilité du défenseur de 1 (jusqu''à un minimum de 0).', 9, 28, 1, 1,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 12,'Garven Dreis','Après avoir utilisé un marqueur de concentration, vous pouvez placer ce dernier sur tout autre vaisseau allié situé à portée 1 ou 2 (plutôt que de le défausser).', 6, 26, 1, 1,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 13,'Horton Salm','Quand vous attaquez à portée 2 ou 3, vous pouvez relancer vos résultats vierges.', 8, 25, 1, 2,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 14,'Dutch Vander','Après avoir verrouillé une cible, choisissez un vaisseau allié situé à portée 1 ou 2. Cet autre vaisseau peut aussitôt verrouiller une cible.', 6, 23, 1, 2,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 15,'Pilote de l''escadron Gris','<i>Grâce à sa vitesse, sa robustesse et son armement, le Y-wing resta l''un des principaux chasseurs de la flotte rebelle longtemps après avoir pris sa retraite officielle.</i>', 4, 20, 0, 2,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 16,'Pilote de l''escadron Or','<i>Le très polyvalent et fiable Y-wing BTL-A4 fut le principal chasseur de la Rébellion jusqu''à l''arrivée du X-wing T-65.</i>', 2, 18, 0, 2,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 17,'Howlrunner','Quand un autre vaisseau allié situé à portée 1 attaque avec son arme principale, il peut relancer 1 dé d''attaque.', 8, 18, 1, 7,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 18,'Backstabber','Quand vous attaquez en dehors de l''arc de tir du défenseur, lancez un dé d''attaque supplémentaire.', 6, 16, 1, 7,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 19,'Winged Gundark','Quand vous attaquez à portée 1, vous pouvez échanger 1 de vos résultats <img class="smallicon" src="$path/icone_hit.png"> contre un résultat <img class="smallicon" src="$path/icone_criticalhit.png">', 5, 2, 0, 7,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 20,'Dark Vador','Vous pouvez effectuer 2 actions lors de l''étape "Effectuer une action".', 9, 29, 1, 8,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 21,'Maarek Stele','Si votre attaque se solde par une carte de dégâts face visible pour le défenseur, piochez 3 cartes de dégâts, choisissez-en une que vous lui infligez, et défaussez les autres.', 7, 27, 1, 8,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 22,'Pilote de l''escadron Orage','<i>Le TIE Advanced est une version améliorée du célèbre chasseur TIE/ln disposant de boucliers, d''un meilleur système d''armement, de panneaux solaires incurvés et d''un hyperdrive.</i>', 4, 23, 0, 8,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 23,'Pilote de l''escadron Tempête','<i>Le TIE Advanced a été produit en série limitées, mais ultérieurement les ingénieurs de Sienar incorporèrent la plus grande partie de ces améliorations dans leur nouveau modèle de TIE : Le TIE Intercepteur.</i>', 2, 21, 0, 8,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 24,'Tycho Celchu','Vous pouvez effectuer des actions même quand vous avez des marqueurs de stress.', 8, 26, 1, 3,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 25,'Arvel Crynyd','Vous pouvez attaquer un vaisseau situé dans votre arc de tir, même si vos socles se touchent.', 6, 23, 1, 3,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 26,'Pilote de l''escadron Vert','<i>Conçu par le général Dodonna, l''intercepteur RZ-1 A-wing prouva ses qualités en neutralisant des destroyers stellaires durant la bataille d''Endor.</i>', 3, 19, 0, 3,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 27,'Pilote sur prototype','<i>Vu ses commandes sensibles et son extrême manoeuvrabilité, seuls les meilleurs pilotes osent prendre place dans le cockpit d''un A-wing.</i>', 1, 17, 0, 3,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 28,'Soontir Fel','Quand vous recevez un marqueur de stress, vous pouvez assigner 1 marqueur de concentration à votre vaisseau.', 9, 27, 1, 9,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 29,'Turr Phennir','Après avoir effectué une attaque, vous pouvez effectuer une action gratuite d''accélération ou de tonneau.', 7, 25, 1, 9,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 30,'Colère de Fel','Quand le nombre de cartes de dégâts qui vous est assigné est supérieur ou égal à votre valeur de coque, vous n''êtes pas détruit avant la fin de la phase de combat.', 5, 23, 1, 9,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 31,'Pilote de l''escadron Sabre','<i>Dirigés par le Baron Fel Soontir, les pilotes de l''escadron Sabre sont parmi les meilleurs de l''Empire. Leurs intercepteurs TIE sont marqués avec des bandes rouges pour désigner les pilotes ayant au moins dix victoires confirmées.</i>', 4, 21, 0, 9,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ( 32,'Pilote de l''escadron Avenger','<i>Une vitesse et une maneuvrabilité accrues confèrent à l''intercepteur TIE,  meilleur chasseur de son époque produit en série, un avantage indéniable au combat.</i>', 3, 20, 0, 9,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('33','Pilote de l''escadron Alpha','<i> Sienar Fleet Systems a doté les panneaux solaires de l''intercepteur TIE de quatre cannons laser qui lui confèrent une puissance de feu bien supérieure à celle des précédents modèles.</i>', 1, 18, 0, 9,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('34','Contrebandier de la Bordure extérieure','<i>Connu pour sa robustesse et sa conception modulaire, le YT-1300 est l''un des transporteurs les plus populaires et répandus de la galaxie.</i>', 1, 27, 0, 13,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('35','Han Solo','Quand vous attaquez, vous pouvez relancer tous vos dés. Si vous décidez de le faire, vous devez relancer autant de vos dés que possible.', 9,'46', 1, 14,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('36','Lando Calrissian','Après avoir exécuté une manoeuvre verte, choisissez 1 autre vaisseau allié situé à portée 1. Ce vaisseau peut effectuer 1 action gratuite figurant dans sa barre d''action.', 7,'44', 1, 14,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('37','Chewbacca','Quand vous recevez une carte de dégâts face visible, retournez-la aussitôt face cachée (sans résoudre sa capacité).', 5,'42', 1, 14,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('38','Boba Fett','Quand vous révélez une manoeuvre de virage sur l''aile (<img class="smallicon" src="$path/dial/icone_bankleft.png"> ou <img class="smallicon" src="$path/dial/icone_bankright.png">), vous pouvez touner votre cadran sur la manoeuvre de virage sur l''aile opposée, à la même vitesse.', 8,'39', 1, 15,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('39','Kath Scarlet','Quand vous attaquez, le défenseur reçoit 1 marqueur de stress s''il annule au moins 1 résultat <img class="smallicon" src="$path/icone_criticalhit.png">.', 7,'38', 1, 15,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('40','Krassis Trelix','Quand vous attaquez avec une arme secondaire, vous pouvez relancer 1 dé d''attaque.', 5,'36', 1, 15,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('41','Chasseur de primes','<i>Originellement conçu pour le transport carcéral, l''appareil de patrouille Firespray dispose d''un armement polyvalent et d''un épais blindage.</i>', 3,'33', 0, 15,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('42','Ten Numb','Quand vous attaquez, 1 de vos resultats <img class="smallicon" src="$path/icone_criticalhit.png"> ne peut pas être annulé par les dés de défense.', 8, 31, 1, 4,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('43','Ibtisam','Quand vous attaquez ou défendez, si vous avez au moins 1 marqueur de stress, vous pouvez relancer un de vos dés.', 6, 28, 1, 4,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('44','Pilote de l''escadron Dague','<i>Un système de stabilisation gyroscopique unique enveloppe le cockpit du B-wing et assure la stabilité du pilote.</i>', 4, 24, 0, 4,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('45','Pilote de l''escadron Bleu',' <i>Grâce à son impressionnant panel d''armes lourdes et ses boucliers très resistants, le B-wing s''est imposé comme le plus redoutable chasseur d''assaut de l''Alliance.</i>', 2, 22, 0, 4,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('46','Major Rhymer',' Quand vous attaquez avec une arme secondaire, vous pouvez augmenter ou réduire de 1 la portée de l''arme, dans une limite de portée 1-3.', 7, 26, 1, 10,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('47','Capitaine Jonus','Quand un autre vaisseau allié situé à porté 1 attaque avec une arme secondaire, il peut relancer jusqu''à 2 dés d''attaque.', 6, 22, 1, 10,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('48','Pilote de l''escadron Gamma','<i>Bien qu''il ne soit pas aussi maniable et rapide que les autres modèles TIE, ces bombardiers ont une puissance de feu suffisante pour détruire à peu près n''importe quelle cible.</i>', 4, 18, 0, 10,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('49','Pilote de l''escadron Cimeterre','<i>L''extrème précision de son ordinateur de visée embarqué permet au bombardier TIE de verrouiller une cible en évitant d''infliger des dommages collatéraux à la zone environnante.</i>', 2, 16, 0, 10,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('50','Jan Ors','Quand un autre vaisseau allié situé à portée 1-3 attaque, si vous n''avez aucun marqueur de stress, vous pouvez recevoir 1 marqueur de stress pour permettre à ce vaisseau de lancer 1 dé d''attaque supplémentaire.', 8, 25, 1, 16,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('51','Kyle Katarn','Au début de la phase de combat, vous pouvez assigner 1 de vos marqueurs de concentration à un autre vaisseau allié situé à portée 1-3.', 6, 21, 1, 16,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('52','Roark Garnet','Au début de la phase de combat, choisissez 1 autre vaisseau allié situé à 1-3. Jusqu''à la fin de la phase, considérez que la valeur de pilotage de ce vaisseau est égale à 12.', 4, 19, 1, 16,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('53','Agent rebelle','<i>Conçue par la Corporation Technique Corellienne et inspirée d''un oiseau en vol, la série "hawk" a produit d''excellents cargos légers.</i>', 2, 16, 0, 16,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('54','Capitaine Kagi','Quand un vaisseau ennemi verrouille une cible, il doit verrouiller votre vaisseau, si possible.', 8, 27, 1, 17,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('55','Colonel Jendon','Au début de la phase de combat, vous pouvez assigner 1 de vos marqueurs d''acquisition de cible bleus à un vaisseau allié situé à portée 1 s''il n''a pas déjà de marqueur d''acquisition de cible bleu.', 6, 26, 1, 17,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('56','Capitaine Yorr','Quand un autre vaisseau allié situé à portée 1-2 est sensé recevoir un marqueur de stress, vous pouvez le recevoir à sa place si vous n''avez pas déjà plus de 2 marqueurs de stress.', 4, 24, 1, 17,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('57','Pilote du Groupe Omicron','<i> Appareil utilitaire léger, la navette de classe <g>Lambda</g>, reconnaissable à sa triple aile caractéristique, joua un rôle de premier plan dans la Marine impériale.</i>', 2, 21, 0, 17,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('58','Corran Horn','Au début de la phase de dénouement, vous pouvez effectuer une attaque. Vous ne pouvez pas attaquer au tour suivant.', 8,'35', 1, 6,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('59','Ethan A''baht','Quand un vaisseau ennemi situé dans votre arc de tir et à portée 1-3 se défend, l''attaquant peut changer 1 de ses résultats <img class="smallicon" src="$path/icone_hit.png"> en un résultat <img class="smallicon" src="$path/icone_criticalhit.png">.', 5, 32, 1, 6,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('60','Pilote de l''escadron Lune Noire','<i>Originellement conçu pour fonctionner avec des astromechs R7, le E-wing finit par être modifié pour accueillir des R2 et des R5.</i>', 3, 29, 0, 6,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('61','Pilote de l''escadron Valet','<i>Tout spécialement conçu pour combiner les meilleurs atouts de l''A-wing et de l''X-wing, le E-wing disposait d''une puissance de feu, d''une vitesse et d''une manoeuvrabilité supérieures.</i>', 1, 27, 0, 6,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('62','Airen Cracken','Après avoir effectué une attaque, vous pouvez choisir un autre vaisseau allié situé à portée 1. Ce vaisseau peut effectuer 1 action gratuite.', 8, 19, 1, 5,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('63','Lieutenant Blount','Quand vous attaquez, le défenseur est touché par votre attaque, même s''il ne subit pas de dégâts.', 6, 17, 1, 5,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('64','Pilote de l''escadron Tala','<i>Le Z-95-AF4 produit par Incom Corporation a grandement inspiré la conception du X-wing T-65.</i>', 4, 13, 0, 5,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('65','Pilote de l''escadron Bandit','<i>L''AF4 fut la toute dernière génération du modèle chasseur de têtes, produit durant très longtemps. Robuste et bon marché, il fut très populaire auprès des indépendants, comme la Rébellion et le Soleil Noir.</i>', 2, 12, 0, 5,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('66','Rexler Brath','Après avoir effectué une attaque qui inflige au moins 1 une carte de dégâts au défenseur, vous pouvez dépenser 1 marqueur de concentration pour retouner ces cartes face visible.', 8,'37', 1, 11,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('67','Colonel Vessery','Quand vous attaquez, juste après avoir lancé les dés d''attaque, vous pouvez verrouiller le défenseur s''il a déjà un marqueur d''acquisition de cible rouge.', 6,'35', 1, 11,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('68','Pilote de l''escadron Onyx','<i>Le défenseur TIE surclassait tous les chasseurs de son temps, mais sa taille et son arsenal augmentaient considérablement son poids et son coût.</i>', 3, 32, 0, 11,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('69','Pilote de l''escadron Delta','<i>En plus de ses quatre canons laser et de ses lances-missiles, le défenseur TIE était équipé de canons ioniques placés sur son aile supérieure.</i>', 1, 30, 0, 11,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('70','Whisper','Après avoir effectué une attaque qui touche, vous pouvez assigner 1 marqueur de concentration à votre vaisseau.', 7, 32, 1, 12,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('71','Echo','Quand vous vous désoccultez, vous devez utiliser le gabarit de manoeuvre (<img class="smallicon" src="$path/dial/icone_bankleft.png">2) ou (<img class="smallicon" src="$path/dial/icone_bankright.png">2) à la place du gabarit (<img class="smallicon" src="$path/dial/icone_straight.png">2).', 6, 30, 1, 12,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('72','Pilote de l''escadron Ombre','<i>Equipé d''un hyperdrive et de boucliers, le TIE fantôme disposait également de cinq canons laser qui lui conféraient une puissance de feu inouïe pour un chassaur impérial de si petite taille.</i>', 5, 27, 0, 12,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('73','Pilote de l''escadron Sigma','<i>Avec le TIE Fantôme, conçu dans un centre de recherche secret sur Imdaar Alpha, la flotte impériale disposait d''un petit chasseur furtif.</i>', 3, 25, 0, 12,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('74','Carnor Jax','Les vaisseaux ennemis situés à portée 1 ne peuvent pas effectuer d''actions de concentration ou d''évasion, et ne peuvent pas dépenser de marqueurs de concentartion ou d''évasion.', 8, 26, 1, 9,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('75','Tetran Cowall','Quand vous révélez une manoeuvre <img class="smallicon" src="$path/dial/icone_koiogran.png">, vous pouvez considérer la vitesse de celle-ci comme "1", "3" ou "5".', 7, 24, 1, 9,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('76','Kir Kanos','Quand vous attaquez à portée 2-3, vous pouvez dépenser un marqueur d''évasion pour ajouter 1 résultat <img class="smallicon" src="$path/icone_hit.png"> à votre jet.', 6, 24, 1, 9,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('77','Lieutenant Lorrir','Quand vous effectuez une action de tonneau, vous pouvez recevoir un marqueur de stress pour utiliser le gabarit [<img class="smallicon" src="$path/dial/icone_bankleft.png">1] ou [<img class="smallicon" src="$path/dial/icone_bankright.png">1] à la place du gabarit [<img class="smallicon" src="$path/dial/icone_straight.png">1].', 5, 23, 1, 9,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('78','Pilote de la Garde Royale','<i>Seuls les membres de la Garde royale de l''Empereur ont le droit de piloter ces chasseurs écarlates, souvent utilisés pour escorter la navette de leur seigneur, mais également ses leurres.</i>', 6, 22, 0, 9,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('79','Jake Farrell','Après avoir effectué une action de concentration ou reçu un marqueur de concentration, vous pouvez effectuer une action gratuite d''accélération ou de tonneau.', 7, 24, 1, 3,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('80','Gemmer Sojan','Tant que vous êtes à portée 1 d''au moins 1 vaisseau ennemi, augmentez de 1 votre valeur d''agilité.', 5, 22, 1, 3,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('81','Keyan Farlander','Quand vous attaquez, vous pouvez retirer 1 marqueur de stress pour changer tous vos résultats <img class="smallicon" src="$path/action/icone_focus.png"> en résultats <img class="smallicon" src="$path/icone_hit.png">.', 7, 29, 1, 4,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('82','Nera Dantels','Vous pouvez affectuer des attaques d''arme secondaire <img class="smallicon" src="$path/card/icone_Card_Torpedoes.png"> contre des vaisseaux ennemis situés en dehors de votre arc de tir.', 5, 26, 1, 4,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('83','Transport moyen GR-75','<i>Le GR-75 joua un rôle essentiel dans l''évacuation de Hoth, puisqu''il transporta une bonne partie des personnels et du matériel de l''Alliance au point de rendez-vous.</i>', 3, 2, 0, 25,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('84','Wes Janson','Après avoir effectué une attaque, vous pouvez retirer 1 marqueur de concentration, d''évasion ou d''acquisition de cible bleu au défenseur.', 8, 29, 1, 1,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('85','Jek Porkins','Quand vous recevez un marqueur de stress, vous pouvez le retirer et lancer 1 dé d''attaque. Sur un résultat <img class="smallicon" src="$path/icone_hit.png">, infligez 1 carte dégât face cachée à ce vaisseau.', 7, 26, 1, 1,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('86','Hobbie Klivian','Quand vous effectuez ou dépensez une acquisition de cible, vous pouvez retirez 1 marqueur de stress de votre vaisseau.', 5, 25, 1, 1,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('87','Tarn Mison','Quand un vaisseau ennemi vous déclare comme la cible d''une attaque, vous pouvez le verrouiller.', 3, 23, 1, 1,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('88','CR90 Corvette (fore)','Quand vous attaquez avec votre arme principale, vous pouvez dépenser 1 énergie pour lancer un dé supplémentaire.', 4,'50', 0, 26,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('89','CR90 Corvette (aft)','<i>Equipé de 11 turbines à ion Girodyne Ter58 et d''un épais blindage, le CR90 était prisé par l''Alliance Rebelle pour sa vitesse subluminique et sa longévité.</i>', 4,'40', 0, 27,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('90','Dash Rendar','Vous pouvez ignorer les obstacles durant la phase d''activation et quand vous effectuez des actions.', 7,'36', 1, 18,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('91','Leebo','Quand vous recevez une carte de dégâts face visible, piochez 1 carte de dégâts additionnelle ; choisissez-en 1 que vous résolvez et défaussez l''autre.', 5,'34', 1, 18,  1,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('92','Eaden Vrill','Quand vous effectuez une attaque d''arme principale contre un vaisseau sous l''effet du stess, lancez 1 dé d''attaque additionnel.', 3, 32, 1, 18,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('93','Frontalier de l''espace sauvage','<i>Certes, le cargo léger YT-2400 possédait une soute de bonne taille, mais celle-ci était souent encombrée de systèmes d''armement modifiés et de moteurs énormes.</i>', 2, 30, 0, 18,  1, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('94','Contre-amiral Chiraneau','Quand vous attaquez à portée 1-2, vous pouvez changer 1 de vos résultats <img class="smallicon" src="$path/action/icone_focus.png"> en résultat <img class="smallicon" src="$path/icone_criticalhit.png">.', 8,'46', 1, 19,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('95','Commandant Kenkirk','Si vous n''avez pas de boucliers et qu''au moins 1 carte de dégâts vous est assignée, augmentez de 1 votre valeur d''agilité.', 6,'44', 1, 19,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('96','Capitaine Oicunn','Après avoir exécuté une manoeuvre, chaque vaisseau ennemi avec lequel vous êtes au contact subit 1 dégât.', 4,'42', 1, 19,  2,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('97','Chef de patrouille','<i>Recevoir le commandement d''un Décimateur VT-49 était une promotion de taille pour un officier moyen de la Marine impériale.</i>', 3,'40', 0, 19,  2, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('98','N''dru Suhlak','Quand vous attaquez, si il n''y a pas d''autres vaisseaux alliés à portée 1-2, lancez 1 dé d''attaque supplémentaire.', 7, 17, 1, 21,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('99','Kaa''to Leeachos','Au début de la phase de combat, vous pouvez retirer 1 marqueur de concentration ou d''évasion d''un autre vaisseau allié situé à portée 1-2 et vous l''assigner.', 5, 15, 1, 21,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('100','Soldat du Soleil Noir','<i>La vaste et influente organisation criminelle du Soleil Noir a toujours besoin de pilotes de talent, pourvu qu''ils ne soient pas trop regardants sur l''origine de leur paye.</i>', 3, 13, 0, 21,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('101','Pirate Binayre','<i>Le groupe de contrebandiers et de pirates de Kath Scarlet, qui agit depuis les Mondes Doubles de Talus et Tralus, n''a pas la réputation d''être fiable ni même honorable. Et ce ne sont pas les autres criminels qui diront le contraire...</i>', 1, 12, 0, 21,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('102','Kavil','Quand vous attaquez un vaisseau en dehors de votre arc de tir, lancez 1 dé d''attaque supplémentaire.', 7, 24, 1, 20,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('103','Drea Renthal','Après avoir dépensé une acquisition de cible, vous pouvez recevoir 1 marqueur de stress pour verrouiller une cible.', 5, 22, 1, 20,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('104','Soudard','<i>La simple évocation de crédits impériaux peut attirer toutes sortes d''invividus totalement amoraux dans votre camp.</i>', 4, 20, 0, 20,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('105','Malfrat','<i>Bien qu''il ne soit pas toujours très maniable, le Y-wing bénéficie d''une solide coque, de boucliers substantiels et d''une tourelle de cannons qui en font un excellent appareil de patrouille.</i>', 2, 18, 0, 20,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('106','Boba Fett','Quand vous attaquez ou défendez, vous pouvez relancer 1 de vos dés pour chaque vaisseau ennemi à portée 1.', 8,'39', 1, 30,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('107','Kath Scarlet','Quand vous attaquez un vaisseau dans votre arc de tir auxiliaire, lancez 1 dé d''attaque supplémentaire.', 7,'38', 1, 30,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('108','Emon Azzameen','Quand vous larguez une bombe, vous pouvez utiliser le gabarit (<img class="smallicon" src="$path/dial/icone_turnleft.png">3), (<img class="smallicon" src="$path/dial/icone_straight.png">3) ou (<img class="smallicon" src="$path/dial/icone_turnright.png">3) au lieu du gabarit (<img class="smallicon" src="$path/dial/icone_straight.png">1).', 6,'36', 1, 30,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('109','Mercenaire Mandalorien','<i>Même si les croisés mandaloriens furent décimés par la Vieille République, une poignée de mercenaires entreprenants s''en réclament encore et inspirent la terreur à leurs adversaires.</i>', 5,'35', 0, 30,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('110','Dace Bonearm','Quand un vaisseau ennemi situé à portée 1-3 reçoit au moins 1 marqueur ionique, si vous n''êtes pas déjà sous l''effet du stress, vous pouvez recevoir 1 marqueur de stress pour que ce vaisseau subisse 1 dégât.', 7, 23, 1, 31,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('111','Palob Codalhi','Au début de la phase de combat, vous pouvez retirer 1 marqueur de concentration ou d''évasion d''un vaisseau ennemi situé à portée 1-2 et vous l''assigner.', 5, 20, 1, 31,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('112','Torkil Mux','A la fin de la phase d''activation, choisissez 1 vaisseau ennemi situé à portée 1-2. Jusqu''à la fin de la phase de combat, considérez que la valeur de pilotage de ce vaisseau est égale à "0".', 3, 19, 1, 31,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('113','Trafiquant d''épice','<i>Sans rien de plus que l''envie de s''envoler et un dépôt de ferraille sous la main, les mécanos les plus habiles sont capables de construire un vaisseau de toutes pièces.</i>', 1, 16, 0, 31,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('114','Prince Xizor','Quand vous défendez, un vaisseau allié à portée 1 peut subir 1 résultat <img class="smallicon" src="$path/icone_hit.png"> ou <img class="smallicon" src="$path/icone_criticalhit.png"> restant à votre place.', 7, 31, 1, 22,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('115','Guri','Au début de la phase de combat, si vous êtes à portée 1 d''un vaisseau ennemi, vous pouvez assigner 1 marqueur de concentration à votre vaisseau.', 5, 30, 1, 22,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('116','Vigo du Soleil Noir','<i>Après le succès que connut le prototype </i>Virago<i>, le module d''attaque de classe StarViper fut produit en série.</i>', 3, 27, 0, 22,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('117','Homme de main du Soleil Noir','<i>Le Prince Xizor en personne collabora avec MandalMotors pour concevoir le module d''attaque </i>StarViper<i>, l''un des plus redoutables chasseurs de la galaxie.</i>', 1, 25, 0, 22,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('118','Serissu','Quand un autre vaisseau allié à portée 1 défend, il peut relancer 1 dé de défense.', 8, 20, 1, 23,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('119','Laetin A''shera','Après avoir défendu contre une attaque, si cette dernière ne vous a pas touché, vous pouvez assigner 1 marqueur d''évasion à votre vaisseau.', 6, 18, 1, 23,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('120','Vétéran de Tansarri Point','<i>La défaite de l''as du Soleil Noir Talonbane Cobra, abattu par les contrebandiers de Car''das, changea le cours de la bataille de la station Tansarii Point. Les survivants de cette escarmouche sont respectés dans tout le secteur.</i>', 5, 17, 0, 23,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('121','Astropilote du Cartel','<i>L''intercepteur "Scyk" M3-A de MandalMotors fut acheté en grande quantité par le Cartel hutt et les contrebandier Car''das en raison de son prix bas et des possibilités de personnalisation qu''il offrait.</i>', 2, 14, 0, 23,  3, null);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('122','IG-88A','Après avoir effectué une attaque qui détruit le défenseur, vous pouvez récupérer 1 bouclier.', 6,'36', 1, 24,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('123','IG-88B','Une fois par tour, après avoir effectué une attaque qui ne touche pas, vous pouvez effectuer une attaque avec une arme secondaire <img class="smallicon" src="$path/card/icone_Card_Cannons.png"> équipée.', 6,'36', 1, 24,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('124','IG-88C','Après avoir effectué une action d''accélération, vous pouvez effectuer une action d''évasion gratuite.', 6,'36', 1, 24,  3,  1);
insert into XWING.PILOT (ID, NAME, DESCRIPTION, LEVEL, COST, UNIQUENESS, SHIP_TYPE_ID, FACTION_ID, UPGRADE_TYPE_ID)
values ('125','IG-88D','Vous pouvez exécuter la manoeuvre (<img class="smallicon" src="$path/dial/icone_segnorsleft.png">3) ou (<img class="smallicon" src="$path/dial/icone_segnorsright.png">3) en utilisant le gabarit (<img class="smallicon" src="$path/dial/icone_turnleft.png">3) ou (<img class="smallicon" src="$path/dial/icone_turnright.png">3) correspondant.', 6,'36', 1, 24,  3,  1);

commit;
