#
# TABLE STRUCTURE FOR: Empreses
#

DROP TABLE IF EXISTS `Empreses`;

CREATE TABLE `Empreses` (
  `Cif` int(11) NOT NULL,
  `numClient` int(11) NOT NULL,
  `activitat` char(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Cif`,`numClient`),
  KEY `numClient` (`numClient`),
  CONSTRAINT `Empreses_ibfk_1` FOREIGN KEY (`numClient`) REFERENCES `Client` (`numClient`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Empreses` (`Cif`, `numClient`, `activitat`) VALUES (27129321, 139, 'Magni ad qui voluptatem veniam voluptas');
INSERT INTO `Empreses` (`Cif`, `numClient`, `activitat`) VALUES (71373596, 60, 'Accusamus et ut nobis omnis quasi id qui');
INSERT INTO `Empreses` (`Cif`, `numClient`, `activitat`) VALUES (84540394, 82, 'Autem sit deserunt aut numquam voluptas');
INSERT INTO `Empreses` (`Cif`, `numClient`, `activitat`) VALUES (95386413, 120, 'Velit quia sed est.');
INSERT INTO `Empreses` (`Cif`, `numClient`, `activitat`) VALUES (98059756, 189, 'Fuga repellendus tenetur fuga provident');


