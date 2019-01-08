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

-- Dumping structure for table bisnis_atonergi.i_stock_gudang
CREATE TABLE IF NOT EXISTS `i_stock_gudang` (
  `sg_id` int(11) DEFAULT NULL,
  `sg_iditem` varchar(50) DEFAULT NULL,
  `sg_qty` int(11) DEFAULT NULL,
  `sg_harga` double DEFAULT NULL,
  `sg_insert` timestamp NULL DEFAULT NULL,
  `sg_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.i_stock_gudang: ~2 rows (approximately)
/*!40000 ALTER TABLE `i_stock_gudang` DISABLE KEYS */;
REPLACE INTO `i_stock_gudang` (`sg_id`, `sg_iditem`, `sg_qty`, `sg_harga`, `sg_insert`, `sg_update`) VALUES
	(1, 'BRG/1', 41, 10000, NULL, NULL),
	(2, 'BRG/3', 41, 10000, NULL, NULL);
/*!40000 ALTER TABLE `i_stock_gudang` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.i_stock_mutasi
CREATE TABLE IF NOT EXISTS `i_stock_mutasi` (
  `sm_id` int(11) NOT NULL,
  `sm_iddetail` int(11) NOT NULL,
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
  PRIMARY KEY (`sm_id`,`sm_iddetail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.i_stock_mutasi: ~6 rows (approximately)
/*!40000 ALTER TABLE `i_stock_mutasi` DISABLE KEYS */;
REPLACE INTO `i_stock_mutasi` (`sm_id`, `sm_iddetail`, `sm_item`, `sm_hpp`, `sm_qty`, `sm_use`, `sm_sisa`, `sm_description`, `sm_ref`, `sm_insert`, `sm_update`, `sm_mutcat`, `sm_deliveryorder`) VALUES
	(1, 1, 'BRG/1', 10000, 20, 0, 20, 'PENERIMAAN BARANG', 'PB-001//0618', '2018-06-08 01:47:50', NULL, 1, '123123'),
	(1, 2, 'BRG/1', 10000, 1, 0, 1, 'PENERIMAAN BARANG', 'PB-001//0618', '2018-06-08 01:48:08', '2018-06-08 01:48:08', 1, '123123'),
	(1, 3, 'BRG/1', 10000, 20, 0, 20, 'PENERIMAAN BARANG', 'PB-002//0618', '2018-06-08 01:58:19', '2018-06-08 01:58:19', 1, '33323'),
	(2, 1, 'BRG/3', 10000, 20, 0, 20, 'PENERIMAAN BARANG', 'PB-001//0618', '2018-06-08 01:47:50', NULL, 1, '123123'),
	(2, 2, 'BRG/3', 10000, 1, 0, 1, 'PENERIMAAN BARANG', 'PB-001//0618', '2018-06-08 01:48:08', '2018-06-08 01:48:08', 1, '123123'),
	(2, 3, 'BRG/3', 10000, 20, 0, 20, 'PENERIMAAN BARANG', 'PB-002//0618', '2018-06-08 01:58:19', '2018-06-08 01:58:19', 1, '33323');
/*!40000 ALTER TABLE `i_stock_mutasi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
