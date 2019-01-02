-- --------------------------------------------------------
-- Host:                         alamraya.co.id
-- Server version:               10.0.35-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for bisnis_atonergi
CREATE DATABASE IF NOT EXISTS `bisnis_atonergi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bisnis_atonergi`;

-- Dumping structure for table bisnis_atonergi.d_npenawaran
CREATE TABLE IF NOT EXISTS `d_npenawaran` (
  `np_id` int(11) DEFAULT NULL,
  `np_kode` varchar(50) DEFAULT NULL,
  `np_kodeitem` varchar(50) DEFAULT NULL,
  `np_marketing` varchar(50) DEFAULT NULL,
  `np_price` double(50,2) DEFAULT NULL,
  `np_lowerlimit` double(50,2) DEFAULT NULL,
  `np_insert` timestamp NULL DEFAULT NULL,
  `np_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.d_npenawaran: ~8 rows (approximately)
DELETE FROM `d_npenawaran`;
/*!40000 ALTER TABLE `d_npenawaran` DISABLE KEYS */;
INSERT INTO `d_npenawaran` (`np_id`, `np_kode`, `np_kodeitem`, `np_marketing`, `np_price`, `np_lowerlimit`, `np_insert`, `np_update`) VALUES
	(6, NULL, 'BRG/2', 'MKT/00001', 300000.00, 1000000.00, '2018-05-24 12:14:47', '2018-05-24 02:13:31'),
	(9, NULL, 'BRG/2', 'MKT/00001', 300000.00, 123123123.00, '2018-05-24 01:04:08', NULL),
	(6, NULL, 'BRG/2', 'MKT/00001', 300000.00, 1000000.00, '2018-05-24 12:14:47', '2018-05-24 02:13:31'),
	(9, NULL, 'BRG/2', 'MKT/00001', 300000.00, 123123123.00, '2018-05-24 01:04:08', NULL),
	(6, NULL, 'BRG/2', 'MKT/00001', 300000.00, 1000000.00, '2018-05-24 12:14:47', '2018-05-24 02:13:31'),
	(9, NULL, 'BRG/2', 'MKT/00001', 300000.00, 123123123.00, '2018-05-24 01:04:08', NULL),
	(6, NULL, 'BRG/2', 'MKT/00001', 300000.00, 1000000.00, '2018-05-24 12:14:47', '2018-05-24 02:13:31'),
	(9, NULL, 'BRG/2', 'MKT/00001', 300000.00, 123123123.00, '2018-05-24 01:04:08', NULL);
/*!40000 ALTER TABLE `d_npenawaran` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
