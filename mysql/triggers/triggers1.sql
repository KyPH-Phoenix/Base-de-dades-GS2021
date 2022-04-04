DROP DATABASE IF EXISTS test;
CREATE DATABASE test;

USE test;


-- Taula alumnes:
--     id (sencer sense signe)
--     nom (cadena de caràcters)
--     cognom1 (cadena de caràcters)
--     cognom2 (cadena de caràcters)
--     nota (nombre real)

DROP TABLE IF EXISTS alumnes;
CREATE TABLE alumnes (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(20),
    cognom1 VARCHAR(20),
    cognom2 VARCHAR(20),
    nota REAL,
    PRIMARY KEY(id)
);


-- Trigger 1: trigger_check_nota_before_insert
--     S'executa sobre la taula alumnes.
--     S'executa abans d'una operació d'inserció.
--     Si el nou valor de la nota que es vol inserir és negatiu, es guarda com 0.
--     Si el nou valor de la nota que es vol inserir és més gran que 10, es guarda com 10.

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


-- Trigger2: trigger_check_nota_before_update
--     S'executa sobre la taula alumnes.
--     S'executa abans d'una operació d'actualització.
--     Si el nou valor de la nota que es vol actualitzar és negatiu, es guarda com 0.
--     Si el nou valor de la nota que es vol actualitzar és més gran que 10, es guarda com 10.

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


