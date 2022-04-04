DROP DATABASE IF EXISTS test;
CREATE DATABASE test;

USE test;


-- Taula alumnes:
DROP TABLE IF EXISTS alumnes;
CREATE TABLE alumnes (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(20),
    cognom1 VARCHAR(20),
    cognom2 VARCHAR(20),
    nota REAL,
    email VARCHAR(20),
    PRIMARY KEY(id)
);

-- Taula log_emails
DROP TABLE IF EXISTS log_cambios_email;
CREATE TABLE log_cambios_email (
    id INT NOT NULL AUTO_INCREMENT,
    id_alumno INT NOT NULL,
    fecha_hora DATETIME,
    old_email VARCHAR(100),
    new_email VARCHAR(100),
    PRIMARY KEY(id),
    FOREIGN KEY(id_alumno) REFERENCES alumnes(id) ON DELETE CASCADE
);

-- Taula alumnes_eliminats
DROP TABLE IF EXISTS log_alumnos_eliminados;
CREATE TABLE log_alumnos_eliminados(
    id INT NOT NULL AUTO_INCREMENT,
    id_alumno INT NOT NULL,
    fecha_hora DATETIME,
    nom VARCHAR(20),
    cognom1 VARCHAR(20),
    cognom2 VARCHAR(20),
    email VARCHAR(100),
    PRIMARY KEY(id)
);

-- Trigger check_nota_before_insert
DROP TRIGGER IF EXISTS check_nota_before_insert;

DELIMITER $$

CREATE TRIGGER trigger_check_nota_before_insert
BEFORE INSERT ON alumnes
FOR EACH ROW

BEGIN

    IF NEW.nota < 0 THEN
        SET NEW.nota = 0;
    END IF;
    
    IF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    END IF;

END $$ 

DELIMITER ;

-- Trigger check_nota_before_update
DROP TRIGGER IF EXISTS check_nota_before_update;

DELIMITER $$

CREATE TRIGGER trigger_check_nota_before_update
BEFORE UPDATE ON alumnes
FOR EACH ROW

BEGIN

    IF NEW.nota < 0 THEN
        SET NEW.nota = 0;
    END IF;
    
    IF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    END IF;

END $$ 

DELIMITER ;

-- Trigger guardar_email_after_update
DROP TRIGGER IF EXISTS guardar_email_after_update;

DELIMITER $$

CREATE TRIGGER guardar_email_after_update
BEFORE UPDATE ON alumnes 
FOR EACH ROW
BEGIN
    
    INSERT INTO log_cambios_email (id_alumno, fecha_hora, old_email, new_email) 
    VALUES (old.id, NOW(), old.email, new.email);

END $$

DELIMITER ;

-- Trigger guardar_alumnos_eliminados
DROP TRIGGER IF EXISTS guardar_alumnos_eliminados;

DELIMITER $$

CREATE TRIGGER guardar_alumnos_eliminados
BEFORE DELETE ON alumnes
FOR EACH ROW
BEGIN
    
    INSERT INTO log_alumnos_eliminados (id_alumno, fecha_hora, nom, cognom1, cognom2, email)
    VALUES (old.id, NOW(), old.nom, old.cognom1, old.cognom2, old.email);

END $$

DELIMITER ;