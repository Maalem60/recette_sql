-- requete numero 3 --

SELECT r.nom_recette, r.tempsPrep_recette
FROM recette AS r
WHERE r.tempsPrep_recette >= 30
ORDER BY r.tempsPrep_recette DESC;
