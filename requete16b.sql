 -- requete numero 16 --
 
SELECT r.nom_recette, r.tempsPrep_recette
FROM recette AS r
WHERE r.tempsPrep_recette = (SELECT MIN(recette.tempsPrep_recette) FROM recette);
