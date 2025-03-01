-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Час створення: Гру 13 2024 р., 08:59
-- Версія сервера: 5.7.39
-- Версія PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `Laravel-currency`
--

-- --------------------------------------------------------

--
-- Структура таблиці `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(15,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'AED', '3.975894', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(2, 'AFN', '71.392610', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(3, 'ALL', '98.607585', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(4, 'AMD', '418.009211', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(5, 'ANG', '1.946845', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(6, 'AOA', '987.210596', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(7, 'ARS', '1066.496540', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(8, 'AUD', '1.632329', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(9, 'AWG', '1.948442', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(10, 'AZN', '1.842392', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(11, 'BAM', '1.956311', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(12, 'BBD', '2.180970', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(13, 'BDT', '129.083725', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(14, 'BGN', '1.955110', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(15, 'BHD', '0.408045', '2024-10-25 07:47:19', '2024-10-25 07:53:09'),
(16, 'BIF', '3137.064506', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(17, 'BMD', '1.082468', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(18, 'BND', '1.425438', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(19, 'BOB', '7.463950', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(20, 'BRL', '6.133050', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(21, 'BSD', '1.080192', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(22, 'BTC', '0.000016', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(23, 'BTN', '90.812626', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(24, 'BWP', '14.480051', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(25, 'BYN', '3.534423', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(26, 'BYR', '21216.369078', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(27, 'BZD', '2.177369', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(28, 'CAD', '1.498947', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(29, 'CDF', '3085.033091', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(30, 'CHF', '0.937955', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(31, 'CLF', '0.037145', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(32, 'CLP', '1024.956576', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(33, 'CNY', '7.711388', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(34, 'CNH', '7.706408', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(35, 'COP', '4649.469861', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(36, 'CRC', '556.563406', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(37, 'CUC', '1.082468', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(38, 'CUP', '28.685397', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(39, 'CVE', '110.293816', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(40, 'CZK', '25.243800', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(41, 'DJF', '192.352032', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(42, 'DKK', '7.460953', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(43, 'DOP', '65.009087', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(44, 'DZD', '144.338373', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(45, 'EGP', '52.795869', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(46, 'ERN', '16.237017', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(47, 'ETB', '129.221530', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(48, 'EUR', '1.000000', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(49, 'FJD', '2.427705', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(50, 'FKP', '0.828271', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(51, 'GBP', '0.833776', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(52, 'GEL', '2.944553', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(53, 'GGP', '0.828271', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(54, 'GHS', '17.390544', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(55, 'GIP', '0.828271', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(56, 'GMD', '75.227622', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(57, 'GNF', '9317.864824', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(58, 'GTQ', '8.355183', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(59, 'GYD', '225.989043', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(60, 'HKD', '8.411554', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(61, 'HNL', '27.230372', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(62, 'HRK', '7.457153', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(63, 'HTG', '142.363770', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(64, 'HUF', '403.987311', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(65, 'IDR', '16965.247371', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(66, 'ILS', '4.101475', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(67, 'IMP', '0.828271', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(68, 'INR', '91.012802', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(69, 'IQD', '1415.069707', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(70, 'IRR', '45577.306909', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(71, 'ISK', '148.720011', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(72, 'JEP', '0.828271', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(73, 'JMD', '171.119450', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(74, 'JOD', '0.767364', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(75, 'JPY', '164.535373', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(76, 'KES', '139.638214', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(77, 'KGS', '92.868872', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(78, 'KHR', '4388.349220', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(79, 'KMF', '492.468459', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(80, 'KPW', '974.220785', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(81, 'KRW', '1503.563988', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(82, 'KWD', '0.331625', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(83, 'KYD', '0.900135', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(84, 'KZT', '523.566789', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(85, 'LAK', '23734.200898', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(86, 'LBP', '96730.272160', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(87, 'LKR', '317.252887', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(88, 'LRD', '207.398018', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(89, 'LSL', '19.114294', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(90, 'LTL', '3.196246', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(91, 'LVL', '0.654774', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(92, 'LYD', '5.203408', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(93, 'MAD', '10.676889', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(94, 'MDL', '19.443080', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(95, 'MGA', '4965.389021', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(96, 'MKD', '61.536581', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(97, 'MMK', '3515.813223', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(98, 'MNT', '3678.225649', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(99, 'MOP', '8.645059', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(100, 'MRU', '43.035635', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(101, 'MUR', '49.912635', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(102, 'MVR', '16.626595', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(103, 'MWK', '1873.123989', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(104, 'MXN', '21.450508', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(105, 'MYR', '4.697558', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(106, 'MZN', '69.180262', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(107, 'NAD', '19.114294', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(108, 'NGN', '1795.456732', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(109, 'NIO', '39.752222', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(110, 'NOK', '11.838074', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(111, 'NPR', '145.304661', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(112, 'NZD', '1.802812', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(113, 'OMR', '0.416713', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(114, 'PAB', '1.080182', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(115, 'PEN', '4.054959', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(116, 'PGK', '4.321369', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(117, 'PHP', '63.086176', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(118, 'PKR', '300.080145', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(119, 'PLN', '4.350848', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(120, 'PYG', '8597.246153', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(121, 'QAR', '3.937129', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(122, 'RON', '4.973611', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(123, 'RSD', '117.045064', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(124, 'RUB', '104.324762', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(125, 'RWF', '1489.016538', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(126, 'SAR', '4.065787', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(127, 'SBD', '9.039752', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(128, 'SCR', '14.595015', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(129, 'SDG', '651.103381', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(130, 'SEK', '11.443135', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(131, 'SGD', '1.429263', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(132, 'SHP', '0.828271', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(133, 'SLE', '24.626400', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(134, 'SLL', '22698.805282', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(135, 'SOS', '617.372704', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(136, 'SRD', '36.234565', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(137, 'STD', '22404.898176', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(138, 'SVC', '9.451469', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(139, 'SYP', '2719.733137', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(140, 'SZL', '19.110346', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(141, 'THB', '36.576065', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(142, 'TJS', '11.514708', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(143, 'TMT', '3.788637', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(144, 'TND', '3.363379', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(145, 'TOP', '2.535248', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(146, 'TRY', '37.122973', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(147, 'TTD', '7.338917', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(148, 'TWD', '34.702298', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(149, 'TZS', '2949.724581', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(150, 'UAH', '44.561066', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(151, 'UGX', '3961.034877', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(152, 'USD', '1.082468', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(153, 'UYU', '44.861721', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(154, 'UZS', '13856.620239', '2024-10-25 07:47:20', '2024-10-25 07:53:09'),
(155, 'VEF', '3921296.508970', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(156, 'VES', '44.196567', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(157, 'VND', '27462.208343', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(158, 'VUV', '128.512785', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(159, 'WST', '3.032192', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(160, 'XAF', '656.140549', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(161, 'XAG', '0.032090', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(162, 'XAU', '0.000398', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(163, 'XCD', '2.925424', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(164, 'XDR', '0.810427', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(165, 'XOF', '656.134486', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(166, 'XPF', '119.331742', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(167, 'YER', '270.995519', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(168, 'ZAR', '19.125581', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(169, 'ZMK', '9743.507960', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(170, 'ZMW', '28.734507', '2024-10-25 07:53:09', '2024-10-25 07:53:09'),
(171, 'ZWL', '348.554193', '2024-10-25 07:53:09', '2024-10-25 07:53:09');

-- --------------------------------------------------------

--
-- Структура таблиці `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_25_092116_create_currencies_table', 2),
(6, '2024_10_25_095131_update_rate_column_in_currencies_table', 3);

-- --------------------------------------------------------

--
-- Структура таблиці `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pavlo', 'pavelmironicev@gmail.com', NULL, '$2y$12$PCxDMski6wbtkIKaFO.wa.q0Tn1KZsdnbCFNrhqbzodwILLKgjNQq', NULL, '2024-10-25 07:19:27', '2024-10-25 07:19:27');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Індекси таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Індекси таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT для таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
