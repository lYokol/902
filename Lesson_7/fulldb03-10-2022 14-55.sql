#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '7', '23', 'Voluptatum dolorum vel molestias dolorum facere. Tempore placeat illum deserunt vero dolorum rerum incidunt. Optio a quis numquam temporibus similique voluptate.', 'sequi', 691, NULL, '1974-01-27 11:40:44', '1986-03-11 18:12:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '5', '88', 'Veritatis aperiam officia error eligendi sint. Iure voluptas ipsa mollitia soluta. Nisi numquam molestiae earum adipisci voluptatum libero ut.', 'voluptates', 18, NULL, '1971-09-04 16:29:20', '2000-06-11 22:13:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '9', '67', 'Quis aut sequi non dignissimos ex quis nam. Suscipit molestiae sed omnis. Sequi non amet magnam recusandae quibusdam culpa. Dolore voluptas esse enim modi ipsa.', 'reiciendis', 17931144, NULL, '1974-06-11 10:09:42', '1980-02-27 19:01:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '2', '94', 'Illo sint ea repellat. Ad laborum impedit non quia omnis alias. Sunt eaque quia ab sit unde eos.', 'eius', 2, NULL, '1974-12-17 17:44:11', '2003-02-21 20:51:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '4', '41', 'Similique laboriosam sit veniam non dolorum est. Maxime explicabo consectetur dolorem sed est quo iusto. Provident facilis debitis explicabo. Officiis repudiandae eligendi nam non doloremque maiores.', 'dolorum', 37393425, NULL, '1973-05-25 18:46:27', '1978-03-07 15:00:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '92', 'Eos sunt non tenetur eveniet quidem cum et. Quis debitis explicabo inventore rerum. Rerum deserunt inventore sit.', 'dolores', 0, NULL, '2022-04-24 07:19:44', '1994-12-12 03:35:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '10', '26', 'Consequatur nulla facilis ratione dolor. Error praesentium amet aliquid voluptatibus nobis molestias. Iusto iste suscipit molestias. Rem dolorem et incidunt sunt iste sapiente.', 'ea', 672, NULL, '2013-11-28 15:31:45', '1992-08-27 23:55:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '6', '43', 'Temporibus quisquam facere aliquid nemo dolorem earum. Voluptatibus enim quae perferendis. Nobis id autem neque culpa. Et voluptatibus reprehenderit ut consequatur assumenda officiis blanditiis. A voluptas quis consequatur exercitationem.', 'eligendi', 71, NULL, '2020-06-06 14:57:05', '2008-01-04 22:00:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '5', '90', 'Ipsa facere sed consectetur dolores numquam illum. Et quibusdam sit harum laudantium itaque. Porro eius non cupiditate corrupti. Iste consectetur odit repellendus dolorum facere in. Veniam illo similique blanditiis architecto ipsum.', 'impedit', 8061, NULL, '1994-03-12 16:29:08', '1972-08-28 17:47:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '8', '50', 'Rerum fugit autem neque dicta qui autem magnam at. Voluptatibus blanditiis quam quisquam veritatis rem excepturi. Sit alias ut optio est repellat. Excepturi voluptates provident nisi ut.', 'sit', 5, NULL, '1983-05-27 19:44:16', '1983-07-27 00:44:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '3', '89', 'Deserunt neque nostrum explicabo animi tempore eum. Similique voluptas in deleniti recusandae alias doloremque accusamus. Sed sequi culpa tenetur eum enim repellendus.', 'distinctio', 261, NULL, '1972-02-21 03:26:53', '2021-09-17 12:44:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '7', '5', 'Omnis iure qui non. Exercitationem voluptatem est aliquid soluta harum. Dolor sed magni dolores natus consectetur. Autem quia iste molestiae quas reprehenderit exercitationem.', 'eaque', 9, NULL, '2012-06-06 02:46:31', '1996-02-07 05:58:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '10', '45', 'Modi natus et qui. Sapiente accusamus cumque ipsum in. A nihil nihil quibusdam blanditiis.', 'dignissimos', 11700, NULL, '1976-04-03 17:03:21', '2021-05-03 18:41:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '5', '94', 'Quo optio qui assumenda repudiandae cum est facere fuga. Est eligendi praesentium nihil ipsa. Cum id voluptatem numquam blanditiis sed. Non qui et nisi illum voluptatem libero ut.', 'saepe', 12019, NULL, '1988-06-14 12:41:43', '1981-07-06 18:11:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '2', '44', 'Impedit similique autem ullam recusandae. Optio sed esse iste molestias totam hic. Cupiditate nesciunt voluptates eaque.', 'alias', 69342, NULL, '1977-11-26 09:24:38', '1971-03-05 22:06:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '9', '74', 'Laborum quaerat perferendis laboriosam sit et. Quia eligendi distinctio consequatur blanditiis quo quidem reiciendis. Quidem alias ullam quo reiciendis eius et sed. Sunt vitae odit ut nulla.', 'voluptas', 0, NULL, '2011-05-08 21:02:36', '1977-01-18 12:06:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '7', '35', 'Sit quisquam ut voluptatem omnis. Sunt autem sint qui sed. Nihil eligendi et et voluptates qui qui consequatur.', 'est', 6453, NULL, '1988-09-09 02:55:01', '2015-01-28 05:37:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '7', '53', 'Dolore fuga ut sed labore ut atque est. Hic id aut qui exercitationem quidem. Iusto ducimus eum voluptate dolore. Blanditiis quia qui sit excepturi perferendis numquam dolores aspernatur.', 'labore', 374, NULL, '1981-07-24 10:13:20', '1994-10-05 19:23:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '1', '78', 'Autem similique enim explicabo. Esse consequatur suscipit aut est occaecati recusandae saepe.', 'consequuntur', 47711, NULL, '2022-01-24 14:04:50', '2010-05-12 07:27:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '5', '35', 'Nihil et id velit voluptatem aut. Aut eum exercitationem aut fugiat. Dolor vel consequatur nesciunt consequuntur.', 'est', 33437, NULL, '1999-02-19 08:03:41', '2022-08-01 17:09:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '2', '99', 'Id consequuntur occaecati nam eum ducimus voluptates maxime autem. Necessitatibus iure consequatur culpa consequuntur et laudantium officiis. Iure libero dolores consequuntur odio voluptatem.', 'quaerat', 8874221, NULL, '2014-11-15 14:05:04', '2017-04-21 04:11:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '3', '15', 'Necessitatibus rerum nulla voluptas cumque adipisci est ea. Consequatur veniam praesentium quia velit. Inventore et ipsam esse ut quo explicabo fugiat.', 'ad', 8, NULL, '1994-09-08 03:19:24', '2009-07-09 12:54:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '3', '81', 'Placeat non consequatur rerum ab error. Occaecati iusto deleniti alias. Voluptatibus aut deleniti et hic voluptas. Dolorum consequatur ea id.', 'numquam', 92165, NULL, '1985-09-16 22:25:31', '1972-04-23 17:35:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '6', '66', 'Autem et aperiam eos et optio labore velit deleniti. Neque consequuntur sed quae impedit est. Itaque qui consequatur quisquam explicabo.', 'eligendi', 68636, NULL, '1981-02-09 23:46:29', '2021-04-08 21:59:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '7', '35', 'Recusandae architecto itaque esse itaque ipsam aut occaecati. Dolorem enim est sit hic est sint. Nisi iure corporis dolorum hic qui aut pariatur. Consequatur ad aut ut temporibus repellendus natus. Enim cupiditate id sit voluptas asperiores fugit.', 'sunt', 90, NULL, '2010-02-24 16:44:35', '1972-06-08 07:03:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '2', '97', 'Qui eos nulla similique fugit. Voluptas ea optio animi ut esse ducimus ipsa. At voluptatibus nihil sed in voluptas a velit error.', 'cumque', 170, NULL, '2014-05-09 13:48:48', '1990-12-29 11:20:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '3', '78', 'Velit quia et quam voluptatum quo qui necessitatibus debitis. Eos sint sit voluptatem. Porro quos dolore quisquam quos excepturi.', 'libero', 0, NULL, '2004-06-04 23:44:09', '2017-09-07 20:26:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '1', '22', 'Ex consequatur nostrum voluptatem sapiente quibusdam aut modi. Nam porro exercitationem veritatis hic. Debitis doloremque itaque sed animi ex.', 'asperiores', 30, NULL, '2006-11-30 16:03:13', '1993-09-01 15:49:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '3', '46', 'Velit at molestiae labore sint cumque vitae. Aut qui quam expedita consequatur nostrum. Aperiam esse vero reprehenderit est nisi quis consequuntur. Quod magnam rerum error quos doloremque.', 'omnis', 262873, NULL, '1977-07-09 10:24:07', '2013-01-20 17:54:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '2', '33', 'Est reprehenderit provident beatae rerum. Ut molestias ut sapiente molestias. Illo est eligendi labore nobis deleniti. Deserunt est saepe et delectus aspernatur iure.', 'provident', 3870, NULL, '1990-01-23 12:05:18', '2020-11-07 13:04:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '9', '3', 'Explicabo autem placeat non facilis molestias est. Adipisci incidunt sit autem laborum qui. Excepturi perspiciatis placeat modi explicabo mollitia.', 'ut', 567, NULL, '2007-07-26 08:11:26', '1992-04-27 11:20:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '1', '55', 'Culpa numquam molestias facilis consequatur blanditiis. Nam vel sed velit non ratione dignissimos culpa. Eos ad odit tempora et. Qui ipsum occaecati maxime odit deleniti.', 'ea', 8840, NULL, '1993-04-15 00:24:45', '2002-03-16 09:36:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '4', '66', 'Sint asperiores illo labore quia saepe. Sed qui temporibus rerum laudantium. Error omnis velit quidem et.', 'autem', 0, NULL, '1993-05-22 13:47:33', '1978-11-03 03:19:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '1', '39', 'Soluta ullam illum quaerat dicta. Autem et corporis blanditiis vero repudiandae. Aspernatur sed mollitia possimus.', 'consequatur', 2, NULL, '2013-10-14 07:36:58', '1972-05-25 12:03:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '5', '54', 'Qui maiores ratione velit deserunt repellat tempore pariatur. Rerum praesentium officiis ipsum expedita doloribus. Eos cum nam consequuntur dignissimos dolore quas unde necessitatibus.', 'consequuntur', 2207316, NULL, '2000-12-04 02:21:33', '1986-03-26 22:49:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '8', '63', 'Ex dolor quibusdam qui consectetur vitae aut. Atque rerum ipsam repellat perferendis nam non. Voluptatem debitis voluptas aut. Error non consequuntur alias tempora magni.', 'ad', 63223, NULL, '2005-01-15 08:40:31', '2001-01-29 21:00:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '6', '100', 'Ea qui commodi explicabo rerum aliquam exercitationem. Rem in atque ut dolorem qui optio dicta. Dolor alias rem quis.', 'aut', 9, NULL, '1979-03-19 05:06:16', '1978-12-11 00:25:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '8', '76', 'Sit incidunt quis accusantium doloribus sed. Consequatur iusto sint aut iste. Odio necessitatibus adipisci fugiat error delectus assumenda et occaecati. Modi delectus nihil repellendus delectus deserunt. Dolorum incidunt ab est perspiciatis modi est.', 'pariatur', 2446, NULL, '2018-10-15 09:50:43', '1982-01-17 20:13:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '8', '34', 'Facere deserunt dolores illum dicta tempore sint facilis delectus. Accusantium voluptates et tenetur aut eos fugiat. Eligendi asperiores rem dolorum reiciendis tempore possimus fugit.', 'qui', 97, NULL, '2022-05-03 09:26:29', '2000-06-30 04:03:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '5', '50', 'Enim architecto ut possimus necessitatibus id placeat. Molestias reprehenderit qui aliquam ea dolore. Aperiam accusamus omnis nesciunt possimus illum aut laboriosam aut.', 'reprehenderit', 0, NULL, '1994-06-05 02:36:53', '1986-12-01 07:51:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '7', '57', 'Iure non quos corporis. Cupiditate quia qui aspernatur et non. Natus aut consequuntur atque et adipisci porro maxime eligendi.', 'reprehenderit', 0, NULL, '1995-04-29 09:50:54', '1984-09-21 07:51:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '5', '91', 'Soluta rerum error ea nesciunt voluptates molestiae. Ut non quos perferendis dolor provident voluptatem. Et similique neque pariatur illum nulla voluptatem.', 'provident', 13154, NULL, '1971-10-05 07:49:32', '1999-11-12 09:57:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '4', '47', 'Molestiae eius atque aspernatur in temporibus. Nam est rerum sed deserunt esse id. Temporibus ut quia delectus culpa. Qui recusandae consequatur iusto est. Quo voluptatem veritatis quam occaecati fugit est.', 'in', 85789, NULL, '2006-04-28 13:54:44', '1995-10-21 09:22:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '2', '56', 'Numquam et enim quo nisi et nisi. Totam vitae voluptatem mollitia temporibus atque aperiam inventore. Tempora aut magnam aut labore ipsa maxime. Et nobis provident ut alias.', 'quod', 25972, NULL, '1984-07-11 22:12:47', '2018-10-25 00:35:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '10', '28', 'Asperiores rerum qui modi qui non illum et. Dolor ipsam sapiente ut cumque harum qui omnis et. Recusandae architecto ut quaerat cum quod consectetur eum. Sequi corrupti enim totam eius atque consequatur in.', 'expedita', 4459, NULL, '1974-01-18 11:05:53', '2003-09-10 04:07:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '9', '81', 'Numquam qui omnis alias qui voluptates explicabo maxime. Temporibus similique tempore quod eligendi a officia. At beatae maiores amet aliquid vitae.', 'placeat', 1054, NULL, '1970-05-06 06:11:40', '2014-09-06 09:55:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '4', '93', 'Nostrum quidem id nihil eum. Molestiae ipsa tempore debitis ut. Corrupti voluptatem distinctio aliquam laborum architecto aut ut.', 'magni', 6944099, NULL, '1992-07-26 19:45:57', '1997-11-18 00:21:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '4', '68', 'Molestias eaque aperiam aut commodi. Molestiae est aut qui cumque in perspiciatis cumque. Numquam error dolores assumenda nostrum officiis in.', 'hic', 514, NULL, '2012-06-10 01:31:23', '1982-05-15 01:36:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '6', '44', 'A autem ex et. Enim assumenda doloremque suscipit aliquid eius. Vero vel distinctio rem sit.', 'et', 3, NULL, '2019-09-28 11:27:33', '2007-03-02 11:02:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '1', '3', 'Eum sit repellendus reprehenderit eum in. Minima ipsam accusamus deserunt modi magnam officia. Adipisci quibusdam dolor vel rem laudantium. Hic voluptate ex similique est. Accusamus et id perspiciatis repellendus nam reiciendis voluptatem iste.', 'harum', 773006512, NULL, '2005-06-05 13:01:15', '1976-08-05 18:33:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '10', '81', 'Minus et quam magni voluptas. Non voluptatum ut officia vitae autem. Error quisquam est enim quia aspernatur ut. Ea at nulla repellendus ratione voluptatum molestiae. Et exercitationem aut est.', 'perspiciatis', 355900, NULL, '1994-07-29 10:50:00', '1976-01-22 22:41:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '7', '49', 'Eos aut voluptatem in quaerat recusandae rerum quo. Possimus dolor enim aliquam officiis architecto aliquid ex aut. Velit eaque qui aut magni vel.', 'sint', 83828, NULL, '1998-06-07 19:58:16', '2015-10-16 00:22:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '8', '42', 'Alias ipsa quis dolor ipsam. Sequi quo et voluptatem non vero sit. Nihil fuga amet ut in. Tempore laborum illo ut officiis temporibus cupiditate.', 'voluptatem', 224, NULL, '1980-10-05 17:00:42', '1993-09-16 23:53:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '3', '60', 'Accusamus eius occaecati nam placeat et. Aut praesentium voluptates assumenda eos pariatur esse iste. Aut quo facere odio laudantium voluptates rem libero.', 'ducimus', 80, NULL, '1993-07-30 18:18:38', '2012-03-13 11:55:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '8', '66', 'Asperiores veniam rerum facere eligendi quod labore quam et. Ut exercitationem occaecati amet. Ipsam incidunt non est voluptas. Tempora dolores sunt distinctio sint labore iste nesciunt quasi.', 'quo', 9724718, NULL, '1993-01-25 18:14:06', '1980-03-23 23:30:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '1', '43', 'Sequi qui temporibus et cum sunt inventore accusamus qui. Molestias facere quia inventore. Non nihil accusantium cum molestiae rerum ratione. Eum asperiores consequatur et eum deserunt. Omnis nemo eos voluptas aliquid autem velit est.', 'aspernatur', 11285619, NULL, '2021-02-23 18:21:48', '1978-01-24 21:23:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '3', '54', 'Voluptatem consequuntur aut quis ab. Voluptatem dicta voluptas dolor aut possimus. Dignissimos quo molestias blanditiis quod hic sed odio et.', 'corporis', 16566, NULL, '2018-08-02 22:00:17', '1987-07-29 11:32:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '4', '56', 'Error eaque dicta commodi atque at sint sint. Molestiae expedita reiciendis eveniet omnis. Voluptatibus aliquam quae iste qui qui perferendis. Amet enim illo voluptatum.', 'perspiciatis', 78, NULL, '2013-04-24 18:57:22', '1997-07-10 03:23:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '1', '46', 'Corporis exercitationem facere eum tempora. Deserunt ut voluptatem laudantium temporibus et. Eaque quisquam corporis dolor tempore error eaque.', 'omnis', 69314347, NULL, '1979-09-26 14:10:48', '2002-06-08 04:15:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '2', '93', 'Est magni rerum voluptas sed ea qui sapiente. Facilis ullam officiis sit pariatur quos. Qui sint odio aliquid rerum quas sint.', 'amet', 3, NULL, '2022-04-25 13:42:00', '1984-09-25 09:45:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '8', '99', 'Omnis error exercitationem atque atque eos eius. Quos nam unde natus commodi quia sunt. Necessitatibus ullam vel eos molestiae. Similique consequatur sit est quia consequatur.', 'voluptatem', 17438423, NULL, '2017-04-17 01:43:48', '1990-11-30 08:10:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '8', '4', 'In porro incidunt repellat eaque sed quas. Ut sunt et adipisci beatae aut aliquid. Facere suscipit sunt fugiat minus et earum velit. Veniam consequatur quam aut minima numquam.', 'consequatur', 214516122, NULL, '1997-11-08 07:07:32', '2009-01-31 13:12:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '10', '9', 'Delectus quo voluptate odio ratione molestias omnis. Necessitatibus sapiente eum et tempora officiis natus in. Sit dolores corrupti quaerat qui provident non. Qui asperiores repudiandae ex animi totam.', 'voluptates', 45432, NULL, '1999-10-19 04:48:49', '1978-06-13 02:25:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '8', '50', 'Officiis deleniti voluptatem doloribus veniam. Et necessitatibus et fugit recusandae magni iste veniam non. Non sit impedit doloribus dignissimos deserunt ea pariatur animi. Non sapiente voluptate a quos sit ea.', 'et', 0, NULL, '2015-02-07 21:49:32', '1975-12-30 19:09:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '6', '78', 'Veritatis velit in itaque labore mollitia. Beatae neque consequatur doloremque. Est qui molestias numquam ea. Numquam recusandae perspiciatis sint rerum voluptates aliquid.', 'repellat', 30340, NULL, '2011-09-12 22:54:22', '2001-08-05 07:50:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '6', '49', 'Similique est provident voluptatum occaecati laborum voluptatibus omnis provident. Voluptatem ut dolorem et. Rerum assumenda consectetur quaerat doloribus perspiciatis eius ut.', 'vitae', 0, NULL, '1987-11-05 00:09:43', '1992-11-15 00:47:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '6', '17', 'Vitae qui voluptas aperiam alias. Et sit quis repellat ut sint deserunt fugit. Ut nemo aut veritatis cupiditate consequuntur delectus omnis. Pariatur perferendis excepturi vero rerum.', 'fuga', 928868, NULL, '2012-03-14 00:20:17', '2003-08-22 10:18:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '10', '38', 'Occaecati numquam atque cum perferendis et perspiciatis pariatur est. Aliquid labore sunt quia odio sed. Incidunt suscipit ea aspernatur quas.', 'aut', 12105151, NULL, '2002-09-28 00:55:15', '2004-08-14 05:24:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '6', '22', 'Explicabo ab ipsum sed est dolor nobis qui. Velit et asperiores fugiat debitis omnis quam. Dolores omnis labore qui et sed dolore.', 'a', 7, NULL, '2000-09-01 15:56:08', '1998-03-28 20:12:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '10', '33', 'Ipsum est nesciunt illo magni itaque. Qui magnam tempore sit officiis laborum. Ut atque distinctio minus nostrum non consequuntur eaque velit. Ipsam nisi voluptatibus assumenda nisi sint dolore.', 'numquam', 1154, NULL, '1998-01-24 04:18:07', '2017-01-31 01:53:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '9', '6', 'Dolorum quos quia ducimus quis enim libero sint. Reprehenderit impedit voluptatibus magnam. Nobis consequatur voluptate perspiciatis aut.', 'quia', 9824384, NULL, '1975-02-02 15:02:03', '2016-02-11 20:30:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '8', '9', 'Aliquid ut aliquid ipsum impedit quas vel ipsa reiciendis. Vel quo laborum voluptas consequatur reprehenderit ratione fugiat aut. Praesentium voluptates aut omnis fugiat.', 'numquam', 0, NULL, '2004-05-02 18:25:54', '1987-06-22 07:08:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '6', '8', 'Totam voluptatem tempora quis quibusdam laudantium laboriosam sit blanditiis. Libero quos quia aut nesciunt. Hic veritatis deleniti sed distinctio culpa et explicabo.', 'adipisci', 0, NULL, '2022-05-13 07:17:09', '1977-10-16 14:18:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '7', '60', 'Expedita nihil beatae perferendis occaecati. Cumque quo ut consequatur unde rem. Facere nesciunt illo dolor autem ipsum corrupti sed.', 'fugit', 4800920, NULL, '1990-09-07 04:15:26', '1974-09-08 04:34:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '6', '76', 'Perspiciatis perferendis eveniet magnam. Dolor in minus sed omnis tempore. Blanditiis qui et repellat voluptas facere.', 'aspernatur', 6, NULL, '1999-07-01 22:41:30', '1974-08-19 23:46:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '6', '27', 'Vel laudantium animi architecto consequatur quis eos. Dolores consequuntur illo explicabo eum. Consequatur at non deserunt. Praesentium voluptates placeat ad qui qui minus. Ea similique dolorem animi placeat sit.', 'id', 8633282, NULL, '2010-10-07 17:24:45', '1991-01-09 16:21:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '8', '25', 'At voluptate non necessitatibus cupiditate facilis praesentium voluptatem ipsum. Ullam ipsam consequuntur placeat eum. Ipsam ut atque architecto assumenda suscipit sint eaque. Et mollitia omnis et eos dolorem iste.', 'veniam', 9, NULL, '1979-04-09 05:49:20', '2009-07-24 10:11:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '3', '66', 'Dolores praesentium fugiat voluptate dolor voluptatibus illo magnam. Quibusdam in officia esse. Similique dignissimos nesciunt a totam dolore velit. Accusantium dolorum fuga qui omnis quas.', 'et', 442821055, NULL, '1976-12-12 09:16:11', '1998-04-28 21:45:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '4', '1', 'Laborum qui sequi repellendus. In aut sit aliquid odio nulla ipsum. Nemo aut et et accusamus sunt quaerat delectus. Reiciendis ex beatae sit eius voluptatum.', 'neque', 16522, NULL, '1997-05-11 20:48:17', '1983-04-20 03:18:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '2', '84', 'Officia libero asperiores fuga non dolor possimus. Sequi laudantium sunt est et reprehenderit. Rem modi mollitia velit nobis et voluptas enim. Corporis officia qui fugit doloribus rerum rerum voluptas.', 'eum', 854, NULL, '1978-05-08 19:19:11', '1975-07-17 02:26:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '8', '67', 'Esse repudiandae at velit ipsum perspiciatis quod porro. Molestias et quibusdam debitis rerum ut nobis. Velit quis occaecati ducimus earum inventore velit eum. Quod occaecati sit quas accusamus voluptatem.', 'est', 684989, NULL, '1977-09-20 13:21:19', '1982-07-13 03:52:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '4', '37', 'Voluptate ut officia ea et. Eius aut asperiores facere voluptas mollitia. Accusantium quia minima ratione dolorem.', 'nihil', 4883806, NULL, '1999-08-30 11:24:45', '1993-08-27 17:02:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '9', '29', 'Qui quidem error odit vel aspernatur quo quaerat. Minima earum in quia amet. Odio impedit quasi assumenda sed aut minus.', 'dolorem', 80120, NULL, '2016-03-08 03:15:34', '2022-08-04 09:19:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '8', '42', 'Fuga ut et deleniti. Aut quod dolorem quia minima dolores expedita nesciunt. Assumenda autem ex tempora sit quisquam.', 'officiis', 8, NULL, '1987-02-09 14:43:53', '2016-10-26 16:22:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '6', '71', 'Repellendus eaque maxime soluta consequatur. Modi eius non laudantium. Ratione voluptatem reiciendis officia. Voluptatem illo sit minus modi veniam dolorum.', 'eveniet', 737976392, NULL, '2005-04-01 14:58:28', '1989-10-07 08:13:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '8', '37', 'Sapiente temporibus ex voluptatem odit quibusdam atque velit eius. Architecto dolorum in impedit eaque et doloribus ut ratione.', 'ut', 56097, NULL, '2005-01-01 09:45:20', '1994-03-04 02:50:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '8', '49', 'Ut animi vel dolor tenetur. Soluta ut quae amet commodi ipsam velit temporibus necessitatibus. Non consequatur et itaque facilis. Cupiditate reprehenderit optio et quis molestiae.', 'minima', 0, NULL, '2011-07-02 14:34:39', '1997-01-22 05:23:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '5', '35', 'Nesciunt perspiciatis ea velit quas unde praesentium perspiciatis. Est ea animi vel quam.', 'quaerat', 976, NULL, '2008-06-27 12:43:34', '1989-12-29 21:26:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '6', '10', 'Repellendus et ut et officia esse. Rerum sed dignissimos quia facere reiciendis placeat. Laborum nobis modi veniam aut enim et voluptate facilis. Est amet voluptate minima deserunt sint molestiae aperiam.', 'dolores', 18, NULL, '2001-09-01 20:46:50', '2011-01-14 06:20:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '10', '10', 'Veniam nihil reprehenderit omnis quisquam. Dolores et unde cum quia. Est consectetur nemo et asperiores cupiditate ipsum. Ipsum earum maxime dolor sed. Magnam non ea ut dolor.', 'sed', 570555, NULL, '1983-09-15 13:39:46', '2005-08-24 15:43:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '9', '46', 'Sed eum voluptatem aliquam sit. Consequatur molestias vel et minus aut. Tempora ea fuga est et sed perspiciatis.', 'nesciunt', 7, NULL, '1982-10-20 03:19:54', '1975-05-31 10:22:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '4', '60', 'Aspernatur et deleniti qui fugit sed. Veniam qui magni harum voluptates vel aliquam. Autem praesentium odio ducimus sunt et sed facilis. Illo repellendus est quis.', 'incidunt', 385921920, NULL, '2012-07-12 13:00:59', '2013-03-21 16:05:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '7', '66', 'Aliquam est ratione quas itaque aut provident. Occaecati voluptatem rem sequi. Qui doloremque tempora voluptatem voluptatum consequatur.', 'ratione', 39292319, NULL, '2011-02-01 19:42:17', '1992-01-21 09:39:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '3', '3', 'Harum itaque suscipit labore quod magnam. Autem enim a consequatur perspiciatis totam. Ut quibusdam distinctio asperiores. Quam omnis laborum est quis aperiam ut.', 'minus', 1679, NULL, '1996-08-28 16:00:11', '2016-10-20 06:45:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '7', '40', 'Ullam ut voluptatem et. Molestiae sapiente quis ea. Voluptas sint sit et. Qui rerum nulla placeat.', 'magnam', 97452, NULL, '1978-07-08 20:48:31', '2006-05-06 13:21:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '9', '45', 'Quo ea ipsa officiis vel voluptas quis. Ea quos molestiae ea.', 'quisquam', 4162760, NULL, '1972-06-01 22:02:27', '1992-03-24 22:00:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '1', '19', 'Consectetur dolore quam quidem. Consequuntur voluptas eaque quia. Et ullam atque est quod et sit. Maxime eaque totam asperiores voluptatum.', 'aut', 97, NULL, '2011-08-07 17:35:54', '2016-03-09 14:28:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '9', '91', 'Aspernatur deserunt dolorem qui odit numquam. Amet voluptatibus impedit eum quam a voluptatum. Voluptatem suscipit nostrum eaque minus.', 'distinctio', 131372, NULL, '1998-01-27 11:55:07', '2009-12-06 03:26:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '5', '54', 'Ut occaecati voluptas illum aut labore magni id. Totam magni repellat minus quas eveniet quia. Vel est quo possimus iste doloribus. Asperiores incidunt rerum officiis maxime voluptas earum ex alias. Omnis optio reiciendis iste assumenda error in.', 'saepe', 710, NULL, '2001-09-22 05:27:37', '1986-10-28 05:56:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '4', '98', 'Deserunt rerum velit nobis voluptatem voluptas. Quaerat saepe debitis odio qui aspernatur voluptatibus harum eos. Deserunt veritatis deserunt earum. Omnis animi nam unde numquam et sit. Enim quasi occaecati eos autem ex iure.', 'ut', 7, NULL, '2008-11-01 17:14:21', '2019-08-29 01:03:28');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'quaerat', '1978-05-21 14:43:26', '1986-06-11 16:20:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'culpa', '2009-11-23 08:24:13', '2008-12-28 10:36:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'hic', '1980-01-28 17:10:48', '1975-05-19 18:40:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'voluptates', '1977-07-31 17:23:10', '1971-03-23 13:18:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'consequuntur', '2001-12-01 11:52:10', '1994-09-02 22:21:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'a', '2014-03-26 06:32:33', '2013-05-24 10:17:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'iure', '2010-06-18 08:36:10', '1991-06-12 12:20:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'aliquam', '1980-05-09 07:18:47', '1974-05-18 17:42:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'id', '1983-01-22 02:35:34', '1985-10-07 12:33:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'animi', '2002-09-28 11:19:15', '2018-01-13 20:41:39');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'accusamus', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'sequi', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'placeat', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'et', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'tenetur', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'suscipit', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'consequatur', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'quia', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'maxime', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'sequi', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'reiciendis', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'dolor', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'incidunt', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'reiciendis', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'eum', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'commodi', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'sint', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'aliquam', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'praesentium', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'sint', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'et', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'nam', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'atque', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'enim', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'dolor', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'aut', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'ea', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'ducimus', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'omnis', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'est', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'doloribus', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'accusantium', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'autem', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'omnis', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'qui', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'nisi', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'cumque', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'consequatur', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'autem', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'eius', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'ratione', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'facere', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'totam', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'vero', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'ut', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'possimus', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'magni', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'quibusdam', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'et', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'ab', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'dolorem', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'sapiente', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'sed', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'ipsa', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'vero', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'quisquam', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'exercitationem', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'in', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'ea', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'expedita', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'commodi', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'quisquam', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'tempora', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'cum', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'velit', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'ea', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'ducimus', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'corporis', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'eum', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'sint', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'nobis', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'ullam', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'veritatis', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'non', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'ea', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'inventore', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'voluptatibus', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'veniam', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'iusto', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'quod', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'et', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'itaque', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'ratione', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'et', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'nobis', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'impedit', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'voluptatibus', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'incidunt', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'consequatur', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'eligendi', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'eum', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'ad', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'neque', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'voluptatum', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'iste', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'sit', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'perspiciatis', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'quas', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'asperiores', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'tempora', '24');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '61', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '33', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '80', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '45', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '44', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '20', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '31', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '6', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '44', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '98', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '50', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '11', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '40', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '88', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '70', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '79', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '99', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '65', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '78', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '57', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '27', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '50', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '24', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '79', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '83', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '34', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '13', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '51', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '6', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '75', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '69', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '67', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '7', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '48', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '11', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '51', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '68', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '41', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '56', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '12', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '39', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '6', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '23', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '79', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '93', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '92', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '57', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '91', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '56', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '35', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '48', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '83', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '84', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '71', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '61', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '67', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '5', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '74', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '17', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '10', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '48', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '86', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '77', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '55', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '34', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '87', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '5', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '1', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '27', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '60', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '13', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '66', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '65', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '35', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '44', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '57', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '27', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '1', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '48', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '83', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '35', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '96', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '65', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '19', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '66', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '26', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '85', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '70', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '100', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '2', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '80', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '48', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '87', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '56', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '2', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '20', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '43', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '7', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '21', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '69', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'f', '1972-08-07', '27', '2014-08-11 10:41:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'f', '2000-07-29', '78', '2016-03-04 03:41:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', '', '2016-03-05', '73', '1984-04-04 12:15:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'f', '1988-02-22', '18', '2001-02-27 14:32:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'f', '2003-03-12', '32', '1987-12-09 11:08:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'f', '2010-05-25', '31', '2019-01-27 08:03:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', '', '2003-12-31', '63', '2019-01-30 05:50:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', '', '1987-12-24', '92', '1975-01-12 10:48:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', '', '2021-07-11', '55', '2012-06-01 10:41:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'f', '1993-10-03', '44', '2007-11-13 00:46:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', '', '1989-03-15', '82', '1990-01-02 22:25:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'f', '1979-10-20', '73', '1994-04-22 09:14:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', '', '2008-11-15', '30', '1971-07-22 17:27:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', '', '2005-05-23', '73', '2010-05-23 10:51:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'f', '2010-05-10', '87', '2010-03-09 23:14:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', '', '1981-03-13', '36', '1990-10-22 00:15:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'f', '2013-10-06', '10', '2022-08-26 17:55:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', '', '1988-09-30', '89', '1975-05-07 22:07:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'f', '2006-06-08', '67', '1979-07-10 11:46:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'f', '1972-11-06', '44', '1989-06-04 05:05:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'f', '2005-07-14', '24', '2009-11-09 11:05:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'f', '2004-06-15', '64', '2003-02-02 21:33:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'f', '1988-06-30', '77', '1997-08-07 02:05:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', '', '1976-06-11', '58', '1990-10-15 16:25:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', '', '1994-01-13', '59', '1981-12-24 20:11:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', '', '1983-12-23', '79', '2004-05-26 23:18:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', '', '2001-05-23', '43', '1999-09-08 18:36:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', '', '1998-08-30', '11', '1979-07-25 12:13:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'f', '1974-04-19', '17', '2019-03-05 03:06:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', '', '2008-04-09', '7', '2001-08-15 08:41:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', '', '2002-04-25', '95', '2001-05-25 05:53:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'f', '2002-06-07', '43', '1996-07-05 17:17:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'f', '1997-06-01', '85', '2014-05-20 19:38:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'f', '2010-05-20', '68', '1975-10-30 19:41:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'f', '1988-10-29', '60', '1989-07-17 15:35:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'f', '1990-12-26', '16', '1983-10-21 19:37:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', '', '1999-03-09', '99', '1990-08-22 06:38:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'f', '1976-06-05', '23', '2019-01-29 09:51:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'f', '2016-05-16', '7', '2021-09-11 06:01:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'f', '1975-02-03', '53', '1974-11-29 22:19:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'f', '2013-08-31', '66', '2004-05-16 17:14:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'f', '1993-09-19', '89', '2009-05-25 22:47:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', '', '2020-01-09', '25', '1994-03-29 19:12:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'f', '1996-03-16', '96', '1999-10-04 12:49:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', '', '2015-06-22', '62', '1974-12-01 00:02:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'f', '1986-09-14', '12', '2009-02-28 09:10:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', '', '1995-08-29', '31', '2000-09-03 06:38:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'f', '1999-01-09', '71', '2020-11-07 11:24:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', '', '2001-09-19', '1', '2020-09-27 13:17:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', '', '2016-07-31', '97', '2009-04-27 16:02:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', '', '2009-08-09', '14', '2017-09-22 21:29:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', '', '2005-03-08', '25', '1995-07-21 22:04:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'f', '2014-11-12', '60', '2001-08-31 00:10:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', '', '1971-09-23', '90', '1999-08-24 13:22:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', '', '1977-09-18', '83', '2014-05-24 09:08:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'f', '2001-04-28', '19', '1970-07-10 15:04:43', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'f', '1980-08-12', '68', '2004-05-28 13:26:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', '', '1987-07-20', '25', '1992-03-07 20:40:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'f', '1983-05-04', '30', '2008-09-07 03:18:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', '', '1980-01-28', '85', '1999-06-18 10:30:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'f', '2021-10-02', '32', '2005-05-21 06:58:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'f', '1996-10-24', '24', '1984-07-22 11:30:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'f', '1991-10-27', '27', '1994-06-06 21:21:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'f', '2013-09-05', '16', '2009-02-18 05:32:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', '', '2001-09-14', '92', '1997-11-30 03:00:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', '', '2007-01-30', '87', '1972-04-25 00:36:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', '', '1970-10-18', '31', '1981-02-08 06:50:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'f', '1997-03-30', '90', '1999-07-05 18:11:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'f', '2015-10-13', '10', '1992-03-14 03:47:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', '', '1996-05-12', '38', '1990-06-07 09:05:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'f', '1984-02-11', '42', '1993-02-22 17:02:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', '', '1994-12-10', '75', '1997-06-21 20:00:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', '', '1994-08-22', '26', '1988-04-02 04:32:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', '', '2013-01-21', '67', '1975-04-19 07:58:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'f', '2021-07-20', '70', '2002-02-03 05:18:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'f', '1982-01-11', '88', '2022-01-02 13:04:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', '', '2013-12-09', '79', '1992-08-22 23:31:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', '', '2003-04-26', '1', '1980-02-11 21:17:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', '', '1982-01-05', '58', '1983-01-14 00:49:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'f', '2020-08-08', '80', '2020-08-21 22:02:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', '', '2017-05-17', '97', '2022-06-23 08:41:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', '', '2013-11-09', '72', '1982-01-15 05:25:22', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', '', '1995-10-03', '4', '2007-03-15 09:25:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'f', '2015-01-21', '57', '2007-01-21 07:08:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'f', '1984-01-10', '62', '1987-08-01 04:05:43', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', '', '1970-11-01', '86', '2001-07-08 21:41:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', '', '2019-11-17', '76', '1987-02-27 18:49:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'f', '1980-09-25', '30', '1992-08-23 11:36:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', '', '1981-04-23', '10', '1998-03-24 15:59:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', '', '2015-09-19', '5', '1972-08-25 07:44:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', '', '1995-07-30', '14', '1999-10-27 09:58:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', '', '2008-01-04', '42', '1989-04-13 10:12:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'f', '1991-09-01', '29', '1997-02-21 04:08:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', '', '1994-06-27', '41', '1972-05-28 03:41:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'f', '1995-10-13', '57', '1974-03-30 18:48:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'f', '2007-09-28', '20', '1978-03-21 10:01:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', '', '2019-06-09', '28', '1987-04-04 18:15:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'f', '2006-09-29', '88', '1997-05-07 04:13:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', '', '1999-06-06', '10', '2012-08-16 18:56:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', '', '1999-05-06', '37', '1996-06-16 03:08:37', NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Marietta', 'Hyatt', 'margarette.christiansen@example.com', '1f0b156a42ae32821bc1f69edf8f952123cfe2c2', '764', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Larry', 'Kub', 'pete13@example.net', 'd3e691edd1b95028c2b3645d5f2b4a7913ef0a18', '603048', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Kellie', 'Volkman', 'santino20@example.net', '8eb7084e99c4c5167c857e0891ae45bfdb972a14', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Eveline', 'Considine', 'schuster.pamela@example.net', '84500a2acf25ea5b041d5cd2b63a21e129b00bd0', '378', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Alvis', 'Langworth', 'erica.rippin@example.net', '1928a04d6cfea4a5668754cc96c52a53260fa4eb', '11', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Mitchell', 'Robel', 'madonna87@example.org', '74135134e259baa4a1b860e84ed3d95c87469197', '38475', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Stevie', 'Olson', 'gdaniel@example.com', '1bc84a25125908d9b8cbe1a2411f9007a18c9a59', '590822', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Hugh', 'Macejkovic', 'bbeier@example.net', 'b73e0e7970640965f7fb107a4a4a64811ae89523', '828379', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Jeanie', 'Leannon', 'stephan.witting@example.com', '5e17d3b65aeceefe7a7053681288197a3919b772', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Noemie', 'Gorczany', 'vpollich@example.com', '8af1bddb09e3f04aa6c7f629a08069ddb671b522', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Wade', 'Hartmann', 'berry.champlin@example.org', '9fdeb1750da503e6fd15153dacbe5b4962a76920', '82', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Palma', 'Koepp', 'adrain.cronin@example.com', '2d1b6c65555f5dcfc373c5aac5d06e1a93fe89e1', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Stefan', 'Hahn', 'anderson.coleman@example.com', '2db3a4167afb12c7f8dd547a22bdaa43c0075e11', '368', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Sven', 'Lubowitz', 'gage.lynch@example.net', '69d68d1265e425ab9b6bf73dc94fa76cbd50ee69', '266597', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Ofelia', 'Torphy', 'robel.hilda@example.org', 'ae1b7dc8cb00ff5bbb38e2d8a1a2cdaefc3d1c17', '288', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Herta', 'Swaniawski', 'casimer.lynch@example.net', '304d94bad7ef2081b59042c25709497fd4a21222', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Elmer', 'Beatty', 'ecasper@example.net', '8929b077aafbe91702991470c0a519634feb5cd9', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Zora', 'Prosacco', 'destany49@example.com', 'b394da608a56d60002d3c64bd980006688776a41', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Ramon', 'Friesen', 'roderick36@example.com', 'e5fb68c5fb73e07cf6f45d774a560fbbcacbd85b', '542', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Aditya', 'Padberg', 'estefania32@example.org', 'fc7ba4a38a2ced8ea3a51d1d50b9578094911566', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Chet', 'Bradtke', 'hermiston.armand@example.com', 'f9d4d6495b8d9301d06f2a3120a3164850aa7ea4', '9745125278', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Zoila', 'Treutel', 'lacey91@example.net', '5fedca80f651f6acce2f3751636b35905dff1d2c', '817229', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Santa', 'Baumbach', 'quigley.katarina@example.com', '150dd78dfafa3b7c4d2c51766bd2207ab197137f', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Ola', 'Quitzon', 'vhuel@example.org', '49f1bdc4ca2bd49277a4acefc2caa4ad4775d0da', '374705', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Anna', 'Gibson', 'percival.powlowski@example.org', '503994451213a3a14b672060e978730c6b96c088', '3', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Wendell', 'Thompson', 'weimann.jacynthe@example.com', 'abacf46b66f1497065769649092f6aeaba65d159', '126378', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Abbigail', 'Nader', 'virginia79@example.com', 'f7b611cff88162739e29bf726e02b4e1fa72acbb', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Bridgette', 'Eichmann', 'tschuster@example.org', '183b067c2509db78abdda1c39b5d42a4e5ffe995', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Leif', 'Schmidt', 'bkautzer@example.net', '6f13248665bb44639f726fb4f5fb41cb74136f54', '631981', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Candido', 'Auer', 'hschultz@example.org', '56e2885d265c9195bc5c5b23193273992fba9d89', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Isobel', 'Nicolas', 'giovanna18@example.net', 'adbb7cd525b67c91315977abc1929b4bd04330ae', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Chandler', 'Quitzon', 'danial.johns@example.org', 'a76140f57373796ab7c9980dad884fa48f3c0433', '701465', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Norberto', 'Schamberger', 'johnston.dannie@example.org', 'cce8fc1d618c694e46666e7d6a7adb0b0f210d7e', '585884', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Katheryn', 'Farrell', 'braulio.casper@example.org', '4f69772ed569d3bfae85d1597cb7592de448073c', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Marlee', 'Quitzon', 'lueilwitz.ada@example.com', '7b1160338df2b26dd55c5c152a7c22029c134fd6', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Beau', 'Powlowski', 'xbaumbach@example.com', '5dd1311ad8b0fdde58690a3feb3f86257a0aaba3', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Janie', 'Johnson', 'stroman.demond@example.net', '85d7bf2b4f40da4a963d24b5c31e64abeda6dd3c', '62', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Larry', 'Weissnat', 'lyla.lindgren@example.com', '7ee8bac723f831ef780f78ee33630b2a3e474e79', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Cleora', 'Welch', 'madeline.towne@example.com', 'ed022c2413f652e8ae4b29db0e121b8f10c41740', '354745', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Joaquin', 'Nicolas', 'metz.elsie@example.net', 'd5f6b3145728a74a5fb154882ba1ac13ed6a9b85', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Christop', 'Moore', 'cartwright.amos@example.org', '11d2e391c9c5e8556ca1ab3615461fc294c01d74', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Octavia', 'Auer', 'gina51@example.com', '0e4653f2e7428465f38d22efb530fdf2782f51d4', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Jean', 'Hansen', 'xherzog@example.net', '91442f9d4a35f79fc1308b7a98ebb84179f6b2ba', '542904', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Kristina', 'Dickinson', 'cormier.emmitt@example.com', '80d5830ab4b4d50abfcb9bb9ab6de9b49cfd083b', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Raleigh', 'Graham', 'shyann.bartell@example.org', '798187ebf0ccf57352ad6075bfa0a3cfd52dc60d', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Chaim', 'Kuhn', 'anibal78@example.org', '7a41f72c8e1d93a9b99e1251d3d08cf38063b221', '341', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Kaley', 'Jerde', 'tania.waelchi@example.net', 'dbe470a98ad5a0960a3f8f949f115fa228eff686', '533123', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Mertie', 'Hahn', 'hassie.abernathy@example.net', '07c078e1a1f4dd76b224561e4640e4c8b6b8a3b5', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Audie', 'Toy', 'mina.koss@example.net', '3c80a4745f2e74db468645c1910efea5eddd29c3', '7266977584', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Eudora', 'Grady', 'holly72@example.net', 'd83f64cfbf6414703c3f3e5a3c03628259b52fdf', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Clementine', 'Kuhn', 'eloisa.adams@example.org', 'ed1086365917af1cc1a8665771c359a6a8d40cfe', '445817228', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Franco', 'Reinger', 'elliot14@example.net', 'be6af7c6ad17031085430a770a4bb84f182e48f4', '442970', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Tony', 'Turner', 'narmstrong@example.org', 'c1735587142e3b5d3e38acc25533c75c9fede550', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Christa', 'Spinka', 'fterry@example.org', '9e16b062179b9dbbc07ceff175bbbcb969ae276a', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Sadye', 'Hermiston', 'umayert@example.org', '45ae2871045ac8e67834e6b16b8ab6b2988d0356', '427', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Darwin', 'Wilderman', 'boyer.hunter@example.net', '47e8e676f84ff9f5cb50d3fab230d0bd5787953a', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Shanon', 'Hyatt', 'uboehm@example.org', 'ec9ea015f008739243668062d0f221a81ef27b76', '194', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Dino', 'Rempel', 'kristofer.green@example.net', '30fd0cec60dab31fa24969df5a1e5a23032c75a4', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Marley', 'Torp', 'ufeest@example.org', '0088a15b3732862aeaa47eaf6e1e85822bbe559f', '416448', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Oran', 'Wintheiser', 'ekutch@example.net', 'dfc6377c612255da82b987b2c5d88ed5e60143f0', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Araceli', 'Breitenberg', 'cary.collins@example.org', '453c31ec0e57e2ec400e2c8cff4d88e907f0fc36', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Yasmin', 'Renner', 'aufderhar.jaquan@example.org', 'af0413220a6a7e3b495344e9625275a53a226cbb', '8784466929', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Kiara', 'Weissnat', 'kreiger.vern@example.com', 'dec6ef8bae2de1ae512f620318d901284eb844ed', '782545662', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Angelica', 'Nicolas', 'alison91@example.com', '1911c3610aa2e4dc7be4c70bbdcb0b6b17c891a0', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Aron', 'Green', 'chane@example.com', 'c1609f24e70e66fc300a4f9cfa791dbc280aff5a', '6606073733', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Travis', 'Wiegand', 'trisha73@example.net', '43a2d7f5c72fd6fff1385330df74d6300214c3b2', '661', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Nathen', 'Cormier', 'plowe@example.org', '96d1936dcefe10706748428619a3e869f99f40e7', '794', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Deja', 'Hermann', 'eleonore18@example.org', '1cca7734925c82d876ab6bfcfd9ef467b7e21ba4', '96', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Nikki', 'Russel', 'mcdermott.bertha@example.org', 'b53fc6487a10046b26ac484da8240dc8f2e0dd76', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Allison', 'Jakubowski', 'herman.alison@example.org', '3c38c2b5c32b859346156ea33a1ba71b51efb4fb', '939291', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Everett', 'Bogisich', 'vwatsica@example.org', 'b586f53fba4e712c914a32485ccb2d0c109f52e7', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Alfonso', 'Wuckert', 'dmayert@example.net', '532a0bc9abfdf403d0389af6dab3d5b49c7fbac2', '159404193', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Chanelle', 'Wiegand', 'enader@example.com', 'b4a441c35b6ff371e65d285b8165521c7cc91e97', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Harold', 'Lang', 'derek.schinner@example.net', 'acd8fd884939c7535aeed07ccf2b0fc9eaa1a931', '4831916513', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Matt', 'Lowe', 'zelma.herzog@example.org', '2e39f336a18d918f5503e316ec0ffc0cf5464177', '168', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Mikel', 'Blick', 'mills.dorothea@example.net', '39860c47ca6c448082d895d47ae0f6308ef1af32', '745', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Orland', 'Stanton', 'petra83@example.net', 'c67ea0d55d831509e333496b81290a0a05f020b8', '14', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Milton', 'Quitzon', 'elyssa.gleason@example.net', 'dfd9b40c4f8a1b27f424c0094fd5a880b3624863', '402', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Alanna', 'Strosin', 'ukoelpin@example.org', '61616fdc78b765bb199ae5dd67868691c045905d', '645', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Hans', 'Mitchell', 'nolan.kitty@example.com', '41f2769717031834b20088162e7c641a5a077023', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Karina', 'Boehm', 'kristy94@example.com', 'd01f3a63e1c0d563d1944cdbebcb60ff0399e321', '341', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Luigi', 'Towne', 'haag.rudy@example.com', 'b1853615a2068bf0010ed24bf57382b4f1ce5b65', '641', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Vivien', 'Carroll', 'freeda25@example.org', '026f6ddb298c06e6f0d3138c46c54f1e73f39cd0', '307', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Haven', 'Schneider', 'william.kessler@example.com', 'e643386827e2f0c51544b074982da453da24941b', '501', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Eunice', 'McClure', 'scotty.vonrueden@example.org', '2470949eb761a08e10759f018a97d582fd7cd32f', '496', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Audreanne', 'Marvin', 'abelardo.roob@example.org', '65387e89d9e5848294318427fed2ed416d7d02e9', '807', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Aurelie', 'Okuneva', 'mitchell.amya@example.org', '8c1b2f6ccb05a23170a73dc2c8dd1f574433cb1a', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Jalyn', 'White', 'tbeahan@example.net', '2719f773f8cfd892bc3720dac9d12226a2a88c7c', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Gretchen', 'Sanford', 'jamison40@example.com', '074fec69c16694972b48040b1be809f7de9c990d', '730759', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Hayley', 'Batz', 'mpagac@example.com', 'f6e408d2fd734027f7b11646ec92052a11cac409', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Hettie', 'Lakin', 'judy04@example.com', 'aaeb5856b076f33b13e3bb9fb7e48076e75ed53d', '696', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Jonathan', 'Gutmann', 'stanley.kerluke@example.com', 'f39a96d8b5ec36ce9abaf4f788fca7755fa83379', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Cletus', 'Mills', 'estel.wiza@example.com', '9ef0c03979599e75b351c18a8ba85731fe3a3474', '820522', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Lysanne', 'Lueilwitz', 'cole.kelley@example.com', '5afe433b8642841a3fd8bd3e5592976a568028c7', '862877', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Herbert', 'Kemmer', 'glover.margarita@example.org', 'b0c94973ba740906e98a77b354283fbf7a4d1291', '223347', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Jeffry', 'Moore', 'qbergstrom@example.net', 'b24d76169b30c2107e38cf189484edee9eeb954f', '411', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Wilbert', 'Schultz', 'ubaldo26@example.org', '162eaed3cbccee8ea80ee6294e2dd8b964d58db6', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Lindsay', 'Homenick', 'anika06@example.com', 'b040bc97c4097192ec1b33251bca3be1a2ed177d', '665', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Minerva', 'Turner', 'megane.considine@example.org', '9711be68b2b8294c7e2e120aba0ced782848f112', '950', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Julianne', 'Armstrong', 'borer.hassan@example.com', 'ed82aa447f86a660fa0edf4b1c3824124c8c4e58', '427', '0');


