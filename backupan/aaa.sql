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


-- Dumping database structure for bisnis_atonergi
CREATE DATABASE IF NOT EXISTS `bisnis_atonergi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bisnis_atonergi`;

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
DELETE FROM `d_marketing`;
/*!40000 ALTER TABLE `d_marketing` DISABLE KEYS */;
INSERT INTO `d_marketing` (`mk_id`, `mk_code`, `mk_name`, `mk_phone`, `mk_address`, `mk_email`, `mk_information`, `mk_type`) VALUES
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
DELETE FROM `d_npenawaran`;
/*!40000 ALTER TABLE `d_npenawaran` DISABLE KEYS */;
INSERT INTO `d_npenawaran` (`np_kode`, `np_id`, `np_kodeitem`, `np_marketing`, `np_price`, `np_lowerlimit`, `np_insert`, `np_update`) VALUES
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

-- Dumping data for table bisnis_atonergi.m_customer: ~3 rows (approximately)
DELETE FROM `m_customer`;
/*!40000 ALTER TABLE `m_customer` DISABLE KEYS */;
INSERT INTO `m_customer` (`c_id`, `c_code`, `c_name`, `c_hometown`, `c_birthday`, `c_phone`, `c_address`, `c_email`, `c_type`, `c_creditterms`, `c_plafon`, `c_bankname`, `c_npwp`, `c_accountnumber`, `c_information`, `c_insert`, `c_update`) VALUES
	(1, 'MKT/00001', '11212312', 'spb', '2018-05-24', '1', '1', '1', 'Tunai', 1, 1, '1', '1', 1, '1', '2018-05-24 07:32:00', '2018-05-24 07:50:35'),
	(2, 'MKT/00002', '2', 'spb', '2018-05-24', '2', '2', '2', 'Piutang', 2, 2, '2', '2', 2, '2', '2018-05-24 07:35:54', NULL),
	(3, 'MKT/00003', NULL, NULL, '2018-05-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-24 10:20:12', NULL);
/*!40000 ALTER TABLE `m_customer` ENABLE KEYS */;

-- Dumping structure for table bisnis_atonergi.m_pegawai
CREATE TABLE IF NOT EXISTS `m_pegawai` (
  `mp_id` int(11) DEFAULT NULL,
  `mp_kode` varchar(50) DEFAULT NULL,
  `mp_nik` int(11) DEFAULT NULL,
  `mp_name` varchar(200) DEFAULT NULL,
  `mp_email` varchar(100) DEFAULT NULL,
  `mp_address` varchar(250) DEFAULT NULL,
  `mp_position` varchar(50) DEFAULT NULL,
  `mp_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_atonergi.m_pegawai: ~0 rows (approximately)
DELETE FROM `m_pegawai`;
/*!40000 ALTER TABLE `m_pegawai` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_pegawai` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
