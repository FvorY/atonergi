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

-- Dumping structure for table bisnis_atonergi.d_penerimaan_barang
CREATE TABLE IF NOT EXISTS `d_penerimaan_barang` (
  `pb_id` int(11) DEFAULT NULL,
  `pb_code` varchar(50) DEFAULT NULL,
  `pb_vendor` varchar(50) DEFAULT NULL,
  `pb_delivery_order` varchar(50) DEFAULT NULL,
  `pb_ref` varchar(50) DEFAULT NULL,
  `pb_date` date DEFAULT NULL,
  `pb_insert` timestamp NULL DEFAULT NULL,
  `pb_update` timestamp NULL DEFAULT NULL,
  `pb_insert_by` varchar(50) DEFAULT NULL,
  `pb_update_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.d_penerimaan_barang: ~0 rows (approximately)
DELETE FROM `d_penerimaan_barang`;
/*!40000 ALTER TABLE `d_penerimaan_barang` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_penerimaan_barang` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.d_penerimaan_barang_dt
CREATE TABLE IF NOT EXISTS `d_penerimaan_barang_dt` (
  `pbdt_id` int(11) DEFAULT NULL,
  `pbdt_code` varchar(50) DEFAULT NULL,
  `pbdt_item` varchar(50) DEFAULT NULL,
  `pbdt_qty_sent` int(20) DEFAULT NULL,
  `pbdt_qty_received` float DEFAULT NULL,
  `pbdt_qty_remains` float DEFAULT NULL,
  `pbdt_insert` timestamp NULL DEFAULT NULL,
  `pbdt_update` timestamp NULL DEFAULT NULL,
  `pbdt_insert_by` varchar(50) DEFAULT NULL,
  `pbdt_update_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.d_penerimaan_barang_dt: ~0 rows (approximately)
DELETE FROM `d_penerimaan_barang_dt`;
/*!40000 ALTER TABLE `d_penerimaan_barang_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_penerimaan_barang_dt` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.d_purchaseorder
CREATE TABLE IF NOT EXISTS `d_purchaseorder` (
  `po_id` int(11) DEFAULT NULL,
  `po_code` varchar(50) DEFAULT NULL,
  `po_date` date DEFAULT NULL,
  `po_shipping_method` varchar(50) DEFAULT NULL,
  `po_shipping_term` varchar(50) DEFAULT NULL,
  `po_shipping_to` varchar(50) DEFAULT NULL,
  `po_nomor_ro` varchar(50) DEFAULT NULL,
  `po_delivery_date` date DEFAULT NULL,
  `po_insert` timestamp NULL DEFAULT NULL,
  `po_update` timestamp NULL DEFAULT NULL,
  `po_subtotal` double DEFAULT NULL,
  `po_sales_tax` double DEFAULT NULL,
  `po_total_net` double DEFAULT NULL,
  `po_vendor` varchar(50) DEFAULT NULL,
  `po_status` varchar(1) DEFAULT 'F',
  `po_print` varchar(1) DEFAULT 'F'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.d_purchaseorder: ~0 rows (approximately)
DELETE FROM `d_purchaseorder`;
/*!40000 ALTER TABLE `d_purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_purchaseorder` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.d_purchaseorder_dt
CREATE TABLE IF NOT EXISTS `d_purchaseorder_dt` (
  `podt_id` int(11) DEFAULT NULL,
  `podt_code` varchar(50) DEFAULT NULL,
  `podt_item` varchar(50) DEFAULT NULL,
  `podt_price` double DEFAULT '0',
  `podt_unit_price` double DEFAULT '0',
  `podt_qty` int(20) DEFAULT '0',
  `podt_insert` timestamp NULL DEFAULT NULL,
  `podt_status` varchar(1) DEFAULT 'F',
  `podt_update` timestamp NULL DEFAULT NULL,
  `podt_qty_approved` int(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.d_purchaseorder_dt: ~0 rows (approximately)
DELETE FROM `d_purchaseorder_dt`;
/*!40000 ALTER TABLE `d_purchaseorder_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_purchaseorder_dt` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.d_requestorder
CREATE TABLE IF NOT EXISTS `d_requestorder` (
  `ro_id` int(11) DEFAULT NULL,
  `ro_code` varchar(50) DEFAULT NULL,
  `ro_vendor` varchar(50) DEFAULT NULL,
  `ro_price` double DEFAULT '0',
  `ro_qty` double DEFAULT '0',
  `ro_status_po` varchar(1) DEFAULT 'F',
  `ro_status` varchar(1) DEFAULT 'F',
  `ro_insert` timestamp NULL DEFAULT NULL,
  `ro_update` timestamp NULL DEFAULT NULL,
  `ro_qty_approved` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.d_requestorder: ~0 rows (approximately)
DELETE FROM `d_requestorder`;
/*!40000 ALTER TABLE `d_requestorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_requestorder` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.d_requestorder_dt
CREATE TABLE IF NOT EXISTS `d_requestorder_dt` (
  `rodt_id` int(11) DEFAULT NULL,
  `rodt_code` varchar(50) DEFAULT NULL,
  `rodt_barang` varchar(50) DEFAULT NULL,
  `rodt_price` double DEFAULT '0',
  `rodt_unit_price` double DEFAULT '0',
  `rodt_unit` varchar(50) DEFAULT '0',
  `rodt_qty` double DEFAULT '0',
  `rodt_insert` timestamp NULL DEFAULT NULL,
  `rodt_status` varchar(1) DEFAULT NULL,
  `rodt_update` timestamp NULL DEFAULT NULL,
  `rodt_qty_approved` double DEFAULT '0',
  `rodt_status_po` varchar(1) DEFAULT 'F'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.d_requestorder_dt: ~0 rows (approximately)
DELETE FROM `d_requestorder_dt`;
/*!40000 ALTER TABLE `d_requestorder_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_requestorder_dt` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
