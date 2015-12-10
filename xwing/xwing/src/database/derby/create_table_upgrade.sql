CREATE TABLE XWING.UPGRADE (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(1024),
	upgrade_type_id INT NOT NULL,
	cost DECIMAL(2) NOT NULL,
	uniqueness BOOLEAN NOT NULL,
	limited BOOLEAN NOT NULL);

ALTER TABLE XWING.UPGRADE 
ADD CONSTRAINT FK_UPGRADE_UPGRADE_TYPE_ID FOREIGN KEY (upgrade_type_id) REFERENCES XWING.UPGRADE_TYPE (id);

insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 1,'Adresse au tir','<b>Action : </b> en attaquant ce tour-ci, vous pouvez échanger 1 de vos résultats <img class="smallicon" src="$path/action/icone_focus.png"> contre un résultat <img class="smallicon" src="$path/icone_criticalhit.png">, et tous vos autres résultats <img class="smallicon" src="$path/action/icone_focus.png"> contre des résultats <img class="smallicon" src="$path/icone_hit.png">.', 1, 3, false, false);

insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 2,'Détermination','Quand vous recevez une carte de dégâts assortie du trait <b><i>Pilote</i></b> face visible, défaussez-là aussitôt (sans résoudre sa capacité).', 1, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 3,'R2-D2','Après avoir exécuté une manoeuvre verte, vous pouvez récupérer 1 bouclier (sans pouvoir dépasser votre valeur de boucliers).', 2, 4, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 4,'R2-F2','<b>Action : </b>augmentez votre valeur d''agilité de 1 jusqu''à la fin de ce tour de jeu.', 2, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 5,'Torpilles à protons','<b>Attaque (acquisition de cible) :</b> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque. Vous pouvez échanger 1 de vos résultats <img class="smallicon" src="$path/action/icone_focus.png"> contre 1 résultat <img class="smallicon" src="$path/icone_criticalhit.png">.', 4, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 6,'As de l''espace','<b>Action :</b> effectuez une <b>action gratuite</b> de tonneau. Si vous n''avez pas l''icône d''action <img class="smallicon" src="$path/action/icone_barrelroll.png">, recevez 1 marqueur de stress. Ensuite, vous pouvez retirer 1 acquisition de cible ennemie de votre vaisseau.', 1, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 7,'R5-K6','Après avoir utilisé votre acquisition de cible, lancez 1 dé de défense. Sur un résultat <img class="smallicon" src="$path/action/icone_evade.png">, verrouillez aussitôt le même vaisseau. Vous ne pouvez cependant pas utiliser cette nouvelle acquisition de cible durant cette attaque.', 2, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 8,'Astromech R5','Pendant la phase de dénouement, choisissez une de vos cartes dégâts face visible assortie du trait <b><i>Vaisseau</i></b> et retournez-la face cachée.', 2, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 9,'R5-D8','<b>Action : </b>lancez 1 dé de défense. Sur un résultat <img class="smallicon" src="$path/action/icone_evade.png"> ou <img class="smallicon" src="$path/action/icone_focus.png">, défaussez 1 de vos cartes de dégâts face cachée.', 2, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 10,'Astromech R2','Considérez toutes les manoeuvres à vitesse 1 ou 2 comme des manoeuvres vertes.', 2, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 11,'Tourelles à canons ioniques','<b>Attaque :</b> attaquez 1 vaisseau (même s''il se situe en dehors de votre arc de tir). Si cette attaque touche la cible, cette dernière encaisse 1 dégât et reçoit 1 marqueur ionique. Ensuite, annulez <b>tous</b> les résultats des dés.', 7, 5, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 12,'Tactique de nuée','Au début de la phase de combat, choisissez 1 vaisseau allié situé à portée 1. Jusqu''à la fin de cette phase, considérez que la valeur de pilotage du vaisseau en question est égale à la vôtre.', 1, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 13,'Chef d''escouade','<b>Action :</b> choisissez 1 vaisseau situé à portée 1 ou 2 dont la valeur de pilotage est inférieur à la vôtre.  Ce vaisseau peut aussitôt effectuer 1 action gratuite.', 1, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 14,'Missiles à concussion','<b>Attaque (acquisition de cible) :</b> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque. Vous pouvez échanger 1 de vos résultats vierges contre 1 résultat <img class="smallicon" src="$path/icone_hit.png">.', 5, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 15,'Missiles groupés','<b>Attaque (acquisition de cible) :</b> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque <b>deux fois</b>.', 5, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 16,'Repousser les limites','Une fois par tour, après avoir effectué une action, vous pouvez effectuer 1 action gratuite figurant dans votre barre d''action. Recevez ensuite 1 marqueur de stress.', 1, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 17,'Tireur d''élite','Vous pouvez considérer l''intitulé "<b>Attaque (Acquisition de cible)</b>" comme un intitulé "<b>Attaque (concentration)</b>". Quand une attaque vous demande d''utiliser un marqueur d''acquisition de cible, vous pouvez utiliser un marqueur de concentration à la place.', 1, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 18,'Missiles à tête chercheuse','<b>Attaque (acquisition de cible) :</b> défaussez cette carte pour effectuer cette attaque. Le défenseur ne peut pas utiliser de marqueurs d''évasion durant cette attaque.', 5, 5, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 19,'Casse-cou','<b>Action :</b> exécutez une manoeuvre blanche (<img class="smallicon" src="$path/dial/icone_turnleft.png">1) ou (<img class="smallicon" src="$path/dial/icone_turnright.png">1). Puis recevez un marqueur de stress. Ensuite, si vous n''avez pas l''icône d''action <img class="smallicon" src="$path/action/icone_boost.png">, lancez 2 dés d''attaque et subissez les dégâts (<img class="smallicon" src="$path/icone_hit.png">) et les dégâts critiques (<img class="smallicon" src="$path/icone_criticalhit.png">) obtenus.', 1, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 20,'Insaissisable','Quand vous défendez, vous pouvez recevoir 1 marqueur de stress pour choisir 1 dé d''attaque. L''attaquant doit relancer ce dé. Si vous avez au moins 1 marqueur de stress, vous ne pouvez pas utiliser cette capacité.', 1, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 21,'Instinct de vétéran','Augmentez votre valeur de pilotage de 2.', 1, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 22,'Je les attire','Quand un vaisseau allié situé à portée 1 est touché par une attaque, vous pouvez subir 1 des résultats <img class="smallicon" src="$path/icone_criticalhit.png"> non annulés à la place de l''appareil visé.', 1, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 23,'Luke Skywalker','Quand vous effectuez une attaque qui ne touche pas, vous pouvez effectuer aussitôt une attaque d''arme principale. Vous pouvez échanger 1 résultat <img class="smallicon" src="$path/action/icone_focus.png"> contre 1 résultat <img class="smallicon" src="$path/icone_hit.png">. Vous ne pouvez pas effectuer d''autre attaque ce tour-ci.', 9, 7, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 24,'Chewbacca','Quand vous recevez une carte de dégâts, vous pouvez la défausser sur-le-champ et récupérer 1 bouclier. Ensuite, défaussez cette carte d''amélioration.', 9, 4, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 25,'Ingénieur en armement','Vous pouvez verrouiller 2 cibles (1 seule acquisition de cible par vaisseau ennemi). Quand vous verrouillez une cible, vous pouvez verrouiller 2 vaisseaux différents.', 9, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 26,'Nien Nunb',' Vous pouvez traiter toutes les manoeuvres <img class="smallicon" src="$path/dial/icone_straight.png"> comme des manoeuvres vertes.', 9, 1, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 27,'Missiles d''assaut','<b>Attaque (acquisition de cible) :</b> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque. Si cette attaque touche, chaque autre vaisseau situé à portée 1 du défenseur subit 1 dégât.', 5, 5, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 28,'Boucliers améliorés','Augmentez votre valeur de boucliers de 1.', 12, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 29,'Moteurs améliorés','Votre barre d''action gagne l''icône d''action <img class="smallicon" src="$path/action/icone_boost.png">.', 12, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 30,'Faucon Millenium','Votre barre d''action gagne l''icône d''action <img class="smallicon" src="$path/action/icone_evade.png">.', 13, 1, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 31,'Prise de risque','<b>Action :</b> jusqu''à la fin du tour, augmentez votre valeur d''arme principale de 1 et réduisez votre valeur d''agilité de 1.', 1, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ( 32,'Canon ionique','<b>Attaque :</b> attaquez 1 vaisseau. Si cette attaque touche, le défenseur subit 1 dégât et reçoit 1 marqueur ionique. Ensuite annulez le résultat de <b>tous</b> les dés.', 8, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('33','Canon laser lourd','<b>Attaque :</b> attaquez 1 vaisseau. Juste après avoir lancé vos dés d''attaque, vous devez changer tous vos résultats <img class="smallicon" src="$path/icone_criticalhit.png"> en résultats <img class="smallicon" src="$path/icone_hit.png">.', 8, 7, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('34','Canonnier','Après avoir effectué une attaque qui ne touche pas, effectuez immédiatement une attaque d''arme principale. Vous ne pouvez pas effectuer d''autre attaque ce tour-ci.', 9, 5, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('35','Copilote mercenaire','Quand vous attaquez à portée 3, vous pouvez échanger 1 de vos résultats <img class="smallicon" src="$path/icone_hit.png"> contre 1 résultat <img class="smallicon" src="$path/icone_criticalhit.png">.', 9, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('36','Charges sismiques','Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour <b>larguer</b> 1 marqueur de charges sismiques. Ce marqueur <b>explose</b> à la fin de la phase d''activation.', 6, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('37','Mines de proximité','<b>Action :</b> défaussez cette carte pour <b>larguer</b> 1 marqueur de mines de proximité. Quand un vaisseau exécute une manoeuvre, si son socle ou son gabarit de manoeuvre chevauche ce marqueur, ce marqueur <b>explose</b>.', 6, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('38','Système d''occultation','Augmentez votre valeur d''agilité de 1. Si une attaque vous touche, défaussez cette carte.', 12, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('39','Slave-1','Votre bandeau d''amélioration gagne l''icône <img class="smallicon" src="$path/card/icone_Card_torpedoes.png">.', 13, 1, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('40','Autoblaster','<b>Attaque :</b> attaquez 1 vaisseau. Vos résultats <img class="smallicon" src="$path/icone_hit.png"> ne peuvent pas être annulés par des dés de défense. Le défenseur peut annuler les résultats <img class="smallicon" src="$path/icone_criticalhit.png"> avant les résultats <img class="smallicon" src="$path/icone_hit.png">.', 8, 5, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('41','Système de commande de tir','Après avoir effectué une attaque, vous pouvez verrouiller le défenseur.', 10, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('42','Torpilles à protons avancées','<b>Attaque (acquisition de cible) :</b> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque. Vous pouvez échanger jusqu''à 3 de vos résultats vierge contre autant de résultats <img class="smallicon" src="$path/action/icone_focus.png">.', 4, 6, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('43','Montée d''adrénaline','Quand vous révélez une manoeuvre rouge, vous pouvez défausser cette carte pour traiter cette manoeuvre comme une manoeuvre blanche jusqu''à la fin de la phase d''activation.', 1, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('44','Bombes à protons','Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour <b>larguer</b> 1 marqueur de bombe à protons. Ce marqueur <b>explose</b> à la fin de la phase d''activation.', 6, 5, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('45','Agent de renseignement','Au début de la phase d''activation, choisissez 1 vaisseau ennemi situé à portée 1-2. Vous pouvez regarder la manoeuvre choisie pour ce vaisseau.', 9, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('46','Officier en reconnaissance','Quand vous effectuez une action de concentration, assignez 1 marqueur de concentration supplémentaire à votre vaisseau.', 9, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('47','Saboteur','Après avoir effectué une attaque contre un vaisseau ennemi, vous pouvez subir 2 dégâts pour infliger 1 dégât critique à cet appareil.', 9, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('48','Tourelles blaster','<b>Attaque (concentration) :</b>  dépensez un marqueur concentration pour effectuer cette attaque contre 1 vaisseau (même s''il se situe en dehors de votre arc de tir).', 7, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('49','Moldy Crow','Lors de la phase de dénouement, ne retirez pas les marqueurs concentrations inutilisés de votre vaisseau.', 13, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('50','Dark Vador','Après avoir effectué une attaque contre un vaisseau ennemi, vous pouvez subir 2 dégâts pour infliger 1 dégât critique à cet appareil.', 9, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('51','Navigateur','Quand vous révélez une manoeuvre, vous pouvez tourner le cadran sur une autre manoeuvre ayant la même direction. Vous ne pouvez pas tourner le cadran sur une manoeuvre rouge si vous avez au moins un marqueur de stress.', 9, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('52','Pilote instructeur','Quand vous défendez, vous pouvez relancer 1 de vos résultats <img class="smallicon" src="$path/action/icone_focus.png">. Si la valeur de pilotage de l''attaquant est de 2 ou moins, vous pouvez relancer 1 de vos résultats vierges à la place.', 9, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('53','Prisonnier rebelle','Une fois par tour, le premier vaisseau qui vous déclare comme la cible d''une attaque reçoit aussitôt 1 marqueur de stress.', 9, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('54','Brouilleur de senseurs','Quand vous défendez, vous pouvez changer 1 des résultats <img class="smallicon" src="$path/icone_hit.png"> de l''attaquant en résultat <img class="smallicon" src="$path/action/icone_focus.png">. L''attaquant ne peut pas relancer le dé au résultat modifié.', 10, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('55','Senseurs avancés','Juste avant de révéler votre manoeuvre, vous pouvez effectuer 1 action gratuite. Si vous utilisez cette capacité, vous devez passer l''étape "Effectuer une action" ce tour-ci.', 10, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('56','Lasers antipoursuite','Quand un vaisseau ennemi exécute une manoeuvre l''obligeant à chevaucher votre appareil, lancez 1 dé d''attaque. Sur un résultat <img class="smallicon" src="$path/icone_hit.png"> ou <img class="smallicon" src="$path/icone_criticalhit.png">, le vaisseau ennemi subi 1 dégât.', 12, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('57','ST-321','Quand vous verrouillez une cible, vous pouvez verrouiller n''importe quel vaisseau ennemi situé dans la zone de jeu.', 13, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('58','Manoeuvre improbable','Quand vous attaquez un vaisseau situé dans votre arc de tir, si vous n''êtes pas dans l''arc de tir de ce vaisseau, réduisez sa valeur d''agilité de 1 (jusqu''à un minimum de 0).', 1, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('59','R7-T1','<b>Action :</b> choisissez un vaisseau ennemi situé à portée 1-2. Si vous êtes dans son arc de tir, vous pouvez le verrouiller. Ensuite, vous pouvez effectuer une action d''accélération gratuite.', 2, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('60','Astromech R7','Une fois par tour, quand vous défendez, si vous avez verrouillé l''attaquant, vous pouvez dépenser l''acquisition de cible pour choisir tout ou partie des dés d''attaque. L''attaquant doit relancer les dés choisis.', 2, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('61','Torpilles fléchettes','<b>Attaque (acquisition de cible) :</b> défaussez cette carte et dépensez votre acquisition de cible pour effectuer cette attaque. Après que vous avez effectué cette attaque, le défenseur reçoit 1 marqueur de stress si sa valeur de coque est de 4 ou moins.', 4, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('62','Leurre','Au début de la phase de Combat, vous pouvez choisir un vaisseau allié situé à portée 1-2. Echangez votre valeur de pilotage avec celle de ce vaisseau jusqu''à la fin de la phase.', 1, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('63','Ailier','Au début de la phase de combat, retirez 1 marqueur de stress d''un autre vaisseau allié situé à portée 1.', 1, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('64','Missiles à impulsion ionique','<b>Attaque (acquisition de cible) :</b> défaussez cette carte pour effectuer cette attaque. Si cette attaque touche, le défenseur subit 1 dégât et reçoit 2 marqueurs ioniques. Ensuite annulez le résultat de <b>tous</b> les dés.', 5, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('65','Munitions à sureté intégrée','Quand vous attaquez avec une arme secondaire qui vous demande de la défausser pour effectuer cette attaque, défaussez-la seulement si l''attaque touche.', 12, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('66','Prédateur','Quand vous attaquez, vous pouvez relancer 1 dé d''attaque. Si la valeur de pilotage du défenseur est de "2" ou moins, vous pouvez relancer jusqu''à 2 dés d''attaque à la place.', 1, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('67','Tacticien','Après que vous avez effectué une attaque contre un vaisseau situé dans votre arc de tir à portée 2, ce vaisseau reçoit 1 marqueur de stress.', 9, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('68','Système d''occultation avancé','Après avoir effectué une attaque, vous pouvez effectuer une action d''occultation gratuite.', 12, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('69','Accélérateur de particules de Stygium','Quand vous vous désoccultez ou effectuez une action d''occultation, vous pouvez effectuer une action d''évasion gratuite.', 12, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('70','Opportuniste','Quand vous attaquez, si le défenseur n''a pas de marqueurs de concentration ou d''évasion, vous pouvez recevoir 1 marqueur de stress pour lancer 1 dé d''attaque supplémentaire. Vous ne pouvez pas utiliser cette capacité si vous avez au moins un marqueur de stress.', 1, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('71','Coque améliorée','Augmentez votre valeur de coque de 1.', 12, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('72','Ordinateur de visée','Votre barre d''action gagne l''icône d''action <img class="smallicon" src="$path/action/icone_targetlock.png">.', 12, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('73','TIE de la garde royale','Vous pouvez vous équiper de 2 améliorations Modification différentes (au lieu de 1). Cette carte ne peut pas équiper un vaisseau dont la valeur de pilotage est de "4" ou moins.', 13, 0, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('74','Kyle Katarn','Après avoir retiré un marqueur de stress de votre vaisseau, vous pouvez assigner un marqueur de concentration à votre vaisseau.', 9, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('75','Jan Ors','Une fois par tour, quand un vaisseau allié situé à portée 1-3 effectue une action de concentration ou reçoit un marqueur de concentration, vous pouvez assigner à ce vaisseau un marqueur d''évasion à la place.', 9, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('76','Radoub à Chardaan','Cette carte a un coût en points d''escadron négatif.', 5,'-2', 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('77','Roquettes à proton','<b>Attaque (concentration) : </b> défaussez cette carte pour effectuer cette attaque. Vous pouvez lancer un nombre de dés d''attaque additionnels égal à votre valeur d''agilité, jusqu''à un maximum de 3 dés additionnels.', 5, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('78','Pilote d''essais sur A-wing','Votre bandeau d''amélioration gagne 1 icône d''amélioration <img class="smallicon" src="$path/card/icone_Card_Talents.png">. Vous ne pouvez pas équiper 2 cartes d''amélioration <img class="smallicon" src="$path/card/icone_Card_Talents.png"> identiques. Vous ne pouvez pas vous équiper de cette carte si votre valeur de pilotage est de "1" ou moins.', 13, 0, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('79','Radars améliorés','Durant la phase d''Activation, considérez que votre valeur de pilotage est égale à "0".', 10, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('80','B-wing/E2','Votre bandeau d''amélioration gagne l''icône d''amélioration <img class="smallicon" src="$path/card/icone_Card_Crew.png">.', 12, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('81','R5-P9','A la fin de la phase de combat, vous pouvez dépenser 1 de vos marqueurs de concentration pour récupérer 1 bouclier (jusqu''à concurrence de votre valeur de boucliers).', 1, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('82','R3-A2','Quand vous déclarez la cible de votre attaque, si le défenseur est dans votre arc de tir, vous pouvez recevoir 1 marqueur de stress pour que le défenseur en reçoive 1 aussi.', 1, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('83','R2-D6','Votre bandeau d''amélioration gagne l''icône d''amélioration <img class="smallicon" src="$path/card/icone_Card_Talents.png">. Vous ne pouvez pas vous équiper de cette amélioration si vous avez déjà l''icône d''amélioration <img class="smallicon" src="$path/card/icone_Card_Talents.png"> ou si votre valeur de pilotage est de "2" ou moins.', 1, 1, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('84','R4-D6','Quand vous êtes touché par une attaque ayant généré au moins 3 résultats <img class="smallicon" src="$path/icone_hit.png"> non annulés, vous pouvez annuler les résultats que vous souhaitez jusqu''à ce qu''il n''en reste que 2. Pour chaque résultat annulé de la sorte, recevez 1 marqueur de stress.', 1, 1, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('85','Jan Dodonna','Quand un autre vaisseau allié situé à portée 1 attaque, il peut échanger 1 de ses résultats <img class="smallicon" src="$path/icone_hit.png"> contre un résultat <img class="smallicon" src="$path/icone_criticalhit.png">.', 9, 6, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('86','Torynn Farr','<b>Action :</b> dépensez n''importe quelle quantité d''énergie pour choisir autant de vaisseaux ennemis situés à portée 1-2. Retirez tous les marqueurs de concentration, d''évasion et d''acquisition cible bleus de ces vaisseaux.', 9, 6, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('87','Carlist Rieekan','Au début de la phase d''activation, vous pouvez défausser cette carte pour traiter la valeur de pilotage de chaque vaisseau allié comme si elle s''élevait à "12", jusqu''à la fin de la phase.', 9, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('88','Droïde de réparation WED-15','<b>Action :</b> dépensez 1 énergie pour défausser 1 de vos cartes de dégâts face cachée, ou dépensez 3 énergie pour défausser 1 de vos cartes de dégât face visible.', 9, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('89','Outils de slicer','<b>Action :</b> choisissez 1 ou plusieurs vaisseaux ennemis situé à portée 1-3 ayant un marqueur de stress. Pour chaque vaisseau choisi, vous pouvez dépenser 1 énergie pour forcer ce vaisseau à subir 1 dégât.', 14, 7, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('90','Brouilleur de fréquence','Quand vous effectuez une action de brouillage, choisissez 1 vaisseau ennemi qui n''a pas de marqueur de stress se situe à portée 1 du vaisseau brouillé. Le vaisseau choisi reçoit 1 marqueur de stress.', 14, 4, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('91','Amplificateur comm','<b>Energie :</b> dépensez 1 énergie pour retirer tous les marqueurs de stress d''un vaisseau allié situé à portée 1-3. Ensuite, assignez 1 marqueur de concentration à ce vaisseau.', 14, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('92','Projecteur de boucliers','Quand un vaisseau ennemie devient le vaisseau actif durant la phase de combat, vous pouvez dépenser 3 énergie pour l''obliger à vous attaquer, si possible, jusqu''à la fin de la phase.', 14, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('93','Réserves de gaz Tibanna','<b>Energie :</b> vous pouvez défausser cette carte pour gagner 3 énergie.', 14, 4, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('94','Générateur de bouclier auxiliaire','A la fin de chaque tour, vous pouvez dépenser 1 énergie pour récupérer 1 bouclier (jusqu''à concurrence de votre valeur de boucliers).', 14, 3, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('95','Emetteur EM','Quand vous gênez une attaque, le défenseur lance 3 dés de défense supplémentaires (au lieu de 1).', 14, 3, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('96','Booster','Juste avant de dévoiler votre cadran de manoeuvres, vous pouvez dépenser 1 énergie pour exécuter une manoeuvre (<img class="smallicon" src="$path/dial/icone_straight.png">1) blanche. Vous ne pouvez pas utiliser cette capacité si elle vous fait chevaucher un autre vaisseau.', 14, 3, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('97','Compartiments supplémentaires',' Une fois par tour, quand vous êtes sensé recevoir une carte de dégâts face visible, vous pouvez la piocher dans le paquet de dégâts de poupe ou de proue.', 14, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('98','Préparé pour le combat','Augmentez votre valeur de coque de 2 et votre valeur de boucliers de 1.', 12, 10, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('99','Bright Hope','Un marqueur de renforcement assigné à votre proue ajoute 2 résultats <img class="smallicon" src="$path/action/icone_evade.png"> (au lieu de 1).', 13, 5, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('100','Quantum Storm','Au début de la phase de dénouement, si vous avez 1 marqueur d''énergie ou moins, vous gagnez 1 marqueur d''énergie.', 13, 4, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('101','Duty Free','Quand vous effectuez une action de brouillage, vous pouvez choisir un vaisseau ennemi situé à portée 1-3 (au lieu de portée 1-2).', 13, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('102','Raymus Antilles','Au début de la phase d''activation, choisissez 1 vaisseau ennemi à portée 1-3. Vous pouvez regarder la manoeuvre choisie pour ce vaisseau. Si la manoeuvre est blanche, assignez 1 marqueur de stress à ce vaisseau.', 9, 6, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('103','Leia Organa','Au début de la phase d''activation, vous pouvez défausser cette carte pour permettre à tous les vaisseaux alliés qui dévoilent une manoeuvre rouge de considérer cette dernière comme une manoeuvre blanche jusqu''à la fin de la phase.', 9, 4, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('104','R2-D2','A la fin de la phase de dénouement, si vous n''avez pas de boucliers, vous pouvez récupérer 1 bouclier et lancer 1 dé d''attaque. Sur un résultat <img class="smallicon" src="$path/icone_hit.png">, prenez au hasard 1 de vos cartes dégâts face cachée, retournez-la et résolvez-la.', 9, 4, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('105','Coordinateur de visée','<b>Energie : </b> vous pouvez dépenser 1 énergie pour choisir un vaisseau allié situé à portée 1-2. Verrouillez une cible, puis assignez le marqueur d''acquisition de cible bleu au vaisseau choisi.', 9, 4, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('106','Z-6PO','Une fois par tour, avant de lancer 1 ou plusieurs dés de défense, vous pouvez tenter d''en deviner à voix haute le nombre de résultats <img class="smallicon" src="$path/action/icone_evade.png">. Si vous obtenez le nombre annoncé (avant de modifier des dés), ajoutez 1 résultat <img class="smallicon" src="$path/action/icone_evade.png">.', 9, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('107','Han Solo','Quand vous attaquez, si vous avez verrouillé le défenseur, vous pouvez dépenser ce marqueur acquisition de cible pour changer tous vos résultats <img class="smallicon" src="$path/action/icone_focus.png"> en résultats <img class="smallicon" src="$path/icone_hit.png">.', 9, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('108','Turbolaser','<b>Attaque (énergie) :</b> dépensez 2 énergies de cette carte pour effectuer cette attaque. Le défenseur double sa valeur d''agilité contre cette attaque. Vous pouvez changer 1 de vos résultats <img class="smallicon" src="$path/action/icone_focus.png"> en résultat <img class="smallicon" src="$path/icone_hit.png">.', 15, 8, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('109','Canons quadrilaser','<b>Attaque (énergie) :</b> dépensez 1 énergie de cette carte pour effectuer cette attaque. Si cette attaque ne touche pas, vous pouvez aussitôt dépenser 1 énergie de cette carte pour effectuer à nouveau cette attaque.', 15, 6, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('110','Equipe de mécaniciens','Durant la phase d''activation, quand vous dévoilez une manoeuvre <img class="smallicon" src="$path/dial/icone_straight.png">, gagnez 1 énergie supplémentaire lors de l''étape "Gagner de l''énergie".', 16, 4, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('111','Equipe d''artilleurs','Une fois par tour, quand vous attaquez avec une arme secondaire, vous pouvez dépenser 1 énergie pour changer 1 de vos résultats vierges en résultat <img class="smallicon" src="$path/icone_hit.png">.', 16, 4, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('112','Equipe des senseurs','Quand vous verrouillez une cible, vous pouvez verrouiller un vaisseau ennemi à portée 1-5 (au lieu de portée 1-3).', 16, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('113','Réacteur à ionisation','<b>Energie :</b> dépensez 5 énergie de cette carte et défaussez-la pour que chaque autre vaisseau situé à portée 1 subisse 1 dégât et reçoivent un marqueur ionique.', 14, 4, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('114','Tantive IV','Le bandeau d''amélioration de votre proue gagne 1 icône <img class="smallicon" src="$path/card/icone_Card_Crew.png"> et 1 icône <img class="smallicon" src="$path/card/icone_Card_Team.png"> d''améliorations supplémentaires.', 13, 4, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('115','Dodonna''s Pride','Quand vous effectuez une action de coordination, vous pouvez choisir 2 vaisseaux alliés (au lieu de 1). Chacun de ces vaisseaux peut effectuer 1 action gratuite.', 13, 4, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('116','Jaina''s Light','Quand vous défendez, une fois par attaque, si vous recevez une carte de dégâts face visible, vous pouvez la défausser et piocher une autre carte dégâts face visible.', 13, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('117','Loup solitaire','Quand vous attaquez ou défendez, s''il n''y a pas de vaisseaux alliés à portée 1-2, vous pouvez relancer 1 de vos résultats vierges', 1, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('118','Restez en ligne','Quand vous révélez une manoeuvre, vous pouvez tourner votre cadran sur une autre manoeuvre ayant la même vitesse. Traitez cette manoeuvre comme une manoeuvre rouge.', 1, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('119','Lando Calrissian','<b>Action :</b> lancez 2 dés de défense. Pour chaque résultat <img class="smallicon" src="$path/action/icone_focus.png">, assignez 1 marqueur de concentration à votre vaisseau. Pour chaque résultat <img class="smallicon" src="$path/action/icone_evade.png">, assignez 1 marqueur d''évasion à votre vaisseau.', 9, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('120','Dash Rendar','Vous pouvez effectuer des attaques tout en chevauchant un obstacle. Vos attaques ne peuvent pas être gênées.', 9, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('121','"Leebo"','<b>Action : </b> effectuez une action d''accélération gratuite. Ensuite, recevez 1 marqueur ionique.', 9, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('122','Contres-mesures','Au début de la phase de combat, vous pouvez défausser cette carte pour augmenter votre valeur d''agilité de 1 jusqu''à la fin du tour. Ensuite, vous pouvez retirer 1 acquisition de cible ennemie de votre vaisseau.', 12, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('123','Interface expérimentale','Une fois par tour, après avoir effectué une action, vous pouvez effectuer 1 action gratuite d''une de vos cartes d''améliorations équipées ayant l''entrée "<b>ACTION : </b>". Ensuite, recevez 1 marqueur de stress.', 12, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('124','Outrider','Tant que vous êtes équipé d''une carte d''amélioration <img class="smallicon" src="$path/card/icone_Card_Cannons.png">, vous ne pouvez pas effectuer une attaque d''arme principale et vous pouvez effectuer une attaque d''arme secondaire <img class="smallicon" src="$path/card/icone_Card_Cannons.png"> contre des vaisseaux en dehors de votre arc de tir.', 13, 5, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('125','Impitoyable','Après avoir effectué une attaque qui touche, vous <b>devez</b> choisir 1 autre vaisseau situé à portée 1 du défenseur (autre que vous-même). Ce vaisseau subit 1 dégât.', 1, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('126','Intimidation','Tant que vous êtes au contact avec un vaisseau ennemi, réduisez de 1 la valeur d''agilité de ce vaisseau', 1, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('127','Torpilles ioniques','<b>Attaque (acquisition de cible) :</b> dépensez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque. Si cette attaque touche, le défenseur et chaque vaisseau situé à portée 1 du défenseur reçoivent 1 marqueur ionique.', 4, 5, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('128','Ysanne Isard','Au début de la phase de combat, si vous n''avez pas de boucliers et qu''au moins 1 carte de dégât est assignée à votre vaisseau, vous pouvez effectuer une action d''évasion gratuite.', 9, 4, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('129','Officier de la flotte','<b>Action : </b> choisissez jusqu''à 2 vaisseaux alliés situés à portée 1-2 et assignez 1 marqueur de concentration à chacun d''eux. Ensuite, recevez 1 marqueur de stress.', 9, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('130','Moff Jerjerrod','Quand vous recevez une carte de dégât face visible, vous pouvez défausser cette carte d''amélioration ou une autre carte d''amélioration <img class="smallicon" src="$path/icone_crew.png"> pour retourner cette carte de dégât face cachée (sans en résoudre l''effet).', 9, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('131','Mara Jade','A la fin de la phase de combat, chaque vaisseau ennemi situé à portée 1 qui n''a pas de marqueur de stress reçoit 1 marqueur de stress.', 9, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('132','Brouilleur tactique','Votre vaisseau peut gêner les attaques ennemies.', 12, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('133','Dauntless','Après avoir exécuté une manoeuvre qui vous fait chevaucher un autre vaisseau, vous pouvez effectuer 1 action gratuite. Ensuite, recevez 1 marqueur de stress.', 13, 2, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('134','Droïde de sécurité K4','Après avoir exécuté une manoeuvre verte, vous pouvez verrouiller une cible.', 9, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('135','Technicien hors la loi','Après avoir exécuté une manoeuvre rouge, vous pouvez assigner 1 marqueur de concentration à votre vaisseau.', 9, 2, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('136','Greedo',' La première fois que vous attaquez à chaque tour et la première fois que vous défendez à chaque tour, la première carte de dégât infligée l''est face visible.', 9, 1, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('137','R4-B11','Quand vous attaquez, si vous avez verrouillé  le défenseur, vous pouvez dépenser l''acquisition de cible pour choisir tout ou partie des dés de défense. Le défenseur doit relancer les dés choisis.', 3, 3, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('138','Agromech R4','Quand vous attaquez, après avoir dépensé un marqueur de concentration, vou pouvez verrouiller le défenseur.', 3, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('139','Astromech Récupéré','Quand vous recevez une carte de dégâts ayant le trait <b>Vaisseau</b>, vous pouvez immédiatement la défausser (avant d''en résoudre l''effet). Puis, défaussez cette carte d''amélioration.', 3, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('140','Astromech Déglingué','Vous pouvez considérer toutes les manoeuvres de vitesse 3 comme des manoeuvres vertes.', 3, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('141','"Génie"','Si vous êtes équipé d''une bombe qui peut être larguée avant que vous ne révéliez votre manoeuvre, vous pouvez au lieu de cela larguer la bombe <b>après</b> avoir exécuté votre manoeuvre.', 3, 0, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('142','Tourelle autoblaster','<b>Attaque :</b> attaquez 1 vaisseau (même s''il se trouve en dehors de votre arc de tir). Vos résultats <img class="smallicon" src="$path/icone_hit.png"> ne peuvent pas être annulés par les dés de défense. Le défenseur peut annuler des résultats <img class="smallicon" src="$path/icone_criticalhit.png"> avant les résultats <img class="smallicon" src="$path/icone_hit.png">', 7, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('143','Chargement de bombes','Votre bandeau d''amélioration gagne l''icône d''amélioration <img class="smallicon" src="$path/card/icone_Card_Bombs.png">.', 4, 0, 0, 1);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('144','Blaster "De la Mort"','<b>Attaque :</b> défaussez cette carte pour attaquer 1 vaisseau (même s''il est en dehors de votre arc de tir).', 11, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('145','Andrasta','Votre bandeau d''amélioration gagne 2 icônes d''amélioration <img class="smallicon" src="$path/card/icone_Card_Bombs.png"> supplémentaires.', 13, 0, 1, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('146','Y-wing BLT-A4','Vous ne pouvez pas attaquer les vaisseaux en dehors de votre arc de tir. Après avoir effectué une attaque d''arme principale, vous pouvez effectuer immédiatement une attaque  avec une arme secondaire <img class="smallicon" src="$path/card/icone_Card_Turret.png">.', 13, 0, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('147','Calcul',' Quand vous attaquez, vous pouvez dépenser un marqueur de concentration pour changer 1 de vos résultats <img class="smallicon" src="$path/action/icone_focus.png"> en un résultat <img class="smallicon" src="$path/icone_criticalhit.png">.', 1, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('148','Garde du corps','Au début de la phase de combat, vous pouvez dépenser un marqueur de concentration pour choisir un vaisseau allié à portée 1 ayant une valeur de pilotage supérieur à la vôtre. Augmentez sa valeur d''agilité de 1 jusqu''à la fin du tour.', 1, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('149','Correcteur de Précision','Quand vous attaquez, vous pouvez annuler le résultat de tous vos dés. Ensuite, vous pouvez ajouter 2 résultats <img class="smallicon" src="$path/icone_hit.png">. Vos dés ne peuvent pas être modifiés à nouveau lors de cette attaque.', 10, 3, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('150','Amortisseurs inertiels','Quand vous révélez votre manoeuvre, vous pouvez défausser cette carte pour exécuter une manoeuvre (<img class="smallicon" src="$path/dial/icone_stationary.png">0) blanche à la place. Ensuite, recevez 1 marqueur de stress.', 11, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('151','Autopropulseurs','Quand vous défendez, si vous êtes au-delà de portée 2 ou en dehors de l''arc de tir de l''attaquant, vous pouvez changer 1 de vos résultats vierges par un résultat <img class="smallicon" src="$path/action/icone_evade.png">. Vous ne pouvez vous équiper de cette carte que si vous avez l''icône d''action <img class="smallicon" src="$path/action/icone_boost.png">.', 12, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('152','Virago','Votre bandeau d''amélioration gagne les icônes d''amélioration <img class="smallicon" src="$path/card/icone_Card_Systems.png"> et <img class="smallicon" src="$path/card/icone_Card_Illicit.png">. Vous ne pouvez pas vous équiper de cette carte si votre valeur de pilotage est de "3" ou moins.', 13, 1, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('153','Canon "lacérateur"','<b>Attaque :</b> attaquez 1 vaisseau. Quand vous attaquez, vous pouvez échanger 1 de vos résultats <img class="smallicon" src="$path/icone_hit.png"> contre un résultat <img class="smallicon" src="$path/icone_criticalhit.png">.', 8, 4, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('154','Canon à fléchettes','<b>Attaque :</b>  attaquez 1 vaisseau. Si cette attaque touche, le défenseur subit 1 dégât et, si le défenseur n''est pas sous l''effet du stess, il reçoit aussi 1 marqueur de stress. Ensuite annulez le résultat de <b>tous</b> les dés.', 8, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('155','Intercepteur "Scyk lourd"','Votre bandeau d''amélioration gagne l''icône d''amélioration <img class="smallicon" src="$path/card/icone_Card_Cannons.png">, <img class="smallicon" src="$path/card/icone_Card_Torpedoes.png"> ou <img class="smallicon" src="$path/card/icone_Card_Missiles.png">.', 13, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('156','Salve Automatique','Quand vous êtes détruit, chaque vaisseau à portée 1 subit 1 dégât.', 11, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('157','Dispositif de Retour','Lors de la phase de combat, au lieu d''effectuer des attaques, vous pouvez recevoir 1 marqueur ionique et subir 1 dégât pour choisir 1 vaisseau ennemi à portée 1. Ce vaisseau subit 1 dégât.', 11, 2, 0, 0);
insert into XWING.UPGRADE (ID, NAME, DESCRIPTION, UPGRADE_TYPE_ID, COST, UNIQUENESS, LIMITED)
values ('158','IG-2000','Vous avez la capacité de pilote de chaque autre vaisseau allié avec la carte d''amélioration <i>IG-2000</i> (en plus de votre propre capacité de pilote).', 13, 0, 0, 0);

commit;
