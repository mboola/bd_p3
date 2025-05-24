USE BD1;

SELECT codi, nom 
FROM laboratoris 
WHERE codi = ANY (
    SELECT codiLab 
    FROM zones_biocontencio 
    WHERE nivell = 'A'
);
