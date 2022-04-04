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


-- La taula log_alumnos_eliminados conté els següents camps:
--     id: clau primària (sencer autonumèric)
--     id_alumno: id de l'alumne (sencer)
--     fecha_hora: marca de temps amb l'instant de el canvi (data i hora)
--     nom: nom de l'alumne eliminat (cadena de caràcters)
--     cognom1: primer cognom de l'alumne eliminat (cadena de caràcters)
--     cognom2: segon cognom de l'alumne eliminat (cadena de caràcters)
--     e-mail: e-mail de l'alumne eliminat (cadena de caràcters)

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


-- Trigger guardar alumnos
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