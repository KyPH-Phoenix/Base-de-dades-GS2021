#
# TABLE STRUCTURE FOR: Particulars
#

DROP TABLE IF EXISTS `Particulars`;

CREATE TABLE `Particulars` (
  `Nif` int(11) NOT NULL,
  `numClient` int(11) NOT NULL,
  `dataNaix` date DEFAULT NULL,
  PRIMARY KEY (`Nif`,`numClient`),
  KEY `numClient` (`numClient`),
  CONSTRAINT `Particulars_ibfk_1` FOREIGN KEY (`numClient`) REFERENCES `Client` (`numClient`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (355682, 761, '2016-10-02');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (5256620, 447, '1995-12-23');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (6261876, 534, '1997-02-16');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (16031812, 650, '1974-05-29');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (37184098, 833, '2017-03-19');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (38332231, 885, '2017-01-26');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (40543099, 461, '1979-07-03');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (48461128, 322, '2016-09-16');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (63680950, 900, '2003-07-17');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (69021139, 912, '2013-11-08');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (70322666, 940, '1980-01-08');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (70809850, 396, '1985-02-04');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (71234552, 735, '2007-12-21');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (72580063, 515, '2018-12-11');
INSERT INTO `Particulars` (`Nif`, `numClient`, `dataNaix`) VALUES (86641540, 993, '1990-09-07');


