USE limbo;

SET sql_mode = 'ONLY_FULL_GROUP_BY';

-- a. Proposau les SQL necessàries per poder generar aquest informe.
SELECT nomClient, nif, codiCompra, descripcio, nombreUnitats, PVP, IFNULL(percentatge, 0) AS percentatge, IVA, 
    ((PVP - (PVP * (IFNULL(percentatge, 0) / 100)) + (PVP * (IVA / 100))) * nombreUnitats) AS Total, 
    tipus, numeroTargeta, carrer, Adreça.num, pis, nomCiutat, provincia FROM Client 
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

-- c. Crear una consulta SQL que donat una data ens retorni els 10 productes més venuts.
SELECT codiProducte, COUNT(codiProducte) AS "vegadesVenut"
FROM Producte_Compra 
GROUP BY codiProducte 
ORDER BY COUNT(codiProducte) DESC
LIMIT 10;

-- d. Crear una consulta SQL que donat un codi de comanda (codi_comanda) ens retorni els 5 productes més venuts d'altres comandes que haguin comprat algun producte d'aquest comanda (codi_comanda).
SELECT codiProducte, COUNT(codiProducte) AS vegadesVenut FROM Producte_Compra 
WHERE codiProducte IN ( 
    SELECT codiProducte FROM Producte_Compra 
    WHERE codiCompra = 57432 
)
GROUP BY codiProducte
ORDER BY COUNT(codiProducte) DESC
LIMIT 5;
