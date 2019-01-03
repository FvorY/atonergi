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

-- Dumping structure for table atonergi.d_quotation
CREATE TABLE IF NOT EXISTS `d_quotation` (
  `q_id` int(11) NOT NULL,
  `q_nota` varchar(50) DEFAULT NULL,
  `q_subtotal` double DEFAULT NULL,
  `q_tax` double DEFAULT NULL,
  `q_total` double DEFAULT NULL,
  `q_dp` double DEFAULT '0',
  `q_remain` double DEFAULT '0',
  `q_customer` varchar(50) DEFAULT NULL,
  `q_address` varchar(50) DEFAULT NULL,
  `q_type` varchar(50) DEFAULT NULL,
  `q_type_product` varchar(50) DEFAULT NULL,
  `q_shipping_method` varchar(50) DEFAULT NULL,
  `q_date` date DEFAULT NULL,
  `q_term` varchar(50) DEFAULT NULL,
  `q_delivery` date DEFAULT NULL,
  `q_ship_to` varchar(50) DEFAULT NULL,
  `q_marketing` varchar(50) DEFAULT NULL,
  `q_status` int(10) DEFAULT NULL,
  `q_created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `q_updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `q_update_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_quotation: ~3 rows (approximately)
/*!40000 ALTER TABLE `d_quotation` DISABLE KEYS */;
REPLACE INTO `d_quotation` (`q_id`, `q_nota`, `q_subtotal`, `q_tax`, `q_total`, `q_dp`, `q_remain`, `q_customer`, `q_address`, `q_type`, `q_type_product`, `q_shipping_method`, `q_date`, `q_term`, `q_delivery`, `q_ship_to`, `q_marketing`, `q_status`, `q_created_at`, `q_updated_at`, `q_update_by`) VALUES
	(1, 'QO-001/SWP/PSG-002/072018', 4500000, 0, 4500000, 0, 0, 'MKT/00001', 'jl.asd', 'SWP', 'PSG-002', 'Sea', '2018-07-04', 'xxx', '2018-07-07', 'bandung', '1', 1, '2018-07-04 13:42:43', '2018-07-04 13:46:56', 'admin'),
	(2, 'QO-002/SWP/PSG-002/072018', 5000000, 0, 5000000, 0, 0, 'MKT/00001', 'jl.asd', 'SWP', 'PSG-002', 'Sea', '2018-07-04', '1', '2018-07-07', 'asd', '2', 1, '2018-07-04 13:53:14', '2018-07-04 13:53:36', 'admin'),
	(3, 'QO-003/SWP/PSG-002/072018', 7075000, 0, 7075000, 0, 0, 'MKT/00001', 'jl.asd', 'SWP', 'PSG-002', 'Sea', '2018-07-04', 'sss', '2018-07-28', 'sss', '2', 2, '2018-07-04 13:54:28', '2018-07-04 14:30:01', 'admin');
/*!40000 ALTER TABLE `d_quotation` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_quotation_dt
CREATE TABLE IF NOT EXISTS `d_quotation_dt` (
  `qd_id` int(11) NOT NULL,
  `qd_dt` int(11) NOT NULL,
  `qd_item` varchar(50) DEFAULT NULL,
  `qd_qty` int(11) DEFAULT NULL,
  `qd_description` varchar(50) DEFAULT NULL,
  `qd_price` double DEFAULT NULL,
  `qd_total` double DEFAULT NULL,
  `qd_update_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`qd_id`,`qd_dt`),
  CONSTRAINT `FK_d_quotation_dt_d_quotation` FOREIGN KEY (`qd_id`) REFERENCES `d_quotation` (`q_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_quotation_dt: ~5 rows (approximately)
/*!40000 ALTER TABLE `d_quotation_dt` DISABLE KEYS */;
REPLACE INTO `d_quotation_dt` (`qd_id`, `qd_dt`, `qd_item`, `qd_qty`, `qd_description`, `qd_price`, `qd_total`, `qd_update_by`) VALUES
	(1, 1, 'BRG/0001', 1, 'cx', 4500000, 4500000, 'admin'),
	(2, 1, 'BRG/0004', 1, 'xx', 5000000, 5000000, 'admin'),
	(3, 1, 'BRG/0002', 2, 'xxx', 3500000, 7000000, 'admin'),
	(3, 2, 'BRG/0003', 5, 'xx', 15000, 75000, 'admin');
/*!40000 ALTER TABLE `d_quotation_dt` ENABLE KEYS */;

-- Dumping structure for table atonergi.m_item
CREATE TABLE IF NOT EXISTS `m_item` (
  `i_id` int(11) NOT NULL,
  `i_code` varchar(12) DEFAULT NULL,
  `i_name` varchar(50) DEFAULT NULL,
  `i_unit` varchar(50) DEFAULT NULL,
  `i_price` decimal(15,0) DEFAULT NULL COMMENT 'sementara : selanjutnya pakai tabel harga',
  `i_sell_price` decimal(15,0) DEFAULT NULL,
  `i_lower_price` decimal(15,0) DEFAULT NULL,
  `i_active` enum('Y','N') DEFAULT 'Y',
  `i_jenis` enum('ITEM','BUNDLE') DEFAULT 'ITEM',
  `i_type` varchar(50) DEFAULT NULL,
  `i_minstock` int(11) DEFAULT NULL,
  `i_image` varchar(255) DEFAULT NULL,
  `i_weight` int(11) DEFAULT NULL,
  `i_description` text,
  `i_insert_at` timestamp NULL DEFAULT NULL,
  `i_update_at` timestamp NULL DEFAULT NULL,
  `i_insert_by` varchar(50) DEFAULT NULL,
  `i_update_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_item: ~5 rows (approximately)
/*!40000 ALTER TABLE `m_item` DISABLE KEYS */;
REPLACE INTO `m_item` (`i_id`, `i_code`, `i_name`, `i_unit`, `i_price`, `i_sell_price`, `i_lower_price`, `i_active`, `i_jenis`, `i_type`, `i_minstock`, `i_image`, `i_weight`, `i_description`, `i_insert_at`, `i_update_at`, `i_insert_by`, `i_update_by`) VALUES
	(1, 'BRG/0001', 'tes', '1', 4500000, 3500000, 3500000, 'Y', 'ITEM', 'PSG-002', 2, 'barang_1.jpg', 2, 'cx', '2018-07-03 15:33:34', '2018-07-03 15:33:34', 'admin', 'admin'),
	(2, 'BRG/0002', 'pompa sm-233', '1', 3500000, 3500000, 3500000, 'Y', 'ITEM', 'PSG-002', 3, 'barang_2.jpg', 3, 'xxx', '2018-07-03 15:33:45', '2018-07-03 15:33:45', 'admin', 'admin'),
	(3, 'BRG/0003', 'cable', '1', 15000, 15000, 15000, 'Y', 'ITEM', 'PSG-002', 2, 'barang_3.jpg', 2, 'xx', '2018-07-03 15:33:50', '2018-07-03 15:33:50', 'admin', 'admin'),
	(4, 'BRG/0004', 'pompa rd-278', '1', 5000000, 5000000, 5000000, 'Y', 'ITEM', 'PSG-003', 2, 'barang_4.jpg', 2, 'xx', '2018-07-03 15:40:50', '2018-07-03 15:40:50', 'admin', 'admin'),
	(5, 'BND/0005', 'Bundle Dengan Kabel', '4', 17500000, 17500000, 17500000, 'Y', 'BUNDLE', '0', 0, '0', 0, 'xx', '2018-07-04 12:23:32', '2018-07-04 13:04:19', 'admin', 'admin');
/*!40000 ALTER TABLE `m_item` ENABLE KEYS */;

-- Dumping structure for table atonergi.m_item_dt
CREATE TABLE IF NOT EXISTS `m_item_dt` (
  `id_id` int(11) NOT NULL,
  `id_detailid` int(11) NOT NULL,
  `id_item` varchar(50) DEFAULT NULL,
  `id_unit` varchar(50) DEFAULT NULL,
  `id_qty` int(11) DEFAULT NULL,
  `id_price_unit` decimal(20,2) DEFAULT NULL,
  `id_total_price` decimal(20,2) DEFAULT NULL,
  `id_insert_at` timestamp NULL DEFAULT NULL,
  `id_update_at` timestamp NULL DEFAULT NULL,
  `id_insert_by` varchar(50) DEFAULT NULL,
  `id_update_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_id`,`id_detailid`),
  CONSTRAINT `FK_m_item_dt_m_item` FOREIGN KEY (`id_id`) REFERENCES `m_item` (`i_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_item_dt: ~2 rows (approximately)
/*!40000 ALTER TABLE `m_item_dt` DISABLE KEYS */;
REPLACE INTO `m_item_dt` (`id_id`, `id_detailid`, `id_item`, `id_unit`, `id_qty`, `id_price_unit`, `id_total_price`, `id_insert_at`, `id_update_at`, `id_insert_by`, `id_update_by`) VALUES
	(5, 1, 'BRG/0002', 'Ls', 2, 3500000.00, 7000000.00, '2018-07-04 13:04:19', '2018-07-04 13:04:19', 'admin', 'admin'),
	(5, 6, 'BRG/0002', 'Ls', 3, 3500000.00, 10500000.00, '2018-07-04 13:04:19', '2018-07-04 13:04:19', 'admin', 'admin');
/*!40000 ALTER TABLE `m_item_dt` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
