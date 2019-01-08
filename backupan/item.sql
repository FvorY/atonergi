-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table bisnis_atonergi.m_item
CREATE TABLE IF NOT EXISTS `m_item` (
  `i_id` int(11) DEFAULT NULL,
  `i_code` varchar(12) DEFAULT NULL,
  `i_name` varchar(50) DEFAULT NULL,
  `i_unit` varchar(50) DEFAULT NULL,
  `i_price` decimal(10,0) DEFAULT NULL COMMENT 'sementara : selanjutnya pakai tabel harga',
  `i_type` varchar(5) DEFAULT NULL,
  `i_minstock` int(11) DEFAULT NULL,
  `i_image` varchar(255) DEFAULT NULL,
  `i_weight` int(11) DEFAULT NULL,
  `i_description` text,
  `i_insert` timestamp NULL DEFAULT NULL,
  `i_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.m_item: ~5 rows (approximately)
/*!40000 ALTER TABLE `m_item` DISABLE KEYS */;
REPLACE INTO `m_item` (`i_id`, `i_code`, `i_name`, `i_unit`, `i_price`, `i_type`, `i_minstock`, `i_image`, `i_weight`, `i_description`, `i_insert`, `i_update`) VALUES
	(1, 'BRG/1', 'Cable', 'Meter', 10000, NULL, 1, NULL, 1, 'Kabel Hitam', NULL, NULL),
	(3, 'BRG/3', 'Pipa', 'Meter', 10000, NULL, 1, NULL, 1, 'Besi', NULL, NULL),
	(2, 'BRG/2', 'Pompa Air', 'Unit', 300000, NULL, 1, NULL, 1, 'Merk Sanyo', NULL, NULL),
	(6, 'BRG/6', 'LMAOghini', 'Unit', 1000000, NULL, 12, '', 1, 'car', '2018-05-23 12:47:16', '2018-05-23 12:47:16'),
	(7, 'BRG/7', 'M1A1', 'Unit', 100000000, NULL, 1, 'assets/barang/1527054732.jpg', 1, 'tank', '2018-05-23 12:52:12', '2018-05-23 12:52:12');
/*!40000 ALTER TABLE `m_item` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
