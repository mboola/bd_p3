-- Practica 3 de BD
-- insercio de dades a les taules

USE BD1;

INSERT INTO paisos(nom, pot_desenv, tractat_signat) VALUES ('ANDORRA', 4, 'S');
INSERT INTO paisos(nom, pot_desenv, tractat_signat) VALUES ('ESPANYA', 3, 'S');

INSERT INTO laboratoris(nom, pais) VALUES ('BCN-XXX', 'ANDORRA');
INSERT INTO laboratoris(nom, pais) VALUES ('MAT-YYY', 'ANDORRA');
INSERT INTO laboratoris(nom, pais) VALUES ('MAD-AAA', 'ESPANYA');
INSERT INTO laboratoris(nom, pais) VALUES ('BCN-AAA', 'ESPANYA');

CALL InserirQualificat('54321J', 'Joan Domenech', 'ENG. QUIMIC', NULL, NULL);
CALL InserirQualificat('24351N', 'Neus Gimot', 'ENG. QUIMIC', NULL, NULL);
CALL InserirQualificat('13245A', 'Anna Poblet', 'ENG. QUIMIC', NULL, NULL);
CALL InserirQualificat('24351C', 'Bernarda Pino', 'ENG. QUIMIC', NULL, NULL);
CALL InserirQualificat('24351D', 'Miguel Pino', 'ENG. QUIMIC', NULL, NULL);

CALL InserirOrdinari('12345J', 'Jordi Guasch');
CALL InserirOrdinari('98765P', 'Pau Cosip');
CALL InserirOrdinari('67890G', 'Gemma Puig');
CALL InserirOrdinari('44454B', 'Bernat2 Pino');
CALL InserirOrdinari('43354B', 'Test apartat4');
CALL InserirOrdinari('43354D', 'Test apartat6i7');

INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (1, 1, 'A', '54321J');
INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (2, 1, 'B', '13245A');
INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (1, 3, 'M', '24351N');
INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (2, 4, 'A', '24351C');
INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (3, 4, 'B', '24351D');

CALL InserirQualificat('22222L', 'Laia Claret', 'ENG. QUIMIC', 1, 1);
CALL InserirQualificat('33333M', 'Maria Rovira', 'ENG. QUIMIC', 1, 1);
CALL InserirQualificat('44444B', 'Bernat Pino', 'ENG. QUIMIC', 1, 1);
CALL InserirQualificat('44453B', 'Bernat3 Pino', 'ENG. QUIMIC', 1, 1);

CALL InserirQualificat('22222N', 'Laia Clareta', 'ENG. QUIMIC', 2, 4);
CALL InserirQualificat('33333N', 'Maria Rovire', 'ENG. QUIMIC', 2, 4);
CALL InserirQualificat('44444N', 'Bernat Pinol', 'ENG. QUIMIC', 2, 4);
CALL InserirQualificat('44453N', 'Bernat3 Pinol', 'ENG. QUIMIC', 2, 4);

CALL InserirQualificat('22222C', 'Laia Clareta', 'ENG. QUIMIC', 3, 4);
CALL InserirQualificat('33333C', 'Maria Rovire', 'ENG. QUIMIC', 3, 4);
CALL InserirQualificat('44444C', 'Bernat Pinol', 'ENG. QUIMIC', 3, 4);
CALL InserirQualificat('44453C', 'Bernat3 Pinol', 'ENG. QUIMIC', 3, 4);

INSERT INTO armes_biologiques(nom, data, potencial, zona, lab) VALUES ('ANTRAX', '2002-08-03', 7, 1, 1);
INSERT INTO armes_biologiques(nom, data, potencial, zona, lab) VALUES ('Computadors', '2010-08-03', 6, 2, 1);
INSERT INTO armes_biologiques(nom, data, potencial, zona, lab) VALUES ('ESO', '2012-08-03', 5, 1, 3);

INSERT INTO assignacions(data, empl_ord, zona, lab) VALUES ('2013-11-3', '12345J', 1, 1);
INSERT INTO assignacions(data, empl_ord, zona, lab) VALUES ('2013-11-3', '98765P', 1, 1);
INSERT INTO assignacions(data, empl_ord, zona, lab) VALUES ('2013-11-3', '67890G', 2, 1);
INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('2013-05-03', '98765P', 2, 1, '2013-11-02');
INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('2013-05-03', '67890G', 2, 1, '2013-11-02');

INSERT INTO assignacions(data, empl_ord, zona, lab) VALUES ('2014-05-03', '43354D', 1, 1);
INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('2013-05-03', '43354D', 2, 1, '2013-11-02');
