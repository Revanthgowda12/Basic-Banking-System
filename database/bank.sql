-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2021 at 08:43 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `email`, `balance`) VALUES
(1, 'Revanth', 'revanthk@gmail.com', 158370),
(2, 'Prajwal', 'kvp@gmail.com', 6800),
(3, 'Sanjay', 'sanjay@gmail.com', 47500),
(4, 'Shivu', 'shivu@gmail.com', 299000),
(5, 'Sahana', 'sahana@gmail.com', 290000),
(6, 'Sandesh', 'sandyyy@gmail.com', 9000),
(7, 'Darshan', 'Darshanshah@gmail.com', 76750),
(8, 'Akshay', 'Akshay@gmail.com', 13600),
(9, 'Ajay', 'ajay@gmail.com', 293000),
(10, 'Keerthi', 'keerthi@gmail.com', 89730);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `his_id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`his_id`, `sender`, `reciever`, `amount`) VALUES
(1, 'Keval', 'Harsh', 400),
(2, 'Sandesh', 'Jaladhi', 1400),
(3, 'Sarda', 'Keval', 10000),
(4, 'Pratik', 'Darshan', 1050),
(5, 'Janvi', 'Omkar', 3000),
(6, 'Harsh', 'Sandesh', 1000),
(7, 'Keval', 'Darshan', 15000),
(8, 'Sarda', 'Jaladhi', 600),
(9, 'Harsh', 'Janvi', 100),
(10, 'Keerthi', 'Revanth', 120),
(11, 'Revanth', 'Revanth', 3),
(12, 'Keerthi', 'Revanth', 150),
(13, 'Prajwal', 'Revanth', 3000),
(14, 'Sahana', 'Revanth', 9000),
(15, 'Prajwal', 'Revanth', 100),
(16, 'Akshay', 'Sanjay', 1500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`his_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
