-- Practica 3 de BD
-- Creacio de les taules

-- En alguns entorns falla si no existeix
DROP DATABASE IF EXISTS BD1;

CREATE DATABASE BD1;
USE BD1;

-- PAÏSOS(nom, pot_desenv, tractat_signat) 
CREATE TABLE paisos (
	nom VARCHAR(25) NOT NULL,
	pot_desenv INT NOT NULL,
	tractat_signat VARCHAR(1) CHECK (tractat_signat = 'S' OR tractat_signat = 'N' OR tractat_signat IS NULL),
	CONSTRAINT pk_paisos PRIMARY KEY (nom)
) engine=innodb;

-- LABORATORIS(codi, nom, país)
--		Clau forana país referencia PAÏSOS(nom)
CREATE TABLE laboratoris (
	codi INT NOT NULL auto_increment,
	nom VARCHAR(7) NOT NULL,
	pais VARCHAR(25) NOT NULL,
	CONSTRAINT pk_laboratoris PRIMARY KEY (codi),
	CONSTRAINT fk_laboratoris_paisos FOREIGN KEY (pais) REFERENCES paisos(nom)
) engine=innodb;

-- ZONES_BIOCONTENCIO(codi, codiLab, nivell, responsable)
--		Clau forana codiLab referencia LABORATORIS(codi)
--		Clau forana responsable referencia QUALIFICATS(num_pass)
CREATE TABLE zones_biocontencio (
	codi INT NOT NULL,
	codiLab INT NOT NULL,
	nivell VARCHAR(1) NOT NULL CHECK (nivell = 'A' OR nivell = 'M' OR nivell = 'B'),
	responsable VARCHAR(6) NOT NULL,
	CONSTRAINT pk_zones_biocontencio PRIMARY KEY (codi, codiLab),
	CONSTRAINT fk_zones_biocontencio_laboratoris FOREIGN KEY (codiLab) REFERENCES laboratoris(codi)
) engine=innodb;

-- ARMES_BIOLOGIQUES(nom, data, potencial, zona, lab )
--		Clau forana (zona, lab) referencia ZONES_BIOCONTENCIO(codi, codiLab)
CREATE TABLE armes_biologiques (
	nom VARCHAR(25) NOT NULL,
	data DATE NOT NULL,
	potencial INT NOT NULL CHECK (potencial >= 1 AND potencial <= 10),
	zona INT NOT NULL,
	lab INT NOT NULL,
	CONSTRAINT pk_armes_biologiques PRIMARY KEY (nom),
	CONSTRAINT fk_armes_biologiques_zones_biocontencio FOREIGN KEY (zona, lab) REFERENCES zones_biocontencio(codi, codiLab)
) engine=innodb;

-- EMPLEATS(num_pass, nom) 
CREATE TABLE empleats (
	num_pass VARCHAR(6) NOT NULL,
	nom VARCHAR(25) NOT NULL,
	CONSTRAINT pk_empleats PRIMARY KEY (num_pass)
) engine=innodb;

-- ORDINARIS(num_pass)
--		Clau forana num_pass referencia EMPLEATS(num_pass)
CREATE TABLE ordinaris (
	num_pass VARCHAR(6) NOT NULL,
	CONSTRAINT pk_ordinaris PRIMARY KEY (num_pass),
	CONSTRAINT fk_ordinaris_empleats FOREIGN KEY (num_pass) REFERENCES empleats(num_pass)
) engine=innodb;

-- QUALIFICATS(num_pass, titulacio, zona_assignada, lab)
--		Clau forana num_pass referencia EMPLEATS(num_pass)
--		Clau forana (zona_assignada, lab) referencia ZONES_BIOCONTENCIO(codi, codiLab)
CREATE TABLE qualificats (
	num_pass VARCHAR(6) NOT NULL,
	titulacio VARCHAR(25) NOT NULL,
	zona_assignada INT,
	lab INT,
	CONSTRAINT pk_qualificats PRIMARY KEY (num_pass),
	CONSTRAINT fk_qualificats_empleats FOREIGN KEY (num_pass) REFERENCES empleats(num_pass),
	CONSTRAINT fk_qualificats_zones_biocontencio FOREIGN KEY (zona_assignada, lab) REFERENCES zones_biocontencio (codi, codiLab)
) engine=innodb;

-- Afegim a la fk a zones_biocontencio a qualificats ara que la taula existeix
ALTER TABLE zones_biocontencio ADD CONSTRAINT fk_zones_biocontencio_qualificats FOREIGN KEY (responsable) REFERENCES qualificats(num_pass);

-- ASSIGNACIONS(data, empl_ord, zona, Lab, data_fi)
--		Clau forana empl_ord referencia ORDINARIS(num_pass)
--		Clau forana (zona, lab) referencia ZONES_BIOCONTENCIO(codi, codiLab)
CREATE TABLE assignacions (
	data DATE NOT NULL,
	empl_ord VARCHAR(6) NOT NULL,
	zona INT NOT NULL,
	lab INT NOT NULL,
	data_fi DATE,
	CONSTRAINT pk_assignacions PRIMARY KEY (data, empl_ord),
	CONSTRAINT fk_assignacions_ordinaris FOREIGN KEY (empl_ord) REFERENCES ordinaris(num_pass),
	CONSTRAINT fk_assignacions_zones_biocontencio FOREIGN KEY (zona, lab) REFERENCES zones_biocontencio(codi, codiLab)
) engine=innodb;
