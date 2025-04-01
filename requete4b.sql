-- requete numero 4 --

SELECT r.nom_recette, r.tempsPrep_recette
FROM recette AS r
WHERE r.nom_recette LIKE '%Salade%';