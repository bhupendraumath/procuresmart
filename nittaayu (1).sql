-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2025 at 07:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nittaayu`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:14:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"role-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"role-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"role-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"role-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:9:\"user-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:11:\"user-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:9:\"user-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:11:\"user-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:8;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:11:\"vendor-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}}i:9;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:13:\"active-vendor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:10;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"inactive-vendor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:11;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:19:\"vendor-profile-view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:12;a:3:{s:1:\"a\";i:27;s:1:\"b\";s:14:\"vendor-profile\";s:1:\"c\";s:3:\"web\";}i:13;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:14:\"vendor-approve\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}}}s:5:\"roles\";a:6:{i:0;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"Purchase Admin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"Function Head\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:3:\"CFO\";s:1:\"c\";s:3:\"web\";}i:4;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:6:\"Vendor\";s:1:\"c\";s:3:\"web\";}i:5;a:3:{s:1:\"a\";i:6;s:1:\"b\";s:19:\"Not Approved Vendor\";s:1:\"c\";s:3:\"web\";}}}', 1736879937);

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
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Nitta Gelatin India Ltd.', '1000', '2024-12-23 06:15:48', '2024-12-23 06:15:48');

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
-- Table structure for table `material_groups`
--

CREATE TABLE `material_groups` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_groups`
--

