-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 05:42 PM
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
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `github_link` varchar(255) NOT NULL,
  `project_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `picture`, `description`, `github_link`, `project_link`) VALUES
(1, 'HogerLager', 'Pictures/Gamble Picturew.jpg', 'Ik heb een kaart game gemaakt met een scrumgroepje.', '', 'HogerLager.HTML'),
(2, 'Rekenmachine', 'Pictures/Rekenmachine.JPG', 'Hier heb ik een rekenmachine met HTML, CSS en Javascript gemaakt.', '', 'Rekenmachine.html'),
(3, 'Interaction design', 'Pictures/Project TriHard7.JPG', 'Aplicatie voor kinderen met verstandelijke beperkingen en ouders/verzorgers.', '', 'Project TriHard7/Index.html'),
(4, 'Boter, Kaas en eieren', 'Pictures/Boter,Kaas en eieren.JPG', 'Het spel boter kaas en eireren', '', 'BKE/Tic Tac Toe.html'),
(5, 'Dice game', 'Pictures/Dice card picture.jpg', 'Dit is een van mijn eerste projecten waar we een dobbelsteen moesten maken. ', '', 'diceGame.html'),
(6, 'Portfolio', 'Pictures/Portfolio.JPG', 'Dit portfolio is het grooste prject, omdat all mijn andere projecten er in zitten. Hier zitten alle dingen die ik tot nu toe heb gemaakt en trots op ben.', '', 'Home.HTML');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
