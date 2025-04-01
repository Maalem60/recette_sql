 -- requete numero 2 --
 
SELECT
    r.nom_recette,
    c.nom_categorie,
    r.tempsPrep_recette,
    COUNT(ri.id_ingredient) AS nb_ingredients
FROM
    recette AS r
INNER JOIN
    categorie AS c ON r.id_categorie = c.id_categorie
INNER JOIN
    recette_ingredient AS ri ON r.id_recette = ri.id_recette
INNER JOIN
    ingredient AS i ON ri.id_ingredient = i.id_ingredient
GROUP BY
    r.id_recette, r.nom_recette, c.nom_categorie, r.tempsPrep_recette
ORDER BY
    r.tempsPrep_recette DESC;