-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2026 at 06:36 AM
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
-- Database: `buildia_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `user_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `record_id` int(11) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `logged_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`log_id`, `user_id`, `action`, `table_name`, `record_id`, `ip_address`, `logged_at`) VALUES
(1, 30, 'LOGIN', 'users', 30, '192.168.1.40', '2026-01-06 08:04:18'),
(2, 30, 'LOGOUT', 'users', 30, '10.0.0.17', '2026-01-07 14:21:24'),
(3, 1, 'UPDATE_MATERIAL', 'materials', 6, '192.168.1.12', '2026-01-08 07:49:36'),
(4, 11, 'CREATE_PURCHASE_ORDER', 'purchase_orders', 12, '192.168.1.60', '2026-01-10 16:26:03'),
(5, 2, 'UPDATE_MATERIAL', 'materials', 13, '192.168.1.15', '2026-01-11 08:36:05'),
(6, 21, 'CREATE_MATERIAL_REQUEST', 'material_requests', 30, '192.168.1.15', '2026-01-18 12:26:34'),
(7, 20, 'LOGIN', 'users', 20, '192.168.1.40', '2026-01-19 17:08:40'),
(8, 23, 'LOGIN', 'users', 23, '192.168.1.15', '2026-01-22 16:40:34'),
(9, 2, 'UPDATE_MATERIAL', 'materials', 39, '10.0.0.5', '2026-01-28 18:24:23'),
(10, 1, 'APPROVE_MATERIAL_REQUEST', 'material_requests', 20, '10.0.0.5', '2026-02-03 14:35:33'),
(11, 2, 'UPDATE_MATERIAL', 'materials', 1, '192.168.1.12', '2026-02-05 08:36:45'),
(12, 7, 'UPDATE_PROJECT', 'projects', 5, '192.168.1.52', '2026-02-07 12:06:22'),
(13, 13, 'CREATE_MATERIAL_REQUEST', 'material_requests', 14, '192.168.1.15', '2026-02-11 09:46:27'),
(14, 1, 'RECORD_PAYMENT', 'payments', 21, '192.168.1.52', '2026-03-20 16:33:16'),
(15, 6, 'LOGOUT', 'users', 6, '192.168.1.33', '2026-03-23 11:08:48'),
(16, 17, 'LOGOUT', 'users', 17, '192.168.1.52', '2026-03-24 11:54:17'),
(17, 23, 'CREATE_MATERIAL_REQUEST', 'material_requests', 38, '192.168.1.33', '2026-03-26 13:41:24'),
(18, 25, 'RELEASE_MATERIAL', 'material_releases', 58, '10.0.0.8', '2026-03-27 08:18:05'),
(19, 4, 'CREATE_PROJECT', 'projects', 1, '10.0.0.17', '2026-04-02 12:18:36'),
(20, 22, 'CREATE_MATERIAL_REQUEST', 'material_requests', 7, '192.168.1.33', '2026-04-11 16:43:54'),
(21, 30, 'LOGIN', 'users', 30, '10.0.0.5', '2026-04-12 09:28:05'),
(22, 21, 'RECEIVE_GOODS', 'goods_receipts', 10, '192.168.1.60', '2026-04-15 09:14:05'),
(23, 25, 'RECEIVE_GOODS', 'goods_receipts', 1, '10.0.0.5', '2026-04-16 14:32:46'),
(24, 10, 'LOGIN', 'users', 10, '192.168.1.12', '2026-04-21 19:15:04'),
(25, 4, 'UPDATE_PROJECT', 'projects', 12, '192.168.1.33', '2026-04-23 12:55:07'),
(26, 25, 'CREATE_PURCHASE_ORDER', 'purchase_orders', 15, '192.168.1.12', '2026-04-27 15:12:49'),
(27, 16, 'LOGIN', 'users', 16, '192.168.1.33', '2026-04-29 07:36:49'),
(28, 25, 'LOGOUT', 'users', 25, '10.0.0.8', '2026-05-01 13:46:03'),
(29, 29, 'CREATE_PURCHASE_ORDER', 'purchase_orders', 8, '10.0.0.17', '2026-05-14 07:58:53'),
(30, 15, 'CREATE_MATERIAL_REQUEST', 'material_requests', 19, '192.168.1.15', '2026-05-22 14:19:16'),
(31, 26, 'LOGOUT', 'users', 26, '10.0.0.17', '2026-05-22 18:33:20'),
(32, 2, 'UPDATE_MATERIAL', 'materials', 26, '192.168.1.10', '2026-06-02 18:00:23'),
(33, 23, 'RECEIVE_GOODS', 'goods_receipts', 2, '192.168.1.60', '2026-06-04 09:21:24'),
(34, 17, 'LOGIN', 'users', 17, '192.168.1.52', '2026-06-05 08:10:55'),
(35, 2, 'UPDATE_MATERIAL', 'materials', 35, '192.168.1.10', '2026-06-11 18:50:54'),
(36, 1, 'RECORD_PAYMENT', 'payments', 10, '10.0.0.8', '2026-06-23 10:56:04'),
(37, 1, 'LOGIN', 'users', 1, '192.168.1.15', '2026-06-24 15:01:51'),
(38, 16, 'CREATE_MATERIAL_REQUEST', 'material_requests', 21, '192.168.1.60', '2026-06-28 07:20:33'),
(39, 25, 'CREATE_MATERIAL_REQUEST', 'material_requests', 2, '10.0.0.17', '2026-06-30 13:05:13'),
(40, 1, 'RECORD_PAYMENT', 'payments', 24, '192.168.1.60', '2026-07-03 13:28:34'),
(41, 29, 'LOGIN', 'users', 29, '192.168.1.33', '2026-07-04 14:37:05'),
(42, 21, 'CREATE_MATERIAL_REQUEST', 'material_requests', 37, '192.168.1.52', '2026-07-08 17:34:18'),
(43, 12, 'LOGIN', 'users', 12, '192.168.1.60', '2026-07-17 15:32:31'),
(44, 19, 'RECEIVE_GOODS', 'goods_receipts', 7, '10.0.0.17', '2026-07-19 17:36:48'),
(45, 30, 'LOGOUT', 'users', 30, '192.168.1.52', '2026-07-21 11:13:10'),
(46, 18, 'CREATE_PURCHASE_ORDER', 'purchase_orders', 15, '10.0.0.17', '2026-07-25 14:08:41'),
(47, 30, 'RELEASE_MATERIAL', 'material_releases', 14, '192.168.1.10', '2026-07-29 11:16:18'),
(48, 10, 'UPDATE_PROJECT', 'projects', 2, '192.168.1.60', '2026-07-30 10:18:20'),
(49, 20, 'LOGIN', 'users', 20, '192.168.1.21', '2026-07-30 13:30:49'),
(50, 7, 'CREATE_PROJECT', 'projects', 8, '192.168.1.60', '2026-08-20 13:12:43'),
(51, 13, 'CREATE_MATERIAL_REQUEST', 'material_requests', 20, '192.168.1.33', '2026-08-20 13:25:02'),
(52, 15, 'RELEASE_MATERIAL', 'material_releases', 32, '192.168.1.12', '2026-08-31 16:58:05'),
(53, 9, 'LOGOUT', 'users', 9, '10.0.0.5', '2026-08-31 19:54:43'),
(54, 26, 'LOGIN', 'users', 26, '10.0.0.5', '2026-09-11 14:07:14'),
(55, 6, 'LOGIN', 'users', 6, '192.168.1.12', '2026-09-12 14:16:33'),
(56, 25, 'CREATE_PURCHASE_ORDER', 'purchase_orders', 18, '10.0.0.5', '2026-09-14 15:21:12'),
(57, 2, 'APPROVE_MATERIAL_REQUEST', 'material_requests', 2, '192.168.1.15', '2026-09-22 19:08:10'),
(58, 1, 'APPROVE_MATERIAL_REQUEST', 'material_requests', 24, '192.168.1.33', '2026-10-02 10:58:54'),
(59, 23, 'CREATE_MATERIAL_REQUEST', 'material_requests', 21, '192.168.1.15', '2026-10-05 11:20:49'),
(60, 1, 'APPROVE_MATERIAL_REQUEST', 'material_requests', 39, '192.168.1.60', '2026-10-08 17:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `demand_forecasts`
--

CREATE TABLE `demand_forecasts` (
  `forecast_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `forecast_quantity` int(11) NOT NULL,
  `recommended_order` int(11) NOT NULL,
  `generated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `demand_forecasts`
--

INSERT INTO `demand_forecasts` (`forecast_id`, `material_id`, `period_start`, `period_end`, `forecast_quantity`, `recommended_order`, `generated_at`) VALUES
(1, 1, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(2, 2, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(3, 3, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(4, 4, '2026-11-01', '2026-11-30', 7, 0, '2026-10-18 20:00:00'),
(5, 5, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(6, 6, '2026-11-01', '2026-11-30', 5, 24, '2026-10-18 20:00:00'),
(7, 7, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(8, 8, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(9, 9, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(10, 10, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(11, 11, '2026-11-01', '2026-11-30', 15, 0, '2026-10-18 20:00:00'),
(12, 12, '2026-11-01', '2026-11-30', 10, 0, '2026-10-18 20:00:00'),
(13, 13, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(14, 14, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(15, 15, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(16, 16, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(17, 17, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(18, 18, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(19, 19, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(20, 20, '2026-11-01', '2026-11-30', 10, 0, '2026-10-18 20:00:00'),
(21, 21, '2026-11-01', '2026-11-30', 6, 0, '2026-10-18 20:00:00'),
(22, 22, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(23, 23, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(24, 24, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(25, 25, '2026-11-01', '2026-11-30', 11, 61, '2026-10-18 20:00:00'),
(26, 26, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(27, 27, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(28, 28, '2026-11-01', '2026-11-30', 16, 0, '2026-10-18 20:00:00'),
(29, 29, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(30, 30, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(31, 31, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(32, 32, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(33, 33, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(34, 34, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(35, 35, '2026-11-01', '2026-11-30', 12, 0, '2026-10-18 20:00:00'),
(36, 36, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(37, 37, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(38, 38, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(39, 39, '2026-11-01', '2026-11-30', 10, 60, '2026-10-18 20:00:00'),
(40, 40, '2026-11-01', '2026-11-30', 11, 0, '2026-10-18 20:00:00'),
(41, 41, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(42, 42, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(43, 43, '2026-11-01', '2026-11-30', 8, 30, '2026-10-18 20:00:00'),
(44, 44, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(45, 45, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(46, 46, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(47, 47, '2026-11-01', '2026-11-30', 5, 8, '2026-10-18 20:00:00'),
(48, 48, '2026-11-01', '2026-11-30', 9, 0, '2026-10-18 20:00:00'),
(49, 49, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00'),
(50, 50, '2026-11-01', '2026-11-30', 5, 0, '2026-10-18 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `goods_receipts`
--

CREATE TABLE `goods_receipts` (
  `receipt_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `received_by` int(11) NOT NULL,
  `received_date` date NOT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods_receipts`
--

INSERT INTO `goods_receipts` (`receipt_id`, `po_id`, `received_by`, `received_date`, `remarks`) VALUES
(1, 1, 9, '2026-01-24', 'Complete delivery, items checked'),
(2, 2, 3, '2026-01-27', NULL),
(3, 3, 1, '2026-02-09', 'Partial delivery - balance to follow'),
(4, 3, 13, '2026-02-18', 'Balance delivered - order complete'),
(5, 6, 6, '2026-03-02', 'Delivered in good condition'),
(6, 4, 16, '2026-03-12', 'Complete delivery'),
(7, 8, 2, '2026-03-24', 'Partial delivery - balance to follow'),
(8, 8, 15, '2026-04-01', 'Balance delivered - order complete'),
(9, 9, 6, '2026-04-07', 'Complete delivery, items checked'),
(10, 10, 5, '2026-04-15', 'Complete delivery'),
(11, 12, 19, '2026-05-17', 'Partial delivery - balance to follow'),
(12, 12, 11, '2026-05-25', 'Balance delivered - order complete'),
(13, 13, 8, '2026-07-04', NULL),
(14, 15, 8, '2026-07-28', 'Delivered in good condition'),
(15, 14, 3, '2026-08-01', 'Partial delivery - balance to follow'),
(16, 14, 3, '2026-08-09', 'Balance delivered - order complete'),
(17, 16, 20, '2026-08-21', 'Partial delivery - balance to follow'),
(18, 16, 16, '2026-08-30', 'Balance delivered - order complete'),
(19, 17, 6, '2026-09-21', 'Complete delivery');

-- --------------------------------------------------------

--
-- Table structure for table `goods_receipt_items`
--

CREATE TABLE `goods_receipt_items` (
  `receipt_item_id` int(11) NOT NULL,
  `receipt_id` int(11) NOT NULL,
  `po_item_id` int(11) NOT NULL,
  `quantity_received` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods_receipt_items`
