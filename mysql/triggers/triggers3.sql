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


-- La taula log_cambios_email conté els següents camps:
--     id: clau primària (sencer autonumèric)
--     id_alumno: id de l'alumne (sencer)
--     fecha_hora: marca de temps amb l'instant de el canvi (data i hora)
--     old_email: valor anterior de l'email (cadena de caràcters)
--     new_email: nou valor amb el qual s'ha actualitzat

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

-- Trigger guardar email
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