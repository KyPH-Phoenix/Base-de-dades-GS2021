USE limbo;

-- a.   Els clients únicament han de poder tenir 3 adreces 
--      definides. Si s’intenta dona-ne més d’alta ha de llançar
--      una excepció (SIGNAL)

DROP TRIGGER IF EXISTS maxAdreçesDefinides;

DELIMITER $$

CREATE TRIGGER maxAdreçesDefinides
BEFORE INSERT ON Adreça
FOR EACH ROW

BEGIN

    DECLARE max_adreces_achieved CONDITION FOR SQLSTATE '69420';
    DECLARE nAdreces INT;

    SET nAdreces = (
        SELECT COUNT(codiAdreça) FROM Adreça
        WHERE Adreça.numClient = NEW.numClient
        GROUP BY Adreça.numClient
    );

    IF nAdreces > 2 THEN 
        SIGNAL SQLSTATE '69420'
            SET MESSAGE_TEXT = "Limit d'adreçes alcançat.";
    END IF;


END $$

DELIMITER ;

-- b.   S’ha de dur un historial de la taula de targetes de crèdit 
--      i en tot moment s’ha de poder saber els valors modificats, 
--      usuaris de modificació i data i hora de modificació dels 
--      registres de targetes de crèdits. 

CREATE TABLE IF NOT EXISTS HistorialTargetes (
    numeroTargeta INT NOT NULL,
    tipus CHAR(40),
    caducitat DATE,
    codiSeguretat INT,
    numClient INT,
    dataModificacio DATETIME NOT NULL,
    FOREIGN KEY (numClient)
        REFERENCES Client(numClient) ON DELETE CASCADE,
    PRIMARY KEY (numeroTargeta, dataModificacio)
);

DROP TRIGGER IF EXISTS guardar_targeta_after_update;

DELIMITER $$

CREATE TRIGGER guardar_targeta_after_update
BEFORE UPDATE ON Targeta 
FOR EACH ROW
BEGIN

    INSERT INTO HistorialTargetes (numeroTargeta, tipus, caducitat, codiSeguretat, numClient, dataModificacio) 
    VALUES (OLD.numeroTargeta, OLD.tipus, OLD.caducitat, OLD.codiSeguretat, OLD.numClient, NOW());

END $$

DELIMITER ;

