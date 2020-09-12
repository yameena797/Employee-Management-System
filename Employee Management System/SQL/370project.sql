-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 07:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `370project`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(101, 'Nayab', 'Nathani', 'nayabnathani@nu.edu.pk', '1234', '1994-04-04', 'Male', '01919', 12121, 'Karachi', 'CS', 'Head', 'images/nayabnathani.jpg'),
(102, 'Yameena', 'Fatima', 'yameenafatima@nu.edu.pk', '1234', '2018-01-01', 'Female', '0202', 303, 'Karachi', 'CS', 'CSE', 'images/yameenafatima.jpg'),
(103, 'Anjiya', 'Nathani', 'anjiyanathani@nu.edu.pk', '1234', '1990-02-02', 'Female', '5252', 6262, 'Karachi', 'CS', 'MSc', 'images/anjiyanawaz.jpg'),
(104, 'Ali', 'Nathani', 'alinathani@nu.edu.pk', '1234', '1971-12-01', 'Male', '9595', 5959, 'Garden East', 'EE', 'MSc', 'images/alinathani.jpg'),
(105, 'Sultan', 'Khowaja', 'sultankhowaja@nu.edu.pk', '1234', '1971-06-28', 'Male', '8585', 5858, 'Gulshan Iqbal', 'EE', 'BSc.', 'images/sultankhowaja.png'),
(106, 'Karim', 'Khan', 'karimkhan@nu.edu.pk', '1234', '1990-02-02', 'Male', '7575', 5757, 'Garden East', 'BBA', 'MSc', 'images/karimkhan.jpg'),
(107, 'Zainab', 'Ali', 'zainabali@nu.edu.pk', '1234', '1993-03-03', 'Female', '4545', 5454, 'Garden West', 'CS', 'MSc', 'images/zainabali.jpg'),
(108, 'Atif', 'Saleem', 'atifsaleem@nu.edu.pk', '1234', '1976-04-16', 'Male', '758758', 857857, 'Clifton', 'BBA', 'BSc.', 'images/atifsaleem.jpg'),
(109, 'Sajjad', 'Hussain', 'sajjadhussain@nu.edu.pk', '1234', '1985-01-01', 'Male', '852852', 258258, 'Clifton', 'AI', 'PhD', 'images/sajjadhussain.jpg'),
(110, 'Anna', 'Nathani', 'annanathani@nu.edu.pk', '1234', '1965-09-18', 'Female', '147147', 741741, 'Garden West', 'CS', 'PhD', 'images/annanathani.jpg'),
(111, 'Sarim', 'Ali', 'sarimali@nu.edu.pk', '1234', '2011-02-01', 'Male', '0187282', 112233, 'Nazimabad', 'BBA', 'BSc.', 'images/sarimali.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(101, 301, '2019-04-07', '2019-04-08', 'Sick Leave', 'Approved'),
(102, 305, '2019-04-07', '2019-04-08', 'Urgent Family Cause', 'Approved'),
(103, 306, '2019-04-08', '2019-04-08', 'Concert Tour', 'Approved'),
(101, 307, '2019-04-14', '2019-04-30', 'Research Purpose', 'Pending'),
(105, 308, '2019-04-26', '2019-04-30', 'Visit to Islamabad', 'Pending'),
(111, 309, '2019-04-09', '2019-04-13', 'Visit to Lahore', 'Pending'),
(104, 310, '2019-04-08', '2019-04-09', 'Emergency Leave', 'Pending'),
(107, 311, '2020-05-22', '2020-05-27', 'Eid holidays leave', 'Approved'),
(103, 312, '2020-05-28', '2020-05-31', 'Village Tour', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(213, 101, 'Database', '2019-04-07', '2019-04-04', 10, 'Submitted'),
(214, 102, 'Analyzing Covid19', '2019-04-10', '0000-00-00', 0, 'Due'),
(215, 105, 'Recruitment System', '2019-04-19', '2019-04-06', 10, 'Submitted'),
(216, 106, 'Hack', '2019-05-04', '2019-04-05', 5, 'Submitted'),
(217, 111, 'Do Nothing', '2019-04-02', '2019-04-01', 8, 'Submitted'),
(218, 105, 'Health Care System', '2019-04-03', '2019-04-03', 10, 'Submitted'),
(219, 101, 'PHP', '2019-04-07', '0000-00-00', 0, 'Due'),
(220, 110, 'Data Analysis', '2019-04-16', '2019-04-04', 8, 'Submitted'),
(221, 110, 'Ludo Star Game', '2019-04-16', '2019-04-04', 7, 'Submitted'),
(222, 103, 'Website with HTML CSS', '2019-04-19', '2019-04-04', 6, 'Submitted'),
(223, 108, 'Hotel Management System', '2019-04-09', '2019-04-02', 3, 'Submitted'),
(224, 107, 'Security Check', '2019-04-26', '2020-05-19', 9, 'Submitted'),
(225, 109, 'Machine Learning', '2019-04-03', '2019-04-04', 6, 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(101, 10),
(102, 0),
(103, 6),
(104, 0),
(105, 20),
(106, 5),
(107, 18),
(108, 3),
(109, 6),
(110, 15),
(111, 8);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(101, 55000, 10, 60500),
(102, 16500, 0, 16500),
(103, 65000, 6, 68900),
(104, 78000, 0, 78000),
(105, 105000, 20, 126000),
(106, 60000, 5, 63000),
(107, 77000, 18, 90860),
(108, 50000, 3, 51500),
(109, 85000, 6, 90100),
(110, 47000, 15, 54050),
(111, 45000, 8, 48600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
