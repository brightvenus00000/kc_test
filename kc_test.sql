-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 10:31 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kc_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_users`
--

CREATE TABLE `api_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_users`
--

INSERT INTO `api_users` (`id`, `username`, `password`) VALUES
(1, 'test', 'NfEQfsyB8EwM9II7tkLQUw=='),
(2, 'test1', 'NfEQfsyB8EwM9II7tkLQUw=='),
(3, 'test2', 'NfEQfsyB8EwM9II7tkLQUw=='),
(4, 'test3', 'NfEQfsyB8EwM9II7tkLQUw=='),
(5, 'test4', 'NfEQfsyB8EwM9II7tkLQUw=='),
(6, 'test5', 'NfEQfsyB8EwM9II7tkLQUw==');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `description`, `group_name`) VALUES
(1, 'David Smith', 'Test12334', 'Group1'),
(2, 'Terry Srini', 'Test2333', 'Group1'),
(3, 'Rob Shah', 'Test2343ddd', 'Group1'),
(4, 'Rob Shah', 'Test2343ddd', 'Group1'),
(5, 'David Smith', 'Test2343ddd', 'Group1'),
(6, 'David Smith', 'Test2343ddd', 'Group2'),
(7, 'David Smith', 'Test2111111', 'Group2'),
(8, 'David Smith', 'Test2343ddd', 'Group2'),
(9, 'Rob Shah', 'Test2343ddd', 'Group2'),
(10, 'Rob Shah', 'Testsdfdfd', 'Group2'),
(11, 'Rob Shah', 'Test2343dd', 'Group3'),
(12, 'Terry Srini', 'Test2343dd', 'Group3'),
(13, 'Terry Srini', 'Testdddd11', 'Group3'),
(14, 'Terry Srini', 'Test2343ddd', 'Group3'),
(15, 'Terry Srini', 'Test2343ddd', 'Group3'),
(16, 'Terry Srini', 'Test2343ddd', 'Group4'),
(17, 'Terry Srini', 'Test2343ddd', 'Group4'),
(18, 'Terry Srini', 'Test2343ddd', 'Group4'),
(19, 'Terry Srini', 'Test2343ddd', 'Group4'),
(20, 'Terry Srini', 'Test2444f4d', 'Group4'),
(21, 'Terry Srini', 'Test2343ddd', 'Group5'),
(22, 'Rob Shah', 'Test2343ddd', 'Group5'),
(23, 'Rob Shah', 'Test2343ddd', 'Group5'),
(24, 'Stepan Smith', 'Test2343ddd', 'Group5'),
(25, 'Stepan Smith', 'Test2343ddd', 'Group5'),
(26, 'Stepan Smith', 'Test2343ddd', 'Group6'),
(27, 'Stepan Smith', 'Test2343ddd', 'Group6'),
(28, 'Stepan Smith', 'Test2343ddd', 'Group6'),
(29, 'Stepan Smith', 'Test2343ddd', 'Group6'),
(30, 'Rob Shah', 'Test2343ddd', 'Group6'),
(31, 'Rob Shah', 'Test2343ddd', 'Group7'),
(32, 'Rob Shah', 'Test2343ddd', 'Group7'),
(33, 'Rob Shah', 'Test2343ddd', 'Group7'),
(34, 'Rob Shah', 'Test2343ddd', 'Group7'),
(35, 'Rob Shah', 'Test2343ddd', 'Group7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_users`
--
ALTER TABLE `api_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_users`
--
ALTER TABLE `api_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
