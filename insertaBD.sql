-- Practica 3 de BD
-- insercio de dades a les taules

USE BD1;

INSERT INTO paisos(nom, pot_desenv, tractat_signat) VALUES ('ANDORRA', 4, 'S');
INSERT INTO paisos(nom, pot_desenv, tractat_signat) VALUES ('ESPANYA', 3, 'S');

INSERT INTO laboratoris(nom, pais) VALUES ('BCN-XXX', 'ANDORRA');
INSERT INTO laboratoris(nom, pais) VALUES ('MAT-YYY', 'ANDORRA');
INSERT INTO laboratoris(nom, pais) VALUES ('MAD-AAA', 'ESPANYA');

CALL InserirQualificat('54321J', 'Joan Domenech', 'ENG. QUIMIC', NULL, NULL);
CALL InserirQualificat('24351N', 'Neus Gimot', 'ENG. QUIMIC', NULL, NULL);
CALL InserirQualificat('13245A', 'Anna Poblet', 'ENG. QUIMIC', NULL, NULL);

CALL InserirOrdinari('12345J', 'Jordi Guasch');
CALL InserirOrdinari('98765P', 'Pau Cosip');
CALL InserirOrdinari('67890G', 'Gemma Puig');
CALL InserirOrdinari('44454B', 'Bernat2 Pino');

INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (1, 1, 'B', '54321J');
INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (2, 1, 'B', '13245A');
INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (1, 3, 'M', '24351N');

CALL InserirQualificat('22222L', 'Laia Claret', 'ENG. QUIMIC', 1, 1);
CALL InserirQualificat('33333M', 'Maria Rovira', 'ENG. QUIMIC', 1, 1);
CALL InserirQualificat('44444B', 'Bernat Pino', 'ENG. QUIMIC', 1, 1);
CALL InserirQualificat('44453B', 'Bernat3 Pino', 'ENG. QUIMIC', 1, 1);

INSERT INTO armes_biologiques(nom, data, potencial, zona, lab) VALUES ('ANTRAX', '2002-08-03', 7, 1, 1);

INSERT INTO assignacions(data, empl_ord, zona, lab) VALUES ('2013-11-3', '12345J', 1, 1);
INSERT INTO assignacions(data, empl_ord, zona, lab) VALUES ('2013-11-3', '98765P', 1, 1);
INSERT INTO assignacions(data, empl_ord, zona, lab) VALUES ('2013-11-3', '67890G', 2, 1);
INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('2013-05-03', '98765P', 2, 1, '2013-11-02');
INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('2013-05-03', '67890G', 2, 1, '2013-11-02');
