-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 09:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groco`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_area_id` int(11) DEFAULT 0,
  `role_id` int(11) NOT NULL,
  `reset_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `admin_area_id`, `role_id`, `reset_token`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@swissgroce.com', '$2y$10$uWmxO6QHlL.4TNPLU3jrWOBSQS5vRgn7HuPv1PO2.bd83evIHjUCS', 0, 1, NULL, 'default_avatar.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_native_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_native_name`, `brand_logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Amazon', 'amazon', '62372b188b747.png', 1, '2022-03-20 13:24:40', '2022-03-20 13:24:40'),
(2, 'Dell', 'dell', '62372d50f0037.png', 1, '2022-03-20 13:34:09', '2022-03-20 13:34:09'),
(3, 'Lanevo', 'lanevo', '62372d5dbf020.png', 1, '2022-03-20 13:34:21', '2022-03-20 13:34:21'),
(4, 'Samsung', 'samsung', '62372d6e1cc83.png', 1, '2022-03-20 13:34:38', '2022-03-20 13:34:38'),
(5, 'Mi', 'mi', '62372db7f359e.png', 1, '2022-03-20 13:35:52', '2022-03-20 13:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `image`, `meta_image`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Lenovo Laptop Discount', 'banner_image_62396798533fe.webp', 'meta_image623967985ce4e.webp', NULL, NULL, 1, '2022-03-22 05:22:57', '2022-03-22 06:07:20'),
(3, 'Egg offers', 'banner_image_623967f3df3ea.webp', 'meta_image623967f3e93a9.webp', NULL, NULL, 1, '2022-03-22 06:08:51', '2022-03-22 06:08:51'),
(4, 'Chicken Meat Offer', 'banner_image_623968c41c872.png', 'meta_image623968c425f25.png', NULL, NULL, 0, '2022-03-22 06:12:20', '2022-03-22 06:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_native_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_view` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_native_name`, `icon`, `home_view`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Mobile', 'mobile', '62372bebd77bb.jpeg', 1, 0, '2022-03-20 13:28:11', '2022-03-22 05:44:03'),
(5, 'Computer', 'computer', '62372bf76e7c6.jpeg', 1, 0, '2022-03-20 13:28:23', '2022-03-22 05:43:56'),
(6, 'Laptrop', 'laptrop', '62372c17dd0d7.jpeg', 1, 0, '2022-03-20 13:28:55', '2022-03-22 05:43:49'),
(8, 'Meat & Birds', 'Meat & Birds', '62396137f2a42.png', 1, 1, '2022-03-22 05:40:08', '2022-03-22 05:40:08'),
(9, 'Fish', 'fish', '6239614c28320.png', 1, 1, '2022-03-22 05:40:28', '2022-03-22 05:40:28'),
(10, 'Baby Care', 'baby care', '62396164ac01e.png', 1, 1, '2022-03-22 05:40:52', '2022-03-22 05:40:52'),
(11, 'Fruits & Vegetable', 'Fruits & Vegetable', '623961a242ae3.png', 1, 1, '2022-03-22 05:41:54', '2022-03-22 05:41:54'),
(12, 'Home & Cleaning', 'Home & Cleaning', '623961da8ef9c.png', 1, 1, '2022-03-22 05:42:50', '2022-03-22 05:42:50'),
(13, 'Pet Cares', 'Pet Cares', '62396257e2b84.png', 1, 1, '2022-03-22 05:44:55', '2022-03-22 05:44:55'),
(14, 'Food Item', 'Food Item', '623962b02cb71.png', 1, 1, '2022-03-22 05:46:24', '2022-03-22 05:46:24'),
(15, 'Home & kitchen', 'Home & kitchen', '623962ded9b15.png', 1, 1, '2022-03-22 05:47:10', '2022-03-22 05:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for Amount, 2 for percentage',
  `amount` double NOT NULL,
  `max_amount_limit` double DEFAULT NULL,
  `valid_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount_type`, `amount`, `max_amount_limit`, `valid_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FIRST-COUPON-500', 1, 500, 510, '2022-03-25', 1, '2022-03-22 07:10:29', '2022-03-22 07:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = inactive 1 = active',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `country`, `currency`, `code`, `symbol`, `currency_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', 0, 1, NULL, NULL),
