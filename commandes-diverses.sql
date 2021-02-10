/*
* Commandes diverses
*/

-- création d'une table role à deux colonnes
CREATE TABLE role (id INT nom TEXT);

-- suppression de la table role
DROP TABLE role;

-- altération de la table role par
-- ajout d'une colonne statut de type INT
ALTER TABLE role ADD statut INT;

-- altération de la table role par
-- suppression de la colonne statut
ALTER TABLE role DROP statut;

-- altération de la table role par
-- modification de la colonne nom (changement de type)
ALTER TABLE role MODIFY nom VARCHAR(30);

-- insertion de donnée dans la table role
INSERT INTO role VALUES("Président");

-- sélection du champ (colonne) nom de la table role
SELECT nom FROM role;

-- création de la table contact
CREATE TABLE contact (
    nom VARCHAR(20),
    email VARCHAR(60),
    role INT
);

-- mise à jour de la ligne de la table role ayant l'id 1
UPDATE role SET id = 1;

-- insertion de lignes dans la table contact
INSERT INTO contact VALUES ("ALAIN", "alain@gmail.com", 3);
INSERT INTO contact VALUES ("TOTO", "", 3);
INSERT INTO contact VALUES ("ZORRO", "zorro@gmail.com", 1);
INSERT INTO contact VALUES ("LOL", "", 2);
INSERT INTO contact (nom, role) VALUES ("TRUC", 2);

-- sélection avec renommage (aliasing) du nom de colonne retournée
SELECT nom AS contact_nom FROM contact;

-- sélection avec jointure entre deux tables
SELECT contact.nom, role.nom AS role FROM contact
JOIN role ON contact.role = role.id;

-- sélection du champ user de la table user dans la base mysql
-- permet d'afficher les utilisateurs enregistrés sur le serveur 
SELECT user, password FROM mysql.user;

-- création d'un utilisateur
CREATE USER 'aston'@'localhost';

-- attributions de tous les droits sur toutes les tables de toutes les bases
-- pour l'utilisateur aston et attribution d'un mot de passe
GRANT ALL ON *.* to 'aston'@'localhost' identified by 'demo';

-- mise à jour des permissions du serveur
FLUSH privileges;

-- connexion au serveur en ligne de commande
-- -u => utilisateur ; -p => mot de passe
mysql -uaston -pdemo;

-- exécution directe de commandes sql placées dans un fichier
mysql -uaston -pdemo < footAspv-structure.sql;

