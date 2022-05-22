-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2022 at 07:52 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_no` int(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `message`, `user_no`, `time`) VALUES
(1, 'Trinette ErikssonDeposited1000', 29951288, '2022-05-13 18:56:36'),
(2, 'Trinette ErikssonWidtdraw100', 29951288, '2022-05-13 18:56:51'),
(3, 'Trinette Eriksson Deposited 1000', 29951288, '2022-05-13 18:57:48'),
(4, 'Trinette Eriksson Deposited 1000', 29951288, '2022-05-13 19:47:22'),
(5, 'Trinette Eriksson Deposited 1000', 29951288, '2022-05-13 19:47:25'),
(6, 'Trinette Eriksson Deposited 1000', 29951288, '2022-05-13 19:47:28'),
(7, 'Trinette Eriksson Deposited 3000', 29951288, '2022-05-13 19:47:31'),
(8, 'Trinette Eriksson Deposited 20000', 29951288, '2022-05-13 19:47:38'),
(9, 'Trinette Eriksson Deposited 1000', 29951288, '2022-05-13 19:47:42'),
(10, 'Trinette Eriksson Deposited 1000', 29951288, '2022-05-13 19:47:45'),
(11, 'Trinette Eriksson Deposited 1000', 29951288, '2022-05-13 19:47:48'),
(12, 'Trinette Eriksson Deposited 7', 29951288, '2022-05-13 19:47:55'),
(13, 'Jane Salcedo Deposited 100000', 29951131, '2022-05-13 19:49:49'),
(14, 'Jane Salcedo Deposited 100000000', 29951131, '2022-05-13 19:49:53'),
(15, 'Jane Salcedo Deposited 100000000', 29951131, '2022-05-13 19:49:55'),
(16, 'Jane Salcedo Deposited 9000000', 29951131, '2022-05-13 19:50:38'),
(17, 'Jane Salcedo Deposited 1', 29951131, '2022-05-13 19:50:40'),
(18, 'Jane Salcedo Deposited 90000000', 29951131, '2022-05-13 19:50:45'),
(19, 'Jane Salcedo Deposited 90000000', 29951131, '2022-05-13 19:50:45'),
(20, 'Jane Salcedo Deposited 3000000', 29951131, '2022-05-13 19:51:36'),
(21, 'Jane Salcedo Deposited 900000', 29951131, '2022-05-13 19:51:40'),
(22, 'Jane Salcedo Deposited 9999999', 29951131, '2022-05-13 19:51:44'),
(23, 'Jane Salcedo Deposited 999999999', 29951131, '2022-05-13 19:51:52'),
(24, 'Jane Salcedo Deposited 999999999', 29951131, '2022-05-13 19:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_no` int(255) NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `Pin` int(11) NOT NULL,
  `Balance` int(100) NOT NULL DEFAULT '0',
  `acc_limit` int(255) NOT NULL,
  `hold` int(255) NOT NULL DEFAULT '0',
  `admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_no`, `Full_Name`, `Pin`, `Balance`, `acc_limit`, `hold`, `admin`) VALUES
(1, 29951288, 'Trinette Eriksson', 124, 34007, 34000, 1, 0),
(2, 2991231, 'John_Doe', 151, 0, 90000000, 0, 1),
(3, 29951131, 'Jane Salcedo', 155, 1014799998, 90000000, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