(2, 'America', 'Dollars', 'USD', '$', 1, 1, NULL, NULL),
(3, 'Afghanistan', 'Afghanis', 'AFN', 'AFN', 0, 1, NULL, NULL),
(4, 'Argentina', 'Pesos', 'ARS', '$', 0, 1, NULL, NULL),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', 0, 1, NULL, NULL),
(6, 'Australia', 'Dollars', 'AUD', '$', 0, 1, NULL, NULL),
(7, 'Azerbaijan', 'New Manats', 'AZN', 'ман', 0, 1, NULL, NULL),
(8, 'Bahamas', 'Dollars', 'BSD', '$', 0, 1, NULL, NULL),
(9, 'Barbados', 'Dollars', 'BBD', '$', 0, 1, NULL, NULL),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', 0, 1, NULL, NULL),
(11, 'Belgium', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', 0, 1, NULL, NULL),
(13, 'Bermuda', 'Dollars', 'BMD', '$', 0, 1, NULL, NULL),
(14, 'Bolivia', 'Bolivianos', 'BOB', 'b', 0, 1, NULL, NULL),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', 0, 1, NULL, NULL),
(16, 'Botswana', 'Pula', 'BWP', 'P', 0, 1, NULL, NULL),
(17, 'Bulgaria', 'Leva', 'BGN', 'лв', 0, 1, NULL, NULL),
(18, 'Brazil', 'Reais', 'BRL', 'R$', 0, 1, NULL, NULL),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', 0, 1, NULL, NULL),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', 0, 1, NULL, NULL),
(21, 'Cambodia', 'Riels', 'KHR', '៛', 0, 1, NULL, NULL),
(22, 'Canada', 'Dollars', 'CAD', '$', 0, 1, NULL, NULL),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', 0, 1, NULL, NULL),
(24, 'Chile', 'Pesos', 'CLP', '$', 0, 1, NULL, NULL),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', 0, 1, NULL, NULL),
(26, 'Colombia', 'Pesos', 'COP', '$', 0, 1, NULL, NULL),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', 0, 1, NULL, NULL),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', 0, 1, NULL, NULL),
(29, 'Cuba', 'Pesos', 'CUP', '₱', 0, 1, NULL, NULL),
(30, 'Cyprus', 'Euro', 'EUR', '€', 0, 1, NULL, '2020-05-11 23:19:27'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', 0, 1, NULL, NULL),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', 0, 1, NULL, NULL),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', 0, 1, NULL, NULL),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', 0, 1, NULL, NULL),
(35, 'Egypt', 'Pounds', 'EGP', '£', 0, 1, NULL, NULL),
(36, 'El Salvador', 'Colones', 'SVC', '$', 0, 1, NULL, NULL),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', 0, 1, NULL, NULL),
(38, 'Euro', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', 0, 1, NULL, NULL),
(40, 'Fiji', 'Dollars', 'FJD', '$', 0, 1, NULL, NULL),
(41, 'France', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(42, 'Ghana', 'Cedis', 'GHS', '¢', 0, 1, NULL, NULL),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', 0, 1, NULL, NULL),
(44, 'Greece', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', 0, 1, NULL, NULL),
(46, 'Guernsey', 'Pounds', 'GGP', '£', 0, 1, NULL, NULL),
(47, 'Guyana', 'Dollars', 'GYD', '$', 0, 1, NULL, NULL),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', 0, 1, NULL, NULL),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', 0, 1, NULL, NULL),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', 0, 1, NULL, NULL),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', 0, 1, NULL, NULL),
(53, 'India', 'Rupees', 'INR', 'Rp', 0, 1, NULL, NULL),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', 0, 1, NULL, NULL),
(55, 'Iran', 'Rials', 'IRR', '﷼', 0, 1, NULL, NULL),
(56, 'Ireland', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', 0, 1, NULL, NULL),
(58, 'Israel', 'New Shekels', 'ILS', '₪', 0, 1, NULL, NULL),
(59, 'Italy', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', 0, 1, NULL, NULL),
(61, 'Japan', 'Yen', 'JPY', '¥', 0, 1, NULL, NULL),
(62, 'Jersey', 'Pounds', 'JEP', '£', 0, 1, NULL, NULL),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', 0, 1, NULL, NULL),
(64, 'Korea (North)', 'Won', 'KPW', '₩', 0, 1, NULL, NULL),
(65, 'Korea (South)', 'Won', 'KRW', '₩', 0, 1, NULL, NULL),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', 0, 1, NULL, NULL),
(67, 'Laos', 'Kips', 'LAK', '₭', 0, 1, NULL, NULL),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', 0, 1, NULL, NULL),
(69, 'Lebanon', 'Pounds', 'LBP', '£', 0, 1, NULL, NULL),
(70, 'Liberia', 'Dollars', 'LRD', '$', 0, 1, NULL, NULL),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', 0, 1, NULL, NULL),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', 0, 1, NULL, NULL),
(73, 'Luxembourg', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', 0, 1, NULL, NULL),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', 0, 1, NULL, NULL),
(76, 'Malta', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', 0, 1, NULL, NULL),
(78, 'Mexico', 'Pesos', 'MXN', '$', 0, 1, NULL, NULL),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', 0, 1, NULL, NULL),
(80, 'Mozambique', 'Meticais', 'MZN', 'MT', 0, 1, NULL, NULL),
(81, 'Namibia', 'Dollars', 'NAD', '$', 0, 1, NULL, NULL),
(82, 'Nepal', 'Rupees', 'NPR', '₨', 0, 1, NULL, NULL),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', 0, 1, NULL, NULL),
(84, 'Netherlands', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(85, 'New Zealand', 'Dollars', 'NZD', '$', 0, 1, NULL, NULL),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', 0, 1, NULL, NULL),
(87, 'Nigeria', 'Nairas', 'NGN', '₦', 0, 1, NULL, NULL),
(88, 'North Korea', 'Won', 'KPW', '₩', 0, 1, NULL, NULL),
(89, 'Norway', 'Krone', 'NOK', 'kr', 0, 1, NULL, NULL),
(90, 'Oman', 'Rials', 'OMR', '﷼', 0, 1, NULL, NULL),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', 0, 1, NULL, NULL),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', 0, 1, NULL, NULL),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', 0, 1, NULL, NULL),
(94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.', 0, 1, NULL, NULL),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', 0, 1, NULL, NULL),
(96, 'Poland', 'Zlotych', 'PLN', 'zł', 0, 1, NULL, NULL),
(97, 'Qatar', 'Rials', 'QAR', '﷼', 0, 1, NULL, NULL),
(98, 'Romania', 'New Lei', 'RON', 'lei', 0, 1, NULL, NULL),
(99, 'Russia', 'Rubles', 'RUB', 'руб', 0, 1, NULL, NULL),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', 0, 1, NULL, NULL),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', 0, 1, NULL, NULL),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', 0, 1, NULL, NULL),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', 0, 1, NULL, NULL),
(104, 'Singapore', 'Dollars', 'SGD', '$', 0, 1, NULL, NULL),
(105, 'Slovenia', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', 0, 1, NULL, NULL),
(107, 'Somalia', 'Shillings', 'SOS', 'S', 0, 1, NULL, NULL),
(108, 'South Africa', 'Rand', 'ZAR', 'R', 0, 1, NULL, NULL),
(109, 'South Korea', 'Won', 'KRW', '₩', 0, 1, NULL, NULL),
(110, 'Spain', 'Euro', 'EUR', '€', 0, 1, NULL, '2020-02-08 18:13:59'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', 0, 1, NULL, '2020-02-02 20:18:58'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', 0, 1, NULL, NULL),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', 0, 1, NULL, '2020-02-02 22:35:58'),
(114, 'Suriname', 'Dollars', 'SRD', '$', 0, 1, NULL, NULL),
(115, 'Syria', 'Pounds', 'SYP', '£', 0, 1, NULL, NULL),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', 0, 1, NULL, NULL),
(117, 'Thailand', 'Baht', 'THB', '฿', 0, 1, NULL, NULL),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', 0, 1, NULL, NULL),
(119, 'Turkey', 'Lira', 'TRY', 'TL', 0, 1, NULL, NULL),
(120, 'Turkey', 'Liras', 'TRL', '£', 0, 1, NULL, NULL),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', 0, 1, NULL, NULL),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', 0, 1, NULL, NULL),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', 0, 1, NULL, NULL),
(124, 'United States of America', 'Dollars', 'USD', '$', 1, 1, NULL, '2020-05-12 09:55:30'),
(125, 'Uruguay', 'Pesos', 'UYU', 'u', 0, 1, NULL, '2020-02-02 19:20:55'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', 0, 1, NULL, NULL),
(127, 'Vatican City', 'Euro', 'EUR', '€', 0, 1, NULL, '2020-02-03 17:44:40'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', 0, 1, NULL, '2020-02-02 20:18:46'),
(129, 'Vietnam', 'Dong', 'VND', '₫', 0, 1, NULL, '2020-02-08 18:14:06'),
(130, 'Yemen', 'Rials', 'YER', '﷼', 0, 1, NULL, NULL),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 1, NULL, '2020-02-02 19:20:40'),
(133, 'Bangladesh', 'bangladeshi taka', 'BDT', '৳', 0, 1, '2020-02-02 18:38:33', '2020-05-12 09:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `current_currencies`
--

CREATE TABLE `current_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_sign` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_slot_settings`
--

CREATE TABLE `delivery_slot_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_interval` int(11) NOT NULL DEFAULT 0 COMMENT 'slot date start from after  this interval',
  `date_end` int(11) NOT NULL DEFAULT 0 COMMENT 'slot date will be disabled after this day',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'date time slot will show = 1  or not = 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_slot_settings`
--

INSERT INTO `delivery_slot_settings` (`id`, `date_interval`, `date_end`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_time_s_lots`
--

CREATE TABLE `delivery_time_s_lots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slot_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` time NOT NULL COMMENT 'slot will be expired if current time greater then this time for same date',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_time_s_lots`
--

INSERT INTO `delivery_time_s_lots` (`id`, `slot_name`, `expired_at`, `status`, `created_at`, `updated_at`) VALUES
(1, '08am-09am', '08:30:00', 1, '2022-03-22 06:39:13', '2022-03-22 06:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `driver`, `host`, `port`, `username`, `password`, `encryption`, `from_address`, `from_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'mailtrap.io', '587', 'limmexbd@yahooo.com', 'your_password', 'tls', 'noreply@yourgmail.com', 'Fresh', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_analytics`
--

INSERT INTO `google_analytics` (`id`, `app_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'UA-1214234234', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `installtion_settings`
--

CREATE TABLE `installtion_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `installtion_settings`
--

INSERT INTO `installtion_settings` (`id`, `purchase_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'alksdflasjdfklilkasjdf65465465465asdf', 1, '2022-03-20 13:15:43', '2022-03-20 13:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `president` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `name`, `icon`, `menu_url`, `president`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Administration', 'fa-sitemap', NULL, 1, 0, NULL, NULL),
(2, 0, 'Product', 'fa-diamond', NULL, 2, 0, NULL, NULL),
(3, 0, 'Offers & Coupon', 'fa-fire', NULL, 3, 0, NULL, NULL),
(4, 0, 'Order', 'fa-first-order', NULL, 4, 0, NULL, NULL),
(5, 0, 'Customer', 'fa-group', 'customer.index', 5, 0, NULL, NULL),
(6, 0, 'General Setting', 'fa-cog', NULL, 6, 0, NULL, NULL),
(7, 0, 'Emailing User', 'fa-envelope', 'email.index', 7, 0, NULL, NULL),
(8, 1, 'Role', NULL, 'role.index', 1, 0, NULL, NULL),
(9, 1, 'Manage Admin', NULL, 'admin.index', 2, 0, NULL, NULL),
(10, 2, 'Category', NULL, 'category.index', 1, 0, NULL, NULL),
(11, 2, 'brand', NULL, 'brand.index', 3, 0, NULL, NULL),
(12, 2, 'Sub Category', NULL, 'sub-category.index', 2, 0, NULL, NULL),
(13, 2, 'Product', NULL, 'product.index', 5, 0, NULL, NULL),
(14, 3, 'Campaign', NULL, 'offer.index', 1, 0, NULL, NULL),
(15, 6, 'Currency Setting', NULL, 'currency.index', 1, 0, NULL, NULL),
(16, 6, 'Pyament Gateway Setting', NULL, 'gateway.index', 2, 0, NULL, NULL),
(17, 6, 'Social Login Setting', NULL, 'social.index', 3, 0, NULL, NULL),
(18, 6, 'Shop Setting', NULL, 'shop.index', 4, 0, NULL, NULL),
(19, 6, 'Page Seting', NULL, 'pages.index', 5, 0, NULL, NULL),
(20, 6, 'Seo Setting', NULL, 'seo.index', 6, 0, NULL, NULL),
(21, 6, 'Messenger & Google Analytics', NULL, 'message.analytics', 7, 0, NULL, NULL),
(22, 6, 'Mail Setting', NULL, 'email-setting.index', 8, 0, NULL, NULL),
(23, 6, 'Shipping Cost Setting', NULL, 'shipping.index', 2, 0, NULL, NULL),
(24, 0, 'Report', 'fa-fire', NULL, 9, 0, NULL, NULL),
(25, 24, 'Stock Report', NULL, 'stock.report', 1, 0, NULL, NULL),
(26, 24, 'Sales Report', NULL, 'sales.report', 2, 0, NULL, NULL),
(27, 24, 'Invoice Report', NULL, 'invoice.report', 3, 0, NULL, NULL),
(28, 6, 'Order Area', NULL, 'order-area.index', 9, 0, NULL, NULL),
(29, 4, 'All Order', NULL, 'order.index', 1, 0, NULL, NULL),
(30, 4, 'My Area\'s Order', NULL, 'areawiseorder.index', 2, 0, NULL, NULL),
(31, 24, 'Account Report', NULL, 'transection.report', 4, 0, NULL, NULL),
(32, 2, 'Sub Sub Category', NULL, 'sub-sub-category.index', 4, 1, NULL, NULL),
(33, 6, 'Slider', NULL, 'slider.index', 10, 1, '2020-07-10 03:35:22', '2020-07-10 03:35:23'),
(34, 2, 'Color', NULL, 'product-color.index', 7, 0, NULL, NULL),
(35, 2, 'Size', NULL, 'product-size.index', 6, 0, NULL, NULL),
(36, 3, 'Coupon', NULL, 'coupon.index', 3, 0, NULL, NULL),
(37, 3, 'Send Coupon', NULL, 'send-coupon.index', 4, 0, NULL, NULL),
(38, 6, 'Trial', NULL, 'trial.index', 11, 1, NULL, NULL),
(39, 6, 'Date Slot', NULL, 'slot.index', 12, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messengers`
--

CREATE TABLE `messengers` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messengers`
--

INSERT INTO `messengers` (`id`, `app_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '147855768574821', 1, NULL, '2020-08-10 16:21:24');

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
(4, '2019_12_24_062500_create_categories_table', 1),
(5, '2019_12_24_063542_create_sub_categories_table', 1),
(6, '2019_12_24_063938_create_products_table', 1),
(7, '2019_12_24_083508_create_currencies_table', 1),
(8, '2019_12_24_084148_create_current_currencies_table', 1),
(9, '2019_12_24_094706_create_brands_table', 1),
(10, '2019_12_26_112745_create_admins_table', 1),
(11, '2020_01_05_102155_create_sub_category_brands_table', 1),
(12, '2020_01_14_105633_create_product_keywords_table', 1),
(13, '2020_01_19_062248_create_product_images_table', 1),
(14, '2020_01_27_100851_create_campaigns_table', 1),
(15, '2020_02_03_111021_create_social_creadentials_table', 1),
(16, '2020_02_04_055030_create_payment_settings_table', 1),
(17, '2020_02_05_094536_create_pages_table', 1),
(18, '2020_02_06_073208_create_seo_settings_table', 1),
(19, '2020_02_06_073820_create_seo_keywords_table', 1),
(20, '2020_02_09_083433_create_shop_settings_table', 1),
(21, '2020_02_11_094321_create_orders_table', 1),
(22, '2020_02_11_094510_create_order_details_table', 1),
(23, '2020_02_11_121923_create_messengers_table', 1),
(24, '2020_02_11_122454_create_google_analytics_table', 1),
(25, '2020_02_13_062611_create_shipping_costs_table', 1),
(26, '2020_02_23_054824_create_roles_table', 1),
(27, '2020_02_23_055338_create_menus_table', 1),
(28, '2020_02_23_055421_create_permissions_table', 1),
(29, '2020_02_25_123355_create_emails_table', 1),
(30, '2020_03_07_150336_create_customers_table', 1),
(31, '2020_03_22_182842_create_subscribers_table', 1),
(32, '2020_04_03_115233_create_shipping_areas_table', 1),
(33, '2020_05_19_083351_create_sub_sub_categories_table', 1),
(34, '2020_06_04_113657_create_o_t_p_s_table', 1),
(35, '2020_06_09_115052_create_stockhistories_table', 1),
(36, '2020_07_10_101352_create_sliders_table', 1),
(37, '2020_08_25_042045_create_sizes_table', 1),
(38, '2020_08_25_042139_create_colors_table', 1),
(39, '2020_08_31_100235_create_product_size_table', 1),
(40, '2020_08_31_100901_create_product_color_table', 1),
(41, '2020_09_07_074204_create_coupons_table', 1),
(42, '2020_09_07_075554_create_user_coupon_table', 1),
(43, '2020_09_07_154623_create_trial_products_table', 1),
(44, '2020_09_27_124921_create_trials_table', 1),
(45, '2020_09_28_133437_create_pwa_settings_table', 1),
(46, '2020_09_30_113719_create_installtion_settings_table', 1),
(47, '2020_10_05_122452_create_delivery_slot_settings_table', 1),
(48, '2020_10_05_122710_create_delivery_time_s_lots_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_otp`
--

CREATE TABLE `mobile_otp` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'customer id',
  `location_id` int(11) DEFAULT 0 COMMENT 'location id',
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_area_id` int(11) DEFAULT NULL COMMENT 'shipping area id',
  `shipping_amount` double NOT NULL DEFAULT 0,
  `total_item` int(11) NOT NULL DEFAULT 0,
  `total_amount` double NOT NULL,
  `total_buying_amount` double NOT NULL DEFAULT 0,
  `cupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_back` double DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `coupon_discount` double NOT NULL DEFAULT 0,
  `payment_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 not paid 1 = paid',
  `payment_method` tinyint(4) NOT NULL DEFAULT 0,
  `card_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_delivery_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` int(11) NOT NULL DEFAULT 0,
  `confirmed_by` int(11) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 pending,1=on process,2=on delivery,3 = delivered',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `location_id`, `customer_name`, `phone`, `email`, `address`, `shipping_area_id`, `shipping_amount`, `total_item`, `total_amount`, `total_buying_amount`, `cupon`, `cash_back`, `discount`, `coupon_discount`, `payment_id`, `payer_id`, `payment_status`, `payment_method`, `card_type`, `validation_id`, `order_date`, `customer_delivery_date`, `customer_delivery_time`, `payment_date`, `delivery_date`, `delivered_by`, `confirmed_by`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1001, 1, 0, 'customer', '01712345874', NULL, 'mirpur-1', 1, 40, 3, 1000, 1040, NULL, NULL, 40, 0, NULL, NULL, 1, 4, 'BKASH-BKash', '220322124049NKtOMSpUEisHuGX', '2022-03-22', '2022-03-23', '08am-09am', '2022-03-22', '2022-03-22', 0, 0, NULL, 3, '2022-03-22 06:40:01', '2022-03-22 07:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_sub_category_id` int(11) DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT 0,
  `size_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL COMMENT 'customer_id',
  `quantity` int(11) NOT NULL,
  `selling_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `total_buying_price` double NOT NULL,
  `total_selling_price` double NOT NULL,
  `unit_discount` double NOT NULL DEFAULT 0,
  `total_discount` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `product_id`, `color_id`, `size_id`, `user_id`, `quantity`, `selling_price`, `buying_price`, `total_buying_price`, `total_selling_price`, `unit_discount`, `total_discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1001, 8, 6, NULL, 0, 8, NULL, NULL, 1, 2, 110, 120, 240, 220, 10, 20, 0, '2022-03-22 06:40:01', '2022-03-22 06:40:01'),
(2, 1001, 15, 8, NULL, 0, 9, NULL, NULL, 1, 1, 780, 800, 800, 780, 20, 20, 0, '2022-03-22 06:40:01', '2022-03-22 06:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `publish`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<h3>OUR MISSION</h3><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,&nbsp;<em>totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae&nbsp;</em>vitae dicta sunt explicabo nemo enim ipsam.</p><h3>OUR STORIES</h3><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><h3>OUR APPROACH</h3><p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><h3>OUR PHILOSOPHY</h3><p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Quis nostrum exercitationem ullam.</p><blockquote><em>I am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Quis nostrum exercitationem ullam.</em></blockquote><p><br></p>', 1, '2022-03-22 08:11:47', '2022-03-22 08:11:47'),
(2, 'Terms and Conditions', '<h3>These Terms and Conditions May Change</h3><p>We reserve the right to update or modify these terms and conditions at any time without prior notice. Your use of shop.company.com and shop.beetlebug.com.sg following any such change constitutes your agreement to follow and be bound by the terms and conditions as changed. For this reason, we encourage you to review these terms and conditions whenever you use this website.</p><p><br></p><p><br></p><h3>Limitations of Liability</h3><p>The Company Pte Ltd shall not assume any responsibility, and shall not be liable for, any damages to, or viruses that may infect, your computer, telecommunication equipment, or other property caused by or arising from your access to, use of, or browsing this website or your downloading of any materials, from this website. IN NO EVENT WILL THE COMPANY PRIVATE LIMITED NOR THEIR RESPECTIVE OFFICERS, DIRECTORS, EMPLOYEES, SHAREHOLDERS, AFFILIATES, AGENTS, SUCCESSORS, ASSIGNS, RETAIL PARTNERS NOR ANY PARTY INVOLVED IN THE CREATION, PRODUCTION OR TRANSMISSION OF THIS WEB SITE BE LIABLE TO ANY PARTY FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, WITHOUT LIMITATION, THOSE RESULTING FROM LOST PROFITS, LOST DATA OR BUSINESS INTERRUPTION) ARISING OUT OF THE USE, INABILITY TO USE, OR THE RESULTS OF USE OF THIS WEB SITE, ANY WEB SITES LINKED TO THIS WEB SITE, OR THE MATERIALS, INFORMATION OR SERVICES CONTAINED AT ANY OR ALL SUCH SITES, WHETHER BASED ON WARRANTY, CONTRACT, TORT OR ANY OTHER LEGAL THEORY AND WHETHER OR NOT ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. THE FOREGOING LIMITATIONS OF LIABILITY DO NOT APPLY TO THE EXTENT PROHIBITED BY LAW. PLEASE REFER TO YOUR LOCAL LAWS FOR ANY SUCH PROHIBITIONS.</p><p>IN THE EVENT OF ANY PROBLEM WITH THIS WEBSITE OR ANY CONTENT, YOU AGREE THAT YOUR SOLE REMEDY IS TO CEASE USING THIS WEBSITE. IN THE EVENT OF ANY PROBLEM WITH THE PRODUCTS OR SERVICES THAT YOU HAVE PURCHASED ON OR THROUGH THIS WEB SITE, YOU AGREE THAT YOUR REMEDY, IF ANY, IS FROM THE MANUFACTURER OF SUCH PRODUCTS OR SUPPLIER OF SUCH SERVICES, IN ACCORDANCE WITH SUCH MANUFACTURER’S OR SUPPLIER’S WARRANTY, OR TO SEEK A RETURN AND REFUND FOR SUCH PRODUCT OR SERVICES IN ACCORDANCE WITH THE RETURNS AND REFUNDS POLICIES POSTED ON THIS WEB SITE. This site may include inaccuracies, mistakes or typographical errors. CharlesKeith.com does not warrant that the content will be uninterrupted or error free.</p><p><br></p><p><br></p><blockquote>Ths is my block code</blockquote><blockquote><br></blockquote><p><br></p><h3>Copyright and Trademark</h3><p>Unless otherwise indicated, material on this website, including but not limited to texts, images, illustrations, software, audio clips, video clips, animation files, is subject to the copyright and trademark rights of The Company Private Limited. Consequently, the material on this website may not be copied, reproduced, modified, posted, transmitted, distributed, in whole or in part in any form whatsoever, without the prior written consent of The Company Private Limited. All rights reserved.</p><h3><br></h3><h3><br></h3><h3>Products, Content and Specifications</h3><p>All features, content, specifications, products and prices of products and services described or depicted on this website are subject to change at any time without notice. Certain weights, measures and similar descriptions are approximate and are provided for convenience purposes only. We make all reasonable efforts to accurately display the attributes of our products, including the applicable colors; however, the actual color you see will depend on your computer system and we cannot guarantee that your computer will accurately display such colors. The inclusion of any products or services in this website at a particular time does not imply or warrant that these products or services will be available at any time. It is your responsibility to ascertain and obey all applicable local, state and international laws in regard to the possession, use and sale of any item purchased from this website. By placing an order, you represent that the products ordered will be used only in a lawful manner.</p><h3><br></h3><h3><br></h3><h3>Shipping Limitations</h3><p>When an order is placed, it will be shipped to an address designated by the purchaser as long as that shipping address is compliant with the shipping restrictions contained on this website. All purchases from this website are made pursuant to a shipment contract. As a result, risk of loss and title for items purchased from this website pass to you upon delivery of the items to the carrier. You are responsible for filing any claims with carriers for damaged and/or lost shipments.</p><h3><br></h3><h3><br></h3><h3>Duties and Taxes</h3><p>You are responsible for duties and taxes outside Singapore. All items entering a foreign country are subject to customs inspection and assessment of the duties and taxes in accordance with that country’s national laws.</p><h3><br></h3><h3><br></h3><h3>Your Account</h3><p>You are responsible for maintaining the confidentiality of your account and password information, and you agree to accept responsibility for all activities that occur under your account and password. This website and The Company Pte Ltd reserves the right to refuse service, terminate accounts remove or edit content or cancel orders.</p><p>By placing an order, you warrant that you are over 18 years of age, and that you are providing shop.company.com or shop.beetlebug.com.sg with accurate, truthful information and that you have the authority to place the order.</p><h3><br></h3><h3><br></h3><h3>Exchange and Refund Policy (Singapore Outlets Only)</h3><p>New, unused full-price merchandise purchased at store retail store may be exchange at any boutique with an original receipt within 7 days of purchase. After 7 days, the merchandise may not be exchanged.</p><p>We offer a no-refund policy on all merchandises, however, for merchandise qualifying for an exchange, item may be exchange for store credits which may be used at our Singapore outlets only.</p><p>Merchandise on sale may not be exchanged or returned. All merchandise must be returned in sellable condition, otherwise, an exchange would not be allowed.</p><p>We reserve the right to reject any form of exchange without the original receipt.</p><h3><br></h3><h3><br></h3><h3>Exchange and Refund Policy (Online Shop)</h3><p>Electronice Communications</p><p>When you visit this website and/or send email to us, you consent to receive electronic communications from us. You agree that all agreements, notices, disclosures and other communications that we sent you electronically satisfy any legal requirement that such communications be in writing</p><p>Exclusions of Warranties</p><p>The Company Private Limited makes no representative or warranty regarding the good working order or condition of this website, its suitability for use, or that its use will be uninterrupted or error-free. All information or material provided in this website to you â€œas isâ€ and without warranties of any kind, expressed or implied, including without limitation, warranties or conditions of merchantability, fitness, quality, durability or suitability for any particular purpose, or non-infringement.</p>', 1, '2022-03-22 08:12:59', '2022-03-22 08:14:33');

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
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'encryption_key for flutter',
  `client_secret` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'secret_key for flutter',
  `public_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'flutter public key',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `live_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `provider`, `client_id`, `client_secret`, `public_key`, `status`, `live_status`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '', '', 'abc', 1, 1, '2020-04-23 16:45:09', '2020-04-23 16:45:12'),
(2, 'paypal', 'AXhhMYItOyEdhEUJCF-wFASr9JGyPFd1f38jv32OtDzrxPiKUwBTLV9ewjgJJuZb8C_G7Nh-YXOil-vj', 'EF8JKcIf4YOMKtYTLBPiEx9VPenq6qiv5DNXlpJkDuPlIMUCYi16B08RDuLOY8r1VriMRNG563x_InvS', 'abc', 1, 0, '2020-04-12 10:20:49', '2020-04-11 03:48:52'),
(3, 'stripe', 'pk_test_76vAdtoXsSBtYoxrZNCQAFPm007T5F0FL6', 'sk_test_6mdHPx4HzdfgvHl03vQeeKB500lLcs7oAy', 'abc', 1, 0, '2020-04-12 10:20:50', '2020-05-10 21:19:36'),
(4, 'ssl-commerz', 'limme5e92958f76c27', 'limme5e92958f76c27@ssl', 'abc', 1, 0, '2020-04-12 10:20:45', '2020-05-10 21:19:44'),
(5, 'Razorpay', 'rzp_test_u9yNniBONQCWfF', '2B5sHo2BbgRt9vnf6vaoSZk2', 'abc', 1, 1, '2020-07-03 12:59:11', '2020-07-03 12:59:12'),
(6, 'Flutterwave', 'FLWSECK_TEST-e527bac3669759b9dccb8152d72bd638-X', '2B5sHo2BbgRt9vnf6vaoSZk2', 'FLWPUBK_TEST-3796e2f4e0ada89eb3583850b4017924-X', 1, 1, '2020-07-03 12:59:11', '2020-07-03 12:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(39, 1, 8, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(40, 1, 9, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(41, 1, 1, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(42, 1, 31, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(43, 1, 25, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(44, 1, 27, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(45, 1, 26, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(46, 1, 24, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(47, 1, 7, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(48, 1, 33, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(49, 1, 38, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(50, 1, 28, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(51, 1, 39, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(52, 1, 15, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(53, 1, 16, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(54, 1, 17, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(55, 1, 18, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(56, 1, 19, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(57, 1, 20, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(58, 1, 21, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(59, 1, 22, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(60, 1, 23, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(61, 1, 6, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(62, 1, 5, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(63, 1, 29, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(64, 1, 30, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(65, 1, 4, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(66, 1, 14, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(67, 1, 37, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(68, 1, 36, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(69, 1, 3, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(70, 1, 32, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(71, 1, 34, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(72, 1, 35, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(73, 1, 10, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(74, 1, 13, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(75, 1, 12, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(76, 1, 11, '2022-03-22 06:36:39', '2022-03-22 06:36:39'),
(77, 1, 2, '2022-03-22 06:36:39', '2022-03-22 06:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_sub_category_id` int(11) DEFAULT 0,
  `brand_id` int(11) DEFAULT 0,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_native_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `current_quantity` int(11) NOT NULL DEFAULT 0,
  `quantity_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `total_view` int(11) NOT NULL DEFAULT 0,
  `total_sold` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `discount_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 is amount 2 is percent',
  `discount_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = no discount , 1= discount',
  `discount` double NOT NULL DEFAULT 0,
  `discount_amount` double NOT NULL DEFAULT 0,
  `campaign_id` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `home_view` tinyint(4) NOT NULL DEFAULT 1,
  `hot_deal` tinyint(4) NOT NULL DEFAULT 0,
  `trialable` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `product_name`, `product_native_name`, `product_image`, `product_thumb`, `product_description`, `product_keyword`, `stock_quantity`, `current_quantity`, `quantity_unit`, `buying_price`, `selling_price`, `total_view`, `total_sold`, `price`, `discount_type`, `discount_status`, `discount`, `discount_amount`, `campaign_id`, `created_by`, `updated_by`, `home_view`, `hot_deal`, `trialable`, `status`, `created_at`, `updated_at`) VALUES
(2, 4, 2, NULL, NULL, 'blank-white-watch-wristlet-mockup-isolated-front-and-back-side-3d-rendering-empty-clockface-with-bangle-mock-up-clear-wrist-with-glass-display-gift-accessory-template-RFWG83', 'new', '62373001c018e.jpeg', NULL, '<p>Contributor:<a href=\"https://www.alamy.com/search/imageresults.aspx?pseudoid=%7b139EAD34-658F-4658-A130-19476E95A28F%7d&amp;name=Aleksandr%2bBognat&amp;st=11&amp;mode=0&amp;comp=1\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgba(0,118,188,var(--tw-text-opacity));\">Aleksandr Bognat</a>&nbsp;/&nbsp;Alamy Stock PhotoFile size:137.3 MB (1.1 MB Compressed download)</p><p>Releases:Model - no | Property - no<a href=\"https://www.alamy.com/help/what-is-model-release-property-release.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgba(0,118,188,var(--tw-text-opacity));\">Do I need a release?</a>Dimensions:8000 x 6000 px | 67.7 x 50.8 cm | 26.7 x 20 inches | 300dpiDate taken:17 December 2018More information:Blank white watch wristlet mockup, isolated, front and back side, 3d rendering. Empty clockface with bangle mock up. Clear wrist with glass display. Gift accessory template.</p>', 'new', 300, 300, 'pices', 10, 100, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 1, '2022-03-20 13:45:37', '2022-03-22 06:10:24'),
(4, 6, 5, NULL, NULL, 'Gaming Computer', 'new', '623731b82c189.jpeg', NULL, '<h2><strong>Description</strong></h2><p>This desktop gaming PC has Intel Core i5 6th generation processor, Gigabyte motherboard, 16GB RAM, 2TB hard disk drive, ATX case, standard keyboard &amp; mouse.</p><h2><strong>Full Specification</strong></h2><p>Processor TypeIntel Core i5 6th Generation 6400Processor Speed2.70GHz Clock Speed up to 3.30GHz, 6M CacheMain BoardGigabyte H-110MMonitorNoRAM16GB DDR4 2666 BUSHard Disk2TB HDD 7200 RPMDisk TypeHDDGraphics CardIntel HD 510Audio / SpeakerHD Realtek Port SoundNetworking100 / 1000MbpsKeyboardHi Power Standard USB KeyboardMouseStandard USB MouseModem3G / 4G SupportCasingATX Xpress CasingOther FeaturesGaming</p>', '1242', 10, 10, 'pieces', 10, 105630, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 1, '2022-03-20 13:52:56', '2022-03-22 06:10:24'),
(5, 8, 6, NULL, NULL, 'Chicken Eggs', 'Chicken Eggs', '6239645681faa.jpeg', NULL, '<p>Eggs are an all-natural source of high-quality protein and a number of other nutrients, all for 70 calories an egg. 100% fresh and healthy.</p><p><br></p><p><br></p>', 'egg, Chicken', 1200, 1200, 'pieces', 12, 12, 0, 0, 0, 1, 1, 10, 10, 3, 1, NULL, 1, 1, 0, 1, '2022-03-22 05:53:26', '2022-03-22 06:20:35'),
(6, 8, 7, NULL, NULL, 'Chicken Meat', 'Chicken Meat', '62396579001bf.jpeg', NULL, '<p>Chicken Meat</p>', 'meat, chicken', 100, 100, '1 KG', 170, 170, 0, 0, 0, 1, 0, 0, 0, 4, 1, NULL, 1, 1, 0, 1, '2022-03-22 05:58:17', '2022-03-22 06:13:44'),
(7, 8, 7, NULL, NULL, 'whole-deshi-duck-hash-with-skin-900-gm', 'whole-deshi-duck-hash-with-skin-900-gm', '623965ff43113.webp', NULL, '<blockquote>whole-deshi-duck-hash-with-skin-900-gm</blockquote>', 'duck', 10, 10, '1 KG', 200, 200, 0, 0, 0, 1, 1, 50, 50, 3, 1, NULL, 1, 1, 0, 1, '2022-03-22 06:00:31', '2022-03-22 06:20:35'),
(8, 8, 6, NULL, NULL, 'Duck-white-eggs-layer-12', 'white-eggs-layer-12', '62396668e4390.gif', NULL, '<p>Duck-white-eggs-layer-12</p>', 'egg', 12, 10, 'Dorgan', 120, 120, 0, 2, 0, 1, 1, 11, 11, 3, 1, NULL, 1, 1, 0, 1, '2022-03-22 06:02:16', '2022-03-22 06:40:01'),
(9, 15, 8, NULL, NULL, 'fresh-fortified-soyabean-oil-5-ltr', 'fresh-fortified-soyabean-oil-5-ltr', '62396739269ae.webp', NULL, '<p>fresh-fortified-soyabean-oil-5-ltr</p>', 'oil', 10, 9, '1 pieces', 800, 800, 0, 1, 0, 1, 1, 20, 20, 3, 1, NULL, 1, 1, 0, 1, '2022-03-22 06:05:45', '2022-03-22 06:42:09'),
(10, 11, 9, NULL, NULL, 'Green banana', 'Green banana', '623969e48c9e8.jpeg', NULL, '<p>Green banana</p>', 'banana', 200, 200, 'per dorjon', 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, 0, 1, '2022-03-22 06:17:08', '2022-03-22 06:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_name`, `status`, `created_at`, `updated_at`) VALUES
(5, 2, '1647783937_2023.jpg', 1, '2022-03-20 13:45:37', '2022-03-20 13:45:37'),
(6, 2, '1647783937_2687.jpg', 1, '2022-03-20 13:45:37', '2022-03-20 13:45:37'),
(7, 2, '1647783937_3300.jpg', 1, '2022-03-20 13:45:37', '2022-03-20 13:45:37'),
(8, 2, '1647783937_2692.jpg', 1, '2022-03-20 13:45:38', '2022-03-20 13:45:38'),
(11, 4, '1647784376_2722.jpg', 1, '2022-03-20 13:52:56', '2022-03-20 13:52:56'),
(12, 4, '1647784376_1835.jpg', 1, '2022-03-20 13:52:56', '2022-03-20 13:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_keywords`
--

CREATE TABLE `product_keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `keyword_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_keywords`
--

INSERT INTO `product_keywords` (`id`, `product_id`, `keyword_name`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 'new', 1, '2022-03-20 13:45:37', '2022-03-20 13:45:37'),
(6, 4, '1242', 1, '2022-03-20 13:52:56', '2022-03-20 13:52:56'),
(7, 5, 'egg', 1, '2022-03-22 05:53:26', '2022-03-22 05:53:26'),
(8, 5, 'Chicken', 1, '2022-03-22 05:53:26', '2022-03-22 05:53:26'),
(9, 6, 'meat', 1, '2022-03-22 05:58:17', '2022-03-22 05:58:17'),
(10, 6, 'chicken', 1, '2022-03-22 05:58:17', '2022-03-22 05:58:17'),
(11, 7, 'duck', 1, '2022-03-22 06:00:31', '2022-03-22 06:00:31'),
(12, 8, 'egg', 1, '2022-03-22 06:02:16', '2022-03-22 06:02:16'),
(13, 9, 'oil', 1, '2022-03-22 06:05:45', '2022-03-22 06:05:45'),
(14, 10, 'banana', 1, '2022-03-22 06:17:08', '2022-03-22 06:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pwa_settings`
--

CREATE TABLE `pwa_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo_keywords`
--

CREATE TABLE `seo_keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_setting_id` int(11) NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitemap_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `title`, `meta_image`, `sitemap_link`, `keyword`, `author`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Limmerz | Start Your Own Ecommerce Today', '5ed50b0000acd.jpeg', 'sitemap.com', 'Limmex Groce, grocery, ecommerce, home applience, lacommerz, lacommerz, La commerz, La commerz, Limmex ecommerce, Limmex ecommerce, Limmex Automation, Limmex Automation, limmerz', 'Limmex Automation', 'Limmerz is an ecommerce solution for both grocery and lifestyle based on laravel and vue.js', '2020-02-08 18:05:09', '2020-06-01 02:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_areas`
--

CREATE TABLE `shipping_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_areas`
--

INSERT INTO `shipping_areas` (`id`, `city`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2022-03-22 06:24:00', '2022-03-22 06:24:00'),
(2, 'Rajshahi', 1, '2022-03-22 06:24:08', '2022-03-22 06:24:08'),
(3, 'Sylet', 1, '2022-03-22 06:24:41', '2022-03-22 06:24:41'),
(4, 'Chatrogram', 1, '2022-03-22 06:24:48', '2022-03-22 06:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_costs`
--

CREATE TABLE `shipping_costs` (
  `id` int(10) UNSIGNED NOT NULL,
  `minimum_order_amount` double DEFAULT NULL,
  `shipping_amount` double NOT NULL,
  `order_amount` double NOT NULL,
  `discount_amount` double NOT NULL,
  `shipping_status` tinyint(4) NOT NULL DEFAULT 0,
  `discount_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_costs`
--

INSERT INTO `shipping_costs` (`id`, `minimum_order_amount`, `shipping_amount`, `order_amount`, `discount_amount`, `shipping_status`, `discount_status`, `created_at`, `updated_at`) VALUES
(1, 300, 40, 1500, 20, 1, 1, '2020-04-18 14:48:42', '2020-05-18 00:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `shop_settings`
--

CREATE TABLE `shop_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_short_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_header` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_footer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deal_status` tinyint(4) DEFAULT 1,
  `slider_status` tinyint(4) DEFAULT 1,
  `onsale_status` tinyint(4) DEFAULT 1,
  `sidemenu_status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_settings`
--

INSERT INTO `shop_settings` (`id`, `shop_name`, `shop_short_name`, `address`, `footer_text`, `phone`, `email`, `facebook`, `twitter`, `youtube`, `logo_header`, `logo_footer`, `favicon`, `theme_color`, `hot_deal_status`, `slider_status`, `onsale_status`, `sidemenu_status`, `created_at`, `updated_at`) VALUES
(1, 'Limmerz', NULL, '219 muktobangla complex , Dhaka-1205', '2020 all right reserve by@LimmexAutomation', '01312447767', 'business@limmexbd.com', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', '623987907160e.png', '62398790b38bb.png', '62395c5acf8dd.png', '#fdd670', 1, 1, 1, 1, '2020-02-09 21:00:06', '2022-03-22 08:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `back_link_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slider_image`, `back_link_url`, `description`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Slider Image', 'slider_banner6239598543947.png', 'http://localhost/software/product/sub-category/1/Button', NULL, 1, '2022-03-22 05:07:17', '2022-03-22 05:07:17'),
(6, 'Winter', 'slider_banner623959e059410.png', 'http://localhost/software/product/sub-category/4/Ipad', NULL, 1, '2022-03-22 05:08:48', '2022-03-22 05:08:48'),
(7, 'Hot', 'slider_banner623959eee0737.png', 'http://localhost/software/product/sub-category/4/Ipad', NULL, 1, '2022-03-22 05:09:03', '2022-03-22 05:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `social_creadentials`
--

CREATE TABLE `social_creadentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `live_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_creadentials`
--

INSERT INTO `social_creadentials` (`id`, `provider`, `app_id`, `app_secret`, `status`, `live_status`, `created_at`, `updated_at`) VALUES
(1, 'facebook', '1256802924708629', '793eeb9bc876ec94526243a212fd2f2e', 1, 1, '2020-04-11 10:09:55', '2020-04-24 17:09:28'),
(2, 'google', '500564591191-vcvu4nodvnca5c7nq6tr21fq2hhb0e11.apps.googleusercontent.com', 'FTiJAbCehKbdVWRIcDHDsG0Z', 1, 1, '2020-04-11 10:09:57', '2020-04-24 17:09:32'),
(3, 'twitter', 'your_twitter_app_id', 'your_twitter_app_secret', 0, 0, '2020-04-11 10:10:01', '2020-06-01 02:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `stockhistories`
--

CREATE TABLE `stockhistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sub_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_new_stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_native_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_view` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_name`, `sub_category_native_name`, `icon`, `home_view`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Button', 'button', '62372c8396db6.jpeg', 1, 1, '2022-03-20 13:30:43', '2022-03-20 13:30:43'),
(2, 4, 'Smart Phone', 'smart phone', '62372cb3c8c9a.jpeg', 1, 1, '2022-03-20 13:31:31', '2022-03-20 13:31:31'),
(3, 4, 'Tab', 'tablet', '62372cd151e4e.jpeg', 1, 1, '2022-03-20 13:32:01', '2022-03-20 13:32:01'),
(4, 6, 'Ipad', 'idea pad', '62372cee45d2f.jpeg', 1, 1, '2022-03-20 13:32:30', '2022-03-20 13:32:30'),
(5, 6, 'Not pad', 'notpad', '62372d15b622a.jpeg', 1, 1, '2022-03-20 13:33:09', '2022-03-20 13:33:09'),
(6, 8, 'Egg', 'Chicken Egg', '623963c18c533.png', 1, 1, '2022-03-22 05:50:57', '2022-03-22 05:59:03'),
(7, 8, 'Meat', 'Chicken Meat', '623964c7b4676.png', 1, 1, '2022-03-22 05:55:19', '2022-03-22 05:58:57'),
(8, 15, 'Oil', 'oil', '623966fdc37e8.png', 1, 1, '2022-03-22 06:04:45', '2022-03-22 06:04:45'),
(9, 11, 'Fruits', 'fruits', '6239698f2a39a.png', 1, 1, '2022-03-22 06:15:43', '2022-03-22 06:15:43'),
(10, 11, 'Vesitable', 'Vesitable', '623969a899a60.png', 1, 1, '2022-03-22 06:16:08', '2022-03-22 06:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_brands`
--

CREATE TABLE `sub_category_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_sub_category_native_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trials`
--

CREATE TABLE `trials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_in_cart` int(11) NOT NULL DEFAULT 0,
  `max_trial_item` int(11) NOT NULL,
  `trial_charge_per_item` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trials`
--

INSERT INTO `trials` (`id`, `product_in_cart`, `max_trial_item`, `trial_charge_per_item`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, NULL, '2022-03-22 06:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `trial_products`
--

CREATE TABLE `trial_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_sub_category_id` int(11) DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT 0,
  `size_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL COMMENT 'customer_id',
  `quantity` int(11) NOT NULL,
  `selling_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `total_buying_price` double NOT NULL,
  `total_selling_price` double NOT NULL,
  `unit_discount` double NOT NULL DEFAULT 0,
  `total_discount` double NOT NULL DEFAULT 0,
  `trialed` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = not trialed , 1 = trialed',
  `invoiced` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = not invoiced, 1 = invoiced',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT 0,
  `points` double NOT NULL DEFAULT 0 COMMENT 'according points user will get bonus',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `avatar`, `address`, `email_verified_at`, `password`, `location_id`, `points`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'customer@mail.com', '01712345874', 'customer_623975e9c4f40.jpeg', 'mirpur-1', NULL, '$2y$10$B21zUCZfyL.Mdv.ljJEajOqNTHeQ3XYseeqBvQAmY6uBuQVTdcZYO', 1, 0, 1, NULL, '2022-03-22 06:21:52', '2022-03-22 07:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_coupon`
--

CREATE TABLE `user_coupon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(4) NOT NULL DEFAULT 0,
  `is_applied` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_coupon`
--

INSERT INTO `user_coupon` (`id`, `user_id`, `coupon_code`, `valid_date`, `is_used`, `is_applied`, `created_at`, `updated_at`) VALUES
(1, 1, 'FIRST-COUPON-500', '2022-03-25', 0, 1, '2022-03-22 07:12:12', '2022-03-22 07:13:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_currency_status_index` (`currency_status`);

--
-- Indexes for table `current_currencies`
--
ALTER TABLE `current_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_slot_settings`
--
ALTER TABLE `delivery_slot_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_time_s_lots`
--
ALTER TABLE `delivery_time_s_lots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installtion_settings`
--
ALTER TABLE `installtion_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messengers`
--
ALTER TABLE `messengers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_otp`
--
ALTER TABLE `mobile_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_keywords`
--
ALTER TABLE `product_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pwa_settings`
--
ALTER TABLE `pwa_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_keywords`
--
ALTER TABLE `seo_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_areas`
--
ALTER TABLE `shipping_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_costs`
--
ALTER TABLE `shipping_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_settings`
--
ALTER TABLE `shop_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_creadentials`
--
ALTER TABLE `social_creadentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockhistories`
--
ALTER TABLE `stockhistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_brands`
--
ALTER TABLE `sub_category_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trials`
--
ALTER TABLE `trials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trial_products`
--
ALTER TABLE `trial_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_coupon`
--
ALTER TABLE `user_coupon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `current_currencies`
--
ALTER TABLE `current_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_slot_settings`
--
ALTER TABLE `delivery_slot_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_time_s_lots`
--
ALTER TABLE `delivery_time_s_lots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `installtion_settings`
--
ALTER TABLE `installtion_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `messengers`
--
ALTER TABLE `messengers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `mobile_otp`
--
ALTER TABLE `mobile_otp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_keywords`
--
ALTER TABLE `product_keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pwa_settings`
--
ALTER TABLE `pwa_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_keywords`
--
ALTER TABLE `seo_keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_areas`
--
ALTER TABLE `shipping_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_costs`
--
ALTER TABLE `shipping_costs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_settings`
--
ALTER TABLE `shop_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_creadentials`
--
ALTER TABLE `social_creadentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stockhistories`
--
ALTER TABLE `stockhistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_category_brands`
--
ALTER TABLE `sub_category_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trials`
--
ALTER TABLE `trials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trial_products`
--
ALTER TABLE `trial_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_coupon`
--
ALTER TABLE `user_coupon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
