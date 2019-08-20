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
-- Database: `enterprise_distro`
--

-- --------------------------------------------------------

--
-- Table structure for table `distro_master`
--

CREATE TABLE `distro_master` (
  `distro_id` int(11) NOT NULL,
  `distro_url` text NOT NULL,
  `store_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `distro_transaction`
--

CREATE TABLE `distro_transaction` (
  `transaction_id` int(11) NOT NULL,
  `distro_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distro_master`
--
ALTER TABLE `distro_master`
  ADD PRIMARY KEY (`distro_id`);

--
-- Indexes for table `distro_transaction`
--
ALTER TABLE `distro_transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distro_master`
--
ALTER TABLE `distro_master`
  MODIFY `distro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distro_transaction`
--
ALTER TABLE `distro_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
