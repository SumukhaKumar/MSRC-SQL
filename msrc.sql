-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2015 at 05:18 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `msrc`
--
CREATE DATABASE IF NOT EXISTS `msrc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `msrc`;

-- --------------------------------------------------------

--
-- Table structure for table `actedby`
--
-- Creation: Apr 14, 2015 at 11:03 PM
--

DROP TABLE IF EXISTS `actedby`;
CREATE TABLE IF NOT EXISTS `actedby` (
  `MOV_ID` int(3) NOT NULL DEFAULT '0',
  `NO_OF_ACTORS` int(3) DEFAULT NULL,
  `Main_Actor` int(2) NOT NULL DEFAULT '0',
  `Supporting_actor` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `actedby`:
--   `MOV_ID`
--       `movie` -> `ID`
--   `Main_Actor`
--       `actors` -> `SL_NO`
--

--
-- Dumping data for table `actedby`
--

INSERT INTO `actedby` (`MOV_ID`, `NO_OF_ACTORS`, `Main_Actor`, `Supporting_actor`) VALUES
(1, 3, 1, '3,5'),
(2, 2, 5, '8'),
(3, 3, 7, '6,9'),
(4, 4, 6, '10,3,7'),
(5, 2, 2, '9'),
(6, 2, 9, '12'),
(7, 4, 10, '13,4,7'),
(8, 2, 11, '8'),
(9, 3, 3, '14,12'),
(10, 3, 4, '8,5'),
(11, 2, 8, '6'),
(12, 2, 16, '4'),
(13, 2, 14, '11'),
(14, 3, 12, '4,7'),
(15, 2, 13, '9'),
(16, 2, 15, '1');

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--
-- Creation: Apr 14, 2015 at 11:00 PM
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `SL_NO` int(2) NOT NULL DEFAULT '0',
  `AC_FNAME` varchar(30) DEFAULT NULL,
  `AC_LNAME` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`SL_NO`, `AC_FNAME`, `AC_LNAME`) VALUES
(1, 'Will', 'Smith'),
(2, 'Leanarado', 'DiCaprio'),
(3, 'Kate', 'Winslet'),
(4, 'Scarlet', 'Jhonson'),
(5, 'Nicole', 'Kidman'),
(6, 'George', 'Clooney'),
(7, 'Tom', 'Hanks'),
(8, 'Tom', 'Cruise'),
(9, 'Matt', 'Damon'),
(10, 'Angelina', 'Joulie'),
(11, 'Aishwarya', 'Rai'),
(12, 'Satish', 'Ninasam'),
(13, 'Robert', 'Downey'),
(14, 'Hugh', 'Jackman'),
(15, 'Brad', 'Pitt'),
(16, 'Ben', 'Stiller');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--
-- Creation: Apr 14, 2015 at 10:58 PM
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CUST_ID` int(3) NOT NULL,
  `F_NAME` varchar(10) NOT NULL,
  `M_NAME` varchar(10) DEFAULT NULL,
  `L_NAME` varchar(10) NOT NULL,
  `AGE` int(3) DEFAULT NULL,
  `ADDRESS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `F_NAME`, `M_NAME`, `L_NAME`, `AGE`, `ADDRESS`) VALUES
(1, 'Frank', 'M', 'Collins', 28, '700 University, Kingsville, TX'),
(2, 'David', 'T', 'Mathew', 34, '682 Blackstone, Medlock, GA'),
(3, 'Christophe', NULL, 'Anthony', 25, '123 Dearlake, Alpheratta, GA'),
(4, 'Ajay', NULL, 'Burns', 42, '456 Lexinton, Corpus, TX'),
(5, 'David', 'A', 'Messler', 56, '789 Duluth, Newark, NJ'),
(6, 'Lenny', NULL, 'Williams', 23, '147 Silicon, San Jose, CA'),
(7, 'Barbara', 'S', 'Andrew', 27, '258 Dumbule, Houston, TX'),
(8, 'Nicole', NULL, 'Shah', 51, '369 Kennedy, Alice, TX'),
(9, 'Katy', 'F', 'Edward', 36, '159 West Lee, Robstone, TX'),
(10, 'Michele', NULL, 'Woodcock', 31, '357 Amstrong, Dallas, TX'),
(12, 'Rand', 'S', 'Paul', 47, '201 Megginis, Louisville, KY'),
(13, 'Sean', 'W', 'Brown', 36, '759 Sugarloaf, Atlanta, GA'),
(14, 'Brian', 'O', 'Corner', 27, '573 Dunwoody, Alice, TX');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--
-- Creation: Apr 14, 2015 at 11:00 PM
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `ID` int(3) NOT NULL DEFAULT '0',
  `M_NAME` varchar(30) DEFAULT NULL,
  `rating` varchar(5) DEFAULT NULL,
  `AWARD` varchar(20) DEFAULT NULL,
  `DIRECTOR` varchar(30) DEFAULT NULL,
  `BOX_OFFICE` varchar(30) DEFAULT NULL,
  `DURATION` double(3,2) DEFAULT NULL,
  `LANG` varchar(10) DEFAULT NULL,
  `RELEASE_YEAR` char(4) DEFAULT NULL,
  `GENRE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`ID`, `M_NAME`, `rating`, `AWARD`, `DIRECTOR`, `BOX_OFFICE`, `DURATION`, `LANG`, `RELEASE_YEAR`, `GENRE`) VALUES
(1, 'Mission Impossible', 'PG13', NULL, 'Josh Trank', '20th Century Fox', 1.45, 'English', '2013', 'ACTION'),
(2, 'Pink Panther', 'PG13', NULL, 'Tim Johnson', 'Walt Disney', 1.30, 'English', '2011', 'Adventure'),
(3, 'Shawshank Redemption', 'PG13', NULL, 'Andy Wachowski', 'Warner Bros Pictures', 2.30, 'English', '2014', 'ACTION'),
(4, '5 Man Army', 'NC17', NULL, 'Sam Taylor-Johnson', 'Focus Features', 2.45, 'English', '2012', 'DRAMA'),
(5, 'Frozen', 'PG13', NULL, 'Chris Weitz', 'Walt Disney', 1.25, 'English', '2014', 'DRAMA'),
(6, 'National Treasure', 'R', NULL, 'Nicole Kidman', ' New Line Cinema', 1.45, 'English', '2012', 'ACTION'),
(7, 'American Sniper', 'R', NULL, 'Clint Eastwood', ' Warner Bros Pictures', 2.47, 'English', '2013', 'WAR'),
(8, 'Ratatouille', 'UA', NULL, 'Jan Pinkava', 'Pixar', 3.45, 'French', '2005', 'ANIMATION'),
(9, 'Minions', 'UA', NULL, 'Brian Lynch', 'Phantom', 2.45, 'English', '2015', 'ANIMATION'),
(10, 'Lucia', 'A', NULL, 'Pawan Kumar', '20th Century Fox', 2.34, 'Kannada', '2012', 'DRAMA'),
(11, 'Wall-E', 'U', NULL, 'Andrew Stanton', 'Walt Disney', 1.55, 'English', '2013', 'ANIMATION'),
(12, 'Transformers', 'R', NULL, 'Michael Bay', 'Paramount Pictures', 2.23, 'English', '2013', 'THRILLER'),
(13, 'The Odessa File', 'NR17', NULL, 'Ronald Neame', '20th Century Fox', 2.15, 'English', '2013', 'THRILLER'),
(14, 'Forrest Gump', 'PG13', NULL, 'Robert Zemeckis', 'Walt Disney', 1.45, 'English', '2008', 'DRAMA'),
(15, 'Titanic', 'PG13', NULL, 'James Cameron', 'Exclusive Media', 2.45, 'English', '2015', 'ROMANCE'),
(16, 'Spider-Man', 'PG13', NULL, 'Sam Raimi', ' Warner Bros Pictures', 3.45, 'English', '2015', 'ACTION'),
(17, 'The Pink Panther', 'R', NULL, 'Brad Bird', 'Walt Disney', 2.45, 'English', '2014', 'Comedy'),
(18, 'Tomorrowland', 'R', NULL, 'Brad Bird', 'Walt Disney', 2.45, 'English', '2014', 'MYSTERY'),
(19, 'Bend It Like Bekham', 'NR17', NULL, 'Beckham', 'Universal Pictures', 1.45, 'English', '2013', 'SPORT'),
(20, 'Shutters', 'R', NULL, 'Masayuki Ochiai', 'Paramount Pictures', 2.23, 'English', '2013', 'HORROR');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--
-- Creation: Apr 14, 2015 at 11:04 PM
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `P_ID` int(3) NOT NULL DEFAULT '0',
  `M_ID` int(3) DEFAULT NULL,
  `AMOUNT` double(3,2) DEFAULT NULL,
  `CS_ID` int(3) DEFAULT NULL,
  `date_Sold` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `purchase`:
