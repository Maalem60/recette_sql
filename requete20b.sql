 -- requete numero 20 bonus --

SELECT
    r.nom_recette,
    SUM(i.prix_ingredient * ri.quantite) AS cout_total
FROM
    recette AS r
INNER JOIN
    recette_ingredient AS ri ON r.id_recette = ri.id_recette
INNER JOIN
    ingredient AS i ON ri.id_ingredient = i.id_ingredient
GROUP BY
    r.id_recette, r.nom_recette
HAVING
    SUM(i.prix_ingredient * ri.quantite) = (
        SELECT
            MAX(cout_total)
        FROM (
            SELECT
                SUM(i.prix_ingredient * ri.quantite) AS cout_total
            FROM
                recette r
            INNER JOIN
                recette_ingredient ri ON r.id_recette = ri.id_recette
            INNER JOIN
                ingredient i ON ri.id_ingredient = i.id_ingredient
            GROUP BY
                r.id_recette
        ) AS sous_requete_couts
    );