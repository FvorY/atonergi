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

-- Dumping structure for table bisnis_atonergi.i_stock_gudang
CREATE TABLE IF NOT EXISTS `i_stock_gudang` (
  `sg_id` int(11) NOT NULL AUTO_INCREMENT,
  `sg_iditem` varchar(50) DEFAULT NULL,
  `sg_qty` int(11) DEFAULT NULL,
  `sg_harga` double DEFAULT NULL,
  `sg_insert` timestamp NULL DEFAULT NULL,
  `sg_update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.i_stock_gudang: ~0 rows (approximately)
DELETE FROM `i_stock_gudang`;
/*!40000 ALTER TABLE `i_stock_gudang` DISABLE KEYS */;
/*!40000 ALTER TABLE `i_stock_gudang` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.i_stock_mutasi
CREATE TABLE IF NOT EXISTS `i_stock_mutasi` (
  `sm_id` int(11) NOT NULL AUTO_INCREMENT,
  `sm_iddetail` int(11) unsigned zerofill DEFAULT NULL,
  `sm_item` varchar(50) DEFAULT NULL,
  `sm_hpp` double DEFAULT NULL,
  `sm_qty` float DEFAULT NULL,
  `sm_use` float DEFAULT NULL,
  `sm_sisa` float DEFAULT NULL,
  `sm_description` varchar(255) DEFAULT NULL,
  `sm_ref` varchar(50) DEFAULT NULL,
  `sm_insert` timestamp NULL DEFAULT NULL,
  `sm_update` timestamp NULL DEFAULT NULL,
  `sm_mutcat` int(11) DEFAULT NULL,
  `sm_deliveryorder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.i_stock_mutasi: ~0 rows (approximately)
DELETE FROM `i_stock_mutasi`;
/*!40000 ALTER TABLE `i_stock_mutasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `i_stock_mutasi` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.i_stock_opname
CREATE TABLE IF NOT EXISTS `i_stock_opname` (
  `so_id` int(11) DEFAULT NULL,
  `so_code` varchar(50) DEFAULT NULL,
  `so_bulan` date DEFAULT NULL,
  `so_create_at` timestamp NULL DEFAULT NULL,
  `so_update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.i_stock_opname: ~0 rows (approximately)
DELETE FROM `i_stock_opname`;
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
DELETE FROM `i_stock_opname_dt`;
/*!40000 ALTER TABLE `i_stock_opname_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `i_stock_opname_dt` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
