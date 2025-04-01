-- requete numero 12 --

SELECT
   c.nom_categorie ,
    COUNT(r.id_recette) AS "Nombre de recettes"
FROM categorie AS c
LEFT JOIN recette AS r ON c.id_categorie = r.id_categorie
GROUP BY c.id_categorie, c.nom_categorie;
