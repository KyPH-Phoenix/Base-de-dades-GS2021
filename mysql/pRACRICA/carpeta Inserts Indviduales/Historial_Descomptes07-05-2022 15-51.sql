#
# TABLE STRUCTURE FOR: Historial_Descomptes
#

DROP TABLE IF EXISTS `Historial_Descomptes`;

CREATE TABLE `Historial_Descomptes` (
  `numClient` int(11) NOT NULL,
  `codiProducte` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentatge` int(11) DEFAULT NULL,
  PRIMARY KEY (`numClient`,`codiProducte`,`data`),
  KEY `codiProducte` (`codiProducte`),
  CONSTRAINT `Historial_Descomptes_ibfk_1` FOREIGN KEY (`numClient`) REFERENCES `Client` (`numClient`) ON DELETE CASCADE,
  CONSTRAINT `Historial_Descomptes_ibfk_2` FOREIGN KEY (`codiProducte`) REFERENCES `Producte` (`codiProducte`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (60, '0100ues', '1983-07-16', 20);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (82, '0134dpo', '2016-01-03', 13);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (120, '0177res', '1973-12-02', 19);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (139, '0187blb', '1990-11-11', 23);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (189, '0271sfc', '1991-08-08', 14);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (322, '0286yxc', '2011-02-28', 20);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (396, '0446qit', '2000-10-18', 37);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (447, '0715kib', '2008-12-28', 8);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (461, '0903myq', '1990-08-07', 21);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (515, '0940zxm', '1993-11-16', 32);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (534, '1080zxq', '1997-01-10', 36);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (650, '1123lgf', '2016-04-13', 26);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (735, '1142qkv', '2003-01-22', 19);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (761, '1289lsf', '1973-10-17', 35);
INSERT INTO `Historial_Descomptes` (`numClient`, `codiProducte`, `data`, `percentatge`) VALUES (833, '1349vlo', '1983-03-03', 12);


