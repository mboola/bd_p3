-- Obtenir els noms dels empleats ordinaris que no han estat mai assignats a cap zona de biocontenció de nivell de perillositat Alt

USE BD1;

CREATE TEMPORARY TABLE zones_perill_alt
SELECT codi, codiLab
FROM zones_biocontencio
WHERE nivell = 'A';

SELECT e.nom
FROM ordinaris AS o
JOIN empleats AS e
ON o.num_pass = e.num_pass
WHERE o.num_pass NOT IN (
    SELECT empl_ord
    FROM assignacions, zones_perill_alt
    WHERE zona = codi AND lab = codiLab
);
