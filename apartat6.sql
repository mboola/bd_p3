-- Obtenir quins empleats ordinaris han estat en totes les zones de biocontenció del laboratori que té per nom ‘BCN-XXX’ 

USE BD1;

CREATE TEMPORARY TABLE zones_bio_BCN_XXX
SELECT z.codiLab, z.codi AS codiZona
FROM zones_biocontencio AS z JOIN laboratoris AS l
ON l.nom = 'BCN-XXX' AND z.codiLab = l.codi;

CREATE TEMPORARY TABLE distinct_assig_zones
SELECT DISTINCT empl_ord, zona, lab
FROM assignacions
ORDER BY empl_ord;

SELECT DISTINCT d.empl_ord
FROM distinct_assig_zones AS d JOIN zones_bio_BCN_XXX AS z
ON d.zona = z.codiZona AND d.lab = z.codiLab
GROUP BY empl_ord
HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM zones_bio_BCN_XXX
)
