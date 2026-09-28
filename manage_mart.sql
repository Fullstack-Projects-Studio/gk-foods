-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2026 at 08:04 AM
-- Server version: 10.11.18-MariaDB-cll-lve
-- PHP Version: 8.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manage_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(22) NOT NULL,
  `user_id` int(22) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img_path` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `user_id`, `name`, `img_path`, `created`) VALUES
(1, 2, 'MALAS', '1751031720_images.jpg', '2025-06-27 13:42:19'),
(2, 3, 'MALAS', '1751098800_malas.jpeg', '2025-06-28 07:25:17'),
(3, 3, 'BAKER CRAFT', '1759757280_BakerCraft images.png', '2025-06-28 07:45:03'),
(4, 3, 'BAKERS', '1760530380_BAKERS', '2025-06-28 07:45:49'),
(5, 3, 'BUSH', '1760530620_BUSH', '2025-06-28 07:46:23'),
(6, 3, 'C2', '', '2025-06-28 07:46:44'),
(7, 3, 'CHELLAM', '', '2025-06-28 07:47:08'),
(8, 3, 'COLATE', '1760531280_COLATE', '2025-06-28 07:47:28'),
(9, 3, 'CP', '', '2025-06-28 07:47:47'),
(10, 3, 'CREST', '1760531700_CREST FOODS', '2025-06-28 07:48:05'),
(11, 3, 'DAIRY HUT', '', '2025-06-28 07:48:27'),
(12, 0, 'EVEREST', '1760533260_EVEREST', '2025-06-28 07:48:45'),
(13, 3, 'FOOD COAST', '', '2025-06-28 07:49:05'),
(14, 3, 'FRESH', '', '2025-06-28 07:49:23'),
(15, 3, 'FRESH 2 GO', '', '2025-06-28 07:49:39'),
(16, 3, 'FRUITOMANS', '', '2025-06-28 07:50:17'),
(17, 3, 'GADRE', '1774616820_GADRE LOGO', '2025-06-28 07:50:35'),
(18, 3, 'GOLDEN DELIGHTS', '', '2025-06-28 07:50:56'),
(19, 3, 'HABIT', '1774616940_Habit_Logo_latest_page-0001.avif', '2025-06-28 07:51:15'),
(20, 3, 'LEVEZA', '1765970820_levezalogo.png', '2025-06-28 07:51:39'),
(21, 3, 'HUL', '', '2025-06-28 07:51:52'),
(22, 3, 'MANAMA', '1765883820_MANAMA logo.png', '2025-06-28 07:52:13'),
(23, 3, 'MCCAIN', '1774617240_McCain-Foods-logo.png', '2025-06-28 07:52:31'),
(24, 3, 'MEAL TIME', '', '2025-06-28 07:52:51'),
(25, 3, 'MICKS', '', '2025-06-28 07:53:09'),
(26, 3, 'MILKY MIST', '1760529600_MilkyMist', '2025-06-28 07:53:22'),
(27, 3, 'MORDE', '1760529720_MORDE', '2025-06-28 07:53:47'),
(28, 3, 'NUDRATH', '', '2025-06-28 07:54:05'),
(29, 3, 'NUTRALITE', '1774617360_NUTRALITE LOGO', '2025-06-28 07:54:19'),
(30, 3, 'OHMS', '1774617600_ohms-logo-1-1-159x84.webp', '2025-06-28 07:54:37'),
(31, 3, 'RAY BOY', '', '2025-06-28 07:55:03'),
(32, 3, 'RICHS', '', '2025-06-28 07:55:21'),
(33, 3, 'SADHANA', '', '2025-06-28 07:55:36'),
(34, 3, 'SCHREIBER', '', '2025-06-28 07:55:50'),
(35, 3, 'SEA FOODS', '', '2025-06-28 07:56:13'),
(36, 3, 'SWITZ', '', '2025-06-28 07:56:32'),
(37, 3, 'VEEBA', '', '2025-06-28 07:56:57'),
(38, 3, 'VEWON', '', '2025-06-28 07:57:23'),
(39, 3, 'VKL', '', '2025-06-28 07:57:36'),
(40, 3, 'ZIPPY', '1760443020_ADP.3a9bff2a4a3ea6a19d95.png', '2025-06-28 07:57:58'),
(41, 3, 'APRIL 3rd FOODS', '', '2025-06-28 07:59:32'),
(42, 3, 'EVEREST', '1760533320_EVEREST', '2025-10-15 13:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `user_id` int(20) NOT NULL,
  `brand_id` int(22) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `user_id`, `brand_id`, `name`) VALUES
(1, 2, 1, 'SYRUB & CRUSH'),
(3, 3, 41, 'MOMOS'),
(4, 3, 39, 'MASALA & SPICES'),
(5, 3, 39, 'TOPPINGS'),
(6, 3, 26, 'DIARY PRODUCT '),
(7, 3, 13, 'SAUCE & MAYO'),
(8, 3, 41, 'SAUCE & MAYO'),
(9, 3, 4, 'FLAVOUR'),
(10, 3, 4, 'MASALA & SPICES'),
(11, 3, 3, 'SYRUB & CRUSH'),
(12, 3, 4, 'SAUCE & MAYO'),
(13, 3, 5, 'FOOD COLOUR'),
(14, 3, 6, 'SPRINKLE'),
(15, 3, 7, 'FILLING'),
(16, 3, 7, 'SAUCE & MAYO'),
(17, 3, 7, 'SPRINKLE'),
(18, 3, 8, 'FILLING'),
(20, 3, 16, 'SAUCE & MAYO'),
(21, 3, 21, 'SAUCE & MAYO'),
(22, 3, 22, 'SYRUB & CRUSH'),
(23, 3, 24, 'SAUCE & MAYO'),
(24, 3, 11, 'DAIRY PRODUCTS'),
(25, 3, 27, 'BAKERY PRODUCTS '),
(26, 3, 30, 'SAUCE & MAYO'),
(27, 3, 37, 'MASALA & SPICES'),
(28, 3, 37, 'SAUCE & MAYO'),
(29, 3, 37, 'SYRUB & CRUSH'),
(30, 3, 39, 'GRAVY BASE'),
(31, 3, 17, 'SEA FOOD RTF'),
(32, 3, 29, 'DAIRY'),
(33, 3, 40, 'CHICKEN RTF'),
(34, 3, 40, 'CHICKEN RTC'),
(37, 3, 8, 'SYRUB & CRUSH'),
(38, 3, 2, 'SYRUB & CRUSH'),
(39, 3, 20, 'CHICKEN RTF'),
(40, 3, 42, 'MASALA & SPICES'),
(41, 3, 9, 'CHICKEN RTF');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `user_id` int(22) NOT NULL DEFAULT 0,
  `customer_name` text NOT NULL,
  `executive_name` text NOT NULL,
  `company_name` text NOT NULL,
  `customer_phone` text NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_name`, `executive_name`, `company_name`, `customer_phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Suganya', 'ssdfsdf', 'Suganya', '999123123', 'Confirmed', '2025-07-24 18:57:42', '2026-05-03 10:39:01'),
(2, 0, 'Suganya', 'V', 'Sug', '08903250063', 'Pending', '2025-07-25 05:56:09', '2025-07-25 05:56:09'),
(3, 0, 'Fff', 'Xd', 'Dsd', '73994', 'Confirmed', '2025-10-29 17:50:19', '2026-03-22 18:42:54'),
(4, 0, 'kjhjhkjg', 'kjhkj', 'sdfsd', '98889879', 'Confirmed', '2026-02-17 00:39:27', '2026-03-22 18:44:47'),
(5, 0, 'lkjklj', 'lkjlkj', 'cxvxc', 'lkjlkjl', 'Pending', '2026-02-17 00:46:03', '2026-02-17 00:46:03'),
(6, 0, 'asdasd', 'adasdads', 'sad', 'adsasd', 'Pending', '2026-03-23 00:42:13', '2026-03-23 00:42:13'),
(7, 0, 'Suganya Sundarraj', 'sdasdasd', 'asdasdasd', '08903250063', 'Pending', '2026-03-23 01:14:35', '2026-03-23 01:14:35'),
(8, 0, 'Suganya Sundarraj', 'asdasd', 'asdasd', '08903250063', 'Pending', '2026-03-23 01:15:46', '2026-03-23 01:15:46'),
(9, 0, 'Suganya Sundarraj', 'asdasd', 'tasdfsdf', '08903250063', 'Confirmed', '2026-03-23 01:46:02', '2026-03-22 18:46:20'),
(10, 0, 'sugu', 'no-name', 'test', '98776556', 'Pending', '2026-05-03 17:33:12', '2026-05-03 17:33:12'),
(11, 0, 'test', 'sd', 'test', '234', 'Pending', '2026-05-03 17:43:18', '2026-05-03 17:43:18'),
(12, 0, 'kjhkjh', 'hjkhk', 'kjjhkj', 'kjkjhkj', 'Pending', '2026-05-03 17:44:53', '2026-05-03 17:44:53'),
(13, 3, 'KJHKJHKJ', 'no-name', 'kjhkjHKJHK', 'HKHJKJ', 'Pending', '2026-05-03 17:47:23', '2026-05-03 17:47:23'),
(14, 3, 'Joseph Rajesh', 'no-name', 'D\'SERV TECHNOLOGY', '09597211150', 'Confirmed', '2026-05-03 17:52:00', '2026-05-05 06:01:09'),
(15, 3, 'Joseph Rajesh', 'no-name', 'D\'SERV TECHNOLOGY', '9597211150', 'Pending', '2026-05-05 12:58:16', '2026-05-05 12:58:16'),
(16, 3, 'Ashwin', 'Ashwin Kumar', 'Ashwin', '+19894590451', 'Pending', '2026-07-05 00:40:20', '2026-07-05 00:40:20'),
(17, 3, 'test', 'sd', 'test', '1234567890', 'Pending', '2026-07-26 01:57:15', '2026-07-26 01:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `user_id` int(22) DEFAULT 0,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `user_id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 2, 1, NULL, '2025-07-24 18:57:42', '2025-07-24 18:57:42'),
(2, 0, 1, 3, 1, NULL, '2025-07-24 18:57:42', '2025-07-24 18:57:42'),
(3, 0, 2, 2, 1, NULL, '2025-07-25 05:56:09', '2025-07-25 05:56:09'),
(4, 0, 2, 3, 1, NULL, '2025-07-25 05:56:09', '2025-07-25 05:56:09'),
(5, 0, 3, 2, 1, NULL, '2025-10-29 17:50:19', '2025-10-29 17:50:19'),
(6, 0, 4, 2, 1, NULL, '2026-02-17 00:39:27', '2026-02-17 00:39:27'),
(7, 0, 5, 34, 1, NULL, '2026-02-17 00:46:03', '2026-02-17 00:46:03'),
(8, 0, 5, 35, 1, NULL, '2026-02-17 00:46:03', '2026-02-17 00:46:03'),
(9, 0, 6, 4, 12, NULL, '2026-03-23 00:42:13', '2026-03-23 00:42:13'),
(10, 0, 6, 5, 2, NULL, '2026-03-23 00:42:13', '2026-03-23 00:42:13'),
(11, 0, 7, 2, 1, NULL, '2026-03-23 01:14:35', '2026-03-23 01:14:35'),
(12, 0, 7, 3, 1, NULL, '2026-03-23 01:14:35', '2026-03-23 01:14:35'),
(13, 0, 7, 40, 1, NULL, '2026-03-23 01:14:35', '2026-03-23 01:14:35'),
(14, 0, 8, 24, 1, NULL, '2026-03-23 01:15:46', '2026-03-23 01:15:46'),
(15, 0, 8, 25, 1, NULL, '2026-03-23 01:15:46', '2026-03-23 01:15:46'),
(16, 0, 9, 15, 1, NULL, '2026-03-23 01:46:02', '2026-03-23 01:46:02'),
(17, 0, 9, 16, 1, NULL, '2026-03-23 01:46:02', '2026-03-23 01:46:02'),
(18, 0, 9, 17, 1, NULL, '2026-03-23 01:46:02', '2026-03-23 01:46:02'),
(19, 0, 10, 2, 1, NULL, '2026-05-03 17:33:12', '2026-05-03 17:33:12'),
(20, 0, 11, 34, 1, NULL, '2026-05-03 17:43:18', '2026-05-03 17:43:18'),
(21, 0, 11, 36, 1, NULL, '2026-05-03 17:43:18', '2026-05-03 17:43:18'),
(22, 0, 12, 34, 1, NULL, '2026-05-03 17:44:53', '2026-05-03 17:44:53'),
(23, 0, 12, 35, 1, NULL, '2026-05-03 17:44:53', '2026-05-03 17:44:53'),
(24, 3, 13, 34, 1, NULL, '2026-05-03 17:47:23', '2026-05-03 17:47:23'),
(25, 3, 14, 2, 1, NULL, '2026-05-03 17:52:00', '2026-05-03 17:52:00'),
(26, 3, 14, 15, 1, NULL, '2026-05-03 17:52:00', '2026-05-03 17:52:00'),
(27, 3, 15, 34, 1, NULL, '2026-05-05 12:58:16', '2026-05-05 12:58:16'),
(28, 3, 15, 35, 1, NULL, '2026-05-05 12:58:16', '2026-05-05 12:58:16'),
(29, 3, 15, 36, 3, NULL, '2026-05-05 12:58:16', '2026-05-05 12:58:16'),
(30, 3, 16, 67, 1, NULL, '2026-07-05 00:40:20', '2026-07-05 00:40:20'),
(31, 3, 17, 4, 1, NULL, '2026-07-26 01:57:15', '2026-07-26 01:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `user_id` int(22) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `show_price` int(2) NOT NULL COMMENT '0->don''t show,1-> show',
  `mrp` float(30,2) NOT NULL,
  `show_mrp` int(2) NOT NULL COMMENT '0->don''t show, 1-> show',
  `offer` float(20,2) NOT NULL,
  `offer_in` varchar(15) NOT NULL,
  `horeca` int(2) NOT NULL COMMENT '0->not enable,1->enable',
  `retail` int(2) NOT NULL COMMENT '0->not enable,1->enable',
  `show_site` int(2) NOT NULL COMMENT '0->not enable,1->enable',
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `user_id`, `brand_id`, `category_id`, `name`, `description`, `price`, `show_price`, `mrp`, `show_mrp`, `offer`, `offer_in`, `horeca`, `retail`, `show_site`, `img_path`, `status`) VALUES
(1, 2, 1, 1, 'Badam Crush-750ML', 'Badam Crush-750ML 300/-', 300, 0, 300.00, 0, 0.00, 'flat', 0, 1, 1, '1751031960_1664214010_almond kesar 2.png', 1),
(2, 3, 39, 5, 'Red Paprika Slice-3kg', 'Used in bakery industry as pizza topping , fried rice etc.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1751098320_Sunbay-Red-Paprika-Slices-3-kg.webp', 1),
(3, 1, 39, 5, 'Test', 'test', 22.54, 0, 23.00, 1, 2.00, 'percentage', 1, 0, 1, '1752727260_1661345487_Butter Scotch 750ml 2.jpg', 1),
(4, 1, 41, 3, 'MOMOS', 'MOMOS', 12, 0, 12.00, 1, 0.00, '', 1, 1, 1, '1752727320_1661348956_Butter Scotch 5Lit 2.jpg', 1),
(5, 3, 41, 3, 'Chicken Momos-500G-25Pcs/Pkt', 'Chicken Momos, a mouthwatering blend of juicy chicken wrapped in delicate dough, bringing the authentic flavors of Asian cuisine to your table. Elevate your dining experience with the authentic flavors of our Frozen Chicken Momos.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757667900_chicken momo.avif', 1),
(6, 3, 41, 3, 'Chicken Peri Peri Momos-500G-25Pcs/Pkt', 'Spicy, succulent chicken Momos perfectly seasoned with peri peri flavour bound to leave you and your tummy instantly happy.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1754042520_542bbb_3e3ec9c5639344bba192c117d47f9749~mv2.avif', 1),
(7, 3, 41, 3, 'Chicken Schezwan Momos-500G-25Pcs', 'Keema has always been a non-vegetarian delicacy and these keema filled Momos are stuffed with fiery Schezwan chicken to perk up your tastebuds!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1754042760_542bbb_1f9fa63755fb48e59697931c90e910d6~mv2.avif', 1),
(8, 3, 41, 3, 'Chicken Tikka Momos-500G-25Pcs', 'How can you be in India & not get a tikka twist? A perfect treat for your desi taste buds. A fusion experiment just for our momo lovers.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757601600_Chikka tikka momo.avif', 1),
(9, 3, 41, 3, 'Corn Cheese Momos 500G', 'Small parcels of happiness packed rich with cheese and scrumptious corn, for your anytime cravings!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757667420_corn chees momo.avif', 1),
(10, 3, 41, 3, 'Paneer Momos-500G', 'One can never go wrong with paneer! freshly crushed paneer flavored with fresh herbs and crisp veggies packed into little parcels, this dish is a one stop solution to all paneer cravings!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757667540_panner momo.avif', 1),
(11, 3, 41, 3, 'Paneer Tikka Momos-500G', 'Paneer tikka is an all-time Indian favourite. Stuffed it in a momo and everybody wins!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757667720_panner tikka momo.avif', 1),
(12, 3, 41, 3, 'Mix Veg Momos-500G-25Pcs', 'Our Frozen Mix Veg Momos are a testament to convenience without compromise. Packed with a symphony of flavors, these frozen delights are a celebration of handpicked vegetables wrapped in a thin, pillowy dough, promising a taste experience that transcends the ordinary. Savor the essence of tradition, convenience, and flavor with our Frozen Mix Veg Momos. Elevate your offerings with these wholesome and convenient frozen delights. Order now to redefine quick bites with the timeless taste of Mix veg perfection!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757667840_veg mix momo.avif', 1),
(13, 3, 41, 3, 'Mushroom Momos-500G-25Pcs', 'Fresh mushrooms richly sauteed in herbs and spices, a treat for the mushroom lovers out there now within Momos.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757668020_mushroom momo.avif', 1),
(14, 3, 41, 3, 'Veg Schezwan Momos-500G-25Pcs', 'Spice Up Your B2B Menu with Frozen Veg Schezwan Momos! A Treat Meant to Please Vegetarian Momo Lovers.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757668140_Veg Schezwan Momo.avif', 1),
(15, 3, 17, 31, 'Lobster Bite-1Kg', 'GadrÃ© brings you a delicacy in an easy-to-cook and fun-to-eat snack! Coated in crispy breadcrumbs, the taste of lobster explodes in your mouth with every bite!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757675460_surimi-lobster-bite', 1),
(16, 3, 17, 31, 'Fish Finger-8Pcs/Pkt', 'Spicy Fish fingers so yummy, they will definitely leave you licking your fingers. GadrÃ© Spicy Fish Fingers are soft and tender inside and crispy outside! Itâ€™s a snack that will pamper your appetite in a healthy way.', 0, 0, 0.00, 0, 0.00, '', 0, 1, 1, '1757675580_Spicy-Fish-Fingers', 1),
(17, 3, 17, 31, 'Crab Lollypop-30Pcs/Pkt', 'Europeâ€™s favourite crab snack is now here! The authentic crab flavour is combined with crispy bread coating to create a dish and flavour.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757675760_surimi-crab-claw-1kg-', 1),
(18, 3, 17, 31, 'Tilapia Fish Finger-40Pcs/Pkt', 'Fish fingers so yummy, they will definitely leave you licking your fingers. GadrÃ© Fish Fingers are soft and tender inside and crispy outside! Itâ€™s a snack that will pamper your appetite in a healthy way.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757675880_tilapia-fish-fingers-500g', 1),
(19, 3, 30, 26, 'Chilly Sauce-650g', 'Green Chilli Sauce refers to a spicy sauce prepared from handpicked green chillies. It is a condiment that adds spice and flavour to anything ', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757678400_ohms chilly-sauce', 1),
(20, 3, 30, 26, 'Mixed Fruit Jam-1KG', 'MIXED FRUIT JAM MADE OF DIFFERENT FRUITS ITS VERY YUMMY AND NUTURIOUS ', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757678700_ohms mixed-fruit-jam-500x500', 1),
(21, 3, 30, 26, 'Tomato Sauce Big-6KG', 'Fuel your kitchen with the rich, tangy goodness of 6L Tomato Sauce! Perfect for restaurants, cafes, and large gatherings, itâ€™s ideal for cooking, dipping, and enhancing a variety of dishes with its bold, authentic flavor.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757679120_ohms-tomato-sauce-6kg', 1),
(22, 3, 30, 26, 'Tomato Sauce-1KG', 'Fuel your kitchen with the rich, tangy goodness of 1L Tomato Sauce! Perfect for restaurants, cafes, and large gatherings, itâ€™s ideal for cooking, dipping, and enhancing a variety of dishes with its bold, authentic flavor.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757679180_ohms tomato-sauce-1kg', 1),
(23, 3, 29, 32, 'Nutralite Butter-500G', 'Discover Nutralite Professional Fat Spread, an exquisite blend of creamy richness that excels in taste and adds a dash of flavour to kebabs, tandoors, and gravies. Tailored for professional cooks, it promises an unparalleled culinary experience with finesse in every dish.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757680140_NUTRALITE Butter 500g', 1),
(24, 3, 40, 33, ' Chicken Kiews-1KG', 'ADP Zippy Chicken Kiwes are packed with juicy chicken and a crispy, flavorful coating. Perfect for a quick snack or appetizer, these deliciously crunchy bites are sure to satisfy!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757749620_chicken-kiev-non-veg.png', 1),
(25, 3, 40, 33, 'Chicken Patty (20Pcs)-1KG', 'Get ready to savor our Chicken Jumbo Burger Patty, packed with juicy chicken, breadcrumbs, onion, and green chili. This zesty, non-veg frozen delight needs just a little heat to deliver a hot and spicy burst of flavor!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757749740_Chicken-Burger-Patty-min.png', 1),
(26, 3, 40, 33, 'Chicken Breaded Strips-1KG', 'Zippy Chicken Breaded Strips are a crispy, mouth-watering treat made with tender chicken and a perfectly seasoned coating. A delicious snack or meal option for any time of the day!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757749920_Breaded-Chicken-strip-non-veg.png', 1),
(27, 3, 40, 34, 'Chicken Breakfast Sausage-1KG', 'Zippy Chicken Sausage is a seasoned ground meat product, crafted into links or patties, perfect for grilling, cooking, or snacking.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757750520_Z breakfast sausage.jpg', 1),
(28, 3, 40, 33, ' Chicken Nuggets-1KG', 'ADP Zippy Chicken Nuggets are the perfect combination of crispy and juicy! Made with tender chicken and a golden, crunchy coating, these nuggets are a tasty snack for any occasion!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757750700_Chicken-Nuggets-non-veg.png', 1),
(29, 3, 40, 33, 'Chicken Breaded Wings-1KG', 'Spice up your cravings with ADP Zippy Masala Wings! ðŸ—ðŸ”¥ Crispy, tangy, and packed with bold Indian flavorsâ€”perfect for any occasion!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757750760_Chicken-Breaded-Wings.png', 1),
(30, 3, 40, 33, 'Chicken Popcorn-1KG', 'Our Chicken Popcorn are made with quality chicken, breadcrumbs, onion, and green chili for a hot and spicy treat. This non-veg frozen snack needs just a little heat to deliver a zesty, satisfying flavor!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757750940_chicken-POPCORN', 1),
(31, 3, 40, 33, ' Chicken Breaded Lollypop-1KG', 'ADP Zippy Chicken Breaded Lollipop offers a crispy, flavorful crunch with tender chicken inside. Perfectly breaded and ready to enjoy, itâ€™s a fun and tasty snack for all!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1757751060_chicken-breaded-lollipop.png', 1),
(32, 3, 27, 25, 'White Compound-500g', 'Morde White Compound 500 gm is a high-quality, multipurpose compound used in various crafting and DIY projects. It is ideal for creating molds, sculptures, and decorative items due to its smooth texture and easy-to-use nature. The compound dries to a hard, durable finish, making it perfect for both beginners and professionals. Its white color provides a neutral base that can be painted or decorated as desired. Suitable for home decor, art projects, and repairs, this 500 gm pack offers ample quantity for multiple applications. Morde White Compound is non-toxic and safe for general use.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1760443800_MORDE White Compound', 1),
(33, 3, 27, 25, 'Dark Compound-500g', 'Morde Dark Compound 500 gm is a high-quality, versatile compound used in various crafting and DIY projects. It offers a smooth, dark finish, ideal for creating decorative items, jewelry, and sculptures. Easy to mold and shape, it dries to a durable, firm consistency. Perfect for artists and hobbyists, this compound is non-toxic and safe for creative use. Its rich dark color adds an elegant touch to any project. Suitable for both beginners and professionals, Morde Dark Compound ensures excellent results with minimal effort. Packaged in a convenient 500 gm quantity, it provides ample material for multiple projects.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1760443980_MORDE Dark Compound', 1),
(34, 3, 26, 6, 'MM Panner 1KG', 'Milky Mist Paneer is firm yet soft, with a cohesive, slightly spongy and velvety texture. It has uniform marble white colour, depicting purity. It mixes well with flavours and spices of all kinds, making it perfect for all your dishes.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1763207160_MM Panner 1kg', 1),
(35, 3, 26, 6, 'MM Mozzarella Cheese Diced  1KG', 'Made from fresh milk of cow/buffalo. Perfect taste and texture\r\nIdeal for pizza and a host of other recipes, including baked dishes, pastas, salads, and vegetables.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1763208060_MM Mozzarella Diced Cheese', 1),
(36, 3, 26, 6, 'MM UHT Fresh Cream  1L', 'From soups to desserts, you can make your recipes interesting by adding fresh cream to it. Milky Mist Milk Cream is packed under highly hygienic conditions & it delivers a consistent and smooth texture to all your dishes.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1763208480_Cream-1L UHT', 1),
(37, 3, 26, 6, 'MM Cheese Block  1KG', 'Smooth, creamy, and heat-resistant. Perfect for burgers, pizzas, and hot applications.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1763208720_MM Cheese block 1KG', 1),
(38, 3, 26, 6, 'MM Cheese Cubes ', 'Quick cheese recipes only need small & convenient Milky Mist Cheese Cubes.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1763208840_MM Cheese Cubes', 1),
(39, 3, 26, 6, 'MM Cheese Slices  765g', 'Deliciously sourced from the wholesomeness of milk, these cheese slices are perfect for your on-the-go recipes.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1763209260_milky-mist-cheese-slices 765g', 1),
(40, 3, 22, 22, 'MAN Bluecuraco-750ML', 'An old time mocktail classic, Blue CuraÃ§ao is known for its deep blue colour, tart orange flavour and tropical credentials. The amazing deep blue of Manama Blue CuraÃ§ao Syrup evokes the sea lapping the beautiful Curacao beaches and adds an exotic touch to mocktails and sodas with its aromatic orange peel scent and candy bitter taste. The deep blue colour adds to the intense flavour. Our Fruit Twist blends best to make mocktails, cocktails, lemonades, sodas, slushes, frozen beverages, mojitos!!! Enjoy the Twist.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765884060_blue_curacao_750ml', 1),
(41, 3, 22, 22, 'MAN Mojito Lime & Mint-750ML', 'The name \"mojito\" stems from the African word of \"mojo\" which means to place a little spell. While we may never know the true origin of the drink, the tasty combination of LIME & MINT is sure to stay for years to come.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765884000_1752209996_mojito_lime_mint_750ml_png00.png', 1),
(42, 3, 22, 22, 'MAN Mojito Original-750ML', 'The name \"mojito\" stems from the African word of \"mojo\" which means to place a little spell. While we may never know the true origin of the drink, the tasty combination of LIME & MINT is sure to stay for years to come.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765884480_1759032333_mojito_original_750ml_png00.png', 1),
(43, 3, 22, 22, 'MAN Grape-750M', 'Made from the finest grapes having intense grape flavour, rich taste and dark hue, Our Grape Crush makes it a refreshing classic and certainly different when Poured to make delicious Milkshakes, Desserts, Ice-Creams, Smoothies... Use as Dessert Toppings to pour on your Sundaes.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765885080_1753543005_crush_grape_750ml_png00.png', 1),
(44, 3, 22, 22, 'MAN Blueberry Crush-750ML', 'The sweet, delicate flavour and subtle tartness of your favourite tiny summer berries. Enjoy fresh-picked blueberry flavour and aroma any time by adding our Manama Blueberry Crush to your favourite delicious Desserts, Ice-Creams, Shakes, smoothiesâ€¦', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765885140_1758880544_crush_blueberry_750ml_png00.png', 1),
(45, 3, 22, 22, 'MAN Cranberry Crush-750ML', 'Our Cranberry Crush adds tangy, sweet, berry flavor brings the tartness when you add to make delicious Milkshakes, Desserts, Ice-Creams, Smoothies... Use as Dessert Toppings to pour on your Sundaes.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765885260_1759645406_crush_cranberry_750ml_png00.png', 1),
(46, 3, 22, 22, 'MAN Raspberry Crush-750M', 'Raspberry sure do deliver a tremendous amount of tastiness. Enjoy the juicy sweet, tart flavour of fresh-picked raspberries when you use our Manama Raspberry Crush to make delicious Milkshakes, Desserts, Ice-Creams, Smoothies... Use as Dessert Toppings to pour on your Sundaes.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765885440_1759121935_crush_raspberry_750ml_png00.png', 1),
(47, 3, 22, 22, 'MAN Coconut Crush-750ML', 'If you like pina coladas, youâ€™ll love the authentic coconut flavor our Coconut Crush brings to tropical-inspired beverages. Mix up a coco-lime shake, give dessert and coffee drinks a coconut twist, or stir up some island mocktails.\r\nThe tropical flavor of rich, creamy coconut crush makes it hard not to wish your toes were somewhere in the sand. Take a staycation instead and use our Coconut Crush to add lightly sweetened authentic coconut taste and texture to desserts, Ice cream, shakes, smoothies, milkshakes, or cocktails, until you can actually make it to the beach.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765885500_1759467550_crush_tender_coconut_750ml_png00.png', 1),
(48, 3, 22, 22, 'MAN Litchi Crush-750ML', 'The delicate, floral-perfumed juiciness of the Lychee lifts the flavorwhen blended to make a perfect drink. Mix in our Lychee crush to add its sweet, exotic, melon-like flavor to make delicious Milkshakes, Desserts, Ice-Creams, Smoothies... Use as Dessert Toppings to pour on your Sundaes.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765885620_1759637866_crush_litchi_750ml_png00.png', 1),
(49, 3, 22, 22, 'MAN Hazelnut Syrup-750ML', 'Go a Little Nutty, Hazelnut which blends perfect with coffees and chocolates, the nutty taste of caramelized hazelnut is an ideal taste enhancer. Our Hazelnut Fruit Twist adds rich, nutty goodness and blends best to make your mochas, lattes, mocktails, cocktails, smoothies, shakes!!! Enjoy the Twist.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765886040_1755145838_fruit_twist_hazelnut_750ml_png00.png', 1),
(50, 3, 22, 22, 'MAN Watermelon Syrup-750ML', 'Manama Watermelon syrup delivers the exotic, fresh, thirst-quenching taste of this ultimate summer fruit. Succulent and sweet, watermelon Syrup shall freshen up your sodas, slushes, teas and exotic cocktails. Mix in our Fruit Twist which blends best to make mocktails, cocktails, lemonades, sodas, slushes, frozen beverages, mojitos!!! Enjoy the Twist.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765886100_1754037495_fruit_twist_watermelon_750ml_png00.png', 1),
(51, 3, 22, 22, 'MAN  Bubble Gum Syrub-775ML', 'Manama Bubble Gum brings the original bubble gum flavour of childhood, a playful and sweet flavour for a nostalgic light evening. The candy pink Bubble Gum syrup adds great fun and energy  to your soda.  Manama Bubble Gum pink sweet flavour is great for Mocktails, Sodas, Cocktails, Shakes, Slushes, Punches, Lemonades... blend mix, mix, be creative & have some great fun.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765886220_1753892497_fruit_twist_bubble_gum_750ml_png00.png', 1),
(52, 3, 22, 22, 'MAN Strawberry Syrub-750ML', 'Oozing the sweetness of sun-drenched summer days, the bright red color, the sweet juiciness and the familiar aroma that make strawberries so delicious, Add our Strawberry Fruit Twist which blends best to make mocktails, cocktails, lemonades, sodas, slushes & mojitos!!! Enjoy the Twist.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765886280_1754032251_fruit_twist_strawberry_750ml_png00.png', 1),
(53, 3, 22, 22, 'MAN Mint Syrup-750ML ', 'Refreshing mint syrup, 750ml bottle, adds a burst of cool flavor to beverages and desserts.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765886400_1752209996_mojito_lime_mint_750ml_png00.png', 1),
(54, 3, 22, 22, 'MAN Green Appe-750ML', 'Our Green Apple Fruit Twist has the perfect balance between sweetness and the acidic touch, The crisp and sweet taste of just-picked green apples is hard to resist. Manama syrup is a juicy blend of perfectly ripened green apple. Mix in our Fruit Twist which blends best to make mocktails, cocktails, lemonades, sodas, slushes, frozen beverages, mojitos!!! Enjoy the Twist.', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765886520_1754282366_fruit_twist_green_apple_750ml_png00.png', 1),
(55, 3, 20, 39, 'LE Chicken Nuggets-1Kg', 'LEVEZA Chicken Nuggets are the perfect combination of crispy and juicy! Made with tender chicken and a golden, crunchy coating, these nuggets are a tasty snack for any occasion!', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765971000_LE nuggets1', 1),
(56, 3, 20, 39, 'LE Chicken Pops-1Kg', 'LEVEZA Chicken Pops are made with quality fresh chicken. This non-veg frozen snack needs just a little heat to deliver a zesty, satisfying flavor!', 0, 0, 0.00, 0, 0.00, 'flat', 1, 1, 1, '1765971240_LE Chicken pops1', 1),
(57, 3, 20, 39, 'LE Chicken Burger Patty-1Kg', 'LEVEZA Chicken Burger Patty, packed with juicy chicken, breadcrumbs, onion, and green chili. This zesty, non-veg frozen delight needs just a little heat to deliver a hot and spicy burst of flavor!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1765971420_LE Chicken bp1', 1),
(58, 3, 42, 40, 'EVE Kitchen King Masala-100G', 'Explore the â€˜Curryâ€™ experience with this classic blend that gives vegetable curries a lordly taste and a mild, subdued flavour. It is the recommended blend to prepare Indiaâ€™s much loved vegetarian dish â€“ Home-bred Cheese in fresh green peas: Mattar Paneer.\r\nPaneer curries and light gravies are enhanced with the fragrance and taste of Everest Kitchen King.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1765972320_EVE Kitchen-King-Masala-01.png', 1),
(59, 3, 42, 40, 'Everest Chaat Masala 100gms', 'Enhance your dishes with the zesty flavor of Everest Chaat Masala, crafted to perfection. Ideal for fruit chaats, snacks, and traditional Indian recipes, this masala adds a tangy, mouthwatering twist to every bite!', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1766836380_Everest-chaat-masalaa.jpg', 1),
(60, 3, 42, 40, 'EVEREST Dry Mango-100G', 'Everest Dry Mango Powder is ideal for adding a tangy zing and fragrance of mangoes to a wide range of dishes, salads, beverages and more.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1766837100_front-55.png.webp', 1),
(61, 3, 42, 40, 'EVEREST Tandoori Chicken Masala-100G', 'This Everest blend strikes an even balance between aromatic and flavouring spice agents to give chicken a luscious, inviting flavour. Since this blend is used in â€˜apply-and-cook-over-the-fire situationsâ€™, the flavouring spices predominate, in order not to dissipate under direct fire.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1767008400_tandoori-chiken-masala.png.webp', 1),
(62, 3, 42, 40, 'EVEREST Kausri Methi-100G', 'Soak the Everest Kasuri Methi in boiling water with a pinch of salt. And then blend it into a wide variety of dishes for the delectable aroma of pure Kasuri Methi.', 0, 0, 0.00, 0, 0.00, 'percentage', 1, 1, 1, '1767008640_Kasuri-Methi-1-1-FI.png.webp', 1),
(63, 3, 42, 40, 'EVEREST Jaljira Powder-100gm', 'At any Indian feast, Jaljira is a favourite welcome drink, and a natural choice after meals. A lively mix of spices and condiments that include mint leaf and dry ginger impart a tangy, sizzling character when mixed with plain water.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1767008820_jaljeera-5.png', 1),
(64, 3, 42, 40, 'EVEREST Kashmiri Chilli-100G', 'Chillies are used in Indian dishes for their hot taste and reddish colour. Red chilli ground together with coconut gives curry a firm texture. Chillies are a great source of vitamin C and good for digestion.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1767009120_Kashmirilal-01-1.png.webp', 1),
(65, 3, 42, 40, 'EVEREST Pani Puri Masala-50gm', 'â€˜Paniâ€™ in Hindi means water. â€˜Puriâ€™ is a fried hollow ball made from wheat flour. The â€˜Puriâ€™ is punctured open on one side and stuffed with delicious fillings and topped with Pani. The â€˜Puriâ€™ is then eaten in a mouth full. This is one of Indiaâ€™s most popular outdoor snacks.\r\nBlack Pepper, Tamarind and Dry Ginger combine together to give a sharp twinkle to this Everest Blend that spices the â€˜Paniâ€™.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1767009240_Pani puri 30.png', 1),
(66, 3, 9, 41, 'CP Supreme Chicken Nuggets 1kg', 'Indulge in the crispy, golden goodness of CP Supreme Chicken Nuggets, a delicious and convenient snack perfect for any occasion. Each nugget is made with high-quality chicken, offering a succulent and tender bite. Coated in a light, crispy batter, these nuggets deliver a satisfying crunch with every bite.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1767184260_CP chicken Nuggets', 1),
(67, 3, 9, 41, 'CP Chicken Mini Kievs 1kg', 'Indulge in the rich and savory taste of CP Chicken Mini Kievs, the perfect snack or appetizer for any occasion. Each piece is crafted using tender, high-quality chicken filled with a delicious garlic and herb butter mixture, then coated in a crispy golden breadcrumb layer. These bite-sized delights bring the iconic Chicken Kiev experience in a more convenient, mini format, making them ideal for serving as a party snack, a quick meal, or a side dish.', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1767185040_CP CHICKEN MINI KIEVES', 1),
(68, 3, 2, 38, 'Black Currant Crush 250ml Pet Bottle', 'Indulge in the rich and refreshing taste of our Black Currant Crush, now available in a convenient 250ml PET bottle. Savor the intense sweetness and bold flavor of handpicked black currants, expertly crafted into a delightful beverage. ', 0, 0, 0.00, 0, 0.00, '', 1, 1, 1, '1767186420_1704604851_black_currant_250ml_jpg_01.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0CmVyZpW5qOUORYR38eeEV2ZEhJFcLxAraxPwJEp', NULL, '173.252.95.3', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem9keG1PZGhjNEc0TW45MGgwNUJCdGFhU2NlSzdQQlFVZmtLWTBkOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8zNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727039),
('0j6G6o7I7QTShQZBwd2JgBzWYm4WB1GRVfZNAfBF', NULL, '173.252.95.33', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUY4Ymx1c3lZa2ZWQlNQcWtEZlpFaElBbnlwWjk0NnFrVU03SjNaUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvMzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789729161),
('19arGtio7DeEA7S3zcBo8z7OqSyiE5vRLOY3f1Vh', NULL, '69.63.184.14', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjlEbzFqdW9PT3h2VUZQTGdFUXNXeWUyYjdBVlJ5TWtETVlKNGZEZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726383),
('1ZTyQMJRHAVtvgueeuKlF5lMsuyuad3kAa37kzp4', NULL, '173.252.70.44', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVG9ONTRwbkZmZjBRbWtSSExmcWwwaFF1aUNMNHZvdGhHV2VpMDMwaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726392),
('3jZcOw6UA6LAtYCcyUqbcUhSwS7Z5UbasCb0Fhq3', NULL, '173.252.95.17', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjZaMDFIN2FzVVE5cUg2bDliMFM1UWoyZzZZTGMxcU1mTFVkYTk3dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726331),
('3RaAzSzqeUXvwFod7ejuUJ4z5used5DlCN3z4vLG', NULL, '173.252.69.5', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXp1UklDSXBMWG9YR2NzTk45RWJwM1R5ZUp3WkROdEJFRzJrdjUyQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726332),
('3WYaKxIp8m7xjjljlFUUOG3NQkXE53whMFRacHkg', NULL, '173.252.87.46', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3hmazBjMlB3THFWSUxvbWZNalg4c0N0VXI0c2FpZzZSVTFzbWJ0OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8zMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726340),
('3ZzKOdMNuBlB4z2AubxntVJ5oiW8q5GQdaqVnzcE', NULL, '173.252.69.22', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0dmMkdGOGRjdHlGNUNNN2FhcllLMTlHNk1YRzJkSTVxbGpES1QxeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8zMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726421),
('56mjNyE0pEdaio6FnO1nvxGRFjJvCKvw55eLUt9j', NULL, '173.252.82.114', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0RPTjQ4M3lTbnJrMDl3ZWdCWERYSnpaVWVOTE14OWFPRlFSOEdkdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727233),
('5LZMhJ5CHeF6zZjk76WsXgBsa3E5Ig5DaLGz28lQ', NULL, '103.148.53.115', 'Mozilla/5.0 (Linux; Android 14; V2180) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.5573.50 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHhKVnd1UlptMkNjMUl1OFlkYUlQR0dsTTRRaHowSzNJcmlCaWNXMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8zOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789721905),
('5UyvytE2iLwDtu8GVttTh2GYaKtTxXDaYRuvw2gF', NULL, '173.252.69.30', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGMwTVBrR2U5RmhiazdSUW5KMjFqOG5teWUwWndFcXZwbUNKTExCdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726585),
('5v1m8zvgK7xipTn5UXgbb0BzBXKEYlkZXq4JCBUz', NULL, '173.252.82.3', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWYxMkkxN1JhS3NCdFNhTDRhazhHOG9SdEE0Z1VxQU51OUlGcGFmZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvNDEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726621),
('6PHCEcPoHoQA5fgTePz78t4ppXrSb43X5VW2WENx', NULL, '173.252.87.47', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkd1OEdpUVM2RFZMSW9iY0U5cWQ1QWtjcmtTTXdzUURIZ0JSNjZHcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS9icmFuZHMucGhwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789726377),
('70Hblcjs1Nohjr2gPw7Y8wPEAr1iu8AFPfVwxOUB', NULL, '173.252.87.6', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2RvOUFpek9taW8zeEoxVlFtMXhxZnFjcGo1MEdQOXJWaFR6N1MydCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC81NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727114),
('7BSCfS20wzer4u3yM339pbMF3zZlcEyeV2BsG76H', NULL, '69.63.184.4', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDhncUtlR3J5dTJ3ZDFTaUpzR2VuZDFVVWtZbHJkZmRubXlCS3JDNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS82Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789726352),
('7DphJQlpoytHxMKcAr7pUFgEYdkZQk8Ewo4qsbk1', NULL, '173.252.82.3', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWlzOFJuV0M2OW9ldjEzSWVHNldqeDhkWnJQUzhXdkE4aEZPVkJraCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC81NSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726620),
('7EzCquiGkWPEkgDDluFV0CwbxfFNUzPhEB3ejiOt', NULL, '173.252.82.18', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3UwM0ZzYkloMXFmeEdNVEZxR1FWeXh6WGNsSkU2Vno2Q0xWcHZkQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC82Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789733157),
('88YT0CvS1eswhdbxfImsCy5pd5I0n2wbWPvKFQHt', NULL, '173.252.69.15', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUtaRjB1WXVqYVlXeG11OHpiNDZBb3Q1SjYwSGl3ancwemxVYjYwNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726388),
('8q9lUU2TF0kvP2MrS1tdDruMpVa9kurxBZdmqDrI', NULL, '173.252.82.38', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTZ5T3gzcnBsY1p4cGh3WVgxdFBGNTdYSXdKM085WG9lSUdFcUxORyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvMzAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726342),
('9e3THgDNIoN4KIr6a4ieSUSqkrda8Aoe511tRK67', NULL, '173.252.70.6', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDBybTBsWks5VFV1MUxRU0hyczFSeHlCMHVMWUU1dXlhdjVLUXJVRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS81Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789727112),
('9e9hEUV2A9TpyYMQJPNRghNq7hGmVofYRFBJvPS9', NULL, '44.223.116.149', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Amazonbot/0.1; +https://developer.amazon.com/support/amazonbot) Chrome/119.0.6045.214 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjV4Wmk5MXpFOFpqVnFtZUpDejlobUtDeUZ6dWc1RDFQdXVvMW95NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZ2tmb29kcy5jby5pbi9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789734159),
('9gXqijRantyRLJEsgyGFgtcoUOk0Q6UudfYCq635', NULL, '173.252.82.2', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkREOEVkeXZ0UFRKSEJGMGM0VG9LeDAzQzVlUWVWY0RzZ3JIWk9NNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789742664),
('9V2qL5CYFa5HyenIorWjGLgmO8cdMskzRec0zbTJ', NULL, '173.252.95.34', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUN6OWxJWFhYMG8xdkhPQzQ2QmlyS0M0SGl4ZzRiQ0R0VEhLcm1rUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8xMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726792),
('9wlzAMB9YfREnS60DdH4JpZL06mbIbC4s18CJQRT', NULL, '173.252.69.17', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEJNWlZVdnhMS2o5WFg4QndBRGJCckRCQlp2NmVLeDNDNkNtT1Y1RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726421),
('a8B5mVOgxbl78Zx3bezhDs0NbCi5q2fVHatbjh5f', NULL, '173.252.87.40', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUVjQ2I1V29zSE9mZFNJWFc3MDROemlWWU4xY0pxbk5ac0ZsMUJJViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8zNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789732737),
('aB6DgZiOIBzLECD96qWhhr3aGOrpxo52fHD63Cfb', NULL, '74.7.242.23', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.4; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHlrNE9HTXFhZkxwYnBldDMxc2JSRlpZSjFNNXVxWVFCTFp5MFljcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvNDIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789724854),
('af66U1axIhXQliTB7FBux9hYUuqcFSnWSQbBHhxM', NULL, '173.252.95.20', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDNnTnQ3bE15a0t1M3pya01Mdms4aVhYTEp0OVlGWDBZTGVNUjEyeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS81Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789728944),
('agg5UpeFSN1uCHdPF3hc3iHwanVkOoWCyZ9Xe1Ka', NULL, '173.252.95.42', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1Y5Y0dJVE83czhlcldYWGdtMVdhb2J6V05jTHhOeTFIQVo1U1FoNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8xMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789743140),
('aj3m8Kd30XgLjYJwF0z4AeMuI4YYysGnC4Dw8ESA', NULL, '173.252.87.41', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGRuZmpKbWl3NWV0d3hxb3pGcVlyUHVLczlWd3FCSDBsMUZqZTAzdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8yNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789735314),
('ATg1uKUVnQ1JbAhFvXLjrNtwujB8Zt1qfbVb1W4P', NULL, '152.57.206.175', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3ExbklZclhUNXNkdGRsamljSEZxc3dsSDBEUEFtWHgwR01lNWFESyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789723974),
('BdB0dEAxSoQxcUbaBs29IA7J40wqx2dGdk5xzXfT', NULL, '173.252.87.112', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXFDdmtJUnpBN2J2VEZ1VGRVUUtxRnF2M1dNSkxIRDBFbVVobTZVMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC85Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789733218),
('C1StO4ROSPrqwn4kRtoybmjV24HTXWvzxf9URkkg', NULL, '173.252.82.21', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVG5QaXo3cHNBcjUzazE0ZkJNVXJ0ZDdHdUZsd21nNTRMTUROVklOOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC84Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789731831),
('C3EGDsWjK0VMHZRwtQklI0KNsoPVIBWQ3eGkawam', NULL, '183.182.115.200', 'Mozilla/5.0 (Linux; Android 13; OPPO PCLM7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.5757.44 Mobile Safari/537.36 MicroMessenger/8.0.48(0x18001B3F) NetType/WIFI Language/zh_CN', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVFFY2ZSZXVId1RSZTJQajZkbHdjcGF1SWJ2U3dJeXlsaENnaGY5QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC81MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789731495),
('c4U1knlnkrna4zh62rbqtqKIRjksyxqeh7H4o18Z', NULL, '173.252.87.18', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkMwU1BVSjVmZVRhcndoS0tXZjFTWTA4ZXZrMHJjaFgwaDl3d0UyVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726620),
('c5LvqwEg4QoOi0NR9vWSuwqTDMC0GwZOtXniFhbP', NULL, '38.41.5.120', 'Mozilla/5.0 (Linux; Android 15; M2102J24) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.5897.55 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1J1QXZwWUNTUmpSczQ0dVVlb3B4T3ozTzBHNHRnZG9RWm12NEQzbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vZ2tmb29kcy5jby5pbi9wcm9kdWN0LWNhdGVnb3J5LzIyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789740959),
('CkqavrFBys2EGSRKS3EH56DuyODTHWBdLycWMA62', NULL, '173.252.82.32', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzlTa2JBMm12akNOcmpjSVMwOWVKc09YRzJTdWpBTndrMGxJS0h1RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726444),
('CkRiMbXFxTvkZ0wXhkNJZVCyUZHzhNF3UzojuMZE', NULL, '69.63.184.22', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3E0YUZZQ3JNWDBDaTA2MjNYQ1A4U1hveFpyYm90bUZFVXhKZzFHayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789726450),
('D0oTFPWbTAz2GwvfaspzHJpelmWV9rJJeDZbexJC', NULL, '69.63.184.38', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEVCRGNLVllCa1BrNGRmRVhhcnRROHpnYmFWdnViRWhIbGpGUlJBcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8yNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727332),
('dev9cyCwaVCWJM1PYd5gI02wealn3fLY2HQVjPa4', NULL, '173.252.95.61', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEJRUXI0TjhHRmVBMW84UERaZFVTQWE1RmRidnh0VVY3TFR3anNMVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726381),
('DF0SWXeGSw3GLYLfSWsJyNxB5KmUK2LeqzgoQcjC', NULL, '173.252.87.48', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2pUbUdSVjRDQnkxWnI1MkZaTFdHa1VBZWl5S1RERjZHOGJVSE1PTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvMTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789741427),
('dOed4ruLR8006tFlGK1q6D851LbzaDWL6G2VecFi', NULL, '69.63.184.30', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnJxRlpzQUxOTGlQZzhycTdtbzJ0emlNRDZiQkFrOHg5dldzWVl6dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvMjIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789742711),
('ekC95mHmiB06CXbUhtYJCDfAJnNNamKvY4BC17Nd', NULL, '173.252.95.48', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0xkb0F1UG90RXY2aVpWS0FOVFpjcUR2ZHg0aVlRdjdKN2xoWThYbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789741077),
('Fn4mh6lVuWQFTq9HuzkNhriHJTTQWlbcEKlq5zJ3', NULL, '173.252.87.49', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGZZRjRQRjJYSDNLcGg5Yk14enF1Q01HRXBmRWFlRThBb2Nob1hrUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8xNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727543),
('FOU98E0JLHrWP5aDdtyAG58SxkvXKmr4Unz52vdn', NULL, '173.252.87.35', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWpMMVBYVU05UVJBcDk3Q3lFaERxR3ZGQnh3Y2hMNnhnY2dkR3h2bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8yMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726359),
('FvX6yaoiRbGID7hI1ATnWlPkgJmw6s5xkcno22Jv', NULL, '173.252.70.13', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWlHOEkyUDBvWmYwR0hIRVZaQ3h6Um5SWlRUcGI0bTlISzRSM08zViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726375),
('FWTLZcGoNu8DJ2t6oubcQ89Pi2lrWRmEL0ZkjNPE', NULL, '69.63.184.2', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZExiQWdkWVd6ZXRhMUwxTXJFZ21aUkE5akdKSFRZeXhkSWd3QVFISyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNjIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789731613),
('FYKELgXb2qYXkRqGQ33uv3e6eA4XOhjyP4I9ILIf', NULL, '169.58.216.97', 'Mozilla/5.0 (compatible; t3versionsBot/1.2; +https://www.t3versions.com/bot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmQ5UEN4bUtENWZvSmJRMlNGdjF4SllnUHl1TmNJN1FZRjdqUVppMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9na2Zvb2RzLmNvLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789736640),
('H4HK6tMR25NfupGD79gJFoA29N5GIiiERz0qaCZQ', NULL, '173.252.82.5', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejFXRFVHVVJ0bWlsckpNWUxlUEU4aGNLQ0FXZG5neVRTZHdjajlqSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789729518),
('hk0ovygZEeB40Rx5etHvD3KkEigD7OLdt8VtD4P7', NULL, '173.252.82.63', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTV3akZQRHpvcW5LcWVHQU1UMFNDZGdUMDNNalMwTWw2dmxMSXdabiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvMzUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789743281),
('hLqjM6x7AEyaEp1SQ8aqTsgfRLgd5XeyWmIvpPBf', NULL, '69.63.184.27', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2dCbUJjU1hjTjF4U0d5NmhUTFZHM2pIVWRLOGZKVTRRTEMxamJSQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vY2hlY2tvdXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726637),
('hXu4Nm2StsqWH11uq2WJQWfqT5ctZ8XfR5k3A3VW', NULL, '103.131.214.121', 'Mozilla/5.0 (Linux; Android 14; M2102J26) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.5971.78 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTRLTk9PV1ozMm9XTDR4dlV4aW5JYUxiTnRWNERWYUNzeE9RdGRidiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8xMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789720216),
('IexeUHEFrrRfPEF7EvQY61HmBKE05a0EOQJegjB9', NULL, '173.252.95.57', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTBQVVpaVWdvS1hhR2J0MmhmNlMzZDJmWmltV2c2SVVzU1lXa1cxTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727223),
('Iig6oDkZ4FZVSnKCTjZVWq0Okc1aLpfahzHfmwzx', NULL, '173.252.69.27', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGRpTWhOeVlJb0U3NzRhTVpneUpaTzhvNWl3dXlSM09kNTJDVDlyWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvMjciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726351),
('IoBlvwVJuLNJfqoCSvDBs99JJEIg58DS6pcYUcxN', NULL, '173.252.87.16', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2Zja2poYjFXMlpKcW92cXltQmtvOTY1MkxvbGJydHlNOWxMSDlOSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8yNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789733856),
('J8gxUQEELbAxc8hlKxmFpdmytCOp5bVIKuCHtMcj', NULL, '173.252.70.17', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3dDbjZ5dmRtaU5IQnFOY1M4RFRJMjB1N21KUzREYUdGRlFEdHZHTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvMTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726389),
('JcP7ubWFuNlicvitD2SLpeTEiA0DVoIptjkNPlIQ', NULL, '173.252.69.114', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHYyWXhXeEtSTXp6Y2VpdGxuUE8xRnQ5VTBybHpqTTc2bHJVZjZoViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727049),
('jDntyWKRPYgZc7QkOEygPFT4ocgx6xVdLPrKZoG9', NULL, '173.252.69.31', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSklHUGE3T28wZFhRZndZTEFlN1l6V0tzdXhoMjFibWI5NGVlNDdVUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726614),
('jnSrjp9AX4g0fkFGUPygoF3sEE7MWcbiFDCShxui', NULL, '173.252.82.33', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidndOdGV6b1oxdGNIUVl4bHJUb1FSSFNvR05USWU0cUZ6TE5sY1czbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726354),
('JQEK8yr8y3N6aRwas13E8Kq3E0ANZ7PPQOb6m1NI', NULL, '173.252.69.5', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0dzMVBieVRZbzdHbE5UazQyU3JDTGE0eTIybGJFNVJhOUpwRVdFRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8zNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789739769),
('JTe6xHGeF1nYA1fwyb4j74j5BLCRA40gdFTj50Wi', NULL, '173.252.95.34', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDZvWDk0V0p6TUR2c0RSdnI2cWlPTTF2RXM2QU85WEZBVnFuV21VbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8zMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789730073),
('JTKlHWYxXuj0m7OaTCqEFxrOYcPiOcO8hdhvh4eV', NULL, '173.252.95.32', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3MxY3FUUHpFMTRaaFk2bTlYcDdDMGxlQUhyN0tBcHBJNHN2ZDVVcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS9jb250YWN0LnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726435),
('Jvy6Ju4HNn3bnWL8mN65bdRAzTXWU5K7pRih2QK4', NULL, '173.252.87.56', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXNiRjJuN0VJRXpsb0l6cXZSVlhpWEp2S01mOGVyV29GQjBIVzBtMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWNhdGVnb3J5L2JyYW5kcy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789728032),
('K2CvwlTYO2Y5FwCFT6Yhl9FZswS2NO7V9MtWEYRQ', NULL, '173.252.87.46', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVk5nSkhnUmJ3dzQxMTd3VWhuSGJBUTZ5S25vTm9UY2tkeVJzSTZHRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726367),
('KbqsmqVr6RgaDjMHA6CChc701sRknui740r2oxMM', NULL, '173.252.69.31', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTFtV0dhYTJlaEd5WDNFRVlXM2ZKa2dMSTRjWDlyMDB1MFJZYzZqMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC81Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789743600),
('kHNSx5QUYaNDABA13mQxzrBgfH2wxlrSU6pYVp5U', NULL, '173.252.87.12', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjNPSXNqM25rU2dSNG9iRXZzcFhRWUI2SGZjY1Z4T25ZVXI0WUhvViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8zOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789728428),
('kjDvJ6Nk1LdHwlRaa91TSUW5c3e6EgIrIVHc7SWW', NULL, '173.252.95.33', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU1VbDRJN09ucng0MlU1dWh0WHJuaFpnVGMxQUQySTM0Y0YyYU1FQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvNDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789727232),
('L9yF8g1H0UZbafgobg1GxqBgymL7xEIX4unBOufu', NULL, '173.252.70.14', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjA2UEcyOVdtYVZYNjBTa0dwUjBLaVl4Y0pZNTJSRVdsUmdaOGlhUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8zMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789741378),
('ldmVMizpppKlfL04wFSy4HqlKvuLZVG7J5b9EFcA', NULL, '173.252.69.41', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDFJZTVDUTEzd3lpelp2b3piT1FydUM5MXF1cFNrODN0eHRkdTRhSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727104),
('LEtAUJgM33hVXLR9CHbGINmhSvPAfopTP0XthzAE', NULL, '173.252.87.115', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2xhWDJzZGZiTXZmaEl0VTRrQWlWSHFxYU9lVUVSWlJOWTZ3cURFZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS9ob21lLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727084),
('mraYJs0dMXYdBNR1sJ7xmKrUBoYcOCtgT4AMsmo5', NULL, '173.252.69.35', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkRDQ09jbFhkWlYxVVZsSnlhVWdWYktOQUZHdnZmc3Uza0VvQ2ppbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS80MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726584),
('mrK4qA2SlqL73IZL4AlDmLvwOvnDQTU1oCWskNTM', NULL, '103.150.155.233', 'Mozilla/5.0 (Linux; Android 14; V2180) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.5753.59 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2xZczc4RlhBVjQxQ1R2Y3lVTDNKNEFnYUhzVlBsdEZ2TFRIZ3VMZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS80MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789720377),
('N45tqYnogRndzVPYoYuF0lEk8VHofAflIRlLjvpb', NULL, '173.252.70.13', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXB3dEx3a2FQZmJCMVdTRHgycDRaQ1VKelZUdEpLNU9PZndVZTVsTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC82NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789737003),
('nM685ONiS0uPKm3EeaHEckHDNPQphu1bwo8fzJmQ', NULL, '179.0.183.228', 'Mozilla/5.0 (Linux; Android 15; OPPO PCLM9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.5697.88 Mobile Safari/537.36 MicroMessenger/8.0.39(0x18001B3F) NetType/WIFI Language/zh_CN', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzdUNWdCTTI3SUR2Vk9JMzdEdDJTYXVhS0luTzZnMkNNdFJYWFlYdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNjciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789743183),
('nMV7T3yH9I8zot6khLku4lvjJE0W3jy9dPEZhLHL', NULL, '173.252.70.50', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjA3ZnhudDdOOENkalF4ZkdnS21uU2tzeGdGWmJLazBEVXhHeVZVaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8zMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727219),
('Nv9BhLADiI4l545mqnluDNID5FKHEH0yZeb4JbD4', NULL, '173.252.69.3', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzBEZ3pGczJ1bWRUUEppOHVzTVk2WHozU3JoNndzbm1NeENyUThYeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC81NyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727125),
('NXrR0BbRZYl0FwczBLr3DuCEziwOcA7CucwfiEpV', NULL, '173.252.69.16', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1JFRkl4akpkY1hyUE9XdnBSWExXYlYzMTRnSWJJQjdydDJqTlpkUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYWJvdXQtdXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789728364),
('o66WmjnfU8XxA5R7ukjOmvscGs0H54PYvMPU4EL8', NULL, '173.252.82.14', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVRrSVI0VzVpZm1PNFd5UTNzcFdoaUJCbnZscUFBZVNXczV1THpJTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789727320),
('OIaNp3VtuL0ifW7KSrzViz0KieXlX59QTRXUlPi1', NULL, '69.63.184.21', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1N3MW11eVRZWndTcGNNSmh1ZlpKZVRVWmN5ZGRNaXhEZVowekNPdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS9hYm91dC5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726354),
('okrqlgXsgJwxcSFCQha2xqsSNQoDWA5Q9BeIcgG0', NULL, '173.252.70.2', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVJiaWlXREFGUWRVdXBCeHlDdlEwNnNqbzN4Q1lMNEV5SFhydWJ0ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvMTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726355),
('OLKrv76GINC8Az7Irddl4F23mDeEMkqVK00j2fZA', NULL, '173.252.87.9', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVprSHQ5Y2k2VUhKR0RTbkJCSHVHT0dWaWZmaEpGU3RGNUJTYXhvVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726368),
('OOYFSGu16hyCsuZXxIZvcv8UNxvvtDGMjRSZwUz5', NULL, '173.252.95.18', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTElYYUNuM2o1b3JuQXJwbVliazV1UFFVYlpSRktvUmtwT0ZXb1l6TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8xOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726622),
('pes0sGikcRO6a97e0mpaWvD9T3QDRn5xETgvk8Vh', NULL, '173.252.82.13', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnRqcHZmYVNhU0VPb0ptMVc3UmdyeDVTQXY0aDFSa3lDN0NHWlppUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727346),
('peX7RhXflHrueMxgXQHNHwGakbWWdE6f3TmVnmvC', NULL, '173.252.70.41', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjBjZUcxUkdjdU9MV2xYSlBIYzE5T3UzUDYyc3NQbFJFazVmZGo5WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8yMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789728012),
('PZ9nDG532SSCqglnY3hoCcxnZi1TBEVFhHVeJk8F', NULL, '173.252.87.12', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFVXZWVoS3d4SkN6d1hXU1FLaWlNaEVISkI2d29xV2NEMUY1Wm13NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvMjYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726971),
('qjec3d3Y9Lktse6uCNAa2tVMO2Sd8cHfo2uuOi9w', NULL, '173.252.69.3', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0NxMXRmVUdFZ0hlMExIUHM3OTVtRTlBb2wxWkNuNVpyM05ORVZhdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726331),
('QLbZfrSsKYnHbLJo3vU7I2cBotaO98zXIFmL7dEE', NULL, '103.131.18.139', 'Mozilla/5.0 (Linux; Android 14; M2102J21) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.5107.154 Mobile Safari/537.36 MicroMessenger/8.0.44(0x18001B3F) NetType/WIFI Language/zh_CN', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEMzTmppWmh5MVcxRFBzZTd2N0ZHcUpKU01QV0RFVW1wWXlEczAwNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS9hYm91dC5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789742233),
('QLT6CPGYcoyNZnPefS6ot0YmlJTdRpPvXBtWQMsZ', NULL, '173.252.82.54', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWs0VEhrclc2UmR1Qm9yVzk4ZldGUEtoNGIxZUZyY1BsRnlHaGhkaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWNhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789727293),
('qWB61t6Iboe8aSHIT5Qp4T1s8GrAhPdmnD3DwvLI', NULL, '173.252.95.4', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDI1S2dzZThaSW4xTTQ2aXFnUmFXR3RKUWxJSU9qUGtQTFRPdFFlMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8xMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727360),
('rAX0LEinANTSG7fcMEUPU2NAgMqAHJqWzdv7KZYm', NULL, '69.63.184.21', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWxGcXR0OFczb2F4Sld6VW5oTjNDYU90Q0lnbkkybDdlN0NMU2hSSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789727061),
('rbrAG6ciyYil8pQwtqJRJf5axvVgGxQ9jQQBhcTD', NULL, '152.57.206.175', 'QR Scanner Android', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFdtcU9iWWxMemxuOEpXZGZ6dFh6N2U4SEhiS0hhaUplM2FOSWY2eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789723973),
('rFkAiy22FUimiV2XPzgVc7QAE9ZtGhDuy8qiwDps', NULL, '173.252.69.37', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1pQemJVRUtmTHJLaXpMQW54OE9vQjROcmhROHhrYVB4U05VQVhTbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8zMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789728064),
('Sfa7IeaqXtg2ZaAbGBgwHVhZZfSzAQh0FvqCRpmL', NULL, '173.252.95.112', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0hKZDg5UUM3RWM1c3FLbWZOaDlzSFhWYXpsYm02ZENuR0k2Y1VTcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8xMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789743126),
('SIwbV3qv93Fq8f7iqGtBJ1sPZ0uVz8vSwanVMf9M', NULL, '136.158.83.249', 'Mozilla/5.0 (Linux; Android 14; M2102J26) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.5335.95 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczFLSnVobU9oSlJBeUMyWmNkenlaWWE5dWZHZVVkZW1HWFdmYjVqbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789731325),
('SUtP1MT1hrMnPhMJotRFJNlrA48WojsbEYYn0Qz6', NULL, '173.252.95.56', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFJzRWxFWUFKU1J2N203d25oTjlkSFh3Mk1oaVgxSWtoUlo4TGM5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726622),
('T4ZMC1e0Kf3VvV8952YmnafwkVb1auAK7xXhwZxX', NULL, '173.252.87.36', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1RxNVkzdGwwR1NuRHZBT3BLeENRM08wRFJ2UG9OaURCYVpjalhnYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726379),
('Th3MsBsimElsQjLjDtaas8er0P8por6q76MNORyz', NULL, '173.252.87.1', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1cybFc0aWhZMnhsa2lMNlZ3d3M3SHl4Zm1NVVF4ZG81cGtpeTlDNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727101),
('U9pwIhm2dEsTMwiuVUNUs1ciFZdmrjWXSushddTe', NULL, '173.252.70.45', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmJoYUhxenNNQmI4V2ZkQlAzVTJsV2xGSHk5RFc3cG1UMWR6bk1adyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8yNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789729594),
('Uj9VOiycVoUCtrC58LjD3F6YGc0oYC8kHGKrqtgu', NULL, '173.252.70.57', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHl1U2NHUjVsQ0MyT1pZWDVGYlVzRmRGTnNBUmQwRERaenl2S3BzcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC82OCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727234),
('UmeqexQuT0JFo2PW1qvBlqGU8Z0dIWPLlMtMlOPy', NULL, '3.216.227.216', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Amazonbot/0.1; +https://developer.amazon.com/support/amazonbot) Chrome/119.0.6045.214 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1E3ekI1TEZsWWh0TDJheHBOMEJIOWJWRU11Q0tLZjQ0T2NzN05GZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vZ2tmb29kcy5jby5pbi9icmFuZHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789737194),
('uXqjL6aUm7H07XvAX2rXb2MFD4sfW5jxjqd448Dn', NULL, '173.252.95.50', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidG1nb0FqZk5CY3QxZFhLbEdNV0NtOHJ1YUI0SFlldG1FMXhwdGVDciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789729126),
('VHs3s5ZT8WbxxgAteJuwsVzUeo4Od5TihvAN99Dk', NULL, '69.63.184.32', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEJjcW5ERzdiaHBMVFVSOFJCY0JFNzNJcDFvWnp0NnlxNzBaVU9rMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS8zOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789725245),
('vmeb4BvcwmzxFvCOOgnmlJwK57mURtAsZEkxeR3l', NULL, '173.252.87.4', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGNxV2c2aFhxWWdJNGRtRHFkVTgweDg3SHdZendka3hqQVRzcnZoNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvNDIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726194),
('VQ7rfz1DSUY76g14J1wTZc5kfxnZi75bWu34YhUt', NULL, '173.252.82.57', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGpWSFVMd296S1A2T2Z5d1VuQk1kSDJZOHcxcXNpOHk2aE00bmNxZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvMjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726357),
('VusnrU23fmTEABdwKlVliyZC2gvbqIBpNsoLKKNc', NULL, '173.252.95.42', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGdvajU5UndtamFTaU5vcVFOUjZTVmlRT2VqcDlERDVYYmFRWmRzaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vYnJhbmQtY2F0ZWdvcnkvMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726417),
('WaSMYMV0rgg8hAxZIb2vuw8aMGwQRLbNV7QecFuP', NULL, '173.252.95.4', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWRRS2ZMQnlDWlpINUJGdnJJaEROSHROUkpZQmoxWUZJZ3N0bWRmZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726353),
('WX4xoK3ItJVx1FXtdmvYoBYjFJAbzM22U4uXgp2r', NULL, '173.252.69.43', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm5UQzNFUHY1ZHBuVUd3aXN5MHZoWXd0SnVGOFhDdFhoY3l4N2ltcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726375),
('XG3O2WHVLrsuCLrsld3rfKDyMDslPre6rlApRnU3', NULL, '173.252.87.44', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREdzTVdFTWlrSWN6a0FjckRJV3haTjQwWXJzMGJNT3E4N3hKSk9aVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726368),
('xn9YNUybj1YAkR2WMY5xHuiAmunbpAn5KD2vAkrp', NULL, '173.252.95.44', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXNIbEp6cWc3Mm5EdXdON0RlaHJQSHJzZnExWEVmcXFtdWxsaDhoNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1jYXRlZ29yeS80MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789727123),
('xrhPMiKBp9fa30asLBdZuCuR1DywcO3ZBvk0xluP', NULL, '69.63.184.25', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSm5QSjZsU0hIdnBGbFBScUlYOTNHalZjWHdBUWZNdHNxU1N1TnNkOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvMTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726368),
('xxNF6e5yOlhBQSWpPWaDYrB5yeqhlnk3N8XOopew', NULL, '173.252.95.51', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVNJcW1KaDI4Z3dreTFqWjRvbEVYUFdCR2RkOHFDV010Wm5pTkpRRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS8xNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789740858),
('Y3Fke7emfsu31oAJTiwkRfQ2edP4TW2bPgYLKxgm', NULL, '69.63.184.25', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmZ1TDJpTzU3SUphT3plZmJ5aHFRQnFVR01pZkNQYjRmNURqdFVhbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789739988);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Y8cFoQ1wwfnjfyN08QxIZsYZvw8oJ4V9PLP6ZIDv', NULL, '173.252.87.4', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialhjS0RIenZMWXVMWGlZZ2phRVcycjNCcG5Ga3dtM0x2UVZ1ZTZ4YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726429),
('YjHJF1a9ctaGrWLuNga9IH7VZmGlg2JxQiLDFNZO', NULL, '173.252.82.61', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVZ3UHNQMDZteGg0MFpOWllnWUhXYmlSNnNpdXZMRVp2MXV3Rms1WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmdrZm9vZHMuY28uaW4vcHJvZHVjdC1kZXRhaWwvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726412),
('YPkbgn04gjN1ItFjZNBicghkmoeB0zalwarPxpMN', NULL, '173.252.69.13', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWURJODd2MDRYRXF1MTNYNHJDVmhJSjJNWW1pd2JEVlg4R2czQU1VdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9icmFuZC1jYXRlZ29yeS9hYm91dC5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1789726383),
('zs2ddjoIOkP2AJGyqrr06QTveXbzWH0RELMmQ9cf', NULL, '173.252.95.31', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3BYa0RiUzh1WVh6eUJvbk11UFNjQU1mYUt0RlhnandZenpxdnp1ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8zMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789726353),
('zS9RxEZF5VcMJvSO7NP5K7MU1vevx99swVOf0z7E', NULL, '173.252.70.11', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlk2MTFrdldDNUJWNE1hZnVzM3NONmJtOHNxcVVGNWRUWFlxUVNoZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly93d3cuZ2tmb29kcy5jby5pbi9wcm9kdWN0LWNhdGVnb3J5L2hvbWUucGhwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1789726399),
('zzbnNRjelbfC51uBhGokiEOdGmmwQTpmJyxGeNhG', NULL, '139.190.163.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1 MicroMessenger/8.0.45(0x18001B3F) NetType/WIFI Language/zh_CN', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGcxZ1dyRUJBTmFsVXJSdm1LMHRCMFR3aTBRZXJEQjhLTjR3Y3NKaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vZ2tmb29kcy5jby5pbi9wcm9kdWN0LWRldGFpbC8yMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789731155);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '$2y$10$/zHTALfqV3euYKWYz9SaF.82Wjj.FeDz941gvK8tPu1qMTxdCORoG', 1),
(2, 'Suganya', 'sugan', '$2y$10$/zHTALfqV3euYKWYz9SaF.82Wjj.FeDz941gvK8tPu1qMTxdCORoG', 2),
(3, 'GK Foods', 'gkfoods', '$2y$10$/zHTALfqV3euYKWYz9SaF.82Wjj.FeDz941gvK8tPu1qMTxdCORoG', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
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
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