--   `CS_ID`
--       `customer` -> `CUST_ID`
--   `M_ID`
--       `movie` -> `ID`
--

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`P_ID`, `M_ID`, `AMOUNT`, `CS_ID`, `date_Sold`) VALUES
(1, 2, 8.00, 4, '2012-04-01'),
(2, 5, 5.00, 3, '2012-05-08'),
(3, 11, 9.00, 7, '2012-05-12'),
(4, 12, 6.00, 9, '2013-02-08'),
(5, 8, 7.00, 1, '2013-04-18'),
(6, 7, 3.00, 2, '2014-02-28'),
(7, 14, 8.00, 5, '2014-03-08'),
(8, 6, 9.00, 9, '2014-04-20'),
(9, 1, 8.00, 1, '2014-04-30'),
(10, 4, 4.00, 12, '2014-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--
-- Creation: Apr 15, 2015 at 03:12 AM
--

DROP TABLE IF EXISTS `rent`;
CREATE TABLE IF NOT EXISTS `rent` (
  `RENT_ID` int(3) NOT NULL DEFAULT '0',
  `MO_ID` int(3) DEFAULT NULL,
  `CU_ID` int(3) DEFAULT NULL,
  `AMOUNT` double(3,2) DEFAULT NULL,
  `borrow_date` varchar(10) DEFAULT NULL,
  `return_Date` varchar(10) DEFAULT NULL,
  `Selling_Operation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `rent`:
--   `CU_ID`
--       `customer` -> `CUST_ID`
--   `MO_ID`
--       `movie` -> `ID`
--

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`RENT_ID`, `MO_ID`, `CU_ID`, `AMOUNT`, `borrow_date`, `return_Date`, `Selling_Operation`) VALUES
(1, 2, 4, 8.00, '2012-10-07', '2012-10-19', 'CASH'),
(2, 5, 3, 5.00, '2012-09-09', '2012-09-12', 'CREDIT CARD'),
(3, 3, 2, 2.00, '2013-01-17', '2013-01-21', 'CREDIT CARD'),
(4, 7, 7, 6.00, '2013-03-15', '2013-03-21', 'CASH'),
(5, 9, 9, 7.00, '2012-05-12', '2012-05-04', 'CASH'),
(6, 10, 11, 3.00, '2012-06-17', '2012-06-11', 'CREDIT CARD'),
(7, 11, 13, 8.00, '2012-09-09', '2014-09-12', 'CASH'),
(8, 12, 14, 9.00, '2015-01-29', '2015-02-02', 'CREDIT CARD'),
(9, 13, 9, 8.00, '2015-04-27', '2013-05-02', 'CREDIT CARD'),
(10, 14, 10, 4.00, '2013-06-20', '2013-06-24', 'CREDIT CARD'),
(11, 5, 9, 6.00, '2012-02-17', '2012-02-24', 'CREDIT CARD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actedby`
--
ALTER TABLE `actedby`
 ADD PRIMARY KEY (`MOV_ID`,`Main_Actor`), ADD KEY `Main_Actor` (`Main_Actor`);

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
 ADD PRIMARY KEY (`SL_NO`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
 ADD PRIMARY KEY (`P_ID`), ADD KEY `CS_ID` (`CS_ID`), ADD KEY `M_ID` (`M_ID`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
 ADD PRIMARY KEY (`RENT_ID`), ADD KEY `MO_ID` (`MO_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actedby`
--
ALTER TABLE `actedby`
ADD CONSTRAINT `actedby_ibfk_1` FOREIGN KEY (`MOV_ID`) REFERENCES `movie` (`ID`),
ADD CONSTRAINT `actedby_ibfk_2` FOREIGN KEY (`Main_Actor`) REFERENCES `actors` (`SL_NO`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`CS_ID`) REFERENCES `customer` (`CUST_ID`),
ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`M_ID`) REFERENCES `movie` (`ID`);

--
-- Constraints for table `rent`
--
ALTER TABLE `rent`
ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`MO_ID`) REFERENCES `movie` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
