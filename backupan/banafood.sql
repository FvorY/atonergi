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


-- Dumping database structure for bisnis_banafood
CREATE DATABASE IF NOT EXISTS `bisnis_banafood` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bisnis_banafood`;

-- Dumping structure for table bisnis_banafood.d_agen
CREATE TABLE IF NOT EXISTS `d_agen` (
  `a_id` varchar(10) NOT NULL,
  `a_username` varchar(20) DEFAULT NULL,
  `a_passwd` varchar(40) DEFAULT NULL,
  `a_name` varchar(100) DEFAULT NULL,
  `a_hp` varchar(100) DEFAULT NULL,
  `a_hp_verif` datetime DEFAULT NULL,
  `a_email` varchar(100) DEFAULT NULL,
  `a_email_verif` datetime DEFAULT NULL,
  `a_birth_tgl` date DEFAULT NULL,
  `a_addr` varchar(120) DEFAULT NULL,
  `a_kota` varchar(50) DEFAULT NULL,
  `a_provinsi` varchar(50) DEFAULT NULL,
  `a_agen_start` datetime DEFAULT NULL,
  `a_reff` varchar(10) DEFAULT NULL,
  `a_agen_reg` datetime DEFAULT NULL,
  `a_agen_pay` datetime DEFAULT NULL,
  `a_lastlogin` datetime DEFAULT NULL,
  `a_lastlogout` datetime DEFAULT NULL,
  `a_insert` datetime DEFAULT NULL,
  `a_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_comp
