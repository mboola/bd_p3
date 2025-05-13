USE bd1;

CREATE TEMPORARY TABLE zones_perill_alt
SELECT codi, codiLab
FROM zones_biocontencio
WHERE nivell = 'A';

SELECT *
FROM ordinaris
WHERE num_pass NOT IN (SELECT empl_ord
FROM assignacions, zones_perill_alt
WHERE zona = codi AND lab = codiLab);
