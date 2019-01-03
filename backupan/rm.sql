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


-- Dumping database structure for bisnis_rizqy
CREATE DATABASE IF NOT EXISTS `bisnis_rizqy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bisnis_rizqy`;

-- Dumping structure for table bisnis_rizqy.chat
CREATE TABLE IF NOT EXISTS `chat` (
  `c_id` int(11) NOT NULL,
  `ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_absen
CREATE TABLE IF NOT EXISTS `d_absen` (
  `ab_id` int(11) NOT NULL,
  `ab_memid` varchar(50) NOT NULL,
  `ab_ket` varchar(255) DEFAULT NULL,
  `ab_status` enum('tidak','hadir','sakit','izin','cuti') DEFAULT NULL,
  `ab_tanggal` date DEFAULT NULL,
  `ab_created_at` timestamp NULL DEFAULT NULL,
  `ab_updated_at` timestamp NULL DEFAULT NULL,
  `masuk` smallint(6) DEFAULT '1',
  `sakit` smallint(6) DEFAULT '0',
  `izin` smallint(6) DEFAULT '0',
  `absen` smallint(6) DEFAULT '0',
  `libur` smallint(6) DEFAULT '0',
  `telat` smallint(6) DEFAULT '0',
  `keterangan` varchar(750) DEFAULT NULL,
  PRIMARY KEY (`ab_id`,`ab_memid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_access
CREATE TABLE IF NOT EXISTS `d_access` (
  `a_id` int(11) NOT NULL,
  `a_type` varchar(50) DEFAULT NULL,
  `a_detail` varchar(50) DEFAULT NULL,
  `a_insert` datetime DEFAULT NULL,
  `a_update` datetime DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_angket
CREATE TABLE IF NOT EXISTS `d_angket` (
  `a_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `a_comp` varchar(15) DEFAULT NULL,
  `a_barang` varchar(100) DEFAULT '0',
  `a_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`a_id`),
  KEY `FK_d_angket_d_comp` (`a_comp`),
  CONSTRAINT `FK_d_angket_d_comp` FOREIGN KEY (`a_comp`) REFERENCES `d_comp` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='menyimpan data angket ''item lost''';

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_artikel
CREATE TABLE IF NOT EXISTS `d_artikel` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_title` varchar(50) DEFAULT NULL,
  `d_description` longtext,
  `d_date` date DEFAULT NULL,
  `d_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_aset
CREATE TABLE IF NOT EXISTS `d_aset` (
  `a_id` int(11) NOT NULL,
  `a_date` date DEFAULT NULL,
  `a_name` varchar(100) DEFAULT NULL,
  `a_value` float DEFAULT NULL,
  `a_insert` time DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_bukti_transfer
CREATE TABLE IF NOT EXISTS `d_bukti_transfer` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_asal_bank` varchar(50) DEFAULT NULL,
  `b_tujuan_bank` varchar(50) DEFAULT NULL,
  `b_pemilik_rekening` varchar(50) DEFAULT NULL,
  `b_no_rekening` int(11) DEFAULT NULL,
  `b_gmbr_transfer` varchar(100) DEFAULT NULL,
  `b_member` varchar(50) NOT NULL,
  `b_order` int(11) NOT NULL,
  `b_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `b_konfirmasi` varchar(50) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_bulan
CREATE TABLE IF NOT EXISTS `d_bulan` (
  `b_id` tinyint(4) DEFAULT NULL,
  `b_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_comp
CREATE TABLE IF NOT EXISTS `d_comp` (
  `c_id` varchar(10) NOT NULL,
  `c_owner` varchar(10) DEFAULT NULL,
  `c_name` varchar(40) DEFAULT NULL,
  `c_address` varchar(100) DEFAULT NULL,
  `c_type` tinyint(4) DEFAULT NULL,
  `c_control` varchar(1) DEFAULT NULL,
  `c_insert` timestamp NULL DEFAULT NULL,
  `c_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `c_keterangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `FK2_comp_type` (`c_type`),
  KEY `FK1_comp_owner` (`c_owner`),
  CONSTRAINT `FK1_comp_owner` FOREIGN KEY (`c_owner`) REFERENCES `d_mem` (`m_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK2_comp_type` FOREIGN KEY (`c_type`) REFERENCES `m_comp_type` (`ct_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='c_keterangan digunakan untuk menyimpan perbedaan outlet dengan B (investor)';

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_comp_coa
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
  `coa_insert` timestamp NULL DEFAULT NULL,
  `coa_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `coa_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`coa_comp`,`coa_year`,`coa_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_comp_customer
CREATE TABLE IF NOT EXISTS `d_comp_customer` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(100) DEFAULT NULL,
  `c_isreseller` varchar(1) NOT NULL DEFAULT '0',
  `c_afiliate` int(11) DEFAULT NULL,
  `c_hp` varchar(50) DEFAULT NULL,
  `c_email` varchar(100) DEFAULT NULL,
  `c_birth` date DEFAULT NULL,
  `c_sex` varchar(1) DEFAULT NULL,
  `c_work` varchar(100) DEFAULT NULL,
  `c_know` varchar(100) DEFAULT NULL,
  `c_ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_comp_jurnal
CREATE TABLE IF NOT EXISTS `d_comp_jurnal` (
  `Column 1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_comp_jurnalresume
CREATE TABLE IF NOT EXISTS `d_comp_jurnalresume` (
  `cjr_comp` varchar(50) NOT NULL,
  `cjr_period` varchar(6) NOT NULL,
  `cjr_coa_code` varchar(50) NOT NULL,
  `cjr_value` double DEFAULT NULL,
  `cjr_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cjr_update` datetime NOT NULL,
  PRIMARY KEY (`cjr_comp`,`cjr_period`,`cjr_coa_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_comp_jurnalresume_copy
CREATE TABLE IF NOT EXISTS `d_comp_jurnalresume_copy` (
  `cjr_comp` varchar(50) NOT NULL,
  `cjr_period` varchar(6) NOT NULL,
  `cjr_coa_code` varchar(50) NOT NULL,
  `cjr_value` double DEFAULT NULL,
  `cjr_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cjr_update` datetime NOT NULL,
  PRIMARY KEY (`cjr_comp`,`cjr_period`,`cjr_coa_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_comp_mem
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
-- Dumping structure for table bisnis_rizqy.d_comp_project
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
-- Dumping structure for table bisnis_rizqy.d_comp_sub
CREATE TABLE IF NOT EXISTS `d_comp_sub` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_comp` varchar(10) DEFAULT NULL,
  `cs_code` varchar(3) DEFAULT NULL,
  `cs_name` varchar(50) DEFAULT NULL,
  `cp_insert` timestamp NULL DEFAULT NULL,
  `cp_address` varchar(100) NOT NULL,
  `cp_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_comp_trans
CREATE TABLE IF NOT EXISTS `d_comp_trans` (
  `tr_comp` varchar(10) NOT NULL,
  `tr_year` varchar(4) NOT NULL,
  `tr_code` varchar(5) NOT NULL,
  `tr_codesub` tinyint(4) NOT NULL,
  `tr_name` varchar(50) DEFAULT NULL,
  `tr_namesub` varchar(30) DEFAULT NULL,
  `tr_cashtype` varchar(1) DEFAULT NULL,
  `tr_cashflow` tinyint(4) DEFAULT NULL,
  `tr_locked` varchar(1) DEFAULT '0',
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
  `tr_ref` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tr_comp`,`tr_year`,`tr_code`,`tr_codesub`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_comp_year
CREATE TABLE IF NOT EXISTS `d_comp_year` (
  `y_comp` varchar(10) NOT NULL,
  `y_year` varchar(4) NOT NULL,
  `y_active` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`y_comp`,`y_year`),
  CONSTRAINT `FK1_company` FOREIGN KEY (`y_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_confirm_dt
CREATE TABLE IF NOT EXISTS `d_confirm_dt` (
  `cd_confirm` int(11) NOT NULL,
  `cd_detailid` tinyint(4) NOT NULL,
  `cd_item` int(11) NOT NULL,
  `cd_qty` tinyint(4) NOT NULL,
  `cd_value` decimal(20,2) NOT NULL,
  `cd_total_gross` decimal(20,2) DEFAULT NULL,
  `cd_disc_percent` smallint(6) DEFAULT NULL,
  `cd_disc_value` decimal(20,2) DEFAULT NULL,
  `cd_total_net` decimal(20,2) DEFAULT NULL,
  `cd_ip_id` int(11) NOT NULL,
  PRIMARY KEY (`cd_confirm`,`cd_detailid`),
  CONSTRAINT `FK_co` FOREIGN KEY (`cd_confirm`) REFERENCES `d_confirm_order` (`co_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_confirm_order
CREATE TABLE IF NOT EXISTS `d_confirm_order` (
  `co_id` int(11) NOT NULL,
  `co_comp` varchar(10) NOT NULL,
  `co_date` datetime DEFAULT NULL,
  `co_supplier` int(11) DEFAULT NULL,
  `cd_ttlvalue` decimal(20,2) NOT NULL,
  `co_total_gross` decimal(20,2) NOT NULL,
  `co_disc_percent` smallint(6) DEFAULT NULL,
  `co_disc_value` decimal(20,2) NOT NULL,
  `co_total_net` decimal(20,2) NOT NULL,
  `co_status` varchar(20) DEFAULT NULL,
  `co_officer` varchar(10) DEFAULT NULL,
  `co_insert` timestamp NULL DEFAULT NULL,
  `co_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`co_id`),
  KEY `FK_co_comp` (`co_comp`),
  CONSTRAINT `FK_co_comp` FOREIGN KEY (`co_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_consignment
CREATE TABLE IF NOT EXISTS `d_consignment` (
  `Column 1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_distribution
CREATE TABLE IF NOT EXISTS `d_distribution` (
  `d_id` int(11) NOT NULL,
  `d_nota_sales` varchar(50) NOT NULL DEFAULT '',
  `d_comp_owner` varchar(50) DEFAULT NULL,
  `d_comp_dest` varchar(50) DEFAULT NULL,
  `d_date_due` varchar(50) DEFAULT NULL,
  `d_officer_owner` varchar(50) DEFAULT NULL,
  `d_officer_dest` varchar(50) DEFAULT NULL,
  `d_status` varchar(50) DEFAULT NULL,
  `d_insert` datetime DEFAULT NULL,
  `d_update` datetime DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_gaji
CREATE TABLE IF NOT EXISTS `d_gaji` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_comp` varchar(50) DEFAULT NULL,
  `g_date` date DEFAULT NULL,
  `g_jml_pegawai` tinyint(4) DEFAULT NULL,
  `g_total_gaji` decimal(10,2) DEFAULT NULL,
  `g_bayar_gaji` decimal(10,2) DEFAULT NULL,
  `g_sisa_gaji` decimal(10,2) DEFAULT NULL,
  `g_total_pajak` decimal(10,2) DEFAULT NULL,
  `g_bayar_pajak` decimal(10,2) DEFAULT NULL,
  `g_sisa_pajak` decimal(10,2) DEFAULT NULL,
  `g_status` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_gaji_detail
CREATE TABLE IF NOT EXISTS `d_gaji_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_detail` int(10) NOT NULL DEFAULT '0',
  `comp` varchar(50) NOT NULL DEFAULT '0',
  `m_id` varchar(50) DEFAULT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `kode_jabatan` varchar(50) DEFAULT NULL,
  `nama_jabatan` varchar(50) DEFAULT NULL,
  `gaji_pokok` int(11) DEFAULT '0',
  `tunjangan_jabatan` int(11) DEFAULT '0',
  `tunjangan_kehadiran` int(11) DEFAULT '0',
  `ttl_uang_makan` int(11) DEFAULT '0',
  `gaji` int(11) DEFAULT '0',
  `masuk` int(11) DEFAULT '0',
  `sakit` int(11) DEFAULT '0',
  `izin` int(11) DEFAULT '0',
  `absen` int(11) DEFAULT '0',
  `telat` int(11) DEFAULT '0',
  `qpe` int(11) DEFAULT '0',
  `k5` int(11) DEFAULT '0',
  `pph_21` int(11) DEFAULT '0',
  `total_gaji` int(11) DEFAULT '0',
  `status` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`,`id_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_group
CREATE TABLE IF NOT EXISTS `d_group` (
  `g_id` smallint(6) NOT NULL,
  `g_name` varchar(30) NOT NULL,
  `g_insert` datetime DEFAULT NULL,
  `g_update` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_groupmem
CREATE TABLE IF NOT EXISTS `d_groupmem` (
  `g_id` smallint(6) NOT NULL,
  `g_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_groupmem_access
CREATE TABLE IF NOT EXISTS `d_groupmem_access` (
  `ga_group` smallint(6) NOT NULL,
  `ga_access` int(11) NOT NULL,
  PRIMARY KEY (`ga_group`,`ga_access`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_group_access
CREATE TABLE IF NOT EXISTS `d_group_access` (
  `ga_group` smallint(6) NOT NULL,
  `ga_access` int(11) NOT NULL,
  `ga_level` enum('1','2','3') DEFAULT NULL COMMENT '1.read 2.Read,Edit 3.read,add,edit,delete',
  `ga_insert` datetime DEFAULT NULL,
  `ga_update` datetime DEFAULT NULL,
  PRIMARY KEY (`ga_group`,`ga_access`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_indent
CREATE TABLE IF NOT EXISTS `d_indent` (
  `in_id` int(11) NOT NULL,
  `in_comp` varchar(10) NOT NULL,
  `in_nota` varchar(20) NOT NULL,
  `in_member` varchar(16) NOT NULL,
  `in_sales` varchar(16) NOT NULL,
  `in_total_net` decimal(20,2) NOT NULL,
  `in_date` date NOT NULL,
  `in_status` varchar(15) NOT NULL,
  `in_keterangan` varchar(150) NOT NULL,
  `in_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `in_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`in_id`),
  UNIQUE KEY `in_nota` (`in_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_indent_dt
CREATE TABLE IF NOT EXISTS `d_indent_dt` (
  `ind_indent` int(11) NOT NULL,
  `ind_detailid` int(11) NOT NULL,
  `ind_item` int(11) NOT NULL,
  `ind_value` decimal(20,2) NOT NULL,
  `ind_qty` tinyint(4) NOT NULL,
  `ind_total_net` decimal(20,2) NOT NULL,
  `ind_status` varchar(15) NOT NULL,
  `ind_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ind_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ind_detailid`,`ind_indent`),
  KEY `FK_d_indent_dt_d_indent` (`ind_indent`),
  CONSTRAINT `FK_d_indent_dt_d_indent` FOREIGN KEY (`ind_indent`) REFERENCES `d_indent` (`in_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_item
CREATE TABLE IF NOT EXISTS `d_item` (
  `i_id` int(11) NOT NULL,
  `i_jenis` varchar(100) NOT NULL,
  `i_jenissub` varchar(100) NOT NULL,
  `i_class` varchar(100) DEFAULT NULL,
  `i_classsub` varchar(100) DEFAULT NULL,
  `i_detail` varchar(100) NOT NULL,
  `i_satuan` tinyint(4) DEFAULT NULL,
  `i_price` decimal(20,2) NOT NULL,
  `i_reseller_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `i_specificcode` enum('Y','N') DEFAULT NULL,
  `i_code` varchar(50) DEFAULT NULL,
  `i_isactive` enum('Y','N') DEFAULT NULL,
  `i_minstock` int(11) DEFAULT NULL,
  `i_date` date NOT NULL,
  `i_berat` int(11) NOT NULL,
  `i_img` varchar(100) NOT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='i_speccificcode digunakan untuk menyimpan perbedaan antara barang yang ber-kode dan yang tidak ber-kode\r\njika isinya 1 maka barang tersebut memiliki kode unik\r\njika isinya 0 maka barang tersebut tidak memiliki kode unik';

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_item_bundling
CREATE TABLE IF NOT EXISTS `d_item_bundling` (
  `ib_item` int(11) NOT NULL,
  `ib_detailid` tinyint(4) NOT NULL,
  `ib_itembundling` int(11) DEFAULT NULL,
  `ib_price` int(11) DEFAULT NULL,
  `ib_isactive` enum('Y','N') DEFAULT 'N',
  `ib_inserted` timestamp NULL DEFAULT NULL,
  `ib_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ib_item`,`ib_detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_item_plan
CREATE TABLE IF NOT EXISTS `d_item_plan` (
  `ip_id` int(11) NOT NULL,
  `ip_comp` varchar(10) NOT NULL,
  `ip_item` int(11) NOT NULL,
  `ip_qtyreq` tinyint(4) NOT NULL,
  `ip_date_due` date NOT NULL,
  `ip_qtyappr` tinyint(4) DEFAULT NULL,
  `ip_date_appr` date NOT NULL,
  `ip_confirm` int(11) DEFAULT NULL,
  `ip_status` varchar(10) DEFAULT NULL,
  `ip_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ip_id`),
  KEY `FK_Comp` (`ip_comp`),
  CONSTRAINT `FK_Comp` FOREIGN KEY (`ip_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_item_supplier
CREATE TABLE IF NOT EXISTS `d_item_supplier` (
  `id` int(11) NOT NULL,
  `is_supplier` int(11) DEFAULT NULL,
  `is_item` int(11) DEFAULT NULL,
  `is_last_price` decimal(20,2) DEFAULT NULL,
  `is_insert` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `is_supplier` (`is_supplier`),
  KEY `is_item` (`is_item`),
  CONSTRAINT `FK_d_item_supplier_d_item` FOREIGN KEY (`is_item`) REFERENCES `d_item` (`i_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_d_item_supplier_d_supplier` FOREIGN KEY (`is_supplier`) REFERENCES `d_supplier` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_jabatan
CREATE TABLE IF NOT EXISTS `d_jabatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kode` varchar(8) NOT NULL,
  `nama` varchar(75) DEFAULT NULL,
  `gaji_pokok` int(10) DEFAULT '0',
  `tunjangan_jabatan` int(10) DEFAULT '0',
  `tunjangan_kehadiran` int(10) DEFAULT '0',
  `tunjangan_makan` int(10) DEFAULT '0',
  `s_insert` timestamp NULL DEFAULT NULL,
  `s_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `kode` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_jurnal
CREATE TABLE IF NOT EXISTS `d_jurnal` (
  `jr_id` bigint(20) NOT NULL,
  `jr_comp` varchar(10) NOT NULL,
  `jr_year` varchar(4) NOT NULL,
  `jr_trans` varchar(5) DEFAULT NULL,
  `jr_transsub` tinyint(4) DEFAULT NULL,
  `jr_cashtype` varchar(1) DEFAULT NULL,
  `jr_tgl` date DEFAULT NULL,
  `jr_detail` varchar(60) DEFAULT NULL,
  `jr_value` decimal(20,2) DEFAULT NULL,
  `jr_ref` varchar(40) DEFAULT NULL,
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
-- Dumping structure for table bisnis_rizqy.d_jurnal_dt
CREATE TABLE IF NOT EXISTS `d_jurnal_dt` (
  `jrdt_id` bigint(20) NOT NULL,
  `jrdt_dt` tinyint(4) NOT NULL,
  `jrdt_acc` varchar(9) DEFAULT NULL,
  `jrdt_value` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`jrdt_id`,`jrdt_dt`),
  CONSTRAINT `FK1_jurnal_detail_id` FOREIGN KEY (`jrdt_id`) REFERENCES `d_jurnal` (`jr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_katalog
CREATE TABLE IF NOT EXISTS `d_katalog` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_item` int(11) DEFAULT NULL,
  `d_groupid` int(11) DEFAULT NULL,
  `d_value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_magang
CREATE TABLE IF NOT EXISTS `d_magang` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_nis` varchar(50) NOT NULL DEFAULT '0',
  `m_nama` varchar(50) NOT NULL DEFAULT '0',
  `m_alamat` varchar(50) NOT NULL DEFAULT '0',
  `m_jenis_kelamin` varchar(50) NOT NULL DEFAULT '0',
  `m_hoby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_mem
CREATE TABLE IF NOT EXISTS `d_mem` (
  `m_id` varchar(10) NOT NULL,
  `m_hak` enum('petugas','pelanggan') NOT NULL,
  `m_nik` varchar(50) DEFAULT NULL,
  `m_username` varchar(20) DEFAULT NULL,
  `m_passwd` varchar(40) DEFAULT NULL,
  `m_name` varchar(100) DEFAULT NULL,
  `m_birth_tgl` date DEFAULT NULL,
  `m_addr` text,
  `m_img` varchar(225) DEFAULT NULL,
  `m_reff` varchar(10) DEFAULT NULL,
  `m_lastlogin` timestamp NULL DEFAULT NULL,
  `m_lastlogout` timestamp NULL DEFAULT NULL,
  `m_insert` timestamp NULL DEFAULT NULL,
  `m_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('lajang','sudah menikah') DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `j_kel` enum('pria','wanita') DEFAULT NULL,
  `m_device_token` varchar(200) DEFAULT NULL,
  `status_karyawan` enum('tetap','kontrak','outsourching','magang') DEFAULT NULL,
  `m_isactive` enum('y','n') DEFAULT NULL,
  `kode_jabatan` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `m_username` (`m_username`),
  UNIQUE KEY `nik` (`m_nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='m_nik diisi nomor KTP';

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_mem_access
CREATE TABLE IF NOT EXISTS `d_mem_access` (
  `ma_id` int(11) NOT NULL,
  `ma_member` varchar(10) NOT NULL,
  `ma_access` int(11) NOT NULL,
  `ma_level` enum('1','2','3') NOT NULL COMMENT '1.read 2.Read,Edit 3.read,add,edit,delete',
  `ma_reff` enum('A','G') DEFAULT NULL COMMENT 'A. acces, G. group',
  `ma_group` smallint(6) DEFAULT NULL,
  `ma_insert` datetime NOT NULL,
  `ma_update` datetime DEFAULT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_mem_alamat
CREATE TABLE IF NOT EXISTS `d_mem_alamat` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_mem` varchar(50) NOT NULL,
  `a_alamat` varchar(50) NOT NULL,
  `a_id_provinsi` int(11) NOT NULL,
  `a_provinsi` varchar(50) NOT NULL,
  `a_id_kab` int(11) NOT NULL,
  `a_kabupaten` varchar(50) NOT NULL,
  `a_kecamatan` varchar(50) NOT NULL,
  `a_kodepos` varchar(50) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_mem_basket
CREATE TABLE IF NOT EXISTS `d_mem_basket` (
  `b_member` varchar(50) NOT NULL,
  `b_item` int(11) NOT NULL,
  `b_qty` int(11) DEFAULT '1',
  `b_insert` timestamp NULL DEFAULT NULL,
  `b_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`b_member`,`b_item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_mem_comp
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
-- Dumping structure for table bisnis_rizqy.d_mem_email
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
-- Dumping structure for table bisnis_rizqy.d_mem_group
CREATE TABLE IF NOT EXISTS `d_mem_group` (
  `mg_id` int(11) NOT NULL,
  `mg_member` varchar(50) NOT NULL DEFAULT '',
  `mg_group` varchar(50) NOT NULL DEFAULT '',
  `mg_insert` datetime DEFAULT NULL,
  `mg_update` datetime DEFAULT NULL,
  PRIMARY KEY (`mg_id`,`mg_member`,`mg_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_mem_hp
CREATE TABLE IF NOT EXISTS `d_mem_hp` (
  `mhp_member` varchar(10) NOT NULL,
  `mhp_hp` varchar(50) NOT NULL,
  `mhp_isprimary` varchar(1) NOT NULL DEFAULT '0',
  `mhp_isactive` varchar(1) NOT NULL DEFAULT '0',
  `mhp_insert` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mhp_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mhp_member`,`mhp_hp`),
  CONSTRAINT `FK1_member_hp` FOREIGN KEY (`mhp_member`) REFERENCES `d_mem` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_mem_log
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
-- Dumping structure for table bisnis_rizqy.d_mem_passwd
CREATE TABLE IF NOT EXISTS `d_mem_passwd` (
  `mp_member` varchar(10) NOT NULL,
  `mp_id` tinyint(4) NOT NULL,
  `mp_passwd` tinyint(4) DEFAULT NULL,
  `mp_timechanged` datetime DEFAULT NULL,
  PRIMARY KEY (`mp_member`,`mp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_mem_sosmed
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
-- Dumping structure for table bisnis_rizqy.d_mem_wish
CREATE TABLE IF NOT EXISTS `d_mem_wish` (
  `w_member` int(11) NOT NULL,
  `w_item` int(11) NOT NULL,
  `w_insert` timestamp NULL DEFAULT NULL,
  `w_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`w_member`,`w_item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_message
CREATE TABLE IF NOT EXISTS `d_message` (
  `id_message` bigint(100) NOT NULL AUTO_INCREMENT,
  `subyek` varchar(50) DEFAULT NULL,
  `sender` varchar(50) NOT NULL,
  `message` text,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `receiver` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_message`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_notifikasi
CREATE TABLE IF NOT EXISTS `d_notifikasi` (
  `n_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `n_from` varchar(50) NOT NULL DEFAULT '0',
  `n_to` varchar(50) NOT NULL DEFAULT '0',
  `n_title` varchar(20) NOT NULL DEFAULT '0',
  `n_note` varchar(50) NOT NULL DEFAULT '0',
  `n_type` varchar(10) NOT NULL DEFAULT '0' COMMENT 'aproval;reminder;',
  `n_status` varchar(10) NOT NULL DEFAULT '0' COMMENT 'send;read;approve;request',
  `n_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`n_id`),
  KEY `FK__d_mem` (`n_from`),
  KEY `FK_d_notifikasi_d_mem` (`n_to`),
  CONSTRAINT `FK__d_mem` FOREIGN KEY (`n_from`) REFERENCES `d_mem` (`m_id`),
  CONSTRAINT `FK_d_notifikasi_d_mem` FOREIGN KEY (`n_to`) REFERENCES `d_mem` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_order
CREATE TABLE IF NOT EXISTS `d_order` (
  `so_id` int(11) NOT NULL,
  `so_member` varchar(10) NOT NULL,
  `so_pembayaran` varchar(30) NOT NULL,
  `so_ketbayar` varchar(20) NOT NULL,
  `so_date` datetime DEFAULT NULL,
  `so_nota` varchar(50) DEFAULT NULL,
  `so_total_gross` float DEFAULT NULL,
  PRIMARY KEY (`so_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_order_dt
CREATE TABLE IF NOT EXISTS `d_order_dt` (
  `sd_statusorder` int(11) NOT NULL,
  `sd_detailid` tinyint(4) NOT NULL,
  `sd_item` int(11) DEFAULT NULL,
  `sd_qty` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`sd_statusorder`,`sd_detailid`),
  CONSTRAINT `FK_status` FOREIGN KEY (`sd_statusorder`) REFERENCES `d_order` (`so_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_payable
CREATE TABLE IF NOT EXISTS `d_payable` (
  `p_comp` varchar(10) NOT NULL,
  `p_purchase` int(11) NOT NULL,
  `p_supplier` int(11) DEFAULT NULL,
  `p_date` datetime DEFAULT NULL,
  `p_value` decimal(20,2) DEFAULT NULL,
  `p_duedate` datetime DEFAULT NULL,
  `p_outstanding` decimal(20,2) DEFAULT NULL,
  `p_account` varchar(50) DEFAULT NULL,
  `p_nama_supplier` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`p_purchase`,`p_comp`),
  KEY `p_supplier` (`p_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_payable_dt
CREATE TABLE IF NOT EXISTS `d_payable_dt` (
  `pd_comp` varchar(50) NOT NULL,
  `pd_payable` int(11) NOT NULL,
  `pd_detailid` tinyint(4) NOT NULL,
  `pd_value` decimal(20,2) DEFAULT NULL,
  `pd_datepay` datetime DEFAULT NULL,
  `pd_jurnal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pd_comp`,`pd_payable`,`pd_detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_pegawai
CREATE TABLE IF NOT EXISTS `d_pegawai` (
  `nip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kehadiran` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `ijin` int(11) NOT NULL,
  `cuti` int(11) NOT NULL,
  `lembur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_pembayaran
CREATE TABLE IF NOT EXISTS `d_pembayaran` (
  `p_id` int(11) NOT NULL,
  `p_ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_promo
CREATE TABLE IF NOT EXISTS `d_promo` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_title` varchar(50) NOT NULL,
  `p_img` varchar(50) DEFAULT NULL,
  `p_ket` longtext NOT NULL,
  `p_date` date NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_purchase
CREATE TABLE IF NOT EXISTS `d_purchase` (
  `p_id` int(11) NOT NULL,
  `p_co_id` int(11) NOT NULL,
  `p_comp` varchar(50) DEFAULT NULL,
  `p_date` datetime DEFAULT NULL,
  `p_supplier` int(11) unsigned DEFAULT NULL,
  `p_nota` varchar(40) DEFAULT NULL,
  `p_total_gross` decimal(20,2) DEFAULT NULL,
  `p_disc_percent` smallint(6) DEFAULT NULL,
  `p_disc_value` decimal(20,2) DEFAULT NULL,
  `p_pajak` int(11) NOT NULL DEFAULT '0',
  `p_total_net` decimal(20,2) DEFAULT NULL,
  `p_date_due` datetime DEFAULT NULL,
  `p_payment_method` varchar(100) DEFAULT NULL COMMENT '1 : Tunai | 2 : Tempo',
  `p_date_pay` datetime DEFAULT NULL,
  `p_officer` varchar(10) DEFAULT NULL,
  `p_insert` timestamp NULL DEFAULT NULL,
  `p_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `p_jurnal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `p_comp` (`p_comp`),
  KEY `FK_d_purchase_d_supplier` (`p_supplier`),
  CONSTRAINT `FK_d_purchase_d_comp` FOREIGN KEY (`p_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_purchase_dt
CREATE TABLE IF NOT EXISTS `d_purchase_dt` (
  `pd_purchase` int(11) NOT NULL,
  `pd_detailid` tinyint(4) NOT NULL,
  `pd_comp` varchar(50) NOT NULL,
  `pd_item` int(11) NOT NULL,
  `pd_value` decimal(20,2) DEFAULT NULL,
  `pd_qty` tinyint(4) NOT NULL,
  `pd_total_gross` decimal(20,2) NOT NULL,
  `pd_disc_percent` smallint(6) NOT NULL,
  `pd_disc_value` decimal(20,2) NOT NULL,
  `pd_total_net` decimal(20,2) NOT NULL,
  `pd_barang_masuk` int(11) NOT NULL,
  `pd_receivetime` datetime DEFAULT NULL,
  PRIMARY KEY (`pd_purchase`,`pd_detailid`),
  KEY `pd_comp` (`pd_comp`),
  CONSTRAINT `FK_d_purchase_dt_d_comp` FOREIGN KEY (`pd_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_receivable
CREATE TABLE IF NOT EXISTS `d_receivable` (
  `r_comp` varchar(30) NOT NULL,
  `r_id` int(11) NOT NULL,
  `r_id_reff` int(11) DEFAULT NULL,
  `r_reff_note` varchar(30) DEFAULT NULL,
  `r_date` date DEFAULT NULL,
  `r_member` varchar(20) DEFAULT NULL,
  `r_nama` varchar(30) DEFAULT NULL,
  `r_value` double(10,2) DEFAULT NULL,
  `r_duedate` date DEFAULT NULL,
  `r_outstanding` double(10,2) DEFAULT NULL,
  `r_account` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`r_comp`,`r_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_receivable_dt
CREATE TABLE IF NOT EXISTS `d_receivable_dt` (
  `rd_comp` varchar(50) NOT NULL,
  `rd_receivable` int(11) NOT NULL,
  `rd_detailid` tinyint(4) NOT NULL,
  `rd_value` double(10,2) DEFAULT NULL,
  `rd_datepay` date NOT NULL,
  `rd_jurnal` bigint(20) NOT NULL,
  PRIMARY KEY (`rd_receivable`,`rd_comp`),
  KEY `FK__d_receivable` (`rd_comp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_return
CREATE TABLE IF NOT EXISTS `d_return` (
  `r_id` int(5) NOT NULL,
  `r_no` varchar(20) NOT NULL,
  `r_s_id` int(5) NOT NULL,
  `r_sd_detailid` int(5) NOT NULL,
  `r_nota` varchar(20) NOT NULL,
  `r_keterangan` varchar(100) DEFAULT NULL,
  `r_s_member` varchar(10) DEFAULT NULL,
  `r_status` int(2) DEFAULT NULL,
  `r_receive` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `r_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='r_no, r_tanggal, r_nota, r_item, r_spesificode, r_keterangan, s_member, r_status';

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_return_supplier
CREATE TABLE IF NOT EXISTS `d_return_supplier` (
  `rs_id` int(11) NOT NULL,
  `rs_date` date DEFAULT NULL,
  `rs_nota` varchar(50) DEFAULT NULL,
  `rs_supplier` varchar(20) DEFAULT NULL,
  `rs_insert` timestamp NULL DEFAULT NULL,
  `rs_update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_return_supplier_dt
CREATE TABLE IF NOT EXISTS `d_return_supplier_dt` (
  `rsd_supplierreturn` int(11) NOT NULL,
  `rsd_detailid` tinyint(4) NOT NULL,
  `rsd_mutasi` int(11) DEFAULT NULL,
  `rsd_mutasidetail` tinyint(4) DEFAULT NULL,
  `rsd_status` enum('1','2') NOT NULL COMMENT '1: On Progress | 2: Done',
  `rsd_treatment` enum('1','2','3') NOT NULL COMMENT '1: Ganti Uang| 2: Pengantian Barang | 3: Piutang',
  `rsd_item` int(11) NOT NULL,
  `rsd_qty` tinyint(4) NOT NULL,
  `rsd_specificcode` varchar(50) DEFAULT NULL,
  `rsd_delivery_order` varchar(50) DEFAULT NULL,
  `rsd_replaceitem` int(11) NOT NULL,
  `rsd_replaceqty` tinyint(4) NOT NULL,
  `rsd_replacespecificcode` varchar(50) DEFAULT NULL,
  `rsd_insert` timestamp NULL DEFAULT NULL,
  `rsd_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rsd_supplierreturn`,`rsd_detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_sales
CREATE TABLE IF NOT EXISTS `d_sales` (
  `s_id` int(11) NOT NULL,
  `s_comp` varchar(50) DEFAULT NULL,
  `s_salesman` varchar(10) DEFAULT NULL,
  `s_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `s_member` varchar(10) DEFAULT NULL,
  `s_nota` varchar(40) DEFAULT NULL,
  `s_total_gross` decimal(20,2) DEFAULT NULL,
  `s_disc_percent` smallint(6) DEFAULT NULL,
  `s_disc_value` decimal(20,2) unsigned DEFAULT NULL,
  `s_pajak` smallint(6) NOT NULL DEFAULT '0',
  `s_total_net` decimal(20,2) DEFAULT NULL,
  `s_payment_method` varchar(50) DEFAULT NULL,
  `s_insert` timestamp NULL DEFAULT NULL,
  `s_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`s_id`),
  KEY `s_comp` (`s_comp`),
  KEY `FK_d_sales_d_mem` (`s_salesman`),
  CONSTRAINT `FK_d_sales_d_mem` FOREIGN KEY (`s_salesman`) REFERENCES `d_mem` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_sales_dt
CREATE TABLE IF NOT EXISTS `d_sales_dt` (
  `sd_sales` int(11) NOT NULL,
  `sd_detailid` tinyint(4) NOT NULL,
  `sd_comp` varchar(50) NOT NULL,
  `sd_item` int(11) NOT NULL,
  `sd_qty` tinyint(4) NOT NULL,
  `sd_specificcode` varchar(50) DEFAULT NULL,
  `sd_hpp` decimal(20,2) DEFAULT NULL,
  `sd_sell` decimal(20,2) DEFAULT NULL,
  `sd_receivetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sd_sales`,`sd_detailid`),
  KEY `sd_comp` (`sd_comp`),
  CONSTRAINT `FK_d_sales_dt_d_comp` FOREIGN KEY (`sd_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_sales_payment
CREATE TABLE IF NOT EXISTS `d_sales_payment` (
  `sp_sales` int(11) NOT NULL,
  `sp_detailid` tinyint(4) NOT NULL,
  `sp_method` tinyint(4) NOT NULL,
  `sp_nominal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`sp_sales`,`sp_detailid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_sales_plan
CREATE TABLE IF NOT EXISTS `d_sales_plan` (
  `sp_id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_comp` varchar(50) DEFAULT NULL,
  `sp_month` int(11) DEFAULT NULL,
  `sp_years` int(11) DEFAULT NULL,
  `sp_totqty` int(11) DEFAULT NULL,
  `sp_date_due` date DEFAULT NULL,
  `sp_insert` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sp_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_sales_plan_dt
CREATE TABLE IF NOT EXISTS `d_sales_plan_dt` (
  `spd_sales_plan` int(11) NOT NULL,
  `spd_detailid` int(11) NOT NULL,
  `spd_item` int(11) NOT NULL,
  `spd_qty` int(11) NOT NULL,
  `spd_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `spd_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`spd_sales_plan`,`spd_detailid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_sales_return
CREATE TABLE IF NOT EXISTS `d_sales_return` (
  `sr_id` int(11) NOT NULL,
  `sr_date` date DEFAULT NULL COMMENT 'Tanggal Return',
  `sr_notareturn` varchar(50) NOT NULL COMMENT 'Menyimpan data Nota Return',
  `sr_member` varchar(20) DEFAULT NULL,
  `sr_insert` timestamp NULL DEFAULT NULL,
  `sr_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_sales_return_dt
CREATE TABLE IF NOT EXISTS `d_sales_return_dt` (
  `srd_salesreturn` int(11) NOT NULL,
  `srd_detailid` tinyint(4) NOT NULL,
  `srd_sales` int(11) NOT NULL COMMENT 'ID Sales',
  `srd_salesdetail` tinyint(4) NOT NULL COMMENT 'ID Sales Detail',
  `srd_status` enum('1','2') NOT NULL COMMENT '1: On Progress | 2: Done',
  `srd_treatment` enum('0','1','2','3','4') NOT NULL COMMENT '0:On Progress | 1: Service | 2: Ganti Uang | 3: Ganti Barang | 4: Ganti Tipe Lain',
  `srd_item` int(11) NOT NULL,
  `srd_qty` tinyint(4) NOT NULL,
  `srd_specificcode` varchar(50) DEFAULT NULL,
  `srd_note` varchar(50) DEFAULT NULL,
  `srd_replaceitem` int(11) NOT NULL,
  `srd_replaceqty` tinyint(4) NOT NULL,
  `srd_replacespecificcode` varchar(50) DEFAULT NULL,
  `srd_insert` timestamp NULL DEFAULT NULL,
  `srd_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`srd_salesreturn`,`srd_detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_service
CREATE TABLE IF NOT EXISTS `d_service` (
  `se_id` int(11) NOT NULL,
  `se_no` varchar(50) NOT NULL,
  `se_service_center` int(11) NOT NULL,
  `se_date` date NOT NULL,
  `se_status` varchar(50) NOT NULL,
  `se_insert` datetime NOT NULL,
  `se_update` datetime NOT NULL,
  PRIMARY KEY (`se_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_service_center
CREATE TABLE IF NOT EXISTS `d_service_center` (
  `sc_id` int(11) DEFAULT NULL,
  `sc_name` varchar(100) DEFAULT NULL,
  `sc_address` varchar(100) DEFAULT NULL,
  `sc_create` datetime DEFAULT NULL,
  `sc_update` datetime DEFAULT NULL,
  `sc_company` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_service_request
CREATE TABLE IF NOT EXISTS `d_service_request` (
  `sr_id` int(11) NOT NULL,
  `sr_service` int(11) NOT NULL,
  `sr_comp` varchar(20) NOT NULL,
  `sr_item` varchar(100) NOT NULL,
  `sr_spesificcode` varchar(50) NOT NULL,
  `sr_customer` varchar(100) NOT NULL,
  `sr_email` varchar(100) NOT NULL,
  `sr_keluhan` text NOT NULL,
  `sr_date` date NOT NULL,
  `sr_status` varchar(50) NOT NULL,
  `sr_keterangan_selesai` text NOT NULL,
  `sr_outlet_pengambilan` varchar(20) NOT NULL,
  `sr_position` varchar(20) NOT NULL,
  `sr_insert` datetime NOT NULL,
  `sr_update` datetime NOT NULL,
  PRIMARY KEY (`sr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_set_pph
CREATE TABLE IF NOT EXISTS `d_set_pph` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `min_gaji` int(10) NOT NULL DEFAULT '0',
  `max_gaji` int(10) NOT NULL DEFAULT '0',
  `tarif` double DEFAULT '0',
  `s_insert` timestamp NULL DEFAULT NULL,
  `s_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_stock
CREATE TABLE IF NOT EXISTS `d_stock` (
  `s_id` bigint(20) NOT NULL,
  `s_comp` varchar(10) NOT NULL,
  `s_item` int(11) DEFAULT NULL,
  `s_qty` int(11) DEFAULT NULL,
  `s_minstock` tinyint(4) DEFAULT NULL,
  `s_position` varchar(50) DEFAULT '0',
  `s_code` varchar(50) DEFAULT NULL,
  `s_insert` timestamp NULL DEFAULT NULL,
  `s_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_stock_dt
CREATE TABLE IF NOT EXISTS `d_stock_dt` (
  `sd_stock` bigint(20) NOT NULL,
  `sd_detailid` int(11) NOT NULL,
  `sd_dateentry` datetime DEFAULT NULL,
  `sd_daterunout` datetime DEFAULT NULL,
  `sd_specificcode` varchar(50) DEFAULT NULL,
  `sd_hpp` decimal(10,2) DEFAULT '0.00',
  `sd_sell` decimal(10,2) DEFAULT NULL,
  `sd_position` varchar(50) DEFAULT '0',
  PRIMARY KEY (`sd_stock`,`sd_detailid`),
  CONSTRAINT `FK_d_stock_dt_d_stock` FOREIGN KEY (`sd_stock`) REFERENCES `d_stock` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_stock_mutation
CREATE TABLE IF NOT EXISTS `d_stock_mutation` (
  `sm_stock` bigint(20) NOT NULL,
  `sm_detailid` int(11) NOT NULL,
  `sm_comp` varchar(50) DEFAULT NULL,
  `sm_date` datetime DEFAULT NULL,
  `sm_item` int(11) DEFAULT NULL,
  `sm_detail` varchar(50) DEFAULT NULL,
  `sm_qty` int(11) DEFAULT NULL,
  `sm_use` int(11) NOT NULL DEFAULT '0',
  `sm_hpp` decimal(10,2) DEFAULT NULL,
  `sm_sell` decimal(10,2) DEFAULT NULL,
  `sm_specificcode` varchar(50) DEFAULT NULL,
  `sm_nota` varchar(50) DEFAULT NULL,
  `sm_delivery_order` varchar(50) DEFAULT NULL,
  `sm_petugas` varchar(20) NOT NULL,
  PRIMARY KEY (`sm_stock`,`sm_detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_stock_opname
CREATE TABLE IF NOT EXISTS `d_stock_opname` (
  `so_id` int(11) NOT NULL AUTO_INCREMENT,
  `so_comp` varchar(50) DEFAULT NULL,
  `so_item` int(11) DEFAULT NULL,
  `so_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `so_note` varchar(50) DEFAULT NULL,
  `so_status` varchar(10) NOT NULL DEFAULT 'close',
  PRIMARY KEY (`so_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_stock_opname_dt
CREATE TABLE IF NOT EXISTS `d_stock_opname_dt` (
  `sod_so` int(11) NOT NULL,
  `sod_detailid` int(11) NOT NULL,
  `sod_specificcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sod_so`,`sod_detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_stock_opname_in
CREATE TABLE IF NOT EXISTS `d_stock_opname_in` (
  `soin_id` int(11) NOT NULL,
  `so_id` int(11) NOT NULL,
  `soin_specificcode` varchar(50) NOT NULL,
  `soin_check` tinyint(4) NOT NULL DEFAULT '0',
  `soin_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `soin_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `soin_petugas` int(3) NOT NULL,
  PRIMARY KEY (`soin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_supplier
CREATE TABLE IF NOT EXISTS `d_supplier` (
  `s_id` int(11) NOT NULL,
  `s_company` varchar(100) DEFAULT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_phone` varchar(50) DEFAULT NULL,
  `s_fax` varchar(50) DEFAULT NULL,
  `s_note` text,
  `s_insert` timestamp NULL DEFAULT NULL,
  `s_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `s_limit` float DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_survey
CREATE TABLE IF NOT EXISTS `d_survey` (
  `s_id` varchar(50) NOT NULL,
  `s_mem` varchar(20) NOT NULL,
  `s_question` int(11) NOT NULL,
  `s_answer` int(11) NOT NULL,
  `s_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`s_id`,`s_mem`,`s_question`,`s_answer`),
  KEY `FK_d_survey_d_mem` (`s_mem`),
  KEY `FK_d_survey_d_survey_answer` (`s_answer`),
  KEY `FK_d_survey_d_survey_question` (`s_question`),
  CONSTRAINT `FK_d_survey_d_mem` FOREIGN KEY (`s_mem`) REFERENCES `d_mem` (`m_id`),
  CONSTRAINT `FK_d_survey_d_survey_answer` FOREIGN KEY (`s_answer`) REFERENCES `d_survey_answer` (`sa_id`),
  CONSTRAINT `FK_d_survey_d_survey_question` FOREIGN KEY (`s_question`) REFERENCES `d_survey_question` (`sq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_survey_answer
CREATE TABLE IF NOT EXISTS `d_survey_answer` (
  `sa_question` int(11) NOT NULL,
  `sa_id` int(11) NOT NULL,
  `sa_answer` text,
  PRIMARY KEY (`sa_id`,`sa_question`),
  KEY `FK__d_survey_question` (`sa_question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.d_survey_question
CREATE TABLE IF NOT EXISTS `d_survey_question` (
  `sq_id` int(11) NOT NULL,
  `sq_question` text NOT NULL,
  `sq_isactive` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`sq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.karyawans
CREATE TABLE IF NOT EXISTS `karyawans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notlp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.konsultasi
CREATE TABLE IF NOT EXISTS `konsultasi` (
  `k_id` int(11) NOT NULL AUTO_INCREMENT,
  `k_idchat` int(11) DEFAULT NULL,
  `k_noantri` int(11) DEFAULT NULL,
  `k_petugas` varchar(50) DEFAULT NULL,
  `k_date` date DEFAULT NULL,
  `k_user` varchar(50) DEFAULT NULL,
  `k_status` varchar(50) DEFAULT 'belum di konfirmasi',
  `k_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`k_id`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.merk
CREATE TABLE IF NOT EXISTS `merk` (
  `id` int(10) unsigned NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.m_comp_type
CREATE TABLE IF NOT EXISTS `m_comp_type` (
  `ct_id` tinyint(4) NOT NULL,
  `ct_name` varchar(50) DEFAULT NULL,
  `ct_isactive` varchar(1) DEFAULT '0',
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.m_katalog_type
CREATE TABLE IF NOT EXISTS `m_katalog_type` (
  `k_id` int(11) NOT NULL,
  `k_groupname` varchar(50) DEFAULT NULL,
  `k_groupurut` int(11) DEFAULT NULL,
  `k_groupvalue` varchar(50) DEFAULT NULL,
  `k_nourut` int(11) DEFAULT NULL,
  PRIMARY KEY (`k_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.m_mem_level
CREATE TABLE IF NOT EXISTS `m_mem_level` (
  `lvl_id` tinyint(4) NOT NULL,
  `lvl_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lvl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.m_paymentmethod
CREATE TABLE IF NOT EXISTS `m_paymentmethod` (
  `pm_id` tinyint(4) NOT NULL,
  `pm_year` varchar(50) DEFAULT NULL,
  `pm_name` varchar(50) DEFAULT NULL,
  `pm_coa_comp` varchar(10) NOT NULL,
  `pm_coa_year` varchar(4) NOT NULL,
  `pm_coa_code` varchar(9) NOT NULL,
  PRIMARY KEY (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.m_satuan
CREATE TABLE IF NOT EXISTS `m_satuan` (
  `s_id` tinyint(4) NOT NULL,
  `s_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.m_trans_cat
CREATE TABLE IF NOT EXISTS `m_trans_cat` (
  `tt_code` varchar(2) NOT NULL,
  `tt_name` varchar(50) DEFAULT NULL,
  `tt_income` tinyint(4) NOT NULL,
  `tt_isactive` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.nominals
CREATE TABLE IF NOT EXISTS `nominals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jml_nominal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.opname_barang
CREATE TABLE IF NOT EXISTS `opname_barang` (
  `id_opname` int(11) NOT NULL AUTO_INCREMENT,
  `i_id` int(11) DEFAULT NULL,
  `stock_nyata` int(11) DEFAULT NULL,
  `selisih` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_opname`),
  UNIQUE KEY `i_id` (`i_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.table1_seq
CREATE TABLE IF NOT EXISTS `table1_seq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.table2_seq
CREATE TABLE IF NOT EXISTS `table2_seq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.transaksis
CREATE TABLE IF NOT EXISTS `transaksis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_trx` int(11) NOT NULL,
  `nama` int(10) unsigned NOT NULL,
  `jml_nominal` int(10) unsigned NOT NULL,
  `jam_kerja` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaksis_nama_foreign` (`nama`),
  KEY `transaksis_jml_nominal_foreign` (`jml_nominal`),
  CONSTRAINT `transaksis_jml_nominal_foreign` FOREIGN KEY (`jml_nominal`) REFERENCES `nominals` (`id`),
  CONSTRAINT `transaksis_nama_foreign` FOREIGN KEY (`nama`) REFERENCES `karyawans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table bisnis_rizqy.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
