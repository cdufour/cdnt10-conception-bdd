/*
* Requêtes sur la base footAspv
*/

-- Obtenir la liste des noms des diplomes
SELECT nom FROM diplome;

-- Obtenir la liste des noms et prenoms de tous les joueurs
SELECT nom, prenom FROM joueur;

-- Obtenir le nom des joueurs n'ayant pas payé leur cotisation
SELECT nom FROM joueur WHERE etatCotis = 0;

-- Obtenir le nom des entraineurs qui sont nés avant 1960
SELECT nom FROM entraineur WHERE dateNaiss < "1960-01-01";

-- Obtenir les categories d'âge ainsi que le nom du club
-- pour les club Pierrots Vauban et de SC Schiltigheim
SELECT equipe.catAge AS Categorie, club.nom AS Club
FROM equipe
JOIN club ON equipe.club = club.id
WHERE club = 1 OR club = 2;

-- Obtenir le nom des entraineurs accompagnés du nom des diplômes obtenus
SELECT entraineur.nom AS Entraineur, diplome.nom AS Diplome FROM entraineur_diplome
JOIN entraineur ON entraineur.id = entraineur_diplome.entraineur
JOIN diplome ON diplome.id = entraineur_diplome.diplome;

-- Ajouter "Alsace" au nom du club "RC Strasbourg"
UPDATE club SET nom = "RC Strasbourg Alsace" WHERE id = 3;

-- Supprimer les joueurs qui n'ont pas payé leur cotisation
DELETE FROM joueur WHERE etatCotis = 0;