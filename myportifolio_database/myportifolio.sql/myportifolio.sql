-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 04:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myportifolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `featured_skills` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`featured_skills`) VALUES
('Good utilization of sunlight'),
('Good utilization of sunlight'),
('Good utilization of sunlight'),
('Good camera angles'),
('Good at taking pictures'),
('Good at editing pictures');

-- --------------------------------------------------------

--
-- Table structure for table `mycontacts`
--

CREATE TABLE `mycontacts` (
  `contact_way` varchar(255) DEFAULT NULL,
  `phone_number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mycontacts`
--

INSERT INTO `mycontacts` (`contact_way`, `phone_number`) VALUES
('Mobile phone number', 888389146),
('WhatsApp ', 88838916);

-- --------------------------------------------------------

--
-- Table structure for table `myprojects`
--

CREATE TABLE `myprojects` (
  `projects` varchar(255) DEFAULT NULL,
  `Discription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myprojects`
--

INSERT INTO `myprojects` (`projects`, `Discription`) VALUES
('[Land scape]', '[contains pictures of nature e.g mountains'),
('[Animals]', '[contains pictures of animals like dogs]'),
('[Plants]', '[these are pictures of plants]'),
('Land scape', 'contains pictures of nature e.g mountains'),
('Animals', 'contains pictures of animals like dogs'),
('Plants', 'these are pictures of plants');

-- --------------------------------------------------------

--
-- Table structure for table `myskills`
--

CREATE TABLE `myskills` (
  `Skills` varchar(255) DEFAULT NULL,
  `Tools` varchar(255) DEFAULT NULL,
  `Technology` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myskills`
--

INSERT INTO `myskills` (`Skills`, `Tools`, `Technology`) VALUES
('Good utilization of the sunlight', 'sunlight', 'phone'),
('Good camera angles', 'sunlight', 'phone'),
('Good at taking pictures mostly of the nature', 'sunlight', 'phone'),
('good at diting pictures', 'Adobe lightroom and Picsart', 'phone');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
