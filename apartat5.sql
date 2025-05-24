-- Obtenir quines zones tenen més de 3 empleats qualificats.
-- Concretament es demana el codi de la zona conjuntament amb el nom del laboratori, ordenat per laboratori i zona. 

USE BD1;

SELECT l.nom, zones.codiZona
FROM laboratoris AS l
JOIN (
    SELECT zona_assignada AS codiZona, lab AS codiLab
    FROM qualificats
    WHERE zona_assignada IS NOT NULL
    GROUP BY zona_assignada
    HAVING (COUNT(*) > 3)
) AS zones
ON zones.codiLab = l.codi
ORDER BY l.nom, zones.codiZona;
