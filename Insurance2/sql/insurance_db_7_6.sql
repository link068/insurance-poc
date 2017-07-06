-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2017 at 06:53 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `anthorities`
--

CREATE TABLE `anthorities` (
  `anthority` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anthorities`
--

INSERT INTO `anthorities` (`anthority`, `username`) VALUES
('ROLE_CUSTOMER', 'carlosp@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `applicationId` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dateApplied` datetime DEFAULT NULL,
  `dateAssigned` datetime DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fieldsFilledIn` double NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `assignedEmployee_email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`applicationId`, `address`, `dateApplied`, `dateAssigned`, `dob`, `education`, `email`, `fieldsFilledIn`, `mobile`, `name`, `occupation`, `policy`, `salary`, `ssn`, `status`, `assignedEmployee_email`) VALUES
(3, '8823 broeas eay', '2017-07-05 00:00:00', NULL, NULL, NULL, 'peace@gmail.com', 0, '2908813367', 'peace', NULL, NULL, 0, '323115553', 'new', NULL),
(4, '8823 broeas eay', '2017-07-05 00:00:00', NULL, NULL, NULL, 'carlosp@gmail.com', 0, '2908813367', 'peace', NULL, NULL, 0, '323115553', 'new', NULL),
(5, '8823 broeas eay', '2017-07-05 00:00:00', NULL, NULL, NULL, 'peace@gmail.com', 0, '2908813367', 'peace', NULL, NULL, 0, '323115553', 'finalized', NULL),
(6, '8823 broeas eay', '2017-07-05 00:00:00', NULL, NULL, NULL, 'peace@gmail.com', 0, '2908813367', 'peace', NULL, NULL, 0, '323115553', 'finalized', NULL),
(7, '8823 broeas eay', '2017-07-05 00:00:00', NULL, NULL, NULL, 'carlosp@gmail.com', 0, '2908813367', 'peace', NULL, 'Car', 0, '323115553', 'accepted', NULL),
(8, '8823 broeas eay', '2017-07-05 00:00:00', NULL, NULL, NULL, 'peace@gmail.com', 0, '2908813367', 'peace', NULL, NULL, 0, '323115553', 'accepted', NULL),
(9, '8823 broeas eay', '2017-07-05 00:00:00', NULL, NULL, NULL, 'peace@gmail.com', 0, '2908813367', 'peace', NULL, NULL, 0, '323115553', 'rejected', NULL),
(10, '8823 broeas eay', '2017-07-05 00:00:00', NULL, NULL, NULL, 'peace@gmail.com', 0, '2908813367', 'peace', NULL, NULL, 0, '323115553', 'rejected', NULL),
(12, '8823 broeas eay', '2017-07-05 00:00:00', '2017-07-05 00:00:00', NULL, NULL, 'carlosp@gmail.com', 0, '2908813367', 'peace', NULL, 'Home', 0, '323115553', 'pending', 'carl@gmail.com'),
(1, '123 Fake St.', NULL, NULL, '1990-12-11 16:00:00', 'Edu', 'carlos@gmail.com', 0, '12312341', 'Carlos', 'Check', NULL, 12.12, '1234', 'new', NULL),
(2, '123 Fake Dr.', NULL, NULL, '1990-12-11 16:00:00', 'Check', 'carlosl@gmail.com', 0, '12312341234', 'Carlos Pereira', 'Check', NULL, 12.12, '12345', 'new', NULL),
(13, '123 Fake St.', NULL, NULL, '1990-12-11 16:00:00', 'Check', 'carlos_p@gmail.com', 0, '12345', 'asdfas', 'Occu', NULL, 12.12, '12345', 'new', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_tbl`
--

CREATE TABLE `application_tbl` (
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `ssn` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `ssn` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`address`, `dob`, `education`, `mobile`, `name`, `occupation`, `salary`, `ssn`, `username`, `email`) VALUES
('123 Fake St.', '1990-12-11', 'Check', '1231231234', 'Carlos', 'Check', 12.12, 12, 'carlosp@gmail.com', 'carlosp@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `enabled`, `password`, `email`, `name`, `role`) VALUES
('carlosp@gmail.com', b'1', '$2a$10$ZT8iOt4y1B6KTBGl888S8Oha.p9u0eXL5volg1/zuvQ2Q5QJz6o12', '', NULL, NULL),
('carl@gmail.com', b'1', '$2a$04$kAOFuXeraKP.7tElJQ0J6eAGbTzviy5n5QUgYYBz7LVxWXnPpT1qm', 'carl@gmail.com', 'Carl', 'third party employee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anthorities`
--
ALTER TABLE `anthorities`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`applicationId`),
  ADD KEY `FK28p589co22xtxbc6jp127qab7` (`assignedEmployee_email`);

--
-- Indexes for table `application_tbl`
--
ALTER TABLE `application_tbl`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
