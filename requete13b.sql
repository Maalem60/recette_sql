-- requete numero 13 --

SELECT
    r.nom_recette
FROM
    recette AS r
INNER JOIN
    recette_ingredient AS ri ON r.id_recette = ri.id_recette
INNER JOIN
    ingredient AS i ON ri.id_ingredient = i.id_ingredient
WHERE
    i.nom_ingredient = 'Poulet'
GROUP BY
    r.nom_recette;