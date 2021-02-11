/*
* Auteur: Christophe DUFOUR
*
* Description
* Création de la base de données du cinéma l'Odyssée de Strasbourg
*
* Contexte
* Aston - Cours de conception de base de données
*/

CREATE DATABASE IF NOT EXISTS cineOdyssee CHARACTER SET utf8;

USE cineOdyssee;

CREATE TABLE pays (
    id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE realisateur (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    dateNaiss DATE,
    pays SMALLINT,
    FOREIGN KEY (pays) REFERENCES pays (id)
);

CREATE TABLE film (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(200) NOT NULL,
    annee SMALLINT UNSIGNED NOT NULL,
    realisateur INT NOT NULL,
    synopsis TEXT,
    duree INT NOT NULL,
    FOREIGN KEY (realisateur) REFERENCES realisateur (id)
);

CREATE TABLE acteur (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    dateNaiss DATE,
    pays SMALLINT,
    FOREIGN KEY (pays) REFERENCES pays (id)
);

CREATE TABLE langue (
    id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE film_acteur (
    film INT NOT NULL,
    acteur INT NOT NULL,
    PRIMARY KEY (film, acteur),
    FOREIGN KEY (film) REFERENCES film (id),
    FOREIGN KEY (acteur) REFERENCES acteur (id)
);

CREATE TABLE film_pays (
    film INT NOT NULL,
    pays SMALLINT NOT NULL,
    PRIMARY KEY (film, pays),
    FOREIGN KEY (film) REFERENCES film (id),
    FOREIGN KEY (pays) REFERENCES pays (id)
);

CREATE TABLE film_langue (
    film INT NOT NULL,
    langue SMALLINT NOT NULL,
    PRIMARY KEY (film, langue),
    FOREIGN KEY (film) REFERENCES film (id),
    FOREIGN KEY (langue) REFERENCES langue (id)
);

CREATE TABLE salle (
    id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(30) NOT NULL,
    capacite SMALLINT UNSIGNED NOT NULL
);

CREATE TABLE seance (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    heureDebut TIME NOT NULL,
    heureFin TIME NOT NULL,
    salle TINYINT NOT NULL,
    film INT NOT NULL,
    FOREIGN KEY (salle) REFERENCES salle (id),
    FOREIGN KEY (film) REFERENCES film (id)
);

CREATE TABLE tarif (
    id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    designation VARCHAR(30) NOT NULL,
    montant DECIMAL UNSIGNED NOT NULL
);

CREATE TABLE achat (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date DATETIME NOT NULL,
    mode ENUM("sur place", "en ligne") NOT NULL DEFAULT "sur place",
    seance INT NOT NULL,
    tarif TINYINT NOT NULL,
    FOREIGN KEY (seance) REFERENCES seance (id),
    FOREIGN KEY (tarif) REFERENCES tarif (id)
);


