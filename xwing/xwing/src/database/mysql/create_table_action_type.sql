CREATE TABLE XWING.ACTION_TYPE (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(255),
    icon VARCHAR(30) NOT NULL);

insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('1','Esquive','Gagner un marqueur esquive', 'icone_evade.png');
insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('2','Concentration','Gagner un marqueur concentration', 'icone_focus.png');
insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('3','Acquisition de cible','Placer une cible sur un ennemi à portée', 'icone_targetlock.png');
insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('4','Tonneau','Se déplacer latéralement à l''aide d''un gabarit 1', 'icone_barrelroll.png');
insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('5','Accélération','Avancer a l''aide d''un gabarit 1', 'icone_boost.png');
insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('6','Occultation','Gagner un marqueur occultation', 'icone_cloak.png');
insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('7','Récupération','Récupérer des boucliers à partir de l''énergie disponible', 'icone_recover.png');
insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('8','Renforcement','Gagner un marqueur esquive pour tous les jets de défense', 'icone_reinforce.png');
insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('9','Brouillage','Ajouter 2 marqueurs de stress à un vaisseau ennemi à portée 1-2', 'icone_jam.png');
insert into XWING.ACTION_TYPE (id, name, description, icon)
values ('10','Coordination','Un vaisseau allié à portée 1-2 peut faire une action gratuite', 'icone_coordinate.png');

commit;
