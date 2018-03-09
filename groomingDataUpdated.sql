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

-- Dumping data for table grooming.ar_internal_metadata: ~0 rows (approximately)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2018-03-02 22:17:01', '2018-03-02 22:17:01');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;

-- Dumping data for table grooming.schema_migrations: ~14 rows (approximately)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20180302224227'),
	('20180302231226'),
	('20180302235147'),
	('20180303024419'),
	('20180303025335'),
	('20180303025655'),
	('20180303030139'),
	('20180303030315'),
	('20180303030429'),
	('20180303030550'),
	('20180304021524'),
	('20180305151829'),
	('20180305152858'),
	('20180305154152');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;

-- Dumping data for table grooming.tblbookings: ~5 rows (approximately)
/*!40000 ALTER TABLE `tblbookings` DISABLE KEYS */;
INSERT INTO `tblbookings` (`id`, `tblbooking_id`, `dateTime`, `isPaid?`, `tbldog_id`, `tblstaff_id`, `tblservice_id`, `created_at`, `updated_at`, `tblclient_id`) VALUES
	(1, 1, '2018-03-04 03:09:00', 1, 1, 1, 1, '2018-03-03 03:10:10', '2018-03-03 03:10:10', 1),
	(2, 2, '2018-03-04 03:13:00', 0, 2, 2, 2, '2018-03-03 03:14:35', '2018-03-03 03:14:35', 2),
	(3, 3, '2018-03-04 03:14:00', 1, 4, 3, 3, '2018-03-03 03:15:09', '2018-03-03 03:15:09', 3),
	(4, 4, '2018-03-04 03:15:00', 0, 4, 4, 4, '2018-03-03 03:15:49', '2018-03-03 03:15:49', 4),
	(5, 3, '2018-03-04 22:19:45', 1, 3, 3, 3, '2018-03-04 22:20:36', '2018-03-04 22:20:38', 2);
/*!40000 ALTER TABLE `tblbookings` ENABLE KEYS */;

-- Dumping data for table grooming.tblclientbill: ~0 rows (approximately)
/*!40000 ALTER TABLE `tblclientbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclientbill` ENABLE KEYS */;

-- Dumping data for table grooming.tblclients: ~5 rows (approximately)
/*!40000 ALTER TABLE `tblclients` DISABLE KEYS */;
INSERT INTO `tblclients` (`id`, `clientID`, `firstName`, `lastName`, `password`, `phoneNumber`, `email`, `address`, `postalCode`, `created_at`, `updated_at`, `userName`) VALUES
	(1, 1, 'Anderson', 'jones', 'asdf', '9043', 'adsf@hotmail.com', '32 iles', 'L1R 3C2', '2018-03-04 02:31:42', '2018-03-04 02:31:42', 'tommy'),
	(2, 2, 'Fillimore', 'Jakerson', 'fdsf', '9394', 'asd#asdf.com', '32sdf', 'L3F3V3', '2018-03-03 22:50:04', '2018-03-03 22:50:04', 'jones'),
	(3, 3, 'Cherry', 'Eagles', 'test', '32323', 'cherry@hotmail.com', '12 sdl', 'K3T3f3', '2018-03-03 22:50:04', '2018-03-03 22:50:04', 'cherry'),
	(4, 4, 'Hilda', 'Hikes', 'test', '32323', 'hila@hotmail.com', '32 Like', 'K3T4F2', '2018-03-04 21:36:34', '2018-03-04 21:36:34', 'multi'),
	(5, NULL, 'teddy', 'jones', '905234223', '9054029234', 'sdf@hotmail.com', '32jies', 'l3t4v4', '2018-03-05 15:11:36', '2018-03-05 15:11:36', 'fsdf');
/*!40000 ALTER TABLE `tblclients` ENABLE KEYS */;

-- Dumping data for table grooming.tbldogs: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbldogs` DISABLE KEYS */;
INSERT INTO `tbldogs` (`id`, `dogID`, `dogName`, `dogSize`, `tblclient_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 'dogTommy', 'Small', 1, '2018-03-03 22:48:01', '2018-03-03 22:48:02'),
	(2, 2, 'dogTimmy', 'Big', 2, '2018-03-03 22:48:33', '2018-03-03 22:48:34'),
	(3, 3, 'dogRambo', 'Medium', 2, '2018-03-04 12:57:17', '2018-03-04 12:57:17'),
	(4, 4, 'dogTeddy', 'Small', 4, '2018-03-04 21:37:29', '2018-03-04 21:37:30');
/*!40000 ALTER TABLE `tbldogs` ENABLE KEYS */;

-- Dumping data for table grooming.tblinventories: ~0 rows (approximately)
/*!40000 ALTER TABLE `tblinventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinventories` ENABLE KEYS */;

-- Dumping data for table grooming.tblratings: ~0 rows (approximately)
/*!40000 ALTER TABLE `tblratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblratings` ENABLE KEYS */;

-- Dumping data for table grooming.tblservices: ~4 rows (approximately)
/*!40000 ALTER TABLE `tblservices` DISABLE KEYS */;
INSERT INTO `tblservices` (`id`, `serviceID`, `serviceName`, `price`, `created_at`, `updated_at`) VALUES
	(1, 1, 'FullWashPackage', 200, '2018-03-04 21:19:18', '2018-03-04 21:19:18'),
	(2, 2, 'HairTrim', 50, '2018-03-04 21:19:18', '2018-03-04 21:19:18'),
	(3, 3, 'EarClean', 30, '2018-03-04 21:19:18', '2018-03-04 21:19:18'),
	(4, 4, 'Nail Clipping', 40, '2018-03-04 21:19:18', '2018-03-04 21:19:18');
/*!40000 ALTER TABLE `tblservices` ENABLE KEYS */;

-- Dumping data for table grooming.tblstaffs: ~4 rows (approximately)
/*!40000 ALTER TABLE `tblstaffs` DISABLE KEYS */;
INSERT INTO `tblstaffs` (`id`, `staffID`, `firstName`, `lastName`, `password`, `phoneNumber`, `email`, `address`, `postalCode`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Jimmy', 'Jones', 'test', '904409393', 'Jimmy@hotmail.com', '43 piles', 'L3T3V3', '2018-03-04 21:23:04', '2018-03-04 21:23:04'),
	(2, 2, 'Kelley', 'Scales', 'test', '32934392', 'Kelley@hotmail.com', '54Kiles', 'K3G 4F2', '2018-03-04 21:23:04', '2018-03-04 21:23:04'),
	(3, 3, 'Tyler', 'Nanki', 'test', '943434232', 'Tyler@hotmail.com', '73Niles', 'K3D3F3', '2018-03-04 21:23:04', '2018-03-04 21:23:04'),
	(4, 4, 'Amar', 'Ali', 'test', '3239329329', 'Amar@hotmail.com', '78Dke', 'D3T3D2', '2018-03-04 21:23:04', '2018-03-04 21:23:04');
/*!40000 ALTER TABLE `tblstaffs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
