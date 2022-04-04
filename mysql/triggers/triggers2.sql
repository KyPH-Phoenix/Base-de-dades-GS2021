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

-- Procediment: crear_email
-- Arguments d’entrada:
--     nom (cadena de caràcters)
--     cognom1 (cadena de caràcters)
--     cognom2 (cadena de caràcters)
--     domini (cadena de caràcters) @jardineria.com
-- Sortida:
--     email (cadena de caràcters) amb el següent format:
--     El primer caràcter de l'paràmetre nom.
--     Els tres primers caràcters de l'paràmetre cognom1.
--     Els tres primers caràcters de l'paràmetre cognom2.
--     El caràcter @.
--     El domini passat com a paràmetre.

DROP PROCEDURE IF EXISTS crear_email;
    
DELIMITER //

CREATE PROCEDURE crear_email(IN nom VARCHAR(20), IN llin1 VARCHAR(20), IN llin2 VARCHAR(20), IN domini VARCHAR(20), OUT result varchar(100))

BEGIN

    SET result = LOWER(CONCAT(SUBSTRING(nom, 1, 1), SUBSTRING(llin1, 1, 3), SUBSTRING(llin2, 1, 3), '@', domini));

END //

DELIMITER ;


-- Trigger
DROP TRIGGER IF EXISTS crear_email_before_insert;

DELIMITER $$

CREATE TRIGGER crear_email_before_insert
BEFORE INSERT ON alumnes
FOR EACH ROW

BEGIN

    IF NEW.email IS NULL THEN
        CALL crear_email(NEW.nom, NEW.cognom1, NEW.cognom2, "email.com", NEW.email);
    END IF;

END $$

DELIMITER ;