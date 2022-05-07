#
# TABLE STRUCTURE FOR: Producte_Compra
#

DROP TABLE IF EXISTS `Producte_Compra`;

CREATE TABLE `Producte_Compra` (
  `codiCompra` int(11) NOT NULL,
  `codiProducte` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreUnitats` int(11) DEFAULT NULL,
  PRIMARY KEY (`codiCompra`,`codiProducte`),
  KEY `codiProducte` (`codiProducte`),
  CONSTRAINT `Producte_Compra_ibfk_1` FOREIGN KEY (`codiCompra`) REFERENCES `Compra` (`codi`) ON DELETE CASCADE,
  CONSTRAINT `Producte_Compra_ibfk_2` FOREIGN KEY (`codiProducte`) REFERENCES `Producte` (`codiProducte`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (8108, '0100ues', 67);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (8108, '1803tcn', 20);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (8108, '2952nlk', 96);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (8108, '5176wpx', 842);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (8108, '7678kln', 758);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (57432, '0134dpo', 930);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (57432, '1875mfe', 972);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (57432, '3210qby', 110);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (57432, '5177vrd', 908);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (57432, '7737fdd', 638);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (89942, '0177res', 1000);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (89942, '1893bbp', 61);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (89942, '3243ebe', 340);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (89942, '5778cae', 217);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (89942, '7840dpo', 572);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (105656, '0187blb', 681);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (105656, '1930ziq', 670);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (105656, '3285jub', 133);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (105656, '5800pco', 172);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (105656, '8101jqa', 421);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (193103, '0271sfc', 751);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (193103, '2012rlm', 562);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (193103, '3429hzw', 712);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (193103, '6131suk', 341);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (193103, '8187ote', 189);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (258405, '0286yxc', 401);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (258405, '2056vwi', 644);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (258405, '3440hjc', 437);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (258405, '6139mjl', 649);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (258405, '8188ujn', 39);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (332235, '0446qit', 357);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (332235, '2107cfu', 731);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (332235, '3443oli', 236);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (332235, '6140lbr', 875);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (332235, '8202lmb', 463);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (393857, '0715kib', 436);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (393857, '2265ncd', 429);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (393857, '3496jfo', 508);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (393857, '6184lrp', 247);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (393857, '8267noy', 766);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (642609, '0903myq', 498);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (642609, '2338gqg', 832);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (642609, '3551cdu', 991);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (642609, '6216pha', 139);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (642609, '8341xpv', 870);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (644408, '0940zxm', 776);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (644408, '2346koy', 916);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (644408, '3684gwl', 408);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (644408, '6706lkc', 431);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (644408, '8399lqg', 756);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (665205, '1080zxq', 702);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (665205, '2385wdo', 721);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (665205, '3741wiw', 242);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (665205, '6755frp', 663);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (665205, '8488ddd', 60);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673150, '1123lgf', 633);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673150, '2393jxr', 165);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673150, '3965kef', 126);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673150, '6852uwc', 884);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673150, '8500zgt', 709);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673944, '1142qkv', 138);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673944, '2399uvg', 288);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673944, '4071ejl', 822);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673944, '6910kkx', 799);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (673944, '8522uvp', 102);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (720808, '1289lsf', 789);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (720808, '2453lxd', 972);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (720808, '4268nnk', 956);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (720808, '7009cfv', 363);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (720808, '8565phu', 282);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (781522, '1349vlo', 197);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (781522, '2510vir', 749);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (781522, '4397phk', 567);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (781522, '7134epo', 192);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (781522, '9088ypi', 74);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (782726, '1541zgi', 969);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (782726, '2537uab', 801);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (782726, '4502inm', 912);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (782726, '7148xyx', 637);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (782726, '9419dkw', 521);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (846036, '1699pru', 877);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (846036, '2785yjx', 914);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (846036, '4512exi', 603);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (846036, '7490krv', 216);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (846036, '9695xsn', 13);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (879862, '1727azk', 579);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (879862, '2865nke', 899);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (879862, '4516kps', 951);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (879862, '7544ith', 531);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (879862, '9784evt', 917);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (941437, '1759las', 979);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (941437, '2879sol', 171);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (941437, '4783wxf', 496);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (941437, '7544svt', 178);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (941437, '9862jxj', 931);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (948405, '1798ejb', 546);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (948405, '2937lli', 268);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (948405, '5124wmt', 630);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (948405, '7632jqj', 468);
INSERT INTO `Producte_Compra` (`codiCompra`, `codiProducte`, `nombreUnitats`) VALUES (948405, '9976qdf', 575);