--

INSERT INTO `goods_receipt_items` (`receipt_item_id`, `receipt_id`, `po_item_id`, `quantity_received`) VALUES
(1, 1, 1, 269),
(2, 1, 2, 58),
(3, 1, 3, 29),
(4, 2, 4, 14),
(5, 2, 5, 30),
(6, 3, 6, 138),
(7, 3, 7, 96),
(8, 3, 8, 11),
(9, 4, 6, 74),
(10, 4, 7, 47),
(11, 4, 8, 8),
(12, 5, 14, 18),
(13, 5, 15, 215),
(14, 5, 16, 115),
(15, 6, 9, 139),
(16, 6, 10, 34),
(17, 6, 11, 78),
(18, 6, 12, 135),
(19, 7, 21, 19),
(20, 7, 22, 24),
(21, 8, 21, 19),
(22, 8, 22, 12),
(23, 9, 23, 292),
(24, 9, 24, 17),
(25, 9, 25, 234),
(26, 10, 26, 145),
(27, 10, 27, 53),
(28, 10, 28, 155),
(29, 11, 32, 162),
(30, 11, 33, 71),
(31, 11, 34, 78),
(32, 11, 35, 79),
(33, 12, 32, 98),
(34, 12, 33, 61),
(35, 12, 34, 70),
(36, 12, 35, 41),
(37, 13, 36, 109),
(38, 13, 37, 62),
(39, 14, 41, 117),
(40, 14, 42, 119),
(41, 15, 38, 139),
(42, 15, 39, 58),
(43, 15, 40, 70),
(44, 16, 38, 69),
(45, 16, 39, 58),
(46, 16, 40, 45),
(47, 17, 43, 86),
(48, 17, 44, 63),
(49, 17, 45, 176),
(50, 18, 43, 80),
(51, 18, 44, 42),
(52, 18, 45, 101),
(53, 19, 46, 123);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `transaction_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `release_id` int(11) DEFAULT NULL,
  `receipt_id` int(11) DEFAULT NULL,
  `ti_type_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `updated_quantity` int(11) NOT NULL,
  `transaction_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_transactions`
--

