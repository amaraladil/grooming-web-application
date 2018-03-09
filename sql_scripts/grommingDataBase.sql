-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.19-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for grooming
CREATE DATABASE IF NOT EXISTS `grooming` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `grooming`;

-- Dumping structure for table grooming.booking
CREATE TABLE IF NOT EXISTS `booking` (
  `bookingID` int(11) NOT NULL AUTO_INCREMENT,
  `date/time` datetime DEFAULT NULL,
  `isPaid?` tinyint(4) DEFAULT NULL,
  `dogID` int(11) DEFAULT NULL,
  `staffID` int(11) DEFAULT NULL,
  `serviceID` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookingID`),
  KEY `serviceID` (`serviceID`),
  KEY `staffID` (`staffID`),
  KEY `dogID` (`dogID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table grooming.booking: ~4 rows (approximately)
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` (`bookingID`, `date/time`, `isPaid?`, `dogID`, `staffID`, `serviceID`) VALUES
	(1, '2018-02-27 14:22:35', 1, 1, 1, 1),
	(2, '2018-02-27 14:22:35', 0, 2, 2, 2),
	(3, '2018-02-27 14:22:35', 1, 3, 3, 3),
	(4, '2018-02-27 14:22:35', 0, 4, 4, 4);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;

-- Dumping structure for table grooming.clientbill
CREATE TABLE IF NOT EXISTS `clientbill` (
  `billID` int(11) NOT NULL AUTO_INCREMENT,
  `bookingID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`billID`),
  KEY `bookingID` (`bookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table grooming.clientbill: ~0 rows (approximately)
/*!40000 ALTER TABLE `clientbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientbill` ENABLE KEYS */;

-- Dumping structure for table grooming.dog
CREATE TABLE IF NOT EXISTS `dog` (
  `dogID` int(11) NOT NULL AUTO_INCREMENT,
  `dogName` char(50) DEFAULT NULL,
  `dogSize` char(50) DEFAULT NULL,
  `clientID` int(11) DEFAULT NULL,
  PRIMARY KEY (`dogID`),
  KEY `clientID` (`clientID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table grooming.dog: ~4 rows (approximately)
/*!40000 ALTER TABLE `dog` DISABLE KEYS */;
INSERT INTO `dog` (`dogID`, `dogName`, `dogSize`, `clientID`) VALUES
	(1, 'Charlie', 'Medium', 1),
	(2, 'Skittles', 'Small', 2),
	(3, 'Teddy', 'Large', 3),
	(4, 'Jimbo', 'Small', 3);
/*!40000 ALTER TABLE `dog` ENABLE KEYS */;

-- Dumping structure for table grooming.inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `inventoryID` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inventoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table grooming.inventory: ~4 rows (approximately)
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` (`inventoryID`, `name`, `price`, `quantity`) VALUES
	(1, 'Shampoo', 100, 25),
	(2, 'Conditioner', 75, 34),
	(3, 'Clippers', 25, 12),
	(4, 'WashRags', 45, 12);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;

-- Dumping structure for table grooming.services
CREATE TABLE IF NOT EXISTS `services` (
  `serviceID` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` char(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviceID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table grooming.services: ~4 rows (approximately)
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`serviceID`, `serviceName`, `price`) VALUES
	(1, 'FullPackage', 100),
	(2, 'NailTrimming', 50),
	(3, 'EarClean', 25),
	(4, 'additionRequest', 75);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Dumping structure for table grooming.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `staffID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` char(50) DEFAULT NULL,
  `lastName` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  `phoneNumber` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `address` char(50) DEFAULT NULL,
  `postalCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table grooming.staff: ~4 rows (approximately)
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`staffID`, `firstName`, `lastName`, `password`, `phoneNumber`, `email`, `address`, `postalCode`) VALUES
	(1, 'Henry', 'Harrison', 'test', '9040930923', 'HenryJones@hotmail.com', '32 iles', 'L3F3V2'),
	(2, 'Kyle', 'Muller', 'test', '902321213', 'KyleMuller@hotmail.com', '74 sdf', 'K3FF4G'),
	(3, 'Jimbob', 'Bobby', 'test', '234234234', 'JimBob@hotmail.com', '123 stil', 'P3F3V3'),
	(4, 'Earnie', 'Kiler', 'test', '320932322', 'EarnieKiler@hotmail.com', '43 old', 'J3F3V4');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;

-- Dumping structure for table grooming.tblclient
CREATE TABLE IF NOT EXISTS `tblclient` (
  `clientID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` char(50) DEFAULT NULL,
  `lastName` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  `phoneNumber` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `address` char(50) DEFAULT NULL,
  `postalCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`clientID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table grooming.tblclient: ~4 rows (approximately)
/*!40000 ALTER TABLE `tblclient` DISABLE KEYS */;
INSERT INTO `tblclient` (`clientID`, `firstName`, `lastName`, `password`, `phoneNumber`, `email`, `address`, `postalCode`) VALUES
	(1, 'Jimmy', 'Jones', 'test', '9054093092', 'jimmyjones@hotmail.com', '43 lises', 'L3F3V4'),
	(2, 'kelley', 'Scales', 'test', '0493234213', 'kelleyscales@hotmail.com', '32 julei', 'K3FC3D'),
	(3, 'Tyler', 'Nanki', 'test', '4345434534', 'tylerNanki@hotmail.com', '54 asdf', 'DKF35'),
	(4, 'Chowder', 'Ali', 'test', '4343423234', 'chowderali@hotmail.com', '65 jfid', 'P9DJ3V');
/*!40000 ALTER TABLE `tblclient` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
