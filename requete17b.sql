-- requete numero 17 --

SELECT
    r.nom_recette
FROM
    recette AS r
LEFT JOIN
    recette_ingredient AS ri ON r.id_recette = ri.id_recette
WHERE
    ri.id_recette IS NULL;