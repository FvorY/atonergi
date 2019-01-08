-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.34-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table atonergi.d_payment_order
CREATE TABLE IF NOT EXISTS `d_payment_order` (
  `po_id` int(11) NOT NULL,
  `po_ref` varchar(50) NOT NULL,
  `po_nota` varchar(50) NOT NULL,
  `po_total` double NOT NULL,
  `po_status` varchar(50) NOT NULL,
  `po_method` varchar(50) NOT NULL,
  `po_account` varchar(50) NOT NULL,
  `po_date` date NOT NULL,
  `po_type` varchar(50) NOT NULL,
  `po_note` text NOT NULL,
  `po_note2` text NOT NULL,
  `po_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `po_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_created_by` varchar(50) NOT NULL,
  `po_updated_by` varchar(50) NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_payment_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_payment_order` DISABLE KEYS */;
REPLACE INTO `d_payment_order` (`po_id`, `po_ref`, `po_nota`, `po_total`, `po_status`, `po_method`, `po_account`, `po_date`, `po_type`, `po_note`, `po_note2`, `po_created_at`, `po_updated_at`, `po_created_by`, `po_updated_by`) VALUES
	(1, 'QO-001/WP/SM-PS/102018', 'PO-001/WP/SM-PS/102018', 1650000, 'Released', 'tunai', 'Cash', '2018-10-07', 'Payment', 'tes', 'tes', '2018-10-07 23:19:47', '2018-10-07 23:19:47', 'admin', 'admin');
/*!40000 ALTER TABLE `d_payment_order` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_work_order
CREATE TABLE IF NOT EXISTS `d_work_order` (
  `wo_id` int(11) NOT NULL,
  `wo_ref` varchar(50) DEFAULT NULL,
  `wo_nota` varchar(50) NOT NULL,
  `wo_note` varchar(300) DEFAULT NULL,
  `wo_type` varchar(50) DEFAULT NULL,
  `wo_amount` double DEFAULT NULL,
  `wo_remain` double DEFAULT NULL,
  `wo_method` varchar(50) DEFAULT NULL,
  `wo_note2` varchar(300) DEFAULT NULL,
  `wo_account` varchar(20) DEFAULT NULL,
  `wo_date` date DEFAULT NULL,
  `wo_status` varchar(50) DEFAULT NULL,
  `wo_update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `wo_update_by` varchar(50) DEFAULT NULL,
  `wo_create_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`wo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table atonergi.d_work_order: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_work_order` DISABLE KEYS */;
REPLACE INTO `d_work_order` (`wo_id`, `wo_ref`, `wo_nota`, `wo_note`, `wo_type`, `wo_amount`, `wo_remain`, `wo_method`, `wo_note2`, `wo_account`, `wo_date`, `wo_status`, `wo_update_at`, `wo_update_by`, `wo_create_by`) VALUES
	(14, 'QO-001/SWP/PU/102018', 'WO-003/SWP/PU/102018', 'tes', 'Down Payment', 15000000, 11950000, 'tunai', 'tes', 'Cash', '2018-10-06', 'Printed', '2018-10-06 18:42:55', 'admin', 'admin'),
	(15, 'QO-001/WP/SM-PS/102018', 'WO-004/WP/SM-PS/102018', 'tes', 'Down Payment', 5600000, 2650000, 'tunai', 'tes', 'Cash', '2018-10-06', 'Printed', '2018-10-06 19:12:49', 'admin', 'admin');
/*!40000 ALTER TABLE `d_work_order` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
