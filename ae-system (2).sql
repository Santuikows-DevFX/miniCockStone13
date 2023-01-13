-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 04:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ae-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `canned_products`
--

CREATE TABLE `canned_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `canned_products`
--

INSERT INTO `canned_products` (`generic_product`) VALUES
('SARDINES'),
('MEAT LOAF'),
('TUNA'),
('SAUSAGE'),
('CORNBEEF');

-- --------------------------------------------------------

--
-- Table structure for table `container_products`
--

CREATE TABLE `container_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `container_products`
--

INSERT INTO `container_products` (`generic_product`) VALUES
('BOX'),
('PLASTICWARE'),
('BOTTLES'),
('VASE'),
('JARS');

-- --------------------------------------------------------

--
-- Table structure for table `craft_products`
--

CREATE TABLE `craft_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `craft_products`
--

INSERT INTO `craft_products` (`generic_product`) VALUES
('TAPE'),
('SCISSORS'),
('BONDPAPER'),
('FOLDER'),
('GLUE');

-- --------------------------------------------------------

--
-- Table structure for table `essentials_products`
--

CREATE TABLE `essentials_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `essentials_products`
--

INSERT INTO `essentials_products` (`generic_product`) VALUES
('MASKS'),
('SANITIZER'),
('GLOVES'),
('RAGS'),
('TISSUE');

-- --------------------------------------------------------

--
-- Table structure for table `expired_products`
--

CREATE TABLE `expired_products` (
  `ref_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frozen_products`
--

CREATE TABLE `frozen_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `frozen_products`
--

INSERT INTO `frozen_products` (`generic_product`) VALUES
('BACON'),
('CHICKEN'),
('HAM'),
('HOTDOG'),
('TOCCINO');

-- --------------------------------------------------------

--
-- Table structure for table `liquor_products`
--

CREATE TABLE `liquor_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `liquor_products`
--

INSERT INTO `liquor_products` (`generic_product`) VALUES
('TEQUILLA'),
('RUM'),
('WHISKEY'),
('BEER'),
('WINE');

-- --------------------------------------------------------

--
-- Table structure for table `non_exp_category`
--

CREATE TABLE `non_exp_category` (
  `id` int(255) NOT NULL,
  `no_expCategs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `non_exp_category`
--

INSERT INTO `non_exp_category` (`id`, `no_expCategs`) VALUES
(1, 'UTENSIL'),
(2, 'UTENSILS'),
(3, 'LIQUOR'),
(4, 'PDR CONDI'),
(5, 'ESSENTIALS'),
(6, 'ESSENTIAL'),
(7, 'LIQUORS'),
(8, 'CRAFTS'),
(9, 'CRAFT'),
(10, 'CONTAINER'),
(11, 'CONTAINERS'),
(12, 'TOY'),
(13, 'TOYS');

-- --------------------------------------------------------

--
-- Table structure for table `notification_count`
--

CREATE TABLE `notification_count` (
  `notif_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_count`
--

INSERT INTO `notification_count` (`notif_admin`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `powder_condiments_products`
--

CREATE TABLE `powder_condiments_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `powder_condiments_products`
--

INSERT INTO `powder_condiments_products` (`generic_product`) VALUES
('MSG'),
('PAPRIKA'),
('PEPPER'),
('SUGAR'),
('SALT');

-- --------------------------------------------------------

--
-- Table structure for table `productadd_logs`
--

CREATE TABLE `productadd_logs` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `date_added` date NOT NULL,
  `date_quantity_modifed` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productadd_logs`
--

INSERT INTO `productadd_logs` (`product_id`, `product_name`, `date_added`, `date_quantity_modifed`) VALUES
(20230, 'HOTDOG', '2023-01-11', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `product_categ` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`product_categ`) VALUES
('FROZEN'),
('CANNED'),
('SNACKS'),
('UTENSIL'),
('LIQUOR'),
('PDR CONDI'),
('ESSENTIAL'),
('CRAFT'),
('CONTAINER'),
('TOYS');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ref_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `date_today` date NOT NULL,
  `product_exp` varchar(255) NOT NULL,
  `days_left` bigint(255) NOT NULL,
  `product_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ref_id`, `product_id`, `category`, `product_name`, `product_brand`, `product_quantity`, `date_today`, `product_exp`, `days_left`, `product_status`) VALUES
(14, '2023014', 'CANNED', 'SAUSAGE', 'VIENNA', 50, '2023-01-13', '2023-12-15', 336, 'IN STOCK'),
(15, '2023015', 'UTENSIL', 'SPORK', 'FORKY', 100, '2023-01-13', '', 0, 'IN STOCK'),
(16, '2023016', 'FROZEN', 'CHICKEN', 'CHIKY', 45, '2023-01-13', '2023-8-21', 220, 'IN STOCK'),
(17, '2023017', 'CONTAINER', 'BOX', 'DURABOX', 90, '2023-01-13', '', 0, 'IN STOCK'),
(18, '2023018', 'PDR CONDI', 'PAPRIKA', 'MCCORNICK', 10, '2023-01-13', '', 0, 'IN STOCK'),
(20, '2023020', 'FROZEN', 'HAM', 'UMSIM', 10, '2023-01-13', '2023-01-13', 1, 'IN STOCK');

-- --------------------------------------------------------

--
-- Table structure for table `product_statistics`
--

CREATE TABLE `product_statistics` (
  `ref_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_sold` int(255) NOT NULL,
  `product_exp_qnt` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_statistics`
--

INSERT INTO `product_statistics` (`ref_id`, `product_id`, `product_name`, `product_brand`, `product_sold`, `product_exp_qnt`) VALUES
(48, '2023016', 'CHICKEN', 'CHIKY', 0, 150),
(49, '2023014', 'SAUSAGE', 'VIENNA', 50, 495),
(50, '2023015', 'SPORK', 'FORKY', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `snacks_products`
--

CREATE TABLE `snacks_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `snacks_products`
--

INSERT INTO `snacks_products` (`generic_product`) VALUES
('CHIPS'),
('CEREAL'),
('BISCUITS'),
('BREAD'),
('CANDY');

-- --------------------------------------------------------

--
-- Table structure for table `toys_products`
--

CREATE TABLE `toys_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toys_products`
--

INSERT INTO `toys_products` (`generic_product`) VALUES
('ANIMALS'),
('ARMY'),
('PLUSHIES'),
('DOLL'),
('CAR');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `user_access_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_role`, `user_access_code`) VALUES
(1, 'admin', 'admin123'),
(2, 'staff', 'staff123');

-- --------------------------------------------------------

--
-- Table structure for table `utensil_products`
--

CREATE TABLE `utensil_products` (
  `generic_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utensil_products`
--

INSERT INTO `utensil_products` (`generic_product`) VALUES
('FORK'),
('SPOON'),
('KNIFE'),
('SPORK'),
('PLATES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expired_products`
--
ALTER TABLE `expired_products`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `non_exp_category`
--
ALTER TABLE `non_exp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productadd_logs`
--
ALTER TABLE `productadd_logs`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `product_statistics`
--
ALTER TABLE `product_statistics`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expired_products`
--
ALTER TABLE `expired_products`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `non_exp_category`
--
ALTER TABLE `non_exp_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_statistics`
--
ALTER TABLE `product_statistics`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
