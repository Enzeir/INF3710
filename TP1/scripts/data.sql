
INSERT INTO Departement VALUES ('Informatique', TO_DATE('12-05-1966','DD:MM:YYYY'), 'Montreal', '514-654-4586');
INSERT INTO Departement VALUES ('Electrique', TO_DATE('10-03-1930','DD:MM:YYYY'), 'Toronto', '612-725-2916');
INSERT INTO Departement VALUES ('Mathematiques', TO_DATE('11-02-1905','DD:MM:YYYY'), 'Edmomton', '753-521-9750');
INSERT INTO Departement VALUES ('Mecanique', TO_DATE('25-08-1915','DD:MM:YYYY'), 'Ottawa', '286-396-1275');
INSERT INTO Departement VALUES ('Physique', TO_DATE('19-12-1904','DD:MM:YYYY'), 'Vancouver', '743-545-4892');

INSERT INTO Equipe VALUES ('Reseaux', TO_DATE('12-05-1985','DD:MM:YYYY'), 1, 'Guy Carbonneau', 'Informatique');
INSERT INTO Equipe VALUES ('Base de donnees', TO_DATE('17-08-1970','DD:MM:YYYY'), 2, 'Bryan Colangelo', 'Informatique');
INSERT INTO Equipe VALUES ('Laser', TO_DATE('08-03-1975','DD:MM:YYYY'), 2, 'Bryan Murray', 'Physique');
INSERT INTO Equipe VALUES ('Robotique', TO_DATE('03-11-1960','DD:MM:YYYY'), 3, 'Alain Vigneault', 'Mecanique');
INSERT INTO Equipe VALUES ('Integration', TO_DATE('16-10-1930','DD:MM:YYYY'), 2, 'John Witt', 'Mathematiques');
INSERT INTO Equipe VALUES ('Condensateurs', TO_DATE('16-10-1940','DD:MM:YYYY'), 3, 'James McKenzie', 'Electrique');


INSERT INTO chercheur VALUES ('M45673','Steve', 'Begin','doctorat', 75000, 'Reseaux');
INSERT INTO chercheur VALUES ('M48543','Maxime', 'Leblanc','postdoc', 78000, 'Base de donnees');
INSERT INTO chercheur VALUES ('M46585','Alex', 'Kovalev','postdoc', NULL, 'Base de donnees');
INSERT INTO chercheur VALUES ('M45142','Maxime', 'Lapierre','maîtrise', NULL, 'Reseaux');
INSERT INTO chercheur VALUES ('M25476','Nik', 'Andropov','doctorat', 85000, 'Condensateurs');
INSERT INTO chercheur VALUES ('M22556','Jason', 'Blake','postdoc', NULL, 'Condensateurs');
INSERT INTO chercheur VALUES ('M11345','Cody', 'Bass','maîtrise', NULL, 'Integration');
INSERT INTO chercheur VALUES ('M15643','Jason', 'Spazza','doctorat', 67000, 'Integration');
INSERT INTO chercheur VALUES ('M57785','Sam', 'Gagner','maîtrise', 90000, 'Robotique');
INSERT INTO chercheur VALUES ('M52135','Jarrett', 'Stoll','postdoc', NULL, 'Robotique');
INSERT INTO chercheur VALUES ('M62211','Mike', 'Brown','maîtrise', NULL, 'Laser');
INSERT INTO chercheur VALUES ('M62338','Marc-Andre', 'Bernier','postdoc', 65000, 'Laser');


INSERT INTO Article (titreArt, nbrPages, dateSoumission, auteur, coauteur) VALUES ('Une approche de l''instrument augmenté : le cas de la guitare électrique', 20, TO_DATE('11-04-2008 19:38:47', 'DD:MM:YYYY HH24:MI:SS'), 'M22556', 'M25476');
INSERT INTO Article (titreArt, nbrPages, dateSoumission, auteur, coauteur) VALUES ('Le système de développement intelligent de la gestion des systèmes d''information', 15, TO_DATE('16-05-2007 20:05:12', 'DD:MM:YYYY HH24:MI:SS'), 'M48543', 'M46585');
INSERT INTO Article VALUES ('Analyse des techniques de vérification des modèles', 8, TO_DATE('17-06-2006 20:15:32', 'DD:MM:YYYY HH24:MI:SS'), 'M45673', 'M45142');
INSERT INTO Article VALUES ('Interagir avec un objet mixte: propriétés physique et numérique', 9, TO_DATE('08-07-2005 19:07:11', 'DD:MM:YYYY HH24:MI:SS'), 'M62338', 'M62211');
INSERT INTO Article VALUES ('Langage ordinaire et modélisation mathématique', 11, TO_DATE('09-08-2004 20:00:16', 'DD:MM:YYYY HH24:MI:SS'), 'M15643', 'M11345');

SELECT * FROM departement;
SELECT * FROM equipe;
SELECT * FROM chercheur;
SELECT * FROM article;

/*
INSERT INTO departement VALUES ('Mecanique', TO_DATE('25-08-1915','DD:MM:YYYY'), 'Quebec', '438-960-3058');
*/
INSERT INTO chercheur VALUES ('M87341','Mao', 'Tse-Dong','doctorat', 80000, 'Robotique');

ALTER TABLE departement ADD universite VARCHAR(20) DEFAULT 'Polytechnique';

COMMENT ON TABLE departement IS 'Test Comment';

DROP TABLE departement CASCADE;

SELECT * FROM equipe;


