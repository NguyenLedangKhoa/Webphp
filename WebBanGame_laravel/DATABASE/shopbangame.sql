-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 01, 2022 at 06:43 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopbangame`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 27, 1, 1180000, NULL, NULL),
(2, 1, 28, 1, 550000, NULL, NULL),
(3, 2, 32, 1, 1080000, NULL, NULL),
(7, 4, 32, 3, 1080000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Khoa', '012456789', '64/2 Nguyen Thi Nghia', 'khoadanglenguyen3012@gmail.com', 'dsf', '2022-05-29 09:53:33', '2022-05-29 09:53:33'),
(2, 'Khoa', 'fhhf', '64/2 Nguyen Thi Nghia', 'admin@localhost.com', 'fdf', '2022-05-31 06:55:06', '2022-05-31 06:55:06'),
(4, 'B???o', '0123456', '64/2 Nguyen Thi Nghia', 'khoadanglenguyen3012@gmail.com', 'Ngon ??', '2022-05-31 08:28:30', '2022-05-31 08:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"517e743f-c96e-43ce-bc38-1ee92fb6611f\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:19:\\\"admin@localhost.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-31 13:55:08.150612\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654005308, 1654005306),
(2, 'default', '{\"uuid\":\"cd0c83f5-ff36-4c43-b697-203e102f4a9d\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:19:\\\"admin@localhost.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-31 13:58:13.207629\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654005493, 1654005491),
(3, 'default', '{\"uuid\":\"6f61744e-bf36-4e02-81da-d453d392d9f2\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:30:\\\"khoadanglenguyen3012@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-31 14:03:40.472275\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654005820, 1654005818),
(4, 'default', '{\"uuid\":\"0067dbf6-b832-40f1-b016-b46fb1c47267\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:30:\\\"khoadanglenguyen2000@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-31 15:27:31.801111\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654010851, 1654010849),
(5, 'default', '{\"uuid\":\"fd1c43e2-21f3-449d-9d42-845bf184f9cc\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:30:\\\"khoadanglenguyen3012@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-31 15:28:32.662188\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654010912, 1654010910);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(6, 'Th??? Lo???i', 0, 'Th??? Lo???i', '<p><span style=\"font-size:26px\">Th??? Lo???i</span></p>', 1, '2022-04-17 20:24:24', '2022-05-11 01:29:48'),
(7, 'Game Hot', 0, 'Game Hot', '<p><span style=\"font-size:18px\">Game Hot</span></p>', 1, '2022-04-17 20:33:13', '2022-05-11 03:13:00'),
(9, 'H??nh ?????ng', 6, 'H??nh ?????ng', '<p>H&agrave;nh ?????ng</p>', 1, '2022-04-17 20:56:03', '2022-04-17 20:56:03'),
(10, 'B???n S??ng', 6, 'Game B???n s??ng', '<p>Game B???n s&uacute;ng</p>', 1, '2022-04-17 20:56:17', '2022-05-11 09:16:24'),
(11, 'Th??? Thao', 6, 'Th??? Thao', '<p>Th??? Thao</p>', 1, '2022-04-17 20:56:33', '2022-04-17 20:56:33'),
(12, '?????i Kh??ng', 6, '?????i Kh??ng', '<p>?????i Kh&aacute;ng</p>', 1, '2022-04-17 20:56:57', '2022-04-17 20:56:57'),
(14, 'Phi??u L??u', 6, 'Phi??u l??u', '<p>Phi&ecirc;u l??u</p>', 1, '2022-04-17 21:00:23', '2022-05-11 09:15:40'),
(15, 'Chi???n Thu???t', 6, 'Chi???n thu???t', '<p>Chi???n thu???t</p>', 1, '2022-04-18 01:28:26', '2022-05-11 09:15:32'),
(17, 'Game PS5', 0, 'Game PS5', '<p>M???t v&agrave;i Game PS5</p>', 1, '2022-05-11 03:14:43', '2022-05-11 07:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_16_145330_create_menus_table', 2),
(6, '2022_05_11_011553_create_products_table', 3),
(7, '2022_05_11_012016_update_table_product', 4),
(8, '2022_05_11_023244_create_sliders_table', 5),
(9, '2022_05_29_151019_create_customers_table', 6),
(10, '2022_05_29_151107_create_carts_table', 6),
(11, '2022_05_31_134324_create_jobs_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(1, '????a Game PS4 Marvel\'s Spider-Man Miles Morales H??? US', 'Marvel\'s Spider-Man Miles Morales l?? m???t tr?? ch??i phi??u l??u h??nh ?????ng n??m 2020 ???????c ph??t tri???n b???i Insomniac Games v?? ???????c ph??t h??nh b???i Sony Interactive Entertainment cho PlayStation 4 v?? PlayStation 5.', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban ?????u:\r\n	<p>12 th&aacute;ng 11, 2020</p>\r\n	</li>\r\n	<li>Nh&agrave; ph&aacute;t tri???n:\r\n	<p>Insomniac Games</p>\r\n	</li>\r\n	<li>Nha?? xu&acirc;??t ba??n:\r\n	<p>Sony Interactive Entertainment</p>\r\n	</li>\r\n	<li>Ch??? ?????:\r\n	<p>Tr&ograve; ch??i ??i???n t??? m???t ng?????i ch??i</p>\r\n	</li>\r\n	<li>Th??? lo???i:\r\n	<p>Tr&ograve; ch??i h&agrave;nh ?????ng phi&ecirc;u l??u</p>\r\n	</li>\r\n	<li>N???n t???ng:\r\n	<p>PlayStation 5</p>\r\n	</li>\r\n</ul>', 9, 980000, NULL, 1, '2022-05-10 19:12:21', '2022-05-31 06:01:05', '/storage/uploads/2022/05/11/????a Game PS4 Marvel\'s Spider-ManMiles Morales H??? US.jpg'),
(2, 'Call of Duty Black Ops Cold War PS4', 'Call of Duty Black Ops Cold War l?? m???t tr?? ch??i ??i???n t??? b???n s??ng g??c nh??n th??? nh???t ???????c ph??t tri???n b???i Treyarch v?? Raven Software v?? ???????c ph??t h??nh b???i Activision. ????y l?? ph???n th??? s??u c???a lo???t tr?? ch??i Black Ops, v?? ph???n th??? m?????i b???y trong to??n b??? lo???t tr?? ch??i Call of Duty', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban ?????u:\r\n	<p>2020</p>\r\n	</li>\r\n	<li>Khung ph???n m???m:\r\n	<p>IW Engine 5</p>\r\n	</li>\r\n	<li>Nha?? xu&acirc;??t ba??n:\r\n	<p>Activision</p>\r\n	</li>\r\n	<li>Loa??t tro?? ch??i:\r\n	<p>Call of Duty</p>\r\n	</li>\r\n	<li>C&aacute;c nh&agrave; ph&aacute;t tri???n:\r\n	<p>Treyarch, Raven Software, High Moon Studios, Beenox, Sledgehammer Games</p>\r\n	</li>\r\n</ul>', 10, 850000, NULL, 1, '2022-05-11 01:32:55', '2022-05-11 18:53:53', '/storage/uploads/2022/05/11/CallofDutyBlackOpsCold War Playstation 4.jpg'),
(3, '????a Game PS4 Call of Duty', 'Call of Duty l?? m???t tr?? ch??i video b???n s??ng g??c nh??n th??? nh???t ???????c Infinity Ward ph??t tri???n v?? ???????c ph??t h??nh b???i Activision.', '<p>Th??? lo???i game:&nbsp;&nbsp; &nbsp;H&agrave;nh ?????ng, b???n s&uacute;ng<br />\r\nH??? m&aacute;y:&nbsp;&nbsp; &nbsp;Ps4<br />\r\nDung l?????ng:&nbsp;&nbsp; &nbsp;49GB<br />\r\nNg&agrave;y ph&aacute;t h&agrave;nh:&nbsp;&nbsp; &nbsp;12/10/2018<br />\r\nS??? Ng?????i ch??i:&nbsp;&nbsp; &nbsp;1 ng?????i</p>', 10, 780000, NULL, 1, '2022-05-11 01:34:37', '2022-05-11 18:54:58', '/storage/uploads/2022/05/11/????a Game PS4 Call of Duty.jpg'),
(4, '????a Game PS4 Death Stranding H??? US', 'Death Stranding l?? m???t tr?? ch??i h??nh ?????ng s???p t???i ???????c ph??t tri???n b???i Kojima Productions. ????y l?? tr?? ch??i ?????u ti??n c???a ?????o di???n Hideo Kojima v?? Kojima Productions sau khi h??? tan r?? kh???i Konami v??o n??m 2015.', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh :\r\n	<p>8 th&aacute;ng 11, 2019</p>\r\n	</li>\r\n	<li>Nh&agrave; so???n nh???c:\r\n	<p>Ludvig Forssell</p>\r\n	</li>\r\n	<li>Nh&agrave; bi&ecirc;n k???ch:\r\n	<p>Hideo Kojima; Hitori Nojima</p>\r\n	</li>\r\n	<li>Nh&agrave; s???n xu???t:\r\n	<p>Hideo Kojima; Kenichiro Imaizumi</p>\r\n	</li>\r\n	<li>Khung ph???n m???m:\r\n	<p>Decima</p>\r\n	</li>\r\n	<li>C&aacute;c n&ecirc;??n t???ng:\r\n	<p>PlayStation 4, Microsoft Windows</p>\r\n	</li>\r\n</ul>', 14, 970000, NULL, 1, '2022-05-11 01:35:47', '2022-05-31 06:01:53', '/storage/uploads/2022/05/11/????a Game PS4 Death Stranding H??? US.jpg'),
(5, '????a Game PS4 Fallout 4 Game Of The Year Edition', '????a Game PS4 Fallout 4 Game Of The Year Edition', '<p>????a Game PS4 Fallout 4 Game Of The Year Edition</p>', 10, 750000, NULL, 1, '2022-05-11 04:02:55', '2022-05-11 04:02:55', '/storage/uploads/2022/05/11/????a Game PS4 Fallout 4 Game Of The Year Edition.jpg'),
(6, '????a Game FIFA 22 2022 h??? m??y Playstation 4', '????a Game PS4 FIFA 22', '<p>????a Game PS4 FIFA 22</p>', 11, 890000, NULL, 1, '2022-05-11 04:03:24', '2022-05-31 06:01:45', '/storage/uploads/2022/05/11/????a Game PS4 FIFA 22.jpg'),
(7, '????a Game PS4 God Of War 4', '????a Game PS4 God Of War 4', '<p>????a Game PS4 God Of War 4&nbsp;</p>', 7, 880000, NULL, 1, '2022-05-11 04:04:08', '2022-05-31 06:01:39', '/storage/uploads/2022/05/11/????a Game PS4 God Of War 4 .jpg'),
(8, '????a Game PS4 It Takes Two H??? US', '????a Game PS4 It Takes Two H??? US', '<p>????a Game PS4 It Takes Two H??? US</p>', 14, 790000, NULL, 1, '2022-05-11 04:04:44', '2022-05-31 06:01:30', '/storage/uploads/2022/05/12/????a Game PS4 It Takes Two H??? US.jpg'),
(9, '????a Game Killzone 2013 Console (PS4 v?? Xbox One)', '????a Game PS4 Killzone', '<p>????a Game PS4 Killzone</p>', 10, 500000, NULL, 1, '2022-05-11 04:05:26', '2022-05-31 06:01:22', '/storage/uploads/2022/05/11/????a Game PS4 Killzone.jpg'),
(11, '????a Game PS4 Need For Speed Payback H??? US', '????a Game PS4 Need For Speed Payback H??? US', '<p>????a Game PS4 Need For Speed Payback H??? US</p>', 11, 850000, NULL, 1, '2022-05-11 04:06:58', '2022-05-31 06:01:13', '/storage/uploads/2022/05/12/prd09.png'),
(12, '????a Game PS4 Street Fighter V Champion Edition H??? US', '????a Game PS4 Street Fighter V Champion Edition H??? US', '<p>????a Game PS4 Street Fighter V Champion Edition H??? US</p>', 12, 780000, NULL, 1, '2022-05-11 04:07:32', '2022-05-31 06:00:43', '/storage/uploads/2022/05/12/prd11.png'),
(13, '????a Game PS4 Tales of Arise H??? US', '????a Game PS4 Tales of Arise H??? US', '<p>????a Game PS4 Tales of Arise H??? US</p>', 15, 949999, NULL, 1, '2022-05-11 04:08:29', '2022-05-11 18:44:44', '/storage/uploads/2022/05/12/????a Game PS4 Tales of Arise H??? US.jpg'),
(14, '????a Game Ride 3 H??? EU Playstation 4', '????a Game PS4 Ride 3 H??? EU', '<p>????a Game PS4 Ride 3 H??? EU</p>', 11, NULL, NULL, 1, '2022-05-11 05:55:51', '2022-05-11 18:52:21', '/storage/uploads/2022/05/12/????a Game PS4 Ride 3 H??? EU.jpg'),
(15, '????a Game PS4 Yakuza 6 The Song of Life', '????a Game PS4 Yakuza 6 The Song of Life', '<p>????a Game PS4 Yakuza 6 The Song of Life</p>', 9, 860000, NULL, 1, '2022-05-11 05:56:24', '2022-05-11 18:46:28', '/storage/uploads/2022/05/12/????a Game PS4 Yakuza 6 The Song of Life.jpg'),
(16, '????a game PS4 Battlefield V H??? US', '????a game PS4 Battlefield V H??? US', '<p>????a game PS4 Battlefield V H??? US</p>', 10, NULL, NULL, 1, '2022-05-11 05:57:52', '2022-05-11 18:46:06', '/storage/uploads/2022/05/12/dia-game-ps4-battlefield-v-he-us.jpg'),
(17, 'Final Fantasy VIIRemake Playstation 4 H??? US', 'Final Fantasy VIIRemake Playstation 4 H??? US', '<p>Final Fantasy VIIRemake Playstation 4 H??? US</p>', 14, 985000, NULL, 1, '2022-05-11 05:58:40', '2022-05-11 18:44:31', '/storage/uploads/2022/05/12/Final Fantasy VIIRemake Playstation 4 H??? US.jpg'),
(18, 'Ghost Of Tsushima - Playstation 4', 'Ghost Of Tsushima - Playstation 4', '<p>Ghost Of Tsushima - Playstation 4</p>', 9, 1100000, NULL, 1, '2022-05-11 05:59:21', '2022-05-11 18:54:01', '/storage/uploads/2022/05/11/Ghost Of Tsushima - Playstation 4.jpg'),
(19, '????a Game PS4 Red Dead Redemption 2', '????a Game PS4 Red Dead Redemption 2', '<ul>\r\n	<li><strong>????a Game PS4 Red Dead Redemption 2</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong b&aacute;o c&aacute;o qu&yacute; 2 n??m 2019, Take-Two , c&ocirc;ng ty m??? c???a 2K Games v&agrave; Rockstar Games ??&atilde; ti???t l??? doanh thu c???c kh???ng t??? 2 bom t???n&nbsp;<a href=\"https://gamek.vn/red-dead-redemption-2.htm\" target=\"_blank\" title=\"red dead redemption 2\">Red Dead Redemption 2</a>&nbsp;v&agrave; Borderlands 3. V???i&nbsp;<a href=\"https://gamek.vn/red-dead-redemption-2.htm\" target=\"_blank\" title=\"red dead redemption 2\">Red Dead Redemption 2</a>, m???c d&ugrave; ??&atilde; ph&aacute;t h&agrave;nh h??n 1 n??m nh??ng ??&acirc;y hi???n v???n l&agrave; tr&ograve; ch??i b&aacute;n ch???y nh???t n??m 2019 c???a Take-Two tr&ecirc;n t???t c??? c&aacute;c n???n t???ng.</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/2019/11/10/photo-1-15733683242861107823601.jpg\" target=\"_blank\" title=\"\"><img alt=\"Nh?? ph??t h??nh thu v??? 36 ngh??n t??? t??? Red Dead Redemption 2 - ???nh 1.\" id=\"img_ae49d770-0385-11ea-82ba-4f0475f2af3b\" src=\"https://genk.mediacdn.vn/thumb_w/640/2019/11/10/photo-1-15733683242861107823601.jpg\" title=\"Nh?? ph??t h??nh thu v??? 36 ngh??n t??? t??? Red Dead Redemption 2 - ???nh 1.\" /></a></p>\r\n\r\n<p>Ch??? t&iacute;nh ri&ecirc;ng tr&ecirc;n n???n t???ng Console (PS4 v&agrave; Xbox One), Red Dead Redemption 2 ??&atilde; b&aacute;n ???????c 26,5 tri???u b???n, gi&uacute;p Take-Two thu v??? h??n 1,6 t??? USD (~ 36 ngh&igrave;n t??? VN??).&nbsp;</p>', 7, 990000, NULL, 1, '2022-05-11 06:00:19', '2022-05-11 19:47:03', '/storage/uploads/2022/05/11/????a Game PS4 Red Dead Redemption 2.jpg'),
(20, 'Playerunknown\'s Battlegrounds PS4', 'Playerunknown\'s Battlegrounds PS4', '<p>Playerunknown&#39;s Battlegrounds PS4</p>', 10, 500000, NULL, 1, '2022-05-11 06:37:46', '2022-05-11 09:14:25', '/storage/uploads/2022/05/11/dia-game-ps4-playerunknown39s-battlegrounds-he-us-P1148.jpg'),
(21, 'Marvel vs Capcom Infinity Playstation 4', 'Marvel vs Capcom', '<p>Marvel vs Capcom&nbsp;</p>', 12, 650000, NULL, 1, '2022-05-11 06:38:54', '2022-05-11 18:51:59', '/storage/uploads/2022/05/12/mvc.jpg'),
(23, '_____????a Game PS4 Mafia III_____', 'Trong Mafia III, b???n s??? v??o vai Lincoln Clay, m???t ng?????i ????n ??ng mang d??ng m??u lai l???n l??n trong ho??n c???nh m??? c??i, ???? t???ng tham gia chi???n tranh Vi???t Nam', '<h1><span style=\"font-size:14px\">????a Game PS4 Mafia III</span></h1>\r\n\r\n<ul>\r\n	<li>B???o h&agrave;nh:&nbsp;<strong>1 th&aacute;ng</strong></li>\r\n	<li>Trong h???p c&oacute;: 1 ????a game, h???p, s&aacute;ch h?????ng d???n</li>\r\n	<li>1 ?????i 1 trong 7 ng&agrave;y n???u l???i do NSX</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong><span style=\"font-size:14px\">Mafia III</span></strong></li>\r\n</ul>\r\n\r\n<p>R???t cu???c c??ng ??&atilde; tr&ograve;n 6 n??m k??? t??? ng&agrave;y&nbsp;<a href=\"https://gamek.vn/mafia-ii.htm\" target=\"_blank\" title=\"Mafia II\">Mafia II</a>&nbsp;ra m???t. N&oacute;i m???t c&aacute;ch c&ocirc;ng b???ng, c???ng ?????ng game th??? tuy ch???ng y&ecirc;u th&iacute;ch g&igrave; t???a game c&oacute; th??? gi???i &quot;m??? m&agrave; kh&ocirc;ng m???&quot; n&agrave;y nh??ng l???i th???c s??? b??? ???n t?????ng b???i c???t truy???n c&oacute; chi???u s&acirc;u v???i cu???c chi???n gi???a c&aacute;c b??ng ?????ng Mafia &Yacute; t???i th&agrave;nh ph??? New York, c&ugrave;ng l&uacute;c l???i ???n ch??a ?????y nh???ng &acirc;m m??u, th??? ??o???n c???a ch&iacute;nh nh???ng k??? mang danh c&ugrave;ng m???t gia ??&igrave;nh nh??ng lu&ocirc;n c&oacute; toan t&iacute;nh ri&ecirc;ng ????? tr???c l???i.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://genk.mediacdn.vn/2016/photo-0-1476260396012.png\" target=\"_blank\" title=\"\"><img alt=\"\" id=\"img_ac71f1a0-9054-11e6-b939-01b8b69b7923\" src=\"https://genk.mediacdn.vn/thumb_w/690/2016/photo-0-1476260396012.png\" /></a></p>\r\n\r\n<p><strong><a href=\"https://gamek.vn/mafia-3.htm\" target=\"_blank\" title=\"Mafia 3\">Mafia 3</a></strong>&nbsp;l???i n???m ??? m???t th&aacute;i c???c kh&aacute;c. N???u nh?? Vito Scaletta c???a&nbsp;<a href=\"https://gamek.vn/pc-console/gamek-dao-mo-mafia-ii-giac-mo-ba-chu-the-gioi-ngam-20151110175829946.chn\" target=\"_blank\" title=\"Mafia II\">Mafia II</a>&nbsp;b??? cu???n v&agrave;o cu???c ch???y ??ua c??m &aacute;o g???o ti???n v???i ?????c v???ng l&agrave;m gi&agrave;u nhanh ch&oacute;ng k??? t??? l&uacute;c tr??? v??? sau cu???c chi???n tranh, th&igrave; Lincoln Clay l???i b??? &aacute;m ???nh tr??? th&ugrave; cho gia ??&igrave;nh, ng?????i th&acirc;n, anh em, b???n b&egrave; chi???m l???y t&acirc;m tr&iacute;. Nh??ng kh&ocirc;ng nh??&nbsp;<a href=\"https://gamek.vn/pc-console/nha-san-xuat-bat-ngo-thay-doi-doan-ket-cua-mafia-ii-20100630044451777.chn\" target=\"_blank\" title=\"Mafia II\">Mafia II</a>, n??i b???n ch??? c&oacute; th??? tr??? th&agrave;nh m???t &quot;made man&quot;, m???t th&agrave;nh vi&ecirc;n ch&iacute;nh th???c c???a gia ??&igrave;nh Falcone, th&igrave; ???&nbsp;<strong><a href=\"https://gamek.vn/bi-phan-doi-qua-manh-mafia-3-cuoi-cung-cung-bo-gioi-han-30-fps-20161010162330782.chn\" target=\"_blank\" title=\"Mafia 3\">Mafia 3</a></strong>, Lincoln Clay, v???i khao kh&aacute;t tr??? th&ugrave; v&agrave; s??? t&agrave;n nh???n, ch&iacute;nh x&aacute;c ???????c trui r&egrave;n trong chi???n tranh s??? bi???n h???n ta tr??? th&agrave;nh m???t &ocirc;ng tr&ugrave;m th???t s??? c???a th&agrave;nh ph??? New Orleans.</p>', 9, 880000, NULL, 1, '2022-05-11 07:32:59', '2022-05-12 01:10:31', '/storage/uploads/2022/05/11/????a Game PS4 Mafia III.jpg'),
(24, '????a Game PS4 The Witcher 3 Wild Hunt Complete Edition H??? US', '????a Game PS4 The Witcher 3 Wild Hunt Complete Edition H??? US l?? h??ng ch??nh h??ng, ????a g???c nguy??n seal, m???i 100%, ch??a qua s??? d???ng', '<p>????a Game PS4 The Witcher 3 Wild Hunt Complete Edition H??? US</p>\r\n\r\n<ul>\r\n	<li>B???o h&agrave;nh:&nbsp;<strong>1 th&aacute;ng</strong></li>\r\n	<li>Trong h???p c&oacute;: 1 ????a game, h???p, s&aacute;ch h?????ng d???n</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong>The Witcher 3: Wild Hunt</strong></li>\r\n</ul>\r\n\r\n<p>N???n t???ng: PS4, Xbox One, PC</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/2018/4/27/11-1524821114433430360650.jpg\" target=\"_blank\" title=\"\"><img alt=\"\" id=\"img_e76dd040-49fc-11e8-ad97-ed479b1ce0d6\" src=\"https://genk.mediacdn.vn/2018/4/27/11-1524821114433430360650.jpg\" /></a></p>\r\n\r\n<p>M???c d&ugrave; ??&atilde; ra m???t ???????c h??n 5 n??m, tuy nhi&ecirc;n The Witcher 3: Wild Hunt v???n l&agrave; m???t c&aacute;i t&ecirc;n c???c hot trong c???ng ?????ng game th???. Kh???i ph???i b&agrave;n v??? ch???t l?????ng c???a t???a game n&agrave;y, n&oacute; ??&atilde; ?????t ?????n t???m g???n nh?? ho&agrave;n h???o v&agrave; m???t t?????ng ??&agrave;i c???a th??? lo???i nh???p vai, h&agrave;nh ?????ng.</p>', 9, 450000, NULL, 1, '2022-05-11 07:33:42', '2022-05-11 19:39:40', '/storage/uploads/2022/05/11/????a Game PS4 The Witcher 3 Wild Hunt Complete Edition H??? US.jpg'),
(25, '????a Game PS5 Devil May Cry 5 Special Edition - Playstation 5', 'Devil May Cry 5 Special Edition l?? m???t tr?? ch??i phi??u l??u h??nh ?????ng ???????c ph??t tri???n v?? xu???t b???n b???i Capcom. ????y l?? ph???n th??? s??u trong lo???t phim v?? l?? ph???n th??? n??m c???a lo???t phim Devil May Cry ch??nh.', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban ?????u:\r\n	<p>8 th&aacute;ng 1, 2021</p>\r\n	</li>\r\n	<li>Nh&agrave; ph&aacute;t tri???n:\r\n	<p>Capcom</p>\r\n	</li>\r\n</ul>', 17, 1180000, NULL, 1, '2022-05-11 07:34:48', '2022-05-11 09:54:26', '/storage/uploads/2022/05/11/????a Game PS5 Devil May Cry 5 Special Edition - Playstation 5.jpg'),
(26, '????a Game PS4 Horizon Forbidden West', 'Horizon Forbidden West l?? m???t tr?? ch??i ??i???n t??? h??nh ?????ng nh???p vai ???????c ph??t tri???n b???i Guerrilla Games v?? ???????c xu???t b???n b???i Sony Interactive Entertainment PlayStation 4', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban ?????u: 18 th&aacute;ng 2, 2022</li>\r\n	<li>Nh&agrave; ph&aacute;t tri???n: Guerrilla Games</li>\r\n	<li>Nha?? xu&acirc;??t ba??n: Sony Interactive Entertainment</li>\r\n	<li>Ch??? ?????: Tr&ograve; ch??i ??i???n t??? m???t ng?????i ch??i</li>\r\n	<li>C&aacute;c n&ecirc;??n t???ng: PlayStation 4, PlayStation 5</li>\r\n	<li>Th??? lo???i: Tr&ograve; ch??i b???n s&uacute;ng, Tr&ograve; ch??i phi&ecirc;u l??u, Tr&ograve; ch??i ??i c???nh, Tr&ograve; ch??i nh???p vai h&agrave;nh ?????ng</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong>Horizon Forbidden West</strong></li>\r\n</ul>\r\n\r\n<p>V???i s???c m???nh ????? h???a c???a PS5, Horizon Forbidden West s??? ????a game th??? v&agrave;o m???t th??? gi???i k??? ???o, h&ugrave;ng v?? ?????n ng??? ng&agrave;ng. T??? ti???u c???nh nh??? b&eacute; ?????n ?????i c???nh ho&agrave;nh tr&aacute;ng, t???t c??? ?????u ???????c nh&agrave; s???n xu???t ch??m ch&uacute;t m???t c&aacute;ch k??? l?????ng. V???i nh???ng ai ??&atilde; t???ng ch??i Horizon Zero Dawn, ch???c h???n c??ng ??&atilde; hi???u ???????c ph???n n&agrave;o v??? ????? h???a ?????p m???t c???a series n&agrave;y.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2022/2/23/photo-1-1645615232915786486352.png\" target=\"_blank\" title=\"\"><img alt=\"Chi??m ng?????ng m??n ????nh boss c???c ch???t trong Horizon Forbidden West, game ?????p nh???t nh?? 2022 - ???nh 1.\" id=\"img_420903687118598144\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2022/2/23/photo-1-1645615232915786486352.png\" title=\"Chi??m ng?????ng m??n ????nh boss c???c ch???t trong Horizon Forbidden West, game ?????p nh???t nh?? 2022 - ???nh 1.\" /></a></p>\r\n\r\n<p>V&agrave; kh&ocirc;ng ph??? l&ograve;ng ng?????i h&acirc;m m???, Horizon Forbidden West l&agrave; si&ecirc;u ph???m ??&iacute;ch th???c v???i v&ocirc; s??? ??i???m 10 tuy???t ?????i tr&ecirc;n c&aacute;c t???p ch&iacute; game uy t&iacute;n.&nbsp;??&aacute;nh gi&aacute; v??? Horizon Forbidden West, c&acirc;y b&uacute;t c???a IGN b&igrave;nh lu???n: &quot;??&acirc;y l&agrave; tr&ograve; ch??i c&oacute; s??? k???t h???p tuy???t v???i gi???a phong c&aacute;ch chi???n ?????u l&ocirc;i cu???n, thi???t k??? nh&acirc;n v???t ?????c s???c v&agrave; m???t th??? gi???i m??? ho&agrave;nh tr&aacute;ng. Horizon Forbidden West l&agrave; m???t tr&ograve; ch??i tuy???t v???i, s??? l???a ch???n ??&uacute;ng ?????n cho b???t k??? ai s??? h???u PS5&quot;.</p>', 14, 1250000, NULL, 1, '2022-05-11 07:36:45', '2022-05-11 20:10:54', '/storage/uploads/2022/05/11/????a Game PS4 Horizon Forbidden West.jpg'),
(27, 'Ratchet & Clank: Rift Apart - Playstation 5', 'Ratchet & Clank Rift Apart l?? m???t tr?? ch??i n???n t???ng b???n s??ng g??c nh??n th??? ba n??m 2021 ???????c ph??t tri???n b???i Insomniac Games v?? ???????c xu???t b???n b???i Sony Interactive Entertainment cho PlayStation 5. ????y l?? ph???n th??? m?????i s??u trong lo???t phim Ratchet & Clank.', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban ?????u: 11 th&aacute;ng 6, 2021</li>\r\n	<li>Nh&agrave; ph&aacute;t tri???n: Insomniac Games</li>\r\n	<li>Loa??t tro?? ch??i: Ratchet &amp; Clank</li>\r\n	<li>Nha?? xu&acirc;??t ba??n: Sony Interactive Entertainment</li>\r\n	<li>Th??? lo???i: Tr&ograve; ch??i ??i c???nh, Tr&ograve; ch??i h&agrave;nh ?????ng phi&ecirc;u l??u,</li>\r\n	<li>N???n t???ng: PlayStation</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong><em>Ratchet and Clank Rift Apart</em></strong>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Adaptive Trigger ??? c&ograve; ph???i R2 trong&nbsp;<strong><em>Ratchet and Clank Rift Apart</em></strong>&nbsp;???????c d&ugrave;ng ????? chuy???n ch??? ????? b???n, t&iacute;nh n??ng n&agrave;y kh&aacute; gi???ng trong&nbsp;<a href=\"https://vietgame.asia/returnal-danh-gia-game/\" rel=\"noreferrer noopener\" target=\"_blank\"><em>Returnal</em>, c??ng l&agrave; m???t t???a game ?????c quy???n cho PS5</a>, nh??ng ra ?????i tr?????c b???i studio kh&aacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i0.wp.com/d9n64ieh9hz8y.cloudfront.net/wp-content/uploads/20210609120413/ratchet-and-clank-rift-apart-danh-gia-game-7-1140x641.jpg?resize=1140%2C641&amp;ssl=1\" style=\"height:641px; width:1140px\" /></p>\r\n\r\n<blockquote>\r\n<p>b???t k&igrave; game n&agrave;o c&oacute; th??? khai th&aacute;c tri???t ????? c&aacute;c t&iacute;nh n??ng ?????c ??&aacute;o c???a Dualsense, ?????u c&oacute; th??? mang l???i cho ng?????i ch??i m???t tr???i nghi???m th&uacute; v??? ??&aacute;ng nh???</p>\r\n</blockquote>', 17, 1180000, NULL, 1, '2022-05-11 09:58:24', '2022-05-11 19:42:18', '/storage/uploads/2022/05/11/Ratchet Clank Rift Apart Playstation 5.jpg'),
(28, '????a Game PS4 Uncharted 4 A Thief End H??? Asia', 'Sau 15 n??m l??m ngh??? s??n c??? v???t. Nathan Drake v?? v??? m??nh, Elena ???? quy???t ?????nh ngh??? h??u, tuy l?? v???y nh??ng b???n th??n Drake ????i l??c v???n nh??? cu???c s???ng phi??u l??u m???o hi???m c???a m??nh. M???t ng??y, Sam Drake, Anh trai c???a Nathan, ng?????i m?? Nathan t?????ng ???? ch???t 15 n??m tr?????c xu???t hi???n tr?????c c???a nh?? c???a anh. Trong th???i gian b??? giam trong m???t nh?? t?? ??? n?????c ngo??i, anh ???? gi??p m???t t??n tr??m ma t??y t??n Hector Alcazar v?????t ng???c', '<ul>\r\n	<li>B???o h&agrave;nh:&nbsp;<strong>1 th&aacute;ng</strong></li>\r\n	<li>Trong h???p c&oacute;: 1 ????a game, h???p, s&aacute;ch h?????ng d???n</li>\r\n	<li>1 ?????i 1 trong 7 ng&agrave;y n???u l???i do NSX</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Uncharted 4: A Thief&#39;s End</strong></li>\r\n</ul>\r\n\r\n<p>Theo c&aacute;c s??? li???u th???ng k&ecirc;, t&iacute;nh ?????n th&aacute;ng 3/2021, l???i t???c m&agrave; c&aacute;c game ???????c Sony mang l&ecirc;n PC ??&atilde; t??ng 250%, ch??? y???u bao g???m c&aacute;c phi&ecirc;n b???n c???a Horizon Zero Dawn v&agrave; m???i ??&acirc;y l&agrave; Days Gone. Ch&iacute;nh s??? th&agrave;nh c&ocirc;ng n&agrave;y ??&atilde; th&uacute;c ?????y Sony ti???p t???c mang nh???ng bom t???n c???a h??? l&ecirc;n PC. Uncharted 4: A Thief&#39;s End s??? l&agrave; c&aacute;i t&ecirc;n ti???p theo s??? s???m xu???t hi???n tr&ecirc;n Steam v&agrave; c??? Epic Games Store.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/27/photo-1-162210424088430382670.jpg\" target=\"_blank\" title=\"\"><img alt=\"Bom t???n ?????c quy???n PS4, Uncharted 4 s???p c?? m???t tr??n PC - ???nh 1.\" id=\"img_322289988854927360\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/27/photo-1-162210424088430382670.jpg\" title=\"Bom t???n ?????c quy???n PS4, Uncharted 4 s???p c?? m???t tr??n PC - ???nh 1.\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li>N&oacute;i v??? Uncharted 4: A Thief&#39;s End, ??&acirc;y c&oacute; th??? coi l&agrave; m???t trong nh???ng t???a game hay nh???t trong l???ch s??? PS4. Game l???y b???i c???nh 3 n??m sau khi Uncharted 3 k???t th&uacute;c.</li>\r\n</ul>\r\n\r\n<hr />\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>', 14, 550000, NULL, 1, '2022-05-11 10:17:13', '2022-05-11 20:06:33', '/storage/uploads/2022/05/11/????a Game PS4 Uncharted 4 A Thief End H??? Asia.jpg'),
(29, '????a Game PS4 Assassin???s Creed Valhalla H??? US', 'Assassin\'s Creed Valhalla:???? ??l?? m???t tr?? ch??i ??i???n t??? h??nh ?????ng nh???p vai ???????c ph??t tri???n b???i Ubisoft Montreal v?? ???????c xu???t b???n b???i Ubisoft. ????y l?? ph???n ch??nh th??? m?????i hai v?? l?? b???n ph??t h??nh th??? hai m????i hai trong lo???t Assassin\'s Creed, v?? l?? ph???n k??? th???a c???a tr?? ch??i Assassin\'s Creed Odyssey n??m 2018', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban ?????u: 14 th&aacute;ng 11, 2020</li>\r\n	<li>?????o di???n: Ashraf Ismail</li>\r\n	<li>Nh&agrave; so???n nh???c: Jesper Kyd; Sarah Schachner; Einar Kvitrafn Selvik</li>\r\n	<li>Khung ph???n m???m: AnvilNext 2.0</li>\r\n	<li>Nh&agrave; ph&aacute;t tri???n: Ubisoft Montreal</li>\r\n	<li>&nbsp;</li>\r\n	<li>\r\n	<p><strong>Assassin&#39;s Creed Valhalla</strong></p>\r\n\r\n	<p>??&atilde; l&acirc;u l???m r???i ng?????i ta m???i th???y m???t phi&ecirc;n b???n Assassin&#39;s Creed nh???n ???????c nhi???u l???i khen ?????n v???y. ??&oacute; ch&iacute;nh l&agrave; ??i???u m&agrave; Valhalla ??ang l&agrave;m ???????c t&igrave;nh ?????n th???i ??i???m n&agrave;y.</p>\r\n\r\n	<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/8/28/photo-1-1630165485000449262063.jpg\" target=\"_blank\" title=\"\"><img alt=\"6 t???a game cho ph??p b???n h??a th??n th??nh chi???n binh Viking v?? ?????i - ???nh 1.\" id=\"img_356102776536276992\" src=\"https://gamek.mediacdn.vn/133514250583805952/2021/8/28/photo-1-1630165485000449262063.jpg\" title=\"6 t???a game cho ph??p b???n h??a th??n th??nh chi???n binh Viking v?? ?????i - ???nh 1.\" /></a></p>\r\n\r\n	<p>Nh???ng ??i???m nh???n m&agrave; Assassin&#39;s Creed Valhalla ???????c ??&aacute;nh gi&aacute; cao l&agrave; s??? h???u c???t truy???n d&agrave;i, c&oacute; chi???u s&acirc;u, H??? th???ng nhi???m v??? ph??? c???c k??? ??a d???ng, B???n ????? c???c k??? chi ti???t v&agrave; phong ph&uacute;, v?????t tr???i so v???i Odyssey. B&ecirc;n c???nh ??&oacute;, game ch???a nhi???u mini game r???i r&aacute;c ??? c&aacute;c ?????a ??i???m kh&aacute;c nhau ????? ng?????i ch??i kh&aacute;m ph&aacute;. H??? th???ng v?? kh&iacute;, v???t ph???m ??a d???ng v???i nhi???u phong c&aacute;ch kh&aacute;c nhau. B???n c&oacute; th??? t&ugrave;y &yacute; x&acirc;y d???ng nh&acirc;n v???t theo &yacute; mu???n. H??? th???ng customize ??a d???ng nh???t trong t???t c??? c&aacute;c phi&ecirc;n b???n.</p>\r\n	</li>\r\n</ul>', 7, 980000, NULL, 1, '2022-05-11 18:59:27', '2022-05-11 20:10:03', '/storage/uploads/2022/05/12/????a Game PS4 Assassin???s Creed Valhalla H??? US.jpg'),
(30, '????a Game PS5 Demon???s Souls H??? US - Playstation 5', 'Demon\'s Souls l???y b???i c???nh t???i Boletaria, m???t v????ng qu???c b??? h???y di???t b???i th??? b??ng t???i g???i l?? Old One ???????c gi???i ph??ng th??ng qua vi???c s??? d???ng Linh h???n b??? c???m. Ng?????i ch??i v??o vai v??? anh h??ng ???????c mang ?????n Boletaria ????? gi???t vua Allant sa ng?? v?? l???y l???i h??a b??nh v???i Old One.', '<ul>\r\n	<li><strong>Demon&#39;s Souls</strong></li>\r\n</ul>\r\n\r\n<p>S??? ph&aacute;t tri???n ban ?????u c???a tr&ograve; ch??i b??? k???t do thi???u t???m nh&igrave;n. V&igrave; v???y Hidetaka Miyazaki ??&atilde; ?????m nhi???m d??? &aacute;n v&agrave; khi???n n&oacute; ???????c nh?? b&acirc;y gi???. S??? kh&oacute; kh??n c???a Dark Souls nh???m t???o th??? th&aacute;ch v&agrave; th???a m&atilde;n cho ng?????i ch??i c??ng nh?? g???i l&ecirc;n nh???ng tr&ograve; ch??i c??? ??i???n. Kh&iacute;a c???nh n&agrave;y ??&ograve;i h???i ??? Miyazaki, m???t ph???n v&igrave; Sony c&oacute; th??? y&ecirc;u c???u gi???m ????? kh&oacute; c???a n&oacute; ????? d??? d&agrave;ng ti???p c???n ???????c v???i ng?????i d&ugrave;ng. C&aacute;c y???u t??? nhi???u ng?????i ch??i ???????c l???y c???m h???ng t??? c&aacute;c s??? ki???n c&oacute; th???t trong cu???c s???ng c???a Miyazaki.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/9/18/photo-1-16004210252781578137698.jpg\" target=\"_blank\" title=\"\"><img alt=\"Demons Souls l??? di???n gameplay, h???a h???n b??n h??nh cho tri???u game th??? - ???nh 2.\" id=\"img_231343855392952320\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/9/18/photo-1-16004210252781578137698.jpg\" title=\"Demons Souls l??? di???n gameplay, h???a h???n b??n h??nh cho tri???u game th??? - ???nh 2.\" /></a></p>\r\n\r\n<p>Kh???i ?????u tr&ecirc;n PS3, gi??? ??&acirc;y&nbsp;Demon&#39;s Souls m???t l???n n???a ???????c t&aacute;i kh???i ?????ng tr&ecirc;n PS5, h??? m&aacute;y t&acirc;n ti???n nh???t c???a Sony. Theo d??? ki???n,&nbsp;Demon&#39;s Souls s??? ra m???t c&ugrave;ng v???i PS5 v&agrave;o cu???i n??m nay.</p>', 17, 1250000, NULL, 1, '2022-05-12 00:25:27', '2022-05-12 00:25:27', '/storage/uploads/2022/05/12/dia-game-ps5-demons-souls-he-us---playstation-5-P1460-1616103207857.jpg'),
(31, 'Yakuza: Like a Dragon - Playstation 5', 'Yakuza Like a Dragon l?? m???t tr?? ch??i ??i???n t??? nh???p vai ???????c ph??t tri???n v?? xu???t b???n b???i Sega. ????y l?? b???n ph??t h??nh ch??nh th??? t??m trong lo???t Yakuza, v?? ???????c ph??t h??nh ??? Nh???t B???n v?? Ch??u ??', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh: 2021</li>\r\n	<li>Nh&agrave; ph&aacute;t tri???n: Ryu Ga Gotoku Studio</li>\r\n	<li>Loa??t tro?? ch??i: Yakuza</li>\r\n	<li>Ch??? ?????: Tr&ograve; ch??i ??i???n t??? m???t ng?????i ch??i</li>\r\n	<li>Nha?? xu&acirc;??t ba??n: Sega</li>\r\n	<li>C&aacute;c n&ecirc;??n t???ng: PlayStation 5</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong>Yakuza: Like a Dragon ho???c Yakuza</strong></li>\r\n	<li>\r\n	<h2><span style=\"font-size:14px\">Nh&acirc;n v???t ch&iacute;nh c???a Like a Dragon (sau ??&acirc;y g???i l&agrave; LAD) l&agrave; Ichiban Kasuga, m???t th&agrave;nh vi&ecirc;n c???p th???p c???a gia ??&igrave;nh Arakawa thu???c Gia T???c Tojo.</span></h2>\r\n\r\n	<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/11/24/photo-1-16061941905682012055474.jpg\" target=\"_blank\" title=\"\"><img alt=\"Review Yakuza: Like a Dragon - Khi game th??? ????ng vai giang h??? - ???nh 1.\" id=\"img_255559746133528576\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/11/24/photo-1-16061941905682012055474.jpg\" title=\"Review Yakuza: Like a Dragon - Khi game th??? ????ng vai giang h??? - ???nh 1.\" /></a></p>\r\n\r\n	<p>Yakuza: Like a Dragon ho???c Yakuza 7 l&agrave; t???a game th??? 15 c???a RGG Studio. ??? ph???n game n&agrave;y, RGG ??&atilde; ch???n phong c&aacute;ch gameplay Turn-based JRPG thay v&igrave; Beat em Up th&ocirc;ng th?????ng, li???u ??&acirc;y c&oacute; ph???i l&agrave; quy???t ?????nh sai l???m c???a Studio?</p>\r\n	</li>\r\n</ul>', 17, 1080000, NULL, 1, '2022-05-12 00:29:41', '2022-05-12 00:30:02', '/storage/uploads/2022/05/12/Yakuza Like a Dragon Playstation 5.jpg'),
(32, '????a Game Playstation 4 : Elden Ring', 'Elden Ring l?? bom t???n nh???p vai h??nh ?????ng ???????c ph??t tri???n b???i FromSoftware v?? do Bandai Namco Entertainment ph??t h??nh. Tr?? ch??i l?? s??? h???p t??c gi???a ?????o di???n Hidetaka Miyazaki c???a Dark Souls v?? ti???u thuy???t gia George RR Martin - \"cha ?????\" c???a Tr?? ch??i v????ng quy???n.', '<ul>\r\n	<li><strong>Elden Ring</strong></li>\r\n</ul>\r\n\r\n<p>Ch&iacute;nh th???c ph&aacute;t h&agrave;nh v&agrave;o ng&agrave;y 25 th&aacute;ng 2 v???a qua, m???t trong nh???ng t???a game bom t???n AAA ???????c c???ng ?????ng game th??? tr&ecirc;n th??? gi???i mong ?????i nh???t n??m 2022 ??&atilde; ch&iacute;nh th???c ph&aacute;t n??? khi c&oacute; t???i h??n n???a tri???u game th??? ??&atilde; ch??i Elden Ring tr&ecirc;n n???n t???ng Steam ngay trong nh???ng gi??? ?????u ti&ecirc;n ph&aacute;t h&agrave;nh. L&agrave; m???t t???a game k???t h???p s??? kh&oacute; nh???n trong l???i ch??i c???a Dark Souls v???i b???i c???nh th??? gi???i m???, Elden Ring ??&atilde; chi???m ???????c s??? y&ecirc;u th&iacute;ch c???a c???ng ?????ng game th??? tr&ecirc;n to&agrave;n th??? gi???i.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2022/2/26/photo-1-1645890799335343725413.jpg\" target=\"_blank\" title=\"\"><img alt=\"Elden Ring ???????c game th??? x???p h???ng cao nh???t m???i th???i ?????i tr??n OpenCritic - ???nh 1.\" id=\"img_422059411089477632\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2022/2/26/photo-1-1645890799335343725413.jpg\" title=\"Elden Ring ???????c game th??? x???p h???ng cao nh???t m???i th???i ?????i tr??n OpenCritic - ???nh 1.\" /></a></p>\r\n\r\n<p>C??? th???, Elden Ring hi???n l&agrave; t???a game ???????c ??&aacute;nh gi&aacute; cao nh???t m???i th???i ?????i theo trang web ??&aacute;nh gi&aacute; n???i ti???ng OpenCritic . ??&oacute; l&agrave; v???i g???n 100 b&agrave;i ??&aacute;nh gi&aacute; v&agrave; ??i???m s??? trung b&igrave;nh l&agrave; 97</p>', 7, 1080000, NULL, 1, '2022-05-12 00:35:12', '2022-05-13 01:11:42', '/storage/uploads/2022/05/12/????a Game PS4 M???i Elden Ring.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(3, 'Uncharted 4: A Thief End', 'http://bangame.test/san-pham/28-dia-game-ps4-uncharted-4-a-thief-end-he-asia.html', '/storage/uploads/2022/05/11/331875.jpg', 1, 1, '2022-05-11 02:10:36', '2022-05-11 10:18:43'),
(4, 'Mafia 3 PS4', 'http://bangame.test/san-pham/23-dia-game-ps4-mafia-iii.html', '/storage/uploads/2022/05/11/wp6804465-mafia-3-desktop-4k-wallpapers.jpg', 1, 1, '2022-05-11 02:11:16', '2022-05-11 10:15:14'),
(5, 'The Witcher 3', 'http://bangame.test/san-pham/24-dia-game-ps4-the-witcher-3-wild-hunt-complete-edition-he-us.html', '/storage/uploads/2022/05/11/sls17.jpg', 3, 1, '2022-05-11 02:12:00', '2022-05-11 10:21:43'),
(6, 'Assassin\'s Creed Valhalla', 'http://bangame.test/san-pham/29-dia-game-ps4-assassins-creed-valhalla-he-us.html', '/storage/uploads/2022/05/11/sls21.jpg', 1, 1, '2022-05-11 10:13:44', '2022-05-13 00:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@localhost.com', NULL, '$2y$10$arB4AsG.7TxwROOPyLM1jO7gRsxEPMIS40Cw8rrlyQ2dikC4h0Nwu', 'awfUYGjno3tGabE59FQdWTwdkRPP93q16DVhX4dF4n6rufEFNpc8ftc5eWwQ', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
