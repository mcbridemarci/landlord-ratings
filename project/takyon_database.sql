-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2017 at 08:19 PM
-- Server version: 10.1.26-MariaDB-1~jessie
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apollo_4_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `coordinatePair` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postNumber` int(16) DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(8) DEFAULT NULL,
  `postDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `postNumber` int(16) NOT NULL,
  `email` varchar(320) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `leaseLength` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `furnished` tinyint(1) NOT NULL,
  `leaseType` int(11) NOT NULL,
  `lateFee` int(11) NOT NULL,
  `lateDays` int(11) NOT NULL,
  `paymentMethods` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `depositReturned` int(11) NOT NULL,
  `receiptGiven` tinyint(1) NOT NULL,
  `utilities` int(11) NOT NULL,
  `appliances` int(11) NOT NULL,
  `cooling` int(11) NOT NULL,
  `heating` tinyint(1) NOT NULL,
  `parking` int(11) NOT NULL,
  `smoking` tinyint(1) NOT NULL,
  `petsAllowed` tinyint(1) NOT NULL,
  `petDeposit` int(11) NOT NULL,
  `petWeight` int(11) NOT NULL,
  `petSize` int(11) NOT NULL,
  `lawnMaintenance` tinyint(1) NOT NULL,
  `responseTime` int(11) NOT NULL,
  `maintenanceTime` int(11) NOT NULL,
  `maintenanceQuality` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overallThoughts` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overallRating` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
 ADD PRIMARY KEY (`coordinatePair`), ADD UNIQUE KEY `postNumber` (`postNumber`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
 ADD PRIMARY KEY (`postNumber`), ADD UNIQUE KEY `postNumber` (`postNumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
