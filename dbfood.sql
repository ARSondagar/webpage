-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 03:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `cinfo`
--

CREATE TABLE `cinfo` (
  `cid` int(5) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cinfo`
--

INSERT INTO `cinfo` (`cid`, `Name`, `Email`, `msg`) VALUES
(0, 'hasmita baraiya', 'hasmitabaraiya97@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `tbresv`
--

CREATE TABLE `tbresv` (
  `rid` int(5) NOT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Person` varchar(10) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time(6) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbresv`
--

INSERT INTO `tbresv` (`rid`, `Name`, `Email`, `Person`, `Phone`, `Date`, `Time`, `note`) VALUES
(0, 'hasmita baraiya', 'hasmitabaraiya97@gmail.com', '5', '5063524102', '2020-08-06', '01:18:20.000000', 'hii');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cinfo`
--
ALTER TABLE `cinfo`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbresv`
--
ALTER TABLE `tbresv`
  ADD PRIMARY KEY (`rid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
