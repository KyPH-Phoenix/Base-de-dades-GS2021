#
# TABLE STRUCTURE FOR: Compra
#

DROP TABLE IF EXISTS `Compra`;

CREATE TABLE `Compra` (
  `codi` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `numeroTargeta` int(11) DEFAULT NULL,
  PRIMARY KEY (`codi`),
  KEY `numeroTargeta` (`numeroTargeta`),
  CONSTRAINT `Compra_ibfk_1` FOREIGN KEY (`numeroTargeta`) REFERENCES `Targeta` (`numero`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (8108, '2011-10-02', 1419316080);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (57432, '1982-08-18', 418967184);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (89942, '1981-09-03', 1276263675);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (105656, '1987-07-23', 1237709015);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (193103, '2005-04-20', 279649835);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (258405, '2016-06-14', 1471056266);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (332235, '2014-06-22', 1179762348);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (393857, '1992-10-11', 1217217530);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (642609, '2012-10-13', 641381045);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (644408, '2018-08-30', 394592831);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (665205, '2007-11-18', 1009346078);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (673150, '2013-04-26', 1416382327);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (673944, '1999-02-14', 15767165);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (720808, '1977-07-10', 305969700);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (781522, '1972-08-04', 414275425);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (782726, '1993-06-13', 621614952);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (846036, '2014-09-02', 396609443);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (879862, '1971-03-07', 296227265);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (941437, '1988-07-31', 473060701);
INSERT INTO `Compra` (`codi`, `data`, `numeroTargeta`) VALUES (948405, '1981-08-01', 1677224657);


