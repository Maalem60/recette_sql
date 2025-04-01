-- requete numero 9 --

SELECT
    i.nom_ingredient AS "Ingrédient",
    ri.quantite AS "Quantité",
    i.prix_ingredient AS "Prix Unitaire",
    (i.prix_ingredient * ri.quantite) AS "Prix Total Ingrédient"
FROM recette AS r
INNER JOIN recette_ingredient AS ri ON r.id_recette = ri.id_recette
INNER JOIN ingredient AS i ON ri.id_ingredient = i.id_ingredient
WHERE r.id_recette = 5;