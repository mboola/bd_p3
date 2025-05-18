-- Obtenir quines zones tenen més de 3 empleats qualificats.
-- Concretament es demana el codi de la zona conjuntament amb el nom del laboratori, ordenat per laboratori i zona. 

USE BD1;

SELECT l.nom, z.codi
FROM laboratoris AS l JOIN zones_biocontencio AS z
ON l.codi = z.codiLab AND (z.codiLab, z.codi) IN (
    SELECT zona_assignada, lab
    FROM qualificats
    WHERE zona_assignada IS NOT NULL
    GROUP BY zona_assignada
    HAVING (COUNT(*) > 3)
);
