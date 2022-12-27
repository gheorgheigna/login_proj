-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 27, 2022 at 10:34 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wwiiwar`
--

-- --------------------------------------------------------

--
-- Table structure for table `war`
--

CREATE TABLE `war` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `passwordd` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `firstname` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type_of_user` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `war`
--

INSERT INTO `war` (`id`, `username`, `passwordd`, `firstname`, `lastname`, `email`, `reg_date`, `type_of_user`) VALUES
(1, 'johny', 'johny', 'John', 'Doe', 'john@example.com', '2022-12-09 16:46:57', 'user'),
(15, 'gh', 'gh', 'ghita', 'igna', 'ighituc@gmail.com', '2022-12-09 17:05:34', 'admin'),
(16, 'lidi', 'lidi', 'lidia', 'ihna', 'lidia.symona@gmail.com', '2022-12-09 17:12:04', 'user'),
(17, 'lili.89', 'lidiutza', 'lili', 'pop', 'ana.seghe@gmail.com', '2022-12-12 14:19:59', 'user'),
(18, 'tolo', 'tolo', 'toloata', 'tolotar', 'toloata.tolotar@gmail.com', '2022-12-12 14:43:37', 'user'),
(20, 'steli', 'steli', 'stelian', 'igna', 'stelianigna@gmail.com', '2022-12-27 10:10:52', 'user'),
(21, 'sisi', 'simi', 'serafima', 'sima', 'skimin@gmail.com', '2022-12-27 10:13:07', 'user'),
(22, 'sofi', 'sofi', 'sofia', 'maria', 'sofia.maria@yahoo.com', '2022-12-27 10:16:02', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `war`
--
ALTER TABLE `war`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `war`
--
ALTER TABLE `war`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
