USE cineOdyssee;

INSERT INTO pays (nom) VALUES
    ("Nouvelle-Zélande"), -- 1
    ("Belgique"),
    ("France"), -- 3
    ("Italie"), -- 4
    ("Roumanie"), -- 5
    ("Turquie"),
    ("Etats-Unis"), -- 7
    ("Argentine"),
    ("Brésil"),
    ("Portugal"),
    ("Hongrie"),
    ("Mexique")
    ;

INSERT INTO realisateur (nom, prenom, dateNaiss, pays) VALUES
    ("Visconti", "Luchino", "1906-11-02", 4), -- 1
    ("Scorsese", "Martin", "1942-11-17", 7),
    ("De Palma", "Brian", "1940-09-11", 7), -- 3
    ("Tornatore", "Giuseppe", "1956-05-27", 4),
    ("Scott", "Ridley", "1937-11-30", 7), -- 5
    ("Mihaileanu", "Radu", "1958-04-23", 5),
    ("Maïwenn", "", "1976-04-17", 3) -- 7
    ;

INSERT INTO film (titre, annee, realisateur, synopsis, duree) VALUES
    ("Gladiator", 2000, 5, "", 155), -- 1
    ("Alien", 1979, 5, "", 117), -- 2
    ("Robin Hood", 2010, 5, "", 117), -- 3
    ("Senso", 1954, 1, "", 115), -- 4
    ("Rocco e i suoi fratelli", 1960, 1, "", 192), -- 5
    ("Il Gattopardo", 1962, 1, "", 153), -- 6
    ("Sandra", 1965, 1, "", 105), -- 7
    ("Scarface", 1983, 3, "", 170), -- 8
    ("Carlito's way", 1993, 3, "", 144), -- 9
    ("Polisse", 2011, 7, "", 127) -- 10
    ;

INSERT INTO acteur (nom, prenom, dateNaiss, pays) VALUES
    ("Pacino", "Al", "1940-04-25", 7), -- 1
    ("De Niro", "Robert", "1943-08-17", 7), -- 2
    ("Lancaster", "Burt", "1913-11-02", 7), -- 3
    ("Delon", "Alain", "1935-11-08", 3), -- 4
    ("Cardinale", "Claudia", "1938-04-15", 4), -- 5
    ("Weaver", "Sigourney", "1949-10-08", 7), -- 6
    ("Starr", "Joey", "1967-10-27", 3), -- 7
    ("Crowe", "Russell", "1964-04-07", 1) -- 8
    ;

INSERT INTO langue (nom) VALUES
    ("anglais"), ("français"), ("italien"), ("roumain")
    ;

INSERT INTO film_acteur (film, acteur) VALUES
    (1,8), (2,6), (5,4), (6,3), (6,4), (6,5), (7,5), (8,1), (9,1), (10,7)
    ;

INSERT INTO film_pays (film, pays) VALUES
    (1,7), (2,7), (5,4), (6,3), (6,4), (8,7), (9,7), (10,4)
    ;

INSERT INTO film_langue (film, langue) VALUES
    (1,1), (2,1), (5,3), (6,1), (6,2), (8,1), (9,1), (10,2)
    ;

INSERT INTO salle (nom, capacite) VALUES
    ("Grande salle", 260),
    ("Petite salle", 180)
    ;

INSERT INTO seance (date, heureDebut, heureFin, salle, film) VALUES
    ("2021-01-14", "10:00", "12:30", 1, 1),
    ("2021-01-14", "13:00", "16:00", 1, 5),
    ("2021-01-14", "10:00", "12:30", 2, 8),
    ("2021-01-14", "13:00", "16:00", 2, 9)
    ;

INSERT INTO tarif (designation, montant) VALUES
    ("plein", 13),
    ("demi", 6.5),
    ("enfant", 4), -- 3
    ("sénior", 5.5) -- 4
    ;

INSERT INTO achat (date, mode, seance, tarif) VALUES
    ("2021-01-14 09:50", "sur place", 1, 4),
    ("2021-01-14 09:50", "sur place", 1, 3)
    ;


