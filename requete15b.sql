-- requete numero 15 --

SELECT
    r.nom_recette
FROM
    recette AS r
WHERE NOT EXISTS (
    SELECT 1
    FROM recette_ingredient AS ri
    INNER JOIN ingredient AS i ON ri.id_ingredient = i.id_ingredient
    WHERE ri.id_recette = r.id_recette
      AND i.prix_ingredient >= 2);