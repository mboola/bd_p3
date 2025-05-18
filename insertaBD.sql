-- Practica 3 de BD
-- insercio de dades a les taules

USE BD1;

INSERT INTO paisos(nom, pot_desenv, tractat_signat) VALUES ('ANDORRA', 4, 'S');
INSERT INTO paisos(nom, pot_desenv, tractat_signat) VALUES ('ESPANYA', 3, 'S');

INSERT INTO laboratoris(nom, pais) VALUES ('BCN-XXX', 'ANDORRA');
INSERT INTO laboratoris(nom, pais) VALUES ('MAT-YYY', 'ANDORRA');
INSERT INTO laboratoris(nom, pais) VALUES ('MAD-AAA', 'ESPANYA');

INSERT INTO empleats(num_pass, nom) VALUES ('13245A', 'Anna Poblet');
INSERT INTO empleats(num_pass, nom) VALUES ('12345J', 'Jordi Guasch');
INSERT INTO empleats(num_pass, nom) VALUES ('54321J', 'Joan Domenech');
INSERT INTO empleats(num_pass, nom) VALUES ('24351N', 'Neus Gimot');
INSERT INTO empleats(num_pass, nom) VALUES ('98765P', 'Pau Cosip');
INSERT INTO empleats(num_pass, nom) VALUES ('67890G', 'Gemma Puig');
INSERT INTO empleats(num_pass, nom) VALUES ('22222L', 'Laia Claret');
INSERT INTO empleats(num_pass, nom) VALUES ('33333M', 'Maria Rovira');
INSERT INTO empleats(num_pass, nom) VALUES ('44444B', 'Bernat Pino');
INSERT INTO empleats(num_pass, nom) VALUES ('44454B', 'Bernat2 Pino');
INSERT INTO empleats(num_pass, nom) VALUES ('44453B', 'Bernat3 Pino');

INSERT INTO qualificats(num_pass, titulacio) VALUES ('54321J', 'ENG. QUIMIC');
INSERT INTO qualificats(num_pass, titulacio) VALUES ('24351N', 'ENG. QUIMIC');
INSERT INTO qualificats(num_pass, titulacio) VALUES ('13245A', 'ENG. QUIMIC');

INSERT INTO ordinaris(num_pass) VALUES ('12345J');
INSERT INTO ordinaris(num_pass) VALUES ('98765P');
INSERT INTO ordinaris(num_pass) VALUES ('67890G');
INSERT INTO ordinaris(num_pass) VALUES ('44454B');

INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (1, 1, 'B', '54321J');
INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (2, 1, 'B', '13245A');
INSERT INTO zones_biocontencio(codi, codiLab, nivell, responsable) VALUES (1, 3, 'M', '24351N');

INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('22222L', 'ENG. QUIMIC', 1, 1);
INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('33333M', 'ENG. QUIMIC', 1, 1);
INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('44444B', 'ENG. QUIMIC', 1, 1);
INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('44453B', 'ENG. QUIMIC', 1, 1);

INSERT INTO armes_biologiques(nom, data, potencial, zona, lab) VALUES ('ANTRAX', '2002-08-03', 7, 1, 1);

INSERT INTO assignacions(data, empl_ord, zona, lab) VALUES ('2013-11-3', '12345J', 1, 1);
INSERT INTO assignacions(data, empl_ord, zona, lab) VALUES ('2013-11-3', '98765P', 1, 1);
INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('2013-05-03', '98765P', 2, 1, '2013-11-02');
INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi) VALUES ('2013-05-03', '67890G', 2, 1, '2013-11-02');
