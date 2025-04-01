-- requete numero 8 --

SELECT
    SUM(i.prix_ingredient * ri.quantite) AS prix_total
FROM
    recette AS r
INNER JOIN
    recette_ingredient AS ri ON r.id_recette = ri.id_recette
INNER JOIN
    ingredient AS i ON ri.id_ingredient = i.id_ingredient
WHERE
    r.id_recette = 5;