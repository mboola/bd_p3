-- Obtenir el codi i nom dels laboratoris que tenen alguna zona de biocontenció d’alt nivell de perillositat.
-- Mostreu el resultat ordenat en ordre alfabètic segons el nom del laboratori.

USE BD1;

SELECT codi, nom 
FROM laboratoris 
WHERE codi = ANY (
    SELECT codiLab 
    FROM zones_biocontencio 
    WHERE nivell = 'A'
)
ORDER BY nom;
