-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 02:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_finmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorydetails`
--

CREATE TABLE `categorydetails` (
  `c_id` int(11) NOT NULL,
  `category` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorydetails`
--

INSERT INTO `categorydetails` (`c_id`, `category`, `user_id`) VALUES
(1, 'Food', 0),
(2, 'Transport', 0),
(3, 'Health', 0),
(4, 'Education', 0),
(5, 'Entertainment', 0),
(6, 'Shopping', 0),
(7, 'Clothing', 0),
(8, 'Tax', 0),
(9, 'Bills', 0),
(10, 'Salary', 0),
(11, 'Refunds', 0),
(12, 'Award', 0),
(21, 'Household', 10019);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `tr_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(45) NOT NULL,
  `income` varchar(45) DEFAULT NULL,
  `expense` varchar(45) DEFAULT NULL,
  `category` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`tr_no`, `date`, `description`, `income`, `expense`, `category`, `user_id`) VALUES
(1, '2023-11-25', 'beli baju', NULL, '1000000', 'Clothing', 10018),
(2, '2023-11-01', 'gaji bulanan', '10000000', NULL, 'Salary', 10018),
(3, '2023-11-25', 'Beli sandal', NULL, '50000', 'Health', 10018),
(4, '2023-11-25', 'lemburan', '1250000', NULL, 'Salary', 10018),
(5, '2023-11-27', 'beli jajan', NULL, '100000', 'Shopping', 10018),
(7, '2023-12-01', 'transport', NULL, '600000', 'Transport', 10018),
(8, '2023-12-01', 'sembako', NULL, '400000', 'Shopping', 10018),
(9, '2023-12-01', 'beli obat', NULL, '500000', 'Health', 10018),
(10, '2023-12-01', 'tagihan paylater', NULL, '300000', 'Bills', 10018),
(101, '2023-12-02', 'gaji bulan ini', '12000000', NULL, 'Salary', 10018),
(111, '2023-12-02', 'jkj', NULL, '1000000', 'Food', 10019),
(112, '2023-12-02', 'jkj', '10000000', NULL, 'Salary', 10019);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`) VALUES
(10018, 'azzandr', 'goes0000', 'Azzan Dwi Riski'),
(10019, 'ramangan', '123456', 'Rama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorydetails`
--
ALTER TABLE `categorydetails`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `category_UNIQUE` (`category`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`tr_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `user_id_UNIQUE` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorydetails`
--
ALTER TABLE `categorydetails`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `tr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10020;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
