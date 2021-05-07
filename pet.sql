-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 03, 2021 at 08:00 AM
-- Server version: 5.5.62
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contactID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`contactID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactID`, `name`, `email`, `phoneno`, `message`) VALUES
(4, 'John', 'john@gmail.com', 734123679, 'Where are you located?');

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
CREATE TABLE IF NOT EXISTS `pet` (
  `petID` int(11) NOT NULL AUTO_INCREMENT,
  `image` blob NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `colour` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`petID`, `image`, `name`, `size`, `weight`, `age`, `colour`) VALUES
(14, 0x6361742e6a7067, 'Thomas', 'Mini', 10, 3, 'white'),
(17, 0x646f6767792e6a7067, 'Ken', 'standard', 25, 3, 'black');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `email`, `fullname`, `location`, `password`) VALUES
(3, 'Paul', 'paulkiberenge@gmail.com', 'Paul Mutugi', 'Embakasi', '$2y$10$NC4MVWr4qf3eJM6tx1CpyeryI6hD9j75.fJOWdO/xGN0zc0q2tJBu'),
(4, 'Jaymo', 'jay@gmail.com', 'Jay Pope', 'kitui', '$2y$10$hkqns5Ym69.j39D2I656d.b9BFROxYkdU71DCM4NBKBIu36m7SDVW'),
(5, 'Festus', 'festus@gmail.com', 'Festus Mutugi', 'Malili', '$2y$10$QhROw.ws2laM.4CE52N8QO/Vkz4dCYUDdyWOfIWYCuHWZCpsCt4nu'),
(6, 'Cartis', 'cartisjones@gmail.com', 'Cartis Jones', 'Donholm', '$2y$10$ATaQQMeHy6ZMLAGcs8r6AuXPXn19MByu1hTRk0jvlvFdVgYf3jyQO'),
(7, 'tom', 'tom@gmail.com', 'Tom Cat', 'Embakasi', '$2y$10$hSqNecC4MFHS23NEwMls5Or3hThQgnQhzap7eXHwR4E80SXNFgSIa'),
(8, 'Kevin', 'kevin@gmail.com', 'Kevin James', 'kitui', '$2y$10$wS3mmrRq.ZXVOVAUSB6uGuyoWCAmE/1sTgvVMljlVdQ4VwGSAPbje'),
(9, 'Hellen', 'hellenpaul@gmail.com', 'Hellen Paul', 'Komarock', '$2y$10$89T04RRxfxH2I3LBvN7v8eqbmqHCQ2L8Q1yUXKG4zhCsxdf40R./G');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
