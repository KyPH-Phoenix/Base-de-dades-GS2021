#
# TABLE STRUCTURE FOR: Targeta
#

DROP TABLE IF EXISTS `Targeta`;

CREATE TABLE `Targeta` (
  `numero` int(11) NOT NULL,
  `tipus` char(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caducitat` char(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codiSeguretat` int(11) DEFAULT NULL,
  `numClient` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `numClient` (`numClient`),
  CONSTRAINT `Targeta_ibfk_1` FOREIGN KEY (`numClient`) REFERENCES `Client` (`numClient`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (15767165, 'Visa', '1985-01-12', 4845, 447);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (279649835, 'Visa', '1975-03-15', 7518, 139);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (296227265, 'Visa', '2011-10-16', 1501, 650);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (305969700, 'Visa', '1995-10-01', 5860, 515);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (394592831, 'Visa', '1977-10-13', 4397, 735);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (396609443, 'Visa', '2021-11-23', 6295, 650);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (414275425, 'Visa', '2009-03-25', 5966, 833);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (418967184, 'Visa', '1973-04-12', 1365, 447);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (473060701, 'Visa', '1986-04-29', 2215, 189);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (621614952, 'Visa', '1981-11-29', 5352, 993);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (641381045, 'Visa', '1982-01-13', 3124, 139);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1009346078, 'Visa', '2016-08-21', 4598, 461);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1179762348, 'Visa', '1976-07-17', 3496, 396);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1217217530, 'MasterCard', '2010-11-10', 9819, 833);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1237709015, 'MasterCard', '1992-07-21', 4164, 82);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1276263675, 'MasterCard', '1991-09-07', 4888, 515);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1416382327, 'MasterCard', '1977-05-27', 7440, 120);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1419316080, 'MasterCard', '2002-10-17', 5187, 940);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1471056266, 'MasterCard', '1992-02-17', 9476, 120);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1677224657, 'MasterCard', '1983-05-05', 1392, 396);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1807598239, 'MasterCard', '1988-07-28', 3671, 461);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1823227494, 'MasterCard', '1981-09-01', 7176, 396);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (1912459742, 'MasterCard', '1996-10-17', 9934, 139);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (2076792960, 'MasterCard', '2012-06-24', 2124, 60);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (2101562752, 'MasterCard', '1974-12-27', 8502, 534);
INSERT INTO `Targeta` (`numero`, `tipus`, `caducitat`, `codiSeguretat`, `numClient`) VALUES (2147483647, 'MasterCard', '1994-08-12', 6947, 60);


