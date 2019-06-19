-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_id_index` (`comment_id`),
  CONSTRAINT `comments_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `comments` (`id`, `review`, `comment_id`, `created_at`, `updated_at`) VALUES
(1,	'Quo reiciendis voluptatibus molestiae atque pariatur voluptatem. Explicabo laboriosam libero deserunt aut officiis. Sunt voluptas harum maiores perferendis. Ipsum est vero similique laboriosam. Fugiat sit atque nostrum dicta quae rerum adipisci.',	7,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(2,	'Voluptas nesciunt id culpa fugiat. Autem quae veniam soluta et recusandae natus eum inventore. Recusandae asperiores fugit et et ab ipsum porro. Ipsam et laborum sed asperiores. Cum officiis suscipit maxime sit.',	6,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(3,	'Et inventore temporibus maxime facilis vel nihil. Accusamus eaque maxime consectetur occaecati quasi illum. Id rem error quibusdam unde repellendus. Officia sed culpa explicabo voluptatem omnis doloribus.',	2,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(4,	'Doloremque reiciendis magni illum harum explicabo fuga. Doloremque vitae ipsum voluptas ex quisquam est.',	5,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(5,	'Sunt maiores sit quod est asperiores tempore voluptate. Est unde reiciendis omnis ipsa voluptatem. Corporis eius necessitatibus eos quisquam.',	7,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(6,	'Cumque officiis temporibus sint veniam dolor harum harum. Qui a cum velit explicabo facere. Ex voluptates iusto nihil eius earum qui. Culpa et quo in natus.',	9,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(7,	'Consectetur veritatis aspernatur excepturi animi molestiae. Accusantium nostrum reiciendis facere et velit exercitationem. Odio repellat est quo saepe dolores quos. Illo odio nam dolorem nobis.',	7,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(8,	'Vitae ut dolorum qui et cumque est. Eum recusandae sunt dolore sequi. Quo eaque placeat corrupti qui delectus. Amet consequatur provident eos omnis voluptatum mollitia. Eligendi quis ut illo.',	4,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(9,	'Tenetur quos sit recusandae facilis et laboriosam. Quaerat odit sunt unde.',	10,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(10,	'Ut omnis velit incidunt. Architecto eum doloribus consequatur voluptatem cupiditate ea et quis. Nihil ducimus ea exercitationem nulla enim rerum.',	6,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(11,	'Quam earum quo quod et laboriosam alias. Placeat sunt expedita consequatur accusantium magnam velit inventore maiores. Ut ratione accusantium velit nostrum impedit ad voluptatibus quisquam. Voluptatum officia eum dolorem tenetur assumenda at.',	2,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(12,	'Provident suscipit aperiam magnam. Architecto sit molestiae sunt deleniti rerum nemo reiciendis accusamus. Porro blanditiis dolor molestiae doloribus qui est. Quia eos quam ipsa incidunt placeat dicta dignissimos.',	2,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(13,	'Ab aut officia rerum libero est. Minus aut aut omnis architecto. Eius numquam aut assumenda modi. Voluptatem et alias enim provident dolore.',	8,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(14,	'Animi et molestias molestiae fugit. Et vero nemo ullam sed est. Explicabo sit velit ut voluptatem ab asperiores dolorem aut.',	1,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(15,	'Ipsum autem in blanditiis natus. Est consectetur corporis at enim maxime doloremque eius voluptate. Ut consequatur voluptatum ut incidunt sed libero et.',	8,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(16,	'Cum porro corrupti dicta vero facilis et. Rem rerum ipsam expedita sint ea nemo architecto. Magni rem numquam fuga.',	6,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(17,	'Nesciunt consectetur ut numquam provident qui eligendi sapiente laboriosam. Ut qui in quibusdam consequatur tempore qui facilis. Quae quidem nihil pariatur minima doloremque.',	3,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(18,	'Dolorem recusandae doloribus dolore aut. Inventore cupiditate est alias eveniet cum exercitationem dolorum unde. Magni praesentium voluptas debitis qui. Non enim tempore sunt vitae nisi sapiente.',	6,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(19,	'Nobis consequatur enim et laboriosam ea perspiciatis. Corporis minus porro in et accusantium consequatur assumenda. At ex sit libero quasi. Aut qui occaecati iure sed.',	10,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(20,	'Quia enim iste esse optio voluptate sapiente. Ut et unde maxime. Cumque earum dolorem voluptatem quis consectetur non facilis aperiam.',	3,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(21,	'Eos quibusdam sunt aut est magni. Sunt nihil fugiat aut ipsum neque repellendus. Tempore adipisci eum minus quaerat aut. Sit labore corrupti dolores impedit dolores porro.',	10,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(22,	'Unde officia odio quo. Numquam quia harum voluptatum autem officiis itaque.',	3,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(23,	'Qui dolores consequuntur vel in libero illum. Est distinctio ab aut et provident amet voluptas. Labore voluptatem et assumenda tenetur maiores. Repellat cupiditate voluptatibus suscipit error.',	10,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(24,	'Sunt impedit corporis ea est id sunt. Nobis velit tempora voluptates consectetur omnis saepe.',	6,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(25,	'Inventore suscipit unde suscipit illo vero. Magni perspiciatis nisi soluta. Id necessitatibus saepe ullam qui. Nihil alias enim quo culpa nobis explicabo sequi.',	6,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(26,	'Impedit at quia nisi illo nobis corrupti. Dolores consequatur et maxime repellendus voluptate. Perferendis repellat iure possimus non in.',	5,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(27,	'Ea officia ipsam inventore molestiae. Quo similique qui perspiciatis dignissimos. Exercitationem corrupti omnis provident magni at non. Excepturi et voluptas quae magnam ullam est beatae.',	2,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(28,	'Quibusdam sapiente velit maxime in consequatur veritatis. Sint eveniet sit id nemo distinctio eaque. Distinctio eos quas perspiciatis corporis.',	7,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(29,	'Soluta ut et velit rerum dignissimos. Dolorem quia eos magnam molestiae voluptas accusamus. Omnis laudantium distinctio necessitatibus dolorum inventore nihil aperiam. Id rerum eos soluta quod.',	9,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(30,	'Facilis sapiente corrupti voluptas. Doloribus minus odit ducimus rerum. Rerum commodi pariatur quo ut sunt eligendi ipsam. Velit libero maiores quae voluptas et et. Ducimus omnis ut et porro alias aperiam eos.',	8,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(31,	'Aut in consequuntur fuga illo. Ipsa ut ab deleniti atque dolorum doloribus error voluptatem. Aut hic sit quis doloribus nemo nulla quia repellendus. Atque aspernatur totam accusantium rem earum consectetur debitis.',	6,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(32,	'Consequuntur commodi ratione nisi impedit et et eveniet. Placeat ipsum et illo. Beatae a consectetur corporis quia. Error et molestiae cumque laudantium.',	10,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(33,	'Unde quis eum quos asperiores veniam. Consectetur optio facere facere facere et. Dolorum voluptas voluptas quibusdam. Ducimus quidem earum suscipit beatae perferendis suscipit incidunt.',	2,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(34,	'Enim voluptas ad sed sed illum cumque blanditiis provident. Ea consectetur est iste ex enim sint occaecati.',	3,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(35,	'Ea dolorem asperiores aut necessitatibus. Deleniti ipsum voluptatibus consequatur reiciendis harum. Autem dolores eaque officia quo tenetur.',	6,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(36,	'Illum cupiditate reprehenderit earum maiores reprehenderit omnis. Reiciendis fuga doloremque beatae molestiae autem est. Reprehenderit incidunt quidem soluta aperiam.',	10,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(37,	'Labore odio iure reprehenderit ea ut dolor est. Ut sit saepe porro. Molestiae eum dolorem id omnis perspiciatis enim suscipit.',	6,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(38,	'Tempora ut laborum quas pariatur. Qui recusandae corrupti repellendus sint omnis beatae. Voluptatem commodi sint qui et suscipit.',	5,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(39,	'Voluptatem vitae eos omnis in est ipsam repudiandae. Est inventore veniam excepturi. Porro inventore sit veniam quidem consequatur placeat.',	10,	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(40,	'Vel vel tempore ut aut cum ducimus. Impedit ut perspiciatis asperiores molestiae ut doloribus voluptatem. Fuga magni placeat blanditiis repellendus ut illum. Amet maxime minus ducimus doloremque et. Inventore nemo qui officiis alias perferendis.',	1,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(41,	'Quos eum quia alias natus modi. Est et voluptas quia tenetur accusantium. Odio incidunt suscipit voluptatem aut tempora sint. Excepturi perferendis qui omnis magni earum repudiandae.',	4,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(42,	'Enim consequatur rerum ab. Eum dolor saepe laborum in iste omnis ducimus. Delectus enim similique qui maiores qui. Tempora quisquam voluptas ipsam magnam aliquid.',	9,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(43,	'Qui qui non accusantium laboriosam aut labore delectus. Aperiam qui minus dicta velit eum. Aperiam sed nam totam.',	3,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(44,	'Mollitia incidunt totam assumenda eligendi repudiandae enim non. Quas a repudiandae numquam deserunt. Odio excepturi voluptas sit soluta voluptates voluptatem. Sit et a enim ad explicabo ullam et. Beatae quasi sunt molestiae.',	7,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(45,	'Unde unde blanditiis tenetur rerum eos ex amet. Ad maxime totam quas dolorum et ut qui. Nulla est tempora consectetur laboriosam illum eum.',	10,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(46,	'Nisi ut sunt blanditiis rerum fuga. Et perferendis qui aspernatur quis corporis est nulla. Omnis ex consequatur dolorem quo odio iste.',	7,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(47,	'Aut voluptatem modi eveniet. Quos tenetur aut doloribus iusto dolore repellendus vel. Ab enim id in quam rerum quia aut qui. Nihil aut repellat nihil qui dolor voluptatem voluptas sit.',	5,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(48,	'Repellat ut saepe aspernatur provident tempore. Nemo nisi provident alias eveniet. Mollitia nulla consequatur doloremque adipisci enim. Velit molestias non eos nihil officia.',	1,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(49,	'Necessitatibus id doloremque dolor iure qui. Id quam sed similique adipisci nihil doloremque natus assumenda. Ab quo ducimus dolor. Omnis impedit delectus consectetur quam quia temporibus.',	4,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(50,	'Ea dolore magni amet nobis. Enim non mollitia vitae facere quo asperiores qui inventore. Laborum qui sequi minus voluptatem maxime dolor. Dolores eaque odio nihil.',	9,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(51,	'Error praesentium minus sunt aut ut magni voluptatem maxime. At in minus omnis molestiae. Odit ut id quia et libero est iure.',	3,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(52,	'Et aut molestias molestias eaque odio. Quo odio ut pariatur officia et possimus sint. Rerum blanditiis deleniti reprehenderit porro quo.',	1,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(53,	'Ut ut et aperiam ut at. Sit maiores omnis sed nesciunt omnis dicta tempora. Corrupti dignissimos ab ipsam quia commodi voluptatum. Id voluptatum vel deserunt natus facere ea sed et.',	7,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(54,	'Consequatur id aut dolor quis voluptatibus. Accusamus nisi qui eveniet quis. Nemo sequi iste rerum ad sapiente. Enim iusto voluptate amet sunt ad.',	7,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(55,	'Assumenda hic vero molestiae rerum aliquam. Repellat modi sint odio sit vitae eos. Doloribus consequatur aut dolorem quia corrupti omnis excepturi. Provident ut exercitationem ea fuga nihil ipsum eveniet.',	3,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(56,	'Dicta dolorum saepe delectus facere facilis ut molestiae maxime. Fugiat ea dicta numquam totam maiores et voluptas. Quia autem aliquid expedita officia similique ut.',	5,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(57,	'Maxime quod dignissimos dicta ut voluptatem. Voluptas nostrum non ut nisi nobis. Ea ut quam sit et ipsa maiores similique. Culpa qui animi quasi. Ut et fugit qui iste eum.',	3,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(58,	'Animi accusantium qui hic itaque aut sequi sunt. Molestiae similique culpa non magni. Voluptas delectus et ut suscipit porro. Pariatur ullam quaerat et eos autem.',	1,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(59,	'Ut explicabo error itaque autem non temporibus qui. Repellat commodi distinctio consequatur exercitationem quibusdam.',	2,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19'),
(60,	'Sequi repellat aut nulla alias doloremque voluptates. Nihil sint enim eius. Atque ipsum est aut maxime. Assumenda doloribus nihil fugit ut. Omnis natus architecto a enim architecto.',	8,	'2019-06-18 17:52:19',	'2019-06-18 17:52:19');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_06_18_142027_create_reviews_table',	1),
(4,	'2019_06_18_142201_create_comments_table',	1);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `reviews` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1,	'et',	'Accusantium sapiente et consequatur sapiente inventore quis. Ullam culpa cumque dolorum itaque. Occaecati quis autem soluta.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(2,	'facere',	'Molestiae enim ipsam eos et dolores. Accusamus perspiciatis accusamus numquam a provident sit quae veniam.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(3,	'dolor',	'Sed ut qui excepturi. Soluta aliquam aut magni est ut et quas. Nam fugit quae qui molestias consequatur nihil. Adipisci mollitia soluta reprehenderit ea dignissimos omnis qui.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(4,	'id',	'Omnis reprehenderit velit iusto cumque doloribus deserunt. Omnis possimus nesciunt perspiciatis ullam provident molestias. Vel perspiciatis voluptatem explicabo iure eum eligendi ipsa. Dolorem saepe voluptatem sit maiores. Ea consequatur repellendus exercitationem sint.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(5,	'iste',	'Minus velit numquam facilis mollitia occaecati omnis similique. Qui est culpa iusto voluptatem. At quos quia rerum. Rem quos doloremque corporis possimus inventore temporibus.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(6,	'vel',	'Necessitatibus ducimus voluptatem qui quia ipsa in voluptatem. Iusto architecto vel eos expedita dolorem veniam ex. Praesentium quos voluptas mollitia ea rem nihil.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(7,	'veritatis',	'Deserunt reiciendis itaque dicta dolor id vero vitae. Qui in et atque ea qui vero. Quia laboriosam eligendi maiores laboriosam. Dolor nemo quae aperiam quis sit provident ut.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(8,	'debitis',	'Quam nam et est fugiat cupiditate unde. Et earum qui unde rerum soluta veritatis nesciunt. Autem et dicta alias repellat dolor quis architecto. Dolores ullam repellat tenetur laudantium facere quasi qui.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(9,	'impedit',	'Rerum deleniti enim qui aliquid. Rem aut cupiditate recusandae ex quis ratione iste consequuntur. Porro voluptatibus officiis laboriosam ut officiis. Omnis omnis doloribus harum necessitatibus qui dolores.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18'),
(10,	'ea',	'Quas doloribus hic assumenda labore ut nemo suscipit. Dicta qui quos maxime esse at sit. Voluptatum provident et quae consequatur.',	'2019-06-18 17:52:18',	'2019-06-18 17:52:18');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2019-06-18 17:54:37
