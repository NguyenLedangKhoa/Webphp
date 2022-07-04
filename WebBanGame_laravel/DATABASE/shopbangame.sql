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
(4, 'Bảo', '0123456', '64/2 Nguyen Thi Nghia', 'khoadanglenguyen3012@gmail.com', 'Ngon à', '2022-05-31 08:28:30', '2022-05-31 08:28:30');

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
(6, 'Thể Loại', 0, 'Thể Loại', '<p><span style=\"font-size:26px\">Thể Loại</span></p>', 1, '2022-04-17 20:24:24', '2022-05-11 01:29:48'),
(7, 'Game Hot', 0, 'Game Hot', '<p><span style=\"font-size:18px\">Game Hot</span></p>', 1, '2022-04-17 20:33:13', '2022-05-11 03:13:00'),
(9, 'Hành Động', 6, 'Hành Động', '<p>H&agrave;nh Động</p>', 1, '2022-04-17 20:56:03', '2022-04-17 20:56:03'),
(10, 'Bắn Súng', 6, 'Game Bắn súng', '<p>Game Bắn s&uacute;ng</p>', 1, '2022-04-17 20:56:17', '2022-05-11 09:16:24'),
(11, 'Thể Thao', 6, 'Thể Thao', '<p>Thể Thao</p>', 1, '2022-04-17 20:56:33', '2022-04-17 20:56:33'),
(12, 'Đối Kháng', 6, 'Đối Kháng', '<p>Đối Kh&aacute;ng</p>', 1, '2022-04-17 20:56:57', '2022-04-17 20:56:57'),
(14, 'Phiêu Lưu', 6, 'Phiêu lưu', '<p>Phi&ecirc;u lưu</p>', 1, '2022-04-17 21:00:23', '2022-05-11 09:15:40'),
(15, 'Chiến Thuật', 6, 'Chiến thuật', '<p>Chiến thuật</p>', 1, '2022-04-18 01:28:26', '2022-05-11 09:15:32'),
(17, 'Game PS5', 0, 'Game PS5', '<p>Một v&agrave;i Game PS5</p>', 1, '2022-05-11 03:14:43', '2022-05-11 07:34:21');

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
(1, 'Đĩa Game PS4 Marvel\'s Spider-Man Miles Morales Hệ US', 'Marvel\'s Spider-Man Miles Morales là một trò chơi phiêu lưu hành động năm 2020 được phát triển bởi Insomniac Games và được phát hành bởi Sony Interactive Entertainment cho PlayStation 4 và PlayStation 5.', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban đầu:\r\n	<p>12 th&aacute;ng 11, 2020</p>\r\n	</li>\r\n	<li>Nh&agrave; ph&aacute;t triển:\r\n	<p>Insomniac Games</p>\r\n	</li>\r\n	<li>Nhà xu&acirc;́t bản:\r\n	<p>Sony Interactive Entertainment</p>\r\n	</li>\r\n	<li>Chế độ:\r\n	<p>Tr&ograve; chơi điện tử một người chơi</p>\r\n	</li>\r\n	<li>Thể loại:\r\n	<p>Tr&ograve; chơi h&agrave;nh động phi&ecirc;u lưu</p>\r\n	</li>\r\n	<li>Nền tảng:\r\n	<p>PlayStation 5</p>\r\n	</li>\r\n</ul>', 9, 980000, NULL, 1, '2022-05-10 19:12:21', '2022-05-31 06:01:05', '/storage/uploads/2022/05/11/Đĩa Game PS4 Marvel\'s Spider-ManMiles Morales Hệ US.jpg'),
(2, 'Call of Duty Black Ops Cold War PS4', 'Call of Duty Black Ops Cold War là một trò chơi điện tử bắn súng góc nhìn thứ nhất được phát triển bởi Treyarch và Raven Software và được phát hành bởi Activision. Đây là phần thứ sáu của loạt trò chơi Black Ops, và phần thứ mười bảy trong toàn bộ loạt trò chơi Call of Duty', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban đầu:\r\n	<p>2020</p>\r\n	</li>\r\n	<li>Khung phần mềm:\r\n	<p>IW Engine 5</p>\r\n	</li>\r\n	<li>Nhà xu&acirc;́t bản:\r\n	<p>Activision</p>\r\n	</li>\r\n	<li>Loạt trò chơi:\r\n	<p>Call of Duty</p>\r\n	</li>\r\n	<li>C&aacute;c nh&agrave; ph&aacute;t triển:\r\n	<p>Treyarch, Raven Software, High Moon Studios, Beenox, Sledgehammer Games</p>\r\n	</li>\r\n</ul>', 10, 850000, NULL, 1, '2022-05-11 01:32:55', '2022-05-11 18:53:53', '/storage/uploads/2022/05/11/CallofDutyBlackOpsCold War Playstation 4.jpg'),
(3, 'Đĩa Game PS4 Call of Duty', 'Call of Duty là một trò chơi video bắn súng góc nhìn thứ nhất được Infinity Ward phát triển và được phát hành bởi Activision.', '<p>Thể loại game:&nbsp;&nbsp; &nbsp;H&agrave;nh động, bắn s&uacute;ng<br />\r\nHệ m&aacute;y:&nbsp;&nbsp; &nbsp;Ps4<br />\r\nDung lượng:&nbsp;&nbsp; &nbsp;49GB<br />\r\nNg&agrave;y ph&aacute;t h&agrave;nh:&nbsp;&nbsp; &nbsp;12/10/2018<br />\r\nSố Người chơi:&nbsp;&nbsp; &nbsp;1 người</p>', 10, 780000, NULL, 1, '2022-05-11 01:34:37', '2022-05-11 18:54:58', '/storage/uploads/2022/05/11/Đĩa Game PS4 Call of Duty.jpg'),
(4, 'Đĩa Game PS4 Death Stranding Hệ US', 'Death Stranding là một trò chơi hành động sắp tới được phát triển bởi Kojima Productions. Đây là trò chơi đầu tiên của đạo diễn Hideo Kojima và Kojima Productions sau khi họ tan rã khỏi Konami vào năm 2015.', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh :\r\n	<p>8 th&aacute;ng 11, 2019</p>\r\n	</li>\r\n	<li>Nh&agrave; soạn nhạc:\r\n	<p>Ludvig Forssell</p>\r\n	</li>\r\n	<li>Nh&agrave; bi&ecirc;n kịch:\r\n	<p>Hideo Kojima; Hitori Nojima</p>\r\n	</li>\r\n	<li>Nh&agrave; sản xuất:\r\n	<p>Hideo Kojima; Kenichiro Imaizumi</p>\r\n	</li>\r\n	<li>Khung phần mềm:\r\n	<p>Decima</p>\r\n	</li>\r\n	<li>C&aacute;c n&ecirc;̀n tảng:\r\n	<p>PlayStation 4, Microsoft Windows</p>\r\n	</li>\r\n</ul>', 14, 970000, NULL, 1, '2022-05-11 01:35:47', '2022-05-31 06:01:53', '/storage/uploads/2022/05/11/Đĩa Game PS4 Death Stranding Hệ US.jpg'),
(5, 'Đĩa Game PS4 Fallout 4 Game Of The Year Edition', 'Đĩa Game PS4 Fallout 4 Game Of The Year Edition', '<p>Đĩa Game PS4 Fallout 4 Game Of The Year Edition</p>', 10, 750000, NULL, 1, '2022-05-11 04:02:55', '2022-05-11 04:02:55', '/storage/uploads/2022/05/11/Đĩa Game PS4 Fallout 4 Game Of The Year Edition.jpg'),
(6, 'Đĩa Game FIFA 22 2022 hệ mày Playstation 4', 'Đĩa Game PS4 FIFA 22', '<p>Đĩa Game PS4 FIFA 22</p>', 11, 890000, NULL, 1, '2022-05-11 04:03:24', '2022-05-31 06:01:45', '/storage/uploads/2022/05/11/Đĩa Game PS4 FIFA 22.jpg'),
(7, 'Đĩa Game PS4 God Of War 4', 'Đĩa Game PS4 God Of War 4', '<p>Đĩa Game PS4 God Of War 4&nbsp;</p>', 7, 880000, NULL, 1, '2022-05-11 04:04:08', '2022-05-31 06:01:39', '/storage/uploads/2022/05/11/Đĩa Game PS4 God Of War 4 .jpg'),
(8, 'Đĩa Game PS4 It Takes Two Hệ US', 'Đĩa Game PS4 It Takes Two Hệ US', '<p>Đĩa Game PS4 It Takes Two Hệ US</p>', 14, 790000, NULL, 1, '2022-05-11 04:04:44', '2022-05-31 06:01:30', '/storage/uploads/2022/05/12/Đĩa Game PS4 It Takes Two Hệ US.jpg'),
(9, 'Đĩa Game Killzone 2013 Console (PS4 và Xbox One)', 'Đĩa Game PS4 Killzone', '<p>Đĩa Game PS4 Killzone</p>', 10, 500000, NULL, 1, '2022-05-11 04:05:26', '2022-05-31 06:01:22', '/storage/uploads/2022/05/11/Đĩa Game PS4 Killzone.jpg'),
(11, 'Đĩa Game PS4 Need For Speed Payback Hệ US', 'Đĩa Game PS4 Need For Speed Payback Hệ US', '<p>Đĩa Game PS4 Need For Speed Payback Hệ US</p>', 11, 850000, NULL, 1, '2022-05-11 04:06:58', '2022-05-31 06:01:13', '/storage/uploads/2022/05/12/prd09.png'),
(12, 'Đĩa Game PS4 Street Fighter V Champion Edition Hệ US', 'Đĩa Game PS4 Street Fighter V Champion Edition Hệ US', '<p>Đĩa Game PS4 Street Fighter V Champion Edition Hệ US</p>', 12, 780000, NULL, 1, '2022-05-11 04:07:32', '2022-05-31 06:00:43', '/storage/uploads/2022/05/12/prd11.png'),
(13, 'Đĩa Game PS4 Tales of Arise Hệ US', 'Đĩa Game PS4 Tales of Arise Hệ US', '<p>Đĩa Game PS4 Tales of Arise Hệ US</p>', 15, 949999, NULL, 1, '2022-05-11 04:08:29', '2022-05-11 18:44:44', '/storage/uploads/2022/05/12/Đĩa Game PS4 Tales of Arise Hệ US.jpg'),
(14, 'Đĩa Game Ride 3 Hệ EU Playstation 4', 'Đĩa Game PS4 Ride 3 Hệ EU', '<p>Đĩa Game PS4 Ride 3 Hệ EU</p>', 11, NULL, NULL, 1, '2022-05-11 05:55:51', '2022-05-11 18:52:21', '/storage/uploads/2022/05/12/Đĩa Game PS4 Ride 3 Hệ EU.jpg'),
(15, 'Đĩa Game PS4 Yakuza 6 The Song of Life', 'Đĩa Game PS4 Yakuza 6 The Song of Life', '<p>Đĩa Game PS4 Yakuza 6 The Song of Life</p>', 9, 860000, NULL, 1, '2022-05-11 05:56:24', '2022-05-11 18:46:28', '/storage/uploads/2022/05/12/Đĩa Game PS4 Yakuza 6 The Song of Life.jpg'),
(16, 'Đĩa game PS4 Battlefield V Hệ US', 'Đĩa game PS4 Battlefield V Hệ US', '<p>Đĩa game PS4 Battlefield V Hệ US</p>', 10, NULL, NULL, 1, '2022-05-11 05:57:52', '2022-05-11 18:46:06', '/storage/uploads/2022/05/12/dia-game-ps4-battlefield-v-he-us.jpg'),
(17, 'Final Fantasy VIIRemake Playstation 4 Hệ US', 'Final Fantasy VIIRemake Playstation 4 Hệ US', '<p>Final Fantasy VIIRemake Playstation 4 Hệ US</p>', 14, 985000, NULL, 1, '2022-05-11 05:58:40', '2022-05-11 18:44:31', '/storage/uploads/2022/05/12/Final Fantasy VIIRemake Playstation 4 Hệ US.jpg'),
(18, 'Ghost Of Tsushima - Playstation 4', 'Ghost Of Tsushima - Playstation 4', '<p>Ghost Of Tsushima - Playstation 4</p>', 9, 1100000, NULL, 1, '2022-05-11 05:59:21', '2022-05-11 18:54:01', '/storage/uploads/2022/05/11/Ghost Of Tsushima - Playstation 4.jpg'),
(19, 'Đĩa Game PS4 Red Dead Redemption 2', 'Đĩa Game PS4 Red Dead Redemption 2', '<ul>\r\n	<li><strong>Đĩa Game PS4 Red Dead Redemption 2</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong b&aacute;o c&aacute;o qu&yacute; 2 năm 2019, Take-Two , c&ocirc;ng ty mẹ của 2K Games v&agrave; Rockstar Games đ&atilde; tiết lộ doanh thu cực khủng từ 2 bom tấn&nbsp;<a href=\"https://gamek.vn/red-dead-redemption-2.htm\" target=\"_blank\" title=\"red dead redemption 2\">Red Dead Redemption 2</a>&nbsp;v&agrave; Borderlands 3. Với&nbsp;<a href=\"https://gamek.vn/red-dead-redemption-2.htm\" target=\"_blank\" title=\"red dead redemption 2\">Red Dead Redemption 2</a>, mặc d&ugrave; đ&atilde; ph&aacute;t h&agrave;nh hơn 1 năm nhưng đ&acirc;y hiện vẫn l&agrave; tr&ograve; chơi b&aacute;n chạy nhất năm 2019 của Take-Two tr&ecirc;n tất cả c&aacute;c nền tảng.</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/2019/11/10/photo-1-15733683242861107823601.jpg\" target=\"_blank\" title=\"\"><img alt=\"Nhà phát hành thu về 36 nghìn tỷ từ Red Dead Redemption 2 - Ảnh 1.\" id=\"img_ae49d770-0385-11ea-82ba-4f0475f2af3b\" src=\"https://genk.mediacdn.vn/thumb_w/640/2019/11/10/photo-1-15733683242861107823601.jpg\" title=\"Nhà phát hành thu về 36 nghìn tỷ từ Red Dead Redemption 2 - Ảnh 1.\" /></a></p>\r\n\r\n<p>Chỉ t&iacute;nh ri&ecirc;ng tr&ecirc;n nền tảng Console (PS4 v&agrave; Xbox One), Red Dead Redemption 2 đ&atilde; b&aacute;n được 26,5 triệu bản, gi&uacute;p Take-Two thu về hơn 1,6 tỷ USD (~ 36 ngh&igrave;n tỷ VNĐ).&nbsp;</p>', 7, 990000, NULL, 1, '2022-05-11 06:00:19', '2022-05-11 19:47:03', '/storage/uploads/2022/05/11/Đĩa Game PS4 Red Dead Redemption 2.jpg'),
(20, 'Playerunknown\'s Battlegrounds PS4', 'Playerunknown\'s Battlegrounds PS4', '<p>Playerunknown&#39;s Battlegrounds PS4</p>', 10, 500000, NULL, 1, '2022-05-11 06:37:46', '2022-05-11 09:14:25', '/storage/uploads/2022/05/11/dia-game-ps4-playerunknown39s-battlegrounds-he-us-P1148.jpg'),
(21, 'Marvel vs Capcom Infinity Playstation 4', 'Marvel vs Capcom', '<p>Marvel vs Capcom&nbsp;</p>', 12, 650000, NULL, 1, '2022-05-11 06:38:54', '2022-05-11 18:51:59', '/storage/uploads/2022/05/12/mvc.jpg'),
(23, '_____Đĩa Game PS4 Mafia III_____', 'Trong Mafia III, bạn sẽ vào vai Lincoln Clay, một người đàn ông mang dòng máu lai lớn lên trong hoàn cảnh mồ côi, đã từng tham gia chiến tranh Việt Nam', '<h1><span style=\"font-size:14px\">Đĩa Game PS4 Mafia III</span></h1>\r\n\r\n<ul>\r\n	<li>Bảo h&agrave;nh:&nbsp;<strong>1 th&aacute;ng</strong></li>\r\n	<li>Trong hộp c&oacute;: 1 đĩa game, hộp, s&aacute;ch hướng dẫn</li>\r\n	<li>1 đổi 1 trong 7 ng&agrave;y nếu lỗi do NSX</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong><span style=\"font-size:14px\">Mafia III</span></strong></li>\r\n</ul>\r\n\r\n<p>Rốt cuộc cũng đ&atilde; tr&ograve;n 6 năm kể từ ng&agrave;y&nbsp;<a href=\"https://gamek.vn/mafia-ii.htm\" target=\"_blank\" title=\"Mafia II\">Mafia II</a>&nbsp;ra mắt. N&oacute;i một c&aacute;ch c&ocirc;ng bằng, cộng đồng game thủ tuy chẳng y&ecirc;u th&iacute;ch g&igrave; tựa game c&oacute; thế giới &quot;mở m&agrave; kh&ocirc;ng mở&quot; n&agrave;y nhưng lại thực sự bị ấn tượng bởi cốt truyện c&oacute; chiều s&acirc;u với cuộc chiến giữa c&aacute;c băng đảng Mafia &Yacute; tại th&agrave;nh phố New York, c&ugrave;ng l&uacute;c lại ẩn chưa đầy những &acirc;m mưu, thủ đoạn của ch&iacute;nh những kẻ mang danh c&ugrave;ng một gia đ&igrave;nh nhưng lu&ocirc;n c&oacute; toan t&iacute;nh ri&ecirc;ng để trục lợi.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://genk.mediacdn.vn/2016/photo-0-1476260396012.png\" target=\"_blank\" title=\"\"><img alt=\"\" id=\"img_ac71f1a0-9054-11e6-b939-01b8b69b7923\" src=\"https://genk.mediacdn.vn/thumb_w/690/2016/photo-0-1476260396012.png\" /></a></p>\r\n\r\n<p><strong><a href=\"https://gamek.vn/mafia-3.htm\" target=\"_blank\" title=\"Mafia 3\">Mafia 3</a></strong>&nbsp;lại nằm ở một th&aacute;i cực kh&aacute;c. Nếu như Vito Scaletta của&nbsp;<a href=\"https://gamek.vn/pc-console/gamek-dao-mo-mafia-ii-giac-mo-ba-chu-the-gioi-ngam-20151110175829946.chn\" target=\"_blank\" title=\"Mafia II\">Mafia II</a>&nbsp;bị cuốn v&agrave;o cuộc chạy đua cơm &aacute;o gạo tiền với ước vọng l&agrave;m gi&agrave;u nhanh ch&oacute;ng kể từ l&uacute;c trở về sau cuộc chiến tranh, th&igrave; Lincoln Clay lại bị &aacute;m ảnh trả th&ugrave; cho gia đ&igrave;nh, người th&acirc;n, anh em, bạn b&egrave; chiếm lấy t&acirc;m tr&iacute;. Nhưng kh&ocirc;ng như&nbsp;<a href=\"https://gamek.vn/pc-console/nha-san-xuat-bat-ngo-thay-doi-doan-ket-cua-mafia-ii-20100630044451777.chn\" target=\"_blank\" title=\"Mafia II\">Mafia II</a>, nơi bạn chỉ c&oacute; thể trở th&agrave;nh một &quot;made man&quot;, một th&agrave;nh vi&ecirc;n ch&iacute;nh thức của gia đ&igrave;nh Falcone, th&igrave; ở&nbsp;<strong><a href=\"https://gamek.vn/bi-phan-doi-qua-manh-mafia-3-cuoi-cung-cung-bo-gioi-han-30-fps-20161010162330782.chn\" target=\"_blank\" title=\"Mafia 3\">Mafia 3</a></strong>, Lincoln Clay, với khao kh&aacute;t trả th&ugrave; v&agrave; sự t&agrave;n nhẫn, ch&iacute;nh x&aacute;c được trui r&egrave;n trong chiến tranh sẽ biến hắn ta trở th&agrave;nh một &ocirc;ng tr&ugrave;m thật sự của th&agrave;nh phố New Orleans.</p>', 9, 880000, NULL, 1, '2022-05-11 07:32:59', '2022-05-12 01:10:31', '/storage/uploads/2022/05/11/Đĩa Game PS4 Mafia III.jpg'),
(24, 'Đĩa Game PS4 The Witcher 3 Wild Hunt Complete Edition Hệ US', 'Đĩa Game PS4 The Witcher 3 Wild Hunt Complete Edition Hệ US là hàng chính hãng, đĩa gốc nguyên seal, mới 100%, chưa qua sử dụng', '<p>Đĩa Game PS4 The Witcher 3 Wild Hunt Complete Edition Hệ US</p>\r\n\r\n<ul>\r\n	<li>Bảo h&agrave;nh:&nbsp;<strong>1 th&aacute;ng</strong></li>\r\n	<li>Trong hộp c&oacute;: 1 đĩa game, hộp, s&aacute;ch hướng dẫn</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong>The Witcher 3: Wild Hunt</strong></li>\r\n</ul>\r\n\r\n<p>Nền tảng: PS4, Xbox One, PC</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/2018/4/27/11-1524821114433430360650.jpg\" target=\"_blank\" title=\"\"><img alt=\"\" id=\"img_e76dd040-49fc-11e8-ad97-ed479b1ce0d6\" src=\"https://genk.mediacdn.vn/2018/4/27/11-1524821114433430360650.jpg\" /></a></p>\r\n\r\n<p>Mặc d&ugrave; đ&atilde; ra mắt được hơn 5 năm, tuy nhi&ecirc;n The Witcher 3: Wild Hunt vẫn l&agrave; một c&aacute;i t&ecirc;n cực hot trong cộng đồng game thủ. Khỏi phải b&agrave;n về chất lượng của tựa game n&agrave;y, n&oacute; đ&atilde; đạt đến tầm gần như ho&agrave;n hảo v&agrave; một tượng đ&agrave;i của thể loại nhập vai, h&agrave;nh động.</p>', 9, 450000, NULL, 1, '2022-05-11 07:33:42', '2022-05-11 19:39:40', '/storage/uploads/2022/05/11/Đĩa Game PS4 The Witcher 3 Wild Hunt Complete Edition Hệ US.jpg'),
(25, 'Đĩa Game PS5 Devil May Cry 5 Special Edition - Playstation 5', 'Devil May Cry 5 Special Edition là một trò chơi phiêu lưu hành động được phát triển và xuất bản bởi Capcom. Đây là phần thứ sáu trong loạt phim và là phần thứ năm của loạt phim Devil May Cry chính.', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban đầu:\r\n	<p>8 th&aacute;ng 1, 2021</p>\r\n	</li>\r\n	<li>Nh&agrave; ph&aacute;t triển:\r\n	<p>Capcom</p>\r\n	</li>\r\n</ul>', 17, 1180000, NULL, 1, '2022-05-11 07:34:48', '2022-05-11 09:54:26', '/storage/uploads/2022/05/11/Đĩa Game PS5 Devil May Cry 5 Special Edition - Playstation 5.jpg'),
(26, 'Đĩa Game PS4 Horizon Forbidden West', 'Horizon Forbidden West là một trò chơi điện tử hành động nhập vai được phát triển bởi Guerrilla Games và được xuất bản bởi Sony Interactive Entertainment PlayStation 4', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban đầu: 18 th&aacute;ng 2, 2022</li>\r\n	<li>Nh&agrave; ph&aacute;t triển: Guerrilla Games</li>\r\n	<li>Nhà xu&acirc;́t bản: Sony Interactive Entertainment</li>\r\n	<li>Chế độ: Tr&ograve; chơi điện tử một người chơi</li>\r\n	<li>C&aacute;c n&ecirc;̀n tảng: PlayStation 4, PlayStation 5</li>\r\n	<li>Thể loại: Tr&ograve; chơi bắn s&uacute;ng, Tr&ograve; chơi phi&ecirc;u lưu, Tr&ograve; chơi đi cảnh, Tr&ograve; chơi nhập vai h&agrave;nh động</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong>Horizon Forbidden West</strong></li>\r\n</ul>\r\n\r\n<p>Với sức mạnh đồ họa của PS5, Horizon Forbidden West sẽ đưa game thủ v&agrave;o một thế giới kỳ ảo, h&ugrave;ng vĩ đến ngỡ ng&agrave;ng. Từ tiểu cảnh nhỏ b&eacute; đến đại cảnh ho&agrave;nh tr&aacute;ng, tất cả đều được nh&agrave; sản xuất chăm ch&uacute;t một c&aacute;ch kỹ lưỡng. Với những ai đ&atilde; từng chơi Horizon Zero Dawn, chắc hẳn cũng đ&atilde; hiểu được phần n&agrave;o về đồ họa đẹp mặt của series n&agrave;y.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2022/2/23/photo-1-1645615232915786486352.png\" target=\"_blank\" title=\"\"><img alt=\"Chiêm ngưỡng màn đánh boss cực chất trong Horizon Forbidden West, game đẹp nhất nhì 2022 - Ảnh 1.\" id=\"img_420903687118598144\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2022/2/23/photo-1-1645615232915786486352.png\" title=\"Chiêm ngưỡng màn đánh boss cực chất trong Horizon Forbidden West, game đẹp nhất nhì 2022 - Ảnh 1.\" /></a></p>\r\n\r\n<p>V&agrave; kh&ocirc;ng phụ l&ograve;ng người h&acirc;m mộ, Horizon Forbidden West l&agrave; si&ecirc;u phẩm đ&iacute;ch thức với v&ocirc; số điểm 10 tuyệt đối tr&ecirc;n c&aacute;c tạp ch&iacute; game uy t&iacute;n.&nbsp;Đ&aacute;nh gi&aacute; về Horizon Forbidden West, c&acirc;y b&uacute;t của IGN b&igrave;nh luận: &quot;Đ&acirc;y l&agrave; tr&ograve; chơi c&oacute; sự kết hợp tuyệt vời giữa phong c&aacute;ch chiến đấu l&ocirc;i cuốn, thiết kệ nh&acirc;n vật đặc sắc v&agrave; một thế giới mở ho&agrave;nh tr&aacute;ng. Horizon Forbidden West l&agrave; một tr&ograve; chơi tuyệt vời, sự lựa chọn đ&uacute;ng đắn cho bất kỳ ai sở hữu PS5&quot;.</p>', 14, 1250000, NULL, 1, '2022-05-11 07:36:45', '2022-05-11 20:10:54', '/storage/uploads/2022/05/11/Đĩa Game PS4 Horizon Forbidden West.jpg'),
(27, 'Ratchet & Clank: Rift Apart - Playstation 5', 'Ratchet & Clank Rift Apart là một trò chơi nền tảng bắn súng góc nhìn thứ ba năm 2021 được phát triển bởi Insomniac Games và được xuất bản bởi Sony Interactive Entertainment cho PlayStation 5. Đây là phần thứ mười sáu trong loạt phim Ratchet & Clank.', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban đầu: 11 th&aacute;ng 6, 2021</li>\r\n	<li>Nh&agrave; ph&aacute;t triển: Insomniac Games</li>\r\n	<li>Loạt trò chơi: Ratchet &amp; Clank</li>\r\n	<li>Nhà xu&acirc;́t bản: Sony Interactive Entertainment</li>\r\n	<li>Thể loại: Tr&ograve; chơi đi cảnh, Tr&ograve; chơi h&agrave;nh động phi&ecirc;u lưu,</li>\r\n	<li>Nền tảng: PlayStation</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong><em>Ratchet and Clank Rift Apart</em></strong>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Adaptive Trigger ở c&ograve; phải R2 trong&nbsp;<strong><em>Ratchet and Clank Rift Apart</em></strong>&nbsp;được d&ugrave;ng để chuyển chế độ bắn, t&iacute;nh năng n&agrave;y kh&aacute; giống trong&nbsp;<a href=\"https://vietgame.asia/returnal-danh-gia-game/\" rel=\"noreferrer noopener\" target=\"_blank\"><em>Returnal</em>, cũng l&agrave; một tựa game độc quyền cho PS5</a>, nhưng ra đời trước bởi studio kh&aacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i0.wp.com/d9n64ieh9hz8y.cloudfront.net/wp-content/uploads/20210609120413/ratchet-and-clank-rift-apart-danh-gia-game-7-1140x641.jpg?resize=1140%2C641&amp;ssl=1\" style=\"height:641px; width:1140px\" /></p>\r\n\r\n<blockquote>\r\n<p>bất k&igrave; game n&agrave;o c&oacute; thể khai th&aacute;c triệt để c&aacute;c t&iacute;nh năng độc đ&aacute;o của Dualsense, đều c&oacute; thể mang lại cho người chơi một trải nghiệm th&uacute; vị đ&aacute;ng nhớ</p>\r\n</blockquote>', 17, 1180000, NULL, 1, '2022-05-11 09:58:24', '2022-05-11 19:42:18', '/storage/uploads/2022/05/11/Ratchet Clank Rift Apart Playstation 5.jpg'),
(28, 'Đĩa Game PS4 Uncharted 4 A Thief End Hệ Asia', 'Sau 15 năm làm nghề săn cổ vật. Nathan Drake và vợ mình, Elena đã quyết định nghỉ hưu, tuy là vậy nhưng bản thân Drake đôi lúc vẫn nhớ cuộc sống phiêu lưu mạo hiểm của mình. Một ngày, Sam Drake, Anh trai của Nathan, người mà Nathan tưởng đã chết 15 năm trước xuất hiện trước cửa nhà của anh. Trong thời gian bị giam trong một nhà tù ở nước ngoài, anh đã giúp một tên trùm ma túy tên Hector Alcazar vượt ngục', '<ul>\r\n	<li>Bảo h&agrave;nh:&nbsp;<strong>1 th&aacute;ng</strong></li>\r\n	<li>Trong hộp c&oacute;: 1 đĩa game, hộp, s&aacute;ch hướng dẫn</li>\r\n	<li>1 đổi 1 trong 7 ng&agrave;y nếu lỗi do NSX</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Uncharted 4: A Thief&#39;s End</strong></li>\r\n</ul>\r\n\r\n<p>Theo c&aacute;c số liệu thống k&ecirc;, t&iacute;nh đến th&aacute;ng 3/2021, lợi tức m&agrave; c&aacute;c game được Sony mang l&ecirc;n PC đ&atilde; tăng 250%, chủ yếu bao gồm c&aacute;c phi&ecirc;n bản của Horizon Zero Dawn v&agrave; mới đ&acirc;y l&agrave; Days Gone. Ch&iacute;nh sự th&agrave;nh c&ocirc;ng n&agrave;y đ&atilde; th&uacute;c đẩy Sony tiếp tục mang những bom tấn của họ l&ecirc;n PC. Uncharted 4: A Thief&#39;s End sẽ l&agrave; c&aacute;i t&ecirc;n tiếp theo sẽ sớm xuất hiện tr&ecirc;n Steam v&agrave; cả Epic Games Store.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/27/photo-1-162210424088430382670.jpg\" target=\"_blank\" title=\"\"><img alt=\"Bom tấn độc quyền PS4, Uncharted 4 sắp có mặt trên PC - Ảnh 1.\" id=\"img_322289988854927360\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/27/photo-1-162210424088430382670.jpg\" title=\"Bom tấn độc quyền PS4, Uncharted 4 sắp có mặt trên PC - Ảnh 1.\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li>N&oacute;i về Uncharted 4: A Thief&#39;s End, đ&acirc;y c&oacute; thể coi l&agrave; một trong những tựa game hay nhất trong lịch sử PS4. Game lấy bối cảnh 3 năm sau khi Uncharted 3 kết th&uacute;c.</li>\r\n</ul>\r\n\r\n<hr />\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>', 14, 550000, NULL, 1, '2022-05-11 10:17:13', '2022-05-11 20:06:33', '/storage/uploads/2022/05/11/Đĩa Game PS4 Uncharted 4 A Thief End Hệ Asia.jpg'),
(29, 'Đĩa Game PS4 Assassin’s Creed Valhalla Hệ US', 'Assassin\'s Creed Valhalla:    là một trò chơi điện tử hành động nhập vai được phát triển bởi Ubisoft Montreal và được xuất bản bởi Ubisoft. Đây là phần chính thứ mười hai và là bản phát hành thứ hai mươi hai trong loạt Assassin\'s Creed, và là phần kế thừa của trò chơi Assassin\'s Creed Odyssey năm 2018', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh ban đầu: 14 th&aacute;ng 11, 2020</li>\r\n	<li>Đạo diễn: Ashraf Ismail</li>\r\n	<li>Nh&agrave; soạn nhạc: Jesper Kyd; Sarah Schachner; Einar Kvitrafn Selvik</li>\r\n	<li>Khung phần mềm: AnvilNext 2.0</li>\r\n	<li>Nh&agrave; ph&aacute;t triển: Ubisoft Montreal</li>\r\n	<li>&nbsp;</li>\r\n	<li>\r\n	<p><strong>Assassin&#39;s Creed Valhalla</strong></p>\r\n\r\n	<p>Đ&atilde; l&acirc;u lắm rồi người ta mới thấy một phi&ecirc;n bản Assassin&#39;s Creed nhận được nhiều lời khen đến vậy. Đ&oacute; ch&iacute;nh l&agrave; điều m&agrave; Valhalla đang l&agrave;m được t&igrave;nh đến thời điểm n&agrave;y.</p>\r\n\r\n	<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/8/28/photo-1-1630165485000449262063.jpg\" target=\"_blank\" title=\"\"><img alt=\"6 tựa game cho phép bạn hóa thân thành chiến binh Viking vĩ đại - Ảnh 1.\" id=\"img_356102776536276992\" src=\"https://gamek.mediacdn.vn/133514250583805952/2021/8/28/photo-1-1630165485000449262063.jpg\" title=\"6 tựa game cho phép bạn hóa thân thành chiến binh Viking vĩ đại - Ảnh 1.\" /></a></p>\r\n\r\n	<p>Những điểm nhấn m&agrave; Assassin&#39;s Creed Valhalla được đ&aacute;nh gi&aacute; cao l&agrave; sở hữu cốt truyện d&agrave;i, c&oacute; chiều s&acirc;u, Hệ thống nhiệm vụ phụ cực kỳ đa dạng, Bản đồ cực kỳ chi tiết v&agrave; phong ph&uacute;, vượt trội so với Odyssey. B&ecirc;n cạnh đ&oacute;, game chứa nhiều mini game rải r&aacute;c ở c&aacute;c địa điểm kh&aacute;c nhau để người chơi kh&aacute;m ph&aacute;. Hệ thống vũ kh&iacute;, vật phẩm đa dạng với nhiều phong c&aacute;ch kh&aacute;c nhau. Bạn c&oacute; thể t&ugrave;y &yacute; x&acirc;y dựng nh&acirc;n vật theo &yacute; muốn. Hệ thống customize đa dạng nhất trong tất cả c&aacute;c phi&ecirc;n bản.</p>\r\n	</li>\r\n</ul>', 7, 980000, NULL, 1, '2022-05-11 18:59:27', '2022-05-11 20:10:03', '/storage/uploads/2022/05/12/Đĩa Game PS4 Assassin’s Creed Valhalla Hệ US.jpg'),
(30, 'Đĩa Game PS5 Demon’s Souls Hệ US - Playstation 5', 'Demon\'s Souls lấy bối cảnh tại Boletaria, một vương quốc bị hủy diệt bởi thứ bóng tối gọi là Old One được giải phóng thông qua việc sử dụng Linh hồn bị cấm. Người chơi vào vai vị anh hùng được mang đến Boletaria để giết vua Allant sa ngã và lấy lại hòa bình với Old One.', '<ul>\r\n	<li><strong>Demon&#39;s Souls</strong></li>\r\n</ul>\r\n\r\n<p>Sự ph&aacute;t triển ban đầu của tr&ograve; chơi bị kẹt do thiếu tầm nh&igrave;n. V&igrave; vậy Hidetaka Miyazaki đ&atilde; đảm nhiệm dự &aacute;n v&agrave; khiến n&oacute; được như b&acirc;y giờ. Sự kh&oacute; khăn của Dark Souls nhằm tạo thử th&aacute;ch v&agrave; thỏa m&atilde;n cho người chơi cũng như gợi l&ecirc;n những tr&ograve; chơi cổ điển. Kh&iacute;a cạnh n&agrave;y đ&ograve;i hỏi ở Miyazaki, một phần v&igrave; Sony c&oacute; thể y&ecirc;u cầu giảm độ kh&oacute; của n&oacute; để dễ d&agrave;ng tiếp cận được với người d&ugrave;ng. C&aacute;c yếu tố nhiều người chơi được lấy cảm hứng từ c&aacute;c sự kiện c&oacute; thật trong cuộc sống của Miyazaki.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/9/18/photo-1-16004210252781578137698.jpg\" target=\"_blank\" title=\"\"><img alt=\"Demons Souls lộ diện gameplay, hứa hẹn bón hành cho triệu game thủ - Ảnh 2.\" id=\"img_231343855392952320\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/9/18/photo-1-16004210252781578137698.jpg\" title=\"Demons Souls lộ diện gameplay, hứa hẹn bón hành cho triệu game thủ - Ảnh 2.\" /></a></p>\r\n\r\n<p>Khởi đầu tr&ecirc;n PS3, giờ đ&acirc;y&nbsp;Demon&#39;s Souls một lần nữa được t&aacute;i khởi động tr&ecirc;n PS5, hệ m&aacute;y t&acirc;n tiến nhất của Sony. Theo dự kiến,&nbsp;Demon&#39;s Souls sẽ ra mắt c&ugrave;ng với PS5 v&agrave;o cuối năm nay.</p>', 17, 1250000, NULL, 1, '2022-05-12 00:25:27', '2022-05-12 00:25:27', '/storage/uploads/2022/05/12/dia-game-ps5-demons-souls-he-us---playstation-5-P1460-1616103207857.jpg'),
(31, 'Yakuza: Like a Dragon - Playstation 5', 'Yakuza Like a Dragon là một trò chơi điện tử nhập vai được phát triển và xuất bản bởi Sega. Đây là bản phát hành chính thứ tám trong loạt Yakuza, và được phát hành ở Nhật Bản và Châu á', '<ul>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh: 2021</li>\r\n	<li>Nh&agrave; ph&aacute;t triển: Ryu Ga Gotoku Studio</li>\r\n	<li>Loạt trò chơi: Yakuza</li>\r\n	<li>Chế độ: Tr&ograve; chơi điện tử một người chơi</li>\r\n	<li>Nhà xu&acirc;́t bản: Sega</li>\r\n	<li>C&aacute;c n&ecirc;̀n tảng: PlayStation 5</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong>Yakuza: Like a Dragon hoặc Yakuza</strong></li>\r\n	<li>\r\n	<h2><span style=\"font-size:14px\">Nh&acirc;n vật ch&iacute;nh của Like a Dragon (sau đ&acirc;y gọi l&agrave; LAD) l&agrave; Ichiban Kasuga, một th&agrave;nh vi&ecirc;n cấp thấp của gia đ&igrave;nh Arakawa thuộc Gia Tộc Tojo.</span></h2>\r\n\r\n	<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/11/24/photo-1-16061941905682012055474.jpg\" target=\"_blank\" title=\"\"><img alt=\"Review Yakuza: Like a Dragon - Khi game thủ đóng vai giang hồ - Ảnh 1.\" id=\"img_255559746133528576\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/11/24/photo-1-16061941905682012055474.jpg\" title=\"Review Yakuza: Like a Dragon - Khi game thủ đóng vai giang hồ - Ảnh 1.\" /></a></p>\r\n\r\n	<p>Yakuza: Like a Dragon hoặc Yakuza 7 l&agrave; tựa game thứ 15 của RGG Studio. Ở phần game n&agrave;y, RGG đ&atilde; chọn phong c&aacute;ch gameplay Turn-based JRPG thay v&igrave; Beat em Up th&ocirc;ng thường, liệu đ&acirc;y c&oacute; phải l&agrave; quyết định sai lầm của Studio?</p>\r\n	</li>\r\n</ul>', 17, 1080000, NULL, 1, '2022-05-12 00:29:41', '2022-05-12 00:30:02', '/storage/uploads/2022/05/12/Yakuza Like a Dragon Playstation 5.jpg'),
(32, 'Đĩa Game Playstation 4 : Elden Ring', 'Elden Ring là bom tấn nhập vai hành động được phát triển bởi FromSoftware và do Bandai Namco Entertainment phát hành. Trò chơi là sự hợp tác giữa đạo diễn Hidetaka Miyazaki của Dark Souls và tiểu thuyết gia George RR Martin - \"cha đẻ\" của Trò chơi vương quyền.', '<ul>\r\n	<li><strong>Elden Ring</strong></li>\r\n</ul>\r\n\r\n<p>Ch&iacute;nh thức ph&aacute;t h&agrave;nh v&agrave;o ng&agrave;y 25 th&aacute;ng 2 vừa qua, một trong những tựa game bom tấn AAA được cộng đồng game thủ tr&ecirc;n thế giới mong đợi nhất năm 2022 đ&atilde; ch&iacute;nh thức ph&aacute;t nổ khi c&oacute; tới hơn nữa triệu game thủ đ&atilde; chơi Elden Ring tr&ecirc;n nền tảng Steam ngay trong những giờ đầu ti&ecirc;n ph&aacute;t h&agrave;nh. L&agrave; một tựa game kết hợp sự kh&oacute; nhằn trong lối chơi của Dark Souls với bối cảnh thế giới mở, Elden Ring đ&atilde; chiếm được sự y&ecirc;u th&iacute;ch của cộng đồng game thủ tr&ecirc;n to&agrave;n thế giới.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://gamek.mediacdn.vn/133514250583805952/2022/2/26/photo-1-1645890799335343725413.jpg\" target=\"_blank\" title=\"\"><img alt=\"Elden Ring được game thủ xếp hạng cao nhất mọi thời đại trên OpenCritic - Ảnh 1.\" id=\"img_422059411089477632\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2022/2/26/photo-1-1645890799335343725413.jpg\" title=\"Elden Ring được game thủ xếp hạng cao nhất mọi thời đại trên OpenCritic - Ảnh 1.\" /></a></p>\r\n\r\n<p>Cụ thể, Elden Ring hiện l&agrave; tựa game được đ&aacute;nh gi&aacute; cao nhất mọi thời đại theo trang web đ&aacute;nh gi&aacute; nổi tiếng OpenCritic . Đ&oacute; l&agrave; với gần 100 b&agrave;i đ&aacute;nh gi&aacute; v&agrave; điểm số trung b&igrave;nh l&agrave; 97</p>', 7, 1080000, NULL, 1, '2022-05-12 00:35:12', '2022-05-13 01:11:42', '/storage/uploads/2022/05/12/Đĩa Game PS4 Mới Elden Ring.jpg');

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
