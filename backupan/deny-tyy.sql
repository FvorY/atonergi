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

-- Dumping structure for table bisnis_atonergi.d_marketing
CREATE TABLE IF NOT EXISTS `d_marketing` (
  `mk_id` int(11) DEFAULT NULL,
  `mk_code` varchar(50) DEFAULT NULL,
  `mk_name` varchar(50) DEFAULT NULL,
  `mk_phone` varchar(50) DEFAULT NULL,
  `mk_address` varchar(50) DEFAULT NULL,
  `mk_email` varchar(50) DEFAULT NULL,
  `mk_information` varchar(50) DEFAULT NULL,
  `mk_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.d_marketing: ~1 rows (approximately)
/*!40000 ALTER TABLE `d_marketing` DISABLE KEYS */;
REPLACE INTO `d_marketing` (`mk_id`, `mk_code`, `mk_name`, `mk_phone`, `mk_address`, `mk_email`, `mk_information`, `mk_type`) VALUES
	(1, 'MKT/00001', '1', '1', '1', '1', '1', 'sales');
/*!40000 ALTER TABLE `d_marketing` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.d_npenawaran
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

-- Dumping data for table bisnis_atonergi.d_npenawaran: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_npenawaran` DISABLE KEYS */;
REPLACE INTO `d_npenawaran` (`np_kode`, `np_id`, `np_kodeitem`, `np_marketing`, `np_price`, `np_lowerlimit`, `np_insert`, `np_update`) VALUES
	('NPN/00006', 6, 'BRG/2', 'MKT/00001', 300000.00, 1000000.00, '2018-05-24 12:14:47', '2018-05-24 02:13:31'),
	('NPN/00009', 9, 'BRG/2', 'MKT/00001', 300000.00, 123123123.00, '2018-05-24 01:04:08', NULL);
/*!40000 ALTER TABLE `d_npenawaran` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.m_customer
CREATE TABLE IF NOT EXISTS `m_customer` (
  `c_id` int(11) DEFAULT NULL,
  `c_code` varchar(20) DEFAULT NULL,
  `c_name` varchar(100) DEFAULT NULL,
  `c_hometown` varchar(100) DEFAULT NULL,
  `c_birthday` date DEFAULT NULL,
  `c_phone` varchar(50) DEFAULT NULL,
  `c_address` text,
  `c_email` varchar(150) DEFAULT NULL,
  `c_type` varchar(50) DEFAULT NULL,
  `c_creditterms` int(11) DEFAULT NULL,
  `c_plafon` int(11) DEFAULT NULL,
  `c_bankname` varchar(50) DEFAULT NULL,
  `c_npwp` varchar(50) DEFAULT NULL,
  `c_accountnumber` int(20) DEFAULT NULL,
  `c_information` varchar(50) DEFAULT NULL,
  `c_insert` timestamp NULL DEFAULT NULL,
  `c_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.m_customer: ~6 rows (approximately)
/*!40000 ALTER TABLE `m_customer` DISABLE KEYS */;
REPLACE INTO `m_customer` (`c_id`, `c_code`, `c_name`, `c_hometown`, `c_birthday`, `c_phone`, `c_address`, `c_email`, `c_type`, `c_creditterms`, `c_plafon`, `c_bankname`, `c_npwp`, `c_accountnumber`, `c_information`, `c_insert`, `c_update`) VALUES
	(1, 'MKT/00001', '11212312', 'spb', '2018-05-24', '1', '1', '1', 'Tunai', 1, 1, '1', '1', 1, '1', '2018-05-24 07:32:00', '2018-05-24 07:50:35'),
	(2, 'MKT/00002', '2', 'spb', '2018-05-24', '2', '2', '2', 'Piutang', 2, 2, '2', '2', 2, '2', '2018-05-24 07:35:54', NULL),
	(3, 'MKT/00003', NULL, NULL, '2018-05-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-24 10:20:12', NULL),
	(4, 'MKT/00004', NULL, NULL, '2018-05-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-24 03:39:35', NULL),
	(5, 'MKT/00005', NULL, NULL, '2018-05-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-24 03:39:38', NULL),
	(6, 'MKT/00006', NULL, NULL, '2018-05-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-24 03:40:44', NULL);
/*!40000 ALTER TABLE `m_customer` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.m_item_bundling
CREATE TABLE IF NOT EXISTS `m_item_bundling` (
  `ib_item` varchar(50) DEFAULT NULL,
  `ib_detailid` int(11) DEFAULT NULL,
  `ib_price` decimal(10,0) DEFAULT NULL,
  `ib_isactive` enum('Y','N') DEFAULT NULL,
  `ib_insert` timestamp NULL DEFAULT NULL,
  `ib_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.m_item_bundling: ~5 rows (approximately)
/*!40000 ALTER TABLE `m_item_bundling` DISABLE KEYS */;
REPLACE INTO `m_item_bundling` (`ib_item`, `ib_detailid`, `ib_price`, `ib_isactive`, `ib_insert`, `ib_update`) VALUES
	('BARANG CABLE', 1, 77710000, NULL, '2018-05-25 08:09:02', NULL),
	('BARANG CABLE', 2, 30600000, NULL, '2018-05-25 09:43:18', NULL),
	('BARANG CABLE', 3, 110000, NULL, '2018-05-25 10:37:58', NULL),
	('BARANG CABLE', 4, 320000, NULL, '2018-05-25 01:36:41', NULL),
	(NULL, 5, 110000, NULL, '2018-05-25 01:50:34', NULL);
/*!40000 ALTER TABLE `m_item_bundling` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.m_item_bundling_dt
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

-- Dumping data for table bisnis_atonergi.m_item_bundling_dt: ~8 rows (approximately)
/*!40000 ALTER TABLE `m_item_bundling_dt` DISABLE KEYS */;
REPLACE INTO `m_item_bundling_dt` (`ibd_id`, `ibd_detailid`, `ibd_barang`, `ibd_qty`, `ibd_unit`, `ibd_price`, `ibd_insert`, `ibd_update`) VALUES
	(1, '1', 'BRG/3', 1111, NULL, 11110000.00, '2018-05-25 08:09:02', NULL),
	(1, '2', 'BRG/2', 222, NULL, 66600000.00, '2018-05-25 08:09:02', NULL),
	(2, '1', 'BRG/2', 100, '1', 30000000.00, '2018-05-25 09:43:18', NULL),
	(2, '2', 'BRG/2', 2, NULL, 600000.00, '2018-05-25 09:43:18', NULL),
	(3, '1', 'BRG/3', 11, NULL, 110000.00, '2018-05-25 10:37:58', NULL),
	(4, '1', 'BRG/3', 2, NULL, 20000.00, '2018-05-25 01:36:41', NULL),
	(4, '2', 'BRG/2', 1, NULL, 300000.00, '2018-05-25 01:36:41', NULL),
	(5, '1', 'BRG/1', 11, NULL, 110000.00, '2018-05-25 01:50:34', NULL);
/*!40000 ALTER TABLE `m_item_bundling_dt` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.m_pegawai
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

-- Dumping data for table bisnis_atonergi.m_pegawai: ~1 rows (approximately)
/*!40000 ALTER TABLE `m_pegawai` DISABLE KEYS */;
REPLACE INTO `m_pegawai` (`mp_id`, `mp_kode`, `mp_nik`, `mp_name`, `mp_email`, `mp_address`, `mp_position`, `mp_status`, `mp_insert`, `mp_update`) VALUES
	(2, 'PGW/00002', 1, '1', '1', '1', 'Magang', 'Sudah Menikah', '2018-05-24 11:01:21', '2018-05-24 11:15:22');
/*!40000 ALTER TABLE `m_pegawai` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.m_vendor
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

-- Dumping data for table bisnis_atonergi.m_vendor: ~1 rows (approximately)
/*!40000 ALTER TABLE `m_vendor` DISABLE KEYS */;
REPLACE INTO `m_vendor` (`s_id`, `s_kode`, `s_company`, `s_name`, `s_address`, `s_email`, `s_phone`, `s_fax`, `s_termin`, `s_limit`, `s_npwp`, `s_information`, `s_accountnumber`, `s_bankname`, `s_insert`, `s_update`, `s_date`, `s_hometown`, `s_type`) VALUES
	(3, 'VDR/00003', 'PT ALAMRAYA', 'ASEP HIDAYAT', 'jl alamsssss', 'ASEP@GMAIL.COM', '0999999999', NULL, '999999', 1000000, 1123123, 'gggggggggggggggggg', 91912301, 'BRI', '2018-05-25 01:33:56', NULL, '2018-05-24', 'malang', 'Piutang');
/*!40000 ALTER TABLE `m_vendor` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
