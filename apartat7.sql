-- Obtenir quins són els empleats ordinaris que han estat en més zones de biocontenció que l’empleat anomenat “Jordi Guasch’.

USE BD1;

SELECT e.nom
FROM ordinaris AS o JOIN empleats AS e JOIN assignacions AS a
ON o.num_pass = e.num_pass AND a.empl_ord = e.num_pass
GROUP BY e.nom
HAVING COUNT(*) > (
    SELECT COUNT(*)
    FROM assignacions
    WHERE empl_ord = (
        SELECT num_pass
        FROM empleats
        WHERE nom = 'Jordi Guasch'
    )
);