INSERT INTO `inventory_transactions` (`transaction_id`, `material_id`, `release_id`, `receipt_id`, `ti_type_id`, `quantity`, `updated_quantity`, `transaction_date`) VALUES
(1, 1, NULL, NULL, 1, 348, 348, '2026-01-02 08:01:00'),
(2, 2, NULL, NULL, 1, 341, 341, '2026-01-02 08:02:00'),
(3, 3, NULL, NULL, 1, 609, 609, '2026-01-02 08:03:00'),
(4, 4, NULL, NULL, 1, 676, 676, '2026-01-02 08:04:00'),
(5, 5, NULL, NULL, 1, 112, 112, '2026-01-02 08:05:00'),
(6, 6, NULL, NULL, 1, 59, 59, '2026-01-02 08:06:00'),
(7, 7, NULL, NULL, 1, 174, 174, '2026-01-02 08:07:00'),
(8, 8, NULL, NULL, 1, 293, 293, '2026-01-02 08:08:00'),
(9, 9, NULL, NULL, 1, 472, 472, '2026-01-02 08:09:00'),
(10, 10, NULL, NULL, 1, 123, 123, '2026-01-02 08:10:00'),
(11, 11, NULL, NULL, 1, 67, 67, '2026-01-02 08:11:00'),
(12, 12, NULL, NULL, 1, 67, 67, '2026-01-02 08:12:00'),
(13, 13, NULL, NULL, 1, 526, 526, '2026-01-02 08:13:00'),
(14, 14, NULL, NULL, 1, 255, 255, '2026-01-02 08:14:00'),
(15, 15, NULL, NULL, 1, 43, 43, '2026-01-02 08:15:00'),
(16, 16, NULL, NULL, 1, 180, 180, '2026-01-02 08:16:00'),
(17, 17, NULL, NULL, 1, 151, 151, '2026-01-02 08:17:00'),
(18, 18, NULL, NULL, 1, 56, 56, '2026-01-02 08:18:00'),
(19, 19, NULL, NULL, 1, 260, 260, '2026-01-02 08:19:00'),
(20, 20, NULL, NULL, 1, 75, 75, '2026-01-02 08:20:00'),
(21, 21, NULL, NULL, 1, 298, 298, '2026-01-02 08:21:00'),
(22, 22, NULL, NULL, 1, 164, 164, '2026-01-02 08:22:00'),
(23, 23, NULL, NULL, 1, 86, 86, '2026-01-02 08:23:00'),
(24, 24, NULL, NULL, 1, 350, 350, '2026-01-02 08:24:00'),
(25, 25, NULL, NULL, 1, 88, 88, '2026-01-02 08:25:00'),
(26, 26, NULL, NULL, 1, 92, 92, '2026-01-02 08:26:00'),
(27, 27, NULL, NULL, 1, 76, 76, '2026-01-02 08:27:00'),
(28, 28, NULL, NULL, 1, 89, 89, '2026-01-02 08:28:00'),
(29, 29, NULL, NULL, 1, 290, 290, '2026-01-02 08:29:00'),
(30, 30, NULL, NULL, 1, 257, 257, '2026-01-02 08:30:00'),
(31, 31, NULL, NULL, 1, 156, 156, '2026-01-02 08:31:00'),
(32, 32, NULL, NULL, 1, 110, 110, '2026-01-02 08:32:00'),
(33, 33, NULL, NULL, 1, 85, 85, '2026-01-02 08:33:00'),
(34, 34, NULL, NULL, 1, 681, 681, '2026-01-02 08:34:00'),
(35, 35, NULL, NULL, 1, 91, 91, '2026-01-02 08:35:00'),
(36, 36, NULL, NULL, 1, 283, 283, '2026-01-02 08:36:00'),
(37, 37, NULL, NULL, 1, 226, 226, '2026-01-02 08:37:00'),
(38, 38, NULL, NULL, 1, 339, 339, '2026-01-02 08:38:00'),
(39, 39, NULL, NULL, 1, 86, 86, '2026-01-02 08:39:00'),
(40, 40, NULL, NULL, 1, 603, 603, '2026-01-02 08:40:00'),
(41, 41, NULL, NULL, 1, 94, 94, '2026-01-02 08:41:00'),
(42, 42, NULL, NULL, 1, 115, 115, '2026-01-02 08:42:00'),
(43, 43, NULL, NULL, 1, 95, 95, '2026-01-02 08:43:00'),
(44, 44, NULL, NULL, 1, 266, 266, '2026-01-02 08:44:00'),
(45, 45, NULL, NULL, 1, 187, 187, '2026-01-02 08:45:00'),
(46, 46, NULL, NULL, 1, 323, 323, '2026-01-02 08:46:00'),
(47, 47, NULL, NULL, 1, 78, 78, '2026-01-02 08:47:00'),
(48, 48, NULL, NULL, 1, 67, 67, '2026-01-02 08:48:00'),
(49, 49, NULL, NULL, 1, 527, 527, '2026-01-02 08:49:00'),
(50, 50, NULL, NULL, 1, 340, 340, '2026-01-02 08:50:00'),
(51, 33, NULL, 1, 2, 29, 114, '2026-01-24 13:40:41'),
(52, 35, NULL, 1, 2, 269, 360, '2026-01-24 15:35:40'),
(53, 11, NULL, 1, 2, 58, 125, '2026-01-24 15:51:25'),
(54, 15, NULL, 2, 2, 14, 57, '2026-01-27 13:27:29'),
(55, 18, NULL, 2, 2, 30, 86, '2026-01-27 13:41:38'),
(56, 13, NULL, 3, 2, 138, 664, '2026-02-09 13:30:09'),
(57, 18, NULL, 3, 2, 11, 97, '2026-02-09 15:07:16'),
(58, 42, NULL, 3, 2, 96, 211, '2026-02-09 16:25:07'),
(59, 18, 1, NULL, 3, 6, 91, '2026-02-10 09:01:31'),
(60, 13, NULL, 4, 2, 74, 738, '2026-02-18 13:15:27'),
(61, 42, NULL, 4, 2, 47, 258, '2026-02-18 14:41:13'),
(62, 18, NULL, 4, 2, 8, 99, '2026-02-18 15:13:29'),
(63, 25, 2, NULL, 3, 29, 59, '2026-02-27 09:49:01'),
(64, 47, 4, NULL, 3, 10, 68, '2026-03-02 09:12:48'),
(65, 43, 3, NULL, 3, 7, 88, '2026-03-02 10:28:49'),
(66, 27, NULL, 5, 2, 18, 94, '2026-03-02 13:07:02'),
(67, 35, NULL, 5, 2, 215, 575, '2026-03-02 16:22:11'),
(68, 45, NULL, 5, 2, 115, 302, '2026-03-02 16:57:51'),
(69, 43, 5, NULL, 3, 18, 70, '2026-03-05 16:02:12'),
(70, 47, 6, NULL, 3, 21, 47, '2026-03-06 11:31:12'),
(71, 48, 7, NULL, 3, 54, 13, '2026-03-06 12:02:23'),
(72, 6, 8, NULL, 3, 28, 31, '2026-03-12 09:19:33'),
(73, 31, NULL, 6, 2, 139, 295, '2026-03-12 14:52:12'),
(74, 18, NULL, 6, 2, 34, 133, '2026-03-12 15:11:19'),
(75, 29, NULL, 6, 2, 78, 368, '2026-03-12 16:18:27'),
(76, 12, NULL, 6, 2, 135, 202, '2026-03-12 16:35:27'),
(77, 20, 9, NULL, 3, 26, 49, '2026-03-14 16:28:44'),
(78, 15, NULL, 7, 2, 19, 76, '2026-03-24 14:05:25'),
(79, 41, NULL, 7, 2, 24, 118, '2026-03-24 16:54:23'),
(80, 27, 10, NULL, 3, 10, 84, '2026-04-01 10:57:26'),
(81, 15, NULL, 8, 2, 19, 95, '2026-04-01 14:38:34'),
(82, 41, NULL, 8, 2, 12, 130, '2026-04-01 16:16:49'),
(83, 48, 11, NULL, 3, 13, 0, '2026-04-03 12:22:05'),
(84, 8, 12, NULL, 3, 22, 271, '2026-04-04 10:00:11'),
(85, 35, 13, NULL, 3, 34, 541, '2026-04-05 10:19:25'),
(86, 11, 14, NULL, 3, 5, 120, '2026-04-06 09:15:32'),
(87, 49, NULL, 9, 2, 234, 761, '2026-04-07 14:47:17'),
(88, 33, NULL, 9, 2, 17, 131, '2026-04-07 15:35:05'),
(89, 35, NULL, 9, 2, 292, 833, '2026-04-07 15:45:15'),
(90, 11, 16, NULL, 3, 16, 104, '2026-04-14 12:00:00'),
(91, 28, 15, NULL, 3, 44, 45, '2026-04-14 12:02:03'),
(92, 24, NULL, 10, 2, 145, 495, '2026-04-15 14:05:29'),
(93, 16, NULL, 10, 2, 53, 233, '2026-04-15 14:14:46'),
(94, 21, NULL, 10, 2, 155, 453, '2026-04-15 14:59:19'),
(95, 40, 17, NULL, 3, 28, 575, '2026-04-16 13:00:40'),
(96, 18, 18, NULL, 3, 3, 130, '2026-04-16 13:10:24'),
(97, 31, 19, NULL, 3, 9, 286, '2026-04-22 12:48:28'),
(98, 43, 20, NULL, 3, 23, 47, '2026-04-23 10:56:27'),
(99, 11, 21, NULL, 3, 8, 96, '2026-05-02 12:58:02'),
(100, 18, 22, NULL, 3, 1, 129, '2026-05-03 14:11:52'),
(101, 1, 23, NULL, 3, 24, 324, '2026-05-04 15:28:02'),
(102, 25, 24, NULL, 3, 56, 3, '2026-05-06 14:50:31'),
(103, 20, 25, NULL, 3, 49, 0, '2026-05-07 10:50:09'),
(104, 45, 27, NULL, 3, 7, 295, '2026-05-07 11:37:45'),
(105, 12, 26, NULL, 3, 12, 190, '2026-05-07 16:30:01'),
(106, 33, 28, NULL, 3, 3, 128, '2026-05-08 10:56:08'),
(107, 35, 31, NULL, 3, 27, 806, '2026-05-14 09:53:08'),
(108, 18, 29, NULL, 3, 8, 121, '2026-05-14 11:13:38'),
(109, 25, 30, NULL, 3, 3, 0, '2026-05-14 12:12:31'),
(110, 9, 32, NULL, 3, 17, 455, '2026-05-15 10:47:56'),
(111, 42, 33, NULL, 3, 29, 229, '2026-05-16 10:32:26'),
(112, 11, NULL, 11, 2, 79, 175, '2026-05-17 13:17:53'),
(113, 49, NULL, 11, 2, 78, 839, '2026-05-17 15:44:05'),
(114, 1, NULL, 11, 2, 71, 395, '2026-05-17 16:02:17'),
(115, 13, NULL, 11, 2, 162, 900, '2026-05-17 16:29:53'),
(116, 19, 34, NULL, 3, 26, 234, '2026-05-19 10:08:52'),
(117, 12, 35, NULL, 3, 28, 162, '2026-05-23 10:23:35'),
(118, 1, NULL, 12, 2, 61, 456, '2026-05-25 13:48:24'),
(119, 11, NULL, 12, 2, 41, 216, '2026-05-25 16:05:07'),
(120, 13, NULL, 12, 2, 98, 998, '2026-05-25 16:21:44'),
(121, 49, NULL, 12, 2, 70, 909, '2026-05-25 16:47:20'),
(122, 12, 36, NULL, 3, 16, 146, '2026-05-26 16:59:01'),
(123, 39, 37, NULL, 3, 18, 68, '2026-05-31 14:03:27'),
(124, 11, 38, NULL, 3, 21, 195, '2026-06-02 14:20:16'),
(125, 21, 39, NULL, 3, 52, 401, '2026-06-04 15:30:52'),
(126, 43, 40, NULL, 3, 19, 28, '2026-06-20 15:14:52'),
(127, 18, 41, NULL, 3, 5, 116, '2026-06-23 14:06:25'),
(128, 39, 42, NULL, 3, 39, 29, '2026-07-04 12:16:35'),
(129, 11, NULL, 13, 2, 62, 257, '2026-07-04 13:33:55'),
(130, 10, NULL, 13, 2, 109, 232, '2026-07-04 15:07:45'),
(131, 27, 44, NULL, 3, 6, 78, '2026-07-05 10:08:17'),
(132, 17, 43, NULL, 3, 13, 138, '2026-07-05 16:26:50'),
(133, 11, 45, NULL, 3, 23, 234, '2026-07-06 14:37:29'),
(134, 35, 46, NULL, 3, 41, 765, '2026-07-12 10:29:57'),
(135, 33, 47, NULL, 3, 7, 121, '2026-07-12 12:52:47'),
(136, 23, 48, NULL, 3, 6, 80, '2026-07-14 11:24:16'),
(137, 15, 49, NULL, 3, 10, 85, '2026-07-28 11:33:51'),
(138, 4, NULL, 14, 2, 117, 793, '2026-07-28 14:15:20'),
(139, 23, NULL, 14, 2, 119, 199, '2026-07-28 15:14:16'),
(140, 28, 50, NULL, 3, 13, 32, '2026-07-30 15:25:51'),
(141, 28, NULL, 15, 2, 139, 171, '2026-08-01 15:00:43'),
(142, 35, NULL, 15, 2, 70, 835, '2026-08-01 15:49:30'),
(143, 9, NULL, 15, 2, 58, 513, '2026-08-01 15:58:10'),
(144, 9, NULL, 16, 2, 58, 571, '2026-08-09 13:49:35'),
(145, 35, NULL, 16, 2, 45, 880, '2026-08-09 14:17:51'),
(146, 28, NULL, 16, 2, 69, 240, '2026-08-09 15:29:33'),
(147, 11, NULL, 17, 2, 63, 297, '2026-08-21 14:25:05'),
(148, 48, NULL, 17, 2, 86, 86, '2026-08-21 15:25:00'),
(149, 20, NULL, 17, 2, 176, 176, '2026-08-21 15:25:48'),
(150, 11, NULL, 18, 2, 42, 339, '2026-08-30 13:04:03'),
(151, 20, NULL, 18, 2, 101, 277, '2026-08-30 13:45:02'),
(152, 48, NULL, 18, 2, 80, 166, '2026-08-30 13:47:35'),
(153, 4, 52, NULL, 3, 52, 741, '2026-09-04 11:00:33'),
(154, 20, 51, NULL, 3, 8, 269, '2026-09-04 11:36:01'),
(155, 12, 53, NULL, 3, 13, 133, '2026-09-04 11:45:46'),
(156, 40, 54, NULL, 3, 49, 526, '2026-09-04 13:09:40'),
(157, 27, 55, NULL, 3, 6, 72, '2026-09-05 11:01:47'),
(158, 39, 56, NULL, 3, 29, 0, '2026-09-10 11:33:14'),
(159, 12, 57, NULL, 3, 12, 121, '2026-09-11 13:08:25'),
(160, 11, 59, NULL, 3, 24, 315, '2026-09-14 14:02:24'),
(161, 49, 58, NULL, 3, 23, 886, '2026-09-14 16:44:01'),
(162, 28, 60, NULL, 3, 55, 185, '2026-09-15 09:56:41'),
(163, 32, NULL, 19, 2, 123, 233, '2026-09-21 15:40:08'),
(164, 30, 61, NULL, 3, 27, 230, '2026-10-15 16:00:19'),
(165, 11, 62, NULL, 3, 28, 287, '2026-10-15 16:58:34'),
(166, 22, 63, NULL, 3, 22, 142, '2026-10-16 10:34:33'),
(167, 27, 64, NULL, 3, 2, 70, '2026-10-18 10:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `low_stock_alerts`
--

CREATE TABLE `low_stock_alerts` (
  `alert_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity_at_alert` int(11) NOT NULL,
  `minimum_at_alert` int(11) NOT NULL,
  `status` enum('open','resolved') NOT NULL,
  `created_at` datetime NOT NULL,
  `resolved_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `low_stock_alerts`
--

INSERT INTO `low_stock_alerts` (`alert_id`, `material_id`, `quantity_at_alert`, `minimum_at_alert`, `status`, `created_at`, `resolved_at`) VALUES
(1, 15, 43, 50, 'resolved', '2026-01-02 08:15:00', '2026-01-27 13:27:29'),
(2, 47, 47, 50, 'open', '2026-03-06 11:31:12', NULL),
(3, 48, 13, 50, 'resolved', '2026-03-06 12:02:23', '2026-08-21 15:25:00'),
(4, 6, 31, 50, 'open', '2026-03-12 09:19:33', NULL),
(5, 20, 49, 50, 'resolved', '2026-03-14 16:28:44', '2026-08-21 15:25:48'),
(6, 28, 45, 50, 'resolved', '2026-04-14 12:02:03', '2026-08-01 15:00:43'),
(7, 43, 47, 50, 'open', '2026-04-23 10:56:27', NULL),
(8, 25, 3, 50, 'open', '2026-05-06 14:50:31', NULL),
(9, 39, 29, 50, 'open', '2026-07-04 12:16:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `material_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock_level_id` int(11) NOT NULL,
  `material_name` varchar(150) NOT NULL,
  `unit` enum('pc','box') NOT NULL,
  `unit_cost` decimal(12,2) NOT NULL,
  `current_quantity` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`material_id`, `category_id`, `stock_level_id`, `material_name`, `unit`, `unit_cost`, `current_quantity`, `updated_at`) VALUES
(1, 1, 3, 'Portland Cement 40kg', 'pc', 265.00, 456, '2026-05-25 13:48:24'),
(2, 1, 3, 'Masonry Cement 40kg', 'pc', 245.00, 341, '2026-01-02 08:02:00'),
(3, 1, 3, 'Washed Sand 25kg Bag', 'pc', 70.00, 609, '2026-01-02 08:03:00'),
(4, 1, 3, 'Crushed Gravel 3/4in 25kg Bag', 'pc', 80.00, 741, '2026-09-04 11:00:33'),
(5, 1, 2, 'Tile Adhesive 25kg', 'pc', 380.00, 112, '2026-01-02 08:05:00'),
(6, 2, 1, 'Deformed Bar 10mm x 6m', 'pc', 215.00, 31, '2026-03-12 09:19:33'),
(7, 2, 2, 'Deformed Bar 12mm x 6m', 'pc', 310.00, 174, '2026-01-02 08:07:00'),
(8, 2, 3, 'Deformed Bar 16mm x 6m', 'pc', 545.00, 271, '2026-04-04 10:00:11'),
(9, 2, 3, 'GI Tie Wire #16 1kg Roll', 'pc', 95.00, 571, '2026-08-09 13:49:35'),
(10, 2, 3, 'Angle Bar 2x2x3/16 x 6m', 'pc', 780.00, 232, '2026-07-04 15:07:45'),
(11, 3, 3, 'Marine Plywood 1/2in 4x8', 'pc', 890.00, 287, '2026-10-15 16:58:34'),
(12, 3, 2, 'Ordinary Plywood 1/4in 4x8', 'pc', 340.00, 121, '2026-09-11 13:08:25'),
(13, 3, 3, 'Coco Lumber 2x2x10ft', 'pc', 120.00, 998, '2026-05-25 16:21:44'),
(14, 3, 3, 'Coco Lumber 2x3x10ft', 'pc', 180.00, 255, '2026-01-02 08:14:00'),
(15, 3, 2, 'Phenolic Board 3/4in 4x8', 'pc', 1450.00, 85, '2026-07-28 11:33:51'),
(16, 4, 3, 'Corrugated GI Sheet 8ft', 'pc', 420.00, 233, '2026-04-15 14:14:46'),
(17, 4, 2, 'Rib-Type Roofing Gauge 26 x 10ft', 'pc', 560.00, 138, '2026-07-05 16:26:50'),
(18, 4, 2, 'Roof Insulation Foil Roll', 'pc', 1850.00, 116, '2026-06-23 14:06:25'),
(19, 4, 3, 'Ridge Roll 8ft', 'pc', 280.00, 234, '2026-05-19 10:08:52'),
(20, 4, 3, 'Roofing Screws 2in (Box of 100)', 'box', 180.00, 269, '2026-09-04 11:36:01'),
(21, 5, 3, 'PVC Pipe 2in Orange x 3m', 'pc', 165.00, 401, '2026-06-04 15:30:52'),
(22, 5, 2, 'PVC Pipe 4in Orange x 3m', 'pc', 410.00, 142, '2026-10-16 10:34:33'),
(23, 5, 2, 'Brass Gate Valve 1/2in', 'pc', 275.00, 199, '2026-07-28 15:14:16'),
(24, 5, 3, 'PVC Elbow 2in (Box of 20)', 'box', 320.00, 495, '2026-04-15 14:05:29'),
(25, 5, 1, 'PVC Solvent Cement 250ml', 'pc', 130.00, 0, '2026-05-14 12:12:31'),
(26, 6, 2, 'THHN Wire 3.5mm2 x 75m Roll', 'pc', 2650.00, 92, '2026-01-02 08:26:00'),
(27, 6, 2, 'THHN Wire 2.0mm2 x 75m Roll', 'pc', 1650.00, 70, '2026-10-18 10:20:07'),
(28, 6, 2, 'PVC Conduit 1/2in x 3m', 'pc', 38.00, 185, '2026-09-15 09:56:41'),
(29, 6, 3, 'Circuit Breaker 30A', 'pc', 420.00, 368, '2026-03-12 16:18:27'),
(30, 6, 3, 'Utility Box (Box of 10)', 'box', 310.00, 230, '2026-10-15 16:00:19'),
(31, 7, 3, 'Flat Latex Paint White 4L', 'pc', 620.00, 286, '2026-04-22 12:48:28'),
(32, 7, 3, 'Semi-Gloss Enamel White 4L', 'pc', 890.00, 233, '2026-09-21 15:40:08'),
(33, 7, 2, 'Epoxy Primer 4L', 'pc', 1150.00, 121, '2026-07-12 12:52:47'),
(34, 7, 3, 'Paint Brush 4in', 'pc', 85.00, 681, '2026-01-02 08:34:00'),
(35, 7, 3, 'Paint Roller Set 7in', 'pc', 140.00, 880, '2026-08-09 14:17:51'),
(36, 8, 3, 'Ceramic Floor Tile 40x40 (Box)', 'box', 365.00, 283, '2026-01-02 08:36:00'),
(37, 8, 3, 'Ceramic Wall Tile 30x60 (Box)', 'box', 520.00, 226, '2026-01-02 08:37:00'),
(38, 8, 3, 'Vinyl Plank Flooring (Box)', 'box', 980.00, 339, '2026-01-02 08:38:00'),
(39, 8, 1, 'Tile Grout 2kg', 'pc', 150.00, 0, '2026-09-10 11:33:14'),
(40, 8, 3, 'Tile Spacer 3mm (Box of 100)', 'box', 60.00, 526, '2026-09-04 13:09:40'),
(41, 9, 2, 'Common Wire Nails 3in (Box)', 'box', 1380.00, 130, '2026-04-01 16:16:49'),
(42, 9, 3, 'Concrete Nails 2in (Box)', 'box', 990.00, 229, '2026-05-16 10:32:26'),
(43, 9, 1, 'Tek Screws #10 x 1in (Box of 500)', 'box', 410.00, 28, '2026-06-20 15:14:52'),
(44, 9, 3, 'Expansion Anchor Bolt 1/2in (Box of 50)', 'box', 760.00, 266, '2026-01-02 08:44:00'),
(45, 9, 3, 'Door Hinge 3in (Box of 12 pairs)', 'box', 590.00, 295, '2026-05-07 11:37:45'),
(46, 10, 3, 'Safety Helmet', 'pc', 220.00, 323, '2026-01-02 08:46:00'),
(47, 10, 1, 'Safety Gloves (Box of 12 pairs)', 'box', 540.00, 47, '2026-03-06 11:31:12'),
(48, 10, 2, 'Hand Trowel 6in', 'pc', 160.00, 166, '2026-08-30 13:47:35'),
(49, 10, 3, 'Measuring Tape 5m', 'pc', 140.00, 886, '2026-09-14 16:44:01'),
(50, 10, 3, 'Cutting Disc 4in (Box of 25)', 'box', 780.00, 340, '2026-01-02 08:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `material_categories`
--

CREATE TABLE `material_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(80) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_categories`
--

INSERT INTO `material_categories` (`category_id`, `category_name`, `description`) VALUES
(1, 'Cement & Aggregates', 'Cement, sand, gravel and masonry bonding products'),
(2, 'Steel & Rebar', 'Reinforcing bars, wire and structural steel'),
(3, 'Lumber & Plywood', 'Wood, plywood and formworks'),
(4, 'Roofing', 'Roof sheets, insulation and accessories'),
(5, 'Plumbing', 'Pipes, fittings and valves'),
(6, 'Electrical', 'Wires, conduits and electrical accessories'),
(7, 'Paint & Finishes', 'Paints, primers and painting supplies'),
(8, 'Tiles & Flooring', 'Floor and wall tiles, grout and spacers'),
(9, 'Hardware & Fasteners', 'Nails, screws, anchors and door hardware'),
(10, 'Safety & Tools', 'Personal protective equipment and hand tools');

-- --------------------------------------------------------

--
-- Table structure for table `material_releases`
--

CREATE TABLE `material_releases` (
  `release_id` int(11) NOT NULL,
  `request_item_id` int(11) NOT NULL,
  `released_by` int(11) NOT NULL,
  `released_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_releases`
--

INSERT INTO `material_releases` (`release_id`, `request_item_id`, `released_by`, `released_date`) VALUES
(1, 2, 2, '2026-02-10'),
(2, 3, 5, '2026-02-27'),
(3, 4, 9, '2026-03-02'),
(4, 5, 9, '2026-03-02'),
(5, 9, 6, '2026-03-05'),
(6, 7, 12, '2026-03-06'),
(7, 8, 7, '2026-03-06'),
(8, 10, 14, '2026-03-12'),
(9, 11, 13, '2026-03-14'),
(10, 12, 15, '2026-04-01'),
(11, 15, 8, '2026-04-03'),
(12, 16, 17, '2026-04-04'),
(13, 14, 19, '2026-04-05'),
(14, 17, 6, '2026-04-06'),
(15, 18, 16, '2026-04-14'),
(16, 20, 14, '2026-04-14'),
(17, 19, 2, '2026-04-16'),
(18, 21, 19, '2026-04-16'),
(19, 22, 6, '2026-04-22'),
(20, 23, 5, '2026-04-23'),
(21, 27, 14, '2026-05-02'),
(22, 26, 5, '2026-05-03'),
(23, 29, 7, '2026-05-04'),
(24, 32, 5, '2026-05-06'),
(25, 30, 8, '2026-05-07'),
(26, 31, 19, '2026-05-07'),
(27, 33, 13, '2026-05-07'),
(28, 28, 14, '2026-05-08'),
(29, 34, 2, '2026-05-14'),
(30, 36, 16, '2026-05-14'),
(31, 37, 2, '2026-05-14'),
(32, 35, 1, '2026-05-15'),
(33, 39, 7, '2026-05-16'),
(34, 41, 6, '2026-05-19'),
(35, 40, 8, '2026-05-23'),
(36, 45, 20, '2026-05-26'),
(37, 48, 14, '2026-05-31'),
(38, 47, 14, '2026-06-02'),
(39, 46, 12, '2026-06-04'),
(40, 49, 8, '2026-06-20'),
(41, 50, 10, '2026-06-23'),
(42, 54, 9, '2026-07-04'),
(43, 51, 6, '2026-07-05'),
(44, 55, 17, '2026-07-05'),
(45, 53, 11, '2026-07-06'),
(46, 56, 14, '2026-07-12'),
(47, 58, 12, '2026-07-12'),
(48, 57, 12, '2026-07-14'),
(49, 60, 2, '2026-07-28'),
(50, 59, 3, '2026-07-30'),
(51, 61, 8, '2026-09-04'),
(52, 62, 13, '2026-09-04'),
(53, 63, 5, '2026-09-04'),
(54, 64, 2, '2026-09-04'),
(55, 65, 2, '2026-09-05'),
(56, 67, 15, '2026-09-10'),
(57, 66, 8, '2026-09-11'),
(58, 68, 17, '2026-09-14'),
(59, 69, 3, '2026-09-14'),
(60, 70, 17, '2026-09-15'),
(61, 95, 3, '2026-10-15'),
(62, 97, 5, '2026-10-15'),
(63, 94, 7, '2026-10-16'),
(64, 96, 10, '2026-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `material_requests`
--

CREATE TABLE `material_requests` (
  `request_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `status` enum('approved','pending','completed') NOT NULL,
  `date_requested` date NOT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_requests`
--

INSERT INTO `material_requests` (`request_id`, `project_id`, `staff_id`, `status`, `date_requested`, `remarks`) VALUES
(1, 4, 14, 'approved', '2026-02-08', 'For finishing works'),
(2, 15, 13, 'approved', '2026-02-26', 'Plumbing rough-in'),
(3, 8, 15, 'completed', '2026-03-01', 'Urgent - site delivery requested'),
(4, 8, 2, 'completed', '2026-03-09', NULL),
(5, 5, 6, 'completed', '2026-03-31', 'For slab pouring'),
(6, 7, 11, 'approved', '2026-04-02', 'Standard site replenishment'),
(7, 2, 20, 'approved', '2026-04-02', 'Replacement of damaged stock'),
(8, 10, 11, 'completed', '2026-04-12', 'Needed for foundation works'),
(9, 5, 14, 'approved', '2026-04-19', 'Wall framing materials'),
(10, 5, 19, 'completed', '2026-05-01', 'Needed for foundation works'),
(11, 11, 19, 'completed', '2026-05-03', NULL),
(12, 7, 6, 'completed', '2026-05-04', 'For slab pouring'),
(13, 3, 14, 'approved', '2026-05-11', 'Roofing phase materials'),
(14, 4, 19, 'approved', '2026-05-12', 'Wall framing materials'),
(15, 8, 3, 'completed', '2026-05-13', 'For slab pouring'),
(16, 2, 11, 'approved', '2026-05-18', 'Roofing phase materials'),
(17, 3, 12, 'approved', '2026-05-23', 'Urgent - site delivery requested'),
(18, 11, 13, 'approved', '2026-05-30', 'Electrical rough-in'),
(19, 14, 15, 'completed', '2026-06-19', 'Roofing phase materials'),
(20, 10, 6, 'approved', '2026-07-01', 'Replacement of damaged stock'),
(21, 10, 14, 'completed', '2026-07-04', 'Electrical rough-in'),
(22, 14, 15, 'completed', '2026-07-10', 'For finishing works'),
(23, 1, 20, 'completed', '2026-07-11', 'Replacement of damaged stock'),
(24, 1, 7, 'approved', '2026-07-25', 'Needed for foundation works'),
(25, 3, 15, 'approved', '2026-08-31', 'Plumbing rough-in'),
(26, 1, 12, 'completed', '2026-09-01', 'Needed for foundation works'),
(27, 14, 3, 'approved', '2026-09-09', 'Replacement of damaged stock'),
(28, 14, 7, 'completed', '2026-09-13', 'Roofing phase materials'),
(29, 15, 20, 'pending', '2026-10-01', 'Urgent - site delivery requested'),
(30, 6, 2, 'pending', '2026-10-01', 'Urgent - site delivery requested'),
(31, 12, 12, 'pending', '2026-10-02', 'For finishing works'),
(32, 12, 2, 'pending', '2026-10-03', NULL),
(33, 2, 19, 'pending', '2026-10-05', 'Electrical rough-in'),
(34, 6, 19, 'pending', '2026-10-08', NULL),
(35, 2, 17, 'pending', '2026-10-09', 'For finishing works'),
(36, 11, 14, 'pending', '2026-10-10', NULL),
(37, 13, 1, 'pending', '2026-10-11', 'Plumbing rough-in'),
(38, 13, 19, 'pending', '2026-10-11', 'Wall framing materials'),
(39, 1, 12, 'approved', '2026-10-14', 'For finishing works'),
(40, 12, 6, 'pending', '2026-10-16', 'Urgent - site delivery requested');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `amount_paid` decimal(12,2) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `po_id`, `amount_paid`, `payment_date`) VALUES
(1, 1, 54647.06, '2026-01-15'),
(2, 1, 54647.06, '2026-01-28'),
(3, 2, 65391.78, '2026-02-02'),
(4, 3, 95608.18, '2026-02-06'),
(5, 4, 104669.76, '2026-02-23'),
(6, 3, 95608.18, '2026-02-25'),
(7, 6, 113077.34, '2026-03-09'),
(8, 4, 104669.75, '2026-03-14'),
(9, 8, 49124.75, '2026-03-15'),
(10, 8, 49124.75, '2026-04-03'),
(11, 9, 82839.94, '2026-04-11'),
(12, 10, 85738.62, '2026-04-23'),
(13, 12, 89915.26, '2026-05-12'),
(14, 12, 89915.26, '2026-05-30'),
(15, 13, 134947.45, '2026-07-07'),
(16, 15, 38117.58, '2026-07-28'),
(17, 14, 32054.14, '2026-08-16'),
(18, 16, 157030.08, '2026-09-01'),
(19, 17, 51571.44, '2026-09-06'),
(20, 17, 51571.44, '2026-09-22'),
(21, 18, 36074.47, '2026-09-26'),
(22, 19, 30314.88, '2026-10-04'),
(23, 21, 26156.03, '2026-10-12'),
(24, 22, 26631.85, '2026-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `pm_id` int(11) NOT NULL,
  `project_name` varchar(150) NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('approved','pending','completed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `pm_id`, `project_name`, `location`, `start_date`, `end_date`, `status`) VALUES
(1, 6, 'Bonifacio Residential Townhouse', 'Bonifacio St., Cagayan de Oro', '2026-07-09', '2027-02-09', 'approved'),
(2, 6, 'Carmen Commercial Building', 'Carmen, Cagayan de Oro', '2026-03-03', '2026-10-16', 'approved'),
(3, 5, 'Macasandig Subdivision Phase 1', 'Macasandig, Cagayan de Oro', '2026-03-26', '2026-10-28', 'approved'),
(4, 5, 'Lapasan School Annex', 'Lapasan, Cagayan de Oro', '2026-01-25', '2026-06-04', 'completed'),
(5, 1, 'Kauswagan Warehouse', 'Kauswagan, Cagayan de Oro', '2026-01-21', '2026-05-25', 'completed'),
(6, 7, 'Puerto Barangay Health Center', 'Puerto, Cagayan de Oro', '2026-12-01', '2027-07-04', 'pending'),
(7, 2, 'Gusa Apartment Complex', 'Gusa, Cagayan de Oro', '2026-01-18', '2026-08-20', 'approved'),
(8, 5, 'Cugman Farm-to-Market Road', 'Cugman, Cagayan de Oro', '2026-01-20', '2026-05-21', 'completed'),
(9, 6, 'Tablon Covered Court', 'Tablon, Cagayan de Oro', '2026-01-12', '2026-05-18', 'completed'),
(10, 1, 'Balulang Condominium', 'Balulang, Cagayan de Oro', '2026-04-05', '2027-02-15', 'approved'),
(11, 4, 'Agusan Multi-Purpose Hall', 'Agusan, Cagayan de Oro', '2026-04-28', '2027-02-02', 'approved'),
(12, 7, 'Nazareth Public Market Repair', 'Nazareth, Cagayan de Oro', '2026-12-13', '2027-09-07', 'pending'),
(13, 5, 'Bugo Cold Storage Facility', 'Bugo, Cagayan de Oro', '2026-11-12', '2027-07-15', 'pending'),
(14, 6, 'Iponan Housing Project', 'Iponan, Cagayan de Oro', '2026-04-24', '2027-01-23', 'approved'),
(15, 1, 'Camaman-an Chapel Renovation', 'Camaman-an, Cagayan de Oro', '2026-01-29', '2026-12-06', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `project_managers`
--

CREATE TABLE `project_managers` (
  `pm_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_managers`
--

INSERT INTO `project_managers` (`pm_id`, `user_id`) VALUES
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `po_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `expected_delivery_date` date DEFAULT NULL,
  `status` enum('pending','ordered','received','cancelled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`po_id`, `supplier_id`, `created_by`, `order_date`, `expected_delivery_date`, `status`) VALUES
(1, 5, 2, '2026-01-13', '2026-01-25', 'received'),
(2, 8, 14, '2026-01-15', '2026-01-28', 'received'),
(3, 1, 13, '2026-02-04', '2026-02-10', 'received'),
(4, 10, 19, '2026-02-23', '2026-03-09', 'received'),
(5, 9, 7, '2026-02-23', '2026-03-02', 'cancelled'),
(6, 9, 20, '2026-02-25', '2026-03-03', 'received'),
(7, 1, 14, '2026-03-08', '2026-03-14', 'cancelled'),
(8, 2, 14, '2026-03-13', '2026-03-21', 'received'),
(9, 12, 7, '2026-03-24', '2026-04-05', 'received'),
(10, 10, 13, '2026-04-08', '2026-04-14', 'received'),
(11, 13, 7, '2026-04-29', '2026-05-11', 'cancelled'),
(12, 2, 9, '2026-05-10', '2026-05-15', 'received'),
(13, 2, 10, '2026-06-27', '2026-07-05', 'received'),
(14, 12, 1, '2026-07-21', '2026-07-30', 'received'),
(15, 10, 1, '2026-07-22', '2026-07-27', 'received'),
(16, 9, 6, '2026-08-10', '2026-08-20', 'received'),
(17, 5, 3, '2026-09-05', '2026-09-18', 'received'),
(18, 5, 3, '2026-09-26', '2026-10-03', 'ordered'),
(19, 3, 20, '2026-10-02', '2026-10-10', 'ordered'),
(20, 11, 7, '2026-10-04', '2026-10-13', 'ordered'),
(21, 15, 12, '2026-10-11', '2026-10-22', 'ordered'),
(22, 4, 17, '2026-10-12', '2026-10-17', 'ordered'),
(23, 11, 19, '2026-10-12', '2026-10-20', 'pending'),
(24, 4, 20, '2026-10-15', '2026-10-26', 'pending'),
(25, 12, 15, '2026-10-17', '2026-10-31', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `po_item_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity_ordered` int(11) NOT NULL,
  `unit_price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`po_item_id`, `po_id`, `material_id`, `quantity_ordered`, `unit_price`) VALUES
(1, 1, 35, 269, 127.03),
(2, 1, 11, 58, 770.08),
(3, 1, 33, 29, 1050.29),
(4, 2, 15, 14, 1298.82),
(5, 2, 18, 30, 1573.61),
(6, 3, 13, 212, 113.08),
(7, 3, 42, 143, 953.20),
(8, 3, 18, 19, 1628.20),
(9, 4, 31, 139, 548.91),
(10, 4, 18, 34, 1793.42),
(11, 4, 29, 78, 400.73),
(12, 4, 12, 135, 302.28),
(13, 5, 10, 92, 723.33),
(14, 6, 27, 18, 1471.33),
(15, 6, 35, 215, 123.08),
(16, 6, 45, 115, 522.88),
(17, 7, 13, 227, 111.81),
(18, 7, 43, 128, 363.61),
(19, 7, 9, 109, 89.87),
(20, 7, 20, 231, 160.29),
(21, 8, 15, 38, 1325.57),
(22, 8, 41, 36, 1329.94),
(23, 9, 35, 292, 125.54),
(24, 9, 33, 17, 979.36),
(25, 9, 49, 234, 126.21),
(26, 10, 24, 145, 305.22),
(27, 10, 16, 53, 362.39),
(28, 10, 21, 155, 143.71),
(29, 11, 50, 77, 700.21),
(30, 11, 27, 24, 1521.59),
(31, 11, 8, 131, 496.99),
(32, 12, 13, 260, 107.96),
(33, 12, 1, 132, 228.60),
(34, 12, 49, 148, 133.69),
(35, 12, 11, 120, 848.33),
(36, 13, 10, 109, 751.97),
(37, 13, 11, 62, 854.56),
(38, 14, 28, 208, 36.30),
(39, 14, 9, 116, 85.79),
(40, 14, 35, 115, 126.54),
(41, 15, 4, 117, 70.46),
(42, 15, 23, 119, 251.04),
(43, 16, 48, 166, 150.90),
(44, 16, 11, 105, 840.43),
(45, 16, 20, 277, 157.89),
(46, 17, 32, 123, 838.56),
(47, 18, 43, 79, 384.99),
(48, 18, 20, 254, 164.31),
(49, 19, 4, 166, 70.00),
(50, 19, 34, 297, 79.67),
(51, 19, 23, 106, 239.13),
(52, 20, 17, 126, 498.69),
(53, 20, 29, 90, 393.69),
(54, 20, 12, 131, 294.01),
(55, 21, 23, 63, 265.95),
(56, 21, 20, 210, 169.32),
(57, 22, 28, 164, 35.87),
(58, 22, 39, 102, 133.98),
(59, 22, 20, 219, 153.95),
(60, 23, 19, 119, 270.78),
(61, 24, 20, 166, 161.29),
(62, 25, 12, 119, 307.61),
(63, 25, 13, 273, 110.82),
(64, 25, 20, 232, 166.67),
(65, 25, 40, 113, 53.08);

-- --------------------------------------------------------

--
-- Table structure for table `request_items`
--

CREATE TABLE `request_items` (
  `request_item_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `r_status_id` int(11) NOT NULL,
  `quantity_requested` int(11) NOT NULL,
  `quantity_released` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_items`
--

INSERT INTO `request_items` (`request_item_id`, `request_id`, `material_id`, `r_status_id`, `quantity_requested`, `quantity_released`) VALUES
(1, 1, 28, 2, 22, 0),
(2, 1, 18, 4, 6, 6),
(3, 2, 25, 4, 29, 29),
(4, 2, 43, 3, 11, 7),
(5, 2, 47, 4, 10, 10),
(6, 2, 35, 2, 50, 0),
(7, 3, 47, 4, 21, 21),
(8, 3, 48, 4, 54, 54),
(9, 3, 43, 4, 18, 18),
(10, 4, 6, 4, 28, 28),
(11, 4, 20, 4, 26, 26),
(12, 5, 27, 4, 10, 10),
(13, 6, 48, 2, 34, 0),
(14, 7, 35, 4, 34, 34),
(15, 7, 48, 3, 31, 13),
(16, 7, 8, 4, 22, 22),
(17, 7, 11, 3, 13, 5),
(18, 8, 28, 4, 44, 44),
(19, 8, 40, 4, 28, 28),
(20, 8, 11, 4, 16, 16),
(21, 8, 18, 4, 3, 3),
(22, 9, 31, 3, 16, 9),
(23, 9, 43, 3, 30, 23),
(24, 9, 33, 2, 9, 0),
(25, 9, 48, 2, 20, 0),
(26, 10, 18, 4, 1, 1),
(27, 10, 11, 4, 8, 8),
(28, 11, 33, 4, 3, 3),
(29, 11, 1, 4, 24, 24),
(30, 11, 20, 4, 49, 49),
(31, 11, 12, 4, 12, 12),
(32, 12, 25, 4, 56, 56),
(33, 12, 45, 4, 7, 7),
(34, 13, 18, 4, 8, 8),
(35, 13, 9, 4, 17, 17),
(36, 13, 25, 3, 45, 3),
(37, 14, 35, 3, 47, 27),
(38, 14, 25, 2, 32, 0),
(39, 15, 42, 4, 29, 29),
(40, 16, 12, 4, 28, 28),
(41, 16, 19, 4, 26, 26),
(42, 16, 26, 2, 8, 0),
(43, 16, 20, 2, 35, 0),
(44, 17, 42, 2, 27, 0),
(45, 17, 12, 4, 16, 16),
(46, 18, 21, 4, 52, 52),
(47, 18, 11, 3, 28, 21),
(48, 18, 39, 4, 18, 18),
(49, 19, 43, 4, 19, 19),
(50, 19, 18, 4, 5, 5),
(51, 20, 17, 4, 13, 13),
(52, 20, 20, 2, 28, 0),
(53, 20, 11, 4, 23, 23),
(54, 20, 39, 4, 39, 39),
(55, 21, 27, 4, 6, 6),
(56, 22, 35, 4, 41, 41),
(57, 23, 23, 4, 6, 6),
(58, 23, 33, 4, 7, 7),
(59, 24, 28, 3, 31, 13),
(60, 24, 15, 4, 10, 10),
(61, 25, 20, 3, 17, 8),
(62, 25, 4, 4, 52, 52),
(63, 25, 12, 4, 13, 13),
(64, 26, 40, 4, 49, 49),
(65, 26, 27, 4, 6, 6),
(66, 27, 12, 4, 12, 12),
(67, 27, 39, 3, 39, 29),
(68, 27, 49, 4, 23, 23),
(69, 27, 11, 4, 24, 24),
(70, 28, 28, 4, 55, 55),
(71, 29, 4, 1, 36, 0),
(72, 30, 38, 1, 26, 0),
(73, 30, 49, 1, 52, 0),
(74, 30, 47, 1, 15, 0),
(75, 31, 29, 1, 15, 0),
(76, 31, 16, 1, 13, 0),
(77, 32, 11, 1, 29, 0),
(78, 32, 25, 1, 39, 0),
(79, 32, 20, 1, 22, 0),
(80, 33, 12, 1, 18, 0),
(81, 33, 6, 1, 7, 0),
(82, 34, 39, 1, 15, 0),
(83, 34, 18, 1, 9, 0),
(84, 34, 25, 1, 43, 0),
(85, 35, 20, 1, 21, 0),
(86, 35, 12, 1, 29, 0),
(87, 35, 49, 1, 26, 0),
(88, 35, 44, 1, 21, 0),
(89, 36, 47, 1, 11, 0),
(90, 37, 12, 1, 21, 0),
(91, 37, 26, 1, 3, 0),
(92, 38, 39, 1, 18, 0),
(93, 38, 36, 1, 22, 0),
(94, 39, 22, 4, 22, 22),
(95, 39, 30, 4, 27, 27),
(96, 39, 27, 3, 3, 2),
(97, 39, 11, 4, 28, 28),
(98, 40, 28, 1, 29, 0),
(99, 40, 41, 1, 3, 0),
(100, 40, 44, 1, 9, 0),
(101, 40, 18, 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `request_status`
--

CREATE TABLE `request_status` (
  `r_status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_status`
--

INSERT INTO `request_status` (`r_status_id`, `status_name`) VALUES
(2, 'Approved'),
(3, 'Partially Released'),
(1, 'Pending'),
(4, 'Released');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `user_id`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20),
(11, 21),
(12, 22),
(13, 23),
(14, 24),
(15, 25),
(16, 26),
(17, 27),
(18, 28),
(19, 29),
(20, 30);

-- --------------------------------------------------------

--
-- Table structure for table `stock_levels`
--

CREATE TABLE `stock_levels` (
  `stock_level_id` int(11) NOT NULL,
  `level_name` enum('low','average','high') NOT NULL,
  `min_quantity` int(11) NOT NULL,
  `max_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_levels`
--

INSERT INTO `stock_levels` (`stock_level_id`, `level_name`, `min_quantity`, `max_quantity`) VALUES
(1, 'low', 0, 49),
(2, 'average', 50, 199),
(3, 'high', 200, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(150) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `contact_person`, `contact_number`, `email`, `status`) VALUES
(1, 'Mindanao Steel Trading', 'Roberto Uy', '(088) 843-8600', 'sales@mindanao.com.ph', 'active'),
(2, 'Golden Harvest Cement Corp', 'Elena Pacana', '0980-898-7811', 'sales@golden.com.ph', 'active'),
(3, 'Kagay-an Hardware Supply', 'Fernando Lao', '(088) 846-8662', 'sales@kagayan.com.ph', 'active'),
(4, 'Macajalar Lumber & Plywood', 'Teresita Chua', '0939-433-9508', 'sales@macajalar.com.ph', 'active'),
(5, 'Cagayan Roofing Systems', 'Gilbert Sy', '(088) 871-8284', 'sales@cagayan.com.ph', 'active'),
(6, 'Northern Mindanao Pipes & Fittings', 'Marites Yap', '0932-639-9596', 'sales@northern.com.ph', 'inactive'),
(7, 'Bukidnon Aggregates Inc.', 'Edgar Co', '(088) 845-2549', 'sales@bukidnon.com.ph', 'active'),
(8, 'Oro Electrical Supply', 'Rosalie Ang', '0944-336-1080', 'sales@oro.com.ph', 'active'),
(9, 'Cogon Paint Center', 'Antonio Dy', '(088) 821-8440', 'sales@cogon.com.ph', 'active'),
(10, 'Divisoria Tiles & Flooring', 'Lourdes Go', '0999-438-7684', 'sales@divisoria.com.ph', 'active'),
(11, 'Misamis Fasteners Depot', 'Benjie Lee', '(088) 879-3989', 'sales@misamis.com.ph', 'active'),
(12, 'Camiguin Safety Equipment', 'Corazon Tiu', '0920-460-3568', 'sales@camiguin.com.ph', 'active'),
(13, 'Iligan Builders Warehouse', 'Wilfredo Ong', '(088) 855-9820', 'sales@iligan.com.ph', 'active'),
(14, 'Valencia Wholesale Construction', 'Susan Kho', '0944-212-5595', 'sales@valencia.com.ph', 'inactive'),
(15, 'Lapasan Industrial Traders', 'Ernesto Chan', '(088) 881-4513', 'sales@lapasan.com.ph', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `ti_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`ti_type_id`, `type_name`) VALUES
(4, 'Adjustment'),
(1, 'Initial Stock'),
(2, 'Stock In'),
(3, 'Stock Out');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `role` enum('admin','project_manager','staff') NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_initial` varchar(5) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role`, `first_name`, `last_name`, `middle_initial`, `username`, `email`, `password_hash`, `status`, `last_login`, `created_at`) VALUES
(1, 'admin', 'Juan', 'Dela Cruz', NULL, 'jcruz', 'jcruz@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-04 13:32:32', '2025-12-30 09:56:14'),
(2, 'admin', 'Maria', 'Santos', 'S.', 'msantos', 'msantos@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-18 14:50:36', '2026-01-03 17:28:15'),
(3, 'project_manager', 'Jose', 'Reyes', 'K.', 'jreyes', 'jreyes@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-01 17:05:07', '2026-01-05 09:28:00'),
(4, 'project_manager', 'Ana', 'Garcia', 'J.', 'agarcia', 'agarcia@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-16 13:13:25', '2025-12-21 13:51:24'),
(5, 'project_manager', 'Mark', 'Ramos', NULL, 'mramos', 'mramos@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-17 09:46:21', '2025-12-12 16:34:18'),
(6, 'project_manager', 'Grace', 'Mendoza', 'K.', 'gmendoza', 'gmendoza@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-10 15:09:56', '2025-12-10 13:23:29'),
(7, 'project_manager', 'Paolo', 'Bautista', 'S.', 'pbautista', 'pbautista@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-14 09:25:57', '2025-12-13 14:32:51'),
(8, 'project_manager', 'Liza', 'Villanueva', 'J.', 'lvillanueva', 'lvillanueva@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-16 14:58:33', '2025-12-23 17:59:30'),
(9, 'project_manager', 'Ramon', 'Aquino', NULL, 'raquino', 'raquino@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-17 16:51:01', '2025-12-28 11:49:08'),
(10, 'project_manager', 'Joy', 'Navarro', 'D.', 'jnavarro', 'jnavarro@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-02 16:56:42', '2026-01-01 17:27:30'),
(11, 'staff', 'Carlo', 'Pacheco', 'D.', 'cpacheco', 'cpacheco@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-05 15:56:14', '2025-12-30 15:43:30'),
(12, 'staff', 'Patricia', 'Tan', 'K.', 'ptan', 'ptan@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-18 12:35:25', '2025-12-27 16:44:30'),
(13, 'staff', 'Dennis', 'Lim', NULL, 'dlim', 'dlim@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-13 14:12:18', '2026-01-05 12:00:02'),
(14, 'staff', 'Rhea', 'Cabrera', 'G.', 'rcabrera', 'rcabrera@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'inactive', '2026-05-06 15:23:58', '2025-12-18 15:29:32'),
(15, 'staff', 'Allan', 'Domingo', 'B.', 'adomingo', 'adomingo@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-16 14:35:42', '2026-01-05 12:20:29'),
(16, 'staff', 'Michelle', 'Fernandez', 'T.', 'mfernandez', 'mfernandez@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-04 15:44:45', '2025-12-18 15:59:11'),
(17, 'staff', 'Noel', 'Castillo', NULL, 'ncastillo', 'ncastillo@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-14 15:04:41', '2025-12-18 15:23:06'),
(18, 'staff', 'Jenny', 'Gonzales', 'A.', 'jgonzales', 'jgonzales@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-07 14:09:28', '2025-12-12 08:28:37'),
(19, 'staff', 'Rico', 'Torres', 'G.', 'rtorres', 'rtorres@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-18 09:39:50', '2025-12-17 09:39:02'),
(20, 'staff', 'Cathy', 'Salazar', 'M.', 'csalazar', 'csalazar@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-18 12:42:48', '2025-12-14 08:20:42'),
(21, 'staff', 'Bryan', 'Abellana', NULL, 'babellana', 'babellana@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-16 10:34:14', '2025-12-25 17:08:38'),
(22, 'staff', 'Hazel', 'Pabillar', 'F.', 'hpabillar', 'hpabillar@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-17 12:05:26', '2025-12-14 17:19:32'),
(23, 'staff', 'Vincent', 'Rodriguez', 'T.', 'vrodriguez', 'vrodriguez@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-14 14:51:09', '2026-01-04 11:24:00'),
(24, 'staff', 'Irene', 'Lagura', 'B.', 'ilagura', 'ilagura@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-04 14:56:04', '2026-01-05 13:41:22'),
(25, 'staff', 'Jerome', 'Ocampo', NULL, 'jocampo', 'jocampo@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-01 08:32:30', '2025-12-20 12:28:20'),
(26, 'staff', 'Camille', 'Gumera', 'F.', 'cgumera', 'cgumera@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-04 15:29:36', '2025-12-14 17:33:13'),
(27, 'staff', 'Leo', 'Tumapon', 'H.', 'ltumapon', 'ltumapon@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-14 17:21:29', '2025-12-31 09:35:25'),
(28, 'staff', 'Sheila', 'Baguio', 'F.', 'sbaguio', 'sbaguio@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'inactive', '2026-03-05 11:41:58', '2025-12-11 16:59:53'),
(29, 'staff', 'Arnold', 'Calamba', NULL, 'acalamba', 'acalamba@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-02 15:55:48', '2025-12-30 11:30:45'),
(30, 'staff', 'Kristine', 'Maghanoy', 'G.', 'kmaghanoy', 'kmaghanoy@buildia.ph', '$2b$10$VtC6TZvoEBVr/XaVj3EG3.wYFaEJe0POtz1dazKTmXk4hxatcNqNm', 'active', '2026-10-01 10:41:33', '2026-01-04 16:57:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `demand_forecasts`
--
ALTER TABLE `demand_forecasts`
  ADD PRIMARY KEY (`forecast_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `goods_receipts`
--
ALTER TABLE `goods_receipts`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `po_id` (`po_id`),
  ADD KEY `received_by` (`received_by`);

--
-- Indexes for table `goods_receipt_items`
--
ALTER TABLE `goods_receipt_items`
  ADD PRIMARY KEY (`receipt_item_id`),
  ADD KEY `receipt_id` (`receipt_id`),
  ADD KEY `po_item_id` (`po_item_id`);

--
-- Indexes for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `release_id` (`release_id`),
  ADD KEY `receipt_id` (`receipt_id`),
  ADD KEY `ti_type_id` (`ti_type_id`);

--
-- Indexes for table `low_stock_alerts`
--
ALTER TABLE `low_stock_alerts`
  ADD PRIMARY KEY (`alert_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`material_id`),
  ADD UNIQUE KEY `material_name` (`material_name`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `stock_level_id` (`stock_level_id`);

--
-- Indexes for table `material_categories`
--
ALTER TABLE `material_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `material_releases`
--
ALTER TABLE `material_releases`
  ADD PRIMARY KEY (`release_id`),
  ADD KEY `request_item_id` (`request_item_id`),
  ADD KEY `released_by` (`released_by`);

--
-- Indexes for table `material_requests`
--
ALTER TABLE `material_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `po_id` (`po_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `pm_id` (`pm_id`);

--
-- Indexes for table `project_managers`
--
ALTER TABLE `project_managers`
  ADD PRIMARY KEY (`pm_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`po_item_id`),
  ADD KEY `po_id` (`po_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `request_items`
--
ALTER TABLE `request_items`
  ADD PRIMARY KEY (`request_item_id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `r_status_id` (`r_status_id`);

--
-- Indexes for table `request_status`
--
ALTER TABLE `request_status`
  ADD PRIMARY KEY (`r_status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `stock_levels`
--
ALTER TABLE `stock_levels`
  ADD PRIMARY KEY (`stock_level_id`),
  ADD UNIQUE KEY `level_name` (`level_name`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`ti_type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `demand_forecasts`
--
ALTER TABLE `demand_forecasts`
  MODIFY `forecast_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `goods_receipts`
--
ALTER TABLE `goods_receipts`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `goods_receipt_items`
--
ALTER TABLE `goods_receipt_items`
  MODIFY `receipt_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `low_stock_alerts`
--
ALTER TABLE `low_stock_alerts`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `material_categories`
--
ALTER TABLE `material_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `material_releases`
--
ALTER TABLE `material_releases`
  MODIFY `release_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `material_requests`
--
ALTER TABLE `material_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `project_managers`
--
ALTER TABLE `project_managers`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `po_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `request_items`
--
ALTER TABLE `request_items`
  MODIFY `request_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `request_status`
--
ALTER TABLE `request_status`
  MODIFY `r_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `stock_levels`
--
ALTER TABLE `stock_levels`
  MODIFY `stock_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `ti_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `demand_forecasts`
--
ALTER TABLE `demand_forecasts`
  ADD CONSTRAINT `demand_forecasts_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `materials` (`material_id`);

--
-- Constraints for table `goods_receipts`
--
ALTER TABLE `goods_receipts`
  ADD CONSTRAINT `goods_receipts_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `purchase_orders` (`po_id`),
  ADD CONSTRAINT `goods_receipts_ibfk_2` FOREIGN KEY (`received_by`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `goods_receipt_items`
--
ALTER TABLE `goods_receipt_items`
  ADD CONSTRAINT `goods_receipt_items_ibfk_1` FOREIGN KEY (`receipt_id`) REFERENCES `goods_receipts` (`receipt_id`),
  ADD CONSTRAINT `goods_receipt_items_ibfk_2` FOREIGN KEY (`po_item_id`) REFERENCES `purchase_order_items` (`po_item_id`);

--
-- Constraints for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD CONSTRAINT `inventory_transactions_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `materials` (`material_id`),
  ADD CONSTRAINT `inventory_transactions_ibfk_2` FOREIGN KEY (`release_id`) REFERENCES `material_releases` (`release_id`),
  ADD CONSTRAINT `inventory_transactions_ibfk_3` FOREIGN KEY (`receipt_id`) REFERENCES `goods_receipts` (`receipt_id`),
  ADD CONSTRAINT `inventory_transactions_ibfk_4` FOREIGN KEY (`ti_type_id`) REFERENCES `transaction_types` (`ti_type_id`);

--
-- Constraints for table `low_stock_alerts`
--
ALTER TABLE `low_stock_alerts`
  ADD CONSTRAINT `low_stock_alerts_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `materials` (`material_id`);

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `material_categories` (`category_id`),
  ADD CONSTRAINT `materials_ibfk_2` FOREIGN KEY (`stock_level_id`) REFERENCES `stock_levels` (`stock_level_id`);

--
-- Constraints for table `material_releases`
--
ALTER TABLE `material_releases`
  ADD CONSTRAINT `material_releases_ibfk_1` FOREIGN KEY (`request_item_id`) REFERENCES `request_items` (`request_item_id`),
  ADD CONSTRAINT `material_releases_ibfk_2` FOREIGN KEY (`released_by`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `material_requests`
--
ALTER TABLE `material_requests`
  ADD CONSTRAINT `material_requests_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `material_requests_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `purchase_orders` (`po_id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`pm_id`) REFERENCES `project_managers` (`pm_id`);

--
-- Constraints for table `project_managers`
--
ALTER TABLE `project_managers`
  ADD CONSTRAINT `project_managers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `purchase_orders_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD CONSTRAINT `purchase_order_items_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `purchase_orders` (`po_id`),
  ADD CONSTRAINT `purchase_order_items_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `materials` (`material_id`);

--
-- Constraints for table `request_items`
--
ALTER TABLE `request_items`
  ADD CONSTRAINT `request_items_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `material_requests` (`request_id`),
  ADD CONSTRAINT `request_items_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `materials` (`material_id`),
  ADD CONSTRAINT `request_items_ibfk_3` FOREIGN KEY (`r_status_id`) REFERENCES `request_status` (`r_status_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
