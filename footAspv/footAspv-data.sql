/*
* Auteur: Christophe DUFOUR
* Description
* Insetion de données "de test" dans la base de l'association
* sportive Perriots Vauban
*
* Contexte
* Aston - Cours de conception de base de données
*/

USE footAspv;

INSERT INTO role (nom) VALUES 
    ("Président"), 
    ("Secrétariat"), 
    ("Webmaster")
    ;

INSERT INTO club (nom, anneeCrea, logo, adresse, nbEquipe) VALUES
    ("AS Perriots Vauban", 1912, "", "", 32),
    ("SC Schiltigheim", 1936, "", "", 12),
    ("RC Strasbourg", 1902, "", "", 19),
    ("Menora", 1966, "", "", 12),
    ("Soleil Bischeim", 1953, "", "", 14),
    ("FC Cronembourg", 1938, "", "", 30)
    ;

INSERT INTO contact (club, role, nom, prenom, tel, mail) VALUES
    (1, 1, "Weiss", "Pierre", "+33 (7) 10 10 25 26", "p.weiss@orange.fr"),
    (1, 3, "El Khazraji", "Yassine", "", "yaya@gmail.com")
    ;

INSERT INTO equipe (club, catAge, saison) VALUES
    (1, "u6", "2020-2021"),
    (1, "u7", "2020-2021"),
    (1, "u8", "2020-2021"),
    (1, "u9", "2020-2021"),
    (1, "u10", "2020-2021"),
    (1, "u11", "2020-2021"),
    (1, "u12", "2020-2021"),
    (2, "u6", "2020-2021"),
    (2, "u7", "2020-2021"),
    (2, "u8", "2020-2021"),
    (2, "u9", "2020-2021")
    ;

INSERT INTO joueur (nom, prenom, dateNaiss, adresse, tel, mail, etatCertif, etatCotis, equipe) VALUES
    ("Sayde", "Nicolas", "2009-11-05","", "", "", 1, 1, 7),
    ("Sayde", "Maxime", "2009-11-05","", "", "", 1, 1, 7),
    ("Bartos", "Nathan", "2009-10-03","", "", "", 1, 0, 7)
    ;

INSERT INTO entraineur (nom, prenom, dateNaiss, adresse, tel, mail, etatCertif, equipe) VALUES
    ("Burgmann", "Philippe", "1956-11-05","", "", "", 1, 1),
    ("Pochet", "Lionel", "1978-02-02","", "", "", 0, 7),
    ("Fraise", "Antoine", "1977-01-10","", "", "", 1, 7)
    ;

INSERT INTO diplome (nom) VALUES
    ("BMF"),
    ("BEF"),
    ("DES"),
    ("BEFF"),
    ("BEPF")
    ;

INSERT INTO competition (nom, saison, categorie) VALUES
    ("championnat district", "2020-2021", "championnat"),
    ("coupe Crédit Mutuel", "2020-2021", "coupe")
    ;

INSERT INTO rencontre (competition, date, equipe1, equipe2, score1, score2) VALUES
    (1, "2021-02-01 17:00", 1, 2, 4, 2),
    (1, "2021-02-02 18:00", 1, 8, 0, 10)
    ;

INSERT INTO entraineur_diplome (entraineur, diplome) VALUES
    (1, 2),
    (1, 3),
    (3, 1)
    ;
