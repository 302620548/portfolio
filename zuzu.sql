-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 01:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zuzu`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `lname`, `email`, `adress`, `zipcode`) VALUES
(68, 'Solo', 'ikashdiuyh', 'kashdkjahk', 'khkajshdkahk', 'kasjhdkja'),
(69, 'Jasen', 'Möller', 'Gleyveon@gmail.com', 'YourMomBasement', '2628GW'),
(70, 'Daniel', 'Möller', 'Gleyveon@gmail.com', 'YourMomBasement', '2628GW'),
(71, 'Hans', 'Möller', 'Gleyveon@gmail.com', 'asd', '2628GW'),
(72, 'Hans', 'asdasd', 'asdasd', 'asdasd', 'asdasd'),
(73, 'Daniel', 'Möller', 'Gleyveon@gmail.com', 'YourMomBasement', '2628GW'),
(74, 'Daniel', 'Möller', 'Gleyveon@gmail.com', 'sada', '2628GW');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ìd` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sushi_1` int(11) NOT NULL,
  `sushi_2` int(11) NOT NULL,
  `sushi_3` int(11) NOT NULL,
  `sushi_4` int(11) NOT NULL,
  `sushi_5` int(11) NOT NULL,
  `sushi_6` int(11) NOT NULL,
  `total` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ìd`, `customer_id`, `sushi_1`, `sushi_2`, `sushi_3`, `sushi_4`, `sushi_5`, `sushi_6`, `total`) VALUES
(25, 72, 12, 12, 121, 2, 0, 0, '1811.00'),
(26, 73, 10, 0, 0, 0, 0, 0, '100.00'),
(27, 74, 12, 0, 0, 0, 0, 0, '120.00'),
(28, 74, 12, 0, 12, 0, 0, 0, '264.00'),
(29, 74, 12, 0, 12, 0, 0, 12, '414.00');

-- --------------------------------------------------------

--
-- Table structure for table `sushi`
--

CREATE TABLE `sushi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sushi`
--

INSERT INTO `sushi` (`id`, `name`, `price`, `amount`) VALUES
(1, 'Ebi', '10.00', 33),
(2, 'Unagi', '15.00', 20),
(3, 'Hotate', '12.00', 10),
(4, 'Maguro', '29.99', 20),
(5, 'Tai', '24.99', 5),
(6, 'Saba', '12.55', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ìd`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `sushi_1` (`sushi_1`),
  ADD KEY `sushi_2` (`sushi_2`),
  ADD KEY `sushi_3` (`sushi_3`),
  ADD KEY `sushi_4` (`sushi_4`),
  ADD KEY `sushi_5` (`sushi_5`),
  ADD KEY `sushi_6` (`sushi_6`);

--
-- Indexes for table `sushi`
--
ALTER TABLE `sushi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ìd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sushi`
--
ALTER TABLE `sushi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
