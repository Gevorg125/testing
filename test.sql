-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2019 at 03:33 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`) VALUES
(1, 'sltsnl0eBj', 'eXAg0gIOWS', 'NSM67ZD33P@gmail.com', 'kJDn7FVWsN'),
(2, 'WTXPGL45SO', 'GHPoAXl8aw', '8LbBfOxH1P@gmail.com', 'cqw2uy5Ozm'),
(3, 'hCD9LuDd7D', '1DjKYVvS0E', 'Tx6307Nn7P@gmail.com', 'auaUEZl8F3'),
(4, 'mLNjpmNFj6', '8oP1x1bGyG', 'BirIm3QkO2@gmail.com', 'm5PIYDqMJz'),
(5, 'ZNca8QG0Up', 'XfWjOlumX4', 'KBrSQWHe7R@gmail.com', 'QmJooE9rV1'),
(6, 'SFJei7kTuR', '6ZPcgWNpCc', '9S21Q05Vde@gmail.com', 'kKEFhGh37K'),
(7, 'mqZUoSL6e0', '4fCMm7xxbg', 'kJYIZ5cbf1@gmail.com', 'eOexMml5rM'),
(8, 'btWgpEqiMO', 'SnsidLE8pg', 'blB1HfHqCV@gmail.com', 'xvllLo1rD3'),
(9, 'klpGUcbklL', '6H4BOaJ6EO', '7t4NLKaHJJ@gmail.com', 'MPoVvvYklG'),
(10, 'kzU2bg0YUv', 'ayktle14aW', 'DSkv0aRtts@gmail.com', 'fGcYDEW9rc'),
(11, 'C7ZQS1XF74', 'iioXXW4OHg', '5ZQbU7z7nK@gmail.com', 'vqlQnkIG9d'),
(12, '5Z6m3fhUBc', 'qiMFCVkYE6', 'MrgDIVr48n@gmail.com', 'pMOzWcCdWO'),
(13, '1Xs0r23qwg', '6klFW0YEdN', 'I2ER0ISJ19@gmail.com', 'P6xZllvmPa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
