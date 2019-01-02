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

-- Dumping structure for table atonergi.d_sales_order
CREATE TABLE IF NOT EXISTS `d_sales_order` (
  `so_id` int(11) NOT NULL,
  `so_nota` varchar(50) NOT NULL,
  `so_ref` varchar(50) DEFAULT NULL,
  `so_note` varchar(300) DEFAULT NULL,
  `so_type` varchar(50) DEFAULT NULL,
  `so_amount` double DEFAULT NULL,
  `so_remain` double DEFAULT NULL,
  `so_method` varchar(50) DEFAULT NULL,
  `so_note2` varchar(300) DEFAULT NULL,
  `so_account` varchar(20) DEFAULT NULL,
  `so_date` date DEFAULT NULL,
  `so_update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `so_update_by` varchar(50) DEFAULT NULL,
  `so_create_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`so_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_sales_order: ~3 rows (approximately)
DELETE FROM `d_sales_order`;
/*!40000 ALTER TABLE `d_sales_order` DISABLE KEYS */;
INSERT INTO `d_sales_order` (`so_id`, `so_nota`, `so_ref`, `so_note`, `so_type`, `so_amount`, `so_remain`, `so_method`, `so_note2`, `so_account`, `so_date`, `so_update_at`, `so_update_by`, `so_create_by`) VALUES
	(1, 'SO-001/SWP/SWP/052018', 'QO-014/SWP/SWP/052018', 'xxx', 'Down Payment', 20000000, 13500000, 'tunai', 'xxx', 'Cash', '2018-05-29', '2018-05-29 00:46:40', 'admin', 'admin'),
	(2, 'SO-002/WP/SWP/052018', 'QO-001/WP/SWP/052018', 'xx', 'Down Payment', 10000000, 7500000, 'tunai', 'xx', 'Cash', '2018-05-30', '2018-05-30 03:32:06', 'admin', 'admin'),
	(3, 'SO-003/SWP/SWP/052018', 'QO-013/SWP/SWP/052018', 'xx', 'Down Payment', 5000000, 5000000, 'tunai', 'xx', 'Cash', '2018-05-30', '2018-05-30 04:20:10', 'admin', 'admin');
/*!40000 ALTER TABLE `d_sales_order` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
