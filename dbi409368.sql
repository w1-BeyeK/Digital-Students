-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: studmysql01.fhict.local
-- Generation Time: Sep 19, 2018 at 05:24 PM
-- Server version: 5.7.13-log
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbi409368`
--

-- --------------------------------------------------------

--
-- Table structure for table `ds_users`
--

CREATE TABLE `ds_users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(75) NOT NULL,
  `password` varchar(150) NOT NULL,
  `last_login` date NOT NULL,
  `code` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ds_users`
--

INSERT INTO `ds_users` (`id`, `email`, `name`, `password`, `last_login`, `code`, `active`, `admin`, `date_created`, `date_modified`) VALUES
(1, 'kbeye1999@hotmail.com', 'Kevin Beye', '8B1E4688AF13AFC59C51DA7F0F506E8DEA467896E4101C6DB92D950A2FF3F6AF44123ACB66643C3C5B216C2B2AB2DB5C0D34A443B89670CA533F9F59F0606CBA', '2018-09-19', '2xu6lmcmgod6itly', 1, 1, '2018-09-19', '2018-09-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ds_users`
--
ALTER TABLE `ds_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ds_users`
--
ALTER TABLE `ds_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
