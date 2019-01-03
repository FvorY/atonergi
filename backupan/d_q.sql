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

-- Dumping structure for table atonergi.d_daftar_menu
CREATE TABLE IF NOT EXISTS `d_daftar_menu` (
  `dm_id` int(11) DEFAULT NULL,
  `dm_nama` varchar(50) DEFAULT NULL,
  `dm_group` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_daftar_menu: ~56 rows (approximately)
DELETE FROM `d_daftar_menu`;
/*!40000 ALTER TABLE `d_daftar_menu` DISABLE KEYS */;
INSERT INTO `d_daftar_menu` (`dm_id`, `dm_nama`, `dm_group`) VALUES
	(1, 'SETTING LEVEL ACCOUNT', 1),
	(2, 'SETTING ACCOUNT', 1),
	(3, 'SETTING HAK AKSES', 1),
	(4, 'SETTING DAFTAR MENU', 1),
	(5, 'MASTER DATA VENDOR', 2),
	(6, 'MASTER DATA CUSTOMER', 2),
	(7, 'MASTER DATA PEGAWAI', 2),
	(8, 'MASTER DATA AKUN KEUANGAN', 2),
	(9, 'MASTER DATA TRANSAKSI KEUANGAN', 2),
	(11, 'QUOTATION', 3),
	(12, 'TIM MARKETING', 3),
	(13, 'NILAI PENAWARAN', 3),
	(14, 'KLASIFIKASI PENAWARAN', 3),
	(15, 'PENAWARAN PDF', 3),
	(16, 'PROFORMA INVOICE', 4),
	(17, 'PEMBAYARAN DEPOSIT', 4),
	(18, 'SALES ORDER', 4),
	(19, 'CHECK STOCK', 4),
	(20, 'WORK ORDER', 4),
	(21, 'SALES INVOICE', 4),
	(22, 'CHECKLIST FORM', 4),
	(23, 'PAYMENT ORDER', 4),
	(24, 'RENCANA PEMBELIAN', 5),
	(25, 'BELANJA LANGSUNG', 5),
	(26, 'PURCHASE ORDER', 5),
	(27, 'PENGADAAN BARANG', 6),
	(28, 'PENGIRIMAN BARANG', 6),
	(29, 'PEMASANGAN', 6),
	(30, 'SCHEDULE UJI COBA', 6),
	(31, 'SALES COMMON', 6),
	(32, 'TECHNICIAN FEE', 6),
	(33, 'TANDA TERIMA SERVICE', 7),
	(34, 'KEBUTUHAN BIAYA', 7),
	(35, 'REPAIR ORDER', 7),
	(36, 'RENCANA TINDAKAN', 7),
	(37, 'REPAIR REPORT', 7),
	(38, 'BARANG MASUK', 8),
	(39, 'BARANG KELUAR', 8),
	(40, 'STOCK OPNAME', 8),
	(41, 'MAINTENANCE', 8),
	(42, 'SURAT PINJAM BARANG', 8),
	(43, 'BARCODE SUPPORT', 8),
	(44, 'REKRUITMENT', 9),
	(45, 'PAYROLL', 9),
	(46, 'FREELANCE', 9),
	(47, 'KESEJAHTERAAN', 9),
	(48, 'KPI', 9),
	(49, 'COST MANAJEMEN', 10),
	(50, 'BOOK KEEPING', 10),
	(51, 'REPORTING', 10),
	(52, 'EVALUATING', 10),
	(53, 'IRVENTARISASI', 11),
	(54, 'HISTORY', 11),
	(55, 'PENYUSUTAN', 11),
	(10, 'MASTER DATA BUNDLE ITEM', 2),
	(56, 'QUOTE MARKETING', 3);
/*!40000 ALTER TABLE `d_daftar_menu` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_grup_menu
CREATE TABLE IF NOT EXISTS `d_grup_menu` (
  `gm_id` int(11) NOT NULL,
  `gm_nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_grup_menu: ~11 rows (approximately)
DELETE FROM `d_grup_menu`;
/*!40000 ALTER TABLE `d_grup_menu` DISABLE KEYS */;
INSERT INTO `d_grup_menu` (`gm_id`, `gm_nama`) VALUES
	(1, 'Setting'),
	(2, 'Master'),
	(3, 'Quotation'),
	(4, 'Order'),
	(5, 'Purchase'),
	(6, 'Project Manajemen'),
	(7, 'After Sales Service'),
	(8, 'Inventory'),
	(9, 'HRD'),
	(10, 'Finance'),
	(11, 'Manajemen Aset');
/*!40000 ALTER TABLE `d_grup_menu` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_hak_akses
CREATE TABLE IF NOT EXISTS `d_hak_akses` (
  `ha_id` int(11) NOT NULL,
  `ha_dt` int(11) NOT NULL,
  `ha_level` varchar(50) NOT NULL,
  `ha_menu` varchar(50) DEFAULT NULL,
  `aktif` bit(1) NOT NULL DEFAULT b'0',
  `tambah` bit(1) NOT NULL DEFAULT b'0',
  `ubah` bit(1) NOT NULL DEFAULT b'0',
  `hapus` bit(1) NOT NULL DEFAULT b'0',
  `print` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ha_id`,`ha_dt`,`ha_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_hak_akses: ~112 rows (approximately)
DELETE FROM `d_hak_akses`;
/*!40000 ALTER TABLE `d_hak_akses` DISABLE KEYS */;
INSERT INTO `d_hak_akses` (`ha_id`, `ha_dt`, `ha_level`, `ha_menu`, `aktif`, `tambah`, `ubah`, `hapus`, `print`) VALUES
	(1, 1, 'ADMIN KEUANGAN', 'SETTING LEVEL ACCOUNT', b'1', b'1', b'1', b'1', b'1'),
	(1, 1, 'SUPERUSER', 'SETTING LEVEL ACCOUNT', b'1', b'1', b'1', b'1', b'1'),
	(2, 2, 'ADMIN KEUANGAN', 'SETTING ACCOUNT', b'1', b'1', b'1', b'1', b'1'),
	(2, 2, 'SUPERUSER', 'SETTING ACCOUNT', b'1', b'1', b'1', b'1', b'1'),
	(3, 3, 'ADMIN KEUANGAN', 'SETTING HAK AKSES', b'1', b'1', b'1', b'1', b'1'),
	(3, 3, 'SUPERUSER', 'SETTING HAK AKSES', b'1', b'1', b'1', b'1', b'1'),
	(4, 4, 'ADMIN KEUANGAN', 'SETTING DAFTAR MENU', b'1', b'1', b'1', b'1', b'1'),
	(4, 4, 'SUPERUSER', 'SETTING DAFTAR MENU', b'1', b'1', b'1', b'1', b'1'),
	(5, 5, 'ADMIN KEUANGAN', 'MASTER DATA VENDOR', b'1', b'1', b'1', b'1', b'1'),
	(5, 5, 'SUPERUSER', 'MASTER DATA VENDOR', b'1', b'1', b'1', b'1', b'1'),
	(6, 6, 'ADMIN KEUANGAN', 'MASTER DATA CUSTOMER', b'1', b'1', b'1', b'1', b'1'),
	(6, 6, 'SUPERUSER', 'MASTER DATA CUSTOMER', b'1', b'1', b'1', b'1', b'1'),
	(7, 7, 'ADMIN KEUANGAN', 'MASTER DATA PEGAWAI', b'1', b'1', b'1', b'1', b'1'),
	(7, 7, 'SUPERUSER', 'MASTER DATA PEGAWAI', b'1', b'1', b'1', b'1', b'1'),
	(8, 8, 'ADMIN KEUANGAN', 'MASTER DATA AKUN KEUANGAN', b'1', b'1', b'1', b'1', b'1'),
	(8, 8, 'SUPERUSER', 'MASTER DATA AKUN KEUANGAN', b'1', b'1', b'1', b'1', b'1'),
	(9, 9, 'ADMIN KEUANGAN', 'MASTER DATA TRANSAKSI KEUANGAN', b'1', b'1', b'1', b'1', b'1'),
	(9, 9, 'SUPERUSER', 'MASTER DATA TRANSAKSI KEUANGAN', b'1', b'1', b'1', b'1', b'1'),
	(10, 10, 'ADMIN KEUANGAN', 'MASTER DATA BUNDLE ITEM', b'1', b'1', b'1', b'1', b'1'),
	(10, 10, 'SUPERUSER', 'MASTER DATA BUNDLE ITEM', b'1', b'1', b'1', b'1', b'1'),
	(11, 11, 'ADMIN KEUANGAN', 'QUOTATION', b'1', b'1', b'1', b'1', b'1'),
	(11, 11, 'SUPERUSER', 'QUOTATION', b'1', b'1', b'1', b'1', b'1'),
	(12, 12, 'ADMIN KEUANGAN', 'TIM MARKETING', b'1', b'1', b'1', b'1', b'1'),
	(12, 12, 'SUPERUSER', 'TIM MARKETING', b'1', b'1', b'1', b'1', b'1'),
	(13, 13, 'ADMIN KEUANGAN', 'NILAI PENAWARAN', b'1', b'1', b'1', b'1', b'1'),
	(13, 13, 'SUPERUSER', 'NILAI PENAWARAN', b'1', b'1', b'1', b'1', b'1'),
	(14, 14, 'ADMIN KEUANGAN', 'KLASIFIKASI PENAWARAN', b'1', b'1', b'1', b'1', b'1'),
	(14, 14, 'SUPERUSER', 'KLASIFIKASI PENAWARAN', b'1', b'1', b'1', b'1', b'1'),
	(15, 15, 'ADMIN KEUANGAN', 'PENAWARAN PDF', b'1', b'1', b'1', b'1', b'1'),
	(15, 15, 'SUPERUSER', 'PENAWARAN PDF', b'1', b'1', b'1', b'1', b'1'),
	(16, 16, 'ADMIN KEUANGAN', 'PROFORMA INVOICE', b'1', b'1', b'1', b'1', b'1'),
	(16, 16, 'SUPERUSER', 'PROFORMA INVOICE', b'1', b'1', b'1', b'1', b'1'),
	(17, 17, 'ADMIN KEUANGAN', 'PEMBAYARAN DEPOSIT', b'1', b'1', b'1', b'1', b'1'),
	(17, 17, 'SUPERUSER', 'PEMBAYARAN DEPOSIT', b'1', b'1', b'1', b'1', b'1'),
	(18, 18, 'ADMIN KEUANGAN', 'SALES ORDER', b'1', b'1', b'1', b'1', b'1'),
	(18, 18, 'SUPERUSER', 'SALES ORDER', b'1', b'1', b'1', b'1', b'1'),
	(19, 19, 'ADMIN KEUANGAN', 'CHECK STOCK', b'1', b'1', b'1', b'1', b'1'),
	(19, 19, 'SUPERUSER', 'CHECK STOCK', b'1', b'1', b'1', b'1', b'1'),
	(20, 20, 'ADMIN KEUANGAN', 'WORK ORDER', b'1', b'1', b'1', b'1', b'1'),
	(20, 20, 'SUPERUSER', 'WORK ORDER', b'1', b'1', b'1', b'1', b'1'),
	(21, 21, 'ADMIN KEUANGAN', 'SALES INVOICE', b'1', b'1', b'1', b'1', b'1'),
	(21, 21, 'SUPERUSER', 'SALES INVOICE', b'1', b'1', b'1', b'1', b'1'),
	(22, 22, 'ADMIN KEUANGAN', 'CHECKLIST FORM', b'1', b'1', b'1', b'1', b'1'),
	(22, 22, 'SUPERUSER', 'CHECKLIST FORM', b'1', b'1', b'1', b'1', b'1'),
	(23, 23, 'ADMIN KEUANGAN', 'PAYMENT ORDER', b'1', b'1', b'1', b'1', b'1'),
	(23, 23, 'SUPERUSER', 'PAYMENT ORDER', b'1', b'1', b'1', b'1', b'1'),
	(24, 24, 'ADMIN KEUANGAN', 'RENCANA PEMBELIAN', b'1', b'1', b'1', b'1', b'1'),
	(24, 24, 'SUPERUSER', 'RENCANA PEMBELIAN', b'1', b'1', b'1', b'1', b'1'),
	(25, 25, 'ADMIN KEUANGAN', 'BELANJA LANGSUNG', b'1', b'1', b'1', b'1', b'1'),
	(25, 25, 'SUPERUSER', 'BELANJA LANGSUNG', b'1', b'1', b'1', b'1', b'1'),
	(26, 26, 'ADMIN KEUANGAN', 'PURCHASE ORDER', b'1', b'1', b'1', b'1', b'1'),
	(26, 26, 'SUPERUSER', 'PURCHASE ORDER', b'1', b'1', b'1', b'1', b'1'),
	(27, 27, 'ADMIN KEUANGAN', 'PENGADAAN BARANG', b'1', b'1', b'1', b'1', b'1'),
	(27, 27, 'SUPERUSER', 'PENGADAAN BARANG', b'1', b'1', b'1', b'1', b'1'),
	(28, 28, 'ADMIN KEUANGAN', 'PENGIRIMAN BARANG', b'1', b'1', b'1', b'1', b'1'),
	(28, 28, 'SUPERUSER', 'PENGIRIMAN BARANG', b'1', b'1', b'1', b'1', b'1'),
	(29, 29, 'ADMIN KEUANGAN', 'PEMASANGAN', b'1', b'1', b'1', b'1', b'1'),
	(29, 29, 'SUPERUSER', 'PEMASANGAN', b'1', b'1', b'1', b'1', b'1'),
	(30, 30, 'ADMIN KEUANGAN', 'SCHEDULE UJI COBA', b'1', b'1', b'1', b'1', b'1'),
	(30, 30, 'SUPERUSER', 'SCHEDULE UJI COBA', b'1', b'1', b'1', b'1', b'1'),
	(31, 31, 'ADMIN KEUANGAN', 'SALES COMMON', b'1', b'1', b'1', b'1', b'1'),
	(31, 31, 'SUPERUSER', 'SALES COMMON', b'1', b'1', b'1', b'1', b'1'),
	(32, 32, 'ADMIN KEUANGAN', 'TECHNICIAN FEE', b'1', b'1', b'1', b'1', b'1'),
	(32, 32, 'SUPERUSER', 'TECHNICIAN FEE', b'1', b'1', b'1', b'1', b'1'),
	(33, 33, 'ADMIN KEUANGAN', 'TANDA TERIMA SERVICE', b'1', b'1', b'1', b'1', b'1'),
	(33, 33, 'SUPERUSER', 'TANDA TERIMA SERVICE', b'1', b'1', b'1', b'1', b'1'),
	(34, 34, 'ADMIN KEUANGAN', 'KEBUTUHAN BIAYA', b'1', b'1', b'1', b'1', b'1'),
	(34, 34, 'SUPERUSER', 'KEBUTUHAN BIAYA', b'1', b'1', b'1', b'1', b'1'),
	(35, 35, 'ADMIN KEUANGAN', 'REPAIR ORDER', b'1', b'1', b'1', b'1', b'1'),
	(35, 35, 'SUPERUSER', 'REPAIR ORDER', b'1', b'1', b'1', b'1', b'1'),
	(36, 36, 'ADMIN KEUANGAN', 'RENCANA TINDAKAN', b'1', b'1', b'1', b'1', b'1'),
	(36, 36, 'SUPERUSER', 'RENCANA TINDAKAN', b'1', b'1', b'1', b'1', b'1'),
	(37, 37, 'ADMIN KEUANGAN', 'REPAIR REPORT', b'1', b'1', b'1', b'1', b'1'),
	(37, 37, 'SUPERUSER', 'REPAIR REPORT', b'1', b'1', b'1', b'1', b'1'),
	(38, 38, 'ADMIN KEUANGAN', 'BARANG MASUK', b'1', b'1', b'1', b'1', b'1'),
	(38, 38, 'SUPERUSER', 'BARANG MASUK', b'1', b'1', b'1', b'1', b'1'),
	(39, 39, 'ADMIN KEUANGAN', 'BARANG KELUAR', b'1', b'1', b'1', b'1', b'1'),
	(39, 39, 'SUPERUSER', 'BARANG KELUAR', b'1', b'1', b'1', b'1', b'1'),
	(40, 40, 'ADMIN KEUANGAN', 'STOCK OPNAME', b'1', b'1', b'1', b'1', b'1'),
	(40, 40, 'SUPERUSER', 'STOCK OPNAME', b'1', b'1', b'1', b'1', b'1'),
	(41, 41, 'ADMIN KEUANGAN', 'MAINTENANCE', b'1', b'1', b'1', b'1', b'1'),
	(41, 41, 'SUPERUSER', 'MAINTENANCE', b'1', b'1', b'1', b'1', b'1'),
	(42, 42, 'ADMIN KEUANGAN', 'SURAT PINJAM BARANG', b'1', b'1', b'1', b'1', b'1'),
	(42, 42, 'SUPERUSER', 'SURAT PINJAM BARANG', b'1', b'1', b'1', b'1', b'1'),
	(43, 43, 'ADMIN KEUANGAN', 'BARCODE SUPPORT', b'1', b'1', b'1', b'1', b'1'),
	(43, 43, 'SUPERUSER', 'BARCODE SUPPORT', b'1', b'1', b'1', b'1', b'1'),
	(44, 44, 'ADMIN KEUANGAN', 'REKRUITMENT', b'1', b'1', b'1', b'1', b'1'),
	(44, 44, 'SUPERUSER', 'REKRUITMENT', b'1', b'1', b'1', b'1', b'1'),
	(45, 45, 'ADMIN KEUANGAN', 'PAYROLL', b'1', b'1', b'1', b'1', b'1'),
	(45, 45, 'SUPERUSER', 'PAYROLL', b'1', b'1', b'1', b'1', b'1'),
	(46, 46, 'ADMIN KEUANGAN', 'FREELANCE', b'1', b'1', b'1', b'1', b'1'),
	(46, 46, 'SUPERUSER', 'FREELANCE', b'1', b'1', b'1', b'1', b'1'),
	(47, 47, 'ADMIN KEUANGAN', 'KESEJAHTERAAN', b'1', b'1', b'1', b'1', b'1'),
	(47, 47, 'SUPERUSER', 'KESEJAHTERAAN', b'1', b'1', b'1', b'1', b'1'),
	(48, 48, 'ADMIN KEUANGAN', 'KPI', b'1', b'1', b'1', b'1', b'1'),
	(48, 48, 'SUPERUSER', 'KPI', b'1', b'1', b'1', b'1', b'1'),
	(49, 49, 'ADMIN KEUANGAN', 'COST MANAJEMEN', b'1', b'1', b'1', b'1', b'1'),
	(49, 49, 'SUPERUSER', 'COST MANAJEMEN', b'1', b'1', b'1', b'1', b'1'),
	(50, 50, 'ADMIN KEUANGAN', 'BOOK KEEPING', b'1', b'1', b'1', b'1', b'1'),
	(50, 50, 'SUPERUSER', 'BOOK KEEPING', b'1', b'1', b'1', b'1', b'1'),
	(51, 51, 'ADMIN KEUANGAN', 'REPORTING', b'1', b'1', b'1', b'1', b'1'),
	(51, 51, 'SUPERUSER', 'REPORTING', b'1', b'1', b'1', b'1', b'1'),
	(52, 52, 'ADMIN KEUANGAN', 'EVALUATING', b'1', b'1', b'1', b'1', b'1'),
	(52, 52, 'SUPERUSER', 'EVALUATING', b'1', b'1', b'1', b'1', b'1'),
	(53, 53, 'ADMIN KEUANGAN', 'IRVENTARISASI', b'1', b'1', b'1', b'1', b'1'),
	(53, 53, 'SUPERUSER', 'IRVENTARISASI', b'1', b'1', b'1', b'1', b'1'),
	(54, 54, 'ADMIN KEUANGAN', 'HISTORY', b'1', b'1', b'1', b'1', b'1'),
	(54, 54, 'SUPERUSER', 'HISTORY', b'1', b'1', b'1', b'1', b'1'),
	(55, 55, 'ADMIN KEUANGAN', 'PENYUSUTAN', b'1', b'1', b'1', b'1', b'1'),
	(55, 55, 'SUPERUSER', 'PENYUSUTAN', b'1', b'1', b'1', b'1', b'1'),
	(56, 56, 'ADMIN KEUANGAN', 'QUOTE MARKETING', b'1', b'1', b'1', b'1', b'0'),
	(56, 56, 'SUPERUSER', 'QUOTE MARKETING', b'1', b'1', b'1', b'1', b'1');
/*!40000 ALTER TABLE `d_hak_akses` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_jabatan
CREATE TABLE IF NOT EXISTS `d_jabatan` (
  `j_id` int(11) NOT NULL,
  `j_nama` varchar(50) DEFAULT NULL,
  `j_keterangan` varchar(100) DEFAULT NULL,
  `j_created_at` timestamp NULL DEFAULT NULL,
  `j_updated_at` timestamp NULL DEFAULT NULL,
  `j_created_by` varchar(50) DEFAULT NULL,
  `j_updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`j_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_jabatan: ~2 rows (approximately)
DELETE FROM `d_jabatan`;
/*!40000 ALTER TABLE `d_jabatan` DISABLE KEYS */;
INSERT INTO `d_jabatan` (`j_id`, `j_nama`, `j_keterangan`, `j_created_at`, `j_updated_at`, `j_created_by`, `j_updated_by`) VALUES
	(1, 'SUPERUSER', 'ADMIN', NULL, NULL, NULL, NULL),
	(2, 'ADMIN KEUANGAN', 'ADMIN', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `d_jabatan` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_marketing
CREATE TABLE IF NOT EXISTS `d_marketing` (
  `mk_id` int(11) NOT NULL,
  `mk_code` varchar(50) DEFAULT NULL,
  `mk_name` varchar(50) DEFAULT NULL,
  `mk_phone` int(11) DEFAULT NULL,
  `mk_address` int(11) DEFAULT NULL,
  `mk_email` int(11) DEFAULT NULL,
  `mk_information` int(11) DEFAULT NULL,
  `mk_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`mk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_marketing: ~2 rows (approximately)
DELETE FROM `d_marketing`;
/*!40000 ALTER TABLE `d_marketing` DISABLE KEYS */;
INSERT INTO `d_marketing` (`mk_id`, `mk_code`, `mk_name`, `mk_phone`, `mk_address`, `mk_email`, `mk_information`, `mk_type`) VALUES
	(1, 'mk/1', 'asd', 1, 1, 1, 1, 0),
	(2, 'mk/2', 'dsa', 1, 1, 1, 1, 0);
/*!40000 ALTER TABLE `d_marketing` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_mem
CREATE TABLE IF NOT EXISTS `d_mem` (
  `m_id` int(11) NOT NULL,
  `m_username` varchar(50) DEFAULT NULL,
  `m_password` varchar(50) DEFAULT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `m_jabatan` varchar(20) NOT NULL,
  `m_image` varchar(50) DEFAULT NULL,
  `m_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `m_updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `m_last_login` timestamp NULL DEFAULT NULL,
  `m_last_logout` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_mem: ~3 rows (approximately)
DELETE FROM `d_mem`;
/*!40000 ALTER TABLE `d_mem` DISABLE KEYS */;
INSERT INTO `d_mem` (`m_id`, `m_username`, `m_password`, `m_name`, `m_jabatan`, `m_image`, `m_created_at`, `m_updated_at`, `m_last_login`, `m_last_logout`) VALUES
	(1, 'admin', '47e3896af5f3d18dbce321283dd9af0197f8c0e4', 'admin', 'SUPERUSER', 'user_1_.jpg', '2018-05-08 23:22:46', '2018-05-26 03:12:47', '2018-05-26 03:12:47', NULL),
	(2, 'shitta', '47e3896af5f3d18dbce321283dd9af0197f8c0e4', 'shitta', 'ADMIN KEUANGAN', 'user_2_.jpg', '2018-05-09 00:04:24', '2018-05-09 00:04:24', NULL, NULL),
	(3, 'admin1', '47e3896af5f3d18dbce321283dd9af0197f8c0e4', 'her', 'SUPERUSER', 'user_3_.jpg', '2018-05-18 05:27:37', '2018-05-18 13:35:33', '2018-05-18 13:35:06', NULL);
/*!40000 ALTER TABLE `d_mem` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_npenawaran
CREATE TABLE IF NOT EXISTS `d_npenawaran` (
  `np_kode` varchar(50) DEFAULT NULL,
  `np_id` int(11) DEFAULT NULL,
  `np_kodeitem` varchar(50) DEFAULT NULL,
  `np_marketing` varchar(50) DEFAULT NULL,
  `np_price` double(50,2) DEFAULT NULL,
  `np_lowerlimit` double(50,2) DEFAULT NULL,
  `np_insert` timestamp NULL DEFAULT NULL,
  `np_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_npenawaran: ~8 rows (approximately)
DELETE FROM `d_npenawaran`;
/*!40000 ALTER TABLE `d_npenawaran` DISABLE KEYS */;
INSERT INTO `d_npenawaran` (`np_kode`, `np_id`, `np_kodeitem`, `np_marketing`, `np_price`, `np_lowerlimit`, `np_insert`, `np_update`) VALUES
	('NPN/00006', 6, 'BRG/2', 'MKT/00001', 300000.00, 1000000.00, '2018-05-24 12:14:47', '2018-05-24 02:13:31'),
	('NPN/00009', 9, 'BRG/2', 'MKT/00001', 300000.00, 123123123.00, '2018-05-24 01:04:08', NULL),
	('NPN/00006', 6, 'BRG/2', 'MKT/00001', 300000.00, 1000000.00, '2018-05-24 12:14:47', '2018-05-24 02:13:31'),
	('NPN/00009', 9, 'BRG/2', 'MKT/00001', 300000.00, 123123123.00, '2018-05-24 01:04:08', NULL),
	('NPN/00006', 6, 'BRG/2', 'MKT/00001', 300000.00, 1000000.00, '2018-05-24 12:14:47', '2018-05-24 02:13:31'),
	('NPN/00009', 9, 'BRG/2', 'MKT/00001', 300000.00, 123123123.00, '2018-05-24 01:04:08', NULL),
	('NPN/00006', 6, 'BRG/2', 'MKT/00001', 300000.00, 1000000.00, '2018-05-24 12:14:47', '2018-05-24 02:13:31'),
	('NPN/00009', 9, 'BRG/2', 'MKT/00001', 300000.00, 123123123.00, '2018-05-24 01:04:08', NULL);
/*!40000 ALTER TABLE `d_npenawaran` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_quotation
CREATE TABLE IF NOT EXISTS `d_quotation` (
  `q_id` int(11) NOT NULL,
  `q_nota` varchar(50) DEFAULT NULL,
  `q_subtotal` double DEFAULT NULL,
  `q_tax` double DEFAULT NULL,
  `q_total` double DEFAULT NULL,
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

-- Dumping data for table atonergi.d_quotation: ~8 rows (approximately)
DELETE FROM `d_quotation`;
/*!40000 ALTER TABLE `d_quotation` DISABLE KEYS */;
INSERT INTO `d_quotation` (`q_id`, `q_nota`, `q_subtotal`, `q_tax`, `q_total`, `q_customer`, `q_address`, `q_type`, `q_type_product`, `q_shipping_method`, `q_date`, `q_term`, `q_delivery`, `q_ship_to`, `q_marketing`, `q_status`, `q_created_at`, `q_updated_at`, `q_update_by`) VALUES
	(7, 'QO-007/SWP/SWP/052018', 17500000, 0, 17500000, 'MKT/00001', 'jl.asd', 'SWP', 'SWP', 'Land Freight', '2018-05-26', 'xxx', '2018-07-26', 'makasar', '1', 2, '2018-05-26 06:16:45', '2018-05-26 06:16:45', 'admin'),
	(8, 'QO-008/SWP/SWP/052018', 10500000, 0, 10500000, 'MKT/00001', 'jl.asd', 'SWP', 'SWP', 'Sea', '2018-05-26', 'xx', '2018-05-31', 'makasar', '1', 2, '2018-05-26 06:19:49', '2018-05-26 06:19:49', 'admin'),
	(10, 'QO-010/SWP/SWP/052018', 17500000, 0, 17500000, 'MKT/00001', 'jl.asd', 'SWP', 'SWP', 'Air Freight', '2018-05-26', 'xx', '2018-07-31', 'makasar', '1', 2, '2018-05-26 06:21:53', '2018-05-26 06:21:53', 'admin'),
	(11, 'QO-011/SWP/SWP/052018', 10500000, 0, 10500000, 'MKT/00002', 'jl.asddd', 'SWP', 'SWP', 'Sea', '2018-05-26', 'xxx', '2018-07-03', 'xxx', '1', 2, '2018-05-26 06:22:26', '2018-05-26 06:22:26', 'admin'),
	(12, 'QO-012/SWP/SWP/052018', 10500000, 0, 10500000, 'MKT/00001', 'jl.asd', 'SWP', 'SWP', 'Land Freight', '2018-05-26', 'xx', '2018-05-30', 'xxx', '1', 2, '2018-05-26 06:23:25', '2018-05-26 06:23:25', 'admin'),
	(13, 'QO-013/SWP/SWP/052018', 10000000, 0, 10000000, 'MKT/00001', 'jl.asd', 'SWP', 'SWP', 'Air Freight', '2018-05-26', 'xxx', '2018-06-09', 'xxx', '1', 2, '2018-05-26 06:25:51', '2018-05-26 06:25:51', 'admin'),
	(14, 'QO-001/WP/SWP/052018', 17500000, 0, 17500000, 'MKT/00001', 'jl.asd', 'WP', 'SWP', 'Sea', '2018-05-26', 'xxx', '2018-05-23', 'maksar', '1', 2, '2018-05-26 06:27:42', '2018-05-26 06:27:42', 'admin'),
	(15, 'QO-014/SWP/SWP/052018', 33500000, 0, 33500000, 'MKT/00001', 'jl.asd', 'SWP', 'SWP', 'Land Freight', '2018-05-26', 'xxx', '2018-06-08', 'xxx', '0', 2, '2018-05-26 07:33:27', '2018-05-26 07:41:37', 'admin');
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

-- Dumping data for table atonergi.d_quotation_dt: ~9 rows (approximately)
DELETE FROM `d_quotation_dt`;
/*!40000 ALTER TABLE `d_quotation_dt` DISABLE KEYS */;
INSERT INTO `d_quotation_dt` (`qd_id`, `qd_dt`, `qd_item`, `qd_qty`, `qd_description`, `qd_price`, `qd_total`, `qd_update_by`) VALUES
	(7, 1, 'BRG/0001', 5, 'pompa baru', 3500000, 17500000, 'admin'),
	(8, 1, 'BRG/0001', 3, 'pompa baru', 3500000, 10500000, 'admin'),
	(10, 1, 'BRG/0001', 5, 'pompa baru', 3500000, 17500000, 'admin'),
	(11, 1, 'BRG/0001', 3, 'pompa baru', 3500000, 10500000, 'admin'),
	(12, 1, 'BRG/0001', 3, 'pompa baru', 3500000, 10500000, 'admin'),
	(13, 1, 'BRG/0002', 5, 'pompa baru 1', 2000000, 10000000, 'admin'),
	(14, 1, 'BRG/0001', 5, 'pompa baru', 3500000, 17500000, 'admin'),
	(15, 1, 'BRG/0002', 8, 'pompa baru 1', 2000000, 16000000, 'admin'),
	(15, 2, 'BRG/0001', 5, 'pompa baru', 3500000, 17500000, 'admin');
/*!40000 ALTER TABLE `d_quotation_dt` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_quotation_history
CREATE TABLE IF NOT EXISTS `d_quotation_history` (
  `qh_id` int(11) NOT NULL,
  `qh_dt` int(11) DEFAULT NULL,
  `qh_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`qh_id`),
  CONSTRAINT `FK_d_quotation_history_d_quotation` FOREIGN KEY (`qh_id`) REFERENCES `d_quotation` (`q_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_quotation_history: ~8 rows (approximately)
DELETE FROM `d_quotation_history`;
/*!40000 ALTER TABLE `d_quotation_history` DISABLE KEYS */;
INSERT INTO `d_quotation_history` (`qh_id`, `qh_dt`, `qh_status`) VALUES
	(7, 1, 2),
	(8, 1, 2),
	(10, 1, 2),
	(11, 1, 2),
	(12, 1, 2),
	(13, 1, 2),
	(14, 1, 2),
	(15, 1, 2);
/*!40000 ALTER TABLE `d_quotation_history` ENABLE KEYS */;

-- Dumping structure for table atonergi.d_status
CREATE TABLE IF NOT EXISTS `d_status` (
  `s_id` int(11) DEFAULT NULL,
  `s_color` varchar(50) DEFAULT NULL,
  `s_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.d_status: ~2 rows (approximately)
DELETE FROM `d_status`;
/*!40000 ALTER TABLE `d_status` DISABLE KEYS */;
INSERT INTO `d_status` (`s_id`, `s_color`, `s_name`) VALUES
	(1, 'success', 'Won'),
	(2, 'primary', 'Release');
/*!40000 ALTER TABLE `d_status` ENABLE KEYS */;

-- Dumping structure for table atonergi.m_customer
CREATE TABLE IF NOT EXISTS `m_customer` (
  `c_id` int(11) NOT NULL,
  `c_hometown` varchar(50) DEFAULT NULL,
  `c_code` varchar(20) DEFAULT NULL,
  `c_name` varchar(100) DEFAULT NULL,
  `c_birthday` date DEFAULT NULL,
  `c_phone` varchar(50) DEFAULT NULL,
  `c_address` text,
  `c_email` varchar(150) DEFAULT NULL,
  `c_type` varchar(50) DEFAULT NULL,
  `c_insert` timestamp NULL DEFAULT NULL,
  `c_creditterms` int(11) DEFAULT NULL,
  `c_plafon` int(11) DEFAULT NULL,
  `c_bankname` varchar(50) DEFAULT NULL,
  `c_npwp` varchar(50) DEFAULT NULL,
  `c_accountnumber` int(20) DEFAULT NULL,
  `c_information` varchar(50) DEFAULT NULL,
  `c_update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_customer: ~6 rows (approximately)
DELETE FROM `m_customer`;
/*!40000 ALTER TABLE `m_customer` DISABLE KEYS */;
INSERT INTO `m_customer` (`c_id`, `c_hometown`, `c_code`, `c_name`, `c_birthday`, `c_phone`, `c_address`, `c_email`, `c_type`, `c_insert`, `c_creditterms`, `c_plafon`, `c_bankname`, `c_npwp`, `c_accountnumber`, `c_information`, `c_update`) VALUES
	(1, 'spb', 'MKT/00001', 'PT.seger', '2018-05-24', '1', 'jl.asd', 'tes@gmail.com', 'Tunai', '2018-05-24 07:32:00', 1, 1, '1', '1', 1, '1', '2018-05-24 07:50:35'),
	(2, 'spb', 'MKT/00002', 'das', '2018-05-24', '2', 'jl.asddd', '2', 'Piutang', '2018-05-24 07:35:54', 2, 2, '2', '2', 2, '2', NULL),
	(3, NULL, 'MKT/00003', 'tes', '2018-05-24', NULL, 'jl.asdasdas', NULL, NULL, '2018-05-24 10:20:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, NULL, 'MKT/00004', 'ucup', '2018-05-24', NULL, 'jl.2d2d', NULL, NULL, '2018-05-24 03:39:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, NULL, 'MKT/00005', 'style', '2018-05-24', NULL, 'jl.asd1', NULL, NULL, '2018-05-24 03:39:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, NULL, 'MKT/00006', 'silee', '2018-05-24', NULL, 'jl.asd2', NULL, NULL, '2018-05-24 03:40:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `m_customer` ENABLE KEYS */;

-- Dumping structure for table atonergi.m_item
CREATE TABLE IF NOT EXISTS `m_item` (
  `i_id` int(11) DEFAULT NULL,
  `i_code` varchar(12) DEFAULT NULL,
  `i_name` varchar(50) DEFAULT NULL,
  `i_unit` varchar(50) DEFAULT NULL,
  `i_price` decimal(10,0) DEFAULT NULL COMMENT 'sementara : selanjutnya pakai tabel harga',
  `i_type` varchar(5) DEFAULT NULL,
  `i_minstock` int(11) DEFAULT NULL,
  `i_image` varchar(50) DEFAULT NULL,
  `i_weight` int(11) DEFAULT NULL,
  `i_description` text,
  `i_insert` timestamp NULL DEFAULT NULL,
  `i_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_item: ~2 rows (approximately)
DELETE FROM `m_item`;
/*!40000 ALTER TABLE `m_item` DISABLE KEYS */;
INSERT INTO `m_item` (`i_id`, `i_code`, `i_name`, `i_unit`, `i_price`, `i_type`, `i_minstock`, `i_image`, `i_weight`, `i_description`, `i_insert`, `i_update`) VALUES
	(1, 'BRG/0001', 'pompa', 'PCS', 3500000, NULL, 2, 'GBR_BRG_11527248048.jpg', 20, 'pompa baru', '2018-05-25 18:34:08', '2018-05-25 18:34:08'),
	(2, 'BRG/0002', 'pompa sanyo', 'PCS', 2000000, NULL, 2, 'GBR_BRG_11527248048.jpg', 20, 'pompa baru 1', '2018-05-25 18:34:08', '2018-05-25 18:34:08');
/*!40000 ALTER TABLE `m_item` ENABLE KEYS */;

-- Dumping structure for table atonergi.m_item_bundling
CREATE TABLE IF NOT EXISTS `m_item_bundling` (
  `ib_item` int(11) DEFAULT NULL,
  `ib_detailid` int(11) DEFAULT NULL,
  `ib_price` decimal(10,0) DEFAULT NULL,
  `ib_isactive` enum('Y','N') DEFAULT NULL,
  `ib_insert` timestamp NULL DEFAULT NULL,
  `ib_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_item_bundling: ~21 rows (approximately)
DELETE FROM `m_item_bundling`;
/*!40000 ALTER TABLE `m_item_bundling` DISABLE KEYS */;
INSERT INTO `m_item_bundling` (`ib_item`, `ib_detailid`, `ib_price`, `ib_isactive`, `ib_insert`, `ib_update`) VALUES
	(0, 1, 77710000, NULL, '2018-05-25 08:09:02', NULL),
	(0, 2, 30600000, NULL, '2018-05-25 09:43:18', NULL),
	(0, 3, 110000, NULL, '2018-05-25 10:37:58', NULL),
	(0, 4, 320000, NULL, '2018-05-25 01:36:41', NULL),
	(NULL, 5, 110000, NULL, '2018-05-25 01:50:34', NULL),
	(0, 1, 77710000, NULL, '2018-05-25 08:09:02', NULL),
	(0, 2, 30600000, NULL, '2018-05-25 09:43:18', NULL),
	(0, 3, 110000, NULL, '2018-05-25 10:37:58', NULL),
	(0, 4, 320000, NULL, '2018-05-25 01:36:41', NULL),
	(NULL, 5, 110000, NULL, '2018-05-25 01:50:34', NULL),
	(0, 1, 77710000, NULL, '2018-05-25 08:09:02', NULL),
	(0, 2, 30600000, NULL, '2018-05-25 09:43:18', NULL),
	(0, 3, 110000, NULL, '2018-05-25 10:37:58', NULL),
	(0, 4, 320000, NULL, '2018-05-25 01:36:41', NULL),
	(NULL, 5, 110000, NULL, '2018-05-25 01:50:34', NULL),
	(0, 1, 77710000, NULL, '2018-05-25 08:09:02', NULL),
	(0, 2, 30600000, NULL, '2018-05-25 09:43:18', NULL),
	(0, 3, 110000, NULL, '2018-05-25 10:37:58', NULL),
	(0, 4, 320000, NULL, '2018-05-25 01:36:41', NULL),
	(NULL, 5, 110000, NULL, '2018-05-25 01:50:34', NULL),
	(111, 6, 3650000, NULL, '2018-05-25 09:49:22', NULL);
/*!40000 ALTER TABLE `m_item_bundling` ENABLE KEYS */;

-- Dumping structure for table atonergi.m_item_bundling_dt
CREATE TABLE IF NOT EXISTS `m_item_bundling_dt` (
  `ibd_id` int(11) DEFAULT NULL,
  `ibd_detailid` varchar(50) DEFAULT NULL,
  `ibd_barang` varchar(50) DEFAULT NULL,
  `ibd_qty` int(11) DEFAULT NULL,
  `ibd_unit` varchar(50) DEFAULT NULL,
  `ibd_price` double(20,2) DEFAULT NULL,
  `ibd_insert` timestamp NULL DEFAULT NULL,
  `ibd_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_item_bundling_dt: ~32 rows (approximately)
DELETE FROM `m_item_bundling_dt`;
/*!40000 ALTER TABLE `m_item_bundling_dt` DISABLE KEYS */;
INSERT INTO `m_item_bundling_dt` (`ibd_id`, `ibd_detailid`, `ibd_barang`, `ibd_qty`, `ibd_unit`, `ibd_price`, `ibd_insert`, `ibd_update`) VALUES
	(1, '1', 'BRG/3', 1111, NULL, 11110000.00, '2018-05-25 08:09:02', NULL),
	(1, '2', 'BRG/2', 222, NULL, 66600000.00, '2018-05-25 08:09:02', NULL),
	(2, '1', 'BRG/2', 100, '1', 30000000.00, '2018-05-25 09:43:18', NULL),
	(2, '2', 'BRG/2', 2, NULL, 600000.00, '2018-05-25 09:43:18', NULL),
	(3, '1', 'BRG/3', 11, NULL, 110000.00, '2018-05-25 10:37:58', NULL),
	(4, '1', 'BRG/3', 2, NULL, 20000.00, '2018-05-25 01:36:41', NULL),
	(4, '2', 'BRG/2', 1, NULL, 300000.00, '2018-05-25 01:36:41', NULL),
	(5, '1', 'BRG/1', 11, NULL, 110000.00, '2018-05-25 01:50:34', NULL),
	(1, '1', 'BRG/3', 1111, NULL, 11110000.00, '2018-05-25 08:09:02', NULL),
	(1, '2', 'BRG/2', 222, NULL, 66600000.00, '2018-05-25 08:09:02', NULL),
	(2, '1', 'BRG/2', 100, '1', 30000000.00, '2018-05-25 09:43:18', NULL),
	(2, '2', 'BRG/2', 2, NULL, 600000.00, '2018-05-25 09:43:18', NULL),
	(3, '1', 'BRG/3', 11, NULL, 110000.00, '2018-05-25 10:37:58', NULL),
	(4, '1', 'BRG/3', 2, NULL, 20000.00, '2018-05-25 01:36:41', NULL),
	(4, '2', 'BRG/2', 1, NULL, 300000.00, '2018-05-25 01:36:41', NULL),
	(5, '1', 'BRG/1', 11, NULL, 110000.00, '2018-05-25 01:50:34', NULL),
	(1, '1', 'BRG/3', 1111, NULL, 11110000.00, '2018-05-25 08:09:02', NULL),
	(1, '2', 'BRG/2', 222, NULL, 66600000.00, '2018-05-25 08:09:02', NULL),
	(2, '1', 'BRG/2', 100, '1', 30000000.00, '2018-05-25 09:43:18', NULL),
	(2, '2', 'BRG/2', 2, NULL, 600000.00, '2018-05-25 09:43:18', NULL),
	(3, '1', 'BRG/3', 11, NULL, 110000.00, '2018-05-25 10:37:58', NULL),
	(4, '1', 'BRG/3', 2, NULL, 20000.00, '2018-05-25 01:36:41', NULL),
	(4, '2', 'BRG/2', 1, NULL, 300000.00, '2018-05-25 01:36:41', NULL),
	(5, '1', 'BRG/1', 11, NULL, 110000.00, '2018-05-25 01:50:34', NULL),
	(1, '1', 'BRG/3', 1111, NULL, 11110000.00, '2018-05-25 08:09:02', NULL),
	(1, '2', 'BRG/2', 222, NULL, 66600000.00, '2018-05-25 08:09:02', NULL),
	(2, '1', 'BRG/2', 100, '1', 30000000.00, '2018-05-25 09:43:18', NULL),
	(2, '2', 'BRG/2', 2, NULL, 600000.00, '2018-05-25 09:43:18', NULL),
	(3, '1', 'BRG/3', 11, NULL, 110000.00, '2018-05-25 10:37:58', NULL),
	(4, '1', 'BRG/3', 2, NULL, 20000.00, '2018-05-25 01:36:41', NULL),
	(4, '2', 'BRG/2', 1, NULL, 300000.00, '2018-05-25 01:36:41', NULL),
	(5, '1', 'BRG/1', 11, NULL, 110000.00, '2018-05-25 01:50:34', NULL);
/*!40000 ALTER TABLE `m_item_bundling_dt` ENABLE KEYS */;

-- Dumping structure for table atonergi.m_pegawai
CREATE TABLE IF NOT EXISTS `m_pegawai` (
  `mp_id` int(11) DEFAULT NULL,
  `mp_kode` varchar(50) DEFAULT NULL,
  `mp_nik` int(11) DEFAULT NULL,
  `mp_name` varchar(200) DEFAULT NULL,
  `mp_email` varchar(100) DEFAULT NULL,
  `mp_address` varchar(250) DEFAULT NULL,
  `mp_position` varchar(50) DEFAULT NULL,
  `mp_status` varchar(50) DEFAULT NULL,
  `mp_insert` timestamp NULL DEFAULT NULL,
  `mp_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_pegawai: ~4 rows (approximately)
DELETE FROM `m_pegawai`;
/*!40000 ALTER TABLE `m_pegawai` DISABLE KEYS */;
INSERT INTO `m_pegawai` (`mp_id`, `mp_kode`, `mp_nik`, `mp_name`, `mp_email`, `mp_address`, `mp_position`, `mp_status`, `mp_insert`, `mp_update`) VALUES
	(2, 'PGW/00002', 1, '1', '1', '1', 'Magang', 'Sudah Menikah', '2018-05-24 11:01:21', '2018-05-24 11:15:22'),
	(2, 'PGW/00002', 1, '1', '1', '1', 'Magang', 'Sudah Menikah', '2018-05-24 11:01:21', '2018-05-24 11:15:22'),
	(2, 'PGW/00002', 1, '1', '1', '1', 'Magang', 'Sudah Menikah', '2018-05-24 11:01:21', '2018-05-24 11:15:22'),
	(2, 'PGW/00002', 1, '1', '1', '1', 'Magang', 'Sudah Menikah', '2018-05-24 11:01:21', '2018-05-24 11:15:22');
/*!40000 ALTER TABLE `m_pegawai` ENABLE KEYS */;

-- Dumping structure for table atonergi.m_price
CREATE TABLE IF NOT EXISTS `m_price` (
  `p_id` int(11) DEFAULT NULL,
  `p_code` int(11) DEFAULT NULL,
  `p_item` int(11) DEFAULT NULL,
  `p_range_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_price: ~0 rows (approximately)
DELETE FROM `m_price`;
/*!40000 ALTER TABLE `m_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_price` ENABLE KEYS */;

-- Dumping structure for table atonergi.m_vendor
CREATE TABLE IF NOT EXISTS `m_vendor` (
  `s_id` int(11) DEFAULT NULL,
  `s_kode` varchar(50) DEFAULT NULL,
  `s_company` varchar(100) DEFAULT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_email` varchar(50) DEFAULT NULL,
  `s_phone` varchar(50) DEFAULT NULL,
  `s_fax` varchar(50) DEFAULT NULL,
  `s_termin` varchar(50) DEFAULT NULL,
  `s_limit` float DEFAULT NULL,
  `s_npwp` int(11) DEFAULT NULL,
  `s_information` text,
  `s_accountnumber` int(11) DEFAULT NULL,
  `s_bankname` varchar(50) DEFAULT NULL,
  `s_insert` timestamp NULL DEFAULT NULL,
  `s_update` timestamp NULL DEFAULT NULL,
  `s_date` date DEFAULT NULL,
  `s_hometown` varchar(50) DEFAULT NULL,
  `s_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table atonergi.m_vendor: ~1 rows (approximately)
DELETE FROM `m_vendor`;
/*!40000 ALTER TABLE `m_vendor` DISABLE KEYS */;
INSERT INTO `m_vendor` (`s_id`, `s_kode`, `s_company`, `s_name`, `s_address`, `s_email`, `s_phone`, `s_fax`, `s_termin`, `s_limit`, `s_npwp`, `s_information`, `s_accountnumber`, `s_bankname`, `s_insert`, `s_update`, `s_date`, `s_hometown`, `s_type`) VALUES
	(3, 'VDR/00003', 'PT ALAMRAYA', 'ASEP HIDAYAT', 'jl alamsssss', 'ASEP@GMAIL.COM', '0999999999', NULL, '999999', 1000000, 1123123, 'gggggggggggggggggg', 91912301, 'BRI', '2018-05-25 01:33:56', NULL, '2018-05-24', 'malang', 'Piutang');
/*!40000 ALTER TABLE `m_vendor` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
