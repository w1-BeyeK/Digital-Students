-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2018 at 12:28 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitalstudents`
--

-- --------------------------------------------------------

--
-- Table structure for table `crm_customers`
--

CREATE TABLE `crm_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `country` varchar(75) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `city` varchar(75) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `mod_date` date NOT NULL,
  `mod_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_customer_contactperson`
--

CREATE TABLE `crm_customer_contactperson` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `companyid` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  `standard_sendmail` tinyint(1) NOT NULL,
  `mod_date` date NOT NULL,
  `mod_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ds_permission`
--

CREATE TABLE `ds_permission` (
  `id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `displayname` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ds_roles`
--

CREATE TABLE `ds_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `mod_date` date NOT NULL,
  `mod_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_roles`
--

INSERT INTO `ds_roles` (`id`, `name`, `isAdmin`, `mod_date`, `mod_userid`) VALUES
(1, 'Admin', 1, '2018-09-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ds_role_permission`
--

CREATE TABLE `ds_role_permission` (
  `roleid` int(11) NOT NULL,
  `permissionid` int(11) NOT NULL,
  `mod_date` date NOT NULL,
  `mod_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ds_users`
--

CREATE TABLE `ds_users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(75) NOT NULL,
  `password` varchar(200) NOT NULL,
  `last_login` date DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ds_users`
--

INSERT INTO `ds_users` (`id`, `email`, `name`, `password`, `last_login`, `code`, `active`, `admin`, `date_created`, `date_modified`) VALUES
(1, 'kbeye1999@hotmail.com', 'Kevin Beye', 'W+go+UKzsdArVsjDZyneF932Rce130gVnAThHPcrNtJJI/h/DdY5m83eyJeRlkjgZVOrnz7dskA7/pbJEU9pFRtJMPmSEoGJnZNH31/zzMOP81mwo23Wf1FUXl+l9i9WNgRW1Rs0Vu6C4kInBDnT2qkqqTS9EMa5Mrq/p/I4lVU=', '2018-09-19', '2xu6lmcmgod6itly', 1, 1, '2018-09-19', '2018-09-19'),
(2, 'test@test.test', 'test', 'rmdnNHEyolQzjCmMofxrwuqyn1857sjRs0XKtkz8GziUUdomf/3XRhYAyKSUnWjEYcKJmnUgbT/Zut0UfLyhDor+MK+IQbg341cT8w3t+onWlIyFPXvN80vkRyx/IrrfVj6QUrsUNjZBOLdJVYxii2GLv+AhM5htF7xTecfUyi0=', NULL, 'T1', 1, 1, NULL, NULL),
(3, 'test2@test.test', 'test2', 'rmdnNHEyolQzjCmMofxrwuqyn1857sjRs0XKtkz8GziUUdomf/3XRhYAyKSUnWjEYcKJmnUgbT/Zut0UfLyhDor+MK+IQbg341cT8w3t+onWlIyFPXvN80vkRyx/IrrfVj6QUrsUNjZBOLdJVYxii2GLv+AhM5htF7xTecfUyi0=', NULL, 'T2', 1, 1, NULL, NULL),
(4, 'test3@test.test', 'test3', 'rmdnNHEyolQzjCmMofxrwuqyn1857sjRs0XKtkz8GziUUdomf/3XRhYAyKSUnWjEYcKJmnUgbT/Zut0UfLyhDor+MK+IQbg341cT8w3t+onWlIyFPXvN80vkRyx/IrrfVj6QUrsUNjZBOLdJVYxii2GLv+AhM5htF7xTecfUyi0=', NULL, 'T3', 1, 1, NULL, NULL),
(5, 'test4@test.test', 'test4', 'rmdnNHEyolQzjCmMofxrwuqyn1857sjRs0XKtkz8GziUUdomf/3XRhYAyKSUnWjEYcKJmnUgbT/Zut0UfLyhDor+MK+IQbg341cT8w3t+onWlIyFPXvN80vkRyx/IrrfVj6QUrsUNjZBOLdJVYxii2GLv+AhM5htF7xTecfUyi0=', NULL, 'T4', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ds_user_roles`
--

CREATE TABLE `ds_user_roles` (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `mod_date` date NOT NULL,
  `mod_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ds_user_roles`
--

INSERT INTO `ds_user_roles` (`userid`, `roleid`, `mod_date`, `mod_userid`) VALUES
(1, 1, '2018-09-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sec_config`
--

CREATE TABLE `sec_config` (
  `company_name` varchar(100) NOT NULL,
  `token_lifetime` int(11) NOT NULL COMMENT 'Lifetime in hours'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sec_config`
--

INSERT INTO `sec_config` (`company_name`, `token_lifetime`) VALUES
('Digital Students', 168);

-- --------------------------------------------------------

--
-- Table structure for table `sec_tokens`
--

CREATE TABLE `sec_tokens` (
  `token` varchar(150) NOT NULL,
  `starttime` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sec_tokens`
--

INSERT INTO `sec_tokens` (`token`, `starttime`, `user_id`) VALUES
('7b47b27f6f2b5437ce878b98658b2705b558202af6e7670ae230d3d2f7ca41055d267f5b9b7cc46c64dd54bf2a18552680add4195a874d42c37d8857acd57c64', '2018-10-13 13:05:38', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crm_customers`
--
ALTER TABLE `crm_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customer_contactperson`
--
ALTER TABLE `crm_customer_contactperson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ds_permission`
--
ALTER TABLE `ds_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ds_roles`
--
ALTER TABLE `ds_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ds_role_permission`
--
ALTER TABLE `ds_role_permission`
  ADD PRIMARY KEY (`roleid`,`permissionid`);

--
-- Indexes for table `ds_users`
--
ALTER TABLE `ds_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ds_user_roles`
--
ALTER TABLE `ds_user_roles`
  ADD PRIMARY KEY (`userid`,`roleid`);

--
-- Indexes for table `sec_tokens`
--
ALTER TABLE `sec_tokens`
  ADD PRIMARY KEY (`token`,`starttime`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crm_customers`
--
ALTER TABLE `crm_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crm_customer_contactperson`
--
ALTER TABLE `crm_customer_contactperson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ds_permission`
--
ALTER TABLE `ds_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ds_roles`
--
ALTER TABLE `ds_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ds_users`
--
ALTER TABLE `ds_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
