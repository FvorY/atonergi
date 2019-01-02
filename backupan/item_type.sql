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

-- Dumping structure for table atonergi.m_item_type
CREATE TABLE IF NOT EXISTS `m_item_type` (
  `it_id` int(11) DEFAULT NULL,
  `it_code` varchar(50) DEFAULT NULL,
  `it_name` varchar(50) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_item_type: 2 rows
DELETE FROM `m_item_type`;
/*!40000 ALTER TABLE `m_item_type` DISABLE KEYS */;
INSERT INTO `m_item_type` (`it_id`, `it_code`, `it_name`, `CREATED_AT`, `UPDATED_AT`) VALUES
	(1, 'PS2-9G', 'ps2-9g', '2018-05-26 08:35:01', '2018-05-26 08:36:50'),
	(2, 'PS2-1800', 'ps2-1800', '2018-05-26 08:37:20', NULL);
/*!40000 ALTER TABLE `m_item_type` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