CREATE TABLE IF NOT EXISTS `d_comp` (
  `c_id` varchar(10) NOT NULL,
  `c_owner` varchar(10) DEFAULT NULL,
  `c_name` varchar(40) DEFAULT NULL,
  `c_address` varchar(40) DEFAULT NULL,
  `c_type` tinyint(4) DEFAULT NULL,
  `c_control` varchar(1) DEFAULT NULL,
  `c_insert` datetime DEFAULT NULL,
  `c_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`),
  KEY `FK2_comp_type` (`c_type`),
  KEY `FK1_comp_owner` (`c_owner`),
  CONSTRAINT `FK1_comp_owner` FOREIGN KEY (`c_owner`) REFERENCES `d_mem` (`m_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK2_comp_type` FOREIGN KEY (`c_type`) REFERENCES `m_comp_type` (`ct_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_comp_coa
CREATE TABLE IF NOT EXISTS `d_comp_coa` (
  `coa_comp` varchar(10) NOT NULL,
  `coa_year` varchar(4) NOT NULL,
  `coa_code` varchar(9) NOT NULL,
  `coa_name` varchar(50) DEFAULT NULL,
  `coa_level` varchar(1) DEFAULT NULL,
  `coa_parent` varchar(9) DEFAULT NULL,
  `coa_isparent` varchar(1) NOT NULL DEFAULT '0',
  `coa_isactive` varchar(1) NOT NULL DEFAULT '0',
  `coa_opening_tgl` date DEFAULT NULL,
  `coa_opening` double DEFAULT NULL,
  `coa_current` double DEFAULT NULL,
  `coa_ending_tgl` date DEFAULT NULL,
  `coa_ending` double DEFAULT NULL,
  `coa_insert` datetime DEFAULT NULL,
  `coa_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `coa_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`coa_comp`,`coa_year`,`coa_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_comp_mem
CREATE TABLE IF NOT EXISTS `d_comp_mem` (
  `cm_comp` varchar(10) NOT NULL,
  `cm_code` varchar(10) NOT NULL,
  `cm_mem` varchar(10) DEFAULT NULL,
  `cm_reg_tgl` date DEFAULT NULL,
  `cm_note` varchar(100) DEFAULT NULL,
  `cm_out_tgl` date DEFAULT NULL,
  `cm_isout` varchar(1) NOT NULL DEFAULT '0',
  `cm_insert` timestamp NULL DEFAULT NULL,
  `cm_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cm_comp`,`cm_code`),
  KEY `FK2_member_data` (`cm_mem`),
  CONSTRAINT `FK1_company_data` FOREIGN KEY (`cm_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_member_data` FOREIGN KEY (`cm_mem`) REFERENCES `d_mem` (`m_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_comp_project
CREATE TABLE IF NOT EXISTS `d_comp_project` (
  `cp_id` int(11) NOT NULL,
  `cp_comp` varchar(10) DEFAULT NULL,
  `cp_code` varchar(9) DEFAULT NULL,
  `cp_type` varchar(20) DEFAULT NULL,
  `cp_name` varchar(50) DEFAULT NULL,
  `cp_client` varchar(50) DEFAULT NULL,
  `cp_value` float DEFAULT NULL,
  `cp_start` date DEFAULT NULL,
  `cp_deadline` date DEFAULT NULL,
  `cp_isclosed` varchar(1) NOT NULL DEFAULT '0',
  `cp_insert` timestamp NULL DEFAULT NULL,
  `cp_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_comp_sub
CREATE TABLE IF NOT EXISTS `d_comp_sub` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_comp` varchar(10) DEFAULT NULL,
  `cs_code` varchar(3) DEFAULT NULL,
  `cs_name` varchar(50) DEFAULT NULL,
  `cp_insert` timestamp NULL DEFAULT NULL,
  `cp_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_comp_trans
CREATE TABLE IF NOT EXISTS `d_comp_trans` (
  `tr_comp` varchar(10) NOT NULL,
  `tr_year` varchar(4) NOT NULL,
  `tr_code` varchar(5) NOT NULL,
  `tr_codesub` tinyint(4) DEFAULT NULL,
  `tr_name` varchar(50) DEFAULT NULL,
  `tr_namesub` varchar(30) DEFAULT NULL,
  `tr_cashtype` varchar(1) DEFAULT NULL,
  `tr_cashflow` tinyint(4) DEFAULT NULL,
  `tr_acc01` varchar(9) DEFAULT NULL,
  `tr_acc01dk` tinyint(4) DEFAULT NULL,
  `tr_acc02` varchar(9) DEFAULT NULL,
  `tr_acc02dk` tinyint(4) DEFAULT NULL,
  `tr_acc03` varchar(9) DEFAULT NULL,
  `tr_acc03dk` tinyint(4) DEFAULT NULL,
  `tr_acc04` varchar(9) DEFAULT NULL,
  `tr_acc04dk` tinyint(4) DEFAULT NULL,
  `tr_insert` timestamp NULL DEFAULT NULL,
  `tr_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tr_comp`,`tr_year`,`tr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_comp_year
CREATE TABLE IF NOT EXISTS `d_comp_year` (
  `y_comp` varchar(10) NOT NULL,
  `y_year` varchar(4) NOT NULL,
  `y_active` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`y_comp`,`y_year`),
  CONSTRAINT `FK1_company` FOREIGN KEY (`y_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_item
CREATE TABLE IF NOT EXISTS `d_item` (
  `i_id` int(11) NOT NULL,
  `i_name` int(11) DEFAULT NULL,
  `i_jml` smallint(6) DEFAULT NULL,
  `i_satuan` varchar(20) DEFAULT NULL,
  `i_stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_jurnal
CREATE TABLE IF NOT EXISTS `d_jurnal` (
  `jr_id` bigint(20) NOT NULL,
  `jr_comp` varchar(10) NOT NULL,
  `jr_year` varchar(4) NOT NULL,
  `jr_trans` varchar(5) DEFAULT NULL,
  `jr_transsub` tinyint(4) DEFAULT NULL,
  `jr_cashtype` varchar(1) DEFAULT NULL,
  `jr_tgl` date DEFAULT NULL,
  `jr_detail` varchar(60) DEFAULT NULL,
  `jr_value` double DEFAULT NULL,
  `jr_ref` varchar(20) DEFAULT NULL,
  `jr_note` varchar(20) DEFAULT NULL,
  `jr_memcode` varchar(10) DEFAULT NULL,
  `jr_subcomp` int(11) DEFAULT NULL,
  `jr_project` int(11) DEFAULT NULL,
  `jr_insert` timestamp NULL DEFAULT NULL,
  `jr_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`jr_id`),
  KEY `FK1_jurnal_project` (`jr_project`),
  KEY `FK2_jurnal_sub` (`jr_subcomp`),
  CONSTRAINT `FK1_jurnal_project` FOREIGN KEY (`jr_project`) REFERENCES `d_comp_project` (`cp_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK2_jurnal_sub` FOREIGN KEY (`jr_subcomp`) REFERENCES `d_comp_sub` (`cs_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_jurnal_dt
CREATE TABLE IF NOT EXISTS `d_jurnal_dt` (
  `jrdt_id` bigint(20) NOT NULL,
  `jrdt_dt` tinyint(4) NOT NULL,
  `jrdt_acc` varchar(9) DEFAULT NULL,
  `jrdt_value` double DEFAULT NULL,
  PRIMARY KEY (`jrdt_id`,`jrdt_dt`),
  CONSTRAINT `FK1_jurnal_detail_id` FOREIGN KEY (`jrdt_id`) REFERENCES `d_jurnal` (`jr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_mem
CREATE TABLE IF NOT EXISTS `d_mem` (
  `m_id` varchar(10) NOT NULL,
  `m_username` varchar(20) DEFAULT NULL,
  `m_passwd` varchar(40) DEFAULT NULL,
  `m_paket` varchar(10) DEFAULT NULL,
  `m_paket_start` datetime DEFAULT NULL,
  `m_paket_end` datetime DEFAULT NULL,
  `m_name` varchar(100) DEFAULT NULL,
  `m_birth_tgl` date DEFAULT NULL,
  `m_addr` varchar(100) DEFAULT NULL,
  `m_reff` varchar(10) DEFAULT NULL,
  `m_lastlogin` timestamp NULL DEFAULT NULL,
  `m_lastlogout` timestamp NULL DEFAULT NULL,
  `m_insert` timestamp NULL DEFAULT NULL,
  `m_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_mem_comp
CREATE TABLE IF NOT EXISTS `d_mem_comp` (
  `mc_mem` varchar(10) NOT NULL,
  `mc_comp` varchar(10) NOT NULL,
  `mc_lvl` tinyint(4) DEFAULT NULL,
  `mc_active` varchar(1) DEFAULT '0',
  `mc_insert` timestamp NULL DEFAULT NULL,
  `mc_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mc_mem`,`mc_comp`),
  KEY `FK1_mem_lvl` (`mc_lvl`),
  KEY `FK3_comp` (`mc_comp`),
  CONSTRAINT `FK1_mem_lvl` FOREIGN KEY (`mc_lvl`) REFERENCES `m_mem_level` (`lvl_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK2_mem` FOREIGN KEY (`mc_mem`) REFERENCES `d_mem` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK3_comp` FOREIGN KEY (`mc_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_mem_email
CREATE TABLE IF NOT EXISTS `d_mem_email` (
  `me_member` varchar(10) NOT NULL,
  `me_email` varchar(30) NOT NULL,
  `me_isprimary` varchar(1) DEFAULT NULL,
  `me_insert` timestamp NULL DEFAULT NULL,
  `me_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`me_member`,`me_email`),
  CONSTRAINT `FK1_member_email` FOREIGN KEY (`me_member`) REFERENCES `d_mem` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_mem_hp
CREATE TABLE IF NOT EXISTS `d_mem_hp` (
  `mhp_member` varchar(10) NOT NULL,
  `mhp_hp` varchar(20) NOT NULL,
  `mhp_isprimary` varchar(1) NOT NULL DEFAULT '0',
  `mhp_isactive` varchar(1) NOT NULL DEFAULT '0',
  `mhp_insert` timestamp NULL DEFAULT NULL,
  `mhp_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mhp_member`,`mhp_hp`),
  CONSTRAINT `FK1_member_hp` FOREIGN KEY (`mhp_member`) REFERENCES `d_mem` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_mem_log
CREATE TABLE IF NOT EXISTS `d_mem_log` (
  `l_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `l_mem` varchar(10) DEFAULT NULL,
  `l_connect` varchar(10) DEFAULT NULL,
  `l_ver` varchar(4) DEFAULT NULL,
  `l_in` datetime DEFAULT NULL,
  `l_ping` datetime DEFAULT NULL,
  `l_out` datetime DEFAULT NULL,
  `l_active` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_mem_passwd
CREATE TABLE IF NOT EXISTS `d_mem_passwd` (
  `mp_member` varchar(10) NOT NULL,
  `mp_id` tinyint(4) NOT NULL,
  `mp_passwd` tinyint(4) DEFAULT NULL,
  `mp_timechanged` datetime DEFAULT NULL,
  PRIMARY KEY (`mp_member`,`mp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_mem_sosmed
CREATE TABLE IF NOT EXISTS `d_mem_sosmed` (
  `ms_member` varchar(10) NOT NULL,
  `ms_subid` tinyint(4) NOT NULL,
  `ms_type` varchar(20) DEFAULT NULL,
  `ms_data` varchar(60) DEFAULT NULL,
  `ms_isactive` varchar(1) NOT NULL DEFAULT '1',
  `ms_insert` timestamp NULL DEFAULT NULL,
  `ms_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ms_member`,`ms_subid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_misc
CREATE TABLE IF NOT EXISTS `d_misc` (
  `m_DATA` varchar(10) DEFAULT NULL,
  `m_VALUE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_order
CREATE TABLE IF NOT EXISTS `d_order` (
  `o_id` int(11) NOT NULL,
  `o_tgl` datetime DEFAULT NULL,
  `o_agen` varchar(10) NOT NULL,
  `o_step` varchar(5) NOT NULL,
  `o_value` double DEFAULT NULL,
  `o_dp` enum('Y','N') DEFAULT NULL,
  `o_lunas` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_order_detail
CREATE TABLE IF NOT EXISTS `d_order_detail` (
  `od_orderid` int(11) NOT NULL,
  `od_orderdt` tinyint(4) NOT NULL,
  `od__item` int(11) NOT NULL,
  `od_jml` smallint(6) DEFAULT NULL,
  `od_val_peritem` double DEFAULT NULL,
  `od_val_ttl` double DEFAULT NULL,
  `od_sent` enum('Y','N') DEFAULT NULL,
  `od_sent_tgl` datetime DEFAULT NULL,
  PRIMARY KEY (`od_orderid`,`od_orderdt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_order_inv
CREATE TABLE IF NOT EXISTS `d_order_inv` (
  `oi_id` int(11) NOT NULL,
  `oi_order` int(11) NOT NULL,
  `oi_tgl` datetime NOT NULL,
  `oi_no` varchar(50) NOT NULL,
  `oi_value` double NOT NULL,
  `oi_pay` datetime NOT NULL,
  PRIMARY KEY (`oi_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_order_kirim
CREATE TABLE IF NOT EXISTS `d_order_kirim` (
  `Column 1` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.d_produksi
CREATE TABLE IF NOT EXISTS `d_produksi` (
  `p_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.m_comp_type
CREATE TABLE IF NOT EXISTS `m_comp_type` (
  `ct_id` tinyint(4) NOT NULL,
  `ct_name` varchar(50) DEFAULT NULL,
  `ct_isactive` varchar(1) DEFAULT '0',
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.m_mem_level
CREATE TABLE IF NOT EXISTS `m_mem_level` (
  `lvl_id` tinyint(4) NOT NULL,
  `lvl_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lvl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.m_temp_trans
CREATE TABLE IF NOT EXISTS `m_temp_trans` (
  `mt_type` varchar(2) NOT NULL,
  `mt_code` varchar(5) NOT NULL,
  `mt_name` varchar(50) NOT NULL,
  `mt_namesub` varchar(30) DEFAULT NULL,
  `mt_cashtype` varchar(1) DEFAULT NULL,
  `mt_account01type` varchar(2) DEFAULT NULL,
  `mt_account01` varchar(9) DEFAULT NULL,
  `mt_account01dk` tinyint(4) DEFAULT NULL,
  `mt_account02type` varchar(2) DEFAULT NULL,
  `mt_account02` varchar(9) DEFAULT NULL,
  `mt_account02dk` tinyint(4) DEFAULT NULL,
  `mt_account03type` varchar(2) DEFAULT NULL,
  `mt_account03` varchar(9) DEFAULT NULL,
  `mt_account03dk` tinyint(4) DEFAULT NULL,
  `mt_account04type` varchar(2) DEFAULT NULL,
  `mt_account04` varchar(9) DEFAULT NULL,
  `mt_account04dk` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mt_type`,`mt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_banafood.m_trans_cat
CREATE TABLE IF NOT EXISTS `m_trans_cat` (
  `tt_code` varchar(2) NOT NULL,
  `tt_name` varchar(50) DEFAULT NULL,
  `tt_income` tinyint(4) NOT NULL,
  `tt_isactive` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
