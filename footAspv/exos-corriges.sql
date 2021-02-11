-- Obtenir les email des webmaster (peu importe le club)
select mail from contact where role = 3;

-- Obtenir le nom et année de création des clubs fondés avant 1940, triés du plus ancien ou plus récent
select nom, anneeCrea from club  
where anneeCrea < "1940-01-01" 
order by anneeCrea asc;

-- Obtenir la liste des rencontres victorieuses du club AS Pierrots Vauban
select club.nom as club, rencontre.date,
    concat(equipe.catAge, ' (', score1, '-', score2, ')') as "Equipe (score)"
    from rencontre
    join equipe on equipe.id = rencontre.equipe1
    join club on club.id = equipe.club
    where club.id = 1 and score1 > score2
union
select club.nom as club, rencontre.date,
    concat(equipe.catAge, ' (', score1, '-', score2, ')') as "Equipe (score)"
    from rencontre
    join equipe on equipe.id = rencontre.equipe2
    join club on club.id = equipe.club
    where club.id = 1 and score2 > score1
;

-- Obtenir le nombre de diplômes obtenus par Philippe Burgmann (COUNT)
select count(*) as "Nombre de diplômes"
from entraineur_diplome
join entraineur on entraineur.id = entraineur_diplome.entraineur
where entraineur.nom = "Burgmann" and entraineur.prenom = "Philippe";

-- Obtenir la liste des clubs dans le nom contient la séquences "ei" (LIKE)
select nom from club where nom like "%ei%";