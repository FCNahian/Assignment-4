-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 05:11 PM
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
-- Database: `laravel`
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
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_06_074225_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(1, 'SPK-SON-04273', 'Canon Laptop Max', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 620.87, 31, 'product/SPK-SON-04273.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(2, 'CAM-LG-78948', 'Asus Headphones Edition', 'Fill your room with rich, clear sound with this portable Bluetooth speaker.', 478.48, 62, 'product/CAM-LG-78948.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(3, 'MON-LG-14748', 'LG Watch Edition', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 409.78, 24, 'product/MON-LG-14748.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(4, 'TAB-BOS-20198', 'Samsung Smartphone 2023', 'Track your fitness goals and stay connected with this stylish smartwatch.', 128.02, 71, 'product/TAB-BOS-20198.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(5, 'KB-CAN-14112', 'Asus Monitor Max', 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.', 350.18, 96, 'product/KB-CAN-14112.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(6, 'CHG-XIA-06163', 'Canon Tablet Pro', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 559.53, 75, 'product/CHG-XIA-06163.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(7, 'SPK-HP-69063', 'Canon Laptop Plus', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 639.07, 13, 'product/SPK-HP-69063.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(8, 'HP-HP-90339', 'HP Smartphone X', 'Keep your devices powered with this fast-charging, universal charger.', 870.02, 6, 'product/HP-HP-90339.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(9, 'KB-XIA-04120', 'HP Laptop 2023', 'A comfortable and responsive keyboard designed for both work and gaming.', 557.20, 96, 'product/KB-XIA-04120.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(10, 'CHG-HP-42183', 'Sony Headphones 2023', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 567.28, 45, 'product/CHG-HP-42183.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(11, 'HP-CAN-74370', 'Asus Watch Elite', 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.', 897.32, 19, 'product/HP-CAN-74370.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(12, 'KB-XIA-60625', 'HP Laptop Max', 'A comfortable and responsive keyboard designed for both work and gaming.', 288.61, 46, 'product/KB-XIA-60625.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(13, 'LAP-APP-75520', 'HP Speaker Elite', 'Fill your room with rich, clear sound with this portable Bluetooth speaker.', 73.54, 2, 'product/LAP-APP-75520.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(14, 'HP-APP-95881', 'Dell Camera Max', 'Fill your room with rich, clear sound with this portable Bluetooth speaker.', 64.56, 57, 'product/HP-APP-95881.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(15, 'LAP-XIA-19412', 'LG Charger Elite', 'Keep your devices powered with this fast-charging, universal charger.', 988.76, 91, 'product/LAP-XIA-19412.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(16, 'SPK-ASU-19433', 'Asus Charger 2023', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 399.11, 18, 'product/SPK-ASU-19433.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(17, 'KB-BOS-27274', 'Samsung Watch Plus', 'Track your fitness goals and stay connected with this stylish smartwatch.', 349.65, 63, 'product/KB-BOS-27274.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(18, 'SPK-ASU-18054', 'Asus Watch Plus', 'Track your fitness goals and stay connected with this stylish smartwatch.', 483.45, 87, 'product/SPK-ASU-18054.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(19, 'WCH-ASU-85803', 'Bose Tablet Ultra', 'Capture every moment with this professional-grade camera that features high resolution and advanced zoom.', 948.02, 73, 'product/WCH-ASU-85803.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(20, 'TAB-SAM-98317', 'Canon Speaker Pro', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 436.82, 74, 'product/TAB-SAM-98317.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(21, 'WCH-ASU-00758', 'Canon Keyboard Elite', 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.', 797.15, 6, 'product/WCH-ASU-00758.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(22, 'CAM-HP-20230', 'Xiaomi Watch X', 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.', 694.98, 7, 'product/CAM-HP-20230.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(23, 'LAP-SAM-77403', 'Sony Monitor Max', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 374.61, 50, 'product/LAP-SAM-77403.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(24, 'SPK-APP-75016', 'LG Laptop Ultra', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 388.25, 44, 'product/SPK-APP-75016.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(25, 'TAB-SON-44544', 'Canon Charger Ultra', 'Track your fitness goals and stay connected with this stylish smartwatch.', 422.67, 70, 'product/TAB-SON-44544.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(26, 'HP-DEL-49598', 'LG Watch Elite', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 978.91, 60, 'product/HP-DEL-49598.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(27, 'CHG-ASU-15220', 'Xiaomi Tablet X', 'Track your fitness goals and stay connected with this stylish smartwatch.', 25.83, 93, 'product/CHG-ASU-15220.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(28, 'HP-SAM-39078', 'Dell Tablet Edition', 'A comfortable and responsive keyboard designed for both work and gaming.', 233.25, 34, 'product/HP-SAM-39078.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(29, 'LAP-ASU-99339', 'Sony Watch 2023', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 929.05, 50, 'product/LAP-ASU-99339.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(30, 'TAB-XIA-38744', 'Apple Keyboard Plus', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 658.02, 82, 'product/TAB-XIA-38744.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(31, 'CHG-SON-42837', 'HP Monitor 2023', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 548.10, 93, 'product/CHG-SON-42837.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(32, 'WCH-LG-69902', 'LG Monitor Edition', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 619.45, 73, 'product/WCH-LG-69902.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(33, 'WCH-XIA-60145', 'HP Keyboard X', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 493.40, 85, 'product/WCH-XIA-60145.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(34, 'CAM-CAN-58778', 'Dell Speaker Ultra', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 830.14, 76, 'product/CAM-CAN-58778.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(35, 'CHG-APP-93405', 'Bose Speaker Pro', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 111.18, 63, 'product/CHG-APP-93405.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(36, 'HP-LG-71121', 'Asus Monitor Elite', 'Track your fitness goals and stay connected with this stylish smartwatch.', 175.03, 13, 'product/HP-LG-71121.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(37, 'CAM-DEL-30630', 'Canon Tablet Edition', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 298.01, 14, 'product/CAM-DEL-30630.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(38, 'TAB-DEL-21039', 'Bose Camera Max', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 146.25, 60, 'product/TAB-DEL-21039.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(39, 'HP-CAN-67723', 'Samsung Smartphone X', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 734.17, 79, 'product/HP-CAN-67723.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(40, 'SMP-ASU-30786', 'Asus Tablet Plus', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 56.59, 47, 'product/SMP-ASU-30786.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(41, 'CAM-SAM-85560', 'HP Smartphone Plus', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 837.82, 7, 'product/CAM-SAM-85560.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(42, 'HP-ASU-77295', 'Asus Watch Pro', 'A comfortable and responsive keyboard designed for both work and gaming.', 481.48, 47, 'product/HP-ASU-77295.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(43, 'CAM-ASU-27743', 'Samsung Smartphone 2023', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 274.41, 99, 'product/CAM-ASU-27743.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(44, 'MON-HP-91234', 'Bose Charger X', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 20.70, 20, 'product/MON-HP-91234.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(45, 'SMP-BOS-05835', 'Apple Monitor Edition', 'A comfortable and responsive keyboard designed for both work and gaming.', 654.30, 31, 'product/SMP-BOS-05835.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(46, 'SMP-BOS-22407', 'Apple Charger Pro', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 125.10, 66, 'product/SMP-BOS-22407.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(47, 'SMP-XIA-99759', 'Dell Charger Ultra', 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.', 434.87, 53, 'product/SMP-XIA-99759.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(48, 'WCH-CAN-55798', 'Sony Monitor Max', 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.', 841.74, 81, 'product/WCH-CAN-55798.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(49, 'SPK-CAN-92600', 'Asus Headphones Elite', 'Capture every moment with this professional-grade camera that features high resolution and advanced zoom.', 914.79, 51, 'product/SPK-CAN-92600.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(50, 'CHG-APP-85728', 'Samsung Charger X', 'A comfortable and responsive keyboard designed for both work and gaming.', 102.14, 76, 'product/CHG-APP-85728.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(51, 'WCH-SAM-34346', 'Canon Smartphone Elite', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 658.58, 100, 'product/WCH-SAM-34346.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(52, 'SPK-APP-22861', 'Bose Camera Ultra', 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.', 976.34, 93, 'product/SPK-APP-22861.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(53, 'TAB-APP-46329', 'Asus Tablet Ultra', 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.', 11.52, 46, 'product/TAB-APP-46329.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(54, 'CAM-HP-18343', 'Dell Watch Edition', 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.', 551.50, 42, 'product/CAM-HP-18343.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(55, 'KB-XIA-91990', 'Dell Monitor 2023', 'Keep your devices powered with this fast-charging, universal charger.', 446.75, 6, 'product/KB-XIA-91990.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(56, 'CAM-DEL-87310', 'Samsung Watch Ultra', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 632.20, 12, 'product/CAM-DEL-87310.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(57, 'SMP-CAN-17001', 'Dell Monitor Pro', 'Keep your devices powered with this fast-charging, universal charger.', 393.46, 72, 'product/SMP-CAN-17001.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(58, 'WCH-HP-11200', 'LG Keyboard Plus', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 418.81, 19, 'product/WCH-HP-11200.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(59, 'HP-APP-07290', 'Canon Speaker X', 'Fill your room with rich, clear sound with this portable Bluetooth speaker.', 428.38, 13, 'product/HP-APP-07290.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(60, 'LAP-ASU-77166', 'Canon Monitor Ultra', 'Track your fitness goals and stay connected with this stylish smartwatch.', 473.21, 94, 'product/LAP-ASU-77166.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(61, 'HP-APP-63249', 'LG Laptop Edition', 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.', 854.47, 10, 'product/HP-APP-63249.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(62, 'LAP-APP-86244', 'HP Tablet 2023', 'A comfortable and responsive keyboard designed for both work and gaming.', 935.74, 16, 'product/LAP-APP-86244.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(63, 'MON-SAM-84662', 'Dell Smartphone Plus', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 569.37, 13, 'product/MON-SAM-84662.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(64, 'CHG-LG-08624', 'HP Smartphone Max', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 484.66, 66, 'product/CHG-LG-08624.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(65, 'KB-APP-68375', 'Dell Laptop Max', 'Fill your room with rich, clear sound with this portable Bluetooth speaker.', 885.61, 59, 'product/KB-APP-68375.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(66, 'MON-DEL-58241', 'Apple Charger Pro', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 847.35, 88, 'product/MON-DEL-58241.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(67, 'SPK-LG-01339', 'Sony Camera Max', 'Fill your room with rich, clear sound with this portable Bluetooth speaker.', 606.50, 52, 'product/SPK-LG-01339.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(68, 'WCH-BOS-35172', 'Canon Watch Max', 'A comfortable and responsive keyboard designed for both work and gaming.', 336.83, 62, 'product/WCH-BOS-35172.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(69, 'CAM-HP-30186', 'Dell Charger Edition', 'Capture every moment with this professional-grade camera that features high resolution and advanced zoom.', 348.52, 58, 'product/CAM-HP-30186.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(70, 'SMP-ASU-02345', 'Asus Tablet Ultra', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 985.94, 94, 'product/SMP-ASU-02345.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(71, 'MON-APP-28127', 'Xiaomi Laptop Elite', 'A comfortable and responsive keyboard designed for both work and gaming.', 96.75, 45, 'product/MON-APP-28127.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(72, 'SMP-LG-26736', 'Xiaomi Keyboard Elite', 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.', 93.85, 91, 'product/SMP-LG-26736.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(73, 'SMP-XIA-01041', 'HP Watch Elite', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 411.70, 84, 'product/SMP-XIA-01041.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(74, 'TAB-BOS-01122', 'LG Charger Pro', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 970.42, 63, 'product/TAB-BOS-01122.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(75, 'KB-DEL-68686', 'Samsung Monitor X', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 30.97, 27, 'product/KB-DEL-68686.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(76, 'LAP-CAN-13556', 'Apple Smartphone Pro', 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.', 410.24, 83, 'product/LAP-CAN-13556.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(77, 'WCH-DEL-02843', 'Bose Laptop Edition', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 634.14, 35, 'product/WCH-DEL-02843.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(78, 'LAP-XIA-75985', 'Apple Keyboard Edition', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 296.11, 83, 'product/LAP-XIA-75985.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(79, 'KB-APP-15639', 'Asus Speaker Edition', 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.', 505.80, 58, 'product/KB-APP-15639.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(80, 'CHG-APP-04159', 'Canon Watch Pro', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 804.11, 31, 'product/CHG-APP-04159.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(81, 'LAP-CAN-00042', 'Apple Monitor Ultra', 'Keep your devices powered with this fast-charging, universal charger.', 852.73, 43, 'product/LAP-CAN-00042.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(82, 'CAM-LG-67208', 'Samsung Camera Elite', 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.', 688.04, 82, 'product/CAM-LG-67208.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(83, 'TAB-ASU-06015', 'HP Speaker Plus', 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.', 139.69, 16, 'product/TAB-ASU-06015.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(84, 'SMP-APP-06154', 'Bose Camera Max', 'Track your fitness goals and stay connected with this stylish smartwatch.', 700.40, 50, 'product/SMP-APP-06154.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(85, 'MON-ASU-38840', 'Xiaomi Watch Plus', 'Track your fitness goals and stay connected with this stylish smartwatch.', 642.04, 45, 'product/MON-ASU-38840.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(86, 'MON-DEL-16178', 'Bose Keyboard Max', 'Capture every moment with this professional-grade camera that features high resolution and advanced zoom.', 950.04, 11, 'product/MON-DEL-16178.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(87, 'CAM-LG-04580', 'Canon Headphones Max', 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.', 656.97, 33, 'product/CAM-LG-04580.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(88, 'TAB-ASU-68930', 'Bose Monitor Plus', 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.', 492.06, 4, 'product/TAB-ASU-68930.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(89, 'KB-LG-33700', 'Sony Smartphone Ultra', 'Keep your devices powered with this fast-charging, universal charger.', 906.90, 13, 'product/KB-LG-33700.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(90, 'CAM-SON-21315', 'Sony Tablet 2023', 'Keep your devices powered with this fast-charging, universal charger.', 955.17, 66, 'product/CAM-SON-21315.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(91, 'SPK-SAM-51835', 'HP Charger Ultra', 'Capture every moment with this professional-grade camera that features high resolution and advanced zoom.', 343.12, 29, 'product/SPK-SAM-51835.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(92, 'MON-XIA-47902', 'LG Keyboard Edition', 'A comfortable and responsive keyboard designed for both work and gaming.', 437.82, 26, 'product/MON-XIA-47902.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(93, 'KB-SON-64634', 'HP Charger Pro', 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.', 963.89, 17, 'product/KB-SON-64634.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(94, 'CAM-APP-39966', 'Bose Monitor Max', 'Fill your room with rich, clear sound with this portable Bluetooth speaker.', 855.42, 51, 'product/CAM-APP-39966.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(95, 'WCH-CAN-79377', 'Bose Smartphone Elite', 'Capture every moment with this professional-grade camera that features high resolution and advanced zoom.', 458.04, 19, 'product/WCH-CAN-79377.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(96, 'LAP-ASU-67883', 'Apple Charger Plus', 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.', 769.60, 22, 'product/LAP-ASU-67883.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(97, 'CHG-XIA-92965', 'Dell Headphones X', 'Fill your room with rich, clear sound with this portable Bluetooth speaker.', 609.83, 19, 'product/CHG-XIA-92965.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(98, 'CHG-CAN-20977', 'Sony Monitor 2023', 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.', 892.26, 79, 'product/CHG-CAN-20977.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(99, 'TAB-BOS-52022', 'Apple Speaker 2023', 'Keep your devices powered with this fast-charging, universal charger.', 718.57, 63, 'product/TAB-BOS-52022.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43'),
(100, 'HP-SAM-29265', 'Xiaomi Laptop Max', 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.', 397.58, 23, 'product/HP-SAM-29265.png', '2024-11-09 10:01:43', '2024-11-09 10:01:43');

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
('sP43097oVEwpaug2IlZyb1o9TiaHJkMe9r8J2a82', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEZYa2UzN2JRWWxXZ3J5cG9wTXdxb1VvUkl3ZTAwdVZZRGZPOURuWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731168104);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

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
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