INSERT INTO `material_groups` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, '1000', 'RM - Crushed Bone', NULL, NULL),
(2, '1001', 'RM - Others', NULL, NULL),
(3, '1002', 'RM - Peptide', NULL, NULL),
(4, '2000', 'Pkg Materials', NULL, NULL),
(5, '2001', 'Semi Finished Goods', NULL, NULL),
(6, '2002', 'FG-LOS', NULL, NULL),
(7, '2003', 'REVA Light Fittings', NULL, NULL),
(8, '2004', 'REVA Valve/flow metr', NULL, NULL),
(9, '2005', 'RD Thermi Fluid&spar', NULL, NULL),
(10, '2006', 'REVA Bearings', NULL, NULL),
(11, '2007', 'REVA Blowers& spares', NULL, NULL),
(12, '2008', 'REVA Boiler & spares', NULL, NULL),
(13, '2009', 'REVA Chilers &spares', NULL, NULL),
(14, '2010', 'RD Compressor&spares', NULL, NULL),
(15, '2011', 'RD Coling Tower&Spar', NULL, NULL),
(16, '2012', 'RD Ele Cables & conn', NULL, NULL),
(17, '2013', 'RD Ele Panel & Spare', NULL, NULL),
(18, '2014', 'REVA Fasteners', NULL, NULL),
(19, '2015', 'REVA Gaskets & seals', NULL, NULL),
(20, '2016', 'REVA PLC', NULL, NULL),
(21, '2017', 'REVA Instrumentation', NULL, NULL),
(22, '2018', 'REVA Lubricants', NULL, NULL),
(23, '2019', 'RD Mat handling equp', NULL, NULL),
(24, '2020', 'REVA Paints&Coatings', NULL, NULL),
(25, '2021', 'RD Pre Heating Eqp&S', NULL, NULL),
(26, '2022', 'REVA Pipes & fitings', NULL, NULL),
(27, '2023', 'RD Power Electronic', NULL, NULL),
(28, '2024', 'REVA Reaction Tank', NULL, NULL),
(29, '2025', 'REVA Pumps & spares', NULL, NULL),
(30, '2026', 'REVA Separtion equip', NULL, NULL),
(31, '2027', 'REVA RVDF', NULL, NULL),
(32, '2028', 'REVA Structral steel', NULL, NULL),
(33, '2029', 'RD Transmision elmnt', NULL, NULL),
(34, '2030', 'RD Hydrolic eqp&spar', NULL, NULL),
(35, '2031', 'REVA Mixers & spares', NULL, NULL),
(36, '2032', 'REVA Pack m/c& spres', NULL, NULL),
(37, '2033', 'REVA Refractories', NULL, NULL),
(38, '2034', 'REVA Stiching m/c&sp', NULL, NULL),
(39, '2035', 'REVA Tools', NULL, NULL),
(40, '2036', 'REVA Gauges', NULL, NULL),
(41, '2037', 'REVA Glass wares', NULL, NULL),
(42, '2038', 'REVA Enzymes', NULL, NULL),
(43, '2039', 'REVA Flavour&fragrnc', NULL, NULL),
(44, '2040', 'RD Cmputer& Periphrl', NULL, NULL),
(45, '2041', 'REVA Transformer Oil', NULL, NULL),
(46, '2042', 'REVA Elec. HT Yard', NULL, NULL),
(47, '2043', 'REVA Ceramics', NULL, NULL),
(48, '2044', 'REVA Others', NULL, NULL),
(49, '2045', 'Reva Gen Engg & Spar', NULL, NULL),
(50, '2046', 'Reva Lab Chem & Spar', NULL, NULL),
(51, '2047', 'Reva Electrical Gene', NULL, NULL),
(52, '2048', 'Reva ETP chemical', NULL, NULL),
(53, '3000', 'SFG Others', NULL, NULL),
(54, '3001', 'Cooked gelatin-N', NULL, NULL),
(55, '3002', 'Cooked gelatin-X', NULL, NULL),
(56, '3003', 'Cooked gelatin-VX', NULL, NULL),
(57, '3004', 'Cooked gelatin-LVX', NULL, NULL),
(58, '3005', 'Cooked gelatin-KVX', NULL, NULL),
(59, '3006', 'Cooked gelatin-TVX', NULL, NULL),
(60, '3007', 'Cooked gelatin-SVX', NULL, NULL),
(61, '3008', 'Cooked gelatin-KLVX', NULL, NULL),
(62, '3009', 'Cooked gelatin-CKLVX', NULL, NULL),
(63, '3010', 'Cooked gelatin-SKLVX', NULL, NULL),
(64, '3011', 'Cooked gelatin-TKLVX', NULL, NULL),
(65, '3012', 'Cooked gelatin-R', NULL, NULL),
(66, '3013', 'Cooked gelatin-S', NULL, NULL),
(67, '3014', 'Cooked gelatin-OSR', NULL, NULL),
(68, '3015', 'Cooked gelatin-OSG', NULL, NULL),
(69, '3016', 'SFG-Chitosan', NULL, NULL),
(70, '3017', 'SFG-Peptide', NULL, NULL),
(71, '4000', 'GL Photographic film', NULL, NULL),
(72, '4001', 'FG-Ossein', NULL, NULL),
(73, '4002', 'FG-DCP', NULL, NULL),
(74, '4003', 'FG-Collagen Peptide', NULL, NULL),
(75, '4004', 'FG-Chitosan', NULL, NULL),
(76, '4005', 'FG-Feeds & Fert.', NULL, NULL),
(77, '4006', 'GL Pharma Hard Capsu', NULL, NULL),
(78, '4007', 'GL Pharma Soft Capsu', NULL, NULL),
(79, '4008', 'GL Pharma Tabletting', NULL, NULL),
(80, '4009', 'GL Culture Media', NULL, NULL),
(81, '4010', 'GL Pharma Coating', NULL, NULL),
(82, '4011', 'GL Blood plasma Ex.', NULL, NULL),
(83, '4012', 'GL Microencapsulatio', NULL, NULL),
(84, '4013', 'GL Edible Confection', NULL, NULL),
(85, '4014', 'GL EdiblJelly premix', NULL, NULL),
(86, '4015', 'GL Edible Icecream', NULL, NULL),
(87, '4016', 'GL Edible Beaverages', NULL, NULL),
(88, '4017', 'GL Edible Meat Produ', NULL, NULL),
(89, '4018', 'GL Edible General', NULL, NULL),
(90, '4019', 'GL Industrial Metal', NULL, NULL),
(91, '4020', 'GL Industrial Glue', NULL, NULL),
(92, '4021', 'GL Industrial Rubber', NULL, NULL),
(93, '4022', 'GL Industrial Paint', NULL, NULL),
(94, '4023', 'GL Pharma Granlation', NULL, NULL),
(95, '4033', 'GL Photographic  Pap', NULL, NULL),
(96, '5000', 'E -Light Fittings', NULL, NULL),
(97, '5001', 'E-Actuat.Valve&spare', NULL, NULL),
(98, '5002', 'E-Band Dryer&spares', NULL, NULL),
(99, '5003', 'E-Bearings', NULL, NULL),
(100, '5004', 'E-Blowers & spares', NULL, NULL),
(101, '5005', 'E-Boiler & spares', NULL, NULL),
(102, '5006', 'E-Centrifuge&spares', NULL, NULL),
(103, '5007', 'E-Chillers & spares', NULL, NULL),
(104, '5008', 'E-Compressor&spares', NULL, NULL),
(105, '5009', 'E-Control Valve&spar', NULL, NULL),
(106, '5010', 'E-Cooling tower&spar', NULL, NULL),
(107, '5011', 'E-Ele. Cables & conn', NULL, NULL),
(108, '5012', 'E-Ele. panels & spar', NULL, NULL),
(109, '5013', 'E-Elect dyn equip', NULL, NULL),
(110, '5014', 'E-Elect sta equip', NULL, NULL),
(111, '5015', 'E-Fasteners', NULL, NULL),
(112, '5016', 'E-Gaskets & seals', NULL, NULL),
(113, '5017', 'E-Granulator&spares', NULL, NULL),
(114, '5018', 'E-Instrumentation', NULL, NULL),
(115, '5019', 'E-Instruments', NULL, NULL),
(116, '5020', 'E-Lubricants', NULL, NULL),
(117, '5021', 'E-Manual Valve&spare', NULL, NULL),
(118, '5022', 'E-Mat. handling equp', NULL, NULL),
(119, '5023', 'E-Paints & coatings', NULL, NULL),
(120, '5024', 'E-PHE & spares', NULL, NULL),
(121, '5025', 'E-Pipes & fittings', NULL, NULL),
(122, '5026', 'E-Power electronics', NULL, NULL),
(123, '5027', 'E-Process vessels', NULL, NULL),
(124, '5028', 'E-Pumps & spares', NULL, NULL),
(125, '5029', 'E-Separation equip.', NULL, NULL),
(126, '5030', 'E-Spray drier&spares', NULL, NULL),
(127, '5031', 'E-Structural steel', NULL, NULL),
(128, '5032', 'E-Transmission elmnt', NULL, NULL),
(129, '5033', 'E-Votator & spares', NULL, NULL),
(130, '5034', 'E-Hydraulic eqp & sp', NULL, NULL),
(131, '5035', 'E-Mixers & spares', NULL, NULL),
(132, '5036', 'E-Pack m/c & spares', NULL, NULL),
(133, '5037', 'E-Refractories', NULL, NULL),
(134, '5038', 'E-Stiching m/c & sp', NULL, NULL),
(135, '5039', 'E-Tools', NULL, NULL),
(136, '5040', 'E-Others', NULL, NULL),
(137, '5050', 'Engg- Bearings', NULL, NULL),
(138, '5053', 'Engg -Gauges', NULL, NULL),
(139, '5054', 'Engg -Pipes & Pipe F', NULL, NULL),
(140, '5055', 'Engg -Lubricants', NULL, NULL),
(141, '5056', 'Engg - Miscellaneous', NULL, NULL),
(142, '5500', 'Lab Chemicals', NULL, NULL),
(143, '5501', 'Lab wares', NULL, NULL),
(144, '6000', 'Con-Enzymes', NULL, NULL),
(145, '6001', 'Con-Flavour&fragranc', NULL, NULL),
(146, '6002', 'Con-others', NULL, NULL),
(147, '6003', 'Con-Sweeteners', NULL, NULL),
(148, '6004', 'Computer & Periphera', NULL, NULL),
(149, '6005', 'Gases', NULL, NULL),
(150, '6006', 'Stationary', NULL, NULL),
(151, '6500', 'Civil items', NULL, NULL),
(152, '7000', 'Fuels', NULL, NULL),
(153, '7500', 'Non Valuated Mtrls', NULL, NULL),
(154, '8000', 'Scrap', NULL, NULL),
(155, '8500', 'Misc. Pur 4% + 1%', NULL, NULL),
(156, '8501', 'Misc. Pur 12.5% + 1%', NULL, NULL),
(157, '8502', 'Misc.Pur 12.5%+2.5%', NULL, NULL),
(158, '9000', 'Services', NULL, NULL),
(159, 'CHETOSAN', 'Chetosan', NULL, NULL),
(160, 'DCP', 'DCP', NULL, NULL),
(161, 'FISHPEP', 'Fish peptide', NULL, NULL),
(162, 'GEL', 'Gelatin', NULL, NULL),
(163, 'HIDE', 'Hide', NULL, NULL),
(164, 'LOS', 'Limed Ossein', NULL, NULL),
(165, 'MM', 'Meat Meals', NULL, NULL),
(166, 'NUTRI', 'Nutrigold', NULL, NULL),
(167, 'OSS', 'Ossein', NULL, NULL),
(168, 'PEPBLEND', 'Peptide BLND', NULL, NULL),
(169, 'PEPGRAN', 'Peptide GRAN', NULL, NULL),
(170, 'PEPRET', 'PEPRET', NULL, NULL),
(171, 'PEPRMG', 'Peptide MG', NULL, NULL),
(172, 'PEPSPRY', 'Peptide Spary', NULL, NULL),
(173, 'STEAM', 'Steam', NULL, NULL);

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
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_08_085227_create_permission_tables', 2),
(5, '2024_11_15_061003_create_personal_access_tokens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 11),
(5, 'App\\Models\\User', 12),
(6, 'App\\Models\\User', 13),
(7, 'App\\Models\\User', 14),
(8, 'App\\Models\\User', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('meera.v11@gmail.com', '$2y$12$5pXZWUJi0Us2WhZnScOmj.x2rO7eumeJPwIWXSnhQ.tJfGF0P4qb2', '2024-12-10 04:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2024-11-08 04:22:08', '2024-11-08 04:22:08'),
(2, 'role-create', 'web', '2024-11-08 04:22:08', '2024-11-08 04:22:08'),
(3, 'role-edit', 'web', '2024-11-08 04:22:08', '2024-11-08 04:22:08'),
(4, 'role-delete', 'web', '2024-11-08 04:22:08', '2024-11-08 04:22:08'),
(5, 'user-list', 'web', '2024-11-08 04:51:06', '2024-11-08 04:51:06'),
(6, 'user-create', 'web', '2024-11-08 04:51:07', '2024-11-08 04:51:07'),
(7, 'user-edit', 'web', '2024-11-08 04:51:07', '2024-11-08 04:51:07'),
(8, 'user-delete', 'web', '2024-11-08 04:51:07', '2024-11-08 04:51:07'),
(11, 'vendor-list', 'web', '2024-11-14 00:44:46', '2024-11-14 00:44:46'),
(14, 'active-vendor', 'web', '2024-11-19 09:09:03', '2024-11-19 09:09:03'),
(15, 'inactive-vendor', 'web', '2024-11-19 09:09:03', '2024-11-19 09:09:03'),
(26, 'vendor-profile-view', 'web', '2024-12-04 10:41:02', '2024-12-04 10:41:02'),
(27, 'vendor-profile', 'web', '2024-12-26 08:12:01', '2024-12-26 08:12:01'),
(30, 'vendor-approve', 'web', '2024-12-30 12:55:39', '2024-12-30 12:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, '1000', 'NGIL-Koratty -OD', NULL, NULL),
(2, '1100', 'NGIL-Kakkanad -GD', NULL, NULL),
(3, '7000', 'NGIL-Reva', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_groups`
--

CREATE TABLE `purchase_groups` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_groups`
--

INSERT INTO `purchase_groups` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, '100', 'CB/OS/LOS/FP', NULL, NULL),
(2, '101', 'Other Raw material', NULL, NULL),
(3, '102', 'Packing material', NULL, NULL),
(4, '103', 'Engg items / Spare', NULL, NULL),
(5, '104', 'SFG/FG', NULL, NULL),
(6, '105', 'Capital Equipments', NULL, NULL),
(7, '106', 'Consumables', NULL, NULL),
(8, '107', 'Trading', NULL, NULL),
(9, '108', 'Services Rated', NULL, NULL),
(10, '109', 'Kakkanad Pur/Serv', NULL, NULL),
(11, '110', 'Koratty Pur/Serv', NULL, NULL),
(12, '111', 'Services- Others', NULL, NULL),
(13, '114', 'QA Dept', NULL, NULL),
(14, '115', 'Marketing Dept', NULL, NULL),
(15, '116', 'Planning Dept', NULL, NULL),
(16, '117', 'BE - Dept', NULL, NULL),
(17, '118', 'TS -Dept', NULL, NULL),
(18, '119', 'IT -Dept', NULL, NULL),
(19, '120', 'Aroor Pur/Serv', NULL, NULL),
(20, '121', 'Finance Dept', NULL, NULL),
(21, '122', 'CO-Admin Dept', NULL, NULL),
(22, '123', 'R&D Dept', NULL, NULL),
(23, '124', 'Service Unrated', NULL, NULL),
(24, '125', 'Material Dept', NULL, NULL),
(25, '126', 'CS Dept', NULL, NULL),
(26, '127', 'Service - AMC', NULL, NULL),
(27, '128', 'QC Dept.', NULL, NULL),
(28, '129', 'Microbiology', NULL, NULL),
(29, '130', 'Security&Cleaning', NULL, NULL),
(30, '200', 'Reva RM-Domestic', NULL, NULL),
(31, '201', 'Reva RM-Imports', NULL, NULL),
(32, '202', 'Reva-PKM-Domestic', NULL, NULL),
(33, '203', 'Reva-PKM-Imports', NULL, NULL),
(34, '204', 'Reva-Cap Eqp- DOM', NULL, NULL),
(35, '205', 'Reva-Cap Eqp- IMP', NULL, NULL),
(36, '206', 'Reva-Spares- DOM', NULL, NULL),
(37, '207', 'Reva-Spares- IMP', NULL, NULL),
(38, '208', 'Reva-Inventory-Trf', NULL, NULL),
(39, '209', 'Reva-Consumabe-Dom', NULL, NULL),
(40, '210', 'Reva-Consumabe-IMP', NULL, NULL),
(41, '211', 'Reva- Fuels', NULL, NULL),
(42, '212', 'Reva- Transports', NULL, NULL),
(43, '213', 'Reva-Subcontracts', NULL, NULL),
(44, '214', 'Reva-Pur-Admin', NULL, NULL),
(45, '215', 'Reva-Project-Purch', NULL, NULL),
(46, '216', 'Reva-Services-othe', NULL, NULL),
(47, '217', 'Reva General Pur', NULL, NULL),
(48, '218', 'Reva chemical', NULL, NULL),
(49, '219', 'Reva-Projects', NULL, NULL),
(50, '300', 'NGIL Bamini Pur', NULL, NULL),
(51, '310', 'Bangalore Purchase', NULL, NULL),
(52, '320', 'NGIL-UP', NULL, NULL),
(53, '500', 'Reva Purchase', NULL, NULL),
(54, '600', 'BPL- RM CB Domesti', NULL, NULL),
(55, '601', 'BPL- RM CB Export', NULL, NULL),
(56, '602', 'BPL-Other Raw mate', NULL, NULL),
(57, '603', 'BPL-PKM-Domestic', NULL, NULL),
(58, '604', 'BPL-PKM-Imports', NULL, NULL),
(59, '605', 'BPL-Cap Eqp- DOM', NULL, NULL),
(60, '606', 'BPL-Cap Eqp- IMP', NULL, NULL),
(61, '607', 'BPL-Spares- DOM', NULL, NULL),
(62, '608', 'BPL-Spares- IMP', NULL, NULL),
(63, '609', 'BPL-Inventory-Trf', NULL, NULL),
(64, '610', 'BPL-Consumabe-Dom', NULL, NULL),
(65, '611', 'BPL-Consumabe-IMP', NULL, NULL),
(66, '612', 'BPL- Fuels', NULL, NULL),
(67, '613', 'BPL- Transports', NULL, NULL),
(68, '614', 'BPL-Subcontracts', NULL, NULL),
(69, '615', 'BPL-Pur-Admin', NULL, NULL),
(70, '616', 'BPL-Project-Purch', NULL, NULL),
(71, '617', 'BPL-Services-othe', NULL, NULL),
(72, '618', 'BPL General Pur', NULL, NULL),
(73, '619', 'BPL chemical', NULL, NULL),
(74, '620', 'BPL-Projects', NULL, NULL),
(75, '700', 'RD-CB-Domestic', NULL, NULL),
(76, '701', 'RD-CB-Imports', NULL, NULL),
(77, '702', 'RD-PKM-Domestic', NULL, NULL),
(78, '703', 'RD-PKM-Imports', NULL, NULL),
(79, '704', 'RD-Cap Eqp- DOM', NULL, NULL),
(80, '705', 'RD-Cap Eqp- IMP', NULL, NULL),
(81, '706', 'RD-Spares- DOM', NULL, NULL),
(82, '707', 'RD-Spares- IMP', NULL, NULL),
(83, '708', 'RD-Inventory-Trf', NULL, NULL),
(84, '709', 'RD-Consumabe-Dom', NULL, NULL),
(85, '710', 'RD-Consumabe-IMP', NULL, NULL),
(86, '711', 'RD- Fuels', NULL, NULL),
(87, '712', 'RD- Transports', NULL, NULL),
(88, '713', 'RD-Subcontracts', NULL, NULL),
(89, '714', 'RD-Pur-Admin', NULL, NULL),
(90, '715', 'RD-Project-Purch', NULL, NULL),
(91, '716', 'RD-Services-othe', NULL, NULL),
(92, '717', 'RD-General Pur', NULL, NULL),
(93, '718', 'RD-chemical', NULL, NULL),
(94, '719', 'RD-Projects', NULL, NULL),
(95, '720', 'RD-Other Raw mate', NULL, NULL),
(96, '900', 'Stock transfers', NULL, NULL),
(97, '901', 'Project Purchase', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_organizations`
--

CREATE TABLE `purchase_organizations` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_organizations`
--

INSERT INTO `purchase_organizations` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, '1000', 'Centralized Purchase', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE `remarks` (
  `id` int(11) NOT NULL,
  `vendor_user_id` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `notes` text DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`id`, `vendor_user_id`, `comment`, `created_at`, `user_id`, `updated_at`, `notes`, `user_name`) VALUES
(3, 13, 'all is good', '2025-01-13 18:23:20', 11, '2025-01-13 18:23:20', 'need some changes', 'Purchase Manager'),
(4, 13, 'all this working', '2025-01-13 18:45:50', 11, '2025-01-13 18:45:50', 'all this good', 'Purchase Manager');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'web', '2024-11-08 04:36:15', '2024-11-08 04:36:15'),
(4, 'Purchase Admin', 'web', '2024-11-13 07:35:05', '2024-11-13 07:35:05'),
(5, 'Vendor', 'web', '2024-11-19 09:09:22', '2024-11-19 09:09:22'),
(6, 'Not Approved Vendor', 'web', '2024-11-19 09:10:18', '2024-11-19 09:10:18'),
(7, 'Function Head', 'web', '2024-12-30 08:44:16', '2024-12-30 08:44:16'),
(8, 'CFO', 'web', '2024-12-30 08:47:32', '2024-12-30 08:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(11, 4),
(11, 7),
(11, 8),
(14, 5),
(15, 6),
(26, 5),
(30, 4),
(30, 7),
(30, 8);

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
('euEPs0avtAAGf6INEf1B1l6WNcMcxsrMXrXphuW2', 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2NyVmphRlZCNFF1SDR4dDUwQ2NwRmdoWUtJUjR0MzdIY1lYdEhKVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3QvUHJvY3VyZXNtYXJ0L3B1YmxpYy92ZW5kb3JvbmJvYXJkaW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTM7fQ==', 1736793956),
('VnkVkgDR218NUqWIBoTkkpUwtg8BCJ7PV88H7zFA', 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUloyOXZVSDRGdUVIYXZodm5VU0JXdXpqNWZYYmZOQUdneTdQZkhCciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3QvUHJvY3VyZXNtYXJ0L3B1YmxpYy9hcHByb3Zlbm93P2lkPTEzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE7fQ==', 1736793977);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `plant` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `gstin` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `plant`, `mobile_number`, `gstin`, `created_at`, `updated_at`) VALUES
(4, NULL, 'admin', 'admin@gmail.com', NULL, '$2y$12$Cm3IeojLyc56Mckb/YfzLuzkUMgwkIOpKnvEI7hSwIeC5Lwl7iBSS', NULL, NULL, NULL, NULL, '2024-11-08 04:36:15', '2024-11-08 04:36:15'),
(11, NULL, 'Purchase Manager', 'purchasemanager@gmail.com', NULL, '$2y$12$gLhQGngSMJb0f9XpbihWauXL3jEP5YQLwUXjByu2XLd2ClNwi/HzC', NULL, NULL, NULL, NULL, '2024-11-13 07:35:05', '2024-11-13 07:35:05'),
(12, 5, 'vendor', 'vendor@gmail.com', NULL, '$2y$12$c9oId0rZUWxroxZirHEw4eHTFp6jzErOaKuKg8T6w4wtKHmUTbEBO', NULL, NULL, NULL, NULL, '2024-11-19 09:28:24', '2024-11-19 09:28:24'),
(13, 5, 'Not Approved Vendor', 'vendor0@gmail.com', NULL, '$2y$12$gLhQGngSMJb0f9XpbihWauXL3jEP5YQLwUXjByu2XLd2ClNwi/HzC', NULL, NULL, NULL, NULL, '2024-11-19 09:29:04', '2024-11-25 07:24:54'),
(14, NULL, 'Function Head', 'functionhead@gmail.com', NULL, '$2y$12$JPOrtXGWRXZxMHpVhZeFt.UPQWn1wtSEgwjatUfYx0Hj0oJHoVE3G', NULL, NULL, NULL, NULL, '2024-12-30 08:46:43', '2024-12-30 08:46:43'),
(15, NULL, 'CFO', 'cfo@gmail.com', NULL, '$2y$12$D9vNn2omh.e9/6Xwavxoy.9/g39EJcCvvgijqazMLShtDTLJD4QBu', NULL, NULL, NULL, NULL, '2024-12-30 08:48:09', '2024-12-30 08:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_details`
--

CREATE TABLE `vendor_details` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `vendor_code` varchar(50) DEFAULT NULL,
  `company_code` int(11) DEFAULT NULL,
  `purchorg` varchar(50) DEFAULT NULL,
  `vendoraccgrp` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `name1` varchar(100) DEFAULT NULL,
  `name2` varchar(100) DEFAULT NULL,
  `addressline1` varchar(100) DEFAULT NULL,
  `addressline2` varchar(100) DEFAULT NULL,
  `addressline3` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  `region_code` varchar(50) DEFAULT NULL,
  `mobileno` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `pannum` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) NOT NULL,
  `recon_account` varchar(100) DEFAULT NULL,
  `order_currency` varchar(50) DEFAULT NULL,
  `payment_terms` varchar(100) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `bank_country` varchar(50) DEFAULT NULL,
  `bank_key` varchar(50) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_account` varchar(100) DEFAULT NULL,
  `bankacct_holder` varchar(50) DEFAULT NULL,
  `bank_swift` varchar(50) DEFAULT NULL,
  `bank_ifsc` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `vendor_category` varchar(250) DEFAULT NULL,
  `location` varchar(259) DEFAULT NULL,
  `contant_person_name` varchar(250) DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `msme_category` varchar(250) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `pan_number` varchar(200) NOT NULL,
  `profile_status` varchar(100) DEFAULT NULL,
  `internal_note` text DEFAULT NULL,
  `internal_remark` text DEFAULT NULL,
  `vendor_log` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_details`
--

INSERT INTO `vendor_details` (`id`, `user_id`, `vendor_code`, `company_code`, `purchorg`, `vendoraccgrp`, `title`, `name1`, `name2`, `addressline1`, `addressline2`, `addressline3`, `city`, `postcode`, `district`, `country_code`, `region_code`, `mobileno`, `email`, `pannum`, `gstin`, `recon_account`, `order_currency`, `payment_terms`, `payment_method`, `bank_country`, `bank_key`, `bank_name`, `bank_account`, `bankacct_holder`, `bank_swift`, `bank_ifsc`, `status`, `created_at`, `updated_at`, `approved_by`, `approved_at`, `company_name`, `vendor_category`, `location`, `contant_person_name`, `designation`, `msme_category`, `state`, `pin`, `pan_number`, `profile_status`, `internal_note`, `internal_remark`, `vendor_log`) VALUES
(49, '13', '1000', NULL, NULL, NULL, 'Mr.', NULL, NULL, 'indore1', 'indore2', 'indore3', 'indoree', NULL, 'indore', 'IN', NULL, '756456454', 'john@gmail.com', NULL, 'dfdsfewr', NULL, NULL, 'Select Payment Terms', 'T-bank', NULL, NULL, 'boi', 'rewrwere3433', NULL, NULL, '4543534', 'Approve', '2025-01-13 18:41:39', '2025-01-13 18:45:50', NULL, NULL, 'Codiant', NULL, NULL, 'john due', 'software engineer', 'Medium Enterprise', '14', '445454', '44r4333re', NULL, 'all this good', 'all this working', '{\"added_id\":11,\"status\":\"Approve\",\"name\":\"Purchase Manager\",\"date\":\"2025-01-13\"}{\"added_id\":13,\"status\":\"Draft\",\"date\":\"2025-01-13\"}{\"added_id\":13,\"status\":\"Draft\",\"date\":\"2025-01-13\"}');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_otps`
--

CREATE TABLE `vendor_otps` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `otp_type` varchar(50) NOT NULL,
  `otp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_otps`
--

INSERT INTO `vendor_otps` (`id`, `vendor_id`, `otp_type`, `otp`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile', 5131, '2024-12-30 16:54:09', '2024-12-30 16:54:09'),
(2, 1, 'Email', 5007, '2024-12-30 17:16:33', '2024-12-30 17:16:33'),
(3, 1, 'Email', 6635, '2024-12-30 17:18:18', '2024-12-30 17:18:18'),
(4, 1, 'Mobile', 1052, '2024-12-30 17:19:41', '2024-12-30 17:19:41'),
(5, 1, 'Email', 5628, '2024-12-30 17:19:53', '2024-12-30 17:19:53'),
(6, 1, 'Mobile', 1882, '2024-12-31 01:48:20', '2024-12-31 01:48:20'),
(7, 1, 'Email', 1328, '2024-12-31 02:04:50', '2024-12-31 02:04:50'),
(8, 1, 'Email', 2467, '2024-12-31 02:05:56', '2024-12-31 02:05:56'),
(9, 1, 'Email', 6940, '2024-12-31 02:06:56', '2024-12-31 02:06:56'),
(10, 1, 'Email', 8513, '2024-12-31 02:12:33', '2024-12-31 02:12:33'),
(11, 1, 'Email', 2740, '2024-12-31 02:14:20', '2024-12-31 02:14:20'),
(12, 1, 'Email', 1679, '2024-12-31 02:15:57', '2024-12-31 02:15:57'),
(13, 1, 'Email', 3510, '2024-12-31 02:16:12', '2024-12-31 02:16:12'),
(16, 1, 'Mobile', 5821, '2024-12-31 03:36:31', '2024-12-31 03:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `verder_document`
--

CREATE TABLE `verder_document` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vender_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `file_path` text NOT NULL,
  `file_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verder_document`
--

INSERT INTO `verder_document` (`id`, `user_id`, `vender_id`, `type`, `file_path`, `file_name`, `created_at`, `updated_at`) VALUES
(39, 13, 41, 'GSTIN', 'uploads/GkvHGgS2G1N7t5Z97YnGWhexikPYdkxdeioEAASL.jpg', NULL, '2025-01-12 13:50:18', '2025-01-12 13:50:18'),
(40, 13, 41, 'MSME Certificate', 'uploads/8WpopQLpILrSfhFgbTBAOkDxAjypZBNNfRXQmnsg.jpg', NULL, '2025-01-12 13:50:18', '2025-01-12 13:50:18'),
(41, 13, 41, 'Cancelled Cheque', 'uploads/2NCpTwjfLyE2gTq7OgjYTpEdBTNFFVOCMC8HkT0A.jpg', NULL, '2025-01-12 13:50:18', '2025-01-12 13:50:18'),
(42, 13, 41, 'Exemption Certificate', 'uploads/XV0USAiuBBrCQp0k8cC4WwdaLUAppFC2Ks3b5Zft.jpg', NULL, '2025-01-12 13:50:18', '2025-01-12 13:50:18'),
(43, 13, 42, 'PAN', 'uploads/7sSSLC4SLAXqTd1ustkae6u5dMLEw3ZuK4Vxlsej.jpg', NULL, '2025-01-12 13:50:58', '2025-01-12 13:50:58');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `companies`
--
ALTER TABLE `companies`
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
-- Indexes for table `material_groups`
--
ALTER TABLE `material_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_groups`
--
ALTER TABLE `purchase_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_organizations`
--
ALTER TABLE `purchase_organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remarks`
--
ALTER TABLE `remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendor_details`
--
ALTER TABLE `vendor_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_otps`
--
ALTER TABLE `vendor_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verder_document`
--
ALTER TABLE `verder_document`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `material_groups`
--
ALTER TABLE `material_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_groups`
--
ALTER TABLE `purchase_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `purchase_organizations`
--
ALTER TABLE `purchase_organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `remarks`
--
ALTER TABLE `remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vendor_details`
--
ALTER TABLE `vendor_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `vendor_otps`
--
ALTER TABLE `vendor_otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `verder_document`
--
ALTER TABLE `verder_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
