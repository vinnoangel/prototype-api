-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 10:15 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prototype_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `status`, `name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES
(1, 0, 'Benson Skiz', 'admin@yahoo.com', '2378489990', '$2y$10$aXWb/tx73U0PhRkZ54JOpOFe.c3EJzFyM3aGIMvxBxykkZ9Yntyl.', '2019-02-09 16:34:14', '2019-02-09 16:34:14'),
(2, 0, 'Lara Smith', 'larasmith@gmail.com', '684736364', '$2y$10$XVu1F8KdihaB2JU9/DsWleY0lIKnkLll.S57ttzAa4G1iH6FAhVBC', '2019-02-12 00:44:46', '2019-02-12 00:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Magnam accusantium dolorem aut qui nobis.', 'Enim unde dolores pariatur ipsam.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(2, 'Delectus nobis ea dolore.', 'Perferendis architecto tenetur dicta quas.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(3, 'Ullam voluptas quas doloribus neque.', 'Quis nisi quis quas deserunt voluptatum culpa.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(4, 'Aut aut pariatur distinctio ut.', 'Odio qui a porro labore.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(5, 'Ipsam quo odio facere labore ratione.', 'Unde quia quae quo sunt tempora.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(7, 'Ut itaque et consequatur repudiandae reiciendis.', 'Aut sed ea et facere quasi ut.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(8, 'Quia nostrum vel ea illo velit qui aut.', 'Tenetur rem consequatur nisi sunt et molestiae.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(9, 'Atque ad incidunt totam.', 'Rem porro consectetur impedit et.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(10, 'Nobis sit quisquam sunt temporibus nobis.', 'Commodi sed nisi in.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(11, 'Aliquid nihil ea accusamus vero ex non similique.', 'Esse cum est maiores aut esse.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(12, 'Saepe sit distinctio placeat illum dolorem.', 'Est ipsa suscipit sed voluptatem ullam sint.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(13, 'Quaerat est iure facilis eos voluptate.', 'Maiores repudiandae minus nam rem aliquid.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(14, 'Ut est illum et sint blanditiis inventore rem.', 'Quia recusandae qui magnam nobis omnis.', '2019-02-07 01:37:57', '2019-02-07 01:37:57'),
(15, 'Id rerum quibusdam iusto dolor saepe.', 'Nihil aut sed corporis ipsum.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(16, 'Et molestiae dolorem sed et non at.', 'Quia minima et deserunt inventore dolorum qui.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(17, 'Est laudantium molestiae quibusdam architecto.', 'Inventore ratione odit debitis atque.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(18, 'Quo quaerat quidem illo aliquid.', 'Culpa repellendus voluptates maxime vero.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(19, 'Tempore autem excepturi maxime non tempore.', 'Quis voluptatem dolor minima unde.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(20, 'Soluta soluta et ipsum quaerat.', 'Fugiat aliquam quibusdam dolorem.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(21, 'Vel voluptate perferendis amet ab ut.', 'Laborum pariatur fuga ut laborum et mollitia est.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(22, 'Quasi aut at ut est vero aliquid qui.', 'Eum quia ea dolor deleniti inventore.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(23, 'Perferendis eius quia ut consectetur.', 'Cupiditate dolorem quo rerum et.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(24, 'Iste in similique voluptas ea aut.', 'Voluptatem ut quia dolores velit.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(25, 'Eos animi ullam magnam voluptatum.', 'Ut ut cum consectetur facilis ipsum.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(26, 'Blanditiis magnam ipsam exercitationem unde enim.', 'Eos sint nemo nobis maxime.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(27, 'Qui ullam sapiente et laboriosam praesentium.', 'Magni consequatur voluptatem rerum dolores.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(28, 'Aut cumque totam et dignissimos dolorem.', 'Occaecati voluptatem ipsum optio non quas enim.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(29, 'Cum perferendis occaecati hic facere ut eum.', 'Et ea non possimus incidunt est libero ex maxime.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(30, 'Dolor labore explicabo nihil voluptas sit.', 'Neque ad tenetur eum corporis.', '2019-02-07 01:37:58', '2019-02-07 01:37:58'),
(31, 'test title updated', 'test body update', '2019-02-07 14:41:57', '2019-02-07 14:49:48'),
(32, 'test title', 'test body', '2019-02-07 14:44:39', '2019-02-07 14:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `id` int(10) UNSIGNED NOT NULL,
  `bundle_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bundles`
--

INSERT INTO `bundles` (`id`, `bundle_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 201, 1, '2019-02-09 18:37:56', '2019-02-09 18:37:56'),
(2, 201, 2, '2019-02-09 18:37:56', '2019-02-09 18:37:56'),
(3, 201, 3, '2019-02-09 18:37:56', '2019-02-09 18:37:56'),
(4, 201, 4, '2019-02-09 18:37:56', '2019-02-09 18:37:56'),
(5, 202, 8, '2019-02-09 19:32:27', '2019-02-09 19:32:27'),
(6, 202, 2, '2019-02-09 19:32:27', '2019-02-09 19:32:27'),
(7, 202, 7, '2019-02-09 19:32:27', '2019-02-09 19:32:27'),
(8, 202, 4, '2019-02-09 19:32:27', '2019-02-09 19:32:27'),
(9, 206, 8, '2019-02-10 03:07:04', '2019-02-10 03:07:04'),
(10, 206, 2, '2019-02-10 03:07:04', '2019-02-10 03:07:04'),
(11, 206, 201, '2019-02-10 03:07:04', '2019-02-10 03:07:04'),
(12, 207, 8, '2019-02-10 04:07:10', '2019-02-10 04:07:10'),
(13, 207, 12, '2019-02-10 04:07:10', '2019-02-10 04:07:10'),
(15, 207, 21, '2019-02-10 08:30:04', '2019-02-10 08:30:04'),
(16, 208, 3, '2019-02-11 15:10:05', '2019-02-11 15:10:05'),
(17, 208, 5, '2019-02-11 15:10:05', '2019-02-11 15:10:05'),
(18, 208, 7, '2019-02-11 15:10:05', '2019-02-11 15:10:05'),
(19, 209, 3, '2019-02-11 15:12:12', '2019-02-11 15:12:12'),
(20, 209, 5, '2019-02-11 15:12:12', '2019-02-11 15:12:12'),
(21, 209, 7, '2019-02-11 15:12:12', '2019-02-11 15:12:12'),
(22, 210, 3, '2019-02-11 15:12:58', '2019-02-11 15:12:58'),
(23, 210, 5, '2019-02-11 15:12:59', '2019-02-11 15:12:59'),
(24, 210, 7, '2019-02-11 15:12:59', '2019-02-11 15:12:59'),
(25, 211, 3, '2019-02-11 15:14:50', '2019-02-11 15:14:50'),
(26, 211, 5, '2019-02-11 15:14:50', '2019-02-11 15:14:50'),
(27, 211, 7, '2019-02-11 15:14:51', '2019-02-11 15:14:51'),
(28, 212, 3, '2019-02-11 15:16:51', '2019-02-11 15:16:51'),
(29, 212, 5, '2019-02-11 15:16:51', '2019-02-11 15:16:51'),
(30, 212, 7, '2019-02-11 15:16:51', '2019-02-11 15:16:51'),
(31, 213, 3, '2019-02-11 15:17:50', '2019-02-11 15:17:50'),
(32, 213, 5, '2019-02-11 15:17:50', '2019-02-11 15:17:50'),
(34, 213, 20, '2019-02-11 23:53:16', '2019-02-11 23:53:16'),
(35, 213, 16, '2019-02-12 00:00:12', '2019-02-12 00:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `discount_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `total_amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `status`, `order_id`, `customer_id`, `product_id`, `amount`, `quantity`, `discount_amount`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 15, 244.00, 1, 16.00, 228.00, '2019-02-10 12:51:40', '2019-02-11 02:46:36'),
(2, 0, 1, 1, 1, 225.00, 1, 0.00, 225.00, '2019-02-10 12:52:51', '2019-02-11 02:46:36'),
(3, 0, 1, 1, 6, 245.00, 1, 12.00, 233.00, '2019-02-10 12:52:58', '2019-02-11 02:46:36'),
(4, 0, 1, 1, 4, 200.00, 9, 11.00, 1789.00, '2019-02-10 13:09:07', '2019-02-11 02:46:36'),
(5, 0, 5, 8, 213, 130.00, 1, 14.00, 116.00, '2019-02-12 00:27:12', '2019-02-12 01:01:47'),
(7, 0, 0, 8, 201, 355.00, 2, 1.00, 709.00, '2019-02-12 01:33:01', '2019-02-12 05:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `status`, `fullname`, `gender`, `phone`, `email`, `address`, `password`, `created_at`, `updated_at`) VALUES
(1, 0, 'Vincent Ohiri', 'm', '07032208220', 'ohirivincent@yahoo.com', '33 bolaji street Palmgrove', 'mylove', '2019-02-09 08:12:05', '2019-02-09 08:12:05'),
(6, 0, 'Benson Skiz', 'm', '2378489990', 'bensonSkiz@yahoo.com', '33 Anthony, Lagos', '$2y$10$RMibMVwQZMJntrgSDDNbAutkBd0ZB2mCMRfaEShW6Q39Y1MHl97fe', '2019-02-09 11:48:49', '2019-02-09 11:48:49'),
(7, 0, 'Lewis Sane', 'm', '098736364', 'sane@gmail.com', 'London Streets', '$2y$10$z5fW/4eWfVZihRZuaRLGCe62TqZZyof0rH.WAAlBH/lNYRvpMU7Dm', '2019-02-11 14:21:29', '2019-02-11 14:48:51'),
(8, 0, 'Mary Adams', 'f', '0457363645', 'mary@gmail.com', 'Berlin Germany', '$2y$10$j2YrUCEMXUfgBKZPmcZUwOWNeswbjxGyXMkRXgtsPQGIKkgVbGyuC', '2019-02-12 00:13:53', '2019-02-12 00:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `loginsessions`
--

CREATE TABLE `loginsessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `type_id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `login_date` datetime NOT NULL,
  `logut_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `log_type_id` int(11) NOT NULL,
  `log_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_descriptions` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_02_09_083337_create_customers_table', 2),
(4, '2019_02_09_085922_create_customers_table', 3),
(5, '2019_02_09_090159_create_customers_table', 4),
(6, '2019_02_09_091350_create_administrators_table', 5),
(7, '2019_02_09_125054_create_products_table', 6),
(8, '2019_02_09_125220_create_bundles_table', 6),
(9, '2019_02_09_125249_create_carts_table', 6),
(10, '2019_02_09_125353_create_orders_table', 6),
(11, '2019_02_09_125521_create_orderstates_table', 6),
(12, '2019_02_09_125547_create_logs_table', 6),
(13, '2019_02_09_125625_create_loginsessions_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `voucher_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `tax_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `sub_total` double(8,2) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Card payment',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `reference_no`, `customer_id`, `voucher_code`, `shipping_amount`, `tax_amount`, `discount_amount`, `sub_total`, `total_amount`, `payment_mode`, `created_at`, `updated_at`) VALUES
(1, 1, 'EF4-154-8E0-5', 1, NULL, 0.00, 0.00, 39.00, 2475.00, 2514.00, 'Card payment', '2019-02-11 02:46:36', '2019-02-11 02:46:36'),
(5, 1, '2A0-061-426-1', 8, NULL, 0.00, 0.00, 14.00, 116.00, 130.00, 'Card payment', '2019-02-12 01:01:47', '2019-02-12 01:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `orderstates`
--

CREATE TABLE `orderstates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderstates`
--

INSERT INTO `orderstates` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'pending', '2019-02-10 09:53:24', '2019-02-10 09:53:24'),
(2, 'cancelled', '2019-02-10 09:53:24', '2019-02-10 09:53:24'),
(3, 'completed', '2019-02-10 09:53:24', '2019-02-10 09:53:24');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `is_bundle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'f-m',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `status`, `is_bundle`, `name`, `price`, `description`, `discount`, `colors`, `sizes`, `gender`, `created_at`, `updated_at`) VALUES
(1, 0, 'no', 'Magnate Classy Pack Of 2 Formal Shirts - Blue And Pink', 225.00, 'For formal or casual wear, this long-sleeve, button cuff shirt is a perfectly tailored choice. Wear this with pant trousers, chino trousers, or denim and be sure to look professional, daring ', 0.00, 'Blue, Pink', 'M', 'm', NULL, NULL),
(2, 0, 'no', 'Fashion Men\'s Long Sleeve Check Shirt - Blue, Green, White', 200.00, '\"When it comes to clothing, style is of essence. Dressing is more than the cost and the manufacturer, it is about the quality, fit and style. Men can now look better than they have ever been ', 11.00, 'Blue, Green, White', 'XXXL', 'm', NULL, NULL),
(3, 0, 'no', 'Halo Zeta Check Design Long Sleeve Shirt -White Multi', 130.00, 'Men?s fashion has evolved from the usual shirt and pant trouser to various styles. Men can now look even better than they have been. This leather belt from AM STORE is a must have for every s', 14.00, 'White', 'XL, L, XXL, M', 'm', NULL, NULL),
(4, 0, 'no', 'Fashion Men\'s Long Sleeve Check Shirt - Blue, White', 200.00, '\"When it comes to clothing, style is of essence. Dressing is more than the cost and the manufacturer, it is about the quality, fit and style. Men can now look better than they have ever been ', 11.00, 'Blue, White', 'XXXXL, XXXL', 'm', NULL, NULL),
(5, 0, 'no', 'Fashion Men Casual Shirts Men Oxford Dress Shirt Youth Style-H876', 244.00, '?Size Range: XS, S, M, L, XL, XXL ?Fabric: 100% High-grade Cotton Fabrics ?Season: Spring/Summer/Autumn/Winter ?Occasion: Party, Casual, Holiday, Business, Work, Daily Life, you can wear with', 16.00, '', '43', 'm', NULL, NULL),
(6, 0, 'no', 'Fashion Spring New 2018 Pure Color Men Dress Shirt Long Sleeve Classic Fit Twill Fashion Black Work Wear Brand Business Men Casual Shirt-B1626', 245.00, 'No Description Available', 12.00, 'Black', '41, 44, 39, 42, 43, 40, 38', 'm', NULL, NULL),
(7, 0, 'no', 'Generic Men\'s Splice Shirt Slim Long Sleeve Casual Shirt-Black', 77.00, 'Item Type: ShirtsGender: MenPattern Type: PatchworkSleeve Length(cm): FullShirts Type: Casual ShirtsCollar: Turn-down CollarStyle: casual shirtFabric Type: BroadclothMaterial: CottonClosure T', 10.00, 'Black', 'XL, L, XXL, M', 'm', NULL, NULL),
(8, 0, 'no', 'Fashion Men\'s Printed Polo Shirt Long Sleeve Slim Fit Business Dress Shirt Top-CS4', 265.00, 'No Description Available', 13.00, '', 'M', 'm', NULL, NULL),
(9, 0, 'no', 'Carlos Daniel Men\'s Striped Shirt - Wine', 100.00, 'Buy Carlos Daniel, a brand that will put you in the elite class. Look \r\nabsolutely unique and handsome on this classy and modern Acelloti long \r\nsleeve shirts.\r\nIt can be for that formal meet', 14.00, '', 'XXL', 'm', NULL, NULL),
(10, 0, 'no', 'Fashion Men\'s Casual Slim Fit Long Sleeve Printed Dress Shirt Formal Shirts Tops-navy Blue', 274.00, 'No Description Available', 10.00, 'Blue, Navy', 'L, XXXXL, XXXL, XXL, M, XL, XXXXXL', 'm', NULL, NULL),
(11, 0, 'no', 'Fashion Trendy Turn-down Collar Long Sleeve Floral Print Button Men Shirt - CADETBLUE', 245.00, ' This slim-fit shirt with floral print is suitable for semi-formal occasions. Turn-down collar presents a classic and simple style. Long sleeves with buttoned cuffs. The floral print is full ', 9.00, '', 'L', 'm', NULL, NULL),
(12, 0, 'no', 'Fashion Men\'s Bussiness Lapel Button Down Short Sleeve Top Blouse Casual Solid Shirt-White- THE LAKI', 157.00, 'Specifications: Formal lapel short sleeve button down shirt design. Slim fit design, which can show your good figure. Great for bussiness meeting, party, shopping wear.  Type: Shirt\r\n	\r\n		Gen', 14.00, 'White', 'XL, XXXL, XXL', 'm', NULL, NULL),
(13, 0, 'no', 'Crux Hulio Long Sleeve Shirt - Multicolour', 200.00, 'Crux long sleeve shirt is made from? premium cotton of the best quality. The unique piece can be styled with jeans, chinos or plain pants. PRODUCT DESCRIPTIONS Button Down Collars on both sid', 12.00, '', 'XL, L', 'm', NULL, NULL),
(14, 0, 'no', 'Yingwoo 2017 New Autumn Black And White Spliced Leisure Slim Fit Full Sleeves Shirt Men -white', 250.00, 'Item Type:ShirtsGender:MenSleeve Length(cm):FullPattern Type:PatchworkShirts Type:Casual ShirtsCollar:Turn-down CollarFabric Type:BroadclothMaterial:Cotton,PolyesterClosure Type:Single Breast', 10.00, 'Black, White', 'L, XXL, M, XL, S', 'm', NULL, NULL),
(15, 0, 'no', 'Fashion Men Casual Shirts Men Oxford Dress Shirt Youth Style-H862', 244.00, '?Colorways: Acid Blue, Blue, Gray, Khaki, Navy Blue, White, Wine Red ?Size Range: XS, S, M, L, XL, XXL ?Fabric: 100% High-grade Cotton Fabrics ?Season: Spring/Summer/Autumn/Winter ?Occasion: ', 16.00, '', '41, 39, 43, 42, 40', 'm', NULL, NULL),
(16, 0, 'no', 'Yingwoo Super Big Size Men Printed Fashion Shirts Autumn Men\'s Casual Tops Shirt With Long Sleeve Slim Fit Male Turn-down Collar Cotton Clothing -white', 294.00, 'Item Type:ShirtsGender:MenSleeve Length(cm):FullClosure Type:Open StitchShirts Type:Casual ShirtsStyle:CasualCollar:Turn-down CollarFabric Type:BroadclothMaterial:CottonPattern Type:PrintSlee', 10.00, 'White', 'XL, L, XXL, M', 'm', NULL, NULL),
(17, 0, 'no', 'Fashion Geometric National Print Long Sleeve Shirt - PURPLE', 240.00, '   Casual Shirts  Cotton,Polyester  Full  Turndown Collar  Geometric,Tribal Print  0.282 kg  1 x Shirt   ', 10.00, 'Purple', 'XXXL, 2XL', 'm', NULL, NULL),
(18, 0, 'no', 'Fashion Floral Printed Long Sleeves Shirt - WHITE', 284.00, 'No Description Available', 10.00, 'White', 'XL, L, 2XL, M', 'm', NULL, NULL),
(19, 0, 'no', 'Generic Men Flannel Striped Shirts Cotton Spring Autumn Casual Long Sleeve Shirt Soft Comfort Slim Fit Styles Brand Man Clothes -white', 66.00, 'Item Type:ShirtsGender:MenSleeve Length(cm):FullShirts Type:Casual ShirtsStyle:Slim Fit StylesFabric Type:FlannelCollar:Turn-down CollarMaterial:CottonClosure Type:Single BreastedSleeve Style', 10.00, 'White', 'XL, L, XXL, M', 'm', NULL, NULL),
(20, 0, 'no', 'Fashion Men\'s Long-Sleeve Button Shirts - Deep Blue', 219.00, ' There are 7? buttons on the? shirt placket.shirt material is denim thin fabric; Shirt no matter what occasion can wear it to attend, work and go out can be worn. Can be used with casual pant', 9.00, 'Blue', '40, 42, 38', 'm', NULL, NULL),
(21, 0, 'no', 'COOFANDY Men Casual Cool Long Sleeve Turn-down Collar Jean Shirt Thin Coat-Dark Blue', 200.00, '(Attention: Dear Valued Customer, Please read our size chart carefully and choose the appropriate size based on your usual wear before your purchase, Thank you) Stay stylish all summer with t', 10.00, 'Blue', '', 'm', NULL, NULL),
(22, 0, 'no', 'Fredd Marshall Men Cargo Casual Shirt - White', 273.00, ' There are 7? buttons on the shirt placket.The 2 pockets are in front,a button on a pocket. Shirt no matter what occasion can wear it to attend, work and go out can be worn. Can be used with ', 20.00, 'White', '48, 40, 44, 38', 'm', NULL, NULL),
(23, 0, 'no', 'Fashion Faux Twinset Panel Design Shirt - Cadetblue', 205.00, ' Casual Shirts Cotton,Polyester Full Turndown Collar Solid 0.252 kg 1 x Shirt   ', 20.00, '', '', 'm', NULL, NULL),
(24, 0, 'no', 'Italian Style Classy Bishop Collar Shirt For Men', 210.00, 'Buy Italian style, a brand that will put you in the elite class. Look absolutely unique and handsome on this classy and modern ?long sleeve Italian style shirts. It can be for that formal mee', 16.00, '', 'XL, L, M', 'm', NULL, NULL),
(25, 0, 'no', 'Fashion Men\'s Long-Sleeve Button Shirts - Light Blue', 219.00, ' There are 7? buttons on the? shirt placket.shirt material is denim thin fabric; Shirt no matter what occasion can wear it to attend, work and go out can be worn. Can be used with casual pant', 9.00, 'Blue', '40, 36, 38', 'm', NULL, NULL),
(26, 0, 'no', 'Fashion Set-of-Four Long Sleeve Shirts For Men - Multi', 73.00, ', from the sophisticated cut to the detailed stitching and the cotton rich fabric. Switch up your look from Monday to Thursday with this pack of 4 finely tailoured long sleeve shirts, comfy a', 10.00, '', 'XL, L, M', 'm', NULL, NULL),
(27, 0, 'no', 'Yingwoo New Spring Shirts Men White Fashion Ethnic Pattern Long Sleeve Shirts Men Invisible Closure Brand Clothing Plus Size', 300.00, 'Gender:MenSleeve Length(cm):FullShirts Type:Casual ShirtsStyle:Moto & BikerCollar:Turn-down CollarFabric Type:BroadclothMaterial:Cotton,Polyester FiberClosure Type:Single BreastedPattern Type', 10.00, 'White', 'L, XXXXL, XXXL, XXL, M, XL, XXXXXL', 'm', NULL, NULL),
(28, 0, 'no', 'Fashion 4XL Cotton Flannel Men Shirts 2018 Fashion Spring Long Plaid Shirt Men Long Sleeve Plaid Striped Casual Shirt Male Plaid Shirts-red', 256.00, 'No Description Available', 10.00, 'Red', 'L, XXXXL, XXXL, XXL, M, XL', 'm', NULL, NULL),
(29, 0, 'no', 'Zaful Plaid Long Sleeve Shirt - Green', 261.00, ' -The shirt with color variation. It can be wearable all year round, especially spring fall winter. Wear it solely or layering with casual top inside. -Spread collar. Sigle chest pocket. Adju', 9.00, 'Green', '46, 40', 'm', NULL, NULL),
(30, 0, 'no', 'St Rapheal   Elegant Men\'s Long Sleeve Shirt - Grey', 105.00, 'Men\'s Casual: Whether formally dressed or in casuals,style should never \r\nbe compromised. Jumia has a wide range of gentleman casuals for all \r\noccassions. From Polos to T-Shirts, each piece ', 16.00, 'Grey', 'L', 'm', NULL, NULL),
(31, 0, 'no', 'Fashion Four In One Classic Office Shirts For Men-Black, White, Sky Blue And Pink', 73.00, 'This is a special offer for every gentleman for the day to day office activites and coporate function, Its a fashion bundles that comparies of four different office shirt.\r\nThis Formal Men Sh', 13.00, 'Black, Blue, Pink, White', 'XL, L, M', 'm', NULL, NULL),
(32, 0, 'no', 'Fashion Men Cargo Casual Shirt - White', 246.00, ' There are 7? buttons on the shirt placket.The 2 pockets are in front,a button on a pocket. Shirt no matter what occasion can wear it to attend, work and go out can be worn. Can be used with ', 9.00, 'White', '46, 42, 48', 'm', NULL, NULL),
(33, 0, 'no', 'Bluelans Men\'s Casual Business Buttoned Long Sleeve Grid Slim Fit Stylish Dress Shirt Top-Black', 232.00, 'Specifications: Slim fit design, can be worn to outdoor activities and casual occasions. This shirt features buttoned front, turndown collar and long sleeves. Made of cotton, soft and comfort', 14.00, 'Black, Blue', 'L, XXL, M', 'm', NULL, NULL),
(34, 0, 'no', 'Fashion Men Turn Collar Printed Shirt - White', 223.00, ' Casual Shirts  Cotton Blends  Broadcloth  Short  Turn-down Collar  0.246 kg  1 x Shirt  We can guarantee that the overall style displayed in the photography is accurate, however there may be', 9.00, 'White', '40, 34', 'm', NULL, NULL),
(35, 0, 'no', 'Acelloti  Men\'s Definition Purple Striped Formal Shirt', 100.00, 'Buy Acelloti, a brand that will put you in the elite class. Look \r\nabsolutely unique and handsome on this classy and modern Acelloti long \r\nsleeve shirts.\r\nIt can be for that formal meetings ', 14.00, 'Purple', 'M', 'm', NULL, NULL),
(36, 0, 'no', 'CourageHope Plain Long Sleeve Oxford Shirt - White', 300.00, '\"When it comes to clothing, style is of essence. Dressing is more than the cost and the manufacturer, it is about the quality, fit and style. Men can now look better than they have ever been ', 13.00, 'White', '39', 'm', NULL, NULL),
(37, 0, 'no', 'Chrysolite Designs African Swag Patterned Print TShirt - Black', 80.00, 'Well structured and designed t-shirts always score style points in any wardrobe, setting the tone for a fun outing at the mall with friends or a laid back dress-down day at the office. Be con', 11.00, 'Black', 'XL, S, L, M', 'm', NULL, NULL),
(38, 0, 'no', 'Neworldline High Quality 100% Contton Men Printed Fashion Short Sleeve T-shirt - White?L?', 133.00, 'High Quality 100% Contton Men Printed Fashion Short Sleeve T-shirt                      ', 9.00, 'White', '', 'm', NULL, NULL),
(39, 0, 'no', 'Priddi international Raglan T-shirt - Dark Grey/Black', 100.00, 'Priddi International a fast growing urbane clothier makes the best wardrobe for that awesome transition from corporate wears.With our fun and talking Tees, you do more than just look good, yo', 11.00, 'Black, Grey', 'L, M', 'm', NULL, NULL),
(40, 0, 'no', 'Chrysolite Designs IHustle Print T-Shirt - Black', 80.00, 'Life is all about Hustling & Flexing.. OR What is the need of having all the money when you don\'t Flex.. iHUSTLE Print TSHirt..superb! Have you been searching for a Store with the best creati', 11.00, 'Black', 'XL, S, L, M', 'm', NULL, NULL),
(41, 0, 'no', 'Chrysolite Designs My Africa Print TShirt - NavyBlue', 80.00, 'Wow! I love My Africa! What a beautiful combination of both a Floral design and the African Map. Really makes Africa more beautiful. I really cant help it, this TShirt is so lovely, and can b', 11.00, 'Navy', 'XL, S, L, M', 'm', NULL, NULL),
(42, 0, 'no', 'Fashion Ethnic Geometric Splatter Paint Print Shirt - WHITE', 253.00, '   Casual Shirts  Cotton,Polyester  Full  Turndown Collar  Geometric,Print  0.272 kg  1 x Shirt   ', 12.00, 'White', '2XL, L, XXXL, M, XL', 'm', NULL, NULL),
(43, 0, 'no', 'Chrysolite Designs Dab It Print TShirt - Black', 80.00, 'Have you been searching for a Store with the best creative, inspiration & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for y', 11.00, 'Black', 'XL, S, L, M', 'm', NULL, NULL),
(44, 0, 'no', 'Duke Gorilla Print T.Shirt', 93.00, 'Be confident and engaging in this unisex print tee, casually sophisticated with a dash of simplicity ', 13.00, '', 'XL, L, XXL, M', 'm', NULL, NULL),
(45, 0, 'no', 'Ifeco Abstract Graphic Design White Printed T-shirt', 93.00, 'Graphic round neck? print tee shirts, tailored? with a high grade cotton fabric, and branded with flex? print, suitable for both wet and dry season(s). ', 0.00, 'White', 'L, M', 'm', NULL, NULL),
(46, 0, 'no', 'Priddi international Raglan Pack Of Four - Multicolour', 300.00, 'T-shirts by Priddi International are the perfect casual outfit. Our fun and talking t-shirts makes an instant customers favorite. You do not only look good, you make a statement. ', 13.00, '', 'S, L, M', 'm', NULL, NULL),
(47, 0, 'no', 'Duke LONC Print T-Shirt - Black', 80.00, 'Be confident and engaging in this flex print tee, casually sophisticated with a dash of simplicity.  Shop the widest online range of first-rate clothing and accessories at the best prices. ', 14.00, 'Black', 'L, XXL, M, XL, S', 'm', NULL, NULL),
(48, 0, 'no', 'Chrysolite Designs Captain Pocket Badge Print TShirt - Black', 80.00, 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 11.00, 'Black', 'XL, S, L, M', 'm', NULL, NULL),
(49, 0, 'no', 'Chrysolite Designs Life Is Better With God TShirt - NavyBlue', 80.00, 'Loving God places you above in all things. Telling People about him makes him more proud of you. Life is a lovely place, most especially when you have God by your side. Can\'t help it, i love ', 11.00, 'Navy', 'XL, S, L, M', 'm', NULL, NULL),
(50, 0, 'no', 'Hush clothing Print Africa Aztec Crew Neck Tshirt', 85.00, 'This Tshirt is made from cotton material with a multicolored camo print \r\nto add to its uniqueness. It can be worn casually and occasionally. ', 12.00, '', 'XL, S, L, M', 'm', NULL, NULL),
(51, 0, 'no', 'Chrysolite Designs Be Wild Print TShirt - Black', 80.00, 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 11.00, 'Black', 'XL, S, L, M', 'm', NULL, NULL),
(52, 0, 'no', 'Chrysolite Designs Ivory Print TShirt - Black', 80.00, 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 11.00, 'Black, Ivory', 'XL, S, L, M', 'm', NULL, NULL),
(53, 0, 'no', 'Generic Men Fashion Short Sleeve Round Neck T-Shirt 3D Big Hand Tops-White', 57.00, 'Description: Item type: Men tops Applicable: Men Colour: As shown Size: Please check the size chart. Thickness: General Version type: Loose type Sleeve: Short Collar shape: Round neck Quantit', 11.00, 'White', 'XL', 'm', NULL, NULL),
(54, 0, 'no', 'Neworldline High Quality 100% Contton Men Printed Fashion Short Sleeve T-shirt - White', 105.00, 'High Quality 100% Contton Men Printed Fashion Short Sleeve T-shirt  Description: Package include:1*Men T-shirt   ', 11.00, 'White', 'XL, L, XXL, M', 'm', NULL, NULL),
(55, 0, 'no', 'Duke Men\'s NEB Lite Print T-Shirt - Navy Blue', 80.00, 'Be confident and engaging in this unisex print tee, casually sophisticated with a dash of simplicity. ', 16.00, 'Blue, Navy', 'L, XXL, M, XL, S', 'm', NULL, NULL),
(56, 0, 'no', 'Chrysolite Designs Powered By Prayer TShirt - Black', 80.00, 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 11.00, 'Black', 'XL, L, M', 'm', NULL, NULL),
(57, 0, 'no', 'Hush clothing Sugar Skull Print Crew Neck Tshirt', 85.00, 'This Tshirt is made from cotton material.It can be worn casually and occasionally. ', 14.00, '', 'S, M', 'm', NULL, NULL),
(58, 0, 'no', 'Hush clothing Print Africa Crew Neck Tshirt..', 60.00, 'This Tshirt is made from cotton material. It can be worn casually and occasionally. ', 13.00, '', 'S, L, M', 'm', NULL, NULL),
(59, 0, 'no', 'Hush clothing Black Men\'s Ripped Tee', 85.00, 'This Tshirt is made from cotton material and also ripped, thus serves as its uniqueness. It can be worn casually and occasionally. ', 12.00, 'Black', 'XL, S, L, M', 'm', NULL, NULL),
(60, 0, 'no', 'HollirTiger The Wild V-Neck Print Tshirt - Blue', 145.00, 'Searching for the best outfits, Get the best of HollirTiger from SynGeTters world ', 12.00, 'Blue', 'XXL', 'm', NULL, NULL),
(61, 0, 'no', 'Chrysolite Designs God Over Everything Print T-Shirt - Navy Blue', 80.00, 'Well structured and designed t-shirts always score style points in any wardrobe, setting the tone for a fun outing at the mall with friends or a laid back dress-down day at the office. Be con', 11.00, 'Blue, Navy', 'XL, S, L, M', 'm', NULL, NULL),
(62, 0, 'no', 'Duke Cas Print T-Shirt - Black', 93.00, 'Never get lost in the crowd, dictate your style and express it at your \r\npreferred pace with fashion pieces that let you rock your occasions and \r\nalso stay voguish.Graphic round neck print t', 14.00, 'Black', 'XL, L, M', 'm', NULL, NULL),
(63, 0, 'no', 'Hush clothing Always Hustling Crew Neck Tshirt', 85.00, 'This Tshirt is made from cotton material. It can be worn casually and occasionally. ', 10.00, '', 'S', 'm', NULL, NULL),
(64, 0, 'no', 'Fashion Fearless Men\'s Print T-Shirt And Cap - Black', 133.00, 'This\r\n tee is made from comfortable cotton fabric and exclusively designed for\r\n the stylish man. For a perfect wardrobe staple for your casual wears??It is also cut to fit your figure perfec', 12.00, 'Black', 'XL, L, M', 'm', NULL, NULL),
(65, 0, 'no', 'Chrysolite Designs Old Rugged Cross Print TShirt - White', 80.00, 'Have you been searching for a Store with the best creative, inspiration & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for y', 11.00, 'White', 'XL, L, M', 'm', NULL, NULL),
(66, 0, 'no', 'Duke Duke TIG Print T-Shirt - Black', 80.00, 'Never get lost in the crowd, dictate your style and express it at your preferred pace with fashion pieces that let you rock your occasions and also stay voguish.Graphic round neck print tee t', 14.00, 'Black', 'XL, L, M', 'm', NULL, NULL),
(67, 0, 'no', 'Chrysolite Designs Panther Print TShirt - Black.', 80.00, 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 11.00, 'Black', 'XL, S, L, M', 'm', NULL, NULL),
(68, 0, 'no', 'Hush clothing Navy Blue Star Detailed Ankara Pocket Tee', 85.00, 'This Tshirt is made from cotton material with a touch of Ankara as its pocket thus adding to its uniqueness. It can be worn casually and occasionally. ', 14.00, 'Blue, Navy', 'S', 'm', NULL, NULL),
(69, 0, 'no', 'Hush clothing Duck Hunter Camo Print Crew Neck Tshirt', 100.00, 'This Tshirt is made from cotton material with a multicolored camo print to add to its uniqueness. It can be worn casually and occasionally. ', 17.00, '', 'S, M', 'm', NULL, NULL),
(70, 0, 'no', 'Duke SKELETON OK PRINT T-SHIRT', 80.00, 'Never get lost in the crowd, dictate your style and express it at your preferred pace with fashion pieces that let you rock your occasions and also stay voguish.Graphic round neck print tee t', 14.00, '', 'L, XXL, M, XL, S', 'm', NULL, NULL),
(71, 0, 'no', 'Chrysolite Designs Riding On Grace Print TShirt - Grey.', 80.00, 'Find your inspiration & let it ignite your passion it all things.. Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolit', 11.00, 'Grey', 'XL, L, M', 'm', NULL, NULL),
(72, 0, 'no', 'Chrysolite Designs God Is Not Dead Print TShirt - Black', 80.00, 'Have you been searching for a Store with the best creative, inspiration & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for y', 11.00, 'Black', 'XL, S, L, M', 'm', NULL, NULL),
(73, 0, 'no', 'Chrysolite Designs Unisex Grace Print T-Shirt - Navy Blue', 80.00, 'Well structured and designed t-shirts always score style points in any wardrobe, setting the tone for a fun outing at the mall with friends or a laid back dress-down day at the office. Be con', 11.00, 'Blue, Navy', 'XL, L, M', 'm', NULL, NULL),
(74, 0, 'no', 'Chrysolite Designs Riding On Grace Print TShirt - Navy Blue', 80.00, 'Well structured and designed t-shirts always score style points in any wardrobe, setting the tone for a fun outing at the mall with friends or a laid back dress-down day at the office. Be con', 11.00, 'Blue, Navy', 'XL, S, L, M', 'm', NULL, NULL),
(75, 0, 'no', 'Chrysolite Designs Party Freaks TShirt 5-in-1 Bundle - Multicolour', 80.00, 'All your desired T-Shirts are now gathered in 1 Place. No need to ponder about choosing your best selections from page to page. We have a great idea of what combination you are searching for.', 20.00, '', 'XL, L, M', 'f-m', NULL, NULL),
(76, 0, 'no', 'Hush clothing Unplug Crew Neck Tshirt', 85.00, 'This Tshirt is made from cotton material. It can be worn casually and occasionally. Buy this Tshirt from Jumia today. ', 10.00, '', 'XL, S, L, M', 'm', NULL, NULL),
(77, 0, 'no', 'Bluelans Men\'s Stylish Casual Slim Fit Plaid Contrast Color Long Sleeve Dress Shirt Top-2#black White', 250.00, 'Type 1#floral Type: Shirt Gender: Men\'s Size Type: Regular Material: Cotton Blend Style: Fashion, Casual Sleeve Type: Long Sleeve Garment Care: Hand-wash Collar: Turn Down Collar Seasons: Spr', 14.00, 'Black, Blue, White', 'L, M', 'm', NULL, NULL),
(78, 0, 'no', 'Bluelans Men\'s Stylish Casual Slim Fit Plaid Contrast Color Long Sleeve Dress Shirt Top-6#raglan Navy Blue', 262.00, 'Type 1#floral Type: Shirt Gender: Men\'s Size Type: Regular Material: Cotton Blend Style: Fashion, Casual Sleeve Type: Long Sleeve Garment Care: Hand-wash Collar: Turn Down Collar Seasons: Spr', 14.00, 'Blue, Navy', 'XXL, M', 'm', NULL, NULL),
(79, 0, 'no', 'Generic Men\'s Stylish Casual Slim Fit Plaid Contrast Color Long Sleeve Shirt - Jean Dark Blue', 293.00, 'Type: Shirt Gender: Men\'s Size Type: Regular Material: Cotton, Polyester, Faux Leather Garment Care: Hand-Wash Collar: Turn-down Collar Sleeve Length: Long Sleeve Style: Fashion Season: Sprin', 16.00, 'Blue', 'XL, M', 'm', NULL, NULL),
(80, 0, 'no', 'BioAQUA BioAQUA Effective Face & Skin Care Stuborn Pimples And Skin Treatment Cream', 100.00, 'BIOAQUA Pure Skin Acne Removal Serum?is the BEST solution to your Acne troubles guaranteed. Frequent application is promised to leave your skin free from Acne by eliminating Acne causing oils', 13.00, '', '', 'f', NULL, NULL),
(81, 0, 'no', 'Nivea Extra White Firming Body Lotion', 285.00, 'Do you want a fairer, lighter, richer body skin tone? Then try Nivea Extra White Firming Body Lotion. A Nivea formula with Q10 plus,50x ( 50 times) higher vitamin C to help make your skin fai', 5.00, 'White', '', 'f', NULL, NULL),
(82, 0, 'no', 'HEMANI Organic Papaya Bath Soap', 73.00, 'Papaya has a very powerful exfoliating properties that render it beneficial for removing dead skin cells?It rejuvenates dry and flaky skin.Its an effective acne treatment?It lightens the skin', 0.00, '', '', 'f-m', NULL, NULL),
(83, 0, 'no', 'nature essence Aradab Coconut Oil - 250ml', 55.00, 'Coconut oil is an alternative for anyone on a\r\nvegan diet because it?s completely plant based. It has less of an impact on\r\ncholesterol levels than butter, so it may be a healthier substitute', 15.00, '', '', 'f-m', NULL, NULL),
(84, 0, 'no', 'BioAQUA Acne Scar Remover Pores Acne Cream - Anti Acne & Treatment Cream', 100.00, 'BIOAQUA Pure Skin Acne Removal Serum is the BEST solution to your Acne troubles guanteed. Frequent application is promised to leave your skin free from Acne by eliminating Acne causing oils a', 13.00, '', '', 'f', NULL, NULL),
(85, 0, 'no', 'Aichun Beauty 3days Slimming Weight Loss Message Cream(fat Burning Cream)', 60.00, 'Reduces excess fat in the bodyConsists of natural Chilli and Ginger extracts which helps you slim down with no side effects3 Days Slimming Weight Loss Massage CreamExtended fat decreasing cre', 13.00, '', '', 'f-m', NULL, NULL),
(86, 0, 'no', 'HOT NEW Slimming Cellulite Melts Dissolves Hot Sweat Chilli Diet Cream Gel Miracle', 170.00, 'Professional super HOT Chilli based slimming gel - starts working as soon as it is applied. Impact on cellulite is intense and I have not found an easier way to smooth unsightly cellulite. Th', 13.00, '', '', 'f-m', NULL, NULL),
(87, 0, 'no', 'Louis Will Comedo Suction Microdermabrasion Diamond Machine Blackhead Removal Rechargeable Skin Peeling Machine By Krasr, Comedone Extractor Set White', 63.00, 'Diamond Microdermabrasion provides a non-surgical skin resurfacing procedure by using sterile diamond heads to peel and rub off the dead cells at the top skin layer followed by vacuuming/suct', 11.00, 'Black, White', '', 'f', NULL, NULL),
(88, 0, 'no', 'K.Sang Black Anti-wrinkle Bamboo Charcoal Peel Blackhead Remover Mask For Women & Men', 100.00, 'Quality Black Mask ? The latest trend in skincare. Try the bestselling peel-off mask.Deep Cleansing ? Deeply penetrates the pores to remove acne-causing oil.Eliminating Blackheads, Acne and O', 14.00, 'Black', '', 'f-m', NULL, NULL),
(89, 0, 'no', 'Generic Facial Moisture Anti-wrinkle Whitening Snail Mask Concentrate Moisturizing Skin Pores Mask', 80.00, 'Its snail secretion filtrate ingredients is natural and non-irritant, which is suitable for all skin types.It can deliver water and natural minerals to the tired and sensitive skin so as to s', 17.00, 'White', '', 'f', NULL, NULL),
(90, 0, 'no', 'Cici Glam Turmeric Half-Ball Facial Konjac Sponge', 95.00, 'Cici Glam Turmeric Konjac Facial Sponge, for Skin Restoration Natural, Eco-Friendly, Biodegradable and Chemical Free IMPROVES SKIN TEXTURE: Cici Glam Konjac Facial Sponge gently exfoliates wh', 5.00, '', '', 'f-m', NULL, NULL),
(91, 0, 'no', 'Les Enchantes Stretch Mark Removal Gel', 90.00, 'So many products being sold for stretch marks just moisturise the skin without doing much for the scar. This stretch mark removal cream is packed full of natural extracts that fights off scar', 0.00, '', '', 'f-m', NULL, NULL),
(92, 0, 'no', 'Generic 1pc Pro Makeup Foundation Beauty Pen Sponge Puff', 89.00, ' ', 12.00, '', '', 'f-m', NULL, NULL),
(93, 0, 'no', 'Generic Organic Skin Care Rich 24 Hour Moisturiser 30ml', 61.00, 'Our Rich 24 hour moisturiser is suitable for sensitive and dry skin. The botanical properties in this 100% natural cream help your skin to bloom in a simple routine so that you can use the sa', 0.00, '', '', 'f-m', NULL, NULL),
(94, 0, 'no', 'BioAQUA 24k Gold Facial Mask - Anti-Wrinkle Skin Whitening & Moisturizing Pore Minimizing Treatment - Bio-Collagen Crystal Facial Mask For Anti Aging Skin  (5Pcs)', 150.00, 'The collagen face mask is a perfect and very natural solution to more youthful looking skin. This famous treatment is becoming famous between Hollywood stars and expense health spas. - Reduce', 13.00, 'Gold, White', '', 'f', NULL, NULL),
(95, 0, 'no', 'Bella Cream Must up Powerful Herbal Extracts Breast Enlargement And Firming Cream plus Free LED Watch', 75.00, 'Our unique cream formulation is absorbed very quickly in to the breasts to penetrate deeply allowing maximal results, applied directly to the target tissues. The end result is a visible firmi', 16.00, '', '', 'f', NULL, NULL),
(96, 0, 'no', 'Herbal Authority Tea Tree Oil Soap', 150.00, 'Vegetable-Based Formula Tea Tree is a pure oil, culled from the leaves of a tree (Melaleuca alternifolia) , native to Australia. Traditionally, it has been used as a topical agent for the ski', 15.00, '', '', 'f', NULL, NULL),
(97, 0, 'no', 'Generic Silicone Scar Gel Away Strips Scar Remover Treatment Patch Therapy Managment Reusable Sheet Advanced Scar Removal Gel Help Remove Old Scars , Acne Scar, Trauma, Burn Scar', 180.00, 'Transparent, easy to observe the scar situation Durable and re-usable No irritation, low sensitivity Scars can be divided into several types One is ?in three years?, generally a skin renewal ', 11.00, '', '', 'f', NULL, NULL),
(98, 0, 'no', 'Aichun Beauty Hip  Up Cream-(150ml)', 55.00, 'Hip lift up cream is for all women who dream of having beautiful hip. it helps enhance your buttocks size. Hip lift up? hip massage cream is formulated with natural extract to \r\nmake your hip', 15.00, '', '', 'f', NULL, NULL),
(99, 0, 'no', 'BioAQUA Pure Lavender Essential Oil - Pack Of 2 Bottles', 90.00, 'BioAqua Lavender Oil has a rich alluring aroma. It is known to help reduce anxiety. It is also used to sooth common cuts and bruises. Lavender Oil helps reduce scarring, it is suitable for tr', 0.00, 'Lavender', '', 'f-m', NULL, NULL),
(100, 0, 'no', 'KTC Pure Almond Oil B.P Sweet  200ml Made With 100% Californian Almonds', 100.00, 'KTC Pure Almond Oil is made with 100% Californian Almonds. It is a soft, very light & non-greasy oil that has excellent penetrating & absorbing qualities.? It is traditionally used for skin a', 20.00, '', '', 'f-m', NULL, NULL),
(101, 0, 'no', 'BioAQUA Black Mask Blackhead Mask Deep Cleansing Black Head Mask Acne Treatment Anti-Aging Face Mask', 73.00, 'Top selling? BIOAQUA Black Mask Blackhead Mask Deep Cleansing Black Head Mask Acne Treatment Anti-Aging Face MaskDeep cleansing Black Mask, Black Head Removal Face Mask from BioAqua is a powe', 0.00, 'Black', '', 'f', NULL, NULL),
(102, 0, 'no', 'Shills Purifying Black Mask Deep Cleansing- Black Head Removal', 99.00, 'How to use the Black Mask? 1. Cleanse and dry the area of treatment. 2. Apply the mask on the desired area (Avoid eyebrow, eyes and lips). 3. Peel the mask off after 20 30 minutes. 4. To achi', 10.00, 'Black', '', 'f', NULL, NULL),
(103, 0, 'no', 'Generic 100% Pure Coconut Oil (250ml)', 80.00, 'The world is drifting towards healthier and safer products to apply on the skin and hair. Coconut is one of the healthiest fruits and every part of it is useful, most especially coconut oil. ', 0.00, '', '', 'f-m', NULL, NULL),
(104, 0, 'no', 'BioAQUA Pure Lavender Oil', 99.00, 'BioAqua Lavender Oil has a rich alluring aroma. It is known to help reduce anxiety. It is also used to sooth common cuts and bruises. Lavender Oil helps reduce scarring, it is suitable for tr', 11.00, 'Lavender', '', 'f-m', NULL, NULL),
(105, 0, 'no', 'Longyue 6 In 1 Electric Facial Cleansing Massager + Free Battery', 70.00, '6 in 1 facial cleanser can perfectly massage your facial skin, clean the facial pores without hurting your skin and helps improve skin texture for a younger looking skin. Designed to cleanse ', 0.00, '', '', 'f', NULL, NULL),
(106, 0, 'no', 'BioAQUA Bioaqua- Acne, Pimples & Spot Treatment Cream- 30ml', 60.00, 'Ingredient: Water, glycerol, aloe extract, hydrogenated starch hydrolyzate, salicylic acid, beta-glucan, dipotassium glycyrrhizinate, propylene glycol, EDTA disodium, flavor, PEG-40 hydrogena', 12.00, '', '', 'f', NULL, NULL),
(107, 0, 'no', 'Aichun Beauty Hip Up Cream-Coffee', 63.00, 'Aichun?Hip Up Cream?is an effective cream that contains natural herbal \r\nextracts ?that help your butt looks beautiful, tight, plump, smooth, \r\nfull, balanced hormones, reducing black lines a', 17.00, '', '', 'f', NULL, NULL),
(108, 0, 'no', 'Shills Black Mask Face Nose Blackhead Acne Remover Peel Off Facial Mask', 73.00, 'Deep cleansing Black Mask, Black Head Removal Face Mask.. Powerful anti oxidants that shrink the appearance of pores, firm the skin and reduce inflammation, once dried the mask strips away de', 10.00, 'Black', '', 'f', NULL, NULL),
(109, 0, 'no', 'Kojie San Skin Lightening Soap (3 Pack), 3x100g', 145.00, 'The original kojic acid lightening soap, Kojie San\'s formulation blends effective whitening ingredients with nourishing coconut oil and a fresh orange fragrance. Kojic acid was discovered whi', 15.00, '', '', 'f', NULL, NULL),
(110, 0, 'no', 'ZGTS Derma Roller 0.5mm For Acne Marks And Box Scars', 75.00, 'Derma Rollers are made of tiny needles, usually as tiny as the pores on the the skin. They renew the skin cells and enable collagen production and skin cell regeneration. Method:Roll all over', 0.00, '', '', 'f-m', NULL, NULL),
(111, 0, 'no', 'Pasjel Pasjel Stretch Mark And Scar Remover Cream', 59.00, 'Ingredients: pure natural plant formula, Centella asiatica ( repair skin , melanin ) , vitamin E ( for the skin to inject more nutrition ) , small molecules beans collagen ( collagen suppleme', 14.00, '', '', 'f', NULL, NULL),
(112, 0, 'no', 'Ceno Cold Pressed Organic Extra Virgin Coconut Oil- 250ml', 85.00, 'CENO extreme cold pressed Coconut Oil is a \r\nPremium quality for high medicinal and health purposes. Every coconut \r\nthat is used in the production of Ceno Coconut Oil is hand-picked and \r\nco', 15.00, '', '', 'f-m', NULL, NULL),
(113, 0, 'no', 'Cici Glam Red Clay Half-Ball Facial Konjac Sponge', 90.00, 'Cici Glam Red Clay Konjac Facial Sponge, for Eczema, Rosacea and psoriasis Natural, Eco-Friendly, Biodegradable and Chemical Free IMPROVES SKIN TEXTURE: Cici Glam Konjac Facial Sponge gently ', 10.00, 'Red', '', 'f-m', NULL, NULL),
(114, 0, 'no', 'BioAQUA Aloe Vera Face Moisturizer Acne Scar And Anti Wrinkle Skin Whitening Cream', 88.00, 'BIOAQUA Brand Aloe Vera Gel Skin Care Face Cream Hyaluronic Acid Anti Winkle Whitening Moisturizing Acne Treatment Cream 40ml Product efficacy: Pulling compact, sun repair, moisturizing, skin', 0.00, 'White', '', 'f', NULL, NULL),
(115, 0, 'no', 'Iron Rose Lemon Oil', 85.00, 'Lemon oil is obtained from lemon peels. Iron rose lemon oil has already been, diluted with a carrier oil, which made it ready to use on the skin. Lemon oil is a good remedy for restoring the ', 0.00, '', '', 'f', NULL, NULL),
(116, 0, 'no', 'BIOAOUA Blackhead Remove Facial Masks Deep Cleansing Peel Off Black Nud Facail Face Black Mask', 100.00, 'This product gradually removes stubborn blackheads & whiteheads.?Absorbs excess oil.?Rich in antiaging vitamin C and antioxidants.?Visibly minimizes large pores & unclogs pores.?Minimises app', 11.00, 'Black', '', 'f-m', NULL, NULL),
(117, 0, 'no', 'Natural Serum & Cosmetics Peppermint Oil', 240.00, 'Natural serum and cosmetics peppermint Essential oil is used for body massage at night hours. It gets rid of dandruff and lice with constant application ', 10.00, '', '', 'f-m', NULL, NULL),
(118, 0, 'no', 'BIOAOUA Blackhead Remover Black Mask - Deep Clean Mask Whitening Complex', 95.00, 'Deep cleansing Black Mask, Black Head Removal Face Mask.. Powerful\r\n anti oxidants that shrink the appearance of pores, firm the skin and \r\nreduce inflammation, once dried the mask strips awa', 0.00, 'Black, White', '', 'f', NULL, NULL),
(119, 0, 'no', 'Boot Traditional Glycerin And Rose Water 200ml', 75.00, 'Boots Traditional Glycerin and Rosewater is a cooling, refreshing beautifier that softens tones and moisturisers the skin. It can be used as an all over body moisturizer. ', 11.00, '', '', 'f', NULL, NULL),
(120, 0, 'no', 'FreshTone 2Contact Lenses  Halloween Lens- BLACK 1 Pack', 125.00, 'They have variety of lovely colors that suits all skin tone. They are light, soft and comfortable to wear that it makes the eye look stunning ', 0.00, 'Black', '', 'f-m', NULL, NULL),
(121, 0, 'no', 'Generic Jetting Buy Contact Lens Case Travel Kit  Pocket Size Black', 82.00, ' Features: with great quality; Convenient to carry and put aside the contact lens; Elegent design light up your daily life, bring you a sunny day. Condition: Size(Approx): 8.5 * 7 * 2.5 cm(De', 10.00, 'Black', '', 'f-m', NULL, NULL),
(122, 0, 'no', 'FreshLook Colourblend Contact Lens With 120ml Solution -Hazel', 125.00, 'Fresh Look Color Blends take the beauty of your own eyes and subtly change their color. These contact lenses use a special three-in-one technology to blend three different colors into one, wh', 15.00, '', '', 'f-m', NULL, NULL),
(123, 0, 'no', 'FreshLook 2Contact Lens Solutions - 120ML', 58.00, 'You can actually?wear that dream lenses?you have always wanted with our all in one contact lense solution. ', 0.00, '', '', 'f-m', NULL, NULL),
(124, 0, 'no', 'FreshTone 1- Tone Super Naturals + Lens Case- Bronze', 175.00, 'They have variety of lovely colors that suits all skin tones. They are light, soft and comfortable to wear that it makes the eye look stunning ', 0.00, '', '', 'f-m', NULL, NULL),
(125, 0, 'no', 'FreshLook Colorblends Contact Lens- Honey', 100.00, 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 11.00, '', '', 'f-m', NULL, NULL),
(126, 0, 'no', 'FreshLook 2Colorblends Contact Lens -Pure Hazel', 60.00, 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 0.00, '', '', 'f-m', NULL, NULL),
(127, 0, 'no', 'FreshLook 2Contact Lens Green + Solution 120ML', 110.00, 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends .', 0.00, 'Green', '', 'f-m', NULL, NULL),
(128, 0, 'no', 'Refresh Multi-Purpose Contact Lens Solution', 150.00, 'Multi-purpose solution for moisturizing, cleaning, rinsing and sterilizing all kinds of contact lenses.?For best results, soak contact lens overnight in Refresh solution and they are ready to', 6.00, '', '120ml', 'f-m', NULL, NULL),
(129, 0, 'no', 'FreshLook Colorblends Contact Lens With Solution- Sterling Grey', 99.00, 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 11.00, 'Grey', '', 'f-m', NULL, NULL),
(130, 0, 'no', 'FreshTone 2- Tone Super Naturals + Lens Case- Sky Gray', 125.00, 'They have variety of lovely colors that suits all skin tones. They are light, soft and comfortable to wear that it makes the eye look stunning ', 17.00, 'Gray', '', 'f-m', NULL, NULL),
(131, 0, 'no', 'FreshTone 1- Tone Super Naturals + Lens Case- Bronze 1 Pack', 125.00, 'They have variety of lovely colors that suits all skin tones. They are light, soft and comfortable to wear that it makes the eye look stunning ', 0.00, '', '', 'f-m', NULL, NULL),
(132, 0, 'no', 'FreshLook Grey Contact Lenses - With 120ml Solution, Picker And A Case', 150.00, 'Fresh looks color blend contacts lenses for natural beautiful; dark or light eyes offer you, a wide range of desired looks - from subtle eye color enhancement to bold, noticeable change, it c', 0.00, 'Grey', '', 'f-m', NULL, NULL),
(133, 0, 'no', 'Liplasting New Fruit Flavored Silky Lubricants Vaginal Intercourse Male Female Oral Lubricant Gay Anal Lubricant Massage Body Oil', 121.00, 'fresh and fragrant odorless, tasteless, non-greasy Ultra-silky and warming sensations are wonderful for sex life . Help you reach sex climax easily Products\r\n Following will be Sent with Pipe', 0.00, '', '', 'f-m', NULL, NULL),
(134, 0, 'no', 'FreshLook Sleek Colourblends Beautiful Contact Lenses - Multi Colour', 90.00, 'No Description Available', 0.00, '', 'TURQUOISE, AMETHYST, PURE, HAZEL, BRILLIANT, BLUE, GREY, STERLING, GREY, GREEN, TRUE, SAPPIRE, BROWN, GEMSTONE, GREEN, HONEY', 'f-m', NULL, NULL),
(135, 0, 'no', 'FreshLook Colorblends Contact Lens- Sterling Grey', 98.00, 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 18.00, 'Grey', '', 'f-m', NULL, NULL),
(136, 0, 'no', 'FreshLook Color Blends Eye Contact Lens Kit (Sterling Gray)', 273.00, 'Fresh look colorblend made with hema material which is the best in the industry, comes with a charming look to your eyes, giving you the Fresh and sexy look you deserve. ', 15.00, 'Gray', '', 'f-m', NULL, NULL),
(137, 0, 'no', 'FreshLook Colorblends Contact Lens And Solution- Sterling Grey', 100.00, 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 14.00, 'Grey', '', 'f-m', NULL, NULL),
(138, 0, 'no', 'FreshLook Colorblend Contact Lens + 120ml Solution - Honey', 115.00, 'Fresh Look Color Blends take the beauty of your own eyes and subtly change their color. These contact lenses use a special three-in-one technology to blend three different colors into one, wh', 13.00, '', '', 'f-m', NULL, NULL),
(139, 0, 'no', 'Beauty Tanson  Turqoise Green Eye Contacts Lenses Women Soft Coloured Contact Lens', 52.00, 'No Description Available', 17.00, 'Green, Tan', '', 'f', NULL, NULL),
(140, 0, 'no', 'Liplasting 5 Pcs Manicure Nail Art Tips Form Guide Sticker DIY Stencil U Type Nail Sticker', 56.00, 'No Description Available', 0.00, '', '', 'f-m', NULL, NULL),
(141, 0, 'no', 'Generic Set Auger Pen Double Nail Drill Pen Nail Polish Art Dotting Marbleizing Pen Manicure Tools 5pcs / Set', 62.00, 'Set Auger Pen Double Nail Drill Pen Nail Polish Art Dotting Marbleizing Pen Manicure Tools  - Have 5 nail art dotting marbleizing pen with 2 different ends for different marbleizing desires. ', 10.00, '', '', 'f-m', NULL, NULL),
(142, 0, 'no', 'Neworldline Nail Art Acrylic Gel Picking Tool Rhinestones Gem Decor Eyelash Tweezers-Silver', 90.00, 'Nail Art Acrylic Gel Picking Tool Rhinestones \r\nGem Decor Eyelash Tweezers Features: Package Included: ', 13.00, 'Silver', '', 'f-m', NULL, NULL),
(143, 0, 'no', 'Qibest DIY Red Flowers Design Nail Tip Art Water Transfers Decal Sticker', 70.00, 'Feature: ', 20.00, 'Red', '', 'f-m', NULL, NULL),
(144, 0, 'no', 'Qibest 3D Nail Art Stickers Decals Decoration Snowflake Star Design SN-111', 70.00, '  ', 20.00, 'Snow', '', 'f-m', NULL, NULL),
(145, 0, 'no', 'Generic 10pcs Durable Sponge Nail File Polish Art Manicure Equipment Tools', 94.00, '10pcs Durable Sponge Nail File Polish Art Manicure Equipment Tools ', 12.00, '', '', 'f-m', NULL, NULL),
(146, 0, 'no', 'Generic 24W LED UV Nail Gel Curing Lamp Light Nail Gel Polish Dryer Nail Art Machine', 170.00, '24W LED UV Nail Gel Curing Lamp Light Nail Gel Polish Dryer Nail Art Machine Description Package included ', 12.00, '', '', 'f-m', NULL, NULL),
(147, 0, 'no', 'Generic Equivalentt Chess Board Magnetic Nail Art Tip Crystal Stand Set Salon Display Holder', 73.00, 'Chess Board Magnetic Nail Art Tip Crystal Stand Set Salon Display Holder ', 13.00, '', '', 'f-m', NULL, NULL),
(148, 0, 'no', 'Generic 6ml Temperature Change Nail Polish Color Temperature Control Nail Oil', 57.00, '6ML Temperature Change Nail Polish Color Temperature Control Health Nontoxic Nail Oil Features:  Package includes : ', 12.00, '', '', 'f-m', NULL, NULL),
(149, 0, 'no', 'Generic Acrylic Powder Glitter Nail Brush False Finger Pump Nail Art Tools Kit Set', 279.00, 'Acrylic Powder Glitter Nail Brush False Finger Pump Nail Art Tools Kit Set Features: Package Content: ', 12.00, '', '', 'f-m', NULL, NULL),
(150, 0, 'no', 'Generic 4PCS Clear UV Gel Builder Nail Art Polish Glue Manicure Tips Transparent', 89.00, '4PCS Clear UV Gel Builder Nail Art Polish Glue Manicure Tips Transparent Feature:  100% and high quality.  Quantity: 4 Size: 4.9cm x 3.3cm (approx) Color: 1PC Pink, 1PC White, 2PC Clear Suita', 12.00, '', '', 'f-m', NULL, NULL),
(151, 0, 'no', 'Generic 48 Sheets New Flower Lace Nail Art Water Transfer Stickers Nail Tips Decoration', 74.00, '48 sheets New Flower Lace Nail Art Water Transfer Stickers Nail Tips Decoration ', 12.00, '', '', 'f-m', NULL, NULL),
(152, 0, 'no', 'Fashion Tanson New Fashion Beauty And Charming Women Transparent Magic Mirror Powder Nail Art Decoration Glitter Chrome Chameleon', 82.00, 'No Description Available', 17.00, 'Tan', '', 'f', NULL, NULL),
(153, 0, 'no', 'Generic Stylish Ladies Women 3D Art Stickers Nail Stick Manicure Water Decal', 60.00, 'Stylish Ladies Women 3D Art Stickers Nail Stick Manicure Water Decal : - Unique design, beautiful and fashion - One sheet of adhesive nail art stickers to fit all fingernails - Very easy to u', 0.00, '', '', 'f', NULL, NULL),
(154, 0, 'no', 'Generic Diamonds Dazzling Tips Nail Sticker Sequins Colorful Nail Art Decoration', 92.00, 'Diamonds Dazzling Tips Nail Sticker Sequins Colorful Nail Art Decoration ', 12.00, '', '', 'f-m', NULL, NULL),
(155, 0, 'no', 'JNJ GLAM JNJ GLAM Soak Off UV/LED Builder Gel', 165.00, 'JNJ Glam builder gel makes your nails look perfect for every day wear.? Our builder gel helps to strengthen your nails and provides a beautiful natural look while promoting longer nails. Can ', 0.00, '', '', 'f-m', NULL, NULL),
(156, 0, 'no', 'Generic MAJOR DIJIT New Gel Nail Polish Soak UV Gel Polish Top Low Coat Gel Nail Lacquer', 58.00, 'MAJOR DIJIT New Gel Nail Polish Soak UV Gel Polish Top Low Coat Gel Nail Lacquer Specification: Package content: ', 12.00, '', '', 'f-m', NULL, NULL),
(157, 0, 'no', 'Generic Water Transfer Pink Red Rose Flowers Design Nail Sticker', 51.00, '- Paint your nails whatever base color you like. Wait for your nails to dry a bit. - Cut out your nail decals with scissors so all you have is the design. - Peel off the clear plastic cover f', 10.00, 'Pink, Red', '', 'f-m', NULL, NULL),
(158, 0, 'no', 'Liplasting Simulation Flower Nail Art Sticker Watermark Decal Manicure Accessories', 85.00, 'Its special design will make you look unique. It is a good gift for your lover,family,friend and coworkers. Its great for manicures simple and easy to use. The guides are flexible and perfect', 0.00, '', '', 'f-m', NULL, NULL),
(159, 0, 'no', 'Generic 4pcs Gradient Color Starry Sky Nail Art Sponge (White)', 87.00, 'Material: Sponge Size( L x W x H ): 4.9 x 1.9 x 1.9 cm To coating first impression First coating is dry completely, nail on coated sponge gradient tool with the selected color (from deep to s', 13.00, 'White', '', 'f-m', NULL, NULL),
(160, 0, 'no', 'Qibest Cute Starfish Twisted Above Knuckle Band Midi Finger Nail Ring  D', 60.00, 'Cute Starfish Twisted Above Knuckle Band Midi \r\nFinger Nail Ring D  Description: Package \r\nincluding: ', 20.00, '', '', 'f-m', NULL, NULL),
(161, 0, 'no', 'Sunshine Nail Separators Stretchers Loop Bunion Splint Straightener Toe Straightener-1', 64.00, 'Specifications: Material: Silica Gel Color: White Quantity: 2 Pcs/ 1 Pair Size: 7.3 x 2.5 cm/ 2.9 x 1 inch Function: Stretches and Aligns Bent Toes Soft and comfortable, soothingly separates ', 10.00, '', '', 'f-m', NULL, NULL),
(162, 0, 'no', 'Bluelans Clear Nail Art Jelly Stamper Stamp Scraper Set Polish Stamping Manicure Tools Purple', 80.00, 'Specifications: New arrival nail art stamper scraper set. Transparent, good elasticity and durable. Create your own beautiful style nail design. Suitable for professional and home use. Type: ', 0.00, 'Blue, Purple', '', 'f-m', NULL, NULL),
(163, 0, 'no', 'Generic Poly Gel Lasting False Nails Liquid Double-end Nail Brush Pusher Dead Skin Set', 196.00, 'Poly Gel Lasting False Nails Liquid Double-end Nail Brush Pusher Dead Skin Set Feature:  Name: Poly gel set Volume: 30ml Colors: 6 color to chose Weight: 190g Lamp:UV&LED lamp Poly Gel is mor', 12.00, '', '', 'f-m', NULL, NULL),
(164, 0, 'no', 'Liplasting Metal Head Nail Art Dotting Pen Drill Point Flower Line Rhinestones Tip Painting Drawing UV Gel Polish 3D DIY Tools', 104.00, 'Exquisite design, metallic body, studded with rhinestone, comfortable and easy to handle. Inner with 5 different size dotting head, removable changeable and portable. The body can be used as ', 0.00, '', '', 'f-m', NULL, NULL),
(165, 0, 'no', 'Onyyx By Gaga Onyyx By Gaga 15ml Gel Polish - Yellow - Mustard', 125.00, 'Mustardis a deep yellow colour that is super gorgeous and adventurous.?Onyyx By Gaga?soak off gel polish applies like polish and cures in a LED lamp in?30 seconds?or?2 minutes in a regular UV', 0.00, 'Yellow', '', 'f-m', NULL, NULL),
(166, 0, 'no', 'Generic Bobuniu  LED UV Nail Gel Curing Lamp Light Nail Gel Polish Dryer Nail Art Machine', 50.00, 'LED UV Nail Gel Curing Lamp Light Nail Gel Polish Dryer Nail Art Machine Description More features: Package included ', 13.00, '', '', 'f-m', NULL, NULL);
INSERT INTO `products` (`id`, `status`, `is_bundle`, `name`, `price`, `description`, `discount`, `colors`, `sizes`, `gender`, `created_at`, `updated_at`) VALUES
(167, 0, 'no', 'Bluelans Silicone Nail Art Cushion Pillow Hand Holder Nail Arm Rest Manicure Tool Purple', 84.00, 'Specifications: Fashion style, easy to use and comfortable. Soft material available, professional nail art product. Place your hand on the pillow directly. This fashion cushion is very profes', 0.00, 'Blue, Purple', '', 'f-m', NULL, NULL),
(168, 0, 'no', 'Generic Poly Gel Lasting Finger Nail Crystal Jelly Camouflage UV Lamp Extension 30ML', 89.00, 'Poly Gel Lasting Finger Nail Crystal Jelly Camouflage UV Lamp Extension 30ML Description: How to Use: Package Content: ', 12.00, '', '', 'f-m', NULL, NULL),
(169, 0, 'no', 'Onyyx By Gaga Onyyx By Gaga 15ml Gel Polish - Fuchsia Pink - Fush Pink', 125.00, 'Fush Pink is a fuchsia pink gel polish.?Ready to grace your nails is this pretty pink polish that\'s bright enough to make anyone\'s day.?Onyyx By Gaga?soak off gel polish applies like polish a', 0.00, 'Fuchsia, Pink', '', 'f-m', NULL, NULL),
(170, 0, 'no', 'Generic Equivalentt Thickness Builder Gel Nails Pink Finger Nail Gel Cover Nail Extender Camoufla', 51.00, 'feature: ', 13.00, 'Pink', '', 'f-m', NULL, NULL),
(171, 0, 'no', 'Bluelans Blue Lans Nail Art Stickers With Case', 81.00, 'These  nail art DIY stickers are made of transparent rhinestones, and in various shapes. They are suitable to use on top of nail polish, UV builder gel,acrylic. And you can also use them to d', 0.00, 'Blue', '', 'f-m', NULL, NULL),
(172, 0, 'no', 'Fashion Fancyqube LULAA Matte Scrub Polish Dual-Use Super Matte Transfiguration Gel Nail Polish Top Coat Frosted Surface Oil', 80.00, 'No Description Available', 17.00, '', '', 'f-m', NULL, NULL),
(173, 0, 'no', 'Qibest 6PC Series Of Fluorescent Neon Luminous Gel Nail Decoration For Glow In Dark', 75.00, '  ', 20.00, '', '', 'f-m', NULL, NULL),
(174, 0, 'no', 'Generic Professional Soft Sponge Foam Finger Toe Separator For Nail Beauty Tools Salon Pedicure Manicure Tool One Pair Color Random', 93.00, 'Professional Soft Sponge Foam Finger Toe Separator for Nail Beauty Tools Salon Pedicure Manicure Tool One Pair Color Random Daily nail care, grooming, vibration, scratch wet nail polish, diff', 13.00, '', '', 'f-m', NULL, NULL),
(175, 0, 'no', 'Generic 1PC Cuticle Pusher UV Gel Polish Soak Off Remover Nail Art Manicure Trimmer Tool', 99.00, '1PC Cuticle Pusher UV Gel Polish Soak Off Remover Nail Art Manicure Trimmer Tool Description: Package include: 1 x Nail Pusher ', 12.00, '', '', 'f-m', NULL, NULL),
(176, 0, 'no', 'Generic Fashion Black White Elegant Wrapping Medium Long Manicure Patch Nail Sticker (Black)', 57.00, 'Beautiful nail in an instant Clean and buff nail lightly Apply nail glue for easiest application and longest wear Press and hold Finger  Plastic  Full Nail Tips Array 0.030 kg  11.00 x 6.50 x', 11.00, 'Black, White', '', 'f-m', NULL, NULL),
(177, 0, 'no', 'Beauty Dry Heat Sterilizer Cabinet Dental Autoclave Elegant Dental Medical Vet Tattoo', 126.00, 'Note: Please allow slight 1-3cm difference due to manual measurement and a little color variation for different display setting. Thank you for your understanding!           ', 11.00, '', '', 'f-m', NULL, NULL),
(178, 0, 'no', 'Forever Living Royal Jelly', 300.00, 'Royal Jelly is a wonder of Research, it contains 18 amino  acids [8 EAA & 10 NEAA] Minerals, Vitamin A, B complex esp. B5 which is vital for synthesis and metabolism of protein, C,D and E, Fa', 10.00, '', '', 'f-m', NULL, NULL),
(179, 0, 'no', 'Supreme Gluta White Skin Whitening Pills - 1500000 Mg', 165.00, 'GLUTATHIONE is growing in popularity for its health and skin benefits, especially skin whitening, which many people are taking advantage of, and getting amazing results. One of the Reasons be', 13.00, 'White', '', 'f-m', NULL, NULL),
(180, 0, 'no', 'HEMANI Herbal Slim & Smart Tea With Green Apple', 150.00, 'Hemani Slim tea with green apple is the safest 100% natural tea which can give you your desired waistline in no time! And you don\'t have to break a bank! It\'s the one most natural and safest ', 0.00, 'Green', '', 'f-m', NULL, NULL),
(181, 0, 'no', 'Forever Living Forever Kids Chewable Multivitamins', 200.00, 'Give your kids the nutrients they need each day with Forever Kids Chewable Multivitamins. These fun and delicious, grape flavored multivitamins provide both adults and growing kids ages two a', 0.00, '', '', 'f-m', NULL, NULL),
(182, 0, 'no', 'Forever Living Forever Living - Forever Ginkgo Plus', 280.00, 'This unique synergistic blend of four ancient medicinal plants namely ; GINKGO BILOBA LEAF EXTRACTS, GANODERMA FROM REISHI MUSHROOM, SCHISANDRA AND CHINESE FORTI. These are powerful ancient C', 0.00, '', '', 'f-m', NULL, NULL),
(183, 0, 'no', 'Bazouka Penis Enlargement (Growth,Performance & Fertility) Dietary Supplement Capsules', 73.00, 'Bazouka dietary supplement pills?is a tried and tested formula, used by over 500,000 men around the world, that has been helping achieve size gains for the last 12 years. Being made from a sp', 9.00, '', '', 'f-m', NULL, NULL),
(184, 0, 'no', 'MycoBotanicals Myconutri Chaga Science Based Mushroom  Capsules', 85.00, '00 Home > Shop by Brand > Myconutri Myconutri Chaga 60 Capsules ?17.48 Currently Out Of Stock Notify me when this item is back in stock Product currently out of stock. Quantity: More Details ', 0.00, '', '', 'f-m', NULL, NULL),
(185, 0, 'no', 'Forever Living Forever Living - Forever Nature - Min', 210.00, 'FOREVER NATURE-MIN is an advanced multi-mineral formula; it consists of marine-life deposits. It supplies all the mineral elements the body needs to meet daily demands.\r\nIt form and regulates', 0.00, '', '', 'f-m', NULL, NULL),
(186, 0, 'no', 'White House Apple Cider Vinegar Organic Raw Unfiltered With \'Mother\' 1.89L', 75.00, 'This raw unfiltered Apple cider vinegar is also rich in enzymes and potassium, helps control weight and promote digestion & Ph Balance, helps remove body sludge toxins and helps maintain heal', 13.00, 'White', '', 'f-m', NULL, NULL),
(187, 0, 'no', 'Hairfinity Healthy Hair Vitamins - 1 Month Supply', 85.00, ' Hairfinity Hair Vitamins is a natural vitamin complex formulated with essential vitamins and nutrients for healthy hair.   Formulated with hair specific nutrients that nourish the hair from ', 15.00, '', '', 'f-m', NULL, NULL),
(188, 0, 'no', 'MycoBotanicals Myconutri Reishi Science Based Mushroom Nutrition', 92.00, 'Reishi mushrooms are popular in Asia, in cuisine and traditional Chinese medicine. These capsules provide pure Reishi mushroom in a vegetarian capsule without additives. Reishi (Ganoderma luc', 0.00, '', '', 'f-m', NULL, NULL),
(189, 0, 'no', 'Forever Living Forever Living A-Beta-Care', 300.00, 'Forever A-Beta-Care is an essential formula combining vitamins A (from beta-carotene) and E, plus the antioxidant mineral Selenium. Antioxidants are vital in the fight against free radicals (', 0.00, '', '', 'f-m', NULL, NULL),
(190, 0, 'no', 'White House Apple Cider Vinegar Organic Raw Unfiltered With \'Mother\' 473ml', 183.00, 'This raw unfiltered Apple cider vinegar is also rich in enzymes and potassium, helps control weight and promote digestion & Ph Balance, helps remove body sludge toxins and helps maintain heal', 19.00, 'White', '', 'f-m', NULL, NULL),
(191, 0, 'no', 'SlimFast SlimFast Summer Strawberry Flavour Shake', 76.00, 'Need to drop a few pounds fast? No worries. Whatever the reason, slimfast is here to help you get what you really want. By swapping two meals per day for delicious slimfast protein meal bars ', 5.00, '', '', 'f-m', NULL, NULL),
(192, 0, 'no', 'Longrich Green  Tea', 114.00, 'This tea?helps to remove bilirubin and check its production; it?s good for the\r\n     liver, stomach, a good detoxifier, it purifies the blood, it also checks ?destruction of the red cell duri', 12.00, 'Green', '', 'f-m', NULL, NULL),
(193, 0, 'no', 'Universal Anti-snore Chin Strap - Snore Stopper', 98.00, 'No Description Available', 10.00, '', '', 'f-m', NULL, NULL),
(194, 0, 'no', 'Glutathione Glutathione Glutathione Pills 1500000mg And Acorbic Vitamin C - 1000mg', 79.00, 'GLUTATHIONE is growing in popularity for its health and skin benefits, especially skin whitening, which many people are taking advantage of, and getting amazing results. One of the Reasons be', 15.00, '', '', 'f-m', NULL, NULL),
(195, 0, 'no', 'Wan Song Tang Flat Tummy Tea (Night Boost) (28 Day Tea Bags)', 157.00, '100% natural with moringa and oolong wu yi, Flat Tummy Tea helps to eliminate the unnecessary bulge around the tummy while melting abdominal fat. Flat Tummy Tea kicks the bulge that makes you', 12.00, 'Tan', '', 'f-m', NULL, NULL),
(196, 0, 'no', 'Pep Pod Berry Nutrient Rich Energy (4Sachets)', 95.00, 'Bright, delicious berry flavor! PepPod is a healthy, natural energy tablet with 10X more nutrients than its closest competitors. Each pod gives you the energy you need, the way your body was ', 10.00, '', '', 'f-m', NULL, NULL),
(197, 0, 'no', 'Bella Cream Must Up Powerful Herbal Extracts Breast Enlargement And Firming Cream', 60.00, 'Bella must up cream is a unique cream formulation that absorbs very \r\nquickly in the breast to penetrate deeply, by stimulating breast \r\nhormones to work faster to increase the breast tissues', 16.00, '', '', 'f-m', NULL, NULL),
(198, 0, 'no', 'Forever Living Aloe Vera Gel', 240.00, 'Imagine slicing open an Aloe leaf and consuming the gel directly from the plant. Our Forever Aloe Vera Gel is as close to the real thing as you can get.\r\nThe miraculous aloe leaf has been fou', 20.00, '', '', 'f-m', NULL, NULL),
(199, 0, 'no', 'Apetamin 2 Bottles Of Apetamin Weight Gain Syrup - Butt And Hips Enlargement', 230.00, 'Are you skinny, thin, slim, or you are not happy with your body small size?There it goes Apetamin contains a unique combination of Cyproheptadine, Lysine and Vitamins. Cyproheptadine and lysi', 10.00, '', '', 'f-m', NULL, NULL),
(200, 0, 'no', 'Forever Living Forever Living - Forever Garcinia Plus', 70.00, 'Forever Living Garcinia Plus is a dietary supplement that contains all the essential nutrients needed for weight loss. The main ingredient in this supplement is a natural substance derived fr', 0.00, '', '', 'f-m', NULL, NULL),
(201, 0, 'yes', 'Bundle namez', 355.00, 'bundle description', 1.00, NULL, NULL, 'f-m', '2019-02-09 18:37:56', '2019-02-09 18:37:56'),
(202, 0, 'yes', 'Another bundle', 155.00, 'another bundle description', 2.00, NULL, NULL, 'f-m', '2019-02-09 19:32:27', '2019-02-09 19:32:27'),
(206, 0, 'yes', 'Another bundlews', 155.00, 'another bundle description', 2.00, NULL, NULL, 'f-m', '2019-02-10 03:07:04', '2019-02-10 03:07:04'),
(208, 0, 'yes', 'Lewis bundle', 234.00, 'this is lewis bundle', 1.00, NULL, NULL, 'f-m', '2019-02-11 15:10:05', '2019-02-11 15:10:05'),
(209, 0, 'yes', 'Lewis bundlew', 234.00, 'this is lewis bundle', 1.00, NULL, NULL, 'f-m', '2019-02-11 15:12:12', '2019-02-11 15:12:12'),
(210, 0, 'yes', 'Lewis bundlewe', 234.00, 'this is lewis bundle', 1.00, NULL, NULL, 'f-m', '2019-02-11 15:12:58', '2019-02-11 15:12:58'),
(211, 0, 'yes', 'Lewis bundleeewe', 234.00, 'this is lewis bundle', 1.00, NULL, NULL, 'f-m', '2019-02-11 15:14:50', '2019-02-11 15:14:50'),
(213, 0, 'yes', 'Beverages', 130.00, 'this is beverages', 1.00, NULL, NULL, 'f-m', '2019-02-11 15:17:50', '2019-02-12 00:00:12'),
(214, 0, 'no', 'Long sleeve shirt for men', 67.00, 'this is shirt for men', 1.00, NULL, NULL, 'f-m', '2019-02-12 00:05:17', '2019-02-12 00:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `is_bundle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `bundle_reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `sizes` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double(8,2) DEFAULT '0.00',
  `colors` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'f-m'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `status`, `is_bundle`, `bundle_reference_no`, `name`, `price`, `sizes`, `discount`, `colors`, `description`, `gender`) VALUES
(1476, 0, 'no', NULL, 'Magnate Classy Pack Of 2 Formal Shirts - Blue And Pink', 225.00, 'M', 0.00, 'Blue, Pink', 'For formal or casual wear, this long-sleeve, button cuff shirt is a perfectly tailored choice. Wear this with pant trousers, chino trousers, or denim and be sure to look professional, daring ', 'm'),
(1477, 0, 'no', NULL, 'Fashion Turndown Collar Color Block Panel Print Shirt - AZURE', 65.00, 'XL, L, 2XL, M', 10.00, 'Azure', '   Casual Shirts  Cotton,Polyester  Full  Turndown Collar  Print  0.272 kg  1 x Shirt   ', 'm'),
(1478, 0, 'no', NULL, 'Fashion Men\'s Long Sleeve Check Shirt - Blue, Green, White', 200.00, 'XXXL', 11.00, 'Blue, Green, White', '\"When it comes to clothing, style is of essence. Dressing is more than the cost and the manufacturer, it is about the quality, fit and style. Men can now look better than they have ever been ', 'm'),
(1479, 0, 'no', NULL, 'Halo Zeta Check Design Long Sleeve Shirt -White Multi', 130.00, 'XL, L, XXL, M', 14.00, 'White', 'Men?s fashion has evolved from the usual shirt and pant trouser to various styles. Men can now look even better than they have been. This leather belt from AM STORE is a must have for every s', 'm'),
(1480, 0, 'no', NULL, 'Fashion Men\'s Long Sleeve Check Shirt - Blue, White', 200.00, 'XXXXL, XXXL', 11.00, 'Blue, White', '\"When it comes to clothing, style is of essence. Dressing is more than the cost and the manufacturer, it is about the quality, fit and style. Men can now look better than they have ever been ', 'm'),
(1481, 0, 'no', NULL, 'Fashion Men Casual Shirts Men Oxford Dress Shirt Youth Style-H876', 244.00, '43', 16.00, '', '?Size Range: XS, S, M, L, XL, XXL ?Fabric: 100% High-grade Cotton Fabrics ?Season: Spring/Summer/Autumn/Winter ?Occasion: Party, Casual, Holiday, Business, Work, Daily Life, you can wear with', 'm'),
(1482, 0, 'no', NULL, 'Fashion Spring New 2018 Pure Color Men Dress Shirt Long Sleeve Classic Fit Twill Fashion Black Work Wear Brand Business Men Casual Shirt-B1626', 245.00, '41, 44, 39, 42, 43, 40, 38', 12.00, 'Black', 'No Description Available', 'm'),
(1483, 0, 'no', NULL, 'Generic Men\'s Splice Shirt Slim Long Sleeve Casual Shirt-Black', 77.00, 'XL, L, XXL, M', 10.00, 'Black', 'Item Type: ShirtsGender: MenPattern Type: PatchworkSleeve Length(cm): FullShirts Type: Casual ShirtsCollar: Turn-down CollarStyle: casual shirtFabric Type: BroadclothMaterial: CottonClosure T', 'm'),
(1484, 0, 'no', NULL, 'Fashion Men\'s Printed Polo Shirt Long Sleeve Slim Fit Business Dress Shirt Top-CS4', 265.00, 'M', 13.00, '', 'No Description Available', 'm'),
(1485, 0, 'no', NULL, 'Carlos Daniel Men\'s Striped Shirt - Wine', 100.00, 'XXL', 14.00, '', 'Buy Carlos Daniel, a brand that will put you in the elite class. Look \r\nabsolutely unique and handsome on this classy and modern Acelloti long \r\nsleeve shirts.\r\nIt can be for that formal meet', 'm'),
(1486, 0, 'no', NULL, 'Fashion Men\'s Casual Slim Fit Long Sleeve Printed Dress Shirt Formal Shirts Tops-navy Blue', 274.00, 'L, XXXXL, XXXL, XXL, M, XL, XXXXXL', 10.00, 'Blue, Navy', 'No Description Available', 'm'),
(1487, 0, 'no', NULL, 'Fashion Trendy Turn-down Collar Long Sleeve Floral Print Button Men Shirt - CADETBLUE', 245.00, 'L', 9.00, '', ' This slim-fit shirt with floral print is suitable for semi-formal occasions. Turn-down collar presents a classic and simple style. Long sleeves with buttoned cuffs. The floral print is full ', 'm'),
(1488, 0, 'no', NULL, 'Fashion Men\'s Bussiness Lapel Button Down Short Sleeve Top Blouse Casual Solid Shirt-White- THE LAKI', 157.00, 'XL, XXXL, XXL', 14.00, 'White', 'Specifications: Formal lapel short sleeve button down shirt design. Slim fit design, which can show your good figure. Great for bussiness meeting, party, shopping wear.  Type: Shirt\r\n	\r\n		Gen', 'm'),
(1489, 0, 'no', NULL, 'Crux Hulio Long Sleeve Shirt - Multicolour', 200.00, 'XL, L', 12.00, '', 'Crux long sleeve shirt is made from? premium cotton of the best quality. The unique piece can be styled with jeans, chinos or plain pants. PRODUCT DESCRIPTIONS Button Down Collars on both sid', 'm'),
(1490, 0, 'no', NULL, 'Yingwoo 2017 New Autumn Black And White Spliced Leisure Slim Fit Full Sleeves Shirt Men -white', 250.00, 'L, XXL, M, XL, S', 10.00, 'Black, White', 'Item Type:ShirtsGender:MenSleeve Length(cm):FullPattern Type:PatchworkShirts Type:Casual ShirtsCollar:Turn-down CollarFabric Type:BroadclothMaterial:Cotton,PolyesterClosure Type:Single Breast', 'm'),
(1491, 0, 'no', NULL, 'Fashion Men Casual Shirts Men Oxford Dress Shirt Youth Style-H862', 244.00, '41, 39, 43, 42, 40', 16.00, '', '?Colorways: Acid Blue, Blue, Gray, Khaki, Navy Blue, White, Wine Red ?Size Range: XS, S, M, L, XL, XXL ?Fabric: 100% High-grade Cotton Fabrics ?Season: Spring/Summer/Autumn/Winter ?Occasion: ', 'm'),
(1492, 0, 'no', NULL, 'Yingwoo Super Big Size Men Printed Fashion Shirts Autumn Men\'s Casual Tops Shirt With Long Sleeve Slim Fit Male Turn-down Collar Cotton Clothing -white', 294.00, 'XL, L, XXL, M', 10.00, 'White', 'Item Type:ShirtsGender:MenSleeve Length(cm):FullClosure Type:Open StitchShirts Type:Casual ShirtsStyle:CasualCollar:Turn-down CollarFabric Type:BroadclothMaterial:CottonPattern Type:PrintSlee', 'm'),
(1493, 0, 'no', NULL, 'Fashion Geometric National Print Long Sleeve Shirt - PURPLE', 240.00, 'XXXL, 2XL', 10.00, 'Purple', '   Casual Shirts  Cotton,Polyester  Full  Turndown Collar  Geometric,Tribal Print  0.282 kg  1 x Shirt   ', 'm'),
(1494, 0, 'no', NULL, 'Fashion Floral Printed Long Sleeves Shirt - WHITE', 284.00, 'XL, L, 2XL, M', 10.00, 'White', 'No Description Available', 'm'),
(1495, 0, 'no', NULL, 'Generic Men Flannel Striped Shirts Cotton Spring Autumn Casual Long Sleeve Shirt Soft Comfort Slim Fit Styles Brand Man Clothes -white', 66.00, 'XL, L, XXL, M', 10.00, 'White', 'Item Type:ShirtsGender:MenSleeve Length(cm):FullShirts Type:Casual ShirtsStyle:Slim Fit StylesFabric Type:FlannelCollar:Turn-down CollarMaterial:CottonClosure Type:Single BreastedSleeve Style', 'm'),
(1496, 0, 'no', NULL, 'Fashion Men\'s Long-Sleeve Button Shirts - Deep Blue', 219.00, '40, 42, 38', 9.00, 'Blue', ' There are 7? buttons on the? shirt placket.shirt material is denim thin fabric; Shirt no matter what occasion can wear it to attend, work and go out can be worn. Can be used with casual pant', 'm'),
(1497, 0, 'no', NULL, 'COOFANDY Men Casual Cool Long Sleeve Turn-down Collar Jean Shirt Thin Coat-Dark Blue', 200.00, '', 10.00, 'Blue', '(Attention: Dear Valued Customer, Please read our size chart carefully and choose the appropriate size based on your usual wear before your purchase, Thank you) Stay stylish all summer with t', 'm'),
(1498, 0, 'no', NULL, 'Fredd Marshall Men Cargo Casual Shirt - White', 273.00, '48, 40, 44, 38', 20.00, 'White', ' There are 7? buttons on the shirt placket.The 2 pockets are in front,a button on a pocket. Shirt no matter what occasion can wear it to attend, work and go out can be worn. Can be used with ', 'm'),
(1499, 0, 'no', NULL, 'Fashion Faux Twinset Panel Design Shirt - Cadetblue', 205.00, '', 20.00, '', ' Casual Shirts Cotton,Polyester Full Turndown Collar Solid 0.252 kg 1 x Shirt   ', 'm'),
(1500, 0, 'no', NULL, 'Italian Style Classy Bishop Collar Shirt For Men', 210.00, 'XL, L, M', 16.00, '', 'Buy Italian style, a brand that will put you in the elite class. Look absolutely unique and handsome on this classy and modern ?long sleeve Italian style shirts. It can be for that formal mee', 'm'),
(1501, 0, 'no', NULL, 'Fashion Men\'s Long-Sleeve Button Shirts - Light Blue', 219.00, '40, 36, 38', 9.00, 'Blue', ' There are 7? buttons on the? shirt placket.shirt material is denim thin fabric; Shirt no matter what occasion can wear it to attend, work and go out can be worn. Can be used with casual pant', 'm'),
(1502, 0, 'no', NULL, 'Fashion Set-of-Four Long Sleeve Shirts For Men - Multi', 73.00, 'XL, L, M', 10.00, '', ', from the sophisticated cut to the detailed stitching and the cotton rich fabric. Switch up your look from Monday to Thursday with this pack of 4 finely tailoured long sleeve shirts, comfy a', 'm'),
(1503, 0, 'no', NULL, 'Yingwoo New Spring Shirts Men White Fashion Ethnic Pattern Long Sleeve Shirts Men Invisible Closure Brand Clothing Plus Size', 300.00, 'L, XXXXL, XXXL, XXL, M, XL, XXXXXL', 10.00, 'White', 'Gender:MenSleeve Length(cm):FullShirts Type:Casual ShirtsStyle:Moto & BikerCollar:Turn-down CollarFabric Type:BroadclothMaterial:Cotton,Polyester FiberClosure Type:Single BreastedPattern Type', 'm'),
(1504, 0, 'no', NULL, 'Fashion 4XL Cotton Flannel Men Shirts 2018 Fashion Spring Long Plaid Shirt Men Long Sleeve Plaid Striped Casual Shirt Male Plaid Shirts-red', 256.00, 'L, XXXXL, XXXL, XXL, M, XL', 10.00, 'Red', 'No Description Available', 'm'),
(1505, 0, 'no', NULL, 'Zaful Plaid Long Sleeve Shirt - Green', 261.00, '46, 40', 9.00, 'Green', ' -The shirt with color variation. It can be wearable all year round, especially spring fall winter. Wear it solely or layering with casual top inside. -Spread collar. Sigle chest pocket. Adju', 'm'),
(1506, 0, 'no', NULL, 'St Rapheal   Elegant Men\'s Long Sleeve Shirt - Grey', 105.00, 'L', 16.00, 'Grey', 'Men\'s Casual: Whether formally dressed or in casuals,style should never \r\nbe compromised. Jumia has a wide range of gentleman casuals for all \r\noccassions. From Polos to T-Shirts, each piece ', 'm'),
(1507, 0, 'no', NULL, 'Fashion Four In One Classic Office Shirts For Men-Black, White, Sky Blue And Pink', 73.00, 'XL, L, M', 13.00, 'Black, Blue, Pink, White', 'This is a special offer for every gentleman for the day to day office activites and coporate function, Its a fashion bundles that comparies of four different office shirt.\r\nThis Formal Men Sh', 'm'),
(1508, 0, 'no', NULL, 'Fashion Men Cargo Casual Shirt - White', 246.00, '46, 42, 48', 9.00, 'White', ' There are 7? buttons on the shirt placket.The 2 pockets are in front,a button on a pocket. Shirt no matter what occasion can wear it to attend, work and go out can be worn. Can be used with ', 'm'),
(1509, 0, 'no', NULL, 'Fashion Turndown Collar Tribal Print Color Block Shirt - GREEN', 65.00, '2XL, L, M, XL, S', 10.00, 'Green', '   Casual Shirts  Cotton,Polyester  Full  Turndown Collar  Tribal Print  0.282 kg  1 x Shirt   ', 'm'),
(1510, 0, 'no', NULL, 'Bluelans Men\'s Casual Business Buttoned Long Sleeve Grid Slim Fit Stylish Dress Shirt Top-Black', 232.00, 'L, XXL, M', 14.00, 'Black, Blue', 'Specifications: Slim fit design, can be worn to outdoor activities and casual occasions. This shirt features buttoned front, turndown collar and long sleeves. Made of cotton, soft and comfort', 'm'),
(1511, 0, 'no', NULL, 'Fashion Turndown Collar Double Breasted Long Sleeve Shirt_WHITE', 181.00, '', 12.00, 'White', 'Casual Shirts  Cotton,Polyester  Full  Turndown Collar  Solid  0.219 kg  1 x Shirt ', 'm'),
(1512, 0, 'no', NULL, 'Fashion Turndown Collar Tribal Print Color Block Shirt - GREEN', 65.00, '2XL, L, M, XL, S', 9.00, 'Green', 'Casual Shirts Cotton,Polyester Full Turndown Collar Tribal Print 0.282 kg 1 x ShirtPlease Note: Due to possible physical differences between different monitors (e.g. models, settings, color g', 'm'),
(1513, 0, 'no', NULL, 'Fashion Men Turn Collar Printed Shirt - White', 223.00, '40, 34', 9.00, 'White', ' Casual Shirts  Cotton Blends  Broadcloth  Short  Turn-down Collar  0.246 kg  1 x Shirt  We can guarantee that the overall style displayed in the photography is accurate, however there may be', 'm'),
(1514, 0, 'no', NULL, 'Acelloti  Men\'s Definition Purple Striped Formal Shirt', 100.00, 'M', 14.00, 'Purple', 'Buy Acelloti, a brand that will put you in the elite class. Look \r\nabsolutely unique and handsome on this classy and modern Acelloti long \r\nsleeve shirts.\r\nIt can be for that formal meetings ', 'm'),
(1515, 0, 'no', NULL, 'CourageHope Plain Long Sleeve Oxford Shirt - White', 300.00, '39', 13.00, 'White', '\"When it comes to clothing, style is of essence. Dressing is more than the cost and the manufacturer, it is about the quality, fit and style. Men can now look better than they have ever been ', 'm'),
(1516, 0, 'no', NULL, 'Chrysolite Designs African Swag Patterned Print TShirt - Black', 80.00, 'XL, S, L, M', 11.00, 'Black', 'Well structured and designed t-shirts always score style points in any wardrobe, setting the tone for a fun outing at the mall with friends or a laid back dress-down day at the office. Be con', 'm'),
(1517, 0, 'no', NULL, 'Neworldline High Quality 100% Contton Men Printed Fashion Short Sleeve T-shirt - White?L?', 133.00, '', 9.00, 'White', 'High Quality 100% Contton Men Printed Fashion Short Sleeve T-shirt                      ', 'm'),
(1518, 0, 'no', NULL, 'Priddi international Raglan T-shirt - Dark Grey/Black', 100.00, 'L, M', 11.00, 'Black, Grey', 'Priddi International a fast growing urbane clothier makes the best wardrobe for that awesome transition from corporate wears.With our fun and talking Tees, you do more than just look good, yo', 'm'),
(1519, 0, 'no', NULL, 'Chrysolite Designs IHustle Print T-Shirt - Black', 80.00, 'XL, S, L, M', 11.00, 'Black', 'Life is all about Hustling & Flexing.. OR What is the need of having all the money when you don\'t Flex.. iHUSTLE Print TSHirt..superb! Have you been searching for a Store with the best creati', 'm'),
(1520, 0, 'no', NULL, 'Chrysolite Designs My Africa Print TShirt - NavyBlue', 80.00, 'XL, S, L, M', 11.00, 'Navy', 'Wow! I love My Africa! What a beautiful combination of both a Floral design and the African Map. Really makes Africa more beautiful. I really cant help it, this TShirt is so lovely, and can b', 'm'),
(1521, 0, 'no', NULL, 'Fashion Ethnic Geometric Splatter Paint Print Shirt - WHITE', 253.00, '2XL, L, XXXL, M, XL', 12.00, 'White', '   Casual Shirts  Cotton,Polyester  Full  Turndown Collar  Geometric,Print  0.272 kg  1 x Shirt   ', 'm'),
(1522, 0, 'no', NULL, 'Chrysolite Designs Dab It Print TShirt - Black', 80.00, 'XL, S, L, M', 11.00, 'Black', 'Have you been searching for a Store with the best creative, inspiration & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for y', 'm'),
(1523, 0, 'no', NULL, 'Duke Gorilla Print T.Shirt', 93.00, 'XL, L, XXL, M', 13.00, '', 'Be confident and engaging in this unisex print tee, casually sophisticated with a dash of simplicity ', 'm'),
(1524, 0, 'no', NULL, 'Ifeco Abstract Graphic Design White Printed T-shirt', 93.00, 'L, M', 0.00, 'White', 'Graphic round neck? print tee shirts, tailored? with a high grade cotton fabric, and branded with flex? print, suitable for both wet and dry season(s). ', 'm'),
(1525, 0, 'no', NULL, 'Priddi international Raglan Pack Of Four - Multicolour', 300.00, 'S, L, M', 13.00, '', 'T-shirts by Priddi International are the perfect casual outfit. Our fun and talking t-shirts makes an instant customers favorite. You do not only look good, you make a statement. ', 'm'),
(1526, 0, 'no', NULL, 'Duke LONC Print T-Shirt - Black', 80.00, 'L, XXL, M, XL, S', 14.00, 'Black', 'Be confident and engaging in this flex print tee, casually sophisticated with a dash of simplicity.  Shop the widest online range of first-rate clothing and accessories at the best prices. ', 'm'),
(1527, 0, 'no', NULL, 'Chrysolite Designs Captain Pocket Badge Print TShirt - Black', 80.00, 'XL, S, L, M', 11.00, 'Black', 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 'm'),
(1528, 0, 'no', NULL, 'Chrysolite Designs Life Is Better With God TShirt - NavyBlue', 80.00, 'XL, S, L, M', 11.00, 'Navy', 'Loving God places you above in all things. Telling People about him makes him more proud of you. Life is a lovely place, most especially when you have God by your side. Can\'t help it, i love ', 'm'),
(1529, 0, 'no', NULL, 'Hush clothing Print Africa Aztec Crew Neck Tshirt', 85.00, 'XL, S, L, M', 12.00, '', 'This Tshirt is made from cotton material with a multicolored camo print \r\nto add to its uniqueness. It can be worn casually and occasionally. ', 'm'),
(1530, 0, 'no', NULL, 'Chrysolite Designs Be Wild Print TShirt - Black', 80.00, 'XL, S, L, M', 11.00, 'Black', 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 'm'),
(1531, 0, 'no', NULL, 'Chrysolite Designs Ivory Print TShirt - Black', 80.00, 'XL, S, L, M', 11.00, 'Black, Ivory', 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 'm'),
(1532, 0, 'no', NULL, 'Generic Men Fashion Short Sleeve Round Neck T-Shirt 3D Big Hand Tops-White', 57.00, 'XL', 11.00, 'White', 'Description: Item type: Men tops Applicable: Men Colour: As shown Size: Please check the size chart. Thickness: General Version type: Loose type Sleeve: Short Collar shape: Round neck Quantit', 'm'),
(1533, 0, 'no', NULL, 'Neworldline High Quality 100% Contton Men Printed Fashion Short Sleeve T-shirt - White', 105.00, 'XL, L, XXL, M', 11.00, 'White', 'High Quality 100% Contton Men Printed Fashion Short Sleeve T-shirt  Description: Package include:1*Men T-shirt   ', 'm'),
(1534, 0, 'no', NULL, 'Duke Men\'s NEB Lite Print T-Shirt - Navy Blue', 80.00, 'L, XXL, M, XL, S', 16.00, 'Blue, Navy', 'Be confident and engaging in this unisex print tee, casually sophisticated with a dash of simplicity. ', 'm'),
(1535, 0, 'no', NULL, 'Chrysolite Designs Powered By Prayer TShirt - Black', 80.00, 'XL, L, M', 11.00, 'Black', 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 'm'),
(1536, 0, 'no', NULL, 'Hush clothing Sugar Skull Print Crew Neck Tshirt', 85.00, 'S, M', 14.00, '', 'This Tshirt is made from cotton material.It can be worn casually and occasionally. ', 'm'),
(1537, 0, 'no', NULL, 'Hush clothing Print Africa Crew Neck Tshirt..', 60.00, 'S, L, M', 13.00, '', 'This Tshirt is made from cotton material. It can be worn casually and occasionally. ', 'm'),
(1538, 0, 'no', NULL, 'Hush clothing Black Men\'s Ripped Tee', 85.00, 'XL, S, L, M', 12.00, 'Black', 'This Tshirt is made from cotton material and also ripped, thus serves as its uniqueness. It can be worn casually and occasionally. ', 'm'),
(1539, 0, 'no', NULL, 'HollirTiger The Wild V-Neck Print Tshirt - Blue', 145.00, 'XXL', 12.00, 'Blue', 'Searching for the best outfits, Get the best of HollirTiger from SynGeTters world ', 'm'),
(1540, 0, 'no', NULL, 'Chrysolite Designs God Over Everything Print T-Shirt - Navy Blue', 80.00, 'XL, S, L, M', 11.00, 'Blue, Navy', 'Well structured and designed t-shirts always score style points in any wardrobe, setting the tone for a fun outing at the mall with friends or a laid back dress-down day at the office. Be con', 'm'),
(1541, 0, 'no', NULL, 'Duke Cas Print T-Shirt - Black', 93.00, 'XL, L, M', 14.00, 'Black', 'Never get lost in the crowd, dictate your style and express it at your \r\npreferred pace with fashion pieces that let you rock your occasions and \r\nalso stay voguish.Graphic round neck print t', 'm'),
(1542, 0, 'no', NULL, 'Hush clothing Always Hustling Crew Neck Tshirt', 85.00, 'S', 10.00, '', 'This Tshirt is made from cotton material. It can be worn casually and occasionally. ', 'm'),
(1543, 0, 'no', NULL, 'Fashion Fearless Men\'s Print T-Shirt And Cap - Black', 133.00, 'XL, L, M', 12.00, 'Black', 'This\r\n tee is made from comfortable cotton fabric and exclusively designed for\r\n the stylish man. For a perfect wardrobe staple for your casual wears??It is also cut to fit your figure perfec', 'm'),
(1544, 0, 'no', NULL, 'Chrysolite Designs Old Rugged Cross Print TShirt - White', 80.00, 'XL, L, M', 11.00, 'White', 'Have you been searching for a Store with the best creative, inspiration & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for y', 'm'),
(1545, 0, 'no', NULL, 'Duke Duke TIG Print T-Shirt - Black', 80.00, 'XL, L, M', 14.00, 'Black', 'Never get lost in the crowd, dictate your style and express it at your preferred pace with fashion pieces that let you rock your occasions and also stay voguish.Graphic round neck print tee t', 'm'),
(1546, 0, 'no', NULL, 'Chrysolite Designs Panther Print TShirt - Black.', 80.00, 'XL, S, L, M', 11.00, 'Black', 'Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for', 'm'),
(1547, 0, 'no', NULL, 'Hush clothing Navy Blue Star Detailed Ankara Pocket Tee', 85.00, 'S', 14.00, 'Blue, Navy', 'This Tshirt is made from cotton material with a touch of Ankara as its pocket thus adding to its uniqueness. It can be worn casually and occasionally. ', 'm'),
(1548, 0, 'no', NULL, 'Hush clothing Duck Hunter Camo Print Crew Neck Tshirt', 100.00, 'S, M', 17.00, '', 'This Tshirt is made from cotton material with a multicolored camo print to add to its uniqueness. It can be worn casually and occasionally. ', 'm'),
(1549, 0, 'no', NULL, 'Duke SKELETON OK PRINT T-SHIRT', 80.00, 'L, XXL, M, XL, S', 14.00, '', 'Never get lost in the crowd, dictate your style and express it at your preferred pace with fashion pieces that let you rock your occasions and also stay voguish.Graphic round neck print tee t', 'm'),
(1550, 0, 'no', NULL, 'Chrysolite Designs Riding On Grace Print TShirt - Grey.', 80.00, 'XL, L, M', 11.00, 'Grey', 'Find your inspiration & let it ignite your passion it all things.. Have you been searching for a Store with the best creative, inspirational & soul lifting designs?, just stop by at Chrysolit', 'm'),
(1551, 0, 'no', NULL, 'Chrysolite Designs God Is Not Dead Print TShirt - Black', 80.00, 'XL, S, L, M', 11.00, 'Black', 'Have you been searching for a Store with the best creative, inspiration & soul lifting designs?, just stop by at Chrysolite Designs Stores monthly. We\'ve always got something so amazing for y', 'm'),
(1552, 0, 'no', NULL, 'Chrysolite Designs Unisex Grace Print T-Shirt - Navy Blue', 80.00, 'XL, L, M', 11.00, 'Blue, Navy', 'Well structured and designed t-shirts always score style points in any wardrobe, setting the tone for a fun outing at the mall with friends or a laid back dress-down day at the office. Be con', 'm'),
(1553, 0, 'no', NULL, 'Chrysolite Designs Riding On Grace Print TShirt - Navy Blue', 80.00, 'XL, S, L, M', 11.00, 'Blue, Navy', 'Well structured and designed t-shirts always score style points in any wardrobe, setting the tone for a fun outing at the mall with friends or a laid back dress-down day at the office. Be con', 'm'),
(1554, 0, 'no', NULL, 'Chrysolite Designs Party Freaks TShirt 5-in-1 Bundle - Multicolour', 80.00, 'XL, L, M', 20.00, '', 'All your desired T-Shirts are now gathered in 1 Place. No need to ponder about choosing your best selections from page to page. We have a great idea of what combination you are searching for.', 'f-m'),
(1555, 0, 'no', NULL, 'Hush clothing Unplug Crew Neck Tshirt', 85.00, 'XL, S, L, M', 10.00, '', 'This Tshirt is made from cotton material. It can be worn casually and occasionally. Buy this Tshirt from Jumia today. ', 'm'),
(1556, 0, 'no', NULL, 'Bluelans Men\'s Stylish Casual Slim Fit Plaid Contrast Color Long Sleeve Dress Shirt Top-2#black White', 250.00, 'L, M', 14.00, 'Black, Blue, White', 'Type 1#floral Type: Shirt Gender: Men\'s Size Type: Regular Material: Cotton Blend Style: Fashion, Casual Sleeve Type: Long Sleeve Garment Care: Hand-wash Collar: Turn Down Collar Seasons: Spr', 'm'),
(1557, 0, 'no', NULL, 'Bluelans Men\'s Stylish Casual Slim Fit Plaid Contrast Color Long Sleeve Dress Shirt Top-6#raglan Navy Blue', 262.00, 'XXL, M', 14.00, 'Blue, Navy', 'Type 1#floral Type: Shirt Gender: Men\'s Size Type: Regular Material: Cotton Blend Style: Fashion, Casual Sleeve Type: Long Sleeve Garment Care: Hand-wash Collar: Turn Down Collar Seasons: Spr', 'm'),
(1558, 0, 'no', NULL, 'Generic Men\'s Stylish Casual Slim Fit Plaid Contrast Color Long Sleeve Shirt - Jean Dark Blue', 293.00, 'XL, M', 16.00, 'Blue', 'Type: Shirt Gender: Men\'s Size Type: Regular Material: Cotton, Polyester, Faux Leather Garment Care: Hand-Wash Collar: Turn-down Collar Sleeve Length: Long Sleeve Style: Fashion Season: Sprin', 'm'),
(1559, 0, 'no', NULL, 'BioAQUA BioAQUA Effective Face & Skin Care Stuborn Pimples And Skin Treatment Cream', 100.00, '', 13.00, '', 'BIOAQUA Pure Skin Acne Removal Serum?is the BEST solution to your Acne troubles guaranteed. Frequent application is promised to leave your skin free from Acne by eliminating Acne causing oils', 'f'),
(1560, 0, 'no', NULL, 'Nivea Extra White Firming Body Lotion', 285.00, '', 5.00, 'White', 'Do you want a fairer, lighter, richer body skin tone? Then try Nivea Extra White Firming Body Lotion. A Nivea formula with Q10 plus,50x ( 50 times) higher vitamin C to help make your skin fai', 'f'),
(1561, 0, 'no', NULL, 'HEMANI Organic Papaya Bath Soap', 73.00, '', 0.00, '', 'Papaya has a very powerful exfoliating properties that render it beneficial for removing dead skin cells?It rejuvenates dry and flaky skin.Its an effective acne treatment?It lightens the skin', 'f-m'),
(1562, 0, 'no', NULL, 'nature essence Aradab Coconut Oil - 250ml', 55.00, '', 15.00, '', 'Coconut oil is an alternative for anyone on a\r\nvegan diet because it?s completely plant based. It has less of an impact on\r\ncholesterol levels than butter, so it may be a healthier substitute', 'f-m'),
(1563, 0, 'no', NULL, 'BioAQUA Acne Scar Remover Pores Acne Cream - Anti Acne & Treatment Cream', 100.00, '', 13.00, '', 'BIOAQUA Pure Skin Acne Removal Serum is the BEST solution to your Acne troubles guanteed. Frequent application is promised to leave your skin free from Acne by eliminating Acne causing oils a', 'f'),
(1564, 0, 'no', NULL, 'Aichun Beauty 3days Slimming Weight Loss Message Cream(fat Burning Cream)', 60.00, '', 13.00, '', 'Reduces excess fat in the bodyConsists of natural Chilli and Ginger extracts which helps you slim down with no side effects3 Days Slimming Weight Loss Massage CreamExtended fat decreasing cre', 'f-m'),
(1565, 0, 'no', NULL, 'HOT NEW Slimming Cellulite Melts Dissolves Hot Sweat Chilli Diet Cream Gel Miracle', 170.00, '', 13.00, '', 'Professional super HOT Chilli based slimming gel - starts working as soon as it is applied. Impact on cellulite is intense and I have not found an easier way to smooth unsightly cellulite. Th', 'f-m'),
(1566, 0, 'no', NULL, 'Louis Will Comedo Suction Microdermabrasion Diamond Machine Blackhead Removal Rechargeable Skin Peeling Machine By Krasr, Comedone Extractor Set White', 63.00, '', 11.00, 'Black, White', 'Diamond Microdermabrasion provides a non-surgical skin resurfacing procedure by using sterile diamond heads to peel and rub off the dead cells at the top skin layer followed by vacuuming/suct', 'f'),
(1567, 0, 'no', NULL, 'K.Sang Black Anti-wrinkle Bamboo Charcoal Peel Blackhead Remover Mask For Women & Men', 100.00, '', 14.00, 'Black', 'Quality Black Mask ? The latest trend in skincare. Try the bestselling peel-off mask.Deep Cleansing ? Deeply penetrates the pores to remove acne-causing oil.Eliminating Blackheads, Acne and O', 'f-m'),
(1568, 0, 'no', NULL, 'Generic Facial Moisture Anti-wrinkle Whitening Snail Mask Concentrate Moisturizing Skin Pores Mask', 80.00, '', 17.00, 'White', 'Its snail secretion filtrate ingredients is natural and non-irritant, which is suitable for all skin types.It can deliver water and natural minerals to the tired and sensitive skin so as to s', 'f'),
(1569, 0, 'no', NULL, 'Cici Glam Turmeric Half-Ball Facial Konjac Sponge', 95.00, '', 5.00, '', 'Cici Glam Turmeric Konjac Facial Sponge, for Skin Restoration Natural, Eco-Friendly, Biodegradable and Chemical Free IMPROVES SKIN TEXTURE: Cici Glam Konjac Facial Sponge gently exfoliates wh', 'f-m'),
(1570, 0, 'no', NULL, 'Les Enchantes Stretch Mark Removal Gel', 90.00, '', 0.00, '', 'So many products being sold for stretch marks just moisturise the skin without doing much for the scar. This stretch mark removal cream is packed full of natural extracts that fights off scar', 'f-m'),
(1571, 0, 'no', NULL, 'Generic 1pc Pro Makeup Foundation Beauty Pen Sponge Puff', 89.00, '', 12.00, '', ' ', 'f-m'),
(1572, 0, 'no', NULL, 'Generic Organic Skin Care Rich 24 Hour Moisturiser 30ml', 61.00, '', 0.00, '', 'Our Rich 24 hour moisturiser is suitable for sensitive and dry skin. The botanical properties in this 100% natural cream help your skin to bloom in a simple routine so that you can use the sa', 'f-m'),
(1573, 0, 'no', NULL, 'BioAQUA 24k Gold Facial Mask - Anti-Wrinkle Skin Whitening & Moisturizing Pore Minimizing Treatment - Bio-Collagen Crystal Facial Mask For Anti Aging Skin  (5Pcs)', 150.00, '', 13.00, 'Gold, White', 'The collagen face mask is a perfect and very natural solution to more youthful looking skin. This famous treatment is becoming famous between Hollywood stars and expense health spas. - Reduce', 'f'),
(1574, 0, 'no', NULL, 'Bella Cream Must up Powerful Herbal Extracts Breast Enlargement And Firming Cream plus Free LED Watch', 75.00, '', 16.00, '', 'Our unique cream formulation is absorbed very quickly in to the breasts to penetrate deeply allowing maximal results, applied directly to the target tissues. The end result is a visible firmi', 'f'),
(1575, 0, 'no', NULL, 'Herbal Authority Tea Tree Oil Soap', 150.00, '', 15.00, '', 'Vegetable-Based Formula Tea Tree is a pure oil, culled from the leaves of a tree (Melaleuca alternifolia) , native to Australia. Traditionally, it has been used as a topical agent for the ski', 'f'),
(1576, 0, 'no', NULL, 'Generic Silicone Scar Gel Away Strips Scar Remover Treatment Patch Therapy Managment Reusable Sheet Advanced Scar Removal Gel Help Remove Old Scars , Acne Scar, Trauma, Burn Scar', 180.00, '', 11.00, '', 'Transparent, easy to observe the scar situation Durable and re-usable No irritation, low sensitivity Scars can be divided into several types One is ?in three years?, generally a skin renewal ', 'f'),
(1577, 0, 'no', NULL, 'Aichun Beauty Hip  Up Cream-(150ml)', 55.00, '', 15.00, '', 'Hip lift up cream is for all women who dream of having beautiful hip. it helps enhance your buttocks size. Hip lift up? hip massage cream is formulated with natural extract to \r\nmake your hip', 'f'),
(1578, 0, 'no', NULL, 'BioAQUA Pure Lavender Essential Oil - Pack Of 2 Bottles', 90.00, '', 0.00, 'Lavender', 'BioAqua Lavender Oil has a rich alluring aroma. It is known to help reduce anxiety. It is also used to sooth common cuts and bruises. Lavender Oil helps reduce scarring, it is suitable for tr', 'f-m'),
(1579, 0, 'no', NULL, 'KTC Pure Almond Oil B.P Sweet  200ml Made With 100% Californian Almonds', 100.00, '', 20.00, '', 'KTC Pure Almond Oil is made with 100% Californian Almonds. It is a soft, very light & non-greasy oil that has excellent penetrating & absorbing qualities.? It is traditionally used for skin a', 'f-m'),
(1580, 0, 'no', NULL, 'BioAQUA Black Mask Blackhead Mask Deep Cleansing Black Head Mask Acne Treatment Anti-Aging Face Mask', 73.00, '', 0.00, 'Black', 'Top selling? BIOAQUA Black Mask Blackhead Mask Deep Cleansing Black Head Mask Acne Treatment Anti-Aging Face MaskDeep cleansing Black Mask, Black Head Removal Face Mask from BioAqua is a powe', 'f'),
(1581, 0, 'no', NULL, 'Shills Purifying Black Mask Deep Cleansing- Black Head Removal', 99.00, '', 10.00, 'Black', 'How to use the Black Mask? 1. Cleanse and dry the area of treatment. 2. Apply the mask on the desired area (Avoid eyebrow, eyes and lips). 3. Peel the mask off after 20 30 minutes. 4. To achi', 'f'),
(1582, 0, 'no', NULL, 'Generic 100% Pure Coconut Oil (250ml)', 80.00, '', 0.00, '', 'The world is drifting towards healthier and safer products to apply on the skin and hair. Coconut is one of the healthiest fruits and every part of it is useful, most especially coconut oil. ', 'f-m'),
(1583, 0, 'no', NULL, 'BioAQUA Pure Lavender Oil', 99.00, '', 11.00, 'Lavender', 'BioAqua Lavender Oil has a rich alluring aroma. It is known to help reduce anxiety. It is also used to sooth common cuts and bruises. Lavender Oil helps reduce scarring, it is suitable for tr', 'f-m'),
(1584, 0, 'no', NULL, 'Longyue 6 In 1 Electric Facial Cleansing Massager + Free Battery', 70.00, '', 0.00, '', '6 in 1 facial cleanser can perfectly massage your facial skin, clean the facial pores without hurting your skin and helps improve skin texture for a younger looking skin. Designed to cleanse ', 'f'),
(1585, 0, 'no', NULL, 'BioAQUA Bioaqua- Acne, Pimples & Spot Treatment Cream- 30ml', 60.00, '', 12.00, '', 'Ingredient: Water, glycerol, aloe extract, hydrogenated starch hydrolyzate, salicylic acid, beta-glucan, dipotassium glycyrrhizinate, propylene glycol, EDTA disodium, flavor, PEG-40 hydrogena', 'f'),
(1586, 0, 'no', NULL, 'Aichun Beauty Hip Up Cream-Coffee', 63.00, '', 17.00, '', 'Aichun?Hip Up Cream?is an effective cream that contains natural herbal \r\nextracts ?that help your butt looks beautiful, tight, plump, smooth, \r\nfull, balanced hormones, reducing black lines a', 'f'),
(1587, 0, 'no', NULL, 'Shills Black Mask Face Nose Blackhead Acne Remover Peel Off Facial Mask', 73.00, '', 10.00, 'Black', 'Deep cleansing Black Mask, Black Head Removal Face Mask.. Powerful anti oxidants that shrink the appearance of pores, firm the skin and reduce inflammation, once dried the mask strips away de', 'f'),
(1588, 0, 'no', NULL, 'Kojie San Skin Lightening Soap (3 Pack), 3x100g', 145.00, '', 15.00, '', 'The original kojic acid lightening soap, Kojie San\'s formulation blends effective whitening ingredients with nourishing coconut oil and a fresh orange fragrance. Kojic acid was discovered whi', 'f'),
(1589, 0, 'no', NULL, 'ZGTS Derma Roller 0.5mm For Acne Marks And Box Scars', 75.00, '', 0.00, '', 'Derma Rollers are made of tiny needles, usually as tiny as the pores on the the skin. They renew the skin cells and enable collagen production and skin cell regeneration. Method:Roll all over', 'f-m'),
(1590, 0, 'no', NULL, 'Pasjel Pasjel Stretch Mark And Scar Remover Cream', 59.00, '', 14.00, '', 'Ingredients: pure natural plant formula, Centella asiatica ( repair skin , melanin ) , vitamin E ( for the skin to inject more nutrition ) , small molecules beans collagen ( collagen suppleme', 'f'),
(1591, 0, 'no', NULL, 'Ceno Cold Pressed Organic Extra Virgin Coconut Oil- 250ml', 85.00, '', 15.00, '', 'CENO extreme cold pressed Coconut Oil is a \r\nPremium quality for high medicinal and health purposes. Every coconut \r\nthat is used in the production of Ceno Coconut Oil is hand-picked and \r\nco', 'f-m'),
(1592, 0, 'no', NULL, 'Cici Glam Red Clay Half-Ball Facial Konjac Sponge', 90.00, '', 10.00, 'Red', 'Cici Glam Red Clay Konjac Facial Sponge, for Eczema, Rosacea and psoriasis Natural, Eco-Friendly, Biodegradable and Chemical Free IMPROVES SKIN TEXTURE: Cici Glam Konjac Facial Sponge gently ', 'f-m'),
(1593, 0, 'no', NULL, 'BioAQUA Aloe Vera Face Moisturizer Acne Scar And Anti Wrinkle Skin Whitening Cream', 88.00, '', 0.00, 'White', 'BIOAQUA Brand Aloe Vera Gel Skin Care Face Cream Hyaluronic Acid Anti Winkle Whitening Moisturizing Acne Treatment Cream 40ml Product efficacy: Pulling compact, sun repair, moisturizing, skin', 'f'),
(1594, 0, 'no', NULL, 'Iron Rose Lemon Oil', 85.00, '', 0.00, '', 'Lemon oil is obtained from lemon peels. Iron rose lemon oil has already been, diluted with a carrier oil, which made it ready to use on the skin. Lemon oil is a good remedy for restoring the ', 'f'),
(1595, 0, 'no', NULL, 'BIOAOUA Blackhead Remove Facial Masks Deep Cleansing Peel Off Black Nud Facail Face Black Mask', 100.00, '', 11.00, 'Black', 'This product gradually removes stubborn blackheads & whiteheads.?Absorbs excess oil.?Rich in antiaging vitamin C and antioxidants.?Visibly minimizes large pores & unclogs pores.?Minimises app', 'f-m'),
(1596, 0, 'no', NULL, 'Natural Serum & Cosmetics Peppermint Oil', 240.00, '', 10.00, '', 'Natural serum and cosmetics peppermint Essential oil is used for body massage at night hours. It gets rid of dandruff and lice with constant application ', 'f-m'),
(1597, 0, 'no', NULL, 'BIOAOUA Blackhead Remover Black Mask - Deep Clean Mask Whitening Complex', 95.00, '', 0.00, 'Black, White', 'Deep cleansing Black Mask, Black Head Removal Face Mask.. Powerful\r\n anti oxidants that shrink the appearance of pores, firm the skin and \r\nreduce inflammation, once dried the mask strips awa', 'f'),
(1598, 0, 'no', NULL, 'Boot Traditional Glycerin And Rose Water 200ml', 75.00, '', 11.00, '', 'Boots Traditional Glycerin and Rosewater is a cooling, refreshing beautifier that softens tones and moisturisers the skin. It can be used as an all over body moisturizer. ', 'f'),
(1599, 0, 'no', NULL, 'Zikel Contact Lens - Virgin', 150.00, '', 11.00, '', 'Zikel contact lens your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. Zikel Cosmetic Color contac', 'f-m'),
(1600, 0, 'no', NULL, 'FreshLook Contact Lens Solutions - 120ML', 60.00, '', 15.00, '', 'You can actually?wear that dream lenses?you have always wanted with our all in one contact lense solution. ', 'f-m'),
(1601, 0, 'no', NULL, 'FreshLook Contact Lens- Brown', 65.00, '', 15.00, 'Brown', 'Freshlook Colorblends cosmetic color contact lens is perfect for dark eyes. It is lovely and easy to apply. Look different with our color blend contact lenses. ', 'f-m'),
(1602, 0, 'no', NULL, 'FreshLook Contact Lens- Turquoise', 65.00, '', 15.00, 'Turquoise', 'Freshlook Colorblends cosmetic color contact lens is perfect for dark eyes. It is lovely and easy to apply. Look different with our color blend contact lenses. ', 'f-m'),
(1603, 0, 'no', NULL, 'FreshTone 2Contact Lenses  Halloween Lens- BLACK 1 Pack', 125.00, '', 0.00, 'Black', 'They have variety of lovely colors that suits all skin tone. They are light, soft and comfortable to wear that it makes the eye look stunning ', 'f-m'),
(1604, 0, 'no', NULL, 'Generic Jetting Buy Contact Lens Case Travel Kit  Pocket Size Black', 82.00, '', 10.00, 'Black', ' Features: with great quality; Convenient to carry and put aside the contact lens; Elegent design light up your daily life, bring you a sunny day. Condition: Size(Approx): 8.5 * 7 * 2.5 cm(De', 'f-m'),
(1605, 0, 'no', NULL, 'FreshLook Colourblend Contact Lens With 120ml Solution -Hazel', 125.00, '', 15.00, '', 'Fresh Look Color Blends take the beauty of your own eyes and subtly change their color. These contact lenses use a special three-in-one technology to blend three different colors into one, wh', 'f-m'),
(1606, 0, 'no', NULL, 'FreshLook Contact Lens- Grey', 65.00, '', 15.00, 'Grey', 'Freshlook Colorblends cosmetic color contact lens is perfect for dark eyes. It is lovely and easy to apply. Look different with our color blend contact lenses. ', 'f-m'),
(1607, 0, 'no', NULL, 'FreshLook Contact Lens- Brown 2', 75.00, '', 14.00, 'Brown', 'Freshlook Colorblends cosmetic color contact lens is perfect for dark eyes. It is lovely and easy to apply. Look different with our color blend contact lenses. Freshlook Colorblends in afford', 'f-m'),
(1608, 0, 'no', NULL, 'FreshLook Contact Lens - Pure Hazel', 60.00, '', 15.00, '', 'Fresh look Colorblends is your everyday secret to beautiful eyes. The colour of the lens interacts with light to adapt to the shade. Stay trendy and look sharp with this pair of lenses. Get o', 'f-m'),
(1609, 0, 'no', NULL, 'FreshLook Contact Lens Solutions - 120ML', 60.00, '', 15.00, '', 'You can actually?wear that dream lenses?you have always wanted with our all in one contact lense solution. ', 'f-m'),
(1610, 0, 'no', NULL, 'FreshLook 2Contact Lens Solutions - 120ML', 58.00, '', 0.00, '', 'You can actually?wear that dream lenses?you have always wanted with our all in one contact lense solution. ', 'f-m'),
(1611, 0, 'no', NULL, 'Zikel Contact Lens - Mixed Black', 147.00, '', 12.00, 'Black', 'Zikel contact lens your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. Zikel Cosmetic Color contac', 'f-m'),
(1612, 0, 'no', NULL, 'FreshTone 1- Tone Super Naturals + Lens Case- Bronze', 175.00, '', 0.00, '', 'They have variety of lovely colors that suits all skin tones. They are light, soft and comfortable to wear that it makes the eye look stunning ', 'f-m'),
(1613, 0, 'no', NULL, 'FreshLook Contact Lens-Blue', 65.00, '', 15.00, 'Blue', 'Freshlook Colorblends cosmetic color contact lens is perfect for dark eyes. It is lovely and easy to apply. Look different with our color blend contact lenses. ', 'f-m'),
(1614, 0, 'no', NULL, 'FreshLook Colorblends Contact Lens- Honey', 100.00, '', 11.00, '', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 'f-m'),
(1615, 0, 'no', NULL, 'FreshLook 2Colorblends Contact Lens -Pure Hazel', 60.00, '', 0.00, '', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 'f-m'),
(1616, 0, 'no', NULL, 'FreshLook 2Contact Lens Green + Solution 120ML', 110.00, '', 0.00, 'Green', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends .', 'f-m'),
(1617, 0, 'no', NULL, 'Refresh Multi-Purpose Contact Lens Solution', 150.00, '120ml', 6.00, '', 'Multi-purpose solution for moisturizing, cleaning, rinsing and sterilizing all kinds of contact lenses.?For best results, soak contact lens overnight in Refresh solution and they are ready to', 'f-m'),
(1618, 0, 'no', NULL, 'FreshLook Contact Lenses +120ml Solution', 138.00, 'Gemstone, green, lens, Pack, Pure, hazel, Honey, Gray, True, Sappire, Brown, Sterling, gray, Brilliant, blue, Blue, Green', 0.00, '', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends .', 'f-m'),
(1619, 0, 'no', NULL, 'FreshLook Colorblends Contact Lens With Solution- Sterling Grey', 99.00, '', 11.00, 'Grey', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 'f-m'),
(1620, 0, 'no', NULL, 'FreshLook Contact Lens Solutions - 120ML', 60.00, '', 15.00, '', 'You can actually?wear that dream lenses?you have always wanted with our all in one contact lense solution. ', 'f-m'),
(1621, 0, 'no', NULL, 'Zikel Contact Lens - Cat Eye', 150.00, '', 11.00, '', 'Zikel contact lens your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. Zikel Cosmetic Color contac', 'f-m'),
(1622, 0, 'no', NULL, 'FreshTone 2- Tone Super Naturals + Lens Case- Sky Gray', 125.00, '', 17.00, 'Gray', 'They have variety of lovely colors that suits all skin tones. They are light, soft and comfortable to wear that it makes the eye look stunning ', 'f-m'),
(1623, 0, 'no', NULL, 'FreshTone 1- Tone Super Naturals + Lens Case- Bronze 1 Pack', 125.00, '', 0.00, '', 'They have variety of lovely colors that suits all skin tones. They are light, soft and comfortable to wear that it makes the eye look stunning ', 'f-m'),
(1624, 0, 'no', NULL, 'FreshLook Contact Lenses - Sterling Grey', 70.00, '', 14.00, 'Grey', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends .', 'f-m'),
(1625, 0, 'no', NULL, 'Zikel Contact Lens - Mixed Black', 147.00, '', 12.00, 'Black', 'Zikel contact lens your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. Zikel Cosmetic Color contac', 'f-m'),
(1626, 0, 'no', NULL, 'FreshLook Grey Contact Lenses - With 120ml Solution, Picker And A Case', 150.00, '', 0.00, 'Grey', 'Fresh looks color blend contacts lenses for natural beautiful; dark or light eyes offer you, a wide range of desired looks - from subtle eye color enhancement to bold, noticeable change, it c', 'f-m'),
(1627, 0, 'no', NULL, 'Liplasting New Fruit Flavored Silky Lubricants Vaginal Intercourse Male Female Oral Lubricant Gay Anal Lubricant Massage Body Oil', 121.00, '', 0.00, '', 'fresh and fragrant odorless, tasteless, non-greasy Ultra-silky and warming sensations are wonderful for sex life . Help you reach sex climax easily Products\r\n Following will be Sent with Pipe', 'f-m'),
(1628, 0, 'no', NULL, 'FreshLook Sleek Colourblends Beautiful Contact Lenses - Multi Colour', 90.00, 'TURQUOISE, AMETHYST, PURE, HAZEL, BRILLIANT, BLUE, GREY, STERLING, GREY, GREEN, TRUE, SAPPIRE, BROWN, GEMSTONE, GREEN, HONEY', 0.00, '', 'No Description Available', 'f-m'),
(1629, 0, 'no', NULL, 'Zikel Contact Lens - Love Green', 150.00, '', 11.00, 'Green', 'Zikel contact lens your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. Zikel Cosmetic Color contac', 'f-m'),
(1630, 0, 'no', NULL, 'FreshLook Colorblends Contact Lens- Sterling Grey', 98.00, '', 18.00, 'Grey', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 'f-m'),
(1631, 0, 'no', NULL, 'FreshLook Contact Lenses +120ml Solution - Green', 150.00, '', 14.00, 'Green', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends .', 'f-m'),
(1632, 0, 'no', NULL, 'FreshLook Contact Lens- Sterling Grey', 65.00, '', 15.00, 'Grey', 'Freshlook Colorblends cosmetic color contact lens is perfect for dark eyes. It is lovely and easy to apply. Look different with our color blend contact lenses. ', 'f-m'),
(1633, 0, 'no', NULL, 'FreshLook Color Blends Eye Contact Lens Kit (Sterling Gray)', 273.00, '', 15.00, 'Gray', 'Fresh look colorblend made with hema material which is the best in the industry, comes with a charming look to your eyes, giving you the Fresh and sexy look you deserve. ', 'f-m'),
(1634, 0, 'no', NULL, 'FreshLook Contact Lenses +120ml Solution - Brown', 125.00, '', 15.00, 'Brown', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends .', 'f-m'),
(1635, 0, 'no', NULL, 'Zikel Contact Lens - Cat Eye', 150.00, '', 11.00, '', 'Zikel contact lens your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. Zikel Cosmetic Color contac', 'f-m'),
(1636, 0, 'no', NULL, 'FreshLook Colorblends Contact Lens And Solution- Sterling Grey', 100.00, '', 14.00, 'Grey', 'Fresh look Colorblends your everyday secret to beautiful eyes.the color of the lens interacts with light to adapt to the shade of the wearer\'s eyes for a natural look. FreshLook ColorBlends ?', 'f-m'),
(1637, 0, 'no', NULL, 'FreshLook Colorblend Contact Lens + 120ml Solution - Honey', 115.00, '', 13.00, '', 'Fresh Look Color Blends take the beauty of your own eyes and subtly change their color. These contact lenses use a special three-in-one technology to blend three different colors into one, wh', 'f-m'),
(1638, 0, 'no', NULL, 'Beauty Tanson  Turqoise Green Eye Contacts Lenses Women Soft Coloured Contact Lens', 52.00, '', 17.00, 'Green, Tan', 'No Description Available', 'f'),
(1639, 0, 'no', NULL, 'Liplasting 5 Pcs Manicure Nail Art Tips Form Guide Sticker DIY Stencil U Type Nail Sticker', 56.00, '', 0.00, '', 'No Description Available', 'f-m'),
(1640, 0, 'no', NULL, 'Generic Set Auger Pen Double Nail Drill Pen Nail Polish Art Dotting Marbleizing Pen Manicure Tools 5pcs / Set', 62.00, '', 10.00, '', 'Set Auger Pen Double Nail Drill Pen Nail Polish Art Dotting Marbleizing Pen Manicure Tools  - Have 5 nail art dotting marbleizing pen with 2 different ends for different marbleizing desires. ', 'f-m'),
(1641, 0, 'no', NULL, 'Neworldline Nail Art Acrylic Gel Picking Tool Rhinestones Gem Decor Eyelash Tweezers-Silver', 90.00, '', 13.00, 'Silver', 'Nail Art Acrylic Gel Picking Tool Rhinestones \r\nGem Decor Eyelash Tweezers Features: Package Included: ', 'f-m'),
(1642, 0, 'no', NULL, 'Qibest DIY Red Flowers Design Nail Tip Art Water Transfers Decal Sticker', 70.00, '', 20.00, 'Red', 'Feature: ', 'f-m'),
(1643, 0, 'no', NULL, 'Qibest 3D Nail Art Stickers Decals Decoration Snowflake Star Design SN-111', 70.00, '', 20.00, 'Snow', '  ', 'f-m'),
(1644, 0, 'no', NULL, 'Generic 10pcs Durable Sponge Nail File Polish Art Manicure Equipment Tools', 94.00, '', 12.00, '', '10pcs Durable Sponge Nail File Polish Art Manicure Equipment Tools ', 'f-m'),
(1645, 0, 'no', NULL, 'Generic 24W LED UV Nail Gel Curing Lamp Light Nail Gel Polish Dryer Nail Art Machine', 170.00, '', 12.00, '', '24W LED UV Nail Gel Curing Lamp Light Nail Gel Polish Dryer Nail Art Machine Description Package included ', 'f-m'),
(1646, 0, 'no', NULL, 'Generic Equivalentt Chess Board Magnetic Nail Art Tip Crystal Stand Set Salon Display Holder', 73.00, '', 13.00, '', 'Chess Board Magnetic Nail Art Tip Crystal Stand Set Salon Display Holder ', 'f-m');
INSERT INTO `products_product` (`id`, `status`, `is_bundle`, `bundle_reference_no`, `name`, `price`, `sizes`, `discount`, `colors`, `description`, `gender`) VALUES
(1647, 0, 'no', NULL, 'Generic 6ml Temperature Change Nail Polish Color Temperature Control Nail Oil', 57.00, '', 12.00, '', '6ML Temperature Change Nail Polish Color Temperature Control Health Nontoxic Nail Oil Features:  Package includes : ', 'f-m'),
(1648, 0, 'no', NULL, 'Generic Acrylic Powder Glitter Nail Brush False Finger Pump Nail Art Tools Kit Set', 279.00, '', 12.00, '', 'Acrylic Powder Glitter Nail Brush False Finger Pump Nail Art Tools Kit Set Features: Package Content: ', 'f-m'),
(1649, 0, 'no', NULL, 'Generic 4PCS Clear UV Gel Builder Nail Art Polish Glue Manicure Tips Transparent', 89.00, '', 12.00, '', '4PCS Clear UV Gel Builder Nail Art Polish Glue Manicure Tips Transparent Feature:  100% and high quality.  Quantity: 4 Size: 4.9cm x 3.3cm (approx) Color: 1PC Pink, 1PC White, 2PC Clear Suita', 'f-m'),
(1650, 0, 'no', NULL, 'Generic 48 Sheets New Flower Lace Nail Art Water Transfer Stickers Nail Tips Decoration', 74.00, '', 12.00, '', '48 sheets New Flower Lace Nail Art Water Transfer Stickers Nail Tips Decoration ', 'f-m'),
(1651, 0, 'no', NULL, 'Fashion Tanson New Fashion Beauty And Charming Women Transparent Magic Mirror Powder Nail Art Decoration Glitter Chrome Chameleon', 82.00, '', 17.00, 'Tan', 'No Description Available', 'f'),
(1652, 0, 'no', NULL, 'Generic Stylish Ladies Women 3D Art Stickers Nail Stick Manicure Water Decal', 60.00, '', 0.00, '', 'Stylish Ladies Women 3D Art Stickers Nail Stick Manicure Water Decal : - Unique design, beautiful and fashion - One sheet of adhesive nail art stickers to fit all fingernails - Very easy to u', 'f'),
(1653, 0, 'no', NULL, 'Generic Hair Beard Growth Thicker Essence Mustache Fast Grow Eyebrow Essence 30ML', 87.00, '', 12.00, '', 'Hair Beard Growth Thicker Essence Mustache Fast Grow Eyebrow Essence 30ML Feature:  Activate the hair follicles, solid hair root, check to take off the hair; Repair hair follicle, grow new ha', 'f-m'),
(1654, 0, 'no', NULL, 'Generic Diamonds Dazzling Tips Nail Sticker Sequins Colorful Nail Art Decoration', 92.00, '', 12.00, '', 'Diamonds Dazzling Tips Nail Sticker Sequins Colorful Nail Art Decoration ', 'f-m'),
(1655, 0, 'no', NULL, 'JNJ GLAM JNJ GLAM Soak Off UV/LED Builder Gel', 165.00, '', 0.00, '', 'JNJ Glam builder gel makes your nails look perfect for every day wear.? Our builder gel helps to strengthen your nails and provides a beautiful natural look while promoting longer nails. Can ', 'f-m'),
(1656, 0, 'no', NULL, 'Generic MAJOR DIJIT New Gel Nail Polish Soak UV Gel Polish Top Low Coat Gel Nail Lacquer', 58.00, '', 12.00, '', 'MAJOR DIJIT New Gel Nail Polish Soak UV Gel Polish Top Low Coat Gel Nail Lacquer Specification: Package content: ', 'f-m'),
(1657, 0, 'no', NULL, 'Generic Water Transfer Pink Red Rose Flowers Design Nail Sticker', 51.00, '', 10.00, 'Pink, Red', '- Paint your nails whatever base color you like. Wait for your nails to dry a bit. - Cut out your nail decals with scissors so all you have is the design. - Peel off the clear plastic cover f', 'f-m'),
(1658, 0, 'no', NULL, 'Liplasting Simulation Flower Nail Art Sticker Watermark Decal Manicure Accessories', 85.00, '', 0.00, '', 'Its special design will make you look unique. It is a good gift for your lover,family,friend and coworkers. Its great for manicures simple and easy to use. The guides are flexible and perfect', 'f-m'),
(1659, 0, 'no', NULL, 'Generic 4pcs Gradient Color Starry Sky Nail Art Sponge (White)', 87.00, '', 13.00, 'White', 'Material: Sponge Size( L x W x H ): 4.9 x 1.9 x 1.9 cm To coating first impression First coating is dry completely, nail on coated sponge gradient tool with the selected color (from deep to s', 'f-m'),
(1660, 0, 'no', NULL, 'Qibest Cute Starfish Twisted Above Knuckle Band Midi Finger Nail Ring  D', 60.00, '', 20.00, '', 'Cute Starfish Twisted Above Knuckle Band Midi \r\nFinger Nail Ring D  Description: Package \r\nincluding: ', 'f-m'),
(1661, 0, 'no', NULL, 'Sunshine Nail Separators Stretchers Loop Bunion Splint Straightener Toe Straightener-1', 64.00, '', 10.00, '', 'Specifications: Material: Silica Gel Color: White Quantity: 2 Pcs/ 1 Pair Size: 7.3 x 2.5 cm/ 2.9 x 1 inch Function: Stretches and Aligns Bent Toes Soft and comfortable, soothingly separates ', 'f-m'),
(1662, 0, 'no', NULL, 'Bluelans Clear Nail Art Jelly Stamper Stamp Scraper Set Polish Stamping Manicure Tools Purple', 80.00, '', 0.00, 'Blue, Purple', 'Specifications: New arrival nail art stamper scraper set. Transparent, good elasticity and durable. Create your own beautiful style nail design. Suitable for professional and home use. Type: ', 'f-m'),
(1663, 0, 'no', NULL, 'Generic Poly Gel Lasting False Nails Liquid Double-end Nail Brush Pusher Dead Skin Set', 196.00, '', 12.00, '', 'Poly Gel Lasting False Nails Liquid Double-end Nail Brush Pusher Dead Skin Set Feature:  Name: Poly gel set Volume: 30ml Colors: 6 color to chose Weight: 190g Lamp:UV&LED lamp Poly Gel is mor', 'f-m'),
(1664, 0, 'no', NULL, 'Liplasting Metal Head Nail Art Dotting Pen Drill Point Flower Line Rhinestones Tip Painting Drawing UV Gel Polish 3D DIY Tools', 104.00, '', 0.00, '', 'Exquisite design, metallic body, studded with rhinestone, comfortable and easy to handle. Inner with 5 different size dotting head, removable changeable and portable. The body can be used as ', 'f-m'),
(1665, 0, 'no', NULL, 'Generic Hair Beard Growth Thicker Essence Mustache Fast Grow Eyebrow Essence 30ML', 87.00, '', 12.00, '', 'Hair Beard Growth Thicker Essence Mustache Fast Grow Eyebrow Essence 30ML Feature:  Activate the hair follicles, solid hair root, check to take off the hair; Repair hair follicle, grow new ha', 'f-m'),
(1666, 0, 'no', NULL, 'Onyyx By Gaga Onyyx By Gaga 15ml Gel Polish - Yellow - Mustard', 125.00, '', 0.00, 'Yellow', 'Mustardis a deep yellow colour that is super gorgeous and adventurous.?Onyyx By Gaga?soak off gel polish applies like polish and cures in a LED lamp in?30 seconds?or?2 minutes in a regular UV', 'f-m'),
(1667, 0, 'no', NULL, 'Generic Bobuniu  LED UV Nail Gel Curing Lamp Light Nail Gel Polish Dryer Nail Art Machine', 50.00, '', 13.00, '', 'LED UV Nail Gel Curing Lamp Light Nail Gel Polish Dryer Nail Art Machine Description More features: Package included ', 'f-m'),
(1668, 0, 'no', NULL, 'Bluelans Silicone Nail Art Cushion Pillow Hand Holder Nail Arm Rest Manicure Tool Purple', 84.00, '', 0.00, 'Blue, Purple', 'Specifications: Fashion style, easy to use and comfortable. Soft material available, professional nail art product. Place your hand on the pillow directly. This fashion cushion is very profes', 'f-m'),
(1669, 0, 'no', NULL, 'Generic Poly Gel Lasting Finger Nail Crystal Jelly Camouflage UV Lamp Extension 30ML', 89.00, '', 12.00, '', 'Poly Gel Lasting Finger Nail Crystal Jelly Camouflage UV Lamp Extension 30ML Description: How to Use: Package Content: ', 'f-m'),
(1670, 0, 'no', NULL, 'Onyyx By Gaga Onyyx By Gaga 15ml Gel Polish - Fuchsia Pink - Fush Pink', 125.00, '', 0.00, 'Fuchsia, Pink', 'Fush Pink is a fuchsia pink gel polish.?Ready to grace your nails is this pretty pink polish that\'s bright enough to make anyone\'s day.?Onyyx By Gaga?soak off gel polish applies like polish a', 'f-m'),
(1671, 0, 'no', NULL, 'Generic Equivalentt Thickness Builder Gel Nails Pink Finger Nail Gel Cover Nail Extender Camoufla', 51.00, '', 13.00, 'Pink', 'feature: ', 'f-m'),
(1672, 0, 'no', NULL, 'Bluelans Blue Lans Nail Art Stickers With Case', 81.00, '', 0.00, 'Blue', 'These  nail art DIY stickers are made of transparent rhinestones, and in various shapes. They are suitable to use on top of nail polish, UV builder gel,acrylic. And you can also use them to d', 'f-m'),
(1673, 0, 'no', NULL, 'Fashion Fancyqube LULAA Matte Scrub Polish Dual-Use Super Matte Transfiguration Gel Nail Polish Top Coat Frosted Surface Oil', 80.00, '', 17.00, '', 'No Description Available', 'f-m'),
(1674, 0, 'no', NULL, 'Qibest 6PC Series Of Fluorescent Neon Luminous Gel Nail Decoration For Glow In Dark', 75.00, '', 20.00, '', '  ', 'f-m'),
(1675, 0, 'no', NULL, 'Generic Professional Soft Sponge Foam Finger Toe Separator For Nail Beauty Tools Salon Pedicure Manicure Tool One Pair Color Random', 93.00, '', 13.00, '', 'Professional Soft Sponge Foam Finger Toe Separator for Nail Beauty Tools Salon Pedicure Manicure Tool One Pair Color Random Daily nail care, grooming, vibration, scratch wet nail polish, diff', 'f-m'),
(1676, 0, 'no', NULL, 'Generic 1PC Cuticle Pusher UV Gel Polish Soak Off Remover Nail Art Manicure Trimmer Tool', 99.00, '', 12.00, '', '1PC Cuticle Pusher UV Gel Polish Soak Off Remover Nail Art Manicure Trimmer Tool Description: Package include: 1 x Nail Pusher ', 'f-m'),
(1677, 0, 'no', NULL, 'Generic Fashion Black White Elegant Wrapping Medium Long Manicure Patch Nail Sticker (Black)', 57.00, '', 11.00, 'Black, White', 'Beautiful nail in an instant Clean and buff nail lightly Apply nail glue for easiest application and longest wear Press and hold Finger  Plastic  Full Nail Tips Array 0.030 kg  11.00 x 6.50 x', 'f-m'),
(1678, 0, 'no', NULL, 'Beauty Dry Heat Sterilizer Cabinet Dental Autoclave Elegant Dental Medical Vet Tattoo', 126.00, '', 11.00, '', 'Note: Please allow slight 1-3cm difference due to manual measurement and a little color variation for different display setting. Thank you for your understanding!           ', 'f-m'),
(1679, 0, 'no', NULL, 'Forever Living Royal Jelly', 300.00, '', 10.00, '', 'Royal Jelly is a wonder of Research, it contains 18 amino  acids [8 EAA & 10 NEAA] Minerals, Vitamin A, B complex esp. B5 which is vital for synthesis and metabolism of protein, C,D and E, Fa', 'f-m'),
(1680, 0, 'no', NULL, 'Supreme Gluta White Skin Whitening Pills - 1500000 Mg', 165.00, '', 13.00, 'White', 'GLUTATHIONE is growing in popularity for its health and skin benefits, especially skin whitening, which many people are taking advantage of, and getting amazing results. One of the Reasons be', 'f-m'),
(1681, 0, 'no', NULL, 'HEMANI Herbal Slim & Smart Tea With Green Apple', 150.00, '', 0.00, 'Green', 'Hemani Slim tea with green apple is the safest 100% natural tea which can give you your desired waistline in no time! And you don\'t have to break a bank! It\'s the one most natural and safest ', 'f-m'),
(1682, 0, 'no', NULL, 'Forever Living Forever Kids Chewable Multivitamins', 200.00, '', 0.00, '', 'Give your kids the nutrients they need each day with Forever Kids Chewable Multivitamins. These fun and delicious, grape flavored multivitamins provide both adults and growing kids ages two a', 'f-m'),
(1683, 0, 'no', NULL, 'Forever Living Forever Living - Forever Ginkgo Plus', 280.00, '', 0.00, '', 'This unique synergistic blend of four ancient medicinal plants namely ; GINKGO BILOBA LEAF EXTRACTS, GANODERMA FROM REISHI MUSHROOM, SCHISANDRA AND CHINESE FORTI. These are powerful ancient C', 'f-m'),
(1684, 0, 'no', NULL, 'Bazouka Penis Enlargement (Growth,Performance & Fertility) Dietary Supplement Capsules', 73.00, '', 9.00, '', 'Bazouka dietary supplement pills?is a tried and tested formula, used by over 500,000 men around the world, that has been helping achieve size gains for the last 12 years. Being made from a sp', 'f-m'),
(1685, 0, 'no', NULL, 'MycoBotanicals Myconutri Chaga Science Based Mushroom  Capsules', 85.00, '', 0.00, '', '00 Home > Shop by Brand > Myconutri Myconutri Chaga 60 Capsules ?17.48 Currently Out Of Stock Notify me when this item is back in stock Product currently out of stock. Quantity: More Details ', 'f-m'),
(1686, 0, 'no', NULL, 'Forever Living Forever Living - Forever Nature - Min', 210.00, '', 0.00, '', 'FOREVER NATURE-MIN is an advanced multi-mineral formula; it consists of marine-life deposits. It supplies all the mineral elements the body needs to meet daily demands.\r\nIt form and regulates', 'f-m'),
(1687, 0, 'no', NULL, 'White House Apple Cider Vinegar Organic Raw Unfiltered With \'Mother\' 1.89L', 75.00, '', 13.00, 'White', 'This raw unfiltered Apple cider vinegar is also rich in enzymes and potassium, helps control weight and promote digestion & Ph Balance, helps remove body sludge toxins and helps maintain heal', 'f-m'),
(1688, 0, 'no', NULL, 'Hairfinity Healthy Hair Vitamins - 1 Month Supply', 85.00, '', 15.00, '', ' Hairfinity Hair Vitamins is a natural vitamin complex formulated with essential vitamins and nutrients for healthy hair.   Formulated with hair specific nutrients that nourish the hair from ', 'f-m'),
(1689, 0, 'no', NULL, 'MycoBotanicals Myconutri Reishi Science Based Mushroom Nutrition', 92.00, '', 0.00, '', 'Reishi mushrooms are popular in Asia, in cuisine and traditional Chinese medicine. These capsules provide pure Reishi mushroom in a vegetarian capsule without additives. Reishi (Ganoderma luc', 'f-m'),
(1690, 0, 'no', NULL, 'Forever Living Forever Living A-Beta-Care', 300.00, '', 0.00, '', 'Forever A-Beta-Care is an essential formula combining vitamins A (from beta-carotene) and E, plus the antioxidant mineral Selenium. Antioxidants are vital in the fight against free radicals (', 'f-m'),
(1691, 0, 'no', NULL, 'White House Apple Cider Vinegar Organic Raw Unfiltered With \'Mother\' 473ml', 183.00, '', 19.00, 'White', 'This raw unfiltered Apple cider vinegar is also rich in enzymes and potassium, helps control weight and promote digestion & Ph Balance, helps remove body sludge toxins and helps maintain heal', 'f-m'),
(1692, 0, 'no', NULL, 'SlimFast SlimFast Summer Strawberry Flavour Shake', 76.00, '', 5.00, '', 'Need to drop a few pounds fast? No worries. Whatever the reason, slimfast is here to help you get what you really want. By swapping two meals per day for delicious slimfast protein meal bars ', 'f-m'),
(1693, 0, 'no', NULL, 'Longrich Green  Tea', 114.00, '', 12.00, 'Green', 'This tea?helps to remove bilirubin and check its production; it?s good for the\r\n     liver, stomach, a good detoxifier, it purifies the blood, it also checks ?destruction of the red cell duri', 'f-m'),
(1694, 0, 'no', NULL, 'Universal Anti-snore Chin Strap - Snore Stopper', 98.00, '', 10.00, '', 'No Description Available', 'f-m'),
(1695, 0, 'no', NULL, 'Glutathione Glutathione Glutathione Pills 1500000mg And Acorbic Vitamin C - 1000mg', 79.00, '', 15.00, '', 'GLUTATHIONE is growing in popularity for its health and skin benefits, especially skin whitening, which many people are taking advantage of, and getting amazing results. One of the Reasons be', 'f-m'),
(1696, 0, 'no', NULL, 'Wan Song Tang Flat Tummy Tea (Night Boost) (28 Day Tea Bags)', 157.00, '', 12.00, 'Tan', '100% natural with moringa and oolong wu yi, Flat Tummy Tea helps to eliminate the unnecessary bulge around the tummy while melting abdominal fat. Flat Tummy Tea kicks the bulge that makes you', 'f-m'),
(1697, 0, 'no', NULL, 'Pep Pod Berry Nutrient Rich Energy (4Sachets)', 95.00, '', 10.00, '', 'Bright, delicious berry flavor! PepPod is a healthy, natural energy tablet with 10X more nutrients than its closest competitors. Each pod gives you the energy you need, the way your body was ', 'f-m'),
(1698, 0, 'no', NULL, 'Bella Cream Must Up Powerful Herbal Extracts Breast Enlargement And Firming Cream', 60.00, '', 16.00, '', 'Bella must up cream is a unique cream formulation that absorbs very \r\nquickly in the breast to penetrate deeply, by stimulating breast \r\nhormones to work faster to increase the breast tissues', 'f-m'),
(1699, 0, 'no', NULL, 'Forever Living Aloe Vera Gel', 240.00, '', 20.00, '', 'Imagine slicing open an Aloe leaf and consuming the gel directly from the plant. Our Forever Aloe Vera Gel is as close to the real thing as you can get.\r\nThe miraculous aloe leaf has been fou', 'f-m'),
(1700, 0, 'no', NULL, 'Apetamin 2 Bottles Of Apetamin Weight Gain Syrup - Butt And Hips Enlargement', 230.00, '', 10.00, '', 'Are you skinny, thin, slim, or you are not happy with your body small size?There it goes Apetamin contains a unique combination of Cyproheptadine, Lysine and Vitamins. Cyproheptadine and lysi', 'f-m'),
(1701, 0, 'no', NULL, 'Forever Living Forever Living - Forever Garcinia Plus', 70.00, '', 0.00, '', 'Forever Living Garcinia Plus is a dietary supplement that contains all the essential nutrients needed for weight loss. The main ingredient in this supplement is a natural substance derived fr', 'f-m'),
(1702, 0, 'no', NULL, 'Forever Forever Living Sonya Kit', 75.00, '', 0.00, '', 'Skin perfection,keeps your natural skin at its bestMaintaining overall skin conditions?Skin moisturizing?Skin balanceSkin perfection?Keeps your natural skin at its best . ', 'f-m'),
(1703, 0, 'no', NULL, 'Forever Living Forever Living - Forever B12 Plus', 150.00, '', 0.00, '', 'An excellent combination of essential nutrients, Forever B12 Plus combines Vitamin B12 with Folic Acid utilizing a time-release formula to help make possible metabolic processes - including c', 'f-m'),
(1704, 0, 'no', NULL, 'Major Curves Effective Butt Enhancement Dietary Capsules', 255.00, '', 12.00, '', '2 or more bottles for customers above 27-29 years to get best result. Major Curves? Butt Enhancement Pills are the most effective, powerful butt enhancement supplements that have helped hundr', 'f-m'),
(1705, 0, 'no', NULL, 'Acorbic C-1000mg Vitamin C Supplement - 30 Capsules', 182.00, '', 11.00, '', 'Every product undergoes\r\nrigorous analysis for purity, potency, safety and freshness.\r\nVitamin C is a water-soluble vitamin, meaning that your body\r\ndoesn\'t store it. You need vitamin C for t', 'f-m'),
(1706, 0, 'no', NULL, 'flattummytea Flat Tummy Tea With Moringa (Night Boost) (28 Tea Bags)', 82.00, '', 14.00, '', '100%\r\n natural with moringa and oolong, Flat Tummy Tea helps to eliminate the \r\nunnecessary bulge around the tummy while melting abdominal fat. Some \r\ntoxins build up along the intestinal tra', 'f-m'),
(1707, 0, 'no', NULL, 'Fruit Aperture Belly Fat Burner', 70.00, '', 11.00, '', 'Gets rid of Belly Fat, Lower abdominal Fat and Visceral Fat without side effects. You will love this product. 100% herbal. Dosage: (60 pills) one red soft cap in the morning. One green soft c', 'f-m'),
(1708, 0, 'no', NULL, 'Kiyome Kinoki Cleansing Detox Foot Pads - 10 Pieces', 75.00, '', 0.00, '', 'For hundreds of years, eastern medicine understood toxins traveled downwards in the body accumulating in the tips of our toes and ankles. They also understood that toxin accumulation lead to ', 'f-m'),
(1709, 0, 'no', NULL, 'Bragg Organic Apple Cider Vinegar (Raw/Unfiltered) With \' The Mother\' - 946ml, 32oz', 298.00, '', 8.00, '', 'Aged in Wood Raw-Unfiltered Go Organic Made from 100% Organic Apples USDA organic Kosher Contains no Preservatives Serving Health to America Since 1912 Bragg Organic Raw Apple Cider Vinegar i', 'f-m'),
(1710, 0, 'no', NULL, 'Beauty Quantum Magnetic Resonance Health Body Analyzer 48 Report 4th Generation 2017', 97.00, '', 11.00, '', 'No Description Available', 'f-m'),
(1711, 0, 'no', NULL, 'Mountain Anti-snore Nose Clip - Snore Stopper With Fixation Magnet', 99.00, '', 10.00, '', 'Get a decent snore-free night\'s sleep Eliminate or relieved snoring effectiveness Fits gently into nostrils, holding them wider apart and making breathing easier and quieter Make nasal cavity', 'f-m'),
(1712, 0, 'no', NULL, 'Generic Anti Snore Chin Strap Care Sleep Stop Snoring Chin', 65.00, '', 0.00, '', 'No Description Available', 'f-m'),
(1713, 0, 'no', NULL, 'Curvhance Natural Body Enhancement (Buttocks, Hips & Breast)', 85.00, '', 12.00, '', 'Each pill is packed with powerful, natural ingredients designed to promote growth in the buttocks, hips and breasts while getting rid of extra water weight helping you eliminate belly bloat s', 'f-m'),
(1714, 0, 'no', NULL, 'Dermis Vitamins Dermis Vitamins Anti-Acne Tablets', 51.00, '', 0.00, '', 'Dermis Vitamins Anti-Acne Formula offers you an all natural way to fight acne and get a clean,healthy-looking skin.It is rich in natural anti-oxidants that improve the appearance of acne pron', 'f-m'),
(1715, 0, 'no', NULL, 'Universal Fat Slimming Electric Belt- Massager', 235.00, '', 11.00, '', 'Features:1. Can be used on waist, arm, thigh, shank,and shoulder to reduce fat and relieve fatigue.2. Works in Vibration, promotes matebolism and blood circulation, so that to reduce fat more', 'f-m'),
(1716, 0, 'no', NULL, 'Universal Blood Pressure Monitor - Arm Sphygmanometer', 75.00, '', 13.00, '', 'Input: AC 90-260 (USB\r\n/ Power supply). Measurement mode:\r\nOscillometric method. Pressure range:\r\n0-37.3kpa(0-280mmhg). Pulse range: 40-199\r\ntimes/min. Wrist band display\r\nrange: 0-39.9kpa(0-', 'f-m'),
(1717, 0, 'no', NULL, 'Manicure Set 12Pcs Nail Care Personal Manicure & Pedicure Set Travel Grooming Kit Men/Women', 150.00, '', 11.00, '', 'No Description Available', 'f-m'),
(1718, 0, 'no', NULL, 'Generic Professional 2 Faces Nail File Buffer Polishing Block Nail Art Manicure Sponge Sanding Buffing Tools Style:Nail Polish', 92.00, '', 17.00, '', 'Description: Item type: Nail Art Sanding Block Application: Suitable for professional and home use. Item size: 9*4*1.4cm Item weight: 8g Gross weight: 18g Color: Blue + White Style: Modern Pa', 'f-m'),
(1719, 0, 'no', NULL, 'Generic 2pcs Nail Dissolver Bowls And 2pcs Nail Files.', 150.00, '', 13.00, '', 'Nail Dissolver Bowls are very useful for dissolving artificial nails. Pour dissolver into each compartment and deep fingers for as long as necessary, dissolve both acrylic and normal nails wi', 'f-m'),
(1720, 0, 'no', NULL, 'Generic 120Pcs/Box Onychocryptosis Correction Patch Stickers Toenails Appliance Tools Specification:120pcs In A Box', 154.00, '', 17.00, '', 'Description: Item type: Onychocryptosis Correction Patch Color: As shown Size: Free size Net weight: 30g Quantity: 120pcs Package includes: 1 * Onychocryptosis Correction Patch Box (120pcs) F', 'f-m'),
(1721, 0, 'no', NULL, 'Generic Fashion Pointing Painting Drawing Pen Design Nail Tip Nail Brush Decoration', 61.00, '', 17.00, '', 'No Description Available', 'f-m'),
(1722, 0, 'no', NULL, 'Generic 500 White False French Nail Art Tips Uv Acrylic 064', 61.00, '', 17.00, 'White', 'Package includes:1 X CyberStyle(TM) 500 White False French Nail Art Tips Uv Acrylic 064 ', 'f-m'),
(1723, 0, 'no', NULL, 'Generic 2pcs Nail Dissolver Bowls', 130.00, '', 13.00, '', 'Nail Dissolver Bowls are very useful for dissolving artificial nails. Pour dissolver into each compartment and deep fingers for as long as necessary, dissolve both acrylic and normal nails wi', 'f-m'),
(1724, 0, 'no', NULL, 'Generic 2pcs Nail Dissolver Bowls And 2pcs Nail Files.', 150.00, '', 13.00, '', 'Nail Dissolver Bowls are very useful for dissolving artificial nails. Pour dissolver into each compartment and deep fingers for as long as necessary, dissolve both acrylic and normal nails wi', 'f-m'),
(1725, 0, 'no', NULL, 'Generic Peel Off Gel Nail Polish Color Changing Nail Art Cosmetic Polish 10ML', 53.00, '', 12.00, '', 'Peel Off Gel Nail Polish Color Changing Nail Art Cosmetic Polish 10ML  Feature:  1PC  10ml For A Super-Durable Finish Faster Drying Item: Fast-dry nail polish A professional Nail Art Gift for', 'f-m'),
(1726, 0, 'no', NULL, 'Scholl Velvet Smooth With Foot Massager - B', 160.00, '', 11.00, '', 'This helps get your soft beautiful feet effortlessly. Velvet Smooth? Roller Head with long lasting micro-abrasive particles now comes with finely ground diamond crystals. It buffs away hard s', 'f-m'),
(1727, 0, 'no', NULL, 'Generic 2pcs Nail Dissolver Bowls', 130.00, '', 13.00, '', 'Nail Dissolver Bowls are very useful for dissolving artificial nails. Pour dissolver into each compartment and deep fingers for as long as necessary, dissolve both acrylic and normal nails wi', 'f-m'),
(1728, 0, 'no', NULL, 'Generic 100 Pcs/500 Pcs Nail Form Sticker Square Sharp Self-Adhesive Manicure Tool For Acrylic UV Gel Specification:Red Butterfly 500 / Roll', 276.00, '', 17.00, 'Red', 'Description: Item type: Nail Art Stickers Applicable: Nail Art Color: As shown Specifications: 500pcs/roll, 100 pcs/bag Package includes: 1 * Nail Art Stickers(500pcs or 100pcs) Features: --H', 'f-m'),
(1729, 0, 'no', NULL, 'Sally Hansen Mixed Set Of 6 Feb 6 Nail Polish', 75.00, '', 12.00, '', 'Match\r\nyour manicure to your mood! Fun, trendy shades - collect them all and change\r\nyour nail polish as often as you like! With\r\npatented micro-shine complex for reflective brilliance and Xt', 'f-m'),
(1730, 0, 'no', NULL, 'HeelTastic Heel Tastic Intesive Therapy Feet Balm', 115.00, '', 0.00, '', 'Heel Tastic is the incredible, easy to use roll-on cracked heel renewal that helps soothe, relieve and soften. It takes away those dry, cracked heels for a healthy, clean look. It\'s made with', 'f-m'),
(1731, 0, 'no', NULL, 'PediSpin Pedispin Callus & Dry Skin Remover', 85.00, '', 14.00, '', 'Gentle and light strokes of feet-teasing under the dinner table are always a turn on but doing it with coarse and cracked heels is a definite no-no. Keep your heels in baby-soft condition wit', 'f-m'),
(1732, 0, 'no', NULL, 'Ped Egg Foot File With 2 Emery Finishing Pads', 75.00, '', 0.00, '', 'Select from a wide range of Unique products on Jumia and enjoy convenient and secure online shopping, nationwide delivery, guaranteed products and competitive pricing. ', 'f-m'),
(1733, 0, 'no', NULL, 'Generic SUN X 48 / 54W UV / LED Nail Dryer Gel Polish Curing Lamp', 65.00, '', 13.00, '', ' Enjoy your beautiful manicure or pedicure with the nail dryer! The fast, safe and odorless curing lamp is used for drying gel on both fingernails and toenails. Designed for professional nail', 'f-m'),
(1734, 0, 'no', NULL, 'Generic 2pcs Nail Dissolver Bowls', 130.00, '', 13.00, '', 'Nail Dissolver Bowls are very useful for dissolving artificial nails. Pour dissolver into each compartment and deep fingers for as long as necessary, dissolve both acrylic and normal nails wi', 'f-m'),
(1735, 0, 'no', NULL, 'Generic 10pcs Nail Art Salon Pedicure Soft Sponge Toe Separator Practical', 150.00, '', 11.00, '', 'Specifications: These handy toe and finger separators are extremely useful and convenient when giving manicure and pedicure. Cushioned separators keep you comfortable and give ample space for', 'f-m'),
(1736, 0, 'no', NULL, 'HeelTastic Cracked Heel Removal And Therapy Balm', 115.00, '', 15.00, '', 'Heel Tastic is a natural remedy to remove the roughness of the skin on the heels and feet. Its versatile formula ever save you from dry and cracked skin! Use it daily to areas of dry skin, an', 'f-m'),
(1737, 0, 'no', NULL, 'Generic 1Set/70pcs Metal Shiny Acrylic UV Gel False Nail Art Design Tips', 82.00, '', 16.00, '', 'Package Include: ', 'f-m'),
(1738, 0, 'no', NULL, 'Generic 10pcs Nail Art Salon Pedicure Soft Sponge Toe Separator Practical', 150.00, '', 11.00, '', 'Specifications: These handy toe and finger separators are extremely useful and convenient when giving manicure and pedicure. Cushioned separators keep you comfortable and give ample space for', 'f-m'),
(1739, 0, 'no', NULL, 'Palmer\'s Cocoa Butter Foot Magic Scrub', 141.00, '', 15.00, '', 'Pure Cocoa Butter, enriched with Vitamin E and other natural emollients, provides a deep penetrating treatment for the feet. This unique formulation moisturises, softens and smoothes even the', 'f-m'),
(1740, 0, 'no', NULL, 'Generic 10Pcs/lot Nail Art Brush Set Different Manicure Brushes Stainless Steel Handle', 190.00, '', 11.00, '', 'Description: A set of perfect tools for your nail art. Total 10pcs complete set of nail art tools. Including large nail art acrylic design pen, mini nail art acrylic design pen, plain head na', 'f-m'),
(1741, 0, 'no', NULL, 'Generic 10pcs Nail Art Salon Pedicure Soft Sponge Toe Separator Practical', 150.00, '', 11.00, '', 'Specifications: These handy toe and finger separators are extremely useful and convenient when giving manicure and pedicure. Cushioned separators keep you comfortable and give ample space for', 'f-m'),
(1742, 0, 'no', NULL, 'Generic Combo Moisturizing And Exfoliating Foot Peel Mask Smoothing Foot Skin Care', 100.00, '', 13.00, '', 'Product efficacy: remove the foot cuticles and calluses, repair the skin, relieve skin dryness, nutritious and moisturizing. Easy to apply Just apply and let the foot mask peel do its work. E', 'f-m'),
(1743, 0, 'no', NULL, 'HeelTastic Cracked Heel Removal', 115.00, '', 14.00, '', 'Heel Tastic is a natural remedy to remove the roughness of the skin on the heels and feet. Its versatile formula ever save you from dry and cracked skin! Use it daily to areas of dry skin, an', 'f-m'),
(1744, 0, 'no', NULL, 'Generic 1Pair Soft Silicone Toes Separator Fingers Pedicure Separators As Flower-shaped DIY Nail Art Tools Random Color', 52.00, '', 17.00, '', 'Description: Item type: Toes Separator Applicable: Nail polish art Color: Random color Weight: 20g Material: Silicone Package includes: 1 * Toes Separator Pair Features: --Super Soft --Perfec', 'f-m'),
(1745, 0, 'no', NULL, 'Generic 2pcs Nail Dissolver Bowls And 2pcs Nail Files.', 150.00, '', 13.00, '', 'Nail Dissolver Bowls are very useful for dissolving artificial nails. Pour dissolver into each compartment and deep fingers for as long as necessary, dissolve both acrylic and normal nails wi', 'f-m'),
(1746, 0, 'no', NULL, 'Generic Combo Moisturizing And Exfoliating Foot Peel Mask Smoothing Foot Skin Care', 100.00, '', 17.00, '', 'Moisturizing And Exfoliating Foot Peel Mask Product efficacy: remove the foot cuticles and calluses, repair the skin, relieve skin dryness, nutritious and moisturizing. Easy to apply Just app', 'f-m'),
(1747, 0, 'no', NULL, 'Universal SONKIN FOOT DIGITAL MASSAGER', 98.00, '', 16.00, '', 'Material :?Plastic, digital buttons, massage mechanism. This is not th usual type as it can massage other body parts. Digital and easy to control at home or at a beauty studio ', 'f-m'),
(1748, 0, 'no', NULL, 'Universal Foot Massage Scholl SPA', 82.00, '', 0.00, '', 'A water-resistant \"toe-touch\" keep an eye fixed on in a very simple to \r\ntap location lend a hands stop spills and makes setting adjustments easy\r\n with the contact of a finger or a toe.relax', 'f-m'),
(1749, 0, 'no', NULL, 'Generic 2pcs Nail Dissolver Bowls', 130.00, '', 13.00, '', 'Nail Dissolver Bowls are very useful for dissolving artificial nails. Pour dissolver into each compartment and deep fingers for as long as necessary, dissolve both acrylic and normal nails wi', 'f-m'),
(1750, 0, 'no', NULL, 'Generic Professional Sponge Nail Files, Washable Double Sided Grit Nail Buffering File - Random Delivery', 92.00, '', 17.00, '', 'Description Product category: Nail Files Type: Double Sided Apply: Nail care Crowd: General Product color: Pink/Purple/Blue/Orange/Yellow (RANDOM) Shape: Rhombus/Round/Rectangle (RANDOM) Prod', 'f-m'),
(1751, 0, 'no', NULL, 'Generic Callus Remover (Battery Operated)', 68.00, '', 14.00, '', ' Your\r\n feet have been working hard for you all day long ? they are trapped in \r\nshoes and suffer the stress and suspension while you are walking, doing \r\nsports, standing and dancing etc. Al', 'f-m'),
(1752, 0, 'no', NULL, 'Generic Manicure Care Salon Half Hand Cushion Rest Pillow Nail Art Design Soft Column', 92.00, '', 16.00, '', 'Manicure Care Salon Half Hand Cushion Rest Pillow Nail Art Design Soft Column Features: Package List: ', 'f-m'),
(1753, 0, 'no', NULL, 'Generic Nail Art Dotting Painting Drawing Pen Double-headed Polish Brush', 73.00, '', 12.00, '', 'Nail Art Dotting Painting Drawing Pen Double-headed Polish Brush  Handle Material: Aluminum  Head Material: nylon hair  Case size: 20 * 1.5 * 1.5cm  Pen Size: 14.8cm * 1.1cm  Perfect suitable', 'f-m'),
(1754, 0, 'no', NULL, 'Generic Women\'s Christmas 3D Nails Water Transfer Stickers Finger', 68.00, '', 12.00, '', 'Feature: Very easy to use: ', 'f'),
(1755, 0, 'no', NULL, 'Bradex Skin Callus Remover Pedicure Foot Scraper - White', 100.00, '', 17.00, 'White', 'This foot scraper effectively removes corns,? callouses and hard skin,? it is safe and easy to use. Can be taken to the saloon for pedicure and manicure, this foot scraper effectively removes', 'f-m'),
(1756, 0, 'no', NULL, 'Lanthome Beard Balm Cream', 200.00, '', 14.00, '', 'How to use: Beard Balm: Apply a proper amount of wax to the long beard until it is absorbed, once in the morning and evening, to shape, care and moisturize the beard. ', 'm'),
(1757, 0, 'no', NULL, 'Generic Digital Multimeter LCD Ammeter Resistance Capacitance Tester(BlackYellow)', 190.00, '', 12.00, 'Black', 'Specification: Size: 190mmx90mmx30mm/7.5x3.5x1.9inch Maximum voltage between terminals and earth ground: 1000DC or 700VAC Fuse proteciton: F 200mA/250V Power: 9V battery, NEDA 1604 0r 6F22 Di', 'm'),
(1758, 0, 'no', NULL, 'Oalen Beard Growth Oil- 100% Organic', 200.00, '', 11.00, '', 'The beard oil is a perfect hair loss conditioner beard oil. Made from 100% natural organic almond oil.It\'s soft and tames beard hair. It\'s suitable for all beard types.Moisturises facial hair', 'm'),
(1759, 0, 'no', NULL, 'The Shaving Co Beard Oil _ 60ml', 260.00, '', 9.00, '', 'The Shaving Co. Beard Oil is a 100% natural beard oil that Grows, Softens and Stops itching of your beard. It is made from Vitamin E oil, Almond Oil, Chamomile Oil and Jojoba oil. Basically, ', 'm'),
(1760, 0, 'no', NULL, 'Gillette Mach3 Turbo Razor Cartridge, 4 Count', 160.00, '', 0.00, '', 'Turbocutting blades provide a closer shave without all the irritation*. They are treated with Advanced Anti-Friction Coating allowing the Mach3 Turbo to remove each hair with less irritation ', 'm'),
(1761, 0, 'no', NULL, 'Gillette Mach3 Shaving Razor', 88.00, '', 0.00, '', 'The Gillette Mach3 men\'s razor is a 3-bladed razor that millions of men trust for their morning start. Gillette Mach3 features 3 DuraComfort blades for enhanced comfort and an easier shave, w', 'm'),
(1762, 0, 'no', NULL, 'Gillette Fusion ProGlide Shaving Razor', 66.00, '', 0.00, '', 'Flexible ProGlide Shaving Blade comes with a battery powered ?handle which ?provides soothing ?micro ?pulses?that ?gives ?closer shave ', 'm'),
(1763, 0, 'no', NULL, 'Gillette Mach3 Turbo Shaving Razor', 160.00, '', 0.00, '', 'Turbocutting blades provide a closer shave without all the irritation*. They are treated with Advanced Anti-Friction Coating allowing the Mach3 Turbo to remove each hair with less irritation ', 'm'),
(1764, 0, 'no', NULL, 'Gillette Blue 3 Disposable Razor, 8 Count', 78.00, '', 0.00, 'Blue', 'Gillette Blue 3 disposable razor one of the best, which at any moment, any time you can conjure smooth and fresh face. The result is a thorough clean-shaven, supremely smooth skin. Product Fe', 'm'),
(1765, 0, 'no', NULL, 'The Bearded Feller Bearded Fellers Green Timber Reserve Beard Oil Conditioner', 270.00, '', 17.00, 'Green', 'Great Beards start with healthy skin.The Bearded Feller uses a proprietary blend of Morroccan Argan, Sweet Almond, and Apricot Kernel Oils. These oils have been hand selected to provide your ', 'm'),
(1766, 0, 'no', NULL, 'Gillette Blue II Plus Disposable Razor For Men ? 5 Count', 70.00, '', 0.00, 'Blue', 'Gillette has been in the heart of men?s grooming ?for over 100 years. Each day, more than 600 million men around the world trust their faces and skin to Gillette innovative razors and shaving', 'm'),
(1767, 0, 'no', NULL, 'Jordache Men Moisturizing Shaving Gel With Aloe Vera - 5.9 Oz', 60.00, '', 20.00, '', 'Jordache men moisturizing shaving gel with aloe vera and vitamin  moisturizes and lubricates even the toughest beard for a comfortable and close shave ', 'm'),
(1768, 0, 'no', NULL, 'Gillette Mach3 Men\'s Razor Cartridge, 2 Count', 93.00, '', 0.00, '', 'The Gillette Mach3 men\'s razor blade refills are the 3-bladed razor blades that millions of men trust for their morning start. Gillette Mach3 blades feature 3 DuraComfort blades for enhanced ', 'm'),
(1769, 0, 'no', NULL, 'Flyco Rechargeable Shaver (Reciprocating-Type Razor/Clipper)', 250.00, '', 17.00, '', 'No Description Available', 'm'),
(1770, 0, 'no', NULL, 'The Bearded Feller  HUNTSMAN BEARD BALM - STALWART & STEADFAST  The Bearded Feller', 65.00, '', 13.00, '', 'High hold. Low Shine. When all the elements are against you, you\'ve always got a huntsman by your side. Our hand-blended, heavy?weight Huntsman?beard balm is formulated for guys that are in n', 'm'),
(1771, 0, 'no', NULL, 'Lanthome Beard Balm Cream And Beard Oil Combo', 250.00, '', 10.00, '', 'How to use: Beard oil: Wash your face, take a proper amount of oil in the long beard until it is absorbed, once in the morning and evening, with the effect of nourishing the beard.?Beard wax:', 'm'),
(1772, 0, 'no', NULL, 'Generic 4 In 1 Personal Waterproof Rechargeable Electric Men Ear Nose Trimmer Machine', 200.00, '', 13.00, '', 'No Description Available', 'm'),
(1773, 0, 'no', NULL, 'The Bearded Feller RIPARIAN BEARD BALM - CONDITION & REPAIR  The Bearded Feller', 65.00, '', 15.00, '', 'High?Shine. Low Hold. Condition & Repair your beard while providing body and hold. Our hand-blended, light weight Riparian beard balm is formulated for guys with shorter beards, or beards tha', 'm'),
(1774, 0, 'no', NULL, 'Safecut Aftershave - 125 Ml - X6', 105.00, '', 16.00, '', 'This product offers a triple action value proposition in its ability for use as an aftershave, bump stopper, and cleanser. Safecut aftershave spray is specially formulated to guarantee a whol', 'm'),
(1775, 0, 'no', NULL, 'The Bearded Feller BACK FORTY BEARD CONDITIONER  The Bearded Feller', 273.00, '', 11.00, '', 'The Back Forty transports you to that untouched patch of woods deep in the heart of the forest. The fresh, vibrant scents of springtime pair with the woody undertones of Texas Cedar, Rosewood', 'm'),
(1776, 0, 'no', NULL, 'Beard Oil Instant Facial Hair Growth - 30ml', 113.00, '', 16.00, '', 'Beard Oil is a 100% natural organic oil that Grows, Softens and Stops itching of your beard. It is made from Vitamin E oil, Zingiber officinale root oil, Juniperus virginiana oil, Rosmarinus ', 'm'),
(1777, 0, 'no', NULL, 'High Time Dare To Be Bald Protective Scalp Treatment', 175.00, '', 15.00, '', 'HIGH TIME MOISTURIZER is designed, protect and treat the skin against excessive flaking and irritation. When used on the scalp after shaving the head closely it helps eliminate ingrown hairs,', 'm'),
(1778, 0, 'no', NULL, 'Spartan Beard Co Beard Balm - 60ML', 62.00, '', 10.00, '', 'The?Spartan Beard Co. BEARD BALM is blended with locally harvested beeswax and organic oils to give your beard a nice shine, control and condition while helping to eliminate the crazy rogue b', 'm'),
(1779, 0, 'no', NULL, 'Gillette Blue II Plus Disposable Razor For Men ? 5 Count (Pack Of 2)', 60.00, '', 0.00, 'Blue', 'Gillette has been in the heart of men?s grooming ?for over 100 years. Each day, more than 600 million men around the world trust their faces and skin to Gillette innovative razors and shaving', 'm'),
(1780, 0, 'no', NULL, 'The Bearded Feller Boar Bristle Beard Brush', 190.00, '', 12.00, '', 'Stop the Itch & help make beards great again. This brush is the secret no one tells new Bearded Feller about when it comes to managing itch, exfoliating skin, and maintaining a healthy beard ', 'm'),
(1781, 0, 'no', NULL, 'Gillette Mach3 Men\'s Razor Cartridge, 4 Count', 165.00, '', 0.00, '', 'The Gillette Mach3 men\'s razor blade refills are the 3-bladed razor blades that millions of men trust for their morning start. Gillette Mach3 blades feature 3 DuraComfort blades for enhanced ', 'm'),
(1782, 0, 'no', NULL, 'Aichun Beauty Beard Growth Oil Pure Natural Nutrients- Black', 175.00, '', 10.00, 'Black', 'Do you want to stand out from the crowd with a sleek beard gang look? ?Get hold of this!!! It\'s simple to use and very effective with zero side effects. With this beard oil at hand the sleek ', 'm'),
(1783, 0, 'no', NULL, 'Flyco Electronic Nose & Ear Hairs Trimmer', 175.00, '', 13.00, '', 'This is a great gadget which allow you to quickly and discretely clean up unwanted hairs including nose hair, ear hair, eyebrow, and even stick out beards. The 3 dimensional arch cutter doesn', 'm'),
(1784, 0, 'no', NULL, 'Beard Oil Essential Beard Oil Serum- 40ml', 90.00, '', 13.00, '', 'This Beard Oil is a 100% natural beard oil that Grows, Softens and Stops itching of your beard. It is made from Vitamin E oil, Almond Oil, Chamomile Oil and Jojoba oil. Basically, it has ever', 'm'),
(1785, 0, 'no', NULL, 'Lanbena LANBENA Hair Oil Hair Care Fast Powerful Hair Growth Products Regrowth Essence Liquid Treatment Preventing Hair Loss', 223.00, '', 12.00, '', 'LANBENA fast Powerful hair growth Essence products essential oil liquid treatment hair loss prevention hair and High quality. Type:Essential Oil\r\nEssential Oil Type:Pure Essential Oi\r\nHair Gr', 'm'),
(1786, 0, 'no', NULL, 'The Bearded Feller Premium Crosscut Sandalwood Comb', 70.00, '', 0.00, '', 'Introducing our new line of Precision Cut, Premium Sandalwood Beard and Hair Combs. Say hello to your new favorite wood in your pocket. These combs are certainly more than meets the eye. Each', 'm'),
(1787, 0, 'no', NULL, 'Oalen Beard Balm - 100% Natural Organic', 175.00, '', 14.00, '', 'This beard wax balm is perfect for beard grooming. Made from 100% natural organic oils. Made from natural bee wax oil, sweet almond oil, argan oil, shea butter, coconut oil, tea tree oil. App', 'm'),
(1788, 0, 'no', NULL, 'Alorepair Hair Growth Treatment', 175.00, '', 0.00, '', 'ALOREPAIR is a topical solution for the treatment of alopecia androgenetica (male pattern baldness of the vertex of the scalp and in females as diffuse hair loss or thinning of the frontopari', 'm'),
(1789, 0, 'no', NULL, 'Gillette Fusion ProGlide Power Razor Cart 4', 245.00, '', 0.00, '', 'Product Features: ', 'm'),
(1790, 0, 'no', NULL, 'LAIKOU Moroccan Argan Beard And Hair Growth Oil- 60ml', 150.00, '', 17.00, '', 'Use a liberal amount of the oil for this treatment. Massage it on your beard, scalp, hair and tips. Leave the treatment in overnight (or for a few hours) and then wash the argan oil out the n', 'm'),
(1791, 0, 'no', NULL, 'Aichun Beauty  Beard Growth Oil Serum- 30ml', 100.00, '', 0.00, '', 'This Beard Oil is a 100% natural beard oil that Grows, Softens and Stops itching of your beard. It is made from Vitamin E oil, Almond Oil, Chamomile Oil and Jojoba oil. Basically, it has ever', 'm'),
(1792, 0, 'no', NULL, 'L\'Oreal Paris Men Expert Hydra Energetic After Shave Balm', 293.00, '', 15.00, '', 'Take action against irritated skin with Comfort Max After Shave Balm. Soothe uncomfortable razor burn, redness , and excessive dryness in on easy step. Skin will feel soft and moisturized for', 'm'),
(1793, 0, 'no', NULL, 'Generic Men\'S Boar Bristle Beard Brush And Comb, Beard Comb Grooming Kit Brush+Comb Set', 137.00, '', 10.00, '', 'Features: Designed for static free grooming Scratch free feel - Each comb is handmade to make sure all edges are soft and smooth. Boar bristle is firm enough for your beard but feels soft on ', 'm'),
(1794, 0, 'no', NULL, 'Greenworld Spirulina Plus Capsule', 79.00, '', 5.00, 'Green', 'This food supplement is suitable for people who intend to have balance \r\ndaily nutritional intake.it takes care of people with the following \r\nhealth challenges, diabetes, gastric ulcer, over', 'f-m'),
(1795, 0, 'no', NULL, 'Omron AC Adapter For OMRON Blood Pressure Monitors', 65.00, '', 0.00, '', 'The\r\n Omron AC-Adapter-S for Blood Pressure Monitor - 6 Volts is a \r\nneed-to-have, if you own a blood pressure monitor. This serves as the \r\npositive main adapter for Omron blood pressure mon', 'f-m'),
(1796, 0, 'no', NULL, 'Generic Fairy Tale Collection Necklace Gold Plated Silver Plated Half Moon Cat 46cm(18 1/8\") Long, 2 PCs', 75.00, '', 0.00, 'Gold, Silver', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1797, 0, 'no', NULL, 'Generic Solar System Planet Jewelry Necklace Antique Bronze Black Round 49cm(19 2/8\") Long, 1 Piece', 75.00, '', 0.00, 'Black', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1798, 0, 'no', NULL, 'Generic Resin Tribal Jewelry Adjustable Necklace White Black Hook 82cm(32 2/8\") - 43cm(16 7/8\") Long, 5 PCs', 100.00, '', 0.00, 'Black, White', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1799, 0, 'no', NULL, 'Universal First Aid Kit With Content (Medium)', 90.00, '', 0.00, '', 'First Aid Box, Fully Equipped, Portable; also known as  first aid kit,  is a collection of items and equipment for use in giving first aid, and can be put together for the purpose by an indiv', 'f-m'),
(1800, 0, 'no', NULL, 'Generic Gold Plated Natural Stone Turquoise Howlite Pendant Necklaces For Women Long Chain Marble Point Sweater Necklace Party', 80.00, '', 0.00, 'Gold, Turquoise', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f'),
(1801, 0, 'no', NULL, 'Generic Wood Effect Resin Necklace Black Yellow Rectangle Adjustable 75cm(29 4/8\") Long, 1 Piece', 75.00, '', 0.00, 'Black, Yellow', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1802, 0, 'no', NULL, 'Generic Necklace Silver Plated Multicolor Round The Eye Of Horus 49cm(19 2/8\") Long, 1 Piece', 75.00, '', 0.00, 'Silver', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1803, 0, 'no', NULL, 'Fashion  Lion Handle Walking Stick', 53.00, '', 0.00, '', 'Comfortable, ?beautiful walking stick with a gold lion handle ', 'f-m'),
(1804, 0, 'no', NULL, 'Generic Fashion Retro Antique Bronze  Pendant Glowing  Necklace Magical  Glow In The Dark Necklace Unisex Jewelry', 75.00, '', 0.00, '', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1805, 0, 'no', NULL, 'Fashion Vulture Head Walking Stick', 100.00, '', 0.00, '', 'Comfortable, ?beautiful walking stick with a gold vulture handle ', 'f-m'),
(1806, 0, 'no', NULL, 'Generic Gold Plated Natural Stone Turquoise Howlite Pendant Necklaces For Women Long Chain Marble Point Sweater Necklace Party', 80.00, '', 0.00, 'Gold, Turquoise', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f'),
(1807, 0, 'no', NULL, 'Generic Resin Mermaid Fish/ Dragon Scale Necklace Antique Silver Blue AB Rainbow Color Round 45.5cm(17 7/8\") Long, 2 PCs', 80.00, '', 0.00, 'Blue, Silver', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1808, 0, 'no', NULL, 'Generic Glass Necklace Antique Bronze White Tiger Animal Dragon 49cm(19 2/8\") Long, 2 PCs', 90.00, '', 0.00, 'White', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1809, 0, 'no', NULL, 'Fashion Dragon Handle Walking Stick', 95.00, '', 11.00, '', 'Comfortable, ?beautiful walking stick with a Dragon handle ', 'f-m'),
(1810, 0, 'no', NULL, 'Puritan\'s Pride Vitamin C-1000 Mg With Bioflavonoids & Rose Hips By 100', 225.00, '', 10.00, '', 'Vitamin C is essential to many functions in the body and is one of the leading vitamins for immune support and helps fight cell-damaging free radicals.**?Bioflavonoids have been used in alter', 'f-m'),
(1811, 0, 'no', NULL, 'Omron Omron M3 Digital Arm Blood Pressure Monitor', 70.00, '', 0.00, '', 'Omron BP checker is ideal for everyday usage in monitoring blood pressure, it has a cuff size of 22-32 cm , It has the ability to detect irregular heartbeat and store data of BP values over a', 'f-m'),
(1812, 0, 'no', NULL, 'Generic Gold Plated Natural Stone Turquoise Howlite Pendant Necklaces For Women Long Chain Marble Point Sweater Necklace Party', 80.00, '', 0.00, 'Gold, Turquoise', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f'),
(1813, 0, 'no', NULL, 'Fashion Snake Handle Walking Stick', 53.00, '', 0.00, '', 'Comfortable, ?beautiful walking stick with a gold snake handle ', 'f-m'),
(1814, 0, 'no', NULL, 'Generic Glass Necklace Antique Bronze Red Round Dragon 49cm(19 2/8\") Long, 2 PCs', 90.00, '', 0.00, 'Red', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1815, 0, 'no', NULL, 'Generic Gold Plated Natural Stone Turquoise Howlite Pendant Necklaces For Women Long Chain Marble Point Sweater Necklace Party', 80.00, '', 0.00, 'Gold, Turquoise', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f'),
(1816, 0, 'no', NULL, 'Generic Necklace Gold Plated Sloths Animal 52cm(20 4/8\") Long, 2 PCs', 80.00, '', 0.00, 'Gold', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1817, 0, 'no', NULL, 'Fashion Walking Stick', 95.00, '', 0.00, '', 'Comfortable, ?beautiful walking stick with a handle ', 'f-m'),
(1818, 0, 'no', NULL, 'Generic Galaxy Necklace Silver Tone Purple Half Moon Star Enamel Glitter 68cm(26 6/8\") Long, 1 Piece', 75.00, '', 0.00, 'Purple, Silver', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1819, 0, 'no', NULL, 'Generic Retro Vintage Steampunk Gear Bee Pendant Necklace Fashion  Unisex  Jewelry', 100.00, '', 0.00, '', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1820, 0, 'no', NULL, 'Generic Gold Plated Natural Stone Turquoise Howlite Pendant Necklaces For Women Long Chain Marble Point Sweater Necklace Party', 80.00, '', 0.00, 'Gold, Turquoise', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f'),
(1821, 0, 'no', NULL, 'Generic Glass Glow In The Dark Necklace Black Round Dragon 50cm(19 5/8\") Long, 2 PCs', 90.00, '', 0.00, 'Black', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1822, 0, 'no', NULL, 'Generic Retro Vintage Steampunk Gear Bee Pendant Necklace Fashion  Unisex  Jewelry', 100.00, '', 0.00, '', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m');
INSERT INTO `products_product` (`id`, `status`, `is_bundle`, `bundle_reference_no`, `name`, `price`, `sizes`, `discount`, `colors`, `description`, `gender`) VALUES
(1823, 0, 'no', NULL, 'Generic Gel Insoles Magnetic Massage Foot Health Care Pain Relief', 100.00, '', 17.00, '', 'Material: Magnets and plasticColor: Shown as the pictureTotal length: 25.5 cm / 10 quot;Size: Chinese size 35-40, equal to UK size 2.5-6, US size 5-9 (You can change the size by cutting accor', 'f-m'),
(1824, 0, 'no', NULL, 'Generic Great Gift For Your Parents New Arrival Magnetic Therapy Magnet Health Care Foot Massage Insoles Men/ Women Shoe Comfort Pads', 55.00, '', 9.00, '', 'Condition:?NewAvailable Colors:?BrownTake only 3 days to the buyers from the USA!?High quality and easy to use! Good customer reviews!?This will be a great help for your health! Good quality ', 'f'),
(1825, 0, 'no', NULL, 'Generic Gold Plated Natural Stone Turquoise Howlite Pendant Necklaces For Women Long Chain Marble Point Sweater Necklace Party', 80.00, '', 0.00, 'Gold, Turquoise', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f'),
(1826, 0, 'no', NULL, 'Rohs Non Contact Infrared Thermometer', 70.00, '', 0.00, '', 'Non Contact Infra Red Thermometers are ideal in measuring body temperature anywhere and at any time.It is convenient because contact is nor required so no risk of cross infections. Can be use', 'f-m'),
(1827, 0, 'no', NULL, 'Universal First Aid Box With Content (Stainless Steel)', 58.00, '', 0.00, '', 'First Aid Box, Fully Equipped, Portable; also known as  first aid kit,  is a collection of supplies and equipment for use in giving first aid, and can be put together for the purpose by an in', 'f-m'),
(1828, 0, 'no', NULL, 'Generic Glass Necklace Antique Silver Blue Dragon Round 52cm(20 4/8\") Long, 3 PCs', 95.00, '', 0.00, 'Blue, Silver', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1829, 0, 'no', NULL, 'Generic Solar System Planet Jewelry Necklace Silver Plated Black Round 47cm(18 4/8\") Long, 1 Piece', 75.00, '', 0.00, 'Black, Silver', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1830, 0, 'no', NULL, 'Generic Gold Plated Natural Stone Turquoise Howlite Pendant Necklaces For Women Long Chain Marble Point Sweater Necklace Party', 80.00, '', 0.00, 'Gold, Turquoise', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f'),
(1831, 0, 'no', NULL, 'Generic Gold Plated Natural Stone Turquoise Howlite Pendant Necklaces For Women Long Chain Marble Point Sweater Necklace Party', 80.00, '', 0.00, 'Gold, Turquoise', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f'),
(1832, 0, 'no', NULL, 'Generic Retro Vintage Steampunk Gear Bee Pendant Necklace Fashion  Unisex  Jewelry', 100.00, '', 0.00, '', 'The quality of this product is very good,and wearing it,you will be more attractive . ', 'f-m'),
(1833, 0, 'no', NULL, 'Tena Tena Adult Diaper (Pull Up Pants) Large', 80.00, '', 0.00, '', 'Easy to wear, just like regular pants (underwear). It has features that provide utmost care and comfort to the wearer. Secure Pull-Up Pants gives security and confidence all day. Suitable for', 'f-m'),
(1834, 0, 'no', NULL, 'Mamiya Organic Kiddies No-Lye  Formular', 175.00, '', 0.00, '', 'This Kiddies Hair product softens and loosens curls, it improves manageability, your kids will love you for it ', 'f-m'),
(1835, 0, 'no', NULL, 'Cantu Care For Kids Conditioning Natural Hair Detangler', 80.00, '', 12.00, '', 'Cantu Care for kids is the perfect blend of 100% pure sheaf butter, coconut oil and honey formulated without harsh ingredients. Nurture and nourish fragile coils, curls, and waves with Cantu\'', 'f-m'),
(1836, 0, 'no', NULL, 'Generic 10Pcs Animal Sticker Temporary Tattoos For Children Cartoon Plant Waterproof Temporary Tattoos', 80.00, 'EC-619, EC-592, EC-591, EC-615, EC-531, EC-620, EC-623, EC-624, EC-626, EC-627, EC-618, EC-625, EC-593, EC-621, EC-594, EC-616, EC-628', 0.00, '', 'No Description Available', 'f-m'),
(1837, 0, 'no', NULL, 'IMPERIO Body Mist For Kids - Cool Fashion 6 In 1', 100.00, '', 0.00, '', 'This product keeps your kid fresh all day long. With low Alcohol for \r\nkids delicate skin Let your kid be a show stopper with this fresh and \r\nlong lasting fragrance. ', 'f-m'),
(1838, 0, 'no', NULL, 'Morrisons Nutmeg Baby Powder 400g', 110.00, '', 0.00, '', 'Directions for use Sprinkle powder onto your hands and smooth gently onto baby\'s skin. Directions for use Sprinkle powder onto your hands and smooth gently onto baby\'s skin. ', 'f-m'),
(1839, 0, 'no', NULL, 'Cantu Care For Kids Conditioning Detangler - 6oz', 123.00, '', 0.00, '', 'Cantu Care for kids is the perfect blend of 100% pure sheaf butter, coconut oil and honey formulated without harsh ingredients. Nurture and nourish fragile coils, curls, and waves with Cantu\'', 'f-m'),
(1840, 0, 'no', NULL, 'Lander Bubble Bath Berry Blast 25fl.oz', 125.00, '2pcs, ...', 11.00, '', 'Let\'s not forget how much kids love their bubble baths, too! While adults may choose to wind down at the end of a long, arduous day by sinking into a tub full of bubbles, children prefer thes', 'f-m'),
(1841, 0, 'no', NULL, 'John Johnson Baby Moisturising Lotion 500ml And Powder 500g', 270.00, '', 0.00, '', 'GWe love babies. And we understand that baby\'s skin can be easily irritated by the effect of rubbing and chafing. That\'s why our Baby Powder creates a friction-free layer to keep baby\'s skin ', 'f-m'),
(1842, 0, 'no', NULL, 'Generic Baby Digital Thermometer Non-Contact Infrared LCD Instant Read - PINK', 296.00, '', 12.00, 'Pink', 'Body mode and object mode are available. The mode could be changed by one switch. Stronger environment temperature adaptability. Accurate and reliable, even under complicated surrounding. Tem', 'f-m'),
(1843, 0, 'no', NULL, 'Mirato BonBons Malizia Eau De Toilette Deodorant', 175.00, '', 11.00, '', 'Bon Bons Malizia is a line of captivating fragrance by Mirato specially designed for kids. It is suitable on their tender skin while the graphics are attractive with playful and bright colour', 'f-m'),
(1844, 0, 'no', NULL, 'GNLD Vita Squares - Neolife', 75.00, '', 16.00, '', 'Chewable multivitamin for children. ?????????\r\nProvides nutrients that promote healthy growth and development of the\r\nbody and mind* ?????????\r\nEnhanced with choline and inositol for optimal ', 'f-m'),
(1845, 0, 'no', NULL, 'Dove Baby Rich Moisture Nappy Rash Cream (45g )', 138.00, '', 0.00, '', 'As a parent you know how quickly nappy rash can develop. That?s why our Baby Dove Rich Moisture Nappy Cream neutralises the pH in seconds and immediately helps to protect from the causes of r', 'f-m'),
(1846, 0, 'no', NULL, 'Mirato Kids Perfume 50ml/3Pcs', 243.00, '', 19.00, '', 'Bon Bons Malizia is a line of captivating fragrance by Mirato specially designed for kids. It is suitable on their tender skin while the graphics are attractive with playful and bright colour', 'f-m'),
(1847, 0, 'no', NULL, 'Chicco No Tears Bath Shampoo 200ml', 145.00, '', 0.00, '', 'Gently cleanses the delicate baby\'s hair and skin, leaving it nicely scented. No-tears formula contains pot marigold which has softening properties for baby\'s delicate and sensitive skin. No ', 'f-m'),
(1848, 0, 'no', NULL, 'Green Hair Regrowth Oil-  Faster Hair Growth Oil - Stops Hair  Thinning & Breakage!', 111.00, '', 0.00, 'Green', 'is carefully manufactured using 18 core oils derieved from rare plant species engineered to promote Hair growth & regrowth. Limitless effect all through! Contains black seed oil, Alovera subs', 'f-m'),
(1849, 0, 'no', NULL, 'Cosmetalogy Raw Unrefined Shea Butter', 75.00, '', 0.00, '', 'FOR SKIN FOR HAIR ', 'f-m'),
(1850, 0, 'no', NULL, 'Do Re Mi Doremi Kids Cologne - 4 In 1 - 100ml', 138.00, '', 17.00, '', 'This product keeps your kid fresh all day long. With low Alcohol for \r\nkids delicate skin Let your kid be a show stopper with this fresh and \r\nlong lasting fragrance. ', 'f-m'),
(1851, 0, 'no', NULL, 'Skin Doctor Stretch Marks & Scars Remover Cream- Daily Moisturizer Organic/Shea / Plant Oils/Vitamins', 175.00, '', 11.00, '', 'Clinically proven and dermatologist recommended for scars and stretch marks. It is also used to help improve the appearance of uneven skin tone, dry skin and ageing skin.hypoallergenic-greasy', 'f-m'),
(1852, 0, 'no', NULL, 'Pears Baby Lotion, Oil, Powder & Jelly ? 4 Units', 160.00, '', 0.00, '', 'This is a complete set of pears product which consist of pears baby oil, jelly, powder and lotion. The set is ideal for your baby and caters for your baby?s toiletries and personal care. Sati', 'f-m'),
(1853, 0, 'no', NULL, 'Pears New Born Arrival Set - Powder 300+Oil 200ml+Lotion 200ml+Jelly 250g+Body Cream 125g', 190.00, '', 0.00, '', 'No Description Available', 'f-m'),
(1854, 0, 'no', NULL, 'Sakinah Naturals African Black Soap (4 Pieces)', 180.00, '', 0.00, 'Black', 'African Black Soap is made with Cocoa pods,? Palm Kernel Oil, Shea butter and other indigenous plants to gently cleanse skin and hair. Made with secret recipes passed down from generation to ', 'f-m'),
(1855, 0, 'no', NULL, 'Cosmetalogy Detangling Coconut Milk Conditioner', 75.00, '', 0.00, '', 'is 2 in 1 moisturizing and detangling conditioner formula to make your hair wash day a breeze, formulated with coconut milk to nourish and intensely condition your hair. Say goodbye to Hair w', 'f-m'),
(1856, 0, 'no', NULL, 'Cosmetalogy Extra Virgin Coconut Oil - 200ml', 75.00, '', 0.00, '', 'No Description Available', 'f-m'),
(1857, 0, 'no', NULL, 'Regain Hair Loss Treatment Oil -Aids Fast Hair Growth!', 83.00, '', 0.00, '', 'Regain Hair loss Treatment Oil contains potent Hair regrowth formulation that aids hair regrowth in no time. ?Our formula guarantees you a steady recovery from hairloss with visible effects b', 'f-m'),
(1858, 0, 'no', NULL, 'John Baby Moisturising Lotion 500ml', 175.00, '', 0.00, '', 'Our baby lotion, made with coconut oil, keeps delicate skin soft, smooth and feeling healthy. Nourish baby?s skin for 24 hours with our classic Johnson?s??fresh smell. Great for kids and adul', 'f-m'),
(1859, 0, 'no', NULL, 'Dove Baby Rich Moisture Bar 75g', 80.00, '2, ...', 0.00, '', 'As a parent, you know that your baby?s skin needs special care ? but did you know that after every bath a baby\'s skin can lose moisture up to 5 times faster than yours? That\'s why Baby Dove R', 'f-m'),
(1860, 0, 'no', NULL, 'Soft & Beautiful Just For Me Texture Softner No-Lye System', 170.00, '', 0.00, '', 'Soft & Beautiful Just For Me No Lye Texture Softener Kit is for children ages 5+ to help softens natural hair texture to make the hair more manageable during combing.? New color-code Neutrali', 'f-m'),
(1861, 0, 'no', NULL, 'Green Hair Regrowth Oil-  Faster Hair Growth Oil - Stops Hair  Thinning & Breakage!', 111.00, '', 0.00, 'Green', 'Regrowth Oil? is carefully manufactured using 18 core oils derieved from rare plant species engineered to promote Hair growth & regrowth. Limitless effect all through! Contains black seed oil', 'f-m'),
(1862, 0, 'no', NULL, 'Dove Baby Head To Toe Wash Sensitive Moisture (400ml)', 150.00, '', 0.00, '', 'All baby skin is delicate ? but if your baby has extra sensitive skin, you might prefer a fragrance-free baby wash. That?s why we created Baby Dove Sensitive Moisture Fragrance Free Head to T', 'f-m'),
(1863, 0, 'no', NULL, 'Fashion Skin Care Magical Lithospermum Ointment Anti-itch Cream Comfrey Mosquito Bites Anti Allergy Gromwell', 59.00, '', 17.00, '', 'No Description Available', 'f-m'),
(1864, 0, 'no', NULL, 'Morrisons Nutmeg Baby Oil 300ml', 100.00, '', 0.00, '', 'Made for smooth and soft skin Our baby oil with camomile extract is designed to keep baby\'s skin silky and soft. Ideally used after bath time to help lock in moisture. Paediatrician approved,', 'f-m'),
(1865, 0, 'no', NULL, 'De Bebe Rose Kids Perfume 4Pcs - 150ml', 168.00, '', 4.00, '', 'De Bebe Rose Cartoon Character Body Sprays are specially designed for trendy kids. They come as unique and fresh fragrances recommended for daily use. Teach your kids to start smelling good e', 'f-m'),
(1866, 0, 'no', NULL, 'Dove Baby Rich Moisture Lotion (400ml)', 150.00, '', 0.00, '', 'Your baby?s skin is beautiful - but as a parent, you know that little ones can get dry skin that needs special care. That?s why we created our unique Rich Moisture Baby Lotion. Its formula so', 'f-m'),
(1867, 0, 'no', NULL, 'Boots Baby Bar Soap 4-in-1', 70.00, '', 0.00, '', 'Boots Baby Soap is gently fragranced and will gently cleanse skin. Boots soap has been scintifically formualted by Baby Experts. This gentle & mild formulation will cleanse and soothe skin wi', 'f-m'),
(1868, 0, 'no', NULL, 'Fragrance World 4Pcs Bon Bon Question Character Spray For Kids - 150ml', 180.00, '', 13.00, '', 'Bon Bon Question is a fragrance specially designed for kids and suitable on their tender skin. It comes in four cartoon characters: Spiderman, Frozen, Batman and Princess. Teach your kids to ', 'f-m'),
(1869, 0, 'no', NULL, 'Cussons Baby Oil - 200ml', 55.00, '3, 2, ...', 0.00, '', 'Cussons Baby Oil -200ml The Mild & Gentle Baby Oil is a pure mineral oil that adds moisture to your baby?s skin. It helps to remove the excess flakes from cradle cap too, as it is enriched wi', 'f-m'),
(1870, 0, 'no', NULL, 'Cosmetalogy Organic Castor Oil - 200ml', 100.00, '', 0.00, '', 'Castor Oil is versatile in use, ranging from health to beauty. FOR HAIR: ', 'f-m'),
(1871, 0, 'no', NULL, 'Do Re Mi Doremi Kids Cologne -  4 In 1', 180.00, '', 0.00, '', 'This product keeps your kid fresh all day long. With low Alcohol for \r\nkids delicate skin Let your kid be a show stopper with this fresh and \r\nlong lasting fragrance. ', 'f-m'),
(1872, 0, 'no', NULL, 'Skin Doctor Stretch Marks & Scars Remover Cream- Daily Moisturizer Organic + Shea + Plant Oils + Vitamins To Prevent, Reduce And Fade Away Old Or New Scars ? Best For All Stretch Marks Type', 175.00, '', 10.00, 'Red', 'About Clinically proven and dermatologist recommended for scars and stretch marks. It is also used to help improve the appearance of uneven skin tone, dry skin and aging skin. HypoallergenicN', 'f-m'),
(1873, 0, 'no', NULL, 'L.A. Pride Concealer Mattifying Foundation - Dark', 89.00, '', 10.00, '', 'When you really need to conceal rather than reveal, opt for this \r\nfull-coverage camouflage cream. An ace at hiding stubborn imperfections \r\nlike dark circles, age spots and scars, it?s water', 'f-m'),
(1874, 0, 'no', NULL, 'Fashion Professional Eyebrow Dye Cream - Eyeliner Gel (Black & Brown)', 60.00, '', 15.00, 'Black, Brown', 'Affordable 2 essential brush inside Long Wearing Eye liner brush Water Proof Eye definer Brush Enhance Makeup looks. ', 'f-m'),
(1875, 0, 'no', NULL, 'Classic Makeup Matte Lipstick 4 Set - Nude/Red/Isabella/Nicki Minaj', 101.00, '', 10.00, 'Red', 'Give your lips the royal treatment with our Classic Pure Matte Lipstick range. It has a remarkably good feel and look on your lips. It gives that luscious look that you always wanted to your ', 'f-m'),
(1876, 0, 'no', NULL, 'Fashion 24Pcs Professional Bamboo Makeup Brush Set + Black PU Leather Pouch', 150.00, '', 13.00, 'Black', 'This 24 Pieces MakeUp Brush Set with Bag Case consist of different types of brushes that has been designed to help you achieve a smooth and flawless finish during makeup. The bristles of the ', 'f-m'),
(1877, 0, 'no', NULL, 'Fashion Eyebrow Template Stencil Grooming Shaping Helper DIY Tool Beauty Makeup DIY', 60.00, '', 12.00, '', 'Features: high quality Put the eyebrow Stereo template on the eyebrow, use cosmetic scissors to modify redundant Miscellaneous hairs, use the eyebrow pencil to make your eyebrow natural and s', 'f-m'),
(1878, 0, 'no', NULL, 'Maybelline Fit Me Matte Pore-less Foundation Pecan 355', 148.00, '', 16.00, '', 'Smooth and perfect the look of your complexion with ! and , a refining liquid foundation with natural, matte finish ', 'f-m'),
(1879, 0, 'no', NULL, 'Milani Mineral Compact Makeup - Warm 109 MA', 160.00, '', 13.00, '', 'It?s the best of both worlds?full coverage powder with a weightless feel and a flawless matte finish?in one toss-it-in-your-bag mirrored compact. Instantly, imperfections like age spots, dark', 'f-m'),
(1880, 0, 'no', NULL, 'Ushas Bronzer-Colour 3(medium)', 69.00, '', 11.00, '', 'Crafted on Italian terracotta tiles, these sunbaked bronzers are all about a swirly, shimmery, streak-free glow. Available in five shades, from soft gold to tantalizingly tan, it can be duste', 'f-m'),
(1881, 0, 'no', NULL, 'Yanqina Waterproof Eyeliner Pencil Makeup', 75.00, '', 13.00, '', 'This is a waterproof liquid black eyeliner pen for all who love beauty. Sweatproof and easy to remove, very nice using effect. Very smooth and easy to use, your eyes will look larger and nice', 'f-m'),
(1882, 0, 'no', NULL, 'Ushas Bronzer-Colour 4(Dark)', 65.00, '', 11.00, '', 'Crafted on Italian terracotta tiles, these sunbaked bronzers are all about a swirly, shimmery, streak-free glow. Available in five shades, from soft gold to tantalizingly tan, it can be duste', 'f-m'),
(1883, 0, 'no', NULL, 'L.A. Pride Lipstick-Nude', 63.00, '', 12.00, '', 'LA Pride Lipstick is rich in pigment and filled with moisture in a flat velvet finish. With added shea butter to hydrate lips and a soft, smooth application, your lips will feel as gorgeous a', 'f-m'),
(1884, 0, 'no', NULL, 'Maybelline Clear Smooth POWDER GB 09 Mochal', 126.00, '', 0.00, '', 'Maybelline Clear Smooth?Powder. For perfectly matte, even skin that lasts?all?day. TheAll-In-One that does it?all: Controls shine; Conceals flaws?.. ', 'f-m'),
(1885, 0, 'no', NULL, 'Classic Makeup Longest Wearing Antioxidant Mattifying Face Primer-30ml', 80.00, '', 16.00, '', 'This makeup primer with incredibly velvety touch matifies shiny zones and helps both oil control and pore\'s reduction. Apply on bare skin for a perfect makeup finish and hold. Go classy ', 'f-m'),
(1886, 0, 'no', NULL, 'Kiss Beauty Highlighter, Contour And Concealer Palette-01', 85.00, '', 11.00, '', 'The kiss beauty highlighter and contour Palette allows you to seamlessly sculpt, ?and correct any color imperfections.?The variety of color-correcting creams can be used on all ?to enhance an', 'f-m'),
(1887, 0, 'no', NULL, 'Colossal Volume Mascara- Volumizing', 100.00, '', 13.00, '', 'Details:Name: Eye mascaraNet weight: 11g ?Features:With latest silicon eye brush.100% high quality, and makeup 3D eye lashes for your eyes.Creates exceptional long, thick & curly lashes.Great', 'f-m'),
(1888, 0, 'no', NULL, 'Universal Cosmetic 10Pcs Makeup Brush Set Kabuki 10 Piece Professional Ladies Makeup Brush Set - Yellow/Gold', 100.00, '', 13.00, 'Gold, Yellow', 'Kabuki 10 Piece Synthetic Makeup Brush Set is perfect for both beginners and professional makeup artist. Five different types brushes(Angled, Round, Flat, Flat Angled, Tapered ) provide easy ', 'f'),
(1889, 0, 'no', NULL, 'L.A. Pride Oil Control Super Blendable Powder - (Colour 2) Medium', 100.00, '', 11.00, '', 'This hypoallergenic Oil Control Powder will set your makeup with a few sweeps of a puff. The silky-smooth formula helps control excess oil while setting make-up for a flawless look. Suitable ', 'f-m'),
(1890, 0, 'no', NULL, 'Vidana  24 Pcs Professional Bamboo Makeup Brush Set + Black PU Leather Pouch - Brown', 153.00, '', 16.00, 'Black, Brown', 'This 24 Pieces MakeUp Brush Set with Bag Case consist of different types of brushes that has been designed to help you achieve a smooth and flawless finish during makeup. The bristles of the ', 'f-m'),
(1891, 0, 'no', NULL, 'Classic Makeup Pro Concealer -(Medium)', 95.00, '', 11.00, '', 'Camouflages the appearance of skin imperfections. Evens out skin tone. Covers dark circles. Minimizes fine lines. Provides customizable coverage. ', 'f-m'),
(1892, 0, 'no', NULL, 'Maybelline Clear Smooth POWDER GB 06 Toffee', 126.00, '', 0.00, '', 'Maybelline Clear Smooth?Powder. For perfectly matte, even skin that lasts?all?day. TheAll-In-One that does it?all: Controls shine; Conceals flaws?.. ', 'f-m'),
(1893, 0, 'no', NULL, 'Menow 3 In 1 Volumizing Mascara+ Eyebrow Pencil + Eyeliner', 100.00, '', 17.00, '', 'Mascara: 1. With its unique design, comb brush allows you to precisely coat each lash with creating a long, separated of lashes. 2. Smudge-proof and waterproof, giving you the truly iconic ey', 'f-m'),
(1894, 0, 'no', NULL, 'Focallure Highlighter Stick All Over Shimmer Highlighting Powder Creamy Texture Water-proof Silver Shimmer Light', 125.00, '#1A, #2A', 0.00, 'Silver', 'Focallure Bling Highlighter stick All Over Shimmer Highlighting Powder Creamy Texture Water-proof ', 'f-m'),
(1895, 0, 'no', NULL, 'Maybelline Clear Smooth POWDER GB 09 Caramel', 126.00, '', 0.00, '', 'Maybelline Clear Smooth?Powder. For perfectly matte, even skin that lasts?all?day. TheAll-In-One that does it?all: Controls shine; Conceals flaws?.. ', 'f-m'),
(1896, 0, 'no', NULL, 'Million Pauline Water Proof Gel Eyeliner - (Black And Brown)', 70.00, '', 11.00, 'Black, Brown', 'Best Seller 2 in 1 Brown + Black Gel Eyeliner make up water-proof and smudge-proof cosmetics set.. Eye Liner Kit in Eye Makeup This amazing liner gives you the look of liquid liner with the e', 'f-m'),
(1897, 0, 'no', NULL, 'Maybelline FIT ME  MATTE+PORELESS FOUNDATION ESPRESSO 365', 148.00, '', 16.00, '', 'Matte + Poreless Liquid is all about fitting your skin tone and texture. Ideal for normal to oily skin types, the matte ultra-lightweight formula ', 'f-m'),
(1898, 0, 'no', NULL, 'Generic Hiamok_Mink 3D Real Natural Thick False Fake Eyelashes Eye Lashes Makeup Extension AB', 56.00, '', 13.00, '', 'Mink 3D Real Natural Thick False Fake Eyelashes Eye Lashes Makeup Extension AB  Description: Instruction of Usage: What You Get: ', 'f-m'),
(1899, 0, 'no', NULL, 'Maange 22pcs Foundation Blush Eye Shadow Makeup Brushes - BLACK AND ROSE GOLD', 155.00, '', 13.00, 'Black, Gold', ' SPECIAL 22 PIECE PROFESSIONAL MAKEUP BRUSH SET! 22 different brushes for your different requirements, and flawlessly great for all types of makeup, including foundation brush, eye shadow bru', 'f-m'),
(1900, 0, 'no', NULL, 'Kiss Beauty Highlighter, Contour And Concealer Palette-02', 84.00, '', 11.00, '', 'The kiss beauty highlighter and contour Palette allows you to seamlessly sculpt, ?and correct any color imperfections.?The variety of color-correcting creams can be used on all ?to enhance an', 'f-m'),
(1901, 0, 'no', NULL, 'MINI Eyebrow Eye Stencil', 100.00, '', 12.00, '', 'With these eyebrow pattern drawing kit, you can try different eyebrow shape ?every day to match your different make over or clothes. Achieve perfectly shaped brows to accentuate your face. Th', 'f-m'),
(1902, 0, 'no', NULL, 'Ushas Bronzer-Colour 2(Fair)', 67.00, '', 11.00, '', 'Crafted on Italian terracotta tiles, these sunbaked bronzers are all about a swirly, shimmery, streak-free glow. Available in five shades, from soft gold to tantalizingly tan, it can be duste', 'f-m'),
(1903, 0, 'no', NULL, 'Vidana  24 Pcs Professional Bamboo Makeup Brush Set + Free Eyeshadow', 168.00, '', 15.00, '', 'This 24 Pieces MakeUp Brush Set with Bag Case consist of different types of brushes that has been designed to help you achieve a smooth and flawless finish during makeup. The bristles of the ', 'f-m'),
(1904, 0, 'no', NULL, 'Maybelline COLOSSAL KAJAL EXTRA 12 HR', 94.00, '', 0.00, '', 'For eyes that speak volumes, choose?Colossal ?Kajal?12H .This deep black kajal creates smudge-free bold lines that last for up to 12 hours. Enriched with Olive Oil Esters, Vitamin E, Vitamin ', 'f-m'),
(1905, 0, 'no', NULL, 'Milani Mineral Compact Makeup - Medium 108 MA', 160.00, '', 13.00, '', 'It?s the best of both worlds?full coverage powder with a weightless feel and a flawless matte finish?in one toss-it-in-your-bag mirrored compact. Instantly, imperfections like age spots, dark', 'f-m'),
(1906, 0, 'no', NULL, 'Maybelline BABY LIPS CRAYON STRAWBERRY POP', 126.00, '', 0.00, '', 'Baby Lips? Color Balm Crayon delivers easy application for bold bursts of bright, juicy color. ', 'f-m'),
(1907, 0, 'no', NULL, 'Fashion Eyelashes Applicator Remover Clip Tweezer Nipper', 60.00, '', 20.00, '', 'This false eyelash tweezer is made of high quality stainless steel, and with a unique new design. With it, it will be more convenient and easier when you applying false eyelashes. It is a mus', 'f-m'),
(1908, 0, 'no', NULL, 'Taiwan 10 Pairs Soft Natural Cross Eye Lashes Makeup Extension False Eyelashes', 60.00, '', 13.00, '', 'Soft Long Cross Lashes Very soft and comfortable to wear; Suitable for party or professional make up; Easy to use, can make your eyes look bright and attractive; They can be removed by eye ma', 'f-m'),
(1909, 0, 'no', NULL, 'Yanqina Mascara - 3D Fiber Black', 60.00, '', 20.00, 'Black', 'Beautiful 3D fiber lash craze, don\'t miss out. Treat yourself or your favorite person with this spectacular gift for Any occasion. 3D Transplanting Gel. A perfect fit, smooth, comfortable and', 'f-m'),
(1910, 0, 'no', NULL, 'Maybelline The COLOSSAL Kajal 6 HR - BLACK', 94.00, '', 0.00, 'Black', 'Introducing a totally smudge free and water resistant kajal that gives intense black colour highlight to your eyes that will add intense drama and jazz. Enriched with Olive Oil Esters, Vitami', 'f-m'),
(1911, 0, 'no', NULL, 'Milani Conceal + Perfect 2-In-1 Foundation + Concealer - Chesnut 13 SM', 200.00, '', 13.00, '', 'Combat under eye circles, redness and other skin imperfections with this full coverage, water-resistant foundation plus concealer in one. A no mess, no drip pump dispenses just the right amou', 'f-m'),
(1912, 0, 'no', NULL, 'Classic Makeup Classy Eyebrow Definer', 72.00, '', 10.00, '', 'Use Classic Makeup USA Hot EYEBROW DEFINER ?to professionally fill in your eyebrows to create any stylish look you desire; pretty, elegant, classy, etc. Classic makeup products have enjoyed p', 'f-m'),
(1913, 0, 'no', NULL, 'Avon Christian Lacroix Bijou Perfume', 300.00, '', 0.00, '', 'This fragrance is refined contrast of fresh ginger root and cardamom, wrapped in rich cashmere woods. One out of one customers would recommend this product to a friend. 75ml, EDT. ', 'm'),
(1914, 0, 'no', NULL, 'Luca Bossi Chairman 2in1 Perfume And Roll-on', 250.00, '', 10.00, '', 'Chairman 2in1 perfume, made by Luca Bossi is a uniquely packaged set of fragrance with a 60ml spray and 60ml roll on, its fragrance last up to 24 hours and makes you feel like a chairman all ', 'f-m'),
(1915, 0, 'no', NULL, 'Elizabeth Arden Arden Beauty For Women 100ml EDP', 68.00, '', 8.00, '', 'Arden Beauty?by?Elizabeth Arden?was launched in 2002. The nose behind this fragrance is Antoine Lee. With its inviting presence, Ardenbeauty is a fresh, green floral fragrance that is as mult', 'f'),
(1916, 0, 'no', NULL, 'Eci Infinity Woman Perfumed Deodorant Body Spray', 75.00, '', 13.00, '', 'It\'s?amazing fragrance that keeps every gentleman cool and smelling awesome.Eau de Parfums therefore last longer and smell more intense.a product you will surely love to have and same for you', 'f'),
(1917, 0, 'no', NULL, 'Frank Olivier Oud Vanille EDP 100ml For Men', 62.00, '', 16.00, '', 'Announcing the arrival of Franck Olivier Oud Vanille EDP 100ml Perfume For Men! Explore this new addition to the famous house of Franck Olivier perfumes. This new lunch is for those who love ', 'm'),
(1918, 0, 'no', NULL, 'Oak Dynasty', 95.00, '', 10.00, '', 'This is the Oak dynasty with a new package. A masculine fragrance. And it?s an Eau De parfum. ', 'm'),
(1919, 0, 'no', NULL, 'Lalique Encre Noire EDT For Men 100ml', 66.00, '', 0.00, '', 'If you love being the center of attraction, wear the Lalique Encre Noire for Men. This Lalique Encre Noire is packed in a stylish bottle that entices the modern men and also looks stunning on', 'm'),
(1920, 0, 'no', NULL, 'Antonio Banderas Spirit For Her 100ml', 80.00, '', 0.00, '', 'Spirit for Women is a perfect combination of fresh notes symbolizing the Latin natural spontaneity. ', 'f'),
(1921, 0, 'no', NULL, 'Rihanna Rogue Love -for Her 125ml EDP', 70.00, '', 0.00, '', 'Launched by the design house of Rihanna This floral fruity fragrance has a blend of juicy mandarin, red berries, velvety peach, jasmine sambac, honeysuckle, orchid, coconut, vanilla, amber, a', 'f'),
(1922, 0, 'no', NULL, 'France Perfume 10ml + 2.0ml AM Paris Unisex Fragrance', 168.00, '', 11.00, '', 'France perfume comes in the form of that last long. Primarily contained in jars of glass of various sizes, the product is further beautifully secured with a decorative paperboard packaging ma', 'f-m'),
(1923, 0, 'no', NULL, 'Emper Legend Parfume-100ml', 188.00, '', 11.00, '', 'Good quality perfume, with long lasting fragrance for men of high class suitable for everyday use. Its got a strong Woody Scent. ', 'm'),
(1924, 0, 'no', NULL, 'Franck Olivier Oud Vanille', 64.00, '', 12.00, '', 'Oud Vanille by franck olivier is an Oriental woody fragrance for men and women. Oud vanille was launched in 2017. Top notes are orange, raspberry and caramel ; middle notes are violet, pachou', 'f-m'),
(1925, 0, 'no', NULL, 'Playboy Play It Wild- 100ml For Men', 250.00, '', 0.00, '', 'Perfume with a breezy scent.Happy and masculine.?Can be sprayed for exercise, daily activities, shopping etc.Nice and easy scent ', 'm'),
(1926, 0, 'no', NULL, 'Franck Olivier Bamboo EDP For Women - 75ml', 63.00, '', 9.00, '', 'Bamboo for women is a fragrance for women that accentuates the aromas of ivy leaf combined with violet leaf and black currant in the top. Order your long lasting feminine fragrances on Jumia ', 'f'),
(1927, 0, 'no', NULL, 'Franck Olivier Oud Touch EDP Plus Oud Vanille EDP (2 In 1) Combo Pack - 2 ?100ml', 65.00, '', 0.00, '', 'No Description Available', 'm'),
(1928, 0, 'no', NULL, 'Oak Blend EDP For Men - 90ml', 95.00, '', 12.00, '', 'From reliving favourite memories to setting a mood, This perfume shares your passion for rich, tasteful and sophisticated fragrances. All rigorously screened, reviewed and tested, our catalog', 'm'),
(1929, 0, 'no', NULL, 'Playboy VIP- For Men 100ml (EDT)', 250.00, '', 0.00, '', 'Nice male fragrance from the notoriously crazy guy ', 'm'),
(1930, 0, 'no', NULL, 'Playboy King Of The Game- For Men-100ml', 250.00, '', 0.00, '', 'Seduction is all in the scent. An eau de toilette spray. The ranges is an answer to young men wanting to make the adventurous??leap. ', 'm'),
(1931, 0, 'no', NULL, 'Antonio Banderas The Secret Temptation 100ml', 55.00, '', 0.00, '', 'Succulent citrus notes and a unique spicy personality gain in sensuality and character thanks to elegant touches of wood. Exuding luxury and charm, The Secret Temptation is irresistible from ', 'm'),
(1932, 0, 'no', NULL, 'Saffron Pink Purse Perfume', 250.00, '', 10.00, 'Pink', 'Pink Purse female perfume is a uniquely designed for classy females, with a beautiful pink packaging material.Its fragrance will leave you feeling fresh all day. ', 'f'),
(1933, 0, 'no', NULL, 'Avon Dreams Perfume For Her - Set', 75.00, '', 0.00, '', 'Make your dreams come true ! Anything is possible... Capture your deepest dreams with a delicate combination of aromas of plum, rose and wood.?Dreamy notes of sweet plum, lucious rose and whi', 'f'),
(1934, 0, 'no', NULL, 'Eci Intense Emotion Perfumed Deodorant Body Spray', 75.00, '', 13.00, '', 'It\'s?amazing fragrance that keeps every gentleman cool and smelling awesome.Eau de Parfums therefore last longer and smell more intense.a product you will surely love to have and same for you', 'f'),
(1935, 0, 'no', NULL, 'Givanas DELIGHTABLE INSPIRE EAU DE PARFUM 100ml', 70.00, '', 13.00, '', 'INSPIRE Perfume by GIVANAS, Luxurious, and senseous this masculine scent\r\n is a dazzling oriental, floral aroma. A romantic blend of asian fruits \r\nwith subtle undertones of musk and raspberr', 'f-m'),
(1936, 0, 'no', NULL, 'Franck Olivier Oud Touch For Men - 100ml-Brown', 61.00, '', 3.00, 'Brown', '. by is a Woody Aromatic fragrance for men launched in 2014. It is characterized by a woody, musky & base of spicy and amber back. A very strong, long lasting and intense oud scent for men, t', 'm'),
(1937, 0, 'no', NULL, 'Franck Olivier Oud Touch For Men - 100ml', 61.00, '', 16.00, '', 'Oud Touch?by?Franck Olivier?is a Woody Aromatic fragrance for men.?Oud Touch?was launched in 2014. Top notes are orange, raspberry and caramel; middle notes are violet, patchouli, rose, jasmi', 'm'),
(1938, 0, 'no', NULL, 'Playboy Hollywood- For Him (100ml)', 280.00, '', 0.00, '', 'Hollywood?is an oriental-woody?fragrance?which is ideal for the world of celebrities. It opens with citrusy sparks of mandarin and bergamot, along with aromatic nuances of thyme and elem?is a', 'm'),
(1939, 0, 'no', NULL, 'Avon Homme Exclusive Perfume', 300.00, '', 0.00, '', 'No Description Available', 'm'),
(1940, 0, 'no', NULL, 'Playboy New York-for Him (100ml)', 250.00, '', 0.00, '', 'It smells so unique and is actually refreshing. It has a stronger scent than some of the other Playboy colognes, so a little goes a long way. wear this for yourself not others.?With the Playb', 'm'),
(1941, 0, 'no', NULL, 'Vegas Vegas Dream Perfume For Women, Romance On The Strip', 150.00, '', 12.00, '', 'Fragrance notes:Hexyl? Cinnamal,Linalool, orange and floral scents for seductive woman.Ever dreamed of discovering Vegas on a romantic late night stroll? Now imagine yourself slowly walking d', 'f'),
(1942, 0, 'no', NULL, 'Beyonce Beyonc? Heat EDP For Women 100 ML', 85.00, '', 0.00, '', 'No Description Available', 'f'),
(1943, 0, 'no', NULL, 'Oak Dynasty EDP For Men - 90ml', 95.00, '', 12.00, '', 'From reliving favourite memories to setting a mood, This perfume shares your passion for rich, tasteful and sophisticated fragrances. All rigorously screened, reviewed and tested, our catalog', 'm'),
(1944, 0, 'no', NULL, 'Fragrance World Oniro EDP- 100ml', 175.00, '', 12.00, '', 'A great perfume from the perfumery of Fragrance world, it is for\r\n both male and female. It lasts longer, it does not stain, it made with a\r\n special tradition ', 'f-m'),
(1945, 0, 'no', NULL, 'Intimate Beauty Oatmeal Body Lotion', 90.00, '', 11.00, '', 'Specially formulated with colloidal oatmeal to prevent and relieve chapped and dried skin ', 'f'),
(1946, 0, 'no', NULL, 'Playboy London - For Men- 100ml', 250.00, '', 0.00, '', 'Good for daily spray.Keeps you smelling fresh ', 'm'),
(1947, 0, 'no', NULL, 'Franck Olivier Giorgia For Women - 75ml', 68.00, '', 14.00, '', 'From reliving favourite memories to setting a mood, This perfume shares your passion for rich, tasteful and sophisticated fragrances. All rigorously screened, reviewed and tested, our catalog', 'f'),
(1948, 0, 'no', NULL, 'Queen Latifah Queen Of Hearts', 80.00, '', 0.00, '', 'Fragrance for lovely ladies who love to pamper themselves and be pampered ', 'f'),
(1949, 0, 'no', NULL, 'Elizabeth Arden Arden Beauty EDP For Her - 100ml', 70.00, '', 10.00, '', 'Arden Beauty by Elizabeth Arden is a Floral Green fragrance for women. Arden Beauty was launched in 2002. The nose behind this fragrance is Antoine Lie. Top notes are iris, bergamot, rice flo', 'f'),
(1950, 0, 'no', NULL, 'Franck Olivier Oud Vanile EDP - 100ml', 62.00, '', 16.00, '', 'From reliving favourite memories to setting a mood, This perfume shares your passion for rich, tasteful and sophisticated fragrances. All rigorously screened, reviewed and tested, our catalog', 'f-m'),
(1951, 0, 'no', NULL, 'Oak Fume EDP For Men - 90ml', 95.00, '', 12.00, '', 'From reliving favourite memories to setting a mood, This perfume shares your passion for rich, tasteful and sophisticated fragrances. All rigorously screened, reviewed and tested, our catalog', 'm'),
(1952, 0, 'no', NULL, 'Abraaj Abraaj Valour For Men (EDP) 100ml', 287.00, '', 9.00, '', 'Indulge in a moment of calm amid the chaos with the .? A very strong, loud and intoxicting Arabian scent for the bold and daring! ', 'm'),
(1953, 0, 'no', NULL, 'Louis Will Facial Hair Remover For Women, Electric Painless Hair Removal, Safe To Use  Easy To Clean', 152.00, '', 9.00, '', 'Dimension: about 4.17 inches in height Color: White, Red and Black Material: ABS+ Stainless steel razor head ', 'f'),
(1954, 0, 'no', NULL, 'Generic DM Portable Handheld Plastic Microfiber Quick Dry Hair Comb For M Age Scalp-blue', 155.00, '', 12.00, 'Blue', 'No Description Available', 'f-m'),
(1955, 0, 'no', NULL, 'Annie Annie 100 Processing Caps', 68.00, '', 0.00, '', 'are an easy-use solution for conditioning, processing, showering, coloring, perming, relaxing and even hot oil treatments. Its water resistant, strong vinyl material with comfortable elastic ', 'f-m'),
(1956, 0, 'no', NULL, 'AfricanNaturalistas Reetha Powder', 100.00, '100gm', 0.00, '', '? An excellent natural hair conditioner ? Hair cleanser ? Makes hair stronger and thicker ? Prevents breakage of hair 100% pure and natural ', 'f-m'),
(1957, 0, 'no', NULL, 'HEMANI Neem Oil - 30ml', 125.00, '', 0.00, '', 'Neem is an amazing gift from nature! It offers unbeaten and medically proven health and beauty benefits. Hemani Neem oil derived from neem seeds is ever more amazing! It is used as a main ing', 'f-m'),
(1958, 0, 'no', NULL, 'Generic Professional Spray Bottle-500ml', 90.00, '', 10.00, '', 'Professional Spray bottle with a comfort grip and trigger head fits the hand to make lifting and using easier. Great for mixing moisturising products to spray on hair and suitable for other p', 'f-m'),
(1959, 0, 'no', NULL, 'Felice Henna Powder - 100% Pure - 200G', 125.00, '', 0.00, '', 'Also available in 100g. Henna is a natural plant colouring for the hair. It is made from the powdered leaves of a desert shrub plant, Lawsonia, native to India, Egypt and Syria. Henna is a po', 'f-m'),
(1960, 0, 'no', NULL, 'Felice Organic Jojoba Oil - 50ml', 135.00, '', 0.00, '', 'Product size: 50ml Also available in 100ml Jojoba Oil is?highly unique in that it is the oil that most resembles the skin\'s naturally secreted oil (sebum). Derived from the seeds of the jojob', 'f-m'),
(1961, 0, 'no', NULL, 'Ecostyler Styling Gel With Black Castor & Flaxseed Oil', 70.00, '32oz, 16oz, ...', 0.00, 'Black', 'Eco Styler Black Castor and Flaxseed Oil Styling Gel helps to nourish, repair and grow hair. Wheat protein strengthens and protects hair. Like all of our styling gels, it is weightless and wi', 'f-m'),
(1962, 0, 'no', NULL, 'Felice Bentonite Clay - 200g', 90.00, '', 10.00, '', 'Bentonite\r\nis one of the most effective and powerful healing clays. It can be used\r\ninternally and externally in a variety of ways. : Externally, Bentonite can be\r\nused as a mud mask to draw ', 'f-m'),
(1963, 0, 'no', NULL, 'Generic DM Golden Ceramic Aluminum Tubes Tomb Nylon Bristles With Tooth Rolling Comb-gold&32mm', 149.00, '', 12.00, 'Gold', 'No Description Available', 'f-m'),
(1964, 0, 'no', NULL, 'Generic DM Men Hair Comb Brush Handmade Folding Clip Travel Moustache Beard-silver', 78.00, '', 10.00, 'Silver', 'No Description Available', 'm'),
(1965, 0, 'no', NULL, 'Universal Durable 2 In 1 Hair Straightener/Curler And Hair Dryer.', 150.00, '', 0.00, '', 'Nova 2-in-1 Hair Curler and Straightener Beauty Set has a compact design and this makes it ideal as your traveling companion. You will always look beautiful no matter where you find yourself.', 'f-m'),
(1966, 0, 'no', NULL, 'Felice Neem Oil (Dongoyaro) - 50ml', 90.00, '', 0.00, '', ' Our Neem oil is derived from the cold pressed fruit nuts of the Neem (Azadirachta indica) evergreen tree. Traditionally known for its antibacterial properties, this cleansing treatment oil i', 'f-m'),
(1967, 0, 'no', NULL, 'Generic DM Professional Nylon Hair Brush M Age Comb Detangle Shower Styling-black', 78.00, '', 11.00, 'Black', 'No Description Available', 'f-m'),
(1968, 0, 'no', NULL, 'Bragg Bragg Organic Apple Cider Vinegar 32 Oz. / 946 Ml', 285.00, '', 0.00, '', 'Bragg Organic Raw Apple Cider Vinegar is made from delicious, healthy, organically grown apples. Processed and bottled in accordance with USDA guidelines, it is Certified Organic by Organic C', 'f-m'),
(1969, 0, 'no', NULL, 'Felice Extra Virgin Coconut Oil - Cold Pressed - 200ml', 125.00, '', 0.00, '', 'Virgin Coconut Oil has been used for\r\ncenturies due to its rich\r\nskin-friendly properties. This multi-faceted?oil contains saturated fats\r\nwhich make it perfect for use on all complexions and', 'f-m'),
(1970, 0, 'no', NULL, 'New Gain Rechargeable Hair Clipper With Led Indicator', 64.00, '', 13.00, '', 'New Gain\'s Rechargeable Professional Hair Clipper3 Hours Working Time?Suitable Travel CompanionIs a safe and easy to use rechargeable professional hair clipper for a quick and reliable perfec', 'f-m'),
(1971, 0, 'no', NULL, 'Aunt Jackie\'s Coconut Creme Recipe Set', 74.00, '', 0.00, '', 'No Description Available', 'f-m'),
(1972, 0, 'no', NULL, 'Universal Silicone Hair Scalp Massager', 95.00, '', 0.00, '', 'Do You Want A Massage While Oiling You Hair? Then This Silicone Scalp Massage Brush Is Just For You! Having luscious hair is a person\'s crown and glory. It frames your face, makes you more at', 'f-m'),
(1973, 0, 'no', NULL, 'SoftSheen Carson Sportin\' Waves Relaxer With Pomade', 148.00, '', 0.00, '', 'Sportin Waves hair care products are a maintenance line that provides natural sheen, \r\nmoisture and hold and for short, brushable hairstyles. The line consists\r\n of 2 products that offer 2 le', 'f-m'),
(1974, 0, 'no', NULL, 'Felice Grapeseed Oil - 50ml', 95.00, '', 0.00, '', 'Grapeseed ( Oil is a light, non-greasy, odorless and 100% natural oil pressed from the seeds of grapes. It is suitable for all skin types including sensitive skin. Grapeseed oil is amazing fo', 'f-m'),
(1975, 0, 'no', NULL, 'Felice Palm Kernel Oil -  Cold Pressed - 100ml', 90.00, '', 0.00, '', 'A tropical oil derived by extraction from the Palm Kernel/Nut. Palm Kernel Oil has been used locally to?give relief to several skin conditions such as dryness and?eczema. It is vitamin and an', 'f-m'),
(1976, 0, 'no', NULL, 'Generic Long Free Part Shaggy Natural Wavy Lace Front Synthetic Wig - BLACK', 71.00, '', 10.00, 'Black', 'Type:?Full Wigs Cap Construction:?Lace Front Style:?Wavy Cap Size:?Average Material:?Synthetic Hair Bang Type:?Free Part Length:?Long Lace Wigs Type:?Lace Front Wigs Occasion:?Brithday Party,', 'f-m'),
(1977, 0, 'no', NULL, 'American Garden American Garden Apple Cider Vinegar - 473ml', 74.00, '', 10.00, '', 'Give\r\n the sour taste of vinegar the sweet touch of Apple cider with American \r\nGarden! Make it a part all your favorite salads, chips, and fries and \r\nenjoy its unique taste with several hea', 'f-m'),
(1978, 0, 'no', NULL, 'Fashion Hair Brazillian Romance Curls Human Hair - NATURAL', 150.00, '', 17.00, '', 'No Description Available', 'f-m'),
(1979, 0, 'no', NULL, 'Nova  Hair Straightener And Curler-different Colours Apply', 175.00, '', 0.00, '', 'Get more value for your money with the 2-in-1\r\nNova Hair Straightener and Curler. This amazing hair product has a swivel cord\r\nfor easy rotation and ceramic straightener plates which provides', 'f-m'),
(1980, 0, 'no', NULL, 'Sunny Isle Jamaican Black Castor Oil - Replenish And Rejuvenate', 175.00, '', 13.00, 'Black', 'When you\'re searching for a powerful and versatile hair and skin care product, look no further than Sunny Isle Extra Dark Jamaican Black Castor Oil. This potent oil is effective for treating ', 'f-m'),
(1981, 0, 'no', NULL, 'Generic DM Plastic Professional Hairdressing Tail Comb Haircut Barber-black', 74.00, '', 9.00, 'Black', 'No Description Available', 'f-m'),
(1982, 0, 'no', NULL, 'Generic DM Portable Hair Roller Comb Styling Beauty Hairdressing Curling Round-black & Red', 55.00, '', 16.00, 'Black, Red', 'No Description Available', 'f-m'),
(1983, 0, 'no', NULL, 'HEMANI Flaxseed Oil - 30ml,', 70.00, '', 0.00, '', ', also known as , is made from the\r\nseeds of the flax plant. The oil contains substances which promote good health.\r\nLinseed and linseed oil are rich in alpha-linolenic acid (ALA), an essenti', 'f-m'),
(1984, 0, 'no', NULL, 'HEMANI Sandalwood Oil - 30ml', 60.00, '', 0.00, '', 'Sandalwood Oil\r\nBenefits Are you looking for an increase in a sense of\r\ncalmness and greater mental clarity in your day to day life? Many of us are\r\nstressed out and overwhelmed with so many ', 'f-m'),
(1985, 0, 'no', NULL, 'Hair Angel Curly Weavon 18 Inches', 70.00, '', 0.00, '', 'Natural?hairColor 2718 inches ', 'f-m'),
(1986, 0, 'no', NULL, 'Eco Styler #Teamnatural Olive Oil Edges On Fleek Bundle', 150.00, '', 13.00, 'Olive', 'A perfect edges on fleek bundle of?Eco Style Olive Oil Styling Gel and ORS Olive Oil Edge Control to give you that perfect?edges on fleek Eco Style Olive Oil Styling gel is made with 100% pur', 'f-m'),
(1987, 0, 'no', NULL, 'HEMANI Neem Oil - 30ml', 125.00, '', 9.00, '', 'Neem is an amazing gift from nature! It offers unbeaten and medically proven health and beauty benefits. Hemani Neem oil derived from neem seeds is ever more amazing! It is used as a main ing', 'f-m'),
(1988, 0, 'no', NULL, 'Generic DM Practical Double Sided Men Beard Shaping Styling Template Hair Trim Comb-white', 95.00, '', 14.00, 'White', 'No Description Available', 'm'),
(1989, 0, 'no', NULL, 'Bell Castor Oil (70ml) X 2 Bottles', 130.00, '', 0.00, '', 'Castor Oil can be used for the relief of occasional constipation, but also used alternatively for enhancing hair and beard growth.?Massaging Bell\'s B Castor Oil on scalp and beards does resul', 'f-m'),
(1990, 0, 'no', NULL, 'Neworldline Head Clip Curly Wavy Women Synthetic Hair Extension ? Black', 106.00, '', 12.00, 'Black', 'Head Clip Curly Wavy Women Synthetic Hair Extension Description: Package ', 'f'),
(1991, 0, 'no', NULL, 'Universal Professional Spray Bottle-500ml', 99.00, '', 0.00, '', 'Professional Spray bottle with a comfort grip and trigger head fits the hand to make lifting and using easier. Great for mixing moisturising products to spray on hair and suitable for other p', 'f-m'),
(1992, 0, 'no', NULL, 'L.A. Pride Nude Powder-Color 2', 129.00, '', 9.00, '', 'L.A. Pride Nude powder of 3 different shades. The powder For an even and flawless look. very suitable for contouring and bronzing. It ensures the best skin colour match and guarantees a trace', 'f-m'),
(1993, 0, 'no', NULL, 'Vaseline  Intensive Care Cocoa Radiant Lotion', 85.00, '', 0.00, '', 'Vaseline Intensive Care Cocoa Radiant LotionFor Dry, Dull, Cracked SkinVaseline Intensive Care Cocoa Radiant Lotion features cocoa butter, an ingredient known for soothing and healing dry, du', 'f-m'),
(1994, 0, 'no', NULL, 'L.A. Pride True Match Super Blendable Powder Palette-02', 150.00, '', 13.00, '', 'True Match Super Blendable powder of different shades. The powder For an even and flawless look. very suitable for contouring and bronzing. It ensures the best skin colour match and guarantee', 'f-m'),
(1995, 0, 'no', NULL, 'Bluelans 1 Pc Long Lasting Lipliner Beauty Sexy Lip Contour Matte Pencil Cosmetic Tool-Icon', 63.00, '', 14.00, 'Blue', 'Specifications: Long lasting lip liner pencils. Natural look, great for party makeup or daily use. Fashion lip liner for home use and professional makeup. Type: Lip Liner Pen Gender: Women\'s ', 'f-m'),
(1996, 0, 'no', NULL, 'Generic Antibacterial Silicone Cleaning Brush Pad Dish Fruit Scrubber Clean Tool', 58.00, '', 15.00, '', 'Antibacterial Silicone Cleaning Brush Pad Dish Fruit Scrubber Kitchen Clean Tool Description: Package included:  ', 'f-m'),
(1997, 0, 'no', NULL, 'Bluelans 5 Pairs Long Thick Eye Lashes Extension Cross Makeup Tool False Fake Eyelashes', 66.00, '', 14.00, 'Blue', 'Specification: Long false eyelashes are made by high quality which can match your casual and party makeup. Very soft and comfortable to wear. They can be removed by eye makeup remover. Can be', 'f-m'),
(1998, 0, 'no', NULL, 'Baschi Baschi Quick Slimming Capsules', 66.00, '', 18.00, '', 'box is a brand-new weight loss supplement which is very effective in weight reduction and weight management. This product is easy to use by taking only one capsule per day but the result is m', 'f-m'),
(1999, 0, 'no', NULL, 'Beauty Contour Powder Palette Foundation Whitening Matte Moisturizer Concealer Make Up Pressed Professional Aloe Vera', 58.00, '', 17.00, 'White', 'No Description Available', 'f-m'),
(2000, 0, 'no', NULL, 'Bluelans 5 Pairs Blue?? Long Thick Cross False Eyelashes Handmade Eye Lashes Makeup', 67.00, '', 14.00, 'Blue', 'Specifications: High quality lashes, soft, silky and glossy. Can be removed by eye makeup remover. Simple to use and comfortable to wear. Individual lashes are hand selected for their beauty,', 'f-m'),
(7405, 0, 'no', NULL, 'Bluelans 1 Pc Long Lasting Lipliner Beauty Sexy Lip Contour Matte Pencil Cosmetic Tool-Famous', 63.00, '', 14.00, 'Blue', 'Specifications: Long lasting lip liner pencils. Natural look, great for party makeup or daily use. Fashion lip liner for home use and professional makeup. Type: Lip Liner Pen Gender: Women\'s ', 'f-m'),
(7406, 0, 'no', NULL, 'HEMANI Organic Argan Bath Soap', 73.00, '', 0.00, '', 'This soap is extremely beneficial in repairing and replenishing skin and return the natural skin to make the it glow naturally. Argan is a rich skin cell moisturizer which helps repair and pr', 'f-m'),
(7407, 0, 'no', NULL, 'Dr Zoh Botcho B20 Breast Lifting And Enhancement Cream', 70.00, '', 0.00, '', 'Botcho B20 Breast Lifting and enhancement cream is the latest release from Botcho manufacturer.? It gives a breast total youthfulness.By increacing the size of your breast up to 2-3 cups lead', 'f-m'),
(7408, 0, 'no', NULL, 'HEMANI 100% Organic Honey With Black Seeds', 150.00, '', 0.00, 'Black', 'No Description Available', 'f-m'),
(7409, 0, 'no', NULL, 'Reman\'s Dooz 14000 Delay Spray', 200.00, '', 17.00, '', 'Dooz\r\n 14000 Silver (Delay Spray) desensitises the P-nis when sprayed to the \r\nhead and works within 5 minutes of being sprayed. Once used you can have\r\n s-x for up to 10 times longer than pr', 'f-m');
INSERT INTO `products_product` (`id`, `status`, `is_bundle`, `bundle_reference_no`, `name`, `price`, `sizes`, `discount`, `colors`, `description`, `gender`) VALUES
(7410, 0, 'no', NULL, 'Universal USB Virginal Vibrating Egg', 104.00, '', 10.00, '', 'this?12 functions USB plug-in vibration egg vibrator. Measures 0.98 inch wide and 2.16 inches long .Pick from 12 \r\ndifferent vibration patterns .Vibrator is powered by USB charger , do not\r\n ', 'f-m'),
(7411, 0, 'no', NULL, 'HEMANI Garlic Oil - 30ml', 90.00, '', 0.00, '', 'Hemani Garlic oil is used for many conditions related to the heart and blood system.These conditions include high blood pressure, low blood pressure, high cholesterol, inherited high choleste', 'f-m'),
(7412, 0, 'no', NULL, 'Fashion Fashion Natural Breast Enlargement Bella Must UP Cream Pueraria Mirifica Bust Butt Enhance', 103.00, '', 17.00, '', 'No Description Available', 'f-m'),
(7413, 0, 'no', NULL, 'Flex Flex Classic Straw-berry Condom- 12 Packs Of 36 Packs', 120.00, '', 0.00, '', 'You can\'t go wrong with this combination of good old classic and dash of the new. The Flex Classic Condom is designed to keep you safe while at the same time introducing you to sensations you', 'f-m'),
(7414, 0, 'no', NULL, 'Generic Gel Toe Stretcher Separator Instant Therapeutic Correction Feet Hammer', 93.00, '', 16.00, '', 'Gel Toe Stretcher Separator Instant Therapeutic Correction Feet Hammer Package Included? ', 'f-m'),
(7415, 0, 'no', NULL, 'Flex Flex Stamina Condom- 24 Packs Of 72 Condoms', 240.00, '', 0.00, '', 'Flex stamina condom is a lidocaine treated condom designed to guarantee lasting excitement, extra sensation, and heightened pleasure.The Flex stamina allows your partner to stay longer while ', 'f-m'),
(7416, 0, 'no', NULL, 'Allwin Stop Snoring Chin Strap Support Solution Sleep Anti Snore Jaw Belt Headband-Black', 52.00, '', 12.00, 'Black', 'No Description Available', 'f-m'),
(7417, 0, 'no', NULL, 'Dr Zoh Botcho Cream For  Butt And Hips Enlargement Cream With Hologram 250ml', 75.00, '', 11.00, '', 'New Botcho Creme 10x Caramel plus with Hologram by Dr Zoh. This is the Best so far. Dr Zoh never stops amazing us. faster than any Botcho ever existed. The ingredients are increased and forti', 'f-m'),
(7418, 0, 'no', NULL, 'Bluelans 20Pcs/Set Pro Makeup Powder Foundation Eyeshadow Eyeliner Lip Cosmetic Brush Set', 116.00, '', 14.00, 'Blue', 'Specifications: This professional high quality makeup brush set includes all the basics you need for daily application, which is easy to stick powder, apply color, rendering uniform. Suitable', 'f-m'),
(7419, 0, 'no', NULL, 'HEMANI HemaniO?Natural Organic Whitening Turmeric Soap', 225.00, '', 0.00, 'White', 'HemaniO?Natural Organic Turmeric Whitening Soap protects your skin from UV B radiation, removes sunburn, eczema, dermatitis & psoriasis, removes dead skin cells, absolutely brightens the skin', 'f-m'),
(7420, 0, 'no', NULL, 'Neutrogena Visibly Clear Pore & Shine Daily Scrub - 150ml', 225.00, '', 0.00, '', 'It has a double action for tightened pores & mattified skin, providing a flawless-looking complexion. Helps tighten pores:?with naturally-derived exfoliators and salicylic acid, it cleanses d', 'f-m'),
(7421, 0, 'no', NULL, 'Isosensual Isosensuals Butt Enlargement Cream', 300.00, '', 12.00, '', 'SEE GREAT REVIEWS ON AMAZON IT WORKS! ', 'f-m'),
(7422, 0, 'no', NULL, 'HEMANI Raspberry & Papaya Brightening Soap', 75.00, '', 0.00, '', 'A gentle soap that helps make skin fairer. Made with combinations of herbal ingredients and papaya and raspberry extract. Its helps treat freckles, age spots and can dramatically change the t', 'f-m'),
(7423, 0, 'no', NULL, 'Forever Living Forever Aloe Vera Gel', 250.00, '', 0.00, '', 'Enjoy\r\n the exotic?flavor of our pure aloe vera gel! Recommended daily dosage: \r\nif you have not been?drink it?before start with 2 oz. the first 3 days \r\nand after?4 oz.?every morning before ', 'f-m'),
(7424, 0, 'no', NULL, 'Generic AFY Breast Enlargement Bust Butt Augmentation Fast Breast Cream For Women', 75.00, '', 10.00, '', 'AFY Breast Enlargement Bust Butt Augmentation Fast Breast Cream For Women  Description  Features:  Specifications:  Package Contents:  Notes: ', 'f'),
(7425, 0, 'no', NULL, 'Fashion Instant Smile Artificial Front Teeth Veneer', 250.00, '', 11.00, '', 'Get your smile back ,with this instant clip on smile Veneer teeth ', 'f-m'),
(7426, 0, 'no', NULL, 'Flex Flex Brown Sugar Chocolate Flavored Condom- 4 Packs Of 12 Pcs', 100.00, '', 0.00, 'Brown, Chocolate', 'Have a taste of both worlds- thin for heightened sensitivity and studded for maximum stimulation with Brown Sugar. Made from the finest quality latex to help reduce the risk of pregnancy and ', 'f-m'),
(7427, 0, 'no', NULL, 'Alexsial Extra Virgin Coconut Hair Oil', 58.00, '', 0.00, '', 'Alexsial Extra\r\nVirgin Coconut Oil is rich in antioxidant, Vitamin E, it penetrates the hair\r\nshaft and intensively hydrates. it also smooths, strengthens, helps protect\r\nagainst damage and a', 'f-m'),
(7428, 0, 'no', NULL, 'Bluelans Women Mushroom Head Powder Puff Hydrophilic Cosmetic For Face Makeup Skin Care-Orange', 69.00, '', 14.00, 'Blue, Orange', 'Specification: Natural material is extra gentle to skin. This powder puff is perfect for face makeup or body skin care. The flat back handle makes it more portable and convenient to use or ke', 'f'),
(7429, 0, 'no', NULL, 'Universal 10 Pieces Professional Kabuki Makeup Brush Set - Pink (Small-sized)', 135.00, '', 12.00, 'Pink', 'This Premium Synthetic Kabuki Makeup Brush Set is perfect for both beginners and professional makeup artist. Five different types brushes(Angled, Round, Flat, Flat Angled, Tapered ) provide e', 'f-m'),
(7430, 0, 'no', NULL, 'HEMANI Organic Herbal Rose Bath Soap', 73.00, '', 0.00, '', 'Herbal rose soap is for today\'s men and women who loves to leave a lasting impression on their spouses & friends our highly scented exquisite premium quality sensual herbal rose bath soap lea', 'f-m'),
(7431, 0, 'no', NULL, 'Flex Flex Spice Ultra-Thin Strawberry Flavored Condom- 24 Packs Of 72 Condoms', 225.00, '', 0.00, '', 'Flex Spice premium condoms is an ultra-thin and higly sensitive condom with straw berry flavour .It is designed to provide that natural feel and? to provide extra sensation and heightened ple', 'f-m'),
(7432, 0, 'no', NULL, 'Intelligent NuEnergy - 30 Vegetarian Capsules', 78.00, '', 0.00, '', 'is a combination of traditional Ayurvedic herbs which have been commonly used for thousands of years to promote normal energy levels.* Many of these herbs are concentrated by an extremely pow', 'f-m'),
(7433, 0, 'no', NULL, 'Papaya Breast Firming And  Enlargement Cream.full/round Breast', 150.00, '', 0.00, '', 'PAPAYA breast enlargement unique cream formulation is absorbed very quickly in to the breast to penetrate deeply allowing maximal results that are applied directly to the target tissues.The e', 'f-m'),
(7434, 0, 'no', NULL, 'Generic 3in1 Electric Facial Cleansing Brush Set Soft Scrubber Face Body Exfoliating', 174.00, '', 14.00, '', ' Feature:  Voltage: 3.7V Rated power: 1.2W Battery capacity: 400mA Product Size: 160x70x60mm Charging mode: USB interface Main material: ABS Benefits:  1. Exfoliating, clean pores, reduce por', 'f-m'),
(7435, 0, 'no', NULL, 'Vagisil Odor Block Intimate Vaginal Wash 8oz', 164.00, '', 15.00, '', 'At one time or another, almost every woman deals with feminine odor. And no wonder ? you have thousands of sweat glands in your intimate area. Exercise, your period, and even what you eat can', 'f-m'),
(7436, 0, 'no', NULL, 'Generic Anti Snoring Snore Free Snore Stopper Silicone Nose Clip Sleeping Device', 54.00, '', 12.00, '', 'Anti Snoring Snore Free Snore Stopper Silicone Nose Clip Sleeping Device Description Package Content: ', 'f-m'),
(7437, 0, 'no', NULL, 'BioAQUA SKIN ESSENTIAL  PURE LAVENDER OIL', 100.00, '', 0.00, 'Lavender', 'BioAqua Lavender Oil has a rich alluring aroma. It is known to help reduce anxiety. It is also used to sooth common cuts and bruises. Lavender Oil helps reduce scarring, it is suitable for tr', 'f-m'),
(7438, 0, 'no', NULL, 'HEMANI Organic Taramira Oil', 100.00, '', 0.00, '', 'Taramira oil has an amazing effect on the hair growth. Massaging your hair with Jamba oil twice a week, 2-3 hours before taking a bath makes your hair grow at a faster rate. You will start no', 'f-m'),
(7439, 0, 'no', NULL, 'Flex Flex Treasure Island Condom- 12 Packs Of 36 Pcs', 120.00, '', 0.00, '', 'Why have just one pack when you can get all three variants of Flex all wrapped in one? Treasure Island is a combo pack of three flavored variant delights in a box: One Flex Spice condom- ultr', 'f-m'),
(7440, 0, 'no', NULL, 'Generic Jetting Buy Early Pregnancy Test Strips High Accuracy 5Pcs', 97.00, '', 10.00, '', '100% New Condition! *15miu sensitivity. *Top Quality,Factory Price! This is for  Pregnancy Test Strips for monitoring of early pregnancy. How to use it: Collect urine sample into a plastic cu', 'f-m'),
(7441, 0, 'no', NULL, 'Gold Circle New Gold Circle Condom -24 Packs', 125.00, '', 0.00, 'Gold', 'Gold circle is Society for Family health pinnacle product with over 20 years in the Nigerian Market. Gold Circle (Classic) undergoes two levels of quality assurance test, hence its double tes', 'f-m'),
(7442, 0, 'no', NULL, 'HEMANI Organic Almond Bath Soap', 73.00, '', 0.00, '', '1. For Smooth, Flawless Skin?2. For Deep Cleansing Of Skin?3. To Remove Dark Circles & Tan or pigmentation?4. To Relieve Eczema & Psoriasis?5. To Treat Skin Rashes?6. To Reduce Fine Lines & O', 'f-m'),
(7443, 0, 'no', NULL, 'Bluelans 5 Pairs 3D Eye Lashes Thick Long False Eyelashes Extension Makeup Beauty Tools', 72.00, '', 14.00, 'Blue', 'Specifications: Very soft and comfortable to wear. Give you a charming and sexy look with these false eyelashes. They can be removed by eye makeup remover. Item Name: False Eyelash Theme: Bea', 'f-m'),
(7444, 0, 'no', NULL, 'HEMANI 100% Organic Honey With Black Seed', 300.00, '', 0.00, 'Black', 'A totally characteristic sweetener, it goes back more than many years, yet the medical advantages of nectar are still not generally known even today. Healthier and more immaculate than manufa', 'f-m'),
(7445, 0, 'no', NULL, 'Flex Flex Brown Sugar Chocolate Flavored Condom- 24 Packs Of 72 Pcs', 225.00, '', 0.00, 'Brown, Chocolate', 'Have a taste of both worlds- thin for heightened sensitivity and studded for maximum stimulation with Brown Sugar. Made from the finest quality latex to help reduce the risk of pregnancy and ', 'f-m'),
(7446, 0, 'no', NULL, 'LongLife Testo-Boost Energy + Stamina For Men', 88.00, '', 12.00, '', 'Testo-Boost is scientifically formulated to naturally help optimize the production and balance of key hormones for male performance. For adult men, Testo-Boost supports vitality, stamina, and', 'm'),
(7447, 0, 'no', NULL, 'Forever Living Forever Aloe Lips - Lip Balm With Aloe, Beeswax And Jojoba', 60.00, '', 13.00, '', 'Aloe Vera for lips with jojoba and?Beeswax?is a wonderful multi-purpose for skin treatment. Forever Living Aloe Vera Lips soothes, smooths and moisturizes hour chapped and dry lips. Its compa', 'f-m'),
(7448, 0, 'no', NULL, 'HEMANI Organic Black Seed Bath Soap', 73.00, '', 0.00, 'Black', 'handmade soap by Hemani which is one of the best cosmetics brands of Pakistan?1) It ensures fresh bathing and gives several skin benefits.?2) It increases the glow of the skin,tones and impro', 'f-m'),
(7449, 0, 'no', NULL, 'Flex Flex Stamina Condom- 12 Packs Of 36 Condoms', 120.00, '', 0.00, '', 'Flex stamina condom is a lidocaine treated condom designed to guarantee lasting excitement, extra sensation, and heightened pleasure.The Flex stamina allows your partner to stay longer while ', 'f-m'),
(7450, 0, 'no', NULL, 'BioAQUA Tea Tree Oil', 99.00, '', 0.00, '', 'BioAqua\'s Tea Tree Oil is derived from the leaves of Melaleuca Alternifolia. Tea Tree Oil is prominent for treating acne and razor burns, it helps in fighting bacteria, it assists in uncloggi', 'f-m'),
(7451, 0, 'no', NULL, 'Dr Zoh Dr Zoh Botcho X10 Butt Enlargement Cream 250ml', 63.00, '', 0.00, '', 'With over 200,000 women crazy about this butt cream worldwide.... If they Can achieve a big butt and hips with this cream, so can you!We call it \'\'African Curve Secret\'Discovered by An Africa', 'f-m'),
(7452, 0, 'no', NULL, 'Flex Flex Stamina Condom- 4 Packs Of 12 Condoms', 100.00, '', 0.00, '', 'Flex stamina condom is a lidocaine treated condom designed to guarantee lasting excitement, extra sensation, and heightened pleasure.The Flex stamina allows your partner to stay longer while ', 'f-m'),
(7453, 0, 'no', NULL, 'Forever Living Stabilized Forever Aloe Vera Gel', 89.00, '', 1.00, '', 'No Description Available', 'f-m'),
(7454, 0, 'no', NULL, 'Aichun Beauty Hip Lift Up Massage Cream-120g', 54.00, '', 11.00, '', 'Aichun?Hip Up Cream?is \r\nan effective cream that contains natural herbal extracts ?that help your\r\n butt looks beautiful, tight, plump, smooth, full, balance.Raising the \r\nhips up.Tighten sag', 'f-m'),
(7455, 0, 'no', NULL, 'ORS Curls Unleashed Shea Butter & Mango Leave-in Conditioner - 12oz', 185.00, '', 15.00, '', 'Curls Unleashed Shea Butter & Mango Leave-in Conditioner wraps your curls in a protective melange blended with?Shea?butter, mango and other ingredients. This leave-in helps to protect your st', 'f-m'),
(7456, 0, 'no', NULL, 'HEMANI Organic Saffron Bath Soap', 73.00, '', 0.00, '', 'It makes skin naturally fair Gives radiant and smooth skin Helps in the treatment of acne & blemishes Helps in the treatment of dull skin Helps to tone the skin Improves face texture ', 'f-m'),
(7457, 0, 'no', NULL, 'Generic Xtacy Plus - Raw Male Libido And 	Premature Ejaculation Cure', 175.00, '', 0.00, '', 'Xtacy Plus - Raw Male Libido and Sex Enhancement??is specifically formulated to increase?sexual desire, sperm production,?enhance the oxygen content in blood which helps in penis erection for', 'm'),
(7458, 0, 'no', NULL, 'HEMANI Organic Slim+ Herbal Tea', 150.00, '', 0.00, '', 'Hemani Slim+ 100% natural tea which can give you your desired waistline in no time! And you don\'t have to break a bank! It\'s the one most natural and safest way to shed weight. ', 'f-m'),
(7459, 0, 'no', NULL, 'Neworldline Powerful Bullet Pocket Dildo Vibrator G-Spot Female Masturbate Vibrator Sex Toys-Silver', 90.00, '', 12.00, 'Silver', 'Powerful Bullet Pocket Dildo Vibrator G-Spot Female Masturbate Vibrator Sex Toys Features: Package Included: ', 'f'),
(7460, 0, 'no', NULL, 'Beauty Only 1PC New Fashion Clarinet Aunt Red Grape Violet Lipstick Black Lipstick 16 Colors', 60.00, '', 17.00, 'Black, Red, Violet', 'No Description Available', 'f-m'),
(7461, 0, 'no', NULL, 'Cici Glam Bamboo Charcoal Half-Ball Facial Konjac Sponge', 95.00, '', 5.00, '', 'Cici Glam Bamboo Charcoal Konjac Facial Sponge, for Acne, breakouts and blackheads Natural, Eco-Friendly, Biodegradable and Chemical Free About the Product IMPROVES SKIN TEXTURE: Cici Glam Ko', 'f-m'),
(7462, 0, 'no', NULL, 'Cici Glam Pink Clay Heart-Shaped Facial Konjac Sponge', 90.00, '', 10.00, 'Pink', 'Cici Glam Pink Clay Konjac Facial Sponge, for Eczema, Rosacea and psoriasis Natural, Eco-Friendly, Biodegradable and Chemical Free IMPROVES SKIN TEXTURE: Cici Glam Konjac Facial Sponge gently', 'f-m'),
(7463, 0, 'no', NULL, 'Flex Flex Treasure Island Condom- 24 Packs Of 72 Pcs', 225.00, '', 0.00, '', 'Why have just one pack when you can get all three variants of Flex all wrapped in one? Treasure Island is a combo pack of three flavored variant delights in a box: One Flex Spice condom- ultr', 'f-m'),
(7464, 0, 'no', NULL, 'SNAP Best Smile Instant Upper Teeth Crown Veneer', 70.00, '', 11.00, '', 'Instant teeth crown veneer improves your smile by covering? the upper teeth and concealing your discoloured and missing teeth. ', 'f-m'),
(7465, 0, 'no', NULL, 'Aichun Beauty Aichun- Fat Burning Slimming & Fitting Cream- (Ginger Chilli)', 67.00, '', 12.00, '', 'Cream increases fat\r\nmetabolism while offering the benefits of dermal smoothing and toning. The result is firm,slender body contours. it contains potent,herbal extracts which offer significan', 'f-m'),
(7466, 0, 'no', NULL, 'HEMANI Organic Whitening Gold Caviar Lotion', 250.00, '', 0.00, 'Gold, White', 'A skin repairing, skin polishing, glowing and skin tone balancing lotion. Powerful enough to whiten and brighten the skin, yet gentle enough on normal and sensitive skin. Amazing brand that i', 'f-m'),
(7467, 0, 'no', NULL, 'Beauty Tanson Origin USA Vaseline Lip Balm Lasting Long Lip Therapy Soft And Smooth Lips Anti Wrinkle Aging Refresh Nourish', 83.00, '', 17.00, 'Tan', 'No Description Available', 'f-m'),
(7468, 0, 'no', NULL, 'Durex Condoms - Extra Safe - 1 Pack Of 12pcs', 95.00, '', 13.00, '', 'No Description Available', 'f-m'),
(7469, 0, 'no', NULL, 'Flex Spice Ultra-Thin Strawberry Flavored Condom- 4 Packs Of 12 Condoms', 100.00, '', 0.00, '', 'Flex Spice premium condoms is an ultra-thin and higly sensitive condom with straw berry flavour .It is designed to provide that natural feel and? to provide extra sensation and heightened ple', 'f-m'),
(7470, 0, 'no', NULL, 'Flex Flex Pleasure Unlimited Bubble Gum Flavored Condom- 24 Packs Of 72 Condoms', 225.00, '', 0.00, '', 'Maximum\r\npleasure is guaranteed with Pleasure Unlimited. The unique bubble gum flavor\r\nstirs up the passion in you, bringing you and your partner to unimaginable\r\nheights of passion. Flavored', 'f-m'),
(7471, 0, 'no', NULL, 'Fragrance World Fresh Storm EDP 100ml Perfume For Men', 225.00, '', 0.00, '', 'Fragrance World Fresh Storm EDP 100ml Perfume For Men, an addictive strong scent that creates a distinctive aroma to make . You stand out from the crowd. Good longevity and strong silage. ', 'm'),
(7472, 0, 'no', NULL, 'Gold Circle New Gold Circle Condom -12 Packs', 90.00, '', 0.00, 'Gold', 'Gold circle is Society for Family health pinnacle product with over 20 years in the Nigerian Market. Gold Circle (Classic) undergoes two levels of quality assurance test, hence its double tes', 'f-m'),
(7473, 0, 'no', NULL, 'Universal Electronic Facial Spin Spa Wash Brush', 70.00, '', 13.00, '', 'Electronic spin brush, spins and washes your face leaving your face radiating. Great aid for cosmetics wash. Mild and gentle ', 'f-m'),
(7474, 0, 'no', NULL, 'HEMANI Milk & Yogurt Organic Soap', 75.00, '', 0.00, '', 'This soap is enriched with proteins and will make your skin smooth and soft. It is a special formula of soap with milk and yogurt that will help to cleans and nourish your skin. Special prote', 'f-m'),
(7475, 0, 'no', NULL, 'Maxman Penis Enlargement And Delay Ejaculation Cream', 63.00, '', 0.00, '', 'Maxman Er??t??n/D?l?? Cr??m F?r M?n w?ll h?l? you enjoy ??x b?tt?r ?nd f?r l?ng?r, g?v? ??u a rapid and full ?r??t??n, ?t?mul?t? the bl??d v????l? ?f th? penis, thu? ?ll?w?ng th? increase ?n ', 'f-m'),
(7476, 0, 'no', NULL, 'HEMANI Lavender Oil -30ml', 55.00, '', 0.00, 'Lavender', 'Lavender oil benefits your body in the following ways: Reduces anxiety and emotional stressHeals burns and woundsImproves sleepRestores skin complexion and reduces acneSlows aging with powerf', 'f-m'),
(7477, 0, 'no', NULL, 'Flex Flex Pleasure Unlimited Bubble Gum Flavored Condom- 12 Packs Of 36 Condoms', 120.00, '', 0.00, '', 'Flex Pleasure Unlimited is a unique premium bubble condoms are designed to provide extra sensation and heightened pleasure.The Flex Pleasure unlimited a durable premium top quality brand that', 'f-m'),
(7478, 0, 'no', NULL, 'Bluelans Beauty Highlighter Eyeshadow Pencil Cosmetic Glitter Eye Shadow Eyeliner Pen-Golden Brown', 61.00, 'Black, Grey, Golden, Brown, White', 14.00, 'Blue, Brown, Gold', 'Specifications: These glitter color makeup pencil can be used as eye shadow. Portable and lightweight, easy to carry with you. A perfect choice for both professional use or home use. Type: Ey', 'f-m'),
(7479, 0, 'no', NULL, 'Developpe Sex Penis Enlargement & Ejaculation Delay Cream', 68.00, '', 11.00, '', 'Th?? ?? a n?tur?l traditional US ?xtr??t made fr?m n?tur?l ?l?nt u??d b? ?n???nt US ????l? f?r natural ?n?r????m?nt ?f th? ??n?? ??z? ?nd also to improve ??x t?m? b? d?l???ng ?j??ul?t??n.?Has', 'f-m'),
(7480, 0, 'no', NULL, 'SUPER VIGA SPRAY  Super Viga 150000 Delay Spray', 200.00, '', 17.00, '', 'SUPER VIGA 150000 (Delay Spray with Vitamin E) Stop premature ejaculation with Super Viga 150000?Delay Spray.  ?? ? ? ? ??????????\r\nprevents fast\r\nejaculation ?????????\r\nstrong erection ?????', 'f-m'),
(7481, 0, 'no', NULL, 'Maxman Maxman- Ejaculation Delay And Penis Enlargement Cream', 59.00, '', 16.00, '', '?????????\r\nBrand Name:Okeny\'s ?????????\r\nEssential Oil Type:Compound Essential Oil ?????????\r\nModel Number:penis erection essential oil ?????????\r\nIngredient:100% pure natural plant ?????????', 'f-m'),
(7482, 0, 'no', NULL, 'Vienna Vienna Goat\'s Milk Soap', 220.00, '', 11.00, '', 'No Description Available', 'f-m'),
(7483, 0, 'no', NULL, 'Gold Circle New Gold Circle Condom -4 Packs', 90.00, '', 0.00, 'Gold', 'Gold circle is Society for Family health pinnacle product with over 20 years in the Nigerian Market. Gold Circle (Classic) undergoes two levels of quality assurance test, hence its double tes', 'f-m'),
(7484, 0, 'no', NULL, 'Flex Flex Brown Sugar Chocolate Flavored Condom- 12 Packs Of 36 Pcs', 120.00, '', 0.00, 'Brown, Chocolate', 'Have a taste of both worlds- thin for heightened sensitivity and studded for maximum stimulation with Brown Sugar. Made from the finest quality latex to help reduce the risk of pregnancy and ', 'f-m'),
(7485, 0, 'no', NULL, 'ASDA Chia Seeds. 150g', 78.00, '', 9.00, '', 'The chia seed is nutrient-dense and packs a punch of energy-boosting power.Chia seeds benefits include promoting healthy skin, reducing signs of aging, supporting the heart and digestive syst', 'f-m'),
(7486, 0, 'no', NULL, 'Ushas 6 Colour Powder Pallet + 24 Brush Set', 240.00, '', 0.00, '', '6 palettes of oil absorbing compact powder of different shades.?\r\n\r\n?\r\n\r\nThe powder for a unique and flawless looks and is very suitable for contouring and bronzing.\r\n\r\n?\r\n\r\nIt ensures the be', 'f-m'),
(7487, 0, 'no', NULL, 'L.A. Pride Nude Powder-Color 1', 129.00, '', 9.00, '', 'L.A. Pride Nude powder of 3 different shades. The powder For an even and flawless look. very suitable for contouring and bronzing. It ensures the best skin colour match and guarantees a trace', 'f-m'),
(7488, 0, 'no', NULL, 'Lanthome Natural  Essential Oil For Buttock And Hip Enlargement', 90.00, '', 9.00, '', '   Brand Name:Lanthome Product Name:Butt Lifting Essential Oil Shelf Life:3 years Net Volume:10ml Main Ingredients: Rosa rugos-a,Foeniculum vulgare, grapefruit, cypress, juniper, cinnamon, la', 'f-m'),
(7489, 0, 'no', NULL, 'HEMANI Organic Herbal Papaya Scrub Bath Soap Made From Herbal Essential Oils', 73.00, '', 0.00, '', 'Hemani Papaya Herbal soap with papaya extracts helps remove warts, soothe skin eruptions and irritations resulting in soft and smooth skin. The scrub action of the soap helps cleanse the skin', 'f-m'),
(7490, 0, 'no', NULL, 'L.A. Pride True Match Super Blendable Powder Palette-01', 150.00, '', 13.00, '', 'True Match Super Blendable powder of different shades. The powder For an even and flawless look. very suitable for contouring and bronzing. It ensures the best skin colour match and guarantee', 'f-m'),
(7491, 0, 'no', NULL, 'Beauty A++++ 72 Holes Autoclave Sterilizer Case Dental Aluminium Endo Files Holder Box Blue', 101.00, '', 11.00, 'Blue', 'No Description Available', 'f-m'),
(7492, 0, 'no', NULL, 'Generic (Please Watch The Video)8 Pads WithElectrical Stimulator Massage Full Body Relax Muscle Therapy Massager Pulse Acupunctur', 200.00, '', 11.00, '', 'Never use the product at the same time with the following therapeutic electronic instruments:?1. Internal transplanted instrument, such as artificial heart rate regulator.?2. Life maintenance', 'f-m'),
(7493, 0, 'no', NULL, 'Longrich Blood Pressure And Cholesterol Reducing Tea', 114.00, '', 12.00, 'Red', 'It contains large numbers of mucilage and mucilage are thick, slimy substance produced by plant which has a soothing effect on mucous membrane such as the tissues that line the respiratory pa', 'f-m'),
(7494, 0, 'no', NULL, 'St. Ives Daily Hydrating Vitamin E & Avocado Body Lotion- (PACK OF 2)', 61.00, '', 0.00, '', 'This creamy moisturizer is enriched with Vitamin E, a powerful \r\nantioxidant, to provide immediate moisture and protect skin from future \r\ndryness. With regular use, it keeps skin soft, smoot', 'f-m'),
(7495, 0, 'no', NULL, 'HEMANI Organic Herbal Slim& Smart Tea With Mix Fruit', 150.00, '', 0.00, '', 'Hemani Slim & Smart Herbal Tea with Mix Fruit is 100% natural tea which can give you your desired waistline in no time! And you don\'t have to break a bank! It\'s the one most natural and safe ', 'f-m'),
(7496, 0, 'no', NULL, 'Durex Featherlite Condoms - 1 Pack Of 12pcs', 95.00, '', 13.00, '', 'No Description Available', 'f-m'),
(7497, 0, 'no', NULL, 'Natural Serum & Cosmetics Grape Seed Oil', 200.00, '', 20.00, '', 'Natural serum and cosmetics grape seed oil is a natural oil for sensitive skin. It reduces age spots, prevents sunburn, good for face moisturizer, it can be used alone or applied with lotion,', 'f-m'),
(7498, 0, 'no', NULL, 'Universal  Incense Burner ( Color Or Design May Vary )', 80.00, '', 0.00, '', 'Arabian Electric incense burner. This is an electrical burner; it heats the plate under the incense and there is no need for charcoal to burn the incense. It is ideal for your home or office ', 'f-m'),
(7499, 0, 'no', NULL, 'BioAQUA Pure Tea Tree Essential Oil - 2 Bottles', 90.00, '', 9.00, '', 'BioAqua\'s Tea Tree Oil is derived from the leaves of Melaleuca Alternifolia. Tea Tree Oil is prominent for treating acne and razor burns, it helps in fighting bacteria, it assists in uncloggi', 'f-m'),
(7500, 0, 'no', NULL, 'Pasjel Stretch Marks And Scar Removal Cream', 70.00, '', 0.00, '', 'To stretch marks, Scars, fat lines say goodbye now! Powerful Stretch Marks and Scar Removal Postpartum Obesity Pregnancy Cream This stretch marks and scar removal cream has been formed to pro', 'f-m'),
(7501, 0, 'no', NULL, 'Iron Rose Coconut Flour', 145.00, '', 0.00, '', 'Coconut fiber contains?more dietary fiber than the majority of other sources. the unsweetened coconut diatary fiber is made from finely ground, dried and defatted coconut. You can replace up ', 'f-m'),
(7502, 0, 'no', NULL, 'Generic 50Pcs Clear Plastic Empty Cosmetic Sample Containers Jars Pots Small 3g', 139.00, '', 17.00, '', ' Feature:          Package Content:   50Pcs Clear Plastic Empty Cosmetic Sample Containers Jars Pots Small 3g  ', 'f-m'),
(7503, 0, 'no', NULL, 'Neutrogena Neutrogena Alcohol-Free Toner, 8.5 Oz', 200.00, '', 0.00, '', 'No Description Available', 'f-m'),
(7504, 0, 'no', NULL, 'HANDSOME UP Penis Enlargement Vacuum Pump-Handsome Up', 146.00, '', 9.00, '', 'Specifications Color: As picture Material: Silicone + ABS Size: As picture One set includes:?One pump, three silicone seal, and others,\r\nas picture. It can help you to achieve the penis growt', 'f-m');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administrators_email_unique` (`email`),
  ADD UNIQUE KEY `administrators_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `loginsessions`
--
ALTER TABLE `loginsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `logs_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_reference_no_unique` (`reference_no`);

--
-- Indexes for table `orderstates`
--
ALTER TABLE `orderstates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderstates_name_unique` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
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
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loginsessions`
--
ALTER TABLE `loginsessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orderstates`
--
ALTER TABLE `orderstates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7505;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
