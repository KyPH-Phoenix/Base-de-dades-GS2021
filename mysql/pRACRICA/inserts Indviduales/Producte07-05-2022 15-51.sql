#
# TABLE STRUCTURE FOR: Producte
#

DROP TABLE IF EXISTS `Producte`;

CREATE TABLE `Producte` (
  `codiProducte` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcio` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitatMesura` char(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pes` int(11) DEFAULT NULL CHECK (`pes` >= 0),
  `marca` char(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PVP` int(11) DEFAULT NULL CHECK (`PVP` >= 0),
  `IVA` int(11) DEFAULT NULL,
  PRIMARY KEY (`codiProducte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0100ues', 'Nostrum quo dolore vel quod in perferendis explicabo.', 'quo', 70, 'culpa', 36, 22);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0134dpo', 'Velit iste deserunt quis ut expedita dicta.', 'eum', 94, 'blanditiis', 99, 12);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0177res', 'Aperiam architecto labore alias nihil.', 'ad', 81, 'ex', 74, 14);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0187blb', 'Ducimus nam distinctio et in autem corporis.', 'iste', 61, 'et', 63, 14);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0271sfc', 'Aut voluptates at expedita excepturi ut quas est.', 'et', 64, 'natus', 40, 24);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0286yxc', 'Reprehenderit dolore sed est ut quo exercitationem exercitationem.', 'omnis', 21, 'voluptatem', 97, 19);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0446qit', 'Porro sint provident libero maiores qui animi.', 'nostrum', 90, 'enim', 51, 17);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0715kib', 'Aut in aut quia voluptatem.', 'hic', 43, 'mollitia', 5, 11);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0903myq', 'Omnis quis nihil molestias.', 'laudantium', 84, 'provident', 53, 15);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('0940zxm', 'Illo et omnis earum voluptates ipsa molestiae quia.', 'quae', 84, 'velit', 62, 13);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1080zxq', 'Pariatur doloremque alias autem sapiente incidunt ab sunt.', 'dolores', 36, 'architecto', 93, 21);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1123lgf', 'Est ipsum asperiores sed natus totam unde consequuntur.', 'similique', 13, 'et', 52, 5);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1142qkv', 'Mollitia itaque quod nobis quia quibusdam.', 'rerum', 60, 'cumque', 37, 20);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1289lsf', 'Perferendis commodi vitae exercitationem unde ea dolores.', 'commodi', 9, 'ex', 11, 11);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1349vlo', 'Explicabo quibusdam ut placeat et quod magnam qui modi.', 'blanditiis', 41, 'et', 12, 9);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1541zgi', 'Et hic et et quia et.', 'est', 38, 'natus', 48, 25);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1699pru', 'Eligendi enim rerum ex velit delectus.', 'beatae', 62, 'odio', 9, 21);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1727azk', 'Sequi mollitia cum et aut aspernatur nulla officia.', 'laboriosam', 27, 'debitis', 50, 8);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1759las', 'Aut asperiores quo ut quis eligendi repellat quis.', 'voluptas', 31, 'doloribus', 37, 20);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1798ejb', 'Accusamus quia sint est sunt culpa ducimus adipisci.', 'aut', 12, 'distinctio', 5, 21);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1803tcn', 'Deleniti dolor necessitatibus facilis eos.', 'ut', 14, 'nesciunt', 30, 15);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1875mfe', 'Voluptate occaecati doloribus a facilis quia tempore.', 'id', 26, 'impedit', 32, 6);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1893bbp', 'Veniam consequatur aut sit eum quia et.', 'repudiandae', 13, 'provident', 82, 25);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('1930ziq', 'Reprehenderit natus facilis a nam.', 'et', 18, 'dolorum', 15, 22);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2012rlm', 'Voluptatem aut odio omnis quidem consequuntur consequatur velit.', 'sed', 2, 'quis', 27, 5);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2056vwi', 'Ipsum earum voluptas nesciunt omnis magnam.', 'nihil', 10, 'veritatis', 15, 24);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2107cfu', 'Voluptatem sint maiores vitae est cupiditate dolores voluptas adipisci.', 'voluptate', 22, 'voluptatum', 49, 25);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2265ncd', 'Tenetur est occaecati ab dolor.', 'nihil', 74, 'nostrum', 46, 6);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2338gqg', 'Illo voluptatum dolorum qui rem.', 'beatae', 13, 'sapiente', 47, 6);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2346koy', 'Inventore pariatur nisi atque perferendis tempora.', 'aut', 83, 'animi', 4, 8);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2385wdo', 'Quisquam eum reiciendis esse est.', 'consequuntur', 44, 'quia', 82, 10);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2393jxr', 'Qui voluptas dolores tempora in corrupti error animi laudantium.', 'at', 44, 'praesentium', 97, 18);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2399uvg', 'Quo ea rerum eius rem fugit est vel.', 'est', 79, 'aut', 97, 13);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2453lxd', 'Aspernatur odio veritatis ex tenetur.', 'est', 75, 'veritatis', 64, 18);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2510vir', 'Ducimus numquam occaecati et autem officiis necessitatibus consectetur mollitia.', 'doloremque', 64, 'repellat', 25, 24);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2537uab', 'Iste vel consequatur fugiat et voluptatem deleniti atque fugit.', 'dicta', 26, 'omnis', 17, 17);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2785yjx', 'Laborum beatae qui earum velit facere.', 'debitis', 80, 'sunt', 14, 22);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2865nke', 'Pariatur esse praesentium nemo enim dolor fuga ad.', 'voluptatem', 98, 'reiciendis', 17, 10);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2879sol', 'Sit ratione ipsa hic suscipit.', 'at', 4, 'reprehenderit', 9, 17);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2937lli', 'Reprehenderit ut doloremque et facilis qui ipsa error rerum.', 'et', 30, 'magnam', 2, 11);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('2952nlk', 'Est ex ut ullam corporis.', 'unde', 71, 'quibusdam', 10, 15);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3210qby', 'Nemo commodi pariatur ut ea.', 'deserunt', 40, 'dolores', 94, 13);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3243ebe', 'Sed quo maxime est quasi incidunt.', 'et', 64, 'facere', 34, 5);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3285jub', 'Tempore quasi sed cupiditate ea fugit.', 'illo', 4, 'labore', 63, 21);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3429hzw', 'Culpa eaque maiores aliquid optio sunt et modi.', 'ab', 57, 'est', 3, 25);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3440hjc', 'Itaque omnis quas eius tenetur sed ut.', 'aut', 34, 'aliquid', 12, 9);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3443oli', 'Quod nulla voluptatem velit nam.', 'consequuntur', 17, 'in', 52, 24);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3496jfo', 'Occaecati recusandae cupiditate optio architecto qui aliquid repellat.', 'amet', 34, 'magni', 68, 18);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3551cdu', 'In illo perferendis consequatur nesciunt quia quod exercitationem.', 'soluta', 60, 'aliquam', 98, 18);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3684gwl', 'Nobis expedita incidunt delectus natus sunt quidem vel.', 'et', 73, 'pariatur', 70, 20);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3741wiw', 'Rerum est sapiente sed dolor rerum autem repellendus.', 'ea', 20, 'ullam', 32, 18);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('3965kef', 'Laborum non eveniet sed excepturi quia doloremque.', 'dolorem', 27, 'neque', 19, 21);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('4071ejl', 'Ut ut voluptatibus facere aliquid.', 'molestiae', 51, 'dolore', 45, 17);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('4268nnk', 'Perferendis quasi dolores ratione ipsam porro adipisci rem.', 'molestiae', 92, 'repellendus', 46, 18);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('4397phk', 'Quasi laboriosam qui qui non.', 'omnis', 28, 'debitis', 61, 10);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('4502inm', 'Culpa eum libero voluptatem iste.', 'quae', 26, 'veniam', 87, 16);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('4512exi', 'Omnis quidem qui incidunt eum rerum ea.', 'ut', 39, 'dolorem', 44, 16);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('4516kps', 'Maiores officia ab ut minus voluptatem perferendis.', 'vel', 9, 'corporis', 83, 21);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('4783wxf', 'Quo ut ut amet vel sit.', 'illum', 59, 'accusantium', 13, 8);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('5124wmt', 'Voluptas possimus harum repellendus dolorem.', 'minima', 49, 'pariatur', 80, 10);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('5176wpx', 'Ad facilis officiis provident omnis harum nisi quasi vel.', 'consequatur', 33, 'eius', 77, 19);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('5177vrd', 'Necessitatibus nobis ab vero voluptates maxime atque enim.', 'fugiat', 33, 'reiciendis', 62, 5);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('5778cae', 'Sint natus et consequatur.', 'beatae', 90, 'sit', 33, 11);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('5800pco', 'In rerum et voluptates.', 'quasi', 49, 'accusantium', 2, 17);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('6131suk', 'Repellat tempore harum ipsa deserunt.', 'fugiat', 88, 'excepturi', 53, 13);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('6139mjl', 'Dolor earum et recusandae odio officiis quos consequatur placeat.', 'debitis', 67, 'quidem', 49, 20);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('6140lbr', 'Aut vitae quo rerum praesentium aut provident nihil vitae.', 'numquam', 34, 'autem', 49, 15);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('6184lrp', 'Assumenda laudantium sequi doloribus.', 'vel', 53, 'blanditiis', 51, 25);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('6216pha', 'Non et sed culpa molestias veniam.', 'voluptates', 10, 'quis', 76, 22);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('6706lkc', 'Error illo voluptatibus omnis harum.', 'perferendis', 17, 'laudantium', 82, 14);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('6755frp', 'Quo laudantium nostrum numquam tempore libero distinctio non.', 'aperiam', 2, 'minus', 54, 23);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('6852uwc', 'Unde fugiat eveniet consequatur sunt et doloremque distinctio.', 'nihil', 61, 'porro', 5, 15);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('6910kkx', 'Nisi dolores autem ad maiores sunt qui.', 'est', 47, 'veniam', 6, 24);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7009cfv', 'Molestias est quisquam minima quae molestias voluptatem officiis.', 'fuga', 86, 'labore', 31, 18);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7134epo', 'Qui quae occaecati sed.', 'ullam', 74, 'distinctio', 99, 18);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7148xyx', 'Necessitatibus repellendus aspernatur laboriosam qui vitae voluptatem.', 'id', 66, 'tempore', 97, 24);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7490krv', 'Eveniet neque laborum odio ut dolorem.', 'et', 95, 'enim', 98, 5);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7544ith', 'Consectetur sed cupiditate minus culpa est ullam.', 'voluptatum', 76, 'saepe', 30, 14);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7544svt', 'Consequuntur est non ullam ipsum ut.', 'sunt', 19, 'beatae', 21, 18);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7632jqj', 'Modi quisquam iure maxime repellat ea exercitationem natus nobis.', 'cum', 72, 'in', 78, 23);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7678kln', 'Sunt id molestiae atque vero veniam modi ut rerum.', 'fuga', 77, 'qui', 89, 16);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7737fdd', 'Tenetur possimus vitae quia et nisi.', 'quia', 83, 'ipsa', 54, 7);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('7840dpo', 'Id ut rerum est laboriosam vero.', 'sint', 72, 'neque', 70, 23);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8101jqa', 'Ut consectetur animi voluptatem corporis libero.', 'ipsam', 85, 'cupiditate', 6, 16);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8187ote', 'Et ut incidunt magnam eum quaerat et.', 'quo', 59, 'nesciunt', 48, 24);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8188ujn', 'Accusantium distinctio et praesentium et ea beatae.', 'non', 48, 'praesentium', 79, 16);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8202lmb', 'Consectetur error voluptate qui soluta error ut dolores porro.', 'vero', 11, 'similique', 9, 20);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8267noy', 'Eos officia molestiae eius reprehenderit.', 'nemo', 12, 'fuga', 86, 21);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8341xpv', 'Ex voluptatem veritatis laboriosam voluptatem dignissimos.', 'quo', 74, 'et', 62, 5);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8399lqg', 'Dolor cumque quaerat eos reiciendis et quam rerum et.', 'accusamus', 30, 'voluptatum', 11, 17);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8488ddd', 'Quam ea suscipit omnis nihil beatae.', 'et', 72, 'eligendi', 73, 25);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8500zgt', 'Quas dolorem deserunt provident natus.', 'nemo', 41, 'dolorem', 44, 21);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8522uvp', 'Ab voluptates voluptatem voluptates.', 'facere', 76, 'non', 97, 12);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('8565phu', 'Voluptatem perspiciatis accusamus molestias commodi.', 'expedita', 77, 'maiores', 4, 5);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('9088ypi', 'Ut officiis voluptatibus et recusandae quo sit quia.', 'laudantium', 42, 'quam', 48, 12);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('9419dkw', 'Odit et impedit accusamus et accusantium dignissimos.', 'voluptatum', 55, 'alias', 45, 19);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('9695xsn', 'Labore enim quasi rerum voluptatem labore.', 'non', 26, 'consectetur', 81, 16);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('9784evt', 'Suscipit quia autem quae voluptatem et.', 'pariatur', 97, 'nesciunt', 42, 8);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('9862jxj', 'Tempore accusantium quibusdam impedit accusantium molestias.', 'amet', 38, 'veniam', 76, 13);
INSERT INTO `Producte` (`codiProducte`, `descripcio`, `unitatMesura`, `pes`, `marca`, `PVP`, `IVA`) VALUES ('9976qdf', 'Minus recusandae voluptatum assumenda voluptatum.', 'sit', 74, 'unde', 92, 7);


