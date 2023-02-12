-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2023 at 02:48 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
-- Table structure for table `layer_details`
--

CREATE TABLE `layer_details` (
  `id` int(26) NOT NULL,
  `name` varchar(23) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `Time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layer_details`
--

INSERT INTO `layer_details` (`id`, `name`, `parent_id`, `Time`) VALUES
(1, 'Home', 0, '2023-02-11 09:00:07.199564'),
(2, 'Course', 0, '2023-02-11 09:00:15.819536'),
(3, 'Android development', 2, '2023-02-11 09:07:16.456372'),
(4, 'Web development', 2, '2023-02-11 09:07:29.342638'),
(5, 'HTML', 4, '2023-02-11 09:13:41.460181'),
(6, 'CSS', 4, '2023-02-11 09:13:48.393106'),
(7, 'JS', 4, '2023-02-11 09:13:54.878509'),
(8, 'Name', 0, '2023-02-11 09:14:26.038459'),
(9, 'Angular', 7, '2023-02-11 09:14:53.091367'),
(10, 'Node', 7, '2023-02-11 09:15:00.220732'),
(11, 'First Name', 8, '2023-02-11 09:15:40.511024'),
(12, 'Last Name', 8, '2023-02-11 09:15:48.840448'),
(13, 'JAVA', 3, '2023-02-11 10:29:17.233479');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `layer_details`
--
ALTER TABLE `layer_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `layer_details`
--
ALTER TABLE `layer_details`
  MODIFY `id` int(26) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
