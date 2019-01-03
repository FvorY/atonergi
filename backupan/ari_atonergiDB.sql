-- --------------------------------------------------------
-- Host:                         alamraya.co.id
-- Server version:               10.0.35-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
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
  `i_price` decimal(15,0) DEFAULT NULL COMMENT 'sementara : selanjutnya pakai tabel harga',
  `i_type` varchar(50) DEFAULT NULL,
  `i_minstock` int(11) DEFAULT NULL,
  `i_image` varchar(255) DEFAULT NULL,
  `i_weight` int(11) DEFAULT NULL,
  `i_description` text,
  `i_insert` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `i_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.m_item: ~5 rows (approximately)
/*!40000 ALTER TABLE `m_item` DISABLE KEYS */;
INSERT INTO `m_item` (`i_id`, `i_code`, `i_name`, `i_unit`, `i_price`, `i_type`, `i_minstock`, `i_image`, `i_weight`, `i_description`, `i_insert`, `i_update`) VALUES
	(1, 'BRG/0001', 'Cable', 'Meter', 10000, 'G1212', 1, 'GBR_BRG_11527252813.jpg', 1, 'Kabel Hitam', NULL, '2018-05-25 19:54:32'),
	(2, 'BRG/0002', 'Pompa Air', 'Unit', 300000, 'G1212', 1, '', 1, 'Merk Sanyo', NULL, '2018-05-25 19:55:12'),
	(3, 'BRG/0003', 'Controller', 'PCS', NULL, NULL, NULL, 'GBR_BRG_31527219789.jpg', NULL, NULL, '2018-05-23 22:49:22', '2018-05-25 10:43:10'),
	(4, 'BRG/0004', 'Ring', 'PCS', NULL, NULL, NULL, 'GBR_BRG_41527219708.png', NULL, NULL, '2018-05-23 22:50:52', '2018-05-25 10:41:49');
/*!40000 ALTER TABLE `m_item` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.m_item_type
CREATE TABLE IF NOT EXISTS `m_item_type` (
  `it_id` int(11) DEFAULT NULL,
  `it_code` varchar(50) DEFAULT NULL,
  `it_name` varchar(50) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.m_item_type: 4 rows
/*!40000 ALTER TABLE `m_item_type` DISABLE KEYS */;
INSERT INTO `m_item_type` (`it_id`, `it_code`, `it_name`, `CREATED_AT`, `UPDATED_AT`) VALUES
	(1, 'MBT-70', 'Main Battle Tank 70', '2018-05-25 16:29:12', NULL),
	(3, 'GS-9G', 'GGS', '2018-05-25 18:52:33', NULL),
	(2, 'KPZ-70', 'Kpz 70', '2018-05-25 16:56:32', NULL),
	(4, 'G1212AYU', 'GG196', '2018-05-25 19:08:39', '2018-05-25 20:23:17');
/*!40000 ALTER TABLE `m_item_type` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
