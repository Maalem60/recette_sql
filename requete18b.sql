-- requete numero 18 --

 SELECT
    i.nom_ingredient
FROM
    ingredient AS i
JOIN
    recette_ingredient AS ri ON i.id_ingredient = ri.id_ingredient
GROUP BY
    i.id_ingredient, i.nom_ingredient
HAVING
    COUNT(DISTINCT ri.id_recette) >= 3; 