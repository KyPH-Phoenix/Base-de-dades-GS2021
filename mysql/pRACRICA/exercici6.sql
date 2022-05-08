-- a.   Crear una funció de base de dades que donat un id de comanda calcula 
--      el total a pagar pel client. S'ha de tenir en compte que s'ha d'aplicar 
--      el descompte si escau.

USE limbo;

DROP FUNCTION IF EXISTS calcularTotalPagar;

DELIMITER //
CREATE FUNCTION calcularTotalPagar(codiComandaReferencia INT)
RETURNS FLOAT DETERMINISTIC

BEGIN
    DECLARE resultado FLOAT;
    DECLARE finished BOOLEAN DEFAULT 0;
    DECLARE total FLOAT;

    DECLARE sumarTotalesCursor CURSOR FOR
        SELECT ((PVP - (PVP * (IFNULL(percentatge, 0) / 100)) + (PVP * (IVA / 100))) * nombreUnitats) 
        FROM Client
        NATURAL JOIN Targeta 
        NATURAL JOIN Compra
        NATURAL JOIN Producte_Compra
        NATURAL JOIN Producte
        LEFT JOIN Historial_Descomptes ON (Producte.codiProducte = Historial_Descomptes.codiProducte) AND (Client.numClient = Historial_Descomptes.numClient)
        WHERE Compra.codiCompra = codiComandaReferencia;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET finished = 1;

    OPEN sumarTotalesCursor;

    SET resultado = 0;

    iterTotal: LOOP
        SET total = 0;
        
        FETCH sumarTotalesCursor INTO total;

        SET resultado = resultado + total;

        IF finished = 1 THEN
            LEAVE iterTotal;
        END IF;

    END LOOP;

    RETURN(resultado);
END //

DELIMITER ;

-- b.   Crear un procedure que donat un paràmetre d’entrada de tipus enter que 
--      representa un mes (1 a 12), calculi per aquell mes i per cada producte de 
--      la base de dades, la quantitat venida d’aquell producte i l’import produït. 
--      Aquestes dades les heu de guardar dins una altre taula i la transacció ha de
--      ser a nivell global (és a dir, o es fan totes les operacions o cap).
CREATE 

DROP PROCEDURE IF EXISTS productePerMes;

DELIMITER //

CREATE PROCEDURE productePerMes(IN mes INT)
BEGIN

    SELECT Producte.codiProducte, SUM(nombreUnitats) AS nombreUnitatsTotals, 
    (SUM((PVP - (PVP * (IFNULL(percentatge, 0) / 100)) + (PVP * (IVA / 100))) * nombreUnitats)) AS importProduit FROM Client
    NATURAL JOIN Targeta 
    NATURAL JOIN Compra
    NATURAL JOIN Producte_Compra
    NATURAL JOIN Producte
    LEFT JOIN Historial_Descomptes ON (Producte.codiProducte = Historial_Descomptes.codiProducte) AND (Client.numClient = Historial_Descomptes.numClient)
    WHERE MONTH(Compra.data) = mes 
    GROUP BY Producte.codiProducte
    ORDER BY Producte.codiProducte;    

END //

DELIMITER ;

CALL productePerMes(3);

