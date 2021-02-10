/*
* Auteur: Christophe DUFOUR
* Description
* Création de la base de données de l'association
* sportive Perriots Vauban
*
* Contexte
* Aston - Cours de conception de base de données
*/
CREATE DATABASE IF NOT EXISTS footAspv CHARACTER SET utf8;

USE footAspv;

CREATE TABLE club (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    anneeCrea INT,
    logo VARCHAR(200),
    adresse VARCHAR(150),
    nbEquipe INT
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(30)
);

CREATE TABLE contact (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    club INT,
    role INT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    tel VARCHAR(20),
    mail VARCHAR(100),
    FOREIGN KEY (club) REFERENCES club (id),
    FOREIGN KEY (role) REFERENCES role (id)
);

CREATE TABLE equipe (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    club INT,
    catAge VARCHAR(20),
    saison VARCHAR(10),
    FOREIGN KEY (club) REFERENCES club (id)
);

CREATE TABLE entraineur (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL ,
    prenom VARCHAR(100) NOT NULL,
    dateNaiss DATE,
    adresse VARCHAR(150),
    tel VARCHAR(20),
    mail VARCHAR(100),
    etatCertif BOOLEAN DEFAULT 0,
    equipe INT,
    FOREIGN KEY (equipe) REFERENCES equipe (id)
);

CREATE TABLE joueur (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL ,
    prenom VARCHAR(100) NOT NULL,
    dateNaiss DATE,
    adresse VARCHAR(150),
    tel VARCHAR(20),
    mail VARCHAR(100),
    etatCertif BOOLEAN DEFAULT 0,
    etatCotis BOOLEAN DEFAULT 0,
    equipe INT,
    FOREIGN KEY (equipe) REFERENCES equipe (id)
);

CREATE TABLE diplome (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

-- table de liaison, many-to-many, entraineur-diplome
CREATE TABLE entraineur_diplome (
    entraineur INT NOT NULL,
    diplome INT NOT NULL,
    PRIMARY KEY (entraineur, diplome),
    FOREIGN KEY (entraineur) REFERENCES entraineur (id),
    FOREIGN KEY (diplome) REFERENCES diplome (id)
);

CREATE TABLE competition (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    saison VARCHAR(10),
    categorie ENUM('championnat','coupe','amical','autre') NOT NULL DEFAULT 'championnat'
);

CREATE TABLE rencontre (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    competition INT,
    date DATETIME NOT NULL,
    equipe1 INT,
    equipe2 INT,
    score1 TINYINT,
    score2 TINYINT,
    FOREIGN KEY (competition) REFERENCES competition (id),
    FOREIGN KEY (equipe1) REFERENCES equipe (id),
    FOREIGN KEY (equipe2) REFERENCES equipe (id)
);

