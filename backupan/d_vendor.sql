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
DELETE FROM `m_vendor`;
/*!40000 ALTER TABLE `m_vendor` DISABLE KEYS */;
INSERT INTO `m_vendor` (`s_id`, `s_kode`, `s_company`, `s_name`, `s_address`, `s_email`, `s_phone`, `s_fax`, `s_termin`, `s_limit`, `s_npwp`, `s_information`, `s_accountnumber`, `s_bankname`, `s_insert`, `s_update`, `s_date`, `s_hometown`, `s_type`) VALUES
	(3, 'VDR/00003', 'PT ALAMRAYA', 'ASEP HIDAYAT', 'jl alamsssss', 'ASEP@GMAIL.COM', '0999999999', NULL, '999999', 1000000, 1123123, 'gggggggggggggggggg', 91912301, 'BRI', '2018-05-25 01:33:56', NULL, '2018-05-24', 'malang', 'Piutang');
/*!40000 ALTER TABLE `m_vendor` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
