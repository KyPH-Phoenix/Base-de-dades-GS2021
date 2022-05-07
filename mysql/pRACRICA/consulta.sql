-- a. Proposau les SQL necessàries per poder generar aquest informe.
SELECT nomClient, nif, cif FROM Client 
LEFT JOIN Particulars ON Client.numClient = Particulars.numClient 
LEFT JOIN Empreses ON Client.numClient = Empreses.numClient
INNER JOIN 
;

SELECT nomClient, nif, codiCompra, Producte.codiProducte, nombreUnitats, PVP, IFNULL(percentatge, 0) AS percentatge, IVA, 
    ((PVP - (PVP * (IFNULL(percentatge, 0) / 100)) + (PVP * (IVA / 100))) * nombreUnitats) AS Total, 
    tipus, numeroTargeta, carrer, Adreça.num, pis, nomCiutat, provincia, "España" AS Pais FROM Client 
NATURAL JOIN Adreça
NATURAL JOIN Ciutat
NATURAL JOIN Particulars 
NATURAL JOIN Targeta 
NATURAL JOIN Compra
NATURAL JOIN Producte_Compra
NATURAL JOIN Producte
LEFT JOIN Historial_Descomptes ON (Producte.codiProducte = Historial_Descomptes.codiProducte) AND (Client.numClient = Historial_Descomptes.numClient);




-- b. Retornar el codi de client, nom de client i id de tarjeta que no han fet cap compra.

SELECT numClient, nomClient, Targeta.numeroTargeta FROM Client 
NATURAL JOIN Targeta 
LEFT JOIN Compra ON Targeta.numeroTargeta=Compra.numeroTargeta 
GROUP BY Targeta.numeroTargeta
HAVING COUNT(codiCompra) = 0;