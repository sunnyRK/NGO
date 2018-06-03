-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2018 at 02:30 PM
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
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contactno` int(15) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `eventcategory` varchar(50) NOT NULL,
  `eventinfo` varchar(700) NOT NULL,
  `volunterscount` int(10) NOT NULL,
  `eventdatefrom` varchar(50) NOT NULL,
  `eventdateto` varchar(50) NOT NULL,
  `eventtimefrom` varchar(20) NOT NULL,
  `eventtimeto` varchar(20) NOT NULL,
  `extrareq` varchar(700) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_request`
--

INSERT INTO `event_request` (`id`, `name`, `contactno`, `emailid`, `address`, `eventcategory`, `eventinfo`, `volunterscount`, `eventdatefrom`, `eventdateto`, `eventtimefrom`, `eventtimeto`, `extrareq`) VALUES
(3, 'dhrumit', 2147483647, 'dhrumit8459', 'ndsjnja', 'dshvbdsh ', 'dbvhfvbfdj', 4, '7/9/2018', '10/9/2018', '1:00 AM', '2:00 PM', 'vndjd');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_events`
--

CREATE TABLE IF NOT EXISTS `upcoming_events` (
  `id` int(11) NOT NULL,
  `eventid` varchar(20) NOT NULL,
  `eventtitle` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upcoming_events`
--

INSERT INTO `upcoming_events` (`id`, `eventid`, `eventtitle`) VALUES
(2, 'e2o1', 'Educational Event'),
(3, 'D321', 'Marathon');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `contact`, `email`, `address`, `pin`, `city`, `state`, `country`, `aadhar`, `image`, `AreaOfIntrest`) VALUES
(1, '', '', '', 0, '', '', 0, '', '', '', '', 'pavan.png', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_request`
--
ALTER TABLE `event_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_events`
--
ALTER TABLE `upcoming_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_request`
--
ALTER TABLE `event_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `upcoming_events`
--
ALTER TABLE `upcoming_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
