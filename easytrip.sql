-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2016 at 01:58 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `easytrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE IF NOT EXISTS `price` (
`No.` int(15) NOT NULL,
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `class` int(5) NOT NULL,
  `type` int(5) NOT NULL,
  `Price` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`No.`, `source`, `dest`, `class`, `type`, `Price`) VALUES
(1, 'Thane', 'Nerul', 2, 0, 15),
(2, 'Thane', 'Airoli', 2, 1, 5),
(3, 'Thane', 'Rabale', 2, 1, 5),
(4, 'Thane', 'Ghansoli', 2, 1, 10),
(5, 'Thane', 'Koparkhairne', 2, 1, 10),
(6, 'Thane', 'Turbhe', 2, 1, 15),
(7, 'Thane', 'Juinagar', 2, 1, 15),
(8, 'Thane', 'Rabale', 1, 1, 55),
(9, 'Thane', 'Ghansoli', 1, 1, 75),
(10, 'Thane', 'Koparkhairne', 1, 1, 90),
(11, 'Thane', 'Turbhe', 1, 1, 110),
(12, 'Thane', 'Juinagar', 1, 1, 125),
(13, 'Thane', 'Nerul', 1, 1, 150),
(14, 'Thane', 'Airoli', 1, 1, 55),
(15, 'Airoli', 'Thane', 2, 1, 5),
(16, 'Airoli', 'Rabale', 2, 1, 5),
(17, 'Airoli', 'Ghansoli', 2, 1, 5),
(18, 'Airoli', 'Koparkhairne', 2, 1, 5),
(19, 'Airoli', 'Turbhe', 2, 1, 5),
(20, 'Airoli', 'Juinagar', 2, 1, 10),
(21, 'Airoli', 'Nerul', 2, 1, 10),
(22, 'Airoli', 'Thane', 1, 1, 55),
(23, 'Airoli', 'Rabale', 1, 1, 50),
(24, 'Airoli', 'Ghansoli', 1, 1, 50),
(25, 'Airoli', 'Koparkhairne', 1, 1, 50),
(26, 'Airoli', 'Turbhe', 1, 1, 50),
(27, 'Airoli', 'Juinagar', 1, 1, 75),
(28, 'Airoli', 'Nerul', 1, 1, 75),
(29, 'Rabale', 'Thane', 2, 1, 5),
(30, 'Rabale', 'Airoli', 2, 1, 5),
(31, 'Rabale', 'Ghansoli', 2, 1, 5),
(32, 'Rabale', 'Koparkhairne', 2, 1, 5),
(33, 'Rabale', 'Turbhe', 2, 1, 5),
(34, 'Rabale', 'Juinagar', 2, 1, 10),
(35, 'Rabale', 'Nerul', 2, 1, 10),
(36, 'Rabale', 'Thane', 1, 1, 55),
(37, 'Rabale', 'Airoli', 1, 1, 50),
(38, 'Rabale', 'Ghansoli', 1, 1, 50),
(39, 'Rabale', 'Koparkhairne', 1, 1, 50),
(40, 'Rabale', 'Turbhe', 1, 1, 50),
(41, 'Rabale', 'Juinagar', 1, 1, 50),
(42, 'Rabale', 'Nerul', 1, 1, 75),
(43, 'Ghansoli', 'Thane', 2, 1, 15),
(44, 'Ghansoli', 'Airoli', 2, 1, 5),
(45, 'Ghansoli', 'Rabale', 2, 1, 5),
(46, 'Ghansoli', 'Koparkhairne', 2, 1, 5),
(47, 'Ghansoli', 'Turbhe', 2, 1, 5),
(48, 'Ghansoli', 'Juinagar', 2, 1, 10),
(49, 'Ghansoli', 'Nerul', 2, 1, 10),
(50, 'Ghansoli', 'Thane', 1, 1, 75),
(51, 'Ghansoli', 'Airoli', 1, 1, 50),
(52, 'Ghansoli', 'Rabale', 1, 1, 50),
(53, 'Ghansoli', 'Koparkhairne', 1, 1, 50),
(54, 'Ghansoli', 'Turbhe', 1, 1, 50),
(55, 'Ghansoli', 'Juinagar', 1, 1, 50),
(56, 'Ghansoli', 'Nerul', 1, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
`T_No.` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Class` int(2) NOT NULL,
  `NoOfpass` int(11) NOT NULL,
  `card_no` int(25) NOT NULL,
  `expmonth` int(2) NOT NULL,
  `expyear` int(2) NOT NULL,
  `cvv` int(3) NOT NULL,
  `pin` int(4) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amt` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`T_No.`, `email`, `source`, `dest`, `Name`, `Class`, `NoOfpass`, `card_no`, `expmonth`, `expyear`, `cvv`, `pin`, `Timestamp`, `Amt`) VALUES
(16, 'rahul@gmail.com', 'Thane', 'Ghansoli', '2', 0, 2, 7879, 0, 0, 0, 0, '2016-10-09 11:53:31', 40),
(17, 'rahul@gmail.com', 'Airoli', 'Thane', '1', 0, 1, 0, 0, 0, 0, 0, '2016-10-09 11:55:03', 220);

-- --------------------------------------------------------

--
-- Table structure for table `userdatabase`
--

CREATE TABLE IF NOT EXISTS `userdatabase` (
`UserID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `Joined_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdatabase`
--

INSERT INTO `userdatabase` (`UserID`, `Name`, `Email`, `Gender`, `password`, `DoB`, `Joined_on`) VALUES
(15, 'Rahul b', 'rahul@gmail.com', 'M', '1234', '1996-09-19', '2016-10-09 11:51:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `price`
--
ALTER TABLE `price`
 ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
 ADD PRIMARY KEY (`T_No.`);

--
-- Indexes for table `userdatabase`
--
ALTER TABLE `userdatabase`
 ADD PRIMARY KEY (`UserID`), ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
MODIFY `No.` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
MODIFY `T_No.` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `userdatabase`
--
ALTER TABLE `userdatabase`
MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
