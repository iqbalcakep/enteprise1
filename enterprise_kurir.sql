-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 20, 2019 at 10:23 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enterprise_kurir`
--

-- --------------------------------------------------------

--
-- Table structure for table `kurir_master`
--

CREATE TABLE `kurir_master` (
  `kurir_id` int(11) NOT NULL,
  `kurir_service` enum('cepat','lambat','biasa') NOT NULL,
  `kurir_description` text NOT NULL,
  `kurir_price` int(11) NOT NULL,
  `kurir_mode` enum('motor','mobil') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kurir_order`
--

CREATE TABLE `kurir_order` (
  `order_id` varchar(50) NOT NULL,
  `kurir_id` int(11) NOT NULL,
  `store_name` varchar(50) NOT NULL,
  `location_address` text NOT NULL,
  `order_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kurir_master`
--
ALTER TABLE `kurir_master`
  ADD PRIMARY KEY (`kurir_id`);

--
-- Indexes for table `kurir_order`
--
ALTER TABLE `kurir_order`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kurir_master`
--
ALTER TABLE `kurir_master`
  MODIFY `kurir_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
