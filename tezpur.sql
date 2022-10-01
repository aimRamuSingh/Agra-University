-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 06:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tezpur`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `USERNAME`, `PASSWORD`) VALUES
(1, '12345', '12345'),
(2, 'satyendra', 'satyendra'),
(3, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `DATE` date NOT NULL DEFAULT current_timestamp(),
  `NAME` varchar(50) DEFAULT NULL,
  `FATHERNAME` varchar(50) DEFAULT NULL,
  `MOTHERNAME` varchar(50) DEFAULT NULL,
  `DATEOFBIRTH` date DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `MOBILE` bigint(20) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `NATIONALITY` varchar(50) DEFAULT NULL,
  `COURSE` varchar(50) DEFAULT NULL,
  `QUALIFICATION` varchar(50) DEFAULT NULL,
  `ID` bigint(20) UNSIGNED NOT NULL,
  `DEGREE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`DATE`, `NAME`, `FATHERNAME`, `MOTHERNAME`, `DATEOFBIRTH`, `GENDER`, `MOBILE`, `ADDRESS`, `CITY`, `STATE`, `NATIONALITY`, `COURSE`, `QUALIFICATION`, `ID`, `DEGREE`) VALUES
('2021-06-01', 'राजकुमार', 'Ram Kumar Patel', 'RAMAWATI DEVI', '2021-06-09', 'Male', 8004568424, 'VILL GHAMAHAPUR POST GANGAPUR DIST VARANASI', 'Varanasi', 'Uttar Pradesh', 'INDIAN', 'BE/B.Tech', 'Intermediate', 8, 'PG'),
('2021-06-01', 'ऋषि', 'Ram Dev Ram', 'Rama Devi', '2020-10-21', 'Female', 8004568424, 'VILL GHAMAHAPUR POST GANGAPUR DIST VARANASI', 'Varanasi', 'Uttar Pradesh', 'INDIAN', 'BE/B.Tech', 'Below-High-School', 9, 'PG'),
('2021-06-01', 'ऋषि', 'Ram Dev Ram', 'Rama Devi', '2020-10-21', 'Female', 8004568424, 'VILL GHAMAHAPUR POST GANGAPUR DIST VARANASI', 'Varanasi', 'Uttar Pradesh', 'INDIAN', 'BE/B.Tech', 'Below-High-School', 10, 'PG'),
('2021-06-01', 'ROHIT KUMAR SINGH', 'SHYAM NARAYAN VERMA', 'RAMAWATI DEVI', '1999-08-03', 'Male', 8004568424, 'VILL GHAMAHAPUR POST GANGAPUR DIST VARANASI', 'Varanasi', 'Uttar Pradesh', 'India ', 'BPharma', 'Intermediate', 11, 'PG'),
('2021-06-01', 'Jai', 'Ram Dev Ram', 'Manorama Devi', '1999-05-15', 'Other', 8004568424, 'VILL GHAMAHAPUR POST GANGAPUR DIST VARANASI', 'Varanasi', 'Uttar Pradesh', 'INDIA', 'BE/B.Tech', 'Intermediate', 12, 'UG');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `DATE` date NOT NULL DEFAULT current_timestamp(),
  `NAME` varchar(50) DEFAULT NULL,
  `FATHERNAME` varchar(50) DEFAULT NULL,
  `MOTHERNAME` varchar(50) DEFAULT NULL,
  `MOBILE` bigint(20) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `COURSE` varchar(50) DEFAULT NULL,
  `DATEOFBIRTH` date DEFAULT NULL,
  `SNO` bigint(20) UNSIGNED NOT NULL,
  `DEGREE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`DATE`, `NAME`, `FATHERNAME`, `MOTHERNAME`, `MOBILE`, `ADDRESS`, `COURSE`, `DATEOFBIRTH`, `SNO`, `DEGREE`) VALUES
('2021-06-01', 'Suraj Kumar Patel', 'Ram Kumar Patel', 'Shushila Devi', 8112463607, 'Chandpur Varanasi', 'MCA', '1999-05-06', 13, 'UG'),
('2021-06-01', 'MOHIT KUMAR SINGH', 'SHYAM NARAYAN VERMA', 'RAMAWATI DEVI', 8004568424, 'VILL GHAMAHAPUR POST GANGAPUR DIST VARANASI', 'BE/B.Tech', '2004-04-04', 14, 'UG');

-- --------------------------------------------------------

--
-- Table structure for table `helpdesk`
--

CREATE TABLE `helpdesk` (
  `DATE` date NOT NULL DEFAULT current_timestamp(),
  `NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `MESSAGE` varchar(50) DEFAULT NULL,
  `ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helpdesk`
--

INSERT INTO `helpdesk` (`DATE`, `NAME`, `EMAIL`, `MESSAGE`, `ID`) VALUES
('2021-05-06', 'ROHIT', 'csm20054@tezu.ac.in', 'hello', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `helpdesk`
--
ALTER TABLE `helpdesk`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `SNO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `helpdesk`
--
ALTER TABLE `helpdesk`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
