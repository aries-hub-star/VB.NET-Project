-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 09:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uaqtea_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `administratorname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photoname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `administratorname`, `password`, `photoname`) VALUES
(1, 'Admin', 'admin', '423903824_3272411382902305_3701346286203145973_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Mname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `block` int(255) NOT NULL,
  `photoname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `Fname`, `Mname`, `Lname`, `address`, `contact_no`, `block`, `photoname`, `username`, `pass`) VALUES
(1, 'sabid', 'sabid', 'sabid', 'sdasd', 'asdasd', 1, '', '', ''),
(2, 'sa', 'sa', 'sa', 'asdassd', 'asdasdasd', 2, '', '', ''),
(4, '', '', '', '', '', 0, 'C:\\Users\\Faylure\\Videos\\path\\423903824_3272411382902305_3701346286203145973_n.jpg', '', ''),
(6, 'asd', 'asdasd', 'asda', 'sadsd', 'asdsa', 2, '13cb9ee17738bf64faaf91cbf459fa03.jpg', 'never', '123'),
(7, 'asd', 'asd', 'asd', 'asd', 'asd', 0, '13cb9ee17738bf64faaf91cbf459fa03.jpg', 'asd', 'asd'),
(8, 'asd', 'sda', 'sd', 'asd', 'asd', 0, '13cb9ee17738bf64faaf91cbf459fa03.jpg', 'asd', 'dasd'),
(9, 'dasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 0, '13cb9ee17738bf64faaf91cbf459fa03.jpg', 'asd', 'asdasda'),
(10, 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'sdasda', 0, '13cb9ee17738bf64faaf91cbf459fa03.jpg', 'asdas', 'asdasd'),
(11, 'sadsd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 1, '13cb9ee17738bf64faaf91cbf459fa03.jpg', 'asdasd', 'asdasd'),
(12, 'asdasd', 'asddasd', 'sdasda', 'asdasdas', 'asdasd', 1, '423903824_3272411382902305_3701346286203145973_n.jpg', 'asdasd', 'asasdasd'),
(13, 'asdsdad', 'asdasdas', 'asdasda', 'asdasdasd', 'daasdasd', 2, '13cb9ee17738bf64faaf91cbf459fa03.jpg', 'noone', '123');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `training_course` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photoname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `username`, `firstname`, `lastname`, `middlename`, `training_course`, `password`, `photoname`) VALUES
(1, 'asdsda', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdsad', 'photo_path_here'),
(2, '', '', '', '', '', '', 'photo_path_here'),
(3, 'sdsd', 'asds', 'sdas', 'asd', 'asd', 'asd', 'photo_path_here'),
(4, 'ricky', 'ricky', 'rapiz', 'calicoy', 'FOS', '1234', 'photo_path_here'),
(7, 'trainor', 'trainor', 'trainor', 'trainor', 'FOS', '1234', 'photo_path_here'),
(8, 'asone', 'asd', 'asd', 'sd', 'CSS', '123', '423903824_3272411382902305_3701346286203145973_n.jpg'),
(10, 'aswan', 'asdasd', 'asdasda', 'asdas', 'EIM', '123', '423903824_3272411382902305_3701346286203145973_n.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
