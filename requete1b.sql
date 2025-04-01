-- requetenumero 1 -- 

SELECT
    r.nom_recette,
    c.nom_categorie,
    r.tempsPrep_recette
FROM
    recette AS r
INNER JOIN
    categorie AS c ON r.id_categorie = c.id_categorie
ORDER BY
    r.tempsPrep_recette DESC;