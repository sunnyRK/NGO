-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2018 at 09:06 AM
-- Server version: 5.6.26-log
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_request`
--

CREATE TABLE IF NOT EXISTS `event_request` (
  `name` varchar(50) NOT NULL,
  `contactno` int(15) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `eventcategory` varchar(50) NOT NULL,
  `eventinfo` varchar(700) NOT NULL,
  `volunterscount` int(10) NOT NULL,
  `eventdatefrom` int(50) NOT NULL,
  `eventdateto` int(50) NOT NULL,
  `extrareq` varchar(700) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `pin` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `aadhar` varchar(30) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `AreaOfIntrest` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
