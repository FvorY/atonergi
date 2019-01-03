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

-- Dumping structure for table bisnis_atonergi.i_stock_opname
CREATE TABLE IF NOT EXISTS `i_stock_opname` (
  `so_id` int(11) DEFAULT NULL,
  `so_code` varchar(50) DEFAULT NULL,
  `so_bulan` date DEFAULT NULL,
  `so_create_at` timestamp NULL DEFAULT NULL,
  `so_update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.i_stock_opname: ~0 rows (approximately)
/*!40000 ALTER TABLE `i_stock_opname` DISABLE KEYS */;
/*!40000 ALTER TABLE `i_stock_opname` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.i_stock_opname_dt
CREATE TABLE IF NOT EXISTS `i_stock_opname_dt` (
  `sodt_id` int(11) DEFAULT NULL,
  `sodt_code` varchar(50) DEFAULT NULL,
  `sodt_item` varchar(50) DEFAULT NULL,
  `sodt_system` double DEFAULT NULL,
  `sodt_real` double DEFAULT NULL,
  `sodt_status_item` varchar(50) DEFAULT NULL,
  `sodt_status_total` double DEFAULT NULL,
  `sodt_description` varchar(255) DEFAULT NULL,
  `sodt_create_at` timestamp NULL DEFAULT NULL,
  `sodt_update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.i_stock_opname_dt: ~0 rows (approximately)
/*!40000 ALTER TABLE `i_stock_opname_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `i_stock_opname_dt` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
