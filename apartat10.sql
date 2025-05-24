-- Destituir a tots els responsables dels seus càrrecs, és a dir, passar-los de la relació de “cap” a la relació “assignats”.
-- Potser et sigui necessari fer un petit canvi en el disseny per tal de poder aconseguir-ho.
-- Si aquest és el vostre cas, escriviu també la sentència per tal de fer aquest canvi.

USE BD1;

START TRANSACTION;

UPDATE qualificats
JOIN zones_biocontencio ON num_pass = responsable
SET zona_assignada = codi, lab = codiLab;

UPDATE zones_biocontencio
SET responsable = NULL;

COMMIT;
