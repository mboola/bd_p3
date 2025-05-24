-- Creeu una vista que obtingui el llistat d’empleats amb el codi de la zona que té assignada.
-- Tingueu en compte que també volem que els responsables de zona apareguin com a empleats assignats,
-- i que no volem que cap empleat aparegui més d’una vegada. 

USE BD1;

DROP VIEW IF EXISTS view_empleats_assignats;

CREATE VIEW view_empleats_assignats AS
SELECT empl_ord AS codi_empl, zona, lab
FROM (
    SELECT a.empl_ord, a.zona, a.lab
    FROM assignacions a
    JOIN ordinaris AS o
    ON a.empl_ord = o.num_pass
    WHERE a.data_fi = NULL
    UNION
    SELECT z.responsable, z.codi, z.codiLab
    FROM zones_biocontencio z
) AS combined
GROUP BY empl_ord;

SELECT *
FROM view_empleats_assignats;
