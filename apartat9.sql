-- Assignar el nivell de perillositat a ‘A’ (=alt) a aquelles zones de biocontenció que desenvolupin alguna arma de potencial superior a 5.
USE BD1;

-- Les comandes per a comprovar que aquest apartat funciona estan comentades.
-- SELECT * FROM zones_biocontencio WHERE nivell = 'A';

UPDATE zones_biocontencio z
JOIN armes_biologiques a ON z.codi = a.zona AND z.codiLab = a.lab
SET z.nivell = 'A'
WHERE a.potencial > 5;

-- SELECT * FROM zones_biocontencio WHERE nivell = 'A';
