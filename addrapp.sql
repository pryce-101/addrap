-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2017 at 09:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `addrapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `classification` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `code`, `classification`) VALUES
(1, 'Nore Codjoe', 'a123', 'admin'),
(2, 'Kojo Forson', 'a125', 'sub-admin');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `industry` varchar(100) NOT NULL,
  `business_category` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `location`, `industry`, `business_category`, `comment`) VALUES
(1, 'Michael Brown', 268090060, 'myemail@yahoo.com', 'Tema, Accra', 'Retail', 'Retail / Sales', 'First Meeting was successfuladd this to the comment'),
(2, 'David Davis', 268090060, 'myemail@yahoo.com', '', 'Retail', '', ''),
(3, 'Jones', 1213456789, 'test@gmail.com', 'AK', 'Oil', 'AK', 'First Meeting was successful and we were able to secure the contract'),
(4, 'Jones', 1213456789, 'test@gmail.com', 'AL', 'Oil', 'AL', 'hiiii\n\n>hiiii\n\n>hello');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `location` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `watermark` varchar(100) NOT NULL,
  `colorA` varchar(20) NOT NULL,
  `colorB` varchar(20) NOT NULL,
  `colorC` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `location`, `email`, `logo`, `details`, `watermark`, `colorA`, `colorB`, `colorC`) VALUES
(1, 'Test Organization', 'La-Paz, Accra', 'test@gmail.com', '', '', '', '', '', ''),
(2, 'Test Organization', 'La-Paz, Accra', 'test@gmail.com', '', '', '', '', '', ''),
(3, 'i2', 'Osu', 'test@gmail.com', '', 'test', '', '#c0c0c0', '#c0c0c0', '#0000ff');

-- --------------------------------------------------------

--
-- Table structure for table `todo_list`
--

CREATE TABLE `todo_list` (
  `id` int(11) NOT NULL,
  `from_user` varchar(100) NOT NULL,
  `user_code` varchar(15) NOT NULL,
  `reminding_time` date NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `classification` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `name`, `code`, `organization`, `classification`) VALUES
(1, 'Jones Brown', 'b123', 'A.M.A', 'user'),
(2, 'test', 't123', 'Barclays', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo_list`
--
ALTER TABLE `todo_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `todo_list`
--
ALTER TABLE `todo_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
