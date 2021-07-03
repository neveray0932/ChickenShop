-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2021 at 03:13 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chickenshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `Emp_ID` varchar(30) NOT NULL,
  `Emp_password` varchar(100) NOT NULL,
  `Emp_Name` varchar(100) NOT NULL,
  `Emp_Birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Emp_Phone` varchar(100) NOT NULL,
  `Emp_Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`Emp_ID`, `Emp_password`, `Emp_Name`, `Emp_Birthday`, `Emp_Phone`, `Emp_Email`) VALUES
('1', '', 'WANGCHINWEI', '2003-05-03 16:00:00', '0912123123', 'ASDFGH@YAHOO.COM.TW'),
('5', '', 'Andy Chen', '2021-06-02 16:00:00', '0912345678', 'neveray0932@gmail.com'),
('6', '', 'Andy Chen1', '2021-06-02 16:00:00', '0912345678', 'neveray0932@gmail.com'),
('7', '', 'Andy Chen1', '2021-06-02 16:00:00', '0912345678', 'neveray0932@gmail.com'),
('aaaa11', 'bbbb', '我是session', '2011-08-20 16:00:00', '091124113', 'success@ok.com'),
('aaaaa1', 'bbbb', '我是session', '0000-00-00 00:00:00', '091124113', 'success@ok.com'),
('aaaaa11', 'bbbb', '我是session', '0000-00-00 00:00:00', '091124113', 'success@ok.com'),
('aaaaa111', 'bbbb', '我是session', '0000-00-00 00:00:00', '091124113', 'success@ok.com'),
('beetest', 'appletest', '傻蛋', '2021-06-02 16:00:00', '0912345678', 'mango@apple.com'),
('unitTest0610', 'TeSt', '我是TEST', '1997-05-31 16:00:00', '0912121212', 'test@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `OrderD_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Prod_ID` int(11) NOT NULL,
  `Order_Name` varchar(100) NOT NULL,
  `Order_Count` int(11) NOT NULL,
  `Order_Price` int(11) NOT NULL,
  `Order_Unitsprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`OrderD_ID`, `Order_ID`, `Prod_ID`, `Order_Name`, `Order_Count`, `Order_Price`, `Order_Unitsprice`) VALUES
(9, 2, 4, '超級訂單', 1000, 80, 80000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Order_Date` date NOT NULL,
  `Order_mark` varchar(200) NOT NULL,
  `Emp_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Order_Date`, `Order_mark`, `Emp_ID`) VALUES
(2, '2021-06-01', '賣了大單', 'unitTest0610');

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE `prod` (
  `Prod_ID` int(11) NOT NULL,
  `Prod_Name` varchar(100) NOT NULL,
  `Prod_Unit` varchar(100) NOT NULL,
  `Prod_Category` varchar(100) NOT NULL,
  `Prod_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`Prod_ID`, `Prod_Name`, `Prod_Unit`, `Prod_Category`, `Prod_Price`) VALUES
(1, '起司雞排', '片', '炸物', 80),
(2, '麻辣雞排', '片', '炸物', 75),
(4, '天使雞排', '片', '炸物', 90);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`OrderD_ID`),
  ADD KEY `Order_ID` (`Order_ID`),
  ADD KEY `Prod_ID` (`Prod_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`Prod_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `OrderD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prod`
--
ALTER TABLE `prod`
  MODIFY `Prod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`Prod_ID`) REFERENCES `prod` (`Prod_ID`),
  ADD CONSTRAINT `orderdetail_ibfk_3` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `emp` (`Emp_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
