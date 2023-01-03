-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 16, 2021 at 11:42 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `username`, `password`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'), -- password = admin
(2, 'Abdul Rahman', 'abdulrahman', '202cb962ac59075b964b07152d234b70'); -- password = 123

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(50) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`) VALUES
(15, 'Philip Roth'),
(16, 'Erica Jong'),
(17, 'Paul Kalanithi'),
(18, 'Mark Twain'),
(19, 'Nathaniel Philbrick'),
(20, 'Louisa May Alcott');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(50) NOT NULL,
  `book_category` varchar(30) NOT NULL,
  `book_author` varchar(50) NOT NULL,
  `book_publisher` varchar(40) NOT NULL,
  `book_status` varchar(10) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `book_category`, `book_author`, `book_publisher`, `book_status`) VALUES
(11, 'Letting Go', '7', '15', '7', 'N'),
(12, 'Fear of Flying', '10', '16', '8', 'Y'),
(13, 'When Breath Becomes Air', '11', '17', '9', 'N'),
(14, 'The Adventures of Tom Sawyer', '9', '18', '10', 'Y'),
(15, 'In the Heart of the Sea', '8', '19', '11', 'N'),
(16, 'Little Women', '7', '20', '12', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `book_issue`
--

DROP TABLE IF EXISTS `book_issue`;
CREATE TABLE IF NOT EXISTS `book_issue` (
  `issue_id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_name` varchar(50) NOT NULL,
  `issue_book` varchar(40) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_status` varchar(10) NOT NULL,
  `return_day` date DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_issue`
--

INSERT INTO `book_issue` (`issue_id`, `issue_name`, `issue_book`, `issue_date`, `return_date`, `issue_status`, `return_day`, `fine`) VALUES
(37, '10', '13', '2022-12-16', '2022-11-05', 'N', NULL, NULL),
(38, '14', '11', '2022-12-16', '2022-11-05', 'N', NULL, NULL),
(39, '9', '15', '2022-12-16', '2022-12-15', 'N', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(7, 'Historical Fiction.'),
(8, 'Detective and Mystery'),
(9, 'Comic Book or Graphic Novel'),
(10, 'Horror'),
(11, 'Literary Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `publisher_id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(50) NOT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`) VALUES
(7, 'Penguin Random House'),
(8, 'Hachette Livre'),
(9, 'HarperCollins'),
(10, 'Macmillan Publishers'),
(11, 'Simon & Schuster'),
(12, 'McGraw-Hill Education');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_days` int(11) NOT NULL,
  `fine` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `return_days`, `fine`) VALUES
(1, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(50) NOT NULL,
  `student_address` varchar(100) NOT NULL,
  `student_gender` varchar(10) NOT NULL,
  `student_class` varchar(30) NOT NULL,
  `student_age` int(11) NOT NULL,
  `student_phone` varchar(12) NOT NULL,
  `student_email` varchar(30) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_address`, `student_gender`, `student_class`, `student_age`, `student_phone`, `student_email`) VALUES
(9, 'Haris Sohail', '2399 Earnhardt Drive, Louisville', 'male', 'BCOM', 22, '5029311969', '42x6omoer6c@gmail.com'),
(10, 'Fatima Tahir', '260 Cinnamon Lane, San Antonio', 'female', 'BCA', 25, '2107869036', '4otic2rvdzv@gmail.com'),
(11, 'Abdul Rahman', '542 Green Hill Road, ', 'male', 'MS', 27, '8703710686', 'i7ooslzwsvm@gmail.com'),
(12, 'Danial Hafeez', '2743 Eastland Avenue, KANOSH', 'male', 'MS CS', 30, '8016735825', 'o3o9ins8q1@gmail.com'),
(13, 'Aqib Hussain', '2015 Pickens Way, BLANFORD', 'male', 'MCSC', 28, '2605304242', 'vzoqgqip3nf@gmail.com'),
(14, 'Uzma Khan', '545 Valley View Drive, Milton', 'female', 'MCSC', 30, '6172916918', '7uvlq521v3j@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
