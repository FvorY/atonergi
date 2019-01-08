-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table bisnis_rizqy.chat
CREATE TABLE IF NOT EXISTS `chat` (
  `c_id` int(11) NOT NULL,
  `ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.chat: ~4 rows (approximately)
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
REPLACE INTO `chat` (`c_id`, `ket`) VALUES
	(1, 'Technical Support'),
	(2, 'Complain Reparation'),
	(3, 'Marketing'),
	(4, 'Finance');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_absen: ~34 rows (approximately)
/*!40000 ALTER TABLE `d_absen` DISABLE KEYS */;
REPLACE INTO `d_absen` (`ab_id`, `ab_memid`, `ab_ket`, `ab_status`, `ab_tanggal`, `ab_created_at`, `ab_updated_at`, `masuk`, `sakit`, `izin`, `absen`, `libur`, `telat`, `keterangan`) VALUES
	(1, 'RMZ-000007', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 0, 0, 0, 1, 0, 0, ''),
	(1, 'RMZ-000008', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000011', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000013', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000014', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000015', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000016', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000017', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000018', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000019', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000020', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000021', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000022', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000023', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000024', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000025', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(1, 'RMZ-000026', NULL, 'hadir', '2018-02-01', '2018-02-27 06:48:22', '2018-02-27 06:48:22', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000007', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000008', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000011', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000013', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000014', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000015', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000016', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000017', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000018', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000019', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000020', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000021', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000022', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000023', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000024', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000025', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, ''),
	(2, 'RMZ-000026', NULL, 'hadir', '2018-02-02', '2018-02-27 06:51:27', '2018-02-27 06:51:27', 1, 0, 0, 0, 0, 0, '');
/*!40000 ALTER TABLE `d_absen` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_access
CREATE TABLE IF NOT EXISTS `d_access` (
  `a_id` int(11) NOT NULL,
  `a_type` varchar(50) DEFAULT NULL,
  `a_detail` varchar(50) DEFAULT NULL,
  `a_insert` datetime DEFAULT NULL,
  `a_update` datetime DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_access: ~44 rows (approximately)
/*!40000 ALTER TABLE `d_access` DISABLE KEYS */;
REPLACE INTO `d_access` (`a_id`, `a_type`, `a_detail`, `a_insert`, `a_update`) VALUES
	(1, 'Penjualan Regular', '1', '2017-10-09 16:37:03', '2017-10-09 16:37:05'),
	(2, 'Penjualan Tempo', '1', '2017-10-09 16:39:01', '2017-10-09 16:39:02'),
	(3, 'Pemesanan Barang (Indent)', '1', '2017-10-09 16:39:03', '2017-10-09 16:39:05'),
	(4, 'Pengelolaan Member', '1', '2017-10-09 16:39:06', '2017-10-09 16:39:07'),
	(5, 'Pendataan Survey', '1', '2017-10-09 16:39:08', '2017-10-09 16:39:09'),
	(6, 'Rencana Pembelian', '1', '2017-10-09 16:39:09', '2017-10-09 16:39:10'),
	(7, 'Konfirmasi Pembelian', '1', '2017-10-09 16:39:11', '2017-10-09 16:39:12'),
	(8, 'Purchase Order', '1', '2017-10-09 16:39:13', '2017-10-09 16:39:14'),
	(9, 'Penerimaan Barang', '1', '2017-10-09 16:43:12', '2017-10-09 16:43:15'),
	(10, 'Opname Barang', '1', '2017-10-09 16:43:11', '2017-10-09 16:43:16'),
	(11, 'Permintaan Perbaikan', '1', '2017-10-09 16:43:14', '2017-10-09 16:43:17'),
	(12, 'Layanan Perbaikan', '1', '2017-10-09 16:43:20', '2017-10-09 16:43:21'),
	(13, 'Penjualan Internal', '1', '2017-10-09 16:43:24', '2017-10-09 16:43:26'),
	(14, 'Penerimaan Barang Internal', '1', '2017-10-09 16:43:22', '2017-10-09 16:43:23'),
	(15, 'Rencana Penjualan', '1', '2017-10-09 16:43:28', '2017-10-09 16:43:28'),
	(16, 'Monitoring Penjualan', '1', '2017-10-09 16:43:29', '2017-10-09 16:43:30'),
	(17, 'Analisa Penjualan', '1', '2017-10-09 16:43:40', '2017-10-09 16:43:42'),
	(18, 'Data Pelanggan', '1', '2017-10-09 16:43:42', '2017-10-09 16:43:43'),
	(19, 'Hutang', '1', '2017-10-09 16:43:44', '2017-10-09 16:43:47'),
	(20, 'Piutang', '1', '2017-10-09 16:43:50', '2017-10-09 16:43:49'),
	(21, 'Laporan Neraca', '1', '2017-10-09 16:43:48', '2017-10-09 16:43:51'),
	(22, 'Laporan Laba Rugi', '1', '2017-10-09 16:43:52', '2017-10-09 16:43:53'),
	(23, 'Laporan Arus Kas', '1', '2017-10-09 16:43:54', '2017-10-09 16:43:56'),
	(24, 'Pajak', '1', '2017-10-09 16:43:56', '2017-10-09 16:43:58'),
	(25, 'Analisa Keuangan', '1', '2017-10-09 16:43:59', '2017-10-09 16:44:01'),
	(26, 'Jabatan', '1', '2017-10-09 16:44:19', '2017-10-09 16:44:20'),
	(27, 'Setting PPh 21', '1', '2017-10-09 16:45:35', '2017-10-09 16:45:36'),
	(28, 'Data Karyawan', '1', '2017-10-09 16:45:37', '2017-10-09 16:45:38'),
	(29, 'Presensi', '1', '2017-10-09 16:45:39', '2017-10-09 16:45:40'),
	(30, 'Penggajian', '1', '2017-10-09 16:45:40', '2017-10-09 16:45:41'),
	(31, 'Kinerja Pegawai', '1', '2017-10-09 16:45:42', '2017-10-09 16:45:43'),
	(32, 'Kategori Transaksi', '1', '2017-10-09 16:47:39', '2017-10-09 16:48:26'),
	(33, 'Transaksi Perusahaan', '1', '2017-10-09 16:48:29', '2017-10-09 16:48:30'),
	(34, 'Data Akun', '1', '2017-10-09 16:49:06', '2017-10-09 16:49:07'),
	(35, 'Data Barang', '1', '2017-10-09 16:48:32', '2017-10-09 16:49:11'),
	(36, 'Data Supplier', '1', '2017-10-09 16:49:15', '2017-10-09 16:49:17'),
	(37, 'Artikel', '1', '2017-10-09 16:49:21', '2017-10-09 16:49:20'),
	(38, 'Promo', '1', '2017-10-09 16:50:56', '2017-10-09 16:51:03'),
	(39, 'Hak Akses', '1', NULL, NULL),
	(40, 'Data Stock Barang', '1', '2017-10-21 21:18:18', '2017-10-21 21:18:22'),
	(41, 'Pembayaran Tagihan', NULL, NULL, NULL),
	(42, 'Return Supplier', '1', '2017-11-22 15:54:22', '2017-11-22 15:54:23'),
	(43, 'Return Customer', '1', '2017-11-22 15:54:57', '2017-11-22 15:54:58'),
	(44, 'Data Stock Opname', '1', '2017-11-23 10:49:44', '2017-11-23 10:49:45');
/*!40000 ALTER TABLE `d_access` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_angket: ~4 rows (approximately)
/*!40000 ALTER TABLE `d_angket` DISABLE KEYS */;
REPLACE INTO `d_angket` (`a_id`, `a_comp`, `a_barang`, `a_date`) VALUES
	(1, 'RM00000001', 'wwwwwwww', '2018-01-19 00:00:00'),
	(2, 'RM00000001', 'HANDPHONE ADVAN 4RT ', '2018-01-19 00:00:00'),
	(3, 'RM00000003', 'sdasd', '2018-01-19 00:00:00'),
	(4, 'RM00000004', 'qwdqw', '2018-01-19 00:00:00');
/*!40000 ALTER TABLE `d_angket` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_artikel
CREATE TABLE IF NOT EXISTS `d_artikel` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_title` varchar(50) DEFAULT NULL,
  `d_description` longtext,
  `d_date` date DEFAULT NULL,
  `d_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_artikel: 4 rows
/*!40000 ALTER TABLE `d_artikel` DISABLE KEYS */;
REPLACE INTO `d_artikel` (`d_id`, `d_title`, `d_description`, `d_date`, `d_img`) VALUES
	(1, 'XIAOMI REDMI NOTE 4 RESMI MELENGGANG DI INDONESIA', 'Rizqy Mobile & Comp - Setelah beberapa Minggu yang lalu Xiaomi menggoda kehadiran Redmi Note 4, sekarang smartphone resmi tersedia di Indonesia. Perangkat ini merupakan model ketiga perusahaan yang mengusung jaringan 4G LTE, setelah Redmi 3S dan Redmi 4A. Berbeda dengan negara India yang mempunyai tiga konfigurasi, Indonesia hanya memiliki satu varian. Sudah dijajakan mulai hari ini (7/4/2017) penerus Redmi Note 3 ini dibanderol dengan harga Rp2,4 juta dipasaran. Xiaomi Redmi Note 4 dirancang dengan desain lebih elegan dari model sebelumnya. Smartphone sepenuhnya hadir dengan bodi metal aluminium serta tepian yang lebih tipis, dan merupakan smartphone Redmi pertama yang menggunakan kaca lengkung 2.5D pada layar 5.5 inci Full HD.', '2017-05-04', 'image/uploads/artikel/1/artikel-1.jpg'),
	(2, 'DIMULAI DARI CHINA, NOKIA 6 SEGERA MENDUNIA?', 'Rizqy Mobile & Comp - Kembalinya Nokia ke bisnis ponsel melalui HMD dimulai dengan merilis Nokia 6 di China. Namun sepertinya ponsel kelas menengah itu siap diluncurkan secara global.  Spekulasi ini muncul dari penelusuran NokiaPowerUser yang menemukan sebuah sertifikat WiFi dari sebuah varian Nokia 6 dengan nomor seri berbeda dari yang diluncurkan di China, demikian dikutip detikINET dari Phone Arena, Kamis (12/1/2017).  Nokia 6 yang diluncurkan di China mempunyai nomor model TA-1000, sementara sertifikat WiFi yang ditemukan mempunyai nomor model TA-1003. Hal ini memang tak serta merta memastikan kalau TA-1003 itu adalah Nokia 6 versi global, namun kemungkinan itu tetap ada.', '2017-05-02', 'image/uploads/artikel/2/artikel-2.jpg'),
	(3, 'APPLE SIAPKAN 3 VARIAN IPAD PRO', 'Rizqy Mobile & Comp - Selain iPhone 8, rumor soal iPad Pro terbaru juga mulai menghangat. Sebuah kabar beredar menyebut tablet tersebut melenggang dalam tiga varian.  Adalah analis Ming-Chi Kuo yang mengungkap hal tersebut. Dalam laporan riset terbarunya mengatakan iPad Pro akan hadir dalam ukuran 12,9 inch, 9,7 inch dan terbaru antara 10 atau 10,5 inch.  "Kami mencatat model 12,9 inch merupakan generasi kedua dari iPad Pro. Model 10-10,5 inch menjadi varian high-end dengan bezel yang sangat tipis. Sementara model 9,7 inch akan menjadi yang paling terjangkau," kata Kuo seperti dilansir dari Macrumors, Senin (9/1/2017).', '2017-05-03', 'image/uploads/artikel/3/artikel-3.jpg'),
	(4, 'MEWAH! INI DIA PENAMPAKAN GALAXY S8', 'Rizqy Mobile & Comp - Setelah beragam informasi yang lalu lalang, penampakan fisik Galaxy S8 akhirnya mulai terungkap.  Selain menggambarkan seperti apa calon ponsel flagship Samsung itu nantinya, penampakan pertama Galaxy S8 ini sekaligus menjawab rumor bahwa vendor asal Korea Selatan itu akan meninggalkan penggunaan tombol home fisik di bawah layar.  Penampakan ini pertama kali diunggah oleh seorang pengguna Weibo. Ia meyakini kalau ponsel tersebut adalah Galaxy S8 Edge lantaran punya desain yang sekilas mirip dengan pendahulunya.  Terutama bila melihat bagian tepi layarnya yang terlihat melengkung. Bentangan layarnya pun berukuran sama dengan Galaxy S7.', '2017-05-01', 'image/uploads/artikel/4/artikel-4.jpg');
/*!40000 ALTER TABLE `d_artikel` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_aset
CREATE TABLE IF NOT EXISTS `d_aset` (
  `a_id` int(11) NOT NULL,
  `a_date` date DEFAULT NULL,
  `a_name` varchar(100) DEFAULT NULL,
  `a_value` float DEFAULT NULL,
  `a_insert` time DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_aset: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_aset` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_aset` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_bukti_transfer: 1 rows
/*!40000 ALTER TABLE `d_bukti_transfer` DISABLE KEYS */;
REPLACE INTO `d_bukti_transfer` (`b_id`, `b_asal_bank`, `b_tujuan_bank`, `b_pemilik_rekening`, `b_no_rekening`, `b_gmbr_transfer`, `b_member`, `b_order`, `b_date`, `b_konfirmasi`) VALUES
	(59, 'BCA', 'BNI', 'Arief', 2900, NULL, 'MEM-1022', 2, '2017-06-07 16:39:30', '');
/*!40000 ALTER TABLE `d_bukti_transfer` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_bulan
CREATE TABLE IF NOT EXISTS `d_bulan` (
  `b_id` tinyint(4) DEFAULT NULL,
  `b_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_bulan: ~12 rows (approximately)
/*!40000 ALTER TABLE `d_bulan` DISABLE KEYS */;
REPLACE INTO `d_bulan` (`b_id`, `b_nama`) VALUES
	(1, 'Januari'),
	(2, 'Februari'),
	(3, 'Maret'),
	(4, 'April'),
	(5, 'Mei'),
	(6, 'Juni'),
	(7, 'Juli'),
	(8, 'Agustus'),
	(9, 'September'),
	(10, 'Oktober'),
	(11, 'November'),
	(12, 'Desember');
/*!40000 ALTER TABLE `d_bulan` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_comp: ~4 rows (approximately)
/*!40000 ALTER TABLE `d_comp` DISABLE KEYS */;
REPLACE INTO `d_comp` (`c_id`, `c_owner`, `c_name`, `c_address`, `c_type`, `c_control`, `c_insert`, `c_update`, `c_keterangan`) VALUES
	('RM00000001', NULL, 'Rizqy Mobile', 'Jl. DR. Soetomo No.132, Sukorame, Kec. Gresik, Kabupaten Gresik, Jawa Timur 61111', 13, '1', '2016-03-26 06:55:40', '2017-10-13 09:41:41', 'Pusat'),
	('RM00000002', NULL, 'Rizqy Mobile : B1', 'Jl. DR. Soetomo No.132, Sukorame, Kec. Gresik, Kabupaten Gresik, Jawa Timur 61111', 13, '1', '2016-03-26 06:55:40', '2017-10-13 09:41:39', 'Investor'),
	('RM00000003', NULL, 'Rizqy Mobile : Soetomo', 'Jl. DR. Soetomo No.132, Sukorame, Kec. Gresik, Kabupaten Gresik, Jawa Timur 61111', 13, '1', '2016-03-26 06:55:40', '2017-10-13 09:41:37', 'Outlet'),
	('RM00000004', NULL, 'Rizqy Mobile : Kalimantan', ' jl kalimantan no 121 GKB , jl DR. Soetomo 132, Sukorame, GRESIK, Sukorame, Kec. Gresik, Kabupaten G', 13, '1', '2016-03-26 06:55:40', '2017-10-13 09:41:34', 'Outlet');
/*!40000 ALTER TABLE `d_comp` ENABLE KEYS */;

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
  `coa_current` double DEFAULT '0',
  `coa_opening` double DEFAULT '0',
  `coa_ending_tgl` date DEFAULT NULL,
  `coa_insert` timestamp NULL DEFAULT NULL,
  `coa_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `coa_ending` double NOT NULL DEFAULT '0',
  `coa_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`coa_comp`,`coa_year`,`coa_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_comp_coa: ~245 rows (approximately)
/*!40000 ALTER TABLE `d_comp_coa` DISABLE KEYS */;
REPLACE INTO `d_comp_coa` (`coa_comp`, `coa_year`, `coa_code`, `coa_name`, `coa_level`, `coa_parent`, `coa_isparent`, `coa_isactive`, `coa_opening_tgl`, `coa_current`, `coa_opening`, `coa_ending_tgl`, `coa_insert`, `coa_update`, `coa_ending`, `coa_default`) VALUES
	('RM00000001', '2017', '100000000', 'Harta', '1', NULL, '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101000000', 'Harta Lancar', '2', '100000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101010000', 'Kas & Setara Kas', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101010201', 'Kas BCA', '4', '101010000', '0', '1', '2017-01-01', 0, 0, '2017-01-31', '2016-08-09 16:57:15', '2018-05-28 22:06:13', 0, NULL),
	('RM00000001', '2017', '101010202', 'Kas BCA P', '4', '101010000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101010204', 'Kas Permata P', '4', '101010000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101020000', 'Investasi Jangka Pendek', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101030000', 'Piutang Usaha', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-05', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000001', '2017', '101030100', 'Piutang Usaha Penjualan', '4', '101030000', '0', '1', '2017-01-01', 0, 0, '2016-08-04', '2016-08-09 16:57:15', '2018-01-08 20:25:38', 0, NULL),
	('RM00000001', '2017', '101030200', 'Piutang Usaha Refund Supplier', '4', '101030000', '0', '1', '2017-01-01', 0, 0, '2016-08-04', '2016-08-09 16:57:15', '2018-01-08 20:26:11', 0, NULL),
	('RM00000001', '2017', '101040000', 'Piutang Non Usaha', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101040100', 'Piutang Owner', '4', '101040000', '0', '1', '2017-01-01', 0, 0, '2017-01-30', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000001', '2017', '101040200', 'Piutang Lainnya', '4', '101040000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2018-01-08 20:29:14', 0, NULL),
	('RM00000001', '2017', '101050000', 'Persediaan', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101050001', 'Persediaan2', '4', '101050000', '0', '1', '2018-01-08', 0, 0, NULL, NULL, '2018-01-08 21:06:59', 0, NULL),
	('RM00000001', '2017', '101050200', 'Persediaan Konsinyasi', '4', '101050000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101060000', 'Uang Muka Yang Dibayar', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '101070000', 'Beban Dibayar Dimuka', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '102000000', 'Harta Tidak Lancar', '2', '100000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '102010000', 'Pajak Tangguhan', '3', '102000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '102020000', 'Investasi Jangka Panjang', '3', '102000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '102030000', 'Harta Tetap Berwujud', '3', '102000000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2018-01-08 20:28:37', 0, NULL),
	('RM00000001', '2017', '102040000', 'Harta Tetap Tak Berwujud', '3', '102000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '103000000', 'Harta Lainnya', '2', '100000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '200000000', 'Kewajiban', '1', NULL, '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '201000000', 'Kewajiban Jangka Pendek', '2', '200000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '201010000', 'Hutang Suplier', '3', '201000000', '0', '1', '2017-01-01', 0, 0, '2017-01-31', '2016-08-09 16:57:15', '2018-01-08 20:30:22', 0, NULL),
	('RM00000001', '2017', '201020000', 'Hutang Konsinyasi', '3', '201000000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '201030000', 'Hutang Beban', '3', '201000000', '0', '1', '2017-12-21', 0, 0, NULL, NULL, '2017-12-21 17:02:20', 0, NULL),
	('RM00000001', '2017', '201090000', 'Hutang Non Usaha', '3', '201000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '201090101', 'Hutang Ke Pihak III', '4', '201090000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000001', '2017', '201090601', 'Hutang Pajak', '4', '201090000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '201090602', 'Hutang Lainnya', '4', '201090000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2018-01-08 20:32:11', 0, NULL),
	('RM00000001', '2017', '201090701', 'Hutang Sedekah', '4', '201090000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2018-01-08 20:32:38', 0, NULL),
	('RM00000001', '2017', '202000000', 'Kewajiban Jangka Panjang', '2', '200000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '203000000', 'Kewajiban Lainnya', '2', '200000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '300000000', 'Modal', '1', NULL, '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '301000000', 'Modal Disetor', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '301010000', 'Modal Bapak Muhammad', '3', '301000000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '301020000', 'Modal Bapak A', '3', '301000000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000001', '2017', '301030000', 'modal 2', '3', '301000000', '0', '1', '2018-01-08', 0, 0, NULL, NULL, '2018-01-08 21:22:13', 0, NULL),
	('RM00000001', '2017', '302000000', 'Laba', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '302010000', 'Akumulasi Laba', '3', '302000000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2018-01-08 21:23:56', 0, NULL),
	('RM00000001', '2017', '302020000', 'Laba 2', '3', '302000000', '0', '1', '2018-01-08', 0, 0, NULL, NULL, '2018-01-08 21:23:56', 0, NULL),
	('RM00000001', '2017', '302050000', 'Laba Berjalan', '3', '302000000', '0', '1', '2017-01-01', 0, 0, '2017-01-31', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '303000000', 'Hutang Dividen', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '304000000', 'Akumulasi Prive', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '305000000', 'Akumulasi Dana Sosial', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000001', '2017', '305010000', 'Akumulasi Sedekah', '3', '305000000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000001', '2018', '100000000', 'Harta', '1', NULL, '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101000000', 'Harta Lancar', '2', '100000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101010000', 'Kas & Setara Kas', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101010101', 'Kas Pusat', '4', '101010000', '0', '1', '2018-01-01', 0, 0, '2017-01-31', '2018-01-01 00:00:00', '2018-05-28 22:06:21', 0, NULL),
	('RM00000001', '2018', '101010201', 'Kas BCA', '4', '101010000', '0', '1', '2018-01-01', 0, 0, '2017-01-31', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101010202', 'Kas BCA P', '4', '101010000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101010203', 'Kas Permata', '4', '101010000', '0', '1', '2018-01-01', 0, 0, '2016-09-28', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101010204', 'Kas Permata P', '4', '101010000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101020000', 'Investasi Jangka Pendek', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101030000', 'Piutang Usaha', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-05', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101030100', 'Piutang Usaha Penjualan', '4', '101030000', '0', '1', '2018-01-01', 0, 0, '2016-08-04', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101030200', 'Piutang Usaha Refund Supplier', '4', '101030000', '0', '1', '2018-01-01', 0, 0, '2016-08-04', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101040000', 'Piutang Non Usaha', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101040100', 'Piutang Owner', '4', '101040000', '0', '1', '2018-01-01', 0, 0, '2017-01-30', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101040200', 'Piutang Lainnya', '4', '101040000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101050000', 'Persediaan', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101050001', 'Persediaan2', '4', '101050000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101050200', 'Persediaan Konsinyasi', '4', '101050000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101060000', 'Uang Muka Yang Dibayar', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '101070000', 'Beban Dibayar Dimuka', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '102000000', 'Harta Tidak Lancar', '2', '100000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '102010000', 'Pajak Tangguhan', '3', '102000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '102020000', 'Investasi Jangka Panjang', '3', '102000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '102030000', 'Harta Tetap Berwujud', '3', '102000000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '102040000', 'Harta Tetap Tak Berwujud', '3', '102000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '103000000', 'Harta Lainnya', '2', '100000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '200000000', 'Kewajiban', '1', NULL, '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '201000000', 'Kewajiban Jangka Pendek', '2', '200000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '201010000', 'Hutang Suplier', '3', '201000000', '0', '1', '2018-01-01', 0, 0, '2017-01-31', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '201020000', 'Hutang Konsinyasi', '3', '201000000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '201030000', 'Hutang Beban', '3', '201000000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '201090000', 'Hutang Non Usaha', '3', '201000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '201090101', 'Hutang Ke Pihak III', '4', '201090000', '0', '1', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '201090601', 'Hutang Pajak', '4', '201090000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '201090602', 'Hutang Lainnya', '4', '201090000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '201090701', 'Hutang Sedekah', '4', '201090000', '0', '1', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '202000000', 'Kewajiban Jangka Panjang', '2', '200000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '203000000', 'Kewajiban Lainnya', '2', '200000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '300000000', 'Modal', '1', NULL, '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '301000000', 'Modal Disetor', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '301010000', 'Modal Bapak Muhammad', '3', '301000000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-05-28 22:06:25', 0, NULL),
	('RM00000001', '2018', '301020000', 'Modal Bapak A', '3', '301000000', '0', '1', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '301030000', 'modal 2', '3', '301000000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-05-28 22:06:28', 0, NULL),
	('RM00000001', '2018', '302000000', 'Laba', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '302020000', 'Laba 2', '3', '302000000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '302050000', 'Laba Berjalan', '3', '302000000', '0', '1', '2018-01-01', 0, 0, '2017-01-31', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '303000000', 'Hutang Dividen', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '304000000', 'Akumulasi Prive', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '305000000', 'Akumulasi Dana Sosial', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000001', '2018', '305010000', 'Akumulasi Sedekah', '3', '305000000', '0', '1', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2017', '100000000', 'Aset', '1', NULL, '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '101000000', 'Aset Lancar', '2', '100000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '101010000', 'Kas Dan Setara Kas', '3', '101000000', '1', '0', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '101010001', 'Kas Mandiri 1', '4', '101010000', '0', '0', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '101011001', 'Kas BCA 01', '4', '101010000', '0', '1', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '101011002', 'Kas BCA 02', '4', '101010000', '0', '1', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 15:14:41', 0, NULL),
	('RM00000002', '2017', '101011003', 'Kas BCA 03', '4', '101010000', '0', '1', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 15:14:41', 0, NULL),
	('RM00000002', '2017', '101011011', 'Kas PERMATA 01', '4', '101010000', '0', '1', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 15:14:41', 0, NULL),
	('RM00000002', '2017', '101011012', 'Kas PERMATA 02', '4', '101010000', '0', '1', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 15:14:41', 0, NULL),
	('RM00000002', '2017', '101012001', 'Kas Di Tangan', '4', '101010000', '0', '1', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '101020000', 'Piutang Usaha', '3', '101000000', '1', '0', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 15:14:41', 0, NULL),
	('RM00000002', '2017', '101030000', 'PIutang Non Usaha', '3', '101000000', '1', '0', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 15:14:41', 0, NULL),
	('RM00000002', '2017', '101040000', 'Persediaan', '3', '101000000', '1', '0', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 15:14:41', 0, NULL),
	('RM00000002', '2017', '101050100', 'Persediaan Usaha', '4', '101050000', '0', '1', '2017-01-01', 0, 0, '2017-01-30', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000002', '2017', '102000000', 'Aset Tidak Lancar', '2', '100000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000002', '2017', '103000000', 'Aset Lainnya', '2', '100000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '104000000', 'Aset Lancar', '2', '100000000', '0', '0', '2017-01-01', 0, 0, NULL, NULL, '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '200000000', 'Kewajiban', '1', NULL, '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '201000000', 'Kewajiban Lancar', '2', '200000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '202000000', 'Kewajiban Jangka Panjang', '2', '200000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '203000000', 'Kewajiban Lainnya', '2', '200000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '300000000', 'Modal', '1', NULL, '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '301000000', 'Modal Disetor', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '302000000', 'Laba', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '303000000', 'Hutang Dividen', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '304000000', 'Akumulasi Prive', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2017', '305000000', 'Akumulasi Dana Sosial', '2', '300000000', '1', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000002', '2018', '100000000', 'Aset', '1', NULL, '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101000000', 'Aset Lancar', '2', '100000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101010000', 'Kas Dan Setara Kas', '3', '101000000', '1', '0', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101010001', 'Kas Mandiri 1', '4', '101010000', '0', '0', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101011001', 'Kas BCA 01', '4', '101010000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101011002', 'Kas BCA 02', '4', '101010000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101011003', 'Kas BCA 03', '4', '101010000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101011011', 'Kas PERMATA 01', '4', '101010000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101011012', 'Kas PERMATA 02', '4', '101010000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101012001', 'Kas Di Tangan', '4', '101010000', '0', '1', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101020000', 'Piutang Usaha', '3', '101000000', '1', '0', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101030000', 'PIutang Non Usaha', '3', '101000000', '1', '0', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101040000', 'Persediaan', '3', '101000000', '1', '0', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '101050100', 'Persediaan Usaha', '4', '101050000', '0', '1', '2018-01-01', 0, 0, '2017-01-30', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '102000000', 'Aset Tidak Lancar', '2', '100000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '103000000', 'Aset Lainnya', '2', '100000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '104000000', 'Aset Lancar', '2', '100000000', '0', '0', '2018-01-01', 0, 0, NULL, '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '200000000', 'Kewajiban', '1', NULL, '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '201000000', 'Kewajiban Lancar', '2', '200000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '202000000', 'Kewajiban Jangka Panjang', '2', '200000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '203000000', 'Kewajiban Lainnya', '2', '200000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '300000000', 'Modal', '1', NULL, '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '301000000', 'Modal Disetor', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '302000000', 'Laba', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '303000000', 'Hutang Dividen', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '304000000', 'Akumulasi Prive', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000002', '2018', '305000000', 'Akumulasi Dana Sosial', '2', '300000000', '1', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2017', '100000000', 'Harta', '1', NULL, '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101000000', 'Harta Lancar', '2', '100000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101010000', 'Kas & Setara Kas', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101010101', 'Kas Outlet', '4', '101010000', '0', '1', '2017-01-01', 0, 0, '2017-01-31', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000003', '2017', '101010201', 'Kas BCA', '4', '101010000', '0', '1', '2017-01-01', 0, 0, '2017-01-31', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101010202', 'Kas BCA P', '4', '101010000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101010204', 'Kas Permata P', '4', '101010000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101020000', 'Investasi Jangka Pendek', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101030000', 'Piutang Usaha', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-05', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000003', '2017', '101030100', 'Piutang Usaha Penjualan', '4', '101030000', '0', '1', '2017-01-01', 0, 0, '2016-08-04', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101030200', 'Piutang Usaha Refund Supplier', '4', '101030000', '0', '1', '2017-01-01', 0, 0, '2016-08-04', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101040000', 'Piutang Non Usaha', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101040100', 'Piutang Owner', '4', '101040000', '0', '1', '2017-01-01', 0, 0, '2017-01-30', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000003', '2017', '101040200', 'Piutang Karyawan', '4', '101040000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101050000', 'Persediaan', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101050200', 'Persediaan Konsinyasi', '4', '101050000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101060000', 'Uang Muka Yang Dibayar', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '101070000', 'Beban Dibayar Dimuka', '3', '101000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '102000000', 'Harta Tidak Lancar', '2', '100000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '102010000', 'Pajak Tangguhan', '3', '102000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '102020000', 'Investasi Jangka Panjang', '3', '102000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '102030000', 'Harta Tetap Berwujud', '3', '102000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '102040000', 'Harta Tetap Tak Berwujud', '3', '102000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '103000000', 'Harta Lainnya', '2', '100000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '200000000', 'Kewajiban', '1', NULL, '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '201000000', 'Kewajiban Jangka Pendek', '2', '200000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '201010000', 'Hutang Suplier', '3', '201000000', '0', '1', '2017-01-01', 0, 0, '2017-01-31', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000003', '2017', '201020000', 'Hutang Konsinyasi', '3', '201000000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '201090000', 'Hutang Non Usaha', '3', '201000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '201090101', 'Hutang Ke Pihak III', '4', '201090000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000003', '2017', '201090601', 'Hutang Pajak', '4', '201090000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '201090602', 'Hutang Bunga', '4', '201090000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '201090701', 'Hutang Sedekah', '4', '201090000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000003', '2017', '202000000', 'Kewajiban Jangka Panjang', '2', '200000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '203000000', 'Kewajiban Lainnya', '2', '200000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '300000000', 'Modal', '1', NULL, '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2018-05-28 22:06:38', 0, NULL),
	('RM00000003', '2017', '301000000', 'Modal Disetor', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '301010000', 'Modal Bapak Muhammad', '3', '301000000', '0', '1', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '301020000', 'Modal Bapak A', '3', '301000000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000003', '2017', '302000000', 'Laba', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '302010000', 'Akumulasi Laba', '3', '302000000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000003', '2017', '302050000', 'Laba Berjalan', '3', '302000000', '0', '1', '2017-01-01', 0, 0, '2017-01-31', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '303000000', 'Hutang Dividen', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '304000000', 'Akumulasi Prive', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '305000000', 'Akumulasi Dana Sosial', '2', '300000000', '1', '0', '2017-01-01', 0, 0, '2016-08-09', '2016-08-09 16:57:15', '2017-11-30 14:37:21', 0, NULL),
	('RM00000003', '2017', '305010000', 'Akumulasi Sedekah', '3', '305000000', '0', '1', '2017-01-01', 0, 0, '2016-08-01', '2016-08-09 16:57:15', '2017-11-30 15:14:41', 0, NULL),
	('RM00000003', '2018', '100000000', 'Harta', '1', NULL, '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101000000', 'Harta Lancar', '2', '100000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101010000', 'Kas & Setara Kas', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101010101', 'Kas Outlet', '4', '101010000', '0', '1', '2018-01-01', 0, 0, '2017-01-31', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101010201', 'Kas BCA', '4', '101010000', '0', '1', '2018-01-01', 0, 0, '2017-01-31', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101010202', 'Kas BCA P', '4', '101010000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101010204', 'Kas Permata P', '4', '101010000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101020000', 'Investasi Jangka Pendek', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101030000', 'Piutang Usaha', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-05', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101030100', 'Piutang Usaha Penjualan', '4', '101030000', '0', '1', '2018-01-01', 0, 0, '2016-08-04', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101030200', 'Piutang Usaha Refund Supplier', '4', '101030000', '0', '1', '2018-01-01', 0, 0, '2016-08-04', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101040000', 'Piutang Non Usaha', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101040100', 'Piutang Owner', '4', '101040000', '0', '1', '2018-01-01', 0, 0, '2017-01-30', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101040200', 'Piutang Karyawan', '4', '101040000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101050000', 'Persediaan', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101050200', 'Persediaan Konsinyasi', '4', '101050000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101060000', 'Uang Muka Yang Dibayar', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '101070000', 'Beban Dibayar Dimuka', '3', '101000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '102000000', 'Harta Tidak Lancar', '2', '100000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '102010000', 'Pajak Tangguhan', '3', '102000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '102020000', 'Investasi Jangka Panjang', '3', '102000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '102030000', 'Harta Tetap Berwujud', '3', '102000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '102040000', 'Harta Tetap Tak Berwujud', '3', '102000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '103000000', 'Harta Lainnya', '2', '100000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '200000000', 'Kewajiban', '1', NULL, '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '201000000', 'Kewajiban Jangka Pendek', '2', '200000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '201010000', 'Hutang Suplier', '3', '201000000', '0', '1', '2018-01-01', 0, 0, '2017-01-31', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '201020000', 'Hutang Konsinyasi', '3', '201000000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '201090000', 'Hutang Non Usaha', '3', '201000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '201090101', 'Hutang Ke Pihak III', '4', '201090000', '0', '1', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '201090601', 'Hutang Pajak', '4', '201090000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '201090602', 'Hutang Bunga', '4', '201090000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '201090701', 'Hutang Sedekah', '4', '201090000', '0', '1', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '202000000', 'Kewajiban Jangka Panjang', '2', '200000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '203000000', 'Kewajiban Lainnya', '2', '200000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '300000000', 'Modal', '1', NULL, '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '301000000', 'Modal Disetor', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '301010000', 'Modal Bapak Muhammad', '3', '301000000', '0', '1', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '301020000', 'Modal Bapak A', '3', '301000000', '0', '1', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '302000000', 'Laba', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '302010000', 'Akumulasi Laba', '3', '302000000', '0', '1', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '302050000', 'Laba Berjalan', '3', '302000000', '0', '1', '2018-01-01', 0, 0, '2017-01-31', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '303000000', 'Hutang Dividen', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '304000000', 'Akumulasi Prive', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '305000000', 'Akumulasi Dana Sosial', '2', '300000000', '1', '0', '2018-01-01', 0, 0, '2016-08-09', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL),
	('RM00000003', '2018', '305010000', 'Akumulasi Sedekah', '3', '305000000', '0', '1', '2018-01-01', 0, 0, '2016-08-01', '2018-01-01 00:00:00', '2018-01-01 00:00:00', 0, NULL);
/*!40000 ALTER TABLE `d_comp_coa` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_comp_customer: ~172 rows (approximately)
/*!40000 ALTER TABLE `d_comp_customer` DISABLE KEYS */;
REPLACE INTO `d_comp_customer` (`c_id`, `c_name`, `c_isreseller`, `c_afiliate`, `c_hp`, `c_email`, `c_birth`, `c_sex`, `c_work`, `c_know`, `c_ket`) VALUES
	(1, 'Saiful', '0', NULL, NULL, 'Saiful.Basri@semenindonesia.com', '1976-01-01', 'L', 'BUMN', 'Dkt Rumah', NULL),
	(2, 'Uswatul Tasnim', '0', NULL, '-', NULL, '1973-01-01', 'P', 'IRT', 'Dekat Rumah', NULL),
	(3, 'Ismirah', '0', NULL, '(031)3978453', NULL, '1951-01-01', 'P', 'IRT', 'Lwt Dpn Toko', NULL),
	(4, 'Taufiqul Amin', '0', NULL, '0811325180', 'taufiqul_amin_01@yahoo.com', '1982-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(5, 'Pongki H', '0', NULL, '08113400443', 'Pongki.magentamedia@gmail.com', '1981-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(6, 'Redi Garjito', '0', NULL, '08121131702', NULL, '1985-01-01', 'L', 'BUMN', 'Lwt Dpn Toko', NULL),
	(7, 'Miftahul Ulum', '0', NULL, '081216032899', NULL, NULL, 'L', 'Wiraswasta', 'Lwt Dpn Toko', NULL),
	(8, 'Eko Distianto', '0', NULL, '08121605031', NULL, '1967-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(9, 'Hendry', '0', NULL, '081216216664', NULL, '1987-01-01', 'L', 'Swasta', 'Dkt Rumah', NULL),
	(10, 'M Emil Salim', '0', NULL, '081216611354', NULL, '1991-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(11, 'H. Totok S.', '0', NULL, '08121715441', NULL, '1963-01-01', 'L', 'BUMN', 'Lwt Dpn Toko', NULL),
	(12, 'Ayu Herningrat', '0', NULL, '081217363888', 'ayu.amijaya@gmail.com', '1985-01-01', 'P', 'Swasta', 'Dekat Rumah', NULL),
	(13, 'Abdul Ghoni', '0', NULL, '081217504375', NULL, '1981-01-01', 'L', 'Swasta', 'Lwt Depan Toko', NULL),
	(14, 'Machmud', '0', NULL, '08121776663', NULL, '1954-01-01', 'L', 'Wiraswasta', 'Lwt Dpn Toko', NULL),
	(15, 'Virgina Np', '0', NULL, '081230022994', NULL, '1985-01-01', 'P', 'Dokter / Perawat', 'Lwt Dpn Toko', NULL),
	(16, 'Rama', '0', NULL, '081230124956', NULL, '2000-01-01', 'L', 'Pelajar', 'Lwt Dpn Toko', NULL),
	(17, 'H Peter', '0', NULL, '08123055797', NULL, NULL, 'L', 'BUMN', 'Pelanggan Lama', NULL),
	(18, 'Dody', '0', NULL, '08123075728', 'dody0507@gmail.com', '1965-01-01', 'L', 'BUMN', 'Pelanggan Lama', NULL),
	(19, 'Rahmad', '0', NULL, '081230819445', NULL, NULL, 'L', 'Wiraswasta', 'Lwt Dpn Toko', NULL),
	(20, 'Ribut Siswono', '0', NULL, '081230977899', 'ributsiswono@gmail.com', '1978-01-01', 'L', 'Swasta', 'Pelanggan Lama', 'RESELLER'),
	(21, 'Samian', '0', NULL, '081231355618', NULL, '1969-01-01', 'L', 'Swasta', 'Pelanggan Lama', NULL),
	(22, 'Lutfi', '0', NULL, '08123136112', NULL, NULL, 'L', 'Swasta', 'Pelanggan Lama', NULL),
	(23, 'Rizka Oktava A P', '0', NULL, '08123144200', NULL, '2002-01-01', 'L', 'Pelajar', 'Pelanggan Lama', NULL),
	(24, 'Supriono', '0', NULL, '081231513635', NULL, '1975-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(25, 'Sahlan Afandi', '0', NULL, '081232986971', NULL, '1965-01-01', 'L', 'BUMN', 'Lwt Dpn Toko', NULL),
	(26, 'Alvian', '0', NULL, '081233176907', NULL, '1987-01-01', 'L', 'Swasta', 'Pelanggan Lama', NULL),
	(27, 'Muchlison', '0', NULL, '08123434204', NULL, '1964-01-01', 'L', 'BUMN', 'Lwt Dpn Toko', NULL),
	(28, 'Ardi', '0', NULL, '081234597669', NULL, '1988-01-01', 'L', 'Wiraswasta', 'Pelanggan Lama', NULL),
	(29, 'Ahmad Dhani F', '0', NULL, '081234702304', NULL, NULL, 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(30, 'Aini Lutfiyah', '0', NULL, '081235149982', NULL, '1967-01-01', 'P', 'Pendidik / Guru', 'Lwt Dpn Toko', NULL),
	(31, 'Ali Rochim', '0', NULL, '081235677004', 'Sheen78_sarr@yahoo.co.id', '1988-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(32, 'Fariz', '0', NULL, '081249306288', 'Fryanvic@gmail.com', '1993-01-01', 'L', 'Wiraswasta', 'Lwt Dpn Toko', 'WILMAR'),
	(33, 'Budiono', '0', NULL, '081259717571', NULL, '1992-01-01', 'L', 'Swasta', 'Wa/Bbm', NULL),
	(34, 'Rahma', '0', NULL, '081298820812', NULL, NULL, 'P', 'Wiraswasta', 'Lwt Dpn Toko', NULL),
	(35, 'M Haris', '0', NULL, '081330000201', 'haristgiri@gmail.com', '1974-01-01', 'L', 'Swasta', 'Dkt Rumah', NULL),
	(36, 'Hersky Setiawan', '0', NULL, '081330019873', NULL, '1980-01-01', 'L', 'Swasta', 'Brosur', NULL),
	(37, 'Supardi', '0', NULL, '081330101753', NULL, '1970-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(38, 'Farid S', '0', NULL, '081330187996', 'farid.setiawan@petrokimiagresik.com', '1996-01-01', 'L', 'BUMN', 'Dkt Rumah', NULL),
	(39, 'Arief', '0', NULL, '081330372332', NULL, '1978-01-01', 'L', 'Swasta', 'Pelanggan Lama', NULL),
	(40, 'Endang M', '0', NULL, '081330396381', NULL, '1967-01-01', 'P', 'PNS', 'Pelanggan Lama', NULL),
	(41, 'Shofianah Nurudin', '0', NULL, '081330432226', NULL, NULL, 'P', 'Swasta', 'Pelanggan Lama', NULL),
	(42, 'Rochim', '0', NULL, '081330462549', NULL, '1975-01-01', 'L', 'Wiraswasta', 'Lwt Dpn Toko', NULL),
	(43, 'Pujianto', '0', NULL, '081330592725', NULL, '1969-01-01', 'L', 'Wiraswasta', 'Dkt Rumah', NULL),
	(44, 'Sarup', '0', NULL, '081330757262', NULL, '1975-01-01', 'L', 'Wiraswasta', 'Dkt Rumah', NULL),
	(45, 'Agus Sulandriyo', '0', NULL, '081331052226', NULL, '1983-01-01', 'L', 'PNS', 'Dkt Rumah', NULL),
	(46, 'Iswahyudi', '0', NULL, '081331122225', NULL, NULL, 'L', 'Swasta', 'Brosur', NULL),
	(47, 'Sunarti', '0', NULL, '081331307884', NULL, '1981-01-01', 'P', 'Swasta', 'Brosur', NULL),
	(48, 'Andri', '0', NULL, '081332236081', NULL, '1981-01-01', 'L', 'Swasta', 'Brosur', NULL),
	(49, 'Bambang Sujatmiko', '0', NULL, '081332609797', 'sujatmiko1978@gmail.com', '1979-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(50, 'Richie Richmond', '0', NULL, '081332822838', NULL, '2004-01-01', 'L', 'Pelajar', 'Dkt Rumah', NULL),
	(51, 'Hamimah', '0', NULL, '081333203130', NULL, NULL, 'P', 'IRT', 'Lwt Dpn Toko', NULL),
	(52, 'Ngatirin', '0', NULL, '081333335042', NULL, NULL, 'L', 'Wiraswasta', 'Lwt Dpn Toko', NULL),
	(53, 'R Dio Permana', '0', NULL, '081333459277', 'Poetra_dio@yahoo.co.id', '1992-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(54, 'Putri', '0', NULL, '081333522392', 'dwikartikasariputri@gmail.com', '1989-01-01', 'P', 'Swasta', 'Lwt Dpn Toko', NULL),
	(55, 'Himmatul Aliyah', '0', NULL, '081335318761', NULL, '1987-01-01', 'P', 'IRT', 'Pelanggan Lama', NULL),
	(56, 'Wiwin Junaedi', '0', NULL, '081336607634', NULL, NULL, 'L', 'Wiraswasta', 'Dkt Rumah', NULL),
	(57, 'Savira', '0', NULL, '081348417924', NULL, '1999-01-01', 'P', 'Pelajar', 'Lwt Depan Toko', NULL),
	(58, 'Saiful Hadi', '0', NULL, '081357361970', NULL, '1986-01-01', 'L', 'Swasta', 'Pelanggan Lama', NULL),
	(59, 'Ainul Afif', '0', NULL, '081357550888', NULL, '1985-01-01', 'L', 'Wiraswasta', 'Lwt Depan Toko', NULL),
	(60, 'Yuni', '0', NULL, '081357686944', NULL, NULL, 'P', 'Swasta', 'Lwt Dpn Toko', NULL),
	(61, 'Galih Indra Bayu', '0', NULL, '081364680276', 'galihindrabayu@gmail.com', '1984-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(62, 'Eko Sulistiawan', '0', NULL, '081380284285', NULL, '1979-01-01', 'L', 'Wiraswasta', 'Brosur', NULL),
	(63, 'Irwan', '0', NULL, '081389011860', 'irwannazara@gmail.com', '1982-01-01', 'L', 'BUMN', 'Lwt Depan Toko', NULL),
	(64, 'Itsnaini Rokhmawati', '0', NULL, '081515922149', NULL, '1985-01-01', 'P', 'Guru', 'Lwt Dpn Toko', NULL),
	(65, 'Riyan', '0', NULL, '081515924697', NULL, '1996-01-01', 'L', 'BUMN', 'Dkt Rumah', NULL),
	(66, 'Virginia', '0', NULL, '08155005715', NULL, '2000-01-01', 'P', 'Pelajar', 'Pelanggan Lama', NULL),
	(67, 'Juwita', '0', NULL, '081554733013', 'JuwitaJune10@gmail.com', '1998-01-01', 'P', 'Pelajar', 'Brosur', NULL),
	(68, 'Misbachul Ulum', '0', NULL, '08165431419', NULL, NULL, 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(69, 'Afiyah', '0', NULL, '08175027005', NULL, '1969-01-01', 'P', 'IRT', 'Dkt Rumah', NULL),
	(70, 'Ferry Rahmad', '0', NULL, '081806101152', NULL, '1995-01-01', 'L', 'Pelajar', 'Brosur', NULL),
	(71, 'Suriyanto', '0', NULL, '081949874830', NULL, '1986-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(72, 'Raffly', '0', NULL, '082131233318', 'araypranaga@gmail.com', '1999-01-01', 'L', 'Pelajar', 'Pelanggan Lama', NULL),
	(73, 'Indra A Wibowo', '0', NULL, '082131686702', NULL, NULL, 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(74, 'M Muhibban', '0', NULL, '082232035933', NULL, NULL, 'L', 'BUMN', 'Pelanggan Lama', 'RESELLER'),
	(75, 'Fatich', '0', NULL, '082232404311', NULL, NULL, 'L', 'Swasta', 'Brosur', NULL),
	(76, 'Catur Putra', '0', NULL, '082233223421', NULL, '1993-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(77, 'Wahyu Jaka', '0', NULL, '082233648331', NULL, NULL, 'L', 'Pelajar', 'Bbm', NULL),
	(78, 'Sri Wahyuni', '0', NULL, '082233996419', NULL, '1974-01-01', 'P', 'Wiraswasta', 'Lwt Dpn Toko', 'RESELLER'),
	(79, 'Eby', '0', NULL, '082234068181', NULL, '1996-01-01', 'L', 'Pelajar', 'Brosur', NULL),
	(80, 'Dedik Setyawan', '0', NULL, '082234341112', 'Deddystia06@gmail.com', '1990-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(81, 'Tri Subardini', '0', NULL, '082240962969', NULL, '1967-01-01', 'P', 'Wiraswasta', 'Lwt Depan Toko', NULL),
	(82, 'Reza Septia', '0', NULL, '082245259555', 'rezaseptia10@gmail.com', '1996-01-01', 'P', 'Pelajar', 'Pelanggan Lama', NULL),
	(83, 'Supardi A S ', '0', NULL, '082245454279', NULL, '1974-01-01', 'L', 'Swasta', 'Brosur', NULL),
	(84, 'Riyan Rakhmat Maulana', '0', NULL, '082328841264', NULL, '1989-01-01', 'L', 'Wiraswasta', 'Dkt Rumah', NULL),
	(85, 'Riastanto H W ', '0', NULL, '082329308065', 'thegogoners@gmail.com', '1982-01-01', 'L', 'Swasta', 'Teman', NULL),
	(86, 'Nungky Anggraini', '0', NULL, '083830648003', 'Nungkyanggraini317@gmail.com', '1997-01-01', 'P', 'Swasta', 'Brosur', NULL),
	(87, 'Maria Ulfah', '0', NULL, '083832430122', 'maria.ssstlsby29@gmail.com', '1986-01-01', 'P', 'Swasta', 'Lwt Depan Toko', NULL),
	(88, 'Fatikhatul Khusnia', '0', NULL, '083832580511', NULL, '1991-01-01', 'P', 'Guru', 'Pelanggan Lama', NULL),
	(89, 'Khoirun Nida', '0', NULL, '083832632081', NULL, '2002-01-01', 'P', 'Pelajar', 'Lwt Dpn Toko', NULL),
	(90, 'Yuliana', '0', NULL, '083832724017', NULL, '1994-01-01', 'P', 'Swasta', 'Lwt Dpn Toko', NULL),
	(91, 'Citra Ayu P.', '0', NULL, '083832842471', NULL, '1998-01-01', 'P', 'Pelajar', 'Pelanggan Lama', NULL),
	(92, 'Beni Saputra', '0', NULL, '083832872123', NULL, '1987-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(93, 'Zainul Arifudhin', '0', NULL, '083832892077', NULL, '1991-01-01', 'L', 'Swasta', 'Brosur', NULL),
	(94, 'Fatkhur Rohman', '0', NULL, '083849151744', NULL, '1978-01-01', 'L', 'Wiraswasta', 'Pelanggan Lama', NULL),
	(95, 'Wisnu P', '0', NULL, '083849397889', NULL, NULL, 'L', 'Swasta', 'Dkt Rumah', NULL),
	(96, 'Siti Asfiyah', '0', NULL, '083849707775', NULL, '1980-01-01', 'P', 'Swasta', 'Lwt Dpn Toko', NULL),
	(97, 'M. Ardiansyah', '0', NULL, '083854865501', NULL, '1991-01-01', 'L', 'Lainnya', 'Lwt Dpn Toko', NULL),
	(98, 'Lutfi Wahyudi', '0', NULL, '083854990495', NULL, '1990-01-01', 'L', 'Dokter / Perawat', 'Pelanggan Lama', NULL),
	(99, 'A Prawira', '0', NULL, '08385544741', NULL, '1987-01-01', 'L', 'Swasta', 'Pelanggan Lama', NULL),
	(100, 'M. Agung S.', '0', NULL, '083856895607', NULL, '1997-01-01', 'L', 'Lainnya', 'Brosur', NULL),
	(101, 'Iswahyudi', '0', NULL, '085100155620', NULL, NULL, 'L', 'Swasta', 'Pelanggan Lama', NULL),
	(102, 'Rahmad', '0', NULL, '085100742536', NULL, NULL, 'L', 'Wiraswasta', 'Pelanggan Lama', NULL),
	(103, 'Sri Setyaningsih', '0', NULL, '085101816631', NULL, '1974-01-01', 'P', 'BUMN', 'Lwt Dpn Toko', NULL),
	(104, 'Catur Rochsoli Masfut', '0', NULL, '085103044080', NULL, '1985-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(105, 'Fajar Firmansyah', '0', NULL, '085230999979', NULL, '1985-01-01', 'L', 'Swasta', 'Brosur', NULL),
	(106, 'Mutia', '0', NULL, '085232990581', 'meyko245@gmail.com', '1982-01-01', 'P', 'IRT', 'Lwt Depan Toko', 'switch xiomi'),
	(107, 'Devi Yulia Indah', '0', NULL, '085233829214', NULL, NULL, 'P', 'BUMN', 'Pelanggan Lama', NULL),
	(108, 'Aisyah', '0', NULL, '085257865940', NULL, '1978-01-01', 'P', 'Swasta', 'Lwt Dpn Toko', NULL),
	(109, 'Suwono', '0', NULL, '085259710446', NULL, NULL, 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(110, 'Andrik', '0', NULL, '085331317772', NULL, '1994-01-01', 'L', 'Swasta', 'Dkt Rumah', NULL),
	(111, 'Ayu W Nisa', '0', NULL, '085331597193', NULL, '1988-01-01', 'P', 'IRT', 'Dkt Rumah', 'WILMAR'),
	(112, 'Ratih Silvirianita', '0', NULL, '085604769484', NULL, '1998-01-01', 'P', 'Pelajar', 'Brosur', NULL),
	(113, 'Achmad Namrun', '0', NULL, '085606201261', NULL, '1985-01-01', 'L', 'Wiraswasta', 'Lwt Dpn Toko', NULL),
	(114, 'Firly', '0', NULL, '085607536525', 'Zidnyilman130697@gmail.com', '1998-01-01', 'P', 'Pelajar', 'Dkt Rumah', NULL),
	(115, 'Wahyu Putra P', '0', NULL, '08563337499', NULL, '1991-01-01', 'L', 'PNS', 'Dkt Rumah', NULL),
	(116, 'Suminten', '0', NULL, '08563688860', NULL, NULL, 'P', 'Swasta', 'Lwt Dpn Toko', NULL),
	(117, 'Niswatun Hasanah', '0', NULL, '085643629009', 'neezwah_86@yahoo.co.id', '1987-01-01', 'P', 'Guru', 'Banner', NULL),
	(118, 'Andrey', '0', NULL, '085645478580', 'andreyyoga@gmail.com', '1992-01-01', 'L', 'Swasta', 'Dkt Rumah', NULL),
	(119, 'Dadang Sugiri', '0', NULL, '085648002006', NULL, '1983-01-01', 'L', 'PNS', 'Lwt Depan Toko', NULL),
	(120, 'Imam Khanafi', '0', NULL, '085648447018', 'hati.sufi18@yahoo.com', '1987-01-01', 'L', 'PNS', 'Lwt Depan Toko', NULL),
	(121, 'Solikin', '0', NULL, '085655222835', NULL, '1983-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(122, 'Donny P', '0', NULL, '085655443965', NULL, '1991-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(123, 'Cahyo', '0', NULL, '08565550289', NULL, '1982-01-01', 'L', 'Swasta', 'Pelanggan Lama', NULL),
	(124, 'Anita', '0', NULL, '085655540226', NULL, '1995-01-01', 'P', 'IRT', 'Brosur', NULL),
	(125, 'Sony Sumarsono', '0', NULL, '085655550438', NULL, '1986-01-01', 'L', 'Swasta', 'Lwt Depan Toko', NULL),
	(126, 'Mansur', '0', NULL, '08567565095', NULL, NULL, 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(127, 'Wahyudi', '0', NULL, '085696058509', NULL, NULL, 'L', 'Swasta', 'Brosur', NULL),
	(128, 'M . Dicky', '0', NULL, '085707311732', NULL, NULL, 'L', 'Swasta', 'Banner', NULL),
	(129, 'Abdul Gofur', '0', NULL, '085708465116', NULL, NULL, 'L', 'Swasta', 'Lwt Depan Toko', NULL),
	(130, 'Dadang Sanjaya', '0', NULL, '085730098420', NULL, '1990-01-01', 'L', 'Lainnya', 'Pelanggan Lama', NULL),
	(131, 'Adam Al Ghani', '0', NULL, '085730168881', NULL, '1997-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(132, 'Alfi Syahmi', '0', NULL, '085730392407', NULL, NULL, 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(133, 'Kuswandi', '0', NULL, '085730541233', NULL, '1977-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(134, 'Rendra Rizky M', '0', NULL, '085730660095', 'rendra180893@gmail.com', '1994-01-01', 'L', 'BUMN', 'Lwt Dpn Toko', NULL),
	(135, 'Mudaliyah', '0', NULL, '085731298200', 'mudaliyahliyah@gmail.com', NULL, 'P', 'Swasta', 'Event/Pameran', NULL),
	(136, 'Sahrul Bachtiar', '0', NULL, '085731313134', NULL, NULL, 'L', 'Wiraswasta', 'Pelanggan Lama', NULL),
	(137, 'Nur Hadi', '0', NULL, '085731341566', NULL, '1985-01-01', 'L', 'BUMN', 'Pelanggan Lama', NULL),
	(138, 'Miftach Ali', '0', NULL, '085731406847', NULL, '1979-01-01', 'L', 'Wiraswasta', 'Brosur', NULL),
	(139, 'Ocha', '0', NULL, '085731516469', NULL, '1992-01-01', 'P', 'IRT', 'Lwt Dpn Toko', 'RESELLER'),
	(140, 'Vivi Dewi A.', '0', NULL, '085731785109', NULL, NULL, 'P', 'IRT', 'Dekat Rumah', NULL),
	(141, 'Adrian Syahmi Dewanto', '0', NULL, '085731919259', NULL, NULL, 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(142, 'Ifri Rahmah', '0', NULL, '085732027654', NULL, '1987-01-01', 'P', 'Guru', 'Dkt Rumah', NULL),
	(143, 'Widono', '0', NULL, '085732169332', NULL, '1981-01-01', 'L', 'BUMN', 'Lwt Dpn Toko', NULL),
	(144, 'Nanda', '0', NULL, '085733361855', NULL, '1988-01-01', 'P', 'Wiraswasta', 'Brosur', NULL),
	(145, 'Pipit', '0', NULL, '085733473356', NULL, '1994-01-01', 'P', 'Swasta', 'Lwt Depan Toko', NULL),
	(146, 'Syamsul Hadi', '0', NULL, '085733502950', 'syamsulhadi20@yahoo.co.id', '1975-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(147, 'Ibnu', '0', NULL, '085733752479', NULL, '1982-01-01', 'L', 'Swasta', 'Dkt Rumah', NULL),
	(148, 'Patria Satya N', '0', NULL, '085735155533', NULL, '1992-01-01', 'L', 'Swasta', 'Brosur', NULL),
	(149, 'Ayu', '0', NULL, '085736888715', NULL, '1999-01-01', 'P', 'Swasta', 'Dkt Rumah', NULL),
	(150, 'Dwi Harmaji', '0', NULL, '085739851751', NULL, '1984-01-01', 'L', 'PNS', 'Dkt Rumah', NULL),
	(151, 'Erik Tri Hartono', '0', NULL, '085745388686', NULL, '1987-01-01', 'L', 'BUMN', 'Lwt Dpn Toko', NULL),
	(152, 'Linda', '0', NULL, '085745699107', NULL, '1997-01-01', 'P', 'Wiraswasta', 'Brosur', NULL),
	(153, 'Abd Khafid', '0', NULL, '085748442840', NULL, NULL, 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(154, 'Saifuddin', '0', NULL, '08575561633', NULL, '1992-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(155, 'Fatchur Rohman', '0', NULL, '085755757194', NULL, '1979-01-01', 'L', 'Wiraswasta', 'Pelanggan Lama', 'RESELLER'),
	(156, 'Wahyu K S', '0', NULL, '085770770417', NULL, '1989-01-01', 'L', 'Swasta', 'Dkt Rumah', NULL),
	(157, 'Patno', '0', NULL, '085785444418', NULL, '1977-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(158, 'Ratno', '0', NULL, '085799933706', NULL, '1989-01-01', 'L', 'BUMN', 'Lwt Dpn Toko', NULL),
	(159, 'Tawaria Rosivita', '0', NULL, '085850250003', NULL, '1993-01-01', 'P', 'Swasta', 'Pelanggan Lama', NULL),
	(160, 'Ayu Surya ', '0', NULL, '085850656607', NULL, '1992-01-01', 'P', 'Dokter / Perawat', 'Brosur', NULL),
	(161, 'Rukini', '0', NULL, '085852183660', NULL, '1984-01-01', 'P', 'IRT', 'Dkt Rumah', NULL),
	(162, 'Hesty', '0', NULL, '085856432999', NULL, '1987-01-01', 'P', 'Swasta', 'Dkt Rumah', NULL),
	(163, 'Supiyati', '0', NULL, '087701165100', NULL, NULL, 'P', 'Swasta', 'Brosur', NULL),
	(164, 'Mila Nur Diana', '0', NULL, '087855609069', NULL, '1979-01-01', 'P', 'Wiraswasta', 'Lwt Dpn Toko', NULL),
	(165, 'Fatchur Rozi', '0', NULL, '087856212099', NULL, '1974-01-01', 'L', 'PNS', 'Pelanggan Lama', NULL),
	(166, 'Eko Purwanto', '0', NULL, '087856240952', NULL, '1976-01-01', 'L', 'Swasta', 'Lwt Dpn Toko', NULL),
	(167, 'Sitta Setiyorini', '0', NULL, '087881214488', NULL, '1972-01-01', 'P', 'IRT', 'Dkt Rumah', NULL),
	(168, 'Zahrotul Mahromah', '0', NULL, '0895360036864', NULL, NULL, 'P', 'Pelajar', 'Lwt Dpn Toko', NULL),
	(169, 'Niken Larasati', '0', NULL, '089627995736', 'Kenlarasati4@gmail.com', '1994-01-01', 'P', 'Dokter / Perawat', 'Dkt Rumah', NULL),
	(170, 'Muhammad Nur Syahid', '0', NULL, '089683229190', NULL, NULL, 'L', 'Swasta', 'Brosur', NULL),
	(171, 'Shara Shakinah A', '0', NULL, '089686746002', 'Sharaanggraini@gmail.com', '2001-01-01', 'P', 'Pelajar', 'Lwt Dpn Toko', NULL),
	(172, 'Labda Night N', '0', NULL, '08995050521', 'labdanightn@gmail.com', '1997-01-01', 'L', 'BUMN', 'Lwt Dpn Toko', NULL);
/*!40000 ALTER TABLE `d_comp_customer` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_comp_jurnal
CREATE TABLE IF NOT EXISTS `d_comp_jurnal` (
  `Column 1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_comp_jurnal: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_comp_jurnal` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_comp_jurnal` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_comp_jurnalresume: ~94 rows (approximately)
/*!40000 ALTER TABLE `d_comp_jurnalresume` DISABLE KEYS */;
REPLACE INTO `d_comp_jurnalresume` (`cjr_comp`, `cjr_period`, `cjr_coa_code`, `cjr_value`, `cjr_insert`, `cjr_update`) VALUES
	('RM00000001', '201701', '100000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101010000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101010101', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101010201', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101010202', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101010203', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101010204', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101020000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101030000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101030100', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101030200', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101040000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101040100', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101040200', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101050000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101050200', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101060000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '101070000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '102000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '102010000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '102020000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '102030000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '102040000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '103000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '200000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '201000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '201010000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '201020000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '201090000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '201090101', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '201090601', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '201090602', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '201090701', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '202000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '203000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '300000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '301000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '301010000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '301020000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '302000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '302010000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '302050000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '303000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '304000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '305000000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201701', '305010000', 0, '2017-12-14 08:28:35', '2017-12-14 08:28:35'),
	('RM00000001', '201702', '100000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101010000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101010101', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101010201', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101010202', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101010203', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101010204', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101020000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101030000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101030100', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101030200', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101040000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101040100', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101040200', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101050000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101050200', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101060000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '101070000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '102000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '102010000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '102020000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '102030000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '102040000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '103000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '200000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '201000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '201010000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '201020000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '201090000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '201090101', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '201090601', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '201090602', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '201090701', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '202000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '203000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '300000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '301000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '301010000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '301020000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '302000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '302010000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '302050000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '303000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '304000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '305000000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42'),
	('RM00000001', '201702', '305010000', 0, '2017-12-14 08:28:42', '2017-12-14 08:28:42');
/*!40000 ALTER TABLE `d_comp_jurnalresume` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_comp_jurnalresume_copy: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_comp_jurnalresume_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_comp_jurnalresume_copy` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_comp_mem: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_comp_mem` DISABLE KEYS */;
REPLACE INTO `d_comp_mem` (`cm_comp`, `cm_code`, `cm_mem`, `cm_reg_tgl`, `cm_note`, `cm_out_tgl`, `cm_isout`, `cm_insert`, `cm_update`) VALUES
	('RM00000001', '1', NULL, '2017-02-23', NULL, '2017-02-23', '1', '2017-02-23 13:24:29', '2017-06-13 10:32:45'),
	('RM00000002', '', NULL, NULL, NULL, NULL, '0', NULL, '2017-06-13 09:47:04');
/*!40000 ALTER TABLE `d_comp_mem` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_comp_project: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_comp_project` DISABLE KEYS */;
REPLACE INTO `d_comp_project` (`cp_id`, `cp_comp`, `cp_code`, `cp_type`, `cp_name`, `cp_client`, `cp_value`, `cp_start`, `cp_deadline`, `cp_isclosed`, `cp_insert`, `cp_update`) VALUES
	(1, 'FG00000001', '0000-0000', NULL, 'Project On Prospect\r\n', NULL, NULL, NULL, NULL, '0', '2016-04-09 05:05:41', '2016-04-12 07:04:10');
/*!40000 ALTER TABLE `d_comp_project` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_comp_sub: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_comp_sub` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_comp_sub` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_comp_trans: ~382 rows (approximately)
/*!40000 ALTER TABLE `d_comp_trans` DISABLE KEYS */;
REPLACE INTO `d_comp_trans` (`tr_comp`, `tr_year`, `tr_code`, `tr_codesub`, `tr_name`, `tr_namesub`, `tr_cashtype`, `tr_cashflow`, `tr_locked`, `tr_acc01`, `tr_acc01dk`, `tr_acc02`, `tr_acc02dk`, `tr_acc03`, `tr_acc03dk`, `tr_acc04`, `tr_acc04dk`, `tr_insert`, `tr_update`, `tr_ref`) VALUES
	('RM00000001', '2017', '10001', 1, 'rosyik', '-', 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, '2018-02-27 02:11:24', '2018-02-27 02:11:24', NULL),
	('RM00000001', '2017', '10001', 2, 'rosyik', '-', 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, '2018-02-27 02:11:28', '2018-02-27 02:11:28', NULL),
	('RM00000001', '2018', '10101', 1, 'Penjualan Simcard Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10102', 1, 'Penjualan Handphone Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10103', 1, 'Penjualan Asesoris Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10104', 1, 'Penjualan Memori Card Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10105', 1, 'Penjualan Demo Live Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10106', 1, 'Penjualan Modem Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10107', 1, 'Penjualan Asuransi Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10109', 1, 'Penjualan Lain-Lain Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10111', 1, 'Penjualan Simcard Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10112', 1, 'Penjualan Handphone Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10113', 1, 'Penjualan Asesoris Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10114', 1, 'Penjualan Lain-Lain Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10141', 1, 'Penjualan Simcard Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10142', 1, 'Penjualan Handphone Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10143', 1, 'Penjualan Asesoris Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10144', 1, 'Penjualan Memori Card Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10145', 1, 'Penjualan Demo Live Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10146', 1, 'Penjualan Modem Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10147', 1, 'Penjualan Asuransi Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10149', 1, 'Penjualan Lain-Lain Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10151', 1, 'Penjualan Simcard Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10152', 1, 'Penjualan Handphone Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10153', 1, 'Penjualan Asesoris Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10154', 1, 'Penjualan Memori Card Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10155', 1, 'Penjualan Demo Live Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10156', 1, 'Penjualan Modem Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10157', 1, 'Penjualan Asuransi Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10159', 1, 'Penjualan Lain-Lain Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10161', 1, 'Penjualan Simcard Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10162', 1, 'Penjualan Handphone Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10163', 1, 'Penjualan Asesoris Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10164', 1, 'Penjualan Lain-Lain Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10201', 1, 'Penjualan Simcard Non Tunai', NULL, '', NULL, '0', '101030100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10202', 1, 'Penjualan Handphone Non Tunai', NULL, '', NULL, '0', '101030100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10203', 1, 'Penjualan Asesoris Non Tunai', NULL, '', NULL, '0', '101030100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10204', 1, 'Penjualan Memori Card Non Tunai', NULL, '', NULL, '0', '101030100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10205', 1, 'Penjualan Demo Live Non Tunai', NULL, '', NULL, '0', '101030100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10206', 1, 'Penjualan Modem Non Tunai', NULL, '', NULL, '0', '101030100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10207', 1, 'Penjualan Asuransi Non Tunai', NULL, '', NULL, '0', '101030100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10209', 1, 'Penjualan Lain-Lain Non Tunai', NULL, '', NULL, '0', '101030100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '10301', 1, 'Komisi', NULL, 'O', -1, '0', '101010101', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '12101', 1, 'Return Barang : Pengembalian', NULL, '', 1, '0', '101050100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '12102', 1, 'Return Barang : Ganti Barang', NULL, '', -1, '0', '101050100', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '12103', 1, 'Return Barang : Ganti Uang', NULL, 'O', -1, '0', '101012001', -1, '101050100', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '20101', 1, 'Penggunaan Persediaan Usaha', NULL, '', NULL, '0', '101050100', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '20102', 1, 'Penggunaan Persediaan Konsinyasi', NULL, '', NULL, '0', '101050200', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30100', 1, 'Biaya Operasional', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30101', 1, 'Biaya Operasional : Sales Reward ACC', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30102', 1, 'Biaya Operasional : Sales Reward HP', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30103', 1, 'Biaya Operasional : Sales The Best', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30200', 1, 'Biaya Operasional : Gaji Back Office', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30201', 1, 'Biaya Operasional : GKB Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30202', 1, 'Biaya Operasional : Usdar Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30203', 1, 'Biaya Operasional : Sutomo Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30299', 1, 'Biaya Operasional : Bonus', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30301', 1, 'Biaya Operasional : Ongkos Kirim', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30303', 1, 'Biaya Operasional : Kertas Print', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30304', 1, 'Biaya Operasional : Customer Service', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30501', 1, 'Biaya Operasional : Biaya Listrik dan Air GKB', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30502', 1, 'Biaya Operasional : Biaya Listrik dan Air Soetomo', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30503', 1, 'Biaya Operasional : Biaya Listrik dan Air Usdar', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30601', 1, 'Biaya Operasional : Biaya Telpon dan Internet', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30602', 1, 'Biaya Operasional : Biaya Perawatan', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30603', 1, 'Biaya Operasional : Biaya Lainnya', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30604', 1, 'Biaya Operasional : Alat Tulis Kantor', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30700', 1, 'Biaya Operasional : Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30701', 1, 'Biaya Operasional : GKB Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30702', 1, 'Biaya Operasional : Sutomo Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30703', 1, 'Biaya Operasional : Usdar Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30801', 1, 'Biaya Operasional : Biaya Keamanan dan Kebersihan', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30802', 1, 'Biaya Operasional : Personal Dev', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30901', 1, 'Biaya Operasional : Marketing Flyer dan Banner', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30902', 1, 'Biaya Operasional : Marketing Radio', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30903', 1, 'Biaya Operasional : Marketing Hadiah', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30904', 1, 'Biaya Operasional : Marketing Seragam', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30905', 1, 'Biaya Operasional : Marketing Voucher ', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30906', 1, 'Biaya Operasional : Marketing Rusak Ganti Baru', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30907', 1, 'Biaya Operasional : PROMO', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30908', 1, 'Biaya Operasional : Marketing Media Online', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30909', 1, 'Biaya Operasional : Marketing Diskon ACC', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '30910', 1, 'Biaya Operasional : Pengembangan Usaha', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '51001', 1, 'Piutang Usaha : Refund Supplier', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '51002', 1, 'Return Supplier : Pengembalian Barang', NULL, '', NULL, '0', '101050200', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '51003', 1, 'Return Supplier : Ganti Barang', NULL, '', NULL, '0', '101050200', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '51004', 1, 'Return Supplier : Ganti Uang', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '62111', 1, 'Pajak Penjualan Simcard', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '62112', 1, 'Pajak Penjualan Handphone', NULL, '', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-27 13:00:25', NULL),
	('RM00000001', '2018', '62113', 1, 'Pajak Penjualan Asesoris', NULL, '', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-27 13:00:47', NULL),
	('RM00000001', '2018', '62114', 1, 'Pajak Penjualan Memori Card', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '62115', 1, 'Pajak Penjualan Demo Live', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '62116', 1, 'Pajak Penjualan Modem', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '62117', 1, 'Pajak Penjualan Asuransi', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '62119', 1, 'Pajak Penjualan Lain-Lain', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '71001', 1, 'rosyik', '', 'O', 1, '0', '101010101', 1, '301030000', 1, NULL, NULL, NULL, NULL, '2018-03-04 02:37:11', '2018-03-04 02:37:11', NULL),
	('RM00000001', '2018', '72201', 1, 'Piutang Non Usaha : Owner', NULL, 'F', -1, '0', '101010101', -1, '101040100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '72202', 1, 'Piutang Non Usaha : Karyawan', NULL, 'F', -1, '0', '101010101', -1, '101040200', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '72301', 1, 'Pembayaran Piutang Non Usaha : Owner', NULL, 'F', 1, '0', '101010101', 1, '101040100', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '72302', 1, 'Pembayaran Piutang Non Usaha : Karyawan', NULL, 'F', 1, '0', '101010101', 1, '101040200', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '72401', 1, 'Penerimaan Barang dr PO', NULL, NULL, NULL, '0', '101050200', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '73104', 1, 'Pembelian ke  Suplier : Pembayaran Tunai Via Kas ', NULL, 'O', -1, '0', '101010101', -1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '74101', 1, 'Pengadaan Persediaan', NULL, '', NULL, '0', '101050100', 1, '201010000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000001', '2018', '74102', 1, 'Pembayaran Hutang Suplier via Kas Pusat', NULL, 'O', -1, '0', '101010101', -1, '201010000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', '201010000'),
	('RM00000001', '2018', '74103', 1, 'Pembayaran Hutang Suplier via Kas BCA', NULL, 'O', -1, '0', '101010201', -1, '201010000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', '201010000'),
	('RM00000001', '2018', '74104', 1, 'Pembayaran Hutang Suplier via Kas BCA P', NULL, 'O', -1, '0', '101010202', -1, '201010000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', '201010000'),
	('RM00000001', '2018', '74105', 1, 'Pembayaran Hutang Suplier via Kas Permata', NULL, 'O', -1, '0', '101010203', -1, '201010000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', '201010000'),
	('RM00000001', '2018', '74106', 1, 'Pembayaran Hutang Suplier via Kas Permata P', NULL, 'O', -1, '0', '101010204', -1, '201010000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', '201010000'),
	('RM00000001', '2018', '74107', 1, 'Pembelian ke Suplier : Pembayaran Tunai Tempo', NULL, 'O', -1, '0', '201010000', 1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10101', 1, 'Penjualan Simcard Tunai Via BCA 01', NULL, 'O', 1, '0', '101011001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10102', 1, 'Penjualan Handphone Tunai Via BCA 01', NULL, 'O', 1, '0', '101011001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10103', 1, 'Penjualan Asesoris Tunai Via BCA 01', NULL, 'O', 1, '0', '101011001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10104', 1, 'Penjualan Memori Card Tunai Via BCA 01', NULL, 'O', 1, '0', '101011001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10105', 1, 'Penjualan Demo Live Tunai Via BCA 01', NULL, 'O', 1, '0', '101011001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10106', 1, 'Penjualan Modem Tunai Via BCA 01', NULL, 'O', 1, '0', '101011001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10107', 1, 'Penjualan Asuransi Tunai Via BCA 01', NULL, 'O', 1, '0', '101011001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10109', 1, 'Penjualan Lain-Lain Tunai Via BCA 01', NULL, 'O', 1, '0', '101011001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10111', 1, 'Penjualan Simcard Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10112', 1, 'Penjualan Handphone Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10113', 1, 'Penjualan Asesoris Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10114', 1, 'Penjualan Lain-Lain Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10141', 1, 'Penjualan Simcard Tunai Via Kas', NULL, 'O', 1, '0', '101012001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10142', 1, 'Penjualan Handphone Tunai Via Kas', NULL, 'O', 1, '0', '101012001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10143', 1, 'Penjualan Asesoris Tunai Via Kas', NULL, 'O', 1, '0', '101012001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10144', 1, 'Penjualan Memori Card Tunai Via Kas', NULL, 'O', 1, '0', '101012001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10145', 1, 'Penjualan Demo Live Tunai Via Kas', NULL, 'O', 1, '0', '101012001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10146', 1, 'Penjualan Modem Tunai Via Kas', NULL, 'O', 1, '0', '101012001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10147', 1, 'Penjualan Asuransi Tunai Via Kas', NULL, 'O', 1, '0', '101012001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10149', 1, 'Penjualan Lain-Lain Tunai Via Kas', NULL, 'O', 1, '0', '101012001', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10151', 1, 'Penjualan Simcard Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10152', 1, 'Penjualan Handphone Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10153', 1, 'Penjualan Asesoris Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10154', 1, 'Penjualan Memori Card Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10155', 1, 'Penjualan Demo Live Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10156', 1, 'Penjualan Modem Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10157', 1, 'Penjualan Asuransi Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10159', 1, 'Penjualan Lain-Lain Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10161', 1, 'Penjualan Simcard Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10162', 1, 'Penjualan Handphone Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10163', 1, 'Penjualan Asesoris Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10164', 1, 'Penjualan Lain-Lain Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10201', 1, 'Penjualan Simcard Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10202', 1, 'Penjualan Handphone Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10203', 1, 'Penjualan Asesoris Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10204', 1, 'Penjualan Memori Card Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10205', 1, 'Penjualan Demo Live Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10206', 1, 'Penjualan Modem Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10207', 1, 'Penjualan Asuransi Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10209', 1, 'Penjualan Lain-Lain Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '10301', 1, 'Komisi', NULL, 'O', -1, '0', '101010101', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '12101', 1, 'Return Barang : Pengembalian', NULL, '', 1, '0', '101050100', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '20101', 1, 'Penggunaan Persediaan Usaha', NULL, '', NULL, '0', '101050100', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '20102', 1, 'Penggunaan Persediaan Konsinyasi', NULL, '', NULL, '0', '101050200', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30100', 1, 'Biaya Operasional', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30101', 1, 'Biaya Operasional : Sales Reward ACC', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30102', 1, 'Biaya Operasional : Sales Reward HP', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30103', 1, 'Biaya Operasional : Sales The Best', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30200', 1, 'Biaya Operasional : Gaji Back Office', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30201', 1, 'Biaya Operasional : GKB Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30202', 1, 'Biaya Operasional : Usdar Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30203', 1, 'Biaya Operasional : Sutomo Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30299', 1, 'Biaya Operasional : Bonus', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30301', 1, 'Biaya Operasional : Ongkos Kirim', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30303', 1, 'Biaya Operasional : Kertas Print', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30304', 1, 'Biaya Operasional : Customer Service', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30501', 1, 'Biaya Operasional : Biaya Listrik dan Air GKB', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30502', 1, 'Biaya Operasional : Biaya Listrik dan Air Soetomo', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30503', 1, 'Biaya Operasional : Biaya Listrik dan Air Usdar', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30601', 1, 'Biaya Operasional : Biaya Telpon dan Internet', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30602', 1, 'Biaya Operasional : Biaya Perawatan', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30603', 1, 'Biaya Operasional : Biaya Lainnya', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30604', 1, 'Biaya Operasional : Alat Tulis Kantor', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30700', 1, 'Biaya Operasional : Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30701', 1, 'Biaya Operasional : GKB Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30702', 1, 'Biaya Operasional : Sutomo Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30703', 1, 'Biaya Operasional : Usdar Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30801', 1, 'Biaya Operasional : Biaya Keamanan dan Kebersihan', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30802', 1, 'Biaya Operasional : Personal Dev', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30901', 1, 'Biaya Operasional : Marketing Flyer dan Banner', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30902', 1, 'Biaya Operasional : Marketing Radio', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30903', 1, 'Biaya Operasional : Marketing Hadiah', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30904', 1, 'Biaya Operasional : Marketing Seragam', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30905', 1, 'Biaya Operasional : Marketing Voucher ', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30906', 1, 'Biaya Operasional : Marketing Rusak Ganti Baru', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30907', 1, 'Biaya Operasional : PROMO', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30908', 1, 'Biaya Operasional : Marketing Media Online', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30909', 1, 'Biaya Operasional : Marketing Diskon ACC', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '30910', 1, 'Biaya Operasional : Pengembangan Usaha', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '51001', 1, 'Piutang Usaha : Refund Supplier', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '62111', 1, 'Pajak Penjualan Simcard', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '62112', 1, 'Pajak Penjualan Handphone', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '62113', 1, 'Pajak Penjualan Asesoris', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '62114', 1, 'Pajak Penjualan Memori Card', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '62115', 1, 'Pajak Penjualan Demo Live', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '62116', 1, 'Pajak Penjualan Modem', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '62117', 1, 'Pajak Penjualan Asuransi', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '62119', 1, 'Pajak Penjualan Lain-Lain', NULL, 'O', 1, '0', '201090601', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '72201', 1, 'Piutang Non Usaha : Owner', NULL, 'F', -1, '0', '101010101', -1, '101040100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '72202', 1, 'Piutang Non Usaha : Karyawan', NULL, 'F', -1, '0', '101010101', -1, '101040200', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '72301', 1, 'Pembayaran Piutang Non Usaha : Owner', NULL, 'F', 1, '0', '101010101', 1, '101040100', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '72302', 1, 'Pembayaran Piutang Non Usaha : Karyawan', NULL, 'F', 1, '0', '101010101', 1, '101040200', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '73104', 1, 'Pembelian ke  Suplier : Pembayaran Tunai Via Kas', NULL, 'O', -1, '0', '101010101', -1, '101050100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '74101', 1, 'Pengadaan Persediaan', NULL, '', NULL, '0', '101050100', 1, '201010000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '74102', 1, 'Pembayaran Hutang Suplier', NULL, 'O', -1, '0', '101010101', -1, '201010000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '74103', 1, 'Pembelian ke Suplier : Pembayaran Tunai Tempo', NULL, 'O', -1, '0', '101050100', 1, '201010000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000002', '2018', '74104', 1, 'Pembelian ke  Suplier : Pembayaran Tunai Via Kas', NULL, 'O', -1, '0', '101010101', -1, '101050100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10101', 1, 'Penjualan Simcard Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10102', 1, 'Penjualan Handphone Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10103', 1, 'Penjualan Asesoris Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10104', 1, 'Penjualan Memori Card Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10105', 1, 'Penjualan Demo Live Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10106', 1, 'Penjualan Modem Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10107', 1, 'Penjualan Asuransi Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10109', 1, 'Penjualan Lain-Lain Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10111', 1, 'Penjualan Simcard Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10112', 1, 'Penjualan Handphone Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10113', 1, 'Penjualan Asesoris Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10114', 1, 'Penjualan Lain-Lain Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10141', 1, 'Penjualan Simcard Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '201020000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10142', 1, 'Penjualan Handphone Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '201020000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10143', 1, 'Penjualan Asesoris Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '201020000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10144', 1, 'Penjualan Memori Card Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '201020000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10145', 1, 'Penjualan Demo Live Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '201020000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10146', 1, 'Penjualan Modem Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '201020000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10147', 1, 'Penjualan Asuransi Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '201020000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10149', 1, 'Penjualan Lain-Lain Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '201020000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10151', 1, 'Penjualan Simcard Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10152', 1, 'Penjualan Handphone Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10153', 1, 'Penjualan Asesoris Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10154', 1, 'Penjualan Memori Card Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10155', 1, 'Penjualan Demo Live Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10156', 1, 'Penjualan Modem Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10157', 1, 'Penjualan Asuransi Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10159', 1, 'Penjualan Lain-Lain Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10161', 1, 'Penjualan Simcard Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10162', 1, 'Penjualan Handphone Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10163', 1, 'Penjualan Asesoris Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10164', 1, 'Penjualan Lain-Lain Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10201', 1, 'Penjualan Simcard Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10202', 1, 'Penjualan Handphone Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10203', 1, 'Penjualan Asesoris Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10204', 1, 'Penjualan Memori Card Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10205', 1, 'Penjualan Demo Live Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10206', 1, 'Penjualan Modem Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10207', 1, 'Penjualan Asuransi Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10209', 1, 'Penjualan Lain-Lain Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '10301', 1, 'Komisi', NULL, 'O', -1, '0', '101010101', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '20101', 1, 'Penggunaan Persediaan Usaha', NULL, '', NULL, '0', '101050100', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '20102', 1, 'Penggunaan Persediaan Konsinyasi', NULL, '', NULL, '0', '101050200', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30100', 1, 'Biaya Operasional', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30101', 1, 'Biaya Operasional : Sales Reward ACC', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30102', 1, 'Biaya Operasional : Sales Reward HP', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30103', 1, 'Biaya Operasional : Sales The Best', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30200', 1, 'Biaya Operasional : Gaji Back Office', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30201', 1, 'Biaya Operasional : GKB Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30202', 1, 'Biaya Operasional : Usdar Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30203', 1, 'Biaya Operasional : Sutomo Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30299', 1, 'Biaya Operasional : Bonus', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30301', 1, 'Biaya Operasional : Ongkos Kirim', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30303', 1, 'Biaya Operasional : Kertas Print', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30304', 1, 'Biaya Operasional : Customer Service', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30501', 1, 'Biaya Operasional : Biaya Listrik dan Air GKB', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30502', 1, 'Biaya Operasional : Biaya Listrik dan Air Soetomo', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30503', 1, 'Biaya Operasional : Biaya Listrik dan Air Usdar', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30601', 1, 'Biaya Operasional : Biaya Telpon dan Internet', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30602', 1, 'Biaya Operasional : Biaya Perawatan', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30603', 1, 'Biaya Operasional : Biaya Lainnya', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30604', 1, 'Biaya Operasional : Alat Tulis Kantor', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30700', 1, 'Biaya Operasional : Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30701', 1, 'Biaya Operasional : GKB Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30702', 1, 'Biaya Operasional : Sutomo Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30703', 1, 'Biaya Operasional : Usdar Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30801', 1, 'Biaya Operasional : Biaya Keamanan dan Kebersihan', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30802', 1, 'Biaya Operasional : Personal Dev', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30901', 1, 'Biaya Operasional : Marketing Flyer dan Banner', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30902', 1, 'Biaya Operasional : Marketing Radio', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30903', 1, 'Biaya Operasional : Marketing Hadiah', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30904', 1, 'Biaya Operasional : Marketing Seragam', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30905', 1, 'Biaya Operasional : Marketing Voucher ', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30906', 1, 'Biaya Operasional : Marketing Rusak Ganti Baru', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30907', 1, 'Biaya Operasional : PROMO', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30908', 1, 'Biaya Operasional : Marketing Media Online', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30909', 1, 'Biaya Operasional : Marketing Diskon ACC', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '30910', 1, 'Biaya Operasional : Pengembangan Usaha', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '51001', 1, 'Piutang Usaha : Refund Supplier', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '72201', 1, 'Piutang Non Usaha : Owner', NULL, 'F', -1, '0', '101010101', -1, '101040100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '72202', 1, 'Piutang Non Usaha : Karyawan', NULL, 'F', -1, '0', '101010101', -1, '101040200', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '72301', 1, 'Pembayaran Piutang Non Usaha : Owner', NULL, 'F', 1, '0', '101010101', 1, '101040100', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '72302', 1, 'Pembayaran Piutang Non Usaha : Karyawan', NULL, 'F', 1, '0', '101010101', 1, '101040200', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '73104', 1, 'Pembelian ke  Suplier : Pembayaran Tunai Via Kas', NULL, 'O', -1, '0', '101010101', -1, '101050100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '74101', 1, 'Pengadaan Persediaan', NULL, '', NULL, '0', '101050100', 1, '201010000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '74102', 1, 'Pembayaran Hutang Suplier', NULL, 'O', -1, '0', '101010101', -1, '201010000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '74103', 1, 'Pembelian ke Suplier : Pembayaran Tunai Tempo', NULL, 'O', -1, '0', '101050100', 1, '201010000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000003', '2018', '74104', 1, 'Pembelian ke  Suplier : Pembayaran Tunai Via Kas', NULL, 'O', -1, '0', '101010101', -1, '101050100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10101', 1, 'Penjualan Simcard Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10102', 1, 'Penjualan Handphone Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10103', 1, 'Penjualan Asesoris Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10104', 1, 'Penjualan Memori Card Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10105', 1, 'Penjualan Demo Live Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10106', 1, 'Penjualan Modem Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10107', 1, 'Penjualan Asuransi Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10109', 1, 'Penjualan Lain-Lain Tunai Via BCA', NULL, 'O', 1, '0', '101010201', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10111', 1, 'Penjualan Simcard Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10112', 1, 'Penjualan Handphone Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10113', 1, 'Penjualan Asesoris Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10114', 1, 'Penjualan Lain-Lain Tunai Via BCA P', NULL, 'O', 1, '0', '101010202', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10141', 1, 'Penjualan Simcard Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10142', 1, 'Penjualan Handphone Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10143', 1, 'Penjualan Asesoris Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10144', 1, 'Penjualan Memori Card Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10145', 1, 'Penjualan Demo Live Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10146', 1, 'Penjualan Modem Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10147', 1, 'Penjualan Asuransi Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10149', 1, 'Penjualan Lain-Lain Tunai Via Kas', NULL, 'O', 1, '0', '101010101', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10151', 1, 'Penjualan Simcard Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10152', 1, 'Penjualan Handphone Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10153', 1, 'Penjualan Asesoris Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10154', 1, 'Penjualan Memori Card Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10155', 1, 'Penjualan Demo Live Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10156', 1, 'Penjualan Modem Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10157', 1, 'Penjualan Asuransi Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10159', 1, 'Penjualan Lain-Lain Tunai Via Permata', NULL, 'O', 1, '0', '101010203', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10161', 1, 'Penjualan Simcard Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10162', 1, 'Penjualan Handphone Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10163', 1, 'Penjualan Asesoris Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10164', 1, 'Penjualan Lain-Lain Tunai Via Permata P', NULL, 'O', 1, '0', '101010204', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10201', 1, 'Penjualan Simcard Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10202', 1, 'Penjualan Handphone Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10203', 1, 'Penjualan Asesoris Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10204', 1, 'Penjualan Memori Card Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10205', 1, 'Penjualan Demo Live Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10206', 1, 'Penjualan Modem Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10207', 1, 'Penjualan Asuransi Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10209', 1, 'Penjualan Lain-Lain Non Tunai', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '10301', 1, 'Komisi', NULL, 'O', -1, '0', '101010101', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '20101', 1, 'Penggunaan Persediaan Usaha', NULL, '', NULL, '0', '101050100', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '20102', 1, 'Penggunaan Persediaan Konsinyasi', NULL, '', NULL, '0', '101050200', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30100', 1, 'Biaya Operasional', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30101', 1, 'Biaya Operasional : Sales Reward ACC', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30102', 1, 'Biaya Operasional : Sales Reward HP', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30103', 1, 'Biaya Operasional : Sales The Best', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30200', 1, 'Biaya Operasional : Gaji Back Office', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30201', 1, 'Biaya Operasional : GKB Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30202', 1, 'Biaya Operasional : Usdar Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30203', 1, 'Biaya Operasional : Sutomo Gaji Pegawai', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30299', 1, 'Biaya Operasional : Bonus', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30301', 1, 'Biaya Operasional : Ongkos Kirim', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30303', 1, 'Biaya Operasional : Kertas Print', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30304', 1, 'Biaya Operasional : Customer Service', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30501', 1, 'Biaya Operasional : Biaya Listrik dan Air GKB', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30502', 1, 'Biaya Operasional : Biaya Listrik dan Air Soetomo', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30503', 1, 'Biaya Operasional : Biaya Listrik dan Air Usdar', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30601', 1, 'Biaya Operasional : Biaya Telpon dan Internet', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30602', 1, 'Biaya Operasional : Biaya Perawatan', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30603', 1, 'Biaya Operasional : Biaya Lainnya', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30604', 1, 'Biaya Operasional : Alat Tulis Kantor', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30700', 1, 'Biaya Operasional : Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30701', 1, 'Biaya Operasional : GKB Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30702', 1, 'Biaya Operasional : Sutomo Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30703', 1, 'Biaya Operasional : Usdar Konsumsi', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30801', 1, 'Biaya Operasional : Biaya Keamanan dan Kebersihan', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30802', 1, 'Biaya Operasional : Personal Dev', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30901', 1, 'Biaya Operasional : Marketing Flyer dan Banner', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30902', 1, 'Biaya Operasional : Marketing Radio', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30903', 1, 'Biaya Operasional : Marketing Hadiah', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30904', 1, 'Biaya Operasional : Marketing Seragam', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30905', 1, 'Biaya Operasional : Marketing Voucher ', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30906', 1, 'Biaya Operasional : Marketing Rusak Ganti Baru', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30907', 1, 'Biaya Operasional : PROMO', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30908', 1, 'Biaya Operasional : Marketing Media Online', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30909', 1, 'Biaya Operasional : Marketing Diskon ACC', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '30910', 1, 'Biaya Operasional : Pengembangan Usaha', NULL, 'O', -1, '0', '101010201', -1, '302050000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '51001', 1, 'Piutang Usaha : Refund Supplier', NULL, '', NULL, '0', '101030000', 1, '302050000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '72201', 1, 'Piutang Non Usaha : Owner', NULL, 'F', -1, '0', '101010101', -1, '101040100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '72202', 1, 'Piutang Non Usaha : Karyawan', NULL, 'F', -1, '0', '101010101', -1, '101040200', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '72301', 1, 'Pembayaran Piutang Non Usaha : Owner', NULL, 'F', 1, '0', '101010101', 1, '101040100', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '72302', 1, 'Pembayaran Piutang Non Usaha : Karyawan', NULL, 'F', 1, '0', '101010101', 1, '101040200', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '73104', 1, 'Pembelian ke  Suplier : Pembayaran Tunai Via Kas', NULL, 'O', -1, '0', '101010101', -1, '101050100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '74101', 1, 'Pengadaan Persediaan', NULL, '', NULL, '0', '101050100', 1, '201010000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '74102', 1, 'Pembayaran Hutang Suplier', NULL, 'O', -1, '0', '101010101', -1, '201010000', -1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '74103', 1, 'Pembelian ke Suplier : Pembayaran Tunai Tempo', NULL, 'O', -1, '0', '101050100', 1, '201010000', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL),
	('RM00000004', '2018', '74104', 1, 'Pembelian ke  Suplier : Pembayaran Tunai Via Kas', NULL, 'O', -1, '0', '101010101', -1, '101050100', 1, NULL, NULL, NULL, NULL, NULL, '2018-02-21 21:08:29', NULL);
/*!40000 ALTER TABLE `d_comp_trans` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_comp_year
CREATE TABLE IF NOT EXISTS `d_comp_year` (
  `y_comp` varchar(10) NOT NULL,
  `y_year` varchar(4) NOT NULL,
  `y_active` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`y_comp`,`y_year`),
  CONSTRAINT `FK1_company` FOREIGN KEY (`y_comp`) REFERENCES `d_comp` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_comp_year: ~4 rows (approximately)
/*!40000 ALTER TABLE `d_comp_year` DISABLE KEYS */;
REPLACE INTO `d_comp_year` (`y_comp`, `y_year`, `y_active`) VALUES
	('RM00000001', '2018', '1'),
	('RM00000002', '2018', '1'),
	('RM00000003', '2018', '1'),
	('RM00000004', '2018', '1');
/*!40000 ALTER TABLE `d_comp_year` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_confirm_dt: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_confirm_dt` DISABLE KEYS */;
REPLACE INTO `d_confirm_dt` (`cd_confirm`, `cd_detailid`, `cd_item`, `cd_qty`, `cd_value`, `cd_total_gross`, `cd_disc_percent`, `cd_disc_value`, `cd_total_net`, `cd_ip_id`) VALUES
	(1, 1, 802, 2, 3291000.00, 6582000.00, 0, 0.00, 6582000.00, 1),
	(2, 1, 437, 2, 2227000.00, 4454000.00, 0, 0.00, 4454000.00, 4);
/*!40000 ALTER TABLE `d_confirm_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_confirm_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_confirm_order` DISABLE KEYS */;
REPLACE INTO `d_confirm_order` (`co_id`, `co_comp`, `co_date`, `co_supplier`, `cd_ttlvalue`, `co_total_gross`, `co_disc_percent`, `co_disc_value`, `co_total_net`, `co_status`, `co_officer`, `co_insert`, `co_update`) VALUES
	(1, 'RM00000001', '2018-05-27 00:00:00', 1117, 0.00, 6582000.00, 0, 0.00, 6582000.00, 'In Purchase', NULL, '2018-05-27 07:13:57', '2018-05-27 07:14:08'),
	(2, 'RM00000001', '2018-05-27 00:00:00', 1117, 0.00, 4454000.00, 0, 0.00, 4454000.00, 'In Purchase', NULL, '2018-05-27 11:14:29', '2018-05-27 11:14:40');
/*!40000 ALTER TABLE `d_confirm_order` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_consignment
CREATE TABLE IF NOT EXISTS `d_consignment` (
  `Column 1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_consignment: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_consignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_consignment` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_distribution: 0 rows
/*!40000 ALTER TABLE `d_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_distribution` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_gaji: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_gaji` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_gaji` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_gaji_detail: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_gaji_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_gaji_detail` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_group
CREATE TABLE IF NOT EXISTS `d_group` (
  `g_id` smallint(6) NOT NULL,
  `g_name` varchar(30) NOT NULL,
  `g_insert` datetime DEFAULT NULL,
  `g_update` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Dumping data for table bisnis_rizqy.d_group: ~5 rows (approximately)
/*!40000 ALTER TABLE `d_group` DISABLE KEYS */;
REPLACE INTO `d_group` (`g_id`, `g_name`, `g_insert`, `g_update`) VALUES
	(1, 'Outlet', NULL, NULL),
	(2, 'Pusat', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(3, 'khusus pak supri', '2017-12-14 07:41:02', '2017-12-14 07:41:02'),
	(4, 'Owner', '2017-12-19 04:30:16', '2017-12-19 04:30:16'),
	(5, 'kasir', '2018-01-08 04:05:40', '2018-01-08 04:05:40');
/*!40000 ALTER TABLE `d_group` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_groupmem
CREATE TABLE IF NOT EXISTS `d_groupmem` (
  `g_id` smallint(6) NOT NULL,
  `g_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Dumping data for table bisnis_rizqy.d_groupmem: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_groupmem` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_groupmem` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_groupmem_access
CREATE TABLE IF NOT EXISTS `d_groupmem_access` (
  `ga_group` smallint(6) NOT NULL,
  `ga_access` int(11) NOT NULL,
  PRIMARY KEY (`ga_group`,`ga_access`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Dumping data for table bisnis_rizqy.d_groupmem_access: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_groupmem_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_groupmem_access` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_group_access
CREATE TABLE IF NOT EXISTS `d_group_access` (
  `ga_group` smallint(6) NOT NULL,
  `ga_access` int(11) NOT NULL,
  `ga_level` enum('1','2','3') DEFAULT NULL COMMENT '1.read 2.Read,Edit 3.read,add,edit,delete',
  `ga_insert` datetime DEFAULT NULL,
  `ga_update` datetime DEFAULT NULL,
  PRIMARY KEY (`ga_group`,`ga_access`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Dumping data for table bisnis_rizqy.d_group_access: ~91 rows (approximately)
/*!40000 ALTER TABLE `d_group_access` DISABLE KEYS */;
REPLACE INTO `d_group_access` (`ga_group`, `ga_access`, `ga_level`, `ga_insert`, `ga_update`) VALUES
	(1, 1, '3', NULL, NULL),
	(1, 2, '3', NULL, NULL),
	(1, 3, '3', NULL, NULL),
	(1, 4, '3', NULL, NULL),
	(1, 5, '3', NULL, NULL),
	(1, 6, '2', NULL, NULL),
	(1, 8, '1', NULL, NULL),
	(1, 9, '3', '2017-10-17 05:18:20', '2017-10-17 05:18:20'),
	(1, 10, '2', NULL, NULL),
	(1, 11, '3', NULL, NULL),
	(1, 12, '3', NULL, NULL),
	(1, 13, '3', NULL, NULL),
	(1, 14, '3', NULL, NULL),
	(1, 15, '3', NULL, NULL),
	(1, 16, '1', NULL, NULL),
	(1, 17, '1', NULL, NULL),
	(1, 18, '3', NULL, NULL),
	(1, 19, '1', NULL, NULL),
	(1, 20, '1', NULL, NULL),
	(1, 21, '1', NULL, NULL),
	(1, 22, '1', NULL, NULL),
	(1, 23, '1', NULL, NULL),
	(1, 24, '1', NULL, NULL),
	(1, 25, '1', NULL, NULL),
	(1, 26, '1', NULL, NULL),
	(1, 27, '1', NULL, NULL),
	(1, 28, '3', NULL, NULL),
	(1, 29, '3', NULL, NULL),
	(1, 30, '3', NULL, NULL),
	(1, 31, '3', NULL, NULL),
	(1, 32, '1', NULL, NULL),
	(1, 34, '3', NULL, NULL),
	(1, 35, '3', NULL, NULL),
	(1, 36, '3', NULL, NULL),
	(1, 39, '3', NULL, NULL),
	(1, 40, '1', '2017-11-30 07:03:15', '2017-11-30 07:03:15'),
	(1, 41, '3', '2017-11-30 07:24:25', '2017-11-30 07:24:25'),
	(1, 42, '3', '2017-11-30 07:24:25', '2017-11-30 07:24:25'),
	(1, 43, '3', '2017-11-30 07:24:25', '2017-11-30 07:24:25'),
	(1, 44, '3', '2017-11-30 07:24:25', '2017-11-30 07:24:25'),
	(2, 1, '2', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 2, '2', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 3, '1', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 4, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 5, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 6, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 7, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 8, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 9, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 10, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 11, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 12, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 13, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 14, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 15, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 16, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 17, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 18, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 19, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 20, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 21, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 22, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 23, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 24, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 25, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 26, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 27, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 28, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 29, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 30, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 31, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 32, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 33, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 34, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 35, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 36, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 39, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(2, 40, '3', '2017-10-23 04:47:26', '2017-10-23 04:47:26'),
	(3, 1, '1', '2017-12-14 07:41:02', '2017-12-14 07:41:02'),
	(3, 16, '1', '2017-12-19 04:19:31', '2017-12-19 04:19:31'),
	(4, 1, '3', '2017-12-19 04:30:16', '2017-12-19 04:30:16'),
	(4, 2, '3', '2017-12-19 04:30:16', '2017-12-19 04:30:16'),
	(4, 3, '3', '2017-12-19 04:30:16', '2017-12-19 04:30:16'),
	(4, 4, '3', '2017-12-19 04:30:16', '2017-12-19 04:30:16'),
	(4, 5, '3', '2017-12-19 04:30:16', '2017-12-19 04:30:16'),
	(4, 6, '3', '2017-12-19 04:33:31', '2017-12-19 04:33:31'),
	(4, 7, '3', '2017-12-19 04:33:32', '2017-12-19 04:33:32'),
	(4, 8, '3', '2017-12-19 04:33:32', '2017-12-19 04:33:32'),
	(4, 9, '3', '2017-12-19 04:33:32', '2017-12-19 04:33:32'),
	(4, 10, '3', '2017-12-19 04:33:32', '2017-12-19 04:33:32'),
	(5, 1, '3', '2018-01-08 04:05:40', '2018-01-08 04:05:40');
/*!40000 ALTER TABLE `d_group_access` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_indent: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_indent` DISABLE KEYS */;
REPLACE INTO `d_indent` (`in_id`, `in_comp`, `in_nota`, `in_member`, `in_sales`, `in_total_net`, `in_date`, `in_status`, `in_keterangan`, `in_insert`, `in_update`) VALUES
	(1, 'RM00000003', 'IN-17/12/08/051024', 'MEM-000001', '', 13000.00, '2017-12-08', '', '', '2017-12-08 12:10:46', '2017-12-08 12:10:46'),
	(2, 'RM00000001', 'IN-18/02/08/092036', 'MEM-000011', 'RMZ-000017', 13800000.00, '2018-02-08', '', 'belum', '2018-02-08 16:21:02', '2018-02-08 16:21:02');
/*!40000 ALTER TABLE `d_indent` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_indent_dt: ~3 rows (approximately)
/*!40000 ALTER TABLE `d_indent_dt` DISABLE KEYS */;
REPLACE INTO `d_indent_dt` (`ind_indent`, `ind_detailid`, `ind_item`, `ind_value`, `ind_qty`, `ind_total_net`, `ind_status`, `ind_insert`, `ind_update`) VALUES
	(1, 1, 161, 13000.00, 1, 13000.00, '', '2017-12-08 12:10:46', '0000-00-00 00:00:00'),
	(2, 1, 436, 1700000.00, 2, 3400000.00, '', '2018-02-08 16:21:02', '0000-00-00 00:00:00'),
	(2, 2, 445, 2600000.00, 4, 10400000.00, '', '2018-02-08 16:21:02', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `d_indent_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_item: ~965 rows (approximately)
/*!40000 ALTER TABLE `d_item` DISABLE KEYS */;
REPLACE INTO `d_item` (`i_id`, `i_jenis`, `i_jenissub`, `i_class`, `i_classsub`, `i_detail`, `i_satuan`, `i_price`, `i_reseller_price`, `i_specificcode`, `i_code`, `i_isactive`, `i_minstock`, `i_date`, `i_berat`, `i_img`) VALUES
	(1, 'AKSESORIS', 'CABLE', 'VIVAN', 'SET PRO DATA CBL', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(2, 'AKSESORIS', 'CABLE', 'XO BRAND', 'S3 IPHONE 5/6', '-', 1, 55000.00, 0.00, 'N', '312312312311123555565', 'Y', 50, '2018-01-10', 0, ''),
	(3, 'AKSESORIS', 'CABLE', 'BLITZ', 'FOSFOR MIE MICRO', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(4, 'AKSESORIS', 'CABLE', 'JETE', 'TINY MICRO', '-', 1, 10000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(5, 'AKSESORIS', 'CHARGER', 'WELLCOMM', 'CAR CHG USB 3,1A   ', '-', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(6, 'AKSESORIS', 'CABLE', 'ENERGEA', 'NYLOTOUGH TYPE-C TO TYPE-C', 'BLACK', NULL, 380000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(7, 'AKSESORIS', 'CABLE', 'ENERGEA', 'NYLOTOUGH MICRO 1,5M', 'BLACK', NULL, 220000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(8, 'AKSESORIS', 'CABLE', 'ENERGEA', 'NYLOTOUGH MICRO 1,5M', 'RED', NULL, 220000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(9, 'AKSESORIS', 'CABLE', 'ENERGEA', 'NYLOTOUGH TYPE-C 1,5M', 'BLUE', NULL, 320000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(10, 'AKSESORIS', 'CABLE', 'VIVAN', 'IPHONE 4', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(11, 'AKSESORIS', 'CHARGER', 'BYSON', 'DEKSTOP KAKI PANJANG', '-', NULL, 12500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(12, 'AKSESORIS', 'CABLE', 'FLEXIBLE', 'DATA CABLE MICRO', 'SILVER', NULL, 90000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(13, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'EVE 10000MAH SIMPLE PACK', '-', 1, 220000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(14, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'MOZA 10000MAH', '-', 1, 285000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(15, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'BEE 11000MAH', '-', 1, 240000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(16, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'CZAR 2 11000MAH', '-', 1, 330000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(17, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'ZIPPY 12000MAH', '-', 1, 390000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(18, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'STAN 13200MAH', '-', NULL, 290000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(19, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'BRONZ X 15000MAH', '-', NULL, 305000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(20, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'TITAN 6000MAH', '-', NULL, 235000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(21, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'BEE 6600MAH', '-', 1, 150000.00, 0.00, 'N', 'rc4815', 'Y', 5, '2018-01-26', 0, ''),
	(22, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'STAN 6600MAH', '-', 1, 185000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(23, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'ATLAS 7000MAH SIMPLE PACK', '-', 1, 225000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(24, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'BRONZ X 7500MAH SIMPLE PACK', '-', NULL, 190000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(25, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'FARO 15000MAH', '-', NULL, 315000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(26, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'STEEL 12000MAH SIMPLE PACK', '-', NULL, 390000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(27, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'TREN 6000MAH SIMPLE PACK', '-', 1, 200000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(28, 'AKSESORIS', 'CABLE', 'REMAX', 'LESU 3IN1 SPLIT', 'BLACK', 1, 50000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(29, 'AKSESORIS', 'CABLE', 'REMAX', 'LESU 3IN1 SPLIT', 'BLUE', 1, 50000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(30, 'AKSESORIS', 'CABLE', 'REMAX', 'LESU MICRO USB', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(31, 'AKSESORIS', 'CABLE', 'REMAX', 'LESU TYPE-C', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(32, 'AKSESORIS', 'CABLE', 'REMAX', 'SOUFFEL MICRO USB', 'BLACK', 1, 25000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(33, 'AKSESORIS', 'CABLE', 'REMAX', 'TENGY MICRO', 'BLACK', 1, 35000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(34, 'AKSESORIS', 'CABLE', 'REMAX', 'TENGY MICRO', 'WHITE', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(35, 'AKSESORIS', 'HOLDER', 'ROBOT', 'RT-CH05 STENT HOLDER', '-', NULL, 50000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(36, 'AKSESORIS', 'SELFIE STICK', 'ROBOT', 'RT-S03', 'PURPLE', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(37, 'AKSESORIS', 'SELFIE STICK', 'ROBOT', 'RT-S05', 'BLACK', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(38, 'AKSESORIS', 'SELFIE STICK', 'ROBOT', 'RT-S05', 'PURPLE', NULL, 65000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(39, 'AKSESORIS', 'CHARGER', 'BLITZ', 'TC 2USB 3A', '-', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(40, 'AKSESORIS', 'CHARGER', 'WELLCOMM', 'USB 1A FLAT', '-', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(41, 'AKSESORIS', 'CHARGER', 'WELLCOMM', 'USB 2A', '-', 1, 90000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(42, 'AKSESORIS', 'CHARGER', 'WELLCOMM', 'USB 2A FLAT', '-', 1, 75000.00, 0.00, 'N', '', 'Y', 5, '2018-01-26', 0, ''),
	(43, 'AKSESORIS', 'SELFIE STICK', '-', 'FULL BLACH', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(44, 'AKSESORIS', 'SELFIE STICK', 'JETE', 'MY STICKY', '-', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(45, 'AKSESORIS', 'SELFIE STICK', 'MONOPOD', 'KABEL', '-', 1, 15000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(46, 'AKSESORIS', 'SELFIE STICK', 'MONOPOD', 'MACARON', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(47, 'AKSESORIS', 'CABLE', 'XO BRAND', 'S3 IPHONE 5/6', 'GREY', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(48, 'AKSESORIS', 'CABLE', 'XO BRAND', 'S3 IPHONE 5/6', 'YELLOW', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(49, 'AKSESORIS', 'HANDSFREE', 'JETE', 'COLOURFULL BASS', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(50, 'AKSESORIS', 'HANDSFREE', 'HIPPO', 'BLUETOOTH H-03', '-', NULL, 190000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(51, 'AKSESORIS', 'HANDSFREE', 'HIPPO', 'BLUETOOTH H-05', '-', 1, 305000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(52, 'AKSESORIS', 'HANDSFREE', 'HIPPO', 'BLUETOOTH H-06', '-', NULL, 190000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(53, 'AKSESORIS', 'HANDSFREE', 'HIPPO', 'BLUETOOTH H-08', '-', NULL, 335000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(54, 'AKSESORIS', 'HANDSFREE', 'JABRA', 'BLUETOOTH BT2046', '-', NULL, 270000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(55, 'AKSESORIS', 'HANDSFREE', 'JABRA', 'BLUETOOTH CLASSIC', 'BLACK', NULL, 500000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(56, 'AKSESORIS', 'HANDSFREE', 'JABRA', 'BLUETOOTH MINI', 'BLACK', NULL, 550000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(57, 'AKSESORIS', 'HANDSFREE', 'JABRA', 'BLUETOOTH TALK', 'BLACK', NULL, 465000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(58, 'AKSESORIS', 'HANDSFREE', 'ROMAN', 'BLUETOOTH R535', '-', NULL, 220000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(59, 'AKSESORIS', 'HANDSFREE', 'ROMAN', 'BLUETOOTH R539', '-', 1, 175000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(60, 'AKSESORIS', 'HANDSFREE', 'ROMAN', 'BLUETOOTH R550', '-', NULL, 175000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(61, 'AKSESORIS', 'HANDSFREE', 'ROMAN', 'BLUETOOTH R6000', '-', NULL, 375000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(62, 'AKSESORIS', 'HANDSFREE', 'ROMAN', 'BLUETOOTH R9030', '-', NULL, 330000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(63, 'AKSESORIS', 'HANDSFREE', 'SONY', 'MDR-EX15AP', 'BLACK', NULL, 220000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(64, 'AKSESORIS', 'SMARTWATCH', 'HUAWEI', 'W1 STAINLESS STEEL', 'SILVER', NULL, 4000000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(65, 'AKSESORIS', 'LEATHER CASE', 'HUAWEI', 'MATE 7', 'WHITE', NULL, 200000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(66, 'AKSESORIS', 'HARDCASE', 'OVA', 'EASY CASE OPPO F5', 'BLACK', 1, 100000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(67, 'AKSESORIS', 'HARDCASE', 'OVA', 'EASY CASE OPPO F5', 'BLUE', 1, 100000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(68, 'AKSESORIS', 'HARDCASE', 'OVA', 'EASY CASE OPPO F5', 'GOLD', 1, 100000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(69, 'AKSESORIS', 'HARDCASE', 'OVA', 'EASY CASE OPPO F5', 'RED', 1, 100000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(70, 'AKSESORIS', 'LEATHER CASE', 'AMO', 'COOLPAD POWER', 'BLACK', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(71, 'AKSESORIS', 'LEATHER CASE', 'AMO', 'COOLPAD POWER', 'BLUE', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(72, 'AKSESORIS', 'LEATHER CASE', 'AMO', 'COOLPAD ROAR 3', 'WHITE', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(73, 'AKSESORIS', 'LEATHER CASE', 'AMO', 'COOLPAD ROAR PLUS', 'WHITE', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(74, 'AKSESORIS', 'LEATHER CASE', 'AMO', 'COOLPAD ROAR PLUS', 'BLUE', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(75, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE LENOVO A2010', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(76, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE OPPO F1S', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(77, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE GALAXY J1_6', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(78, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE GALAXY J5_6', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(79, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE HUAWEI GR3', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(80, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE HUAWEI GR5', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(81, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE LENOVO K5', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(82, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE OPPO NEO 7', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(83, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE HUAWEI P8 LITE', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(84, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE GALAXY A5_6', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(85, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE GALAXY S7', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(86, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE TIZEN Z2', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(87, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE LENOVO VIBE C', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(88, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE HUAWEI Y3 II', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(89, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE HUAWEI Y5 II', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(90, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE HUAWEI Y6', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(91, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE ZEN GO 4,5"', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(92, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE ZEN MAX', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(93, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE ZEN 3 5,2"', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(94, 'AKSESORIS', 'LEATHER CASE', 'JETE', 'GALAXY J5-6', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(95, 'AKSESORIS', 'LEATHER CASE', 'JETE', 'LENOVO A2010', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(96, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED GALAXY J3', 'BROWN', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(97, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED IPHONE 5', 'BLACK', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(98, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED IPHONE 5', 'GOLD', 1, 80000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(99, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE GALAXY J5 PRIME', 'BLUE', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(100, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE GALAXY J5 PRIME', 'GOLD', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(101, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE MEIZU M3 NOTE', 'BLACK', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(102, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE MEIZU M3 NOTE', 'GOLD', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(103, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE MEIZU M5 NOTE', 'GOLD', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(104, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE MEIZU M5  ', 'BLACK', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(105, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE HUAWEI P9 LITE', 'BLACK', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(106, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE REDMI 4A', 'GOLD', NULL, 90000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(107, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE GALAXY J3', 'BLACK', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(108, 'AKSESORIS', 'CABLE', 'NILLKIN', 'MICRO USB', 'BLACK', 1, 75000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(109, 'AKSESORIS', 'CABLE', 'NILLKIN', 'MICRO USB', 'BLUE', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(110, 'AKSESORIS', 'CABLE', 'NILLKIN', 'MICRO USB', 'GREY', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(111, 'AKSESORIS', 'CABLE', 'NILLKIN', 'PLUS 2 2IN1', 'BLACK', 1, 80000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(112, 'AKSESORIS', 'CABLE', 'NILLKIN', 'PLUS 2 2IN1', 'RED', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(113, 'AKSESORIS', 'CHARGER', 'NILLKIN', 'CELERITY CAR CHARGING', 'GOLD', NULL, 295000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(114, 'AKSESORIS', 'CHARGER', 'NILLKIN', 'JELLY CAR', 'WHITE', 1, 100000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(115, 'AKSESORIS', 'CABLE', 'NILLKIN', 'MINI LIGHTNING', 'GREY', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(116, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'M-JARL SERIES IPHONE 7+', 'BLACK', NULL, 150000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(117, 'AKSESORIS', 'CHARGER', 'NILLKIN', 'POWER SHARE CAR CHARGING', '-', NULL, 260000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(118, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'QIN GALAXY A5_2017', 'BROWN', 1, 135000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(119, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'QIN GALAXY A7_2017', 'BLACK', NULL, 135000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(120, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'QIN GALAXY S8', 'BLACK', NULL, 150000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(121, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'QIN IPHONE 7', 'BROWN', NULL, 150000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(122, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'QIN GALAXY S7 EDGE', 'BROWN', NULL, 150000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(123, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED GALAXY A3-2017', 'GOLD', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(124, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED GALAXY A7-2017', 'BROWN', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(125, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED GALAXY J3 PRO', 'GOLD', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(126, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED GALAXY J5 PRO', 'BLACK', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(127, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED GALAXY J5 PRO', 'GOLD', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(128, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED GALAXY S8', 'BLACK', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(129, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED GALAXY J2 PRIME', 'BLACK', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(130, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED GALAXY J2 PRIME', 'GOLD', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(131, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED LENOVO K6 POWER', 'BLACK', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(132, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED MEIZU M5 NOTE', 'GOLD', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(133, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED MEIZU MX6', 'BLACK', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(134, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED OPPO A39', 'GOLD', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(135, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED OPPO A57', 'GOLD', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(136, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED OPPO F1S', 'GOLD', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(137, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED OPPO F3', 'BLACK', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(138, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED REDMI 4A', 'GOLD', NULL, 65000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(139, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED ZENFONE 3 5,2"', 'GOLD', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(140, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED ZENFONE 3 5,5"', 'BLACK', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(141, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTD ZENFONE LIVE', 'BLACK', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(142, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTD ZENFONE LIVE', 'BROWN', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(143, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTD ZENFONE LIVE', 'GOLD', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(144, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SYNTHETIC FIBER GALAXY S8', 'BLACK', NULL, 105000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(145, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SYNTHETIC FIBER IPHONE 6+', 'BLACK', NULL, 150000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(146, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SYNTHETIC FIBER GALAXY 7', 'BLACK', NULL, 170000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(147, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY A3-2017', 'GREY', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(148, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY A7-2017', 'BROWN', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(149, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY C9 PRO', 'WHITE', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(150, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY S8 ', 'WHITE', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(151, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU IPHONE 5', 'GREY', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(152, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU IPHONE 7+', 'GREY', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(153, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU IPHONE 7+', 'WHITE', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(154, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY J7 PRIME', 'GREY', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(155, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU REDMINOTE 4X', 'GREY', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(156, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU REDMINOTE 4X', 'WHITE', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(157, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU ZENFONE 3 MAX 5,2"', 'WHITE', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(158, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU ZENFONE 3 MAX 5,5"', 'WHITE', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(159, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU CRASH PROOF II IPHONE 7', 'BROWN', NULL, 90000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(160, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU CRASH PROOF II IPHONE 7+', 'GREY', NULL, 120000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(161, 'AKSESORIS', 'CHARGER', 'NILLKIN', 'VIGOR CAR CHG', 'GOLD', 1, 130000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(162, 'AKSESORIS', 'CHARGER', 'NILLKIN', 'VIGOR CAR CHG', 'SILVER', 1, 130000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(163, 'AKSESORIS', 'CABLE', 'WSKEN', 'MINI 1 MAGNETIC', 'SILVER', NULL, 200000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(164, 'AKSESORIS', 'CABLE', 'WSKEN', 'MINI 2 MAGNETIC', 'SILVER', NULL, 210000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(165, 'AKSESORIS', 'CABLE', 'WSKEN', 'ROUND MAGNETIC CABLE', 'SILVER', NULL, 180000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(166, 'AKSESORIS', 'POWERBANK', 'REMAX', 'CAPSULE 5000MAH ', 'SILVER', NULL, 125000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(167, 'AKSESORIS', 'POWERBANK', 'PRODA', 'THIN 5000MAH', 'GOLD', 1, 140000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(168, 'AKSESORIS', 'POWERBANK', 'REMAX', 'CANDY SLIM 5000MAH', '-', NULL, 145000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(169, 'AKSESORIS', 'CABLE', 'REMAX', 'OTG MICRO', 'GOLD', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(170, 'AKSESORIS', 'CABLE', 'REMAX', 'OTG TO TYPE-C', 'GOLD', 1, 35000.00, 0.00, 'N', '', 'Y', 5, '2018-03-06', 0, ''),
	(171, 'AKSESORIS', 'CHARGER', 'REMAX', '2 PORT 2,1A MINI CAR CHG', 'WHITE', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(172, 'AKSESORIS', 'CHARGER', 'REMAX', '2,4A CAR CHG FAST 7', 'SILVER', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(173, 'AKSESORIS', 'CHARGER', 'REMAX', '3,6A CAR CHG JIAN', 'WHITE', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(174, 'AKSESORIS', 'CHARGER', 'REMAX', '3PORT 6,3A CAR CHG', 'BLACK', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(175, 'AKSESORIS', 'CABLE', 'REMAX', 'BREATHE MICRO USB', 'BLUE', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(176, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'CANDY', 'BLUE', 1, 65000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(177, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'CANDY  ', 'YELLOW', NULL, 65000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(178, 'AKSESORIS', 'CHARGER', 'REMAX', 'DOLFIN 3PORT', '-', NULL, 48000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(179, 'AKSESORIS', 'CHARGER', 'REMAX', 'CAR CHG 2PORT USB', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(180, 'AKSESORIS', 'CABLE', 'REMAX', 'ALIEN MICRO USB', 'RED', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(181, 'AKSESORIS', 'CABLE', 'REMAX', 'COLOURFULL MICRO USB', '-', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(182, 'AKSESORIS', 'CABLE', 'REMAX', 'EMPEROR MICRO USB', '-', 1, 65000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(183, 'AKSESORIS', 'CABLE', 'REMAX', 'FAST DATA MICRO USB', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(184, 'AKSESORIS', 'CABLE', 'REMAX', 'FULL SPEED MICRO USB', 'WHITE', 1, 35000.00, 0.00, 'N', '', 'Y', 5, '2018-03-06', 0, ''),
	(185, 'AKSESORIS', 'CABLE', 'REMAX', 'FULL SPEED MICRO USB', 'YELLOW', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(186, 'AKSESORIS', 'CABLE', 'REMAX', 'KINGHT MICRO USB', 'BLACK', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(187, 'AKSESORIS', 'CABLE', 'REMAX', 'LASER DATA MICRO USB', '-', 1, 50000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(188, 'AKSESORIS', 'CABLE', 'REMAX', 'MARTIN MICRO USB', 'BLUE', 1, 25000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(189, 'AKSESORIS', 'CABLE', 'REMAX', 'MARTIN MICRO USB', 'PINK', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(190, 'AKSESORIS', 'CABLE', 'REMAX', 'MARTIN MICRO USB', 'WHITE', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(191, 'AKSESORIS', 'CABLE', 'REMAX', 'METAL MICRO USB', 'BLACK', 1, 40000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(192, 'AKSESORIS', 'CABLE', 'REMAX', 'METAL MICRO USB', 'GOLD', 1, 40000.00, 0.00, 'N', 'rc0001', 'Y', 5, '2018-03-12', 0, ''),
	(193, 'AKSESORIS', 'CABLE', 'REMAX', 'METAL MICRO USB', 'WHITE', 1, 40000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(194, 'AKSESORIS', 'CABLE', 'REMAX', 'RADIANCE MICRO USB', 'GOLD', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(195, 'AKSESORIS', 'CABLE', 'REMAX', 'SOULFELL MICRO USB', 'BLACK', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(196, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'RM502', 'YELLOW', 1, 55000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(197, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'RM535', 'RED', NULL, 115000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(198, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'RM535', 'WHITE', 1, 115000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(199, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'RM-610D', 'GOLD', NULL, 140000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(200, 'AKSESORIS', 'CHARGER', 'REMAX', 'METAL CAR CHARGING 2 PORT', 'SILVER', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(201, 'AKSESORIS', 'CABLE', 'REMAX', 'RING LIGHTNING', 'BLUE', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(202, 'AKSESORIS', 'CABLE', 'REMAX', 'RING LIGHTNING', 'WHITE', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(203, 'AKSESORIS', 'POWERBANK', 'REMAX', 'RING HOLDER 5000MAH', '-', NULL, 185000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(204, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'WIRED 569', '-', NULL, 105000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(205, 'AKSESORIS', 'HARDCASE', 'SAMSUNG ORIGINAL', 'ALCANTARA COVER GALAXY NOTE 8', 'GREY', NULL, 825000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(206, 'AKSESORIS', 'HARDCASE', 'SAMSUNG ORIGINAL', 'CLEAR COVER J5 PRIME', '-', NULL, 200000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(207, 'AKSESORIS', 'HARDCASE', 'SAMSUNG ORIGINAL', 'CLEAR COVER J7 PRIME', '-', NULL, 200000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(208, 'AKSESORIS', 'HARDCASE', 'SAMSUNG ORIGINAL', 'SLIM COVER GALAXY J5-2016', '-', NULL, 90000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(209, 'AKSESORIS', 'SCREENGUARD', 'SAMSUNG ORIGINAL', 'SP INFISIENS GALAXY J5 PRO', '-', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(210, 'AKSESORIS', 'SCREENGUARD', 'SAMSUNG ORIGINAL', 'SP INFISIENS GALAXY J7 PRO', '-', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(211, 'AKSESORIS', 'SCREENGUARD', 'JETE', 'TEMPERED GLASS J2 PRIME', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(212, 'AKSESORIS', 'SCREENGUARD', 'JETE', 'TEMPERED GLASS REDMI 3/4A', '-', 1, 25000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(213, 'AKSESORIS', 'SCREENGUARD', 'JETE', 'TEMPERED GLASS REDMI 4X', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(214, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', '3D TEMPERED GLASS IPHONE X BLACK', '-', NULL, 200000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(215, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE GALAXY A3_6', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(216, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE GALAXY A5_6', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(217, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE GALAXY A7_6', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(218, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE GALAXY TAB A8INC', '-', NULL, 50000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(219, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE GALAXY J1 ACE', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(220, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE ZENFONE C', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(221, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE TAN A3500', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(222, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J2 PRIME', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-26', 0, ''),
	(223, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J3 PRO', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(224, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J5', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(225, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J5 PRIME', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-26', 0, ''),
	(226, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J5 PRO', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(227, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J5_6', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(228, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J7 PRIME', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(229, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J7 PRO', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(230, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J7/J7 CORE', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(231, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J7_6', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(232, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY A3_2017', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(233, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY A5_2017', '-', 1, 25000.00, 0.00, 'N', '', 'Y', 5, '2018-01-26', 0, ''),
	(234, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP HUAWEI Y3 II', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(235, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP HUAWEI Y6 II', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(236, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP IPHONE 5/5S', 'FULLSET', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(237, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP IPHONE 6/6S', 'FULLSET', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(238, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP LENOVO K4 NOTE', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(239, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP LENOVO K6 NOTE', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(240, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP LENOVO A2010', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(241, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP LENOVO A6600+', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(242, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP LENOVO A7700', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(243, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP OPPO A39', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-26', 0, ''),
	(244, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP OPPO A57', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(245, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP OPPO F1/A37', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(246, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP OPPO F1S', '-', 1, 25000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(247, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP XIAOMI REDMI 4A', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(248, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP XIAOMI REDMI 4X', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(249, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP XIAOMI REDMINOTE 4', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(250, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP ZENFONE 3 5,2"', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(251, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP ZENFONE GO MINI', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(252, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE IPHONE 4', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(253, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE XPERIA M4 AQUA', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(254, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE COOLPAD FANCY', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(255, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE IPHONE 6 PLUS', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(256, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE LENOVO K4 NOTE', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(257, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE OPPO F1', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(258, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE HUAWEI P8 LITE', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(259, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE ZEN GO 4,5"', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(260, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE ZEN MAX ZC550KL', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(261, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE ZENPAD C', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(262, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY J5_6', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(263, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY J7', '-', 1, 100000.00, 0.00, 'N', '', 'Y', 5, '2018-02-26', 0, ''),
	(264, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY S7', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(265, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK IPHONE 5', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(266, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK IPHONE 7', '-', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(267, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK IPHONE X', '-', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(268, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY J3 PRO', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 5, '2018-02-26', 0, ''),
	(269, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY J5 PRO', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(270, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY J7 PRO', '-', 1, 100000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(271, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK MI A1', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(272, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK OPPO A71', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(273, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK OPPO F5', '-', 1, 100000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(274, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK OPPO R7', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(275, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK REDMI NOTE 4', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(276, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK REDMI 4X', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(277, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK COOLPAD ROAR 3', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(278, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK HUAWEI Y3-III', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(279, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK HUAWEI Y5-III', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(280, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK ZENFONE LIVE', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(281, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS COOLPAD FANCY 3', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(282, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS COOLPAD MAX LITE', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(283, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS J2 PRIME', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(284, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS A3-2017', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-10', 0, ''),
	(285, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS A5-2017', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-10', 0, ''),
	(286, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS A7_6', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(287, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS A7-2017', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-10', 0, ''),
	(288, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS C9 PRO', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(289, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS J1_6', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(290, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS J2', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(291, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPEERD GLASS J3-2016', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(292, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS GALAXY J3 PRO', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 6, '2018-02-24', 0, ''),
	(293, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS GALAXY J5 PRO', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-17', 0, ''),
	(294, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS GALAXY J7', '-', 1, 0.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(295, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS GALAXY J7 PRIME', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(296, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS GALAXY J7 PRO', '-', 1, 70000.00, 0.00, 'N', 'rc5303', 'Y', 5, '2018-03-12', 0, ''),
	(297, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS HUAWEI Y6 II', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(298, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS IPHONE 4', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(299, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS IPHONE 5', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(300, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS IPHONE 6', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(301, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS IPHONE 7', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(302, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS IPHONE 7+', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(303, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS LENOVO A7700', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(304, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS LENOVO K5/K5+', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(305, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERES GLASS OPPO A39', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(306, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERES GLASS OPPO A57', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(307, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS OPPO A71', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(308, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS OPPO F1', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(309, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS REDMI 3/3S', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(310, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS REDMINOTE 4', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(311, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS ZEN 3 5,2"', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(312, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS ZEN 3 MAX', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(313, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS ZEN 3 MAX 5,2"', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(314, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS ZEN 3 MAX 5,5"', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(315, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS MEIZU M5', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(316, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS XIAOMI MI A1', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(317, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS OPPO F3', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(318, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TPU FULL COVER GALAXY C9 PRO', '-', NULL, 130000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(319, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TPU FULL COVER GALAXY J3 PRO', '-', NULL, 130000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(320, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TPU FULL COVER GALAXY J5 PRO', '-', NULL, 130000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(321, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TPU FULL COVER GALAXY J7 PRO', '-', 1, 130000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(322, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TPU FULL COVER GALAXY A520', '-', 1, 130000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(323, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TPU FULL COVER REDMINOTE 4/4X', '-', NULL, 130000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(324, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN ANDROMAX U2', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(325, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN GALAXY A3-6', 'FULLSET', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(326, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN GALAXY A5-6', 'FULLSET', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(327, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN GALAXY A7-6', 'FULLSET', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(328, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN GALAXY J3 PRO', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(329, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN GALAXY J5_6', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(330, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN GALAXY ON 7', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(331, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN HUAWEI Y3-III', '-', 1, 15000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(332, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN HUAWEI Y5-III', '-', 1, 15000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(333, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN IPHONE 4', 'FULLSET', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(334, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN IPHONE 6+', 'FULLSET', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(335, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN LENOVO XPERIA J', '-', NULL, 10000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(336, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN LENOVO XPERIA MIRO', '-', NULL, 10000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(337, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN XIAOMI MI A1', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(338, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN LENOVO XPERIA ION', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(339, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN LENOVO ZEN MAX ZC520KL', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(340, 'AKSESORIS', 'HARDCASE', 'FASHION CASE', '2IN1 ALUMINIUM J2 PRIME', '-', 1, 35000.00, 0.00, 'N', 'rc5212', 'Y', 5, '2018-03-12', 0, ''),
	(341, 'AKSESORIS', 'HARDCASE', 'FASHION CASE', '2IN1 ALUMINIUM J7 PRIME', '-', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(342, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'OPPO A57', 'BLACK', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(343, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'OPPO A71', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-02-28', 0, ''),
	(344, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'OPPO F3', 'BLACK', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(345, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'REDMI NOTE 5A', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(346, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'REDMI 4X', 'BLACK', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(347, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'REDMI 5X/MI A1', 'BLACK', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(348, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXY J2 PRIME', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(349, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXU J3 PRO', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(350, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXY J5 PRO', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(351, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXY J7 PRO', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(352, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXY J7+', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(353, 'AKSESORIS', 'HARDCASE', 'HAIMEN', 'SLIMFIT GALAXY A7-2017', '-', 1, 30000.00, 0.00, 'N', '', 'Y', 5, '2018-01-26', 0, ''),
	(354, 'AKSESORIS', 'HARDCASE', 'HAIMEN', 'SLIMFIT GALAXY J5 PRIME', '-', NULL, 17500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(355, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE GALAXY J1_6', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(356, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE GALAXY J3 ', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(357, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE GALAXY J5_6', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(358, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE GALAXY J7_6', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(359, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE GALAXY A3_6', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(360, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE GALAXY A5_6', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(361, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE HUAWEI GR5', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(362, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE HUAWEI Y3 II', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(363, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE HUAWEI Y5 II', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(364, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE LENOVO K5', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(365, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE OPPO A37', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(366, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE LENOVO VIBE C', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(367, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE ZEN GO 4,5"', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(368, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE ZENFONE 3 5,2"', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(369, 'AKSESORIS', 'HARDCASE', 'PHANTOM', 'CASE STANDING J2 PRIME', '-', 1, 35000.00, 0.00, 'N', '', 'Y', 5, '2018-01-26', 0, ''),
	(370, 'AKSESORIS', 'SOFTCASE', '-', 'ANTI CRACK GLITTER A5-2017', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(371, 'AKSESORIS', 'SOFTCASE', '-', 'ANTI CRACK FUZE J7 PRIME', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(372, 'AKSESORIS', 'HARDCASE', 'I-SHOP', 'SLIM OPPO A37', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(373, 'AKSESORIS', 'HARDCASE', 'I-SHOP', 'SLIM REDMI 4A', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(374, 'AKSESORIS', 'HARDCASE', 'I-SHOP', 'SLIM REDMI 4X', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(375, 'AKSESORIS', 'HARDCASE', 'I-SHOP', 'SLIM SAMSUNG J2 PRIME', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(376, 'AKSESORIS', 'HARDCASE', 'I-SHOP', 'SLIM SAMSUNG J5 PRO', '-', 1, 30000.00, 0.00, 'N', '', 'Y', 5, '2018-01-26', 0, ''),
	(377, 'AKSESORIS', 'HARDCASE', 'I-SHOP', 'SLIM SAMSUNG J7 CORE', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(378, 'AKSESORIS', 'HARDCASE', 'I-SHOP', 'SLIM SAMSUNG J7 PRO', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(379, 'AKSESORIS', 'RING', 'JETE', 'IRING UNIVERSAL', '-', 1, 5000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(380, 'AKSESORIS', 'RING', 'ROBOT', 'RING STENT BR01', '-', 1, 30000.00, 0.00, 'N', '', 'Y', 5, '2018-01-27', 0, ''),
	(381, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'CHROME A5_2017', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(382, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'CHROME J2 PRIME', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(383, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'CHROME J7 PRIME', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(384, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'CHROME J7 PRO', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(385, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'CHROME OPPO A37/NEO9', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(386, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'CHROME OPPO F3', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(387, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'CHROME XIAOMI REDMI 4A', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(388, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'WOODEN J3 PRO', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(389, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'WOODEN J5 PRO', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(390, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'WOODEN J7 CORE', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(391, 'AKSESORIS', 'SOFTCASE', 'INSPIRE', 'WOODEN J7 PRO', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(392, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'CARBON CASE HUAWEI Y6-II', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(393, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'CARBON CASE J5 PRIME', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(394, 'AKSESORIS', 'SOFTCASE', 'UME', 'EMERALD J5 PRO', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(395, 'AKSESORIS', 'SOFTCASE', 'UME', 'EMERALD OPPO A37', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(396, 'AKSESORIS', 'SOFTCASE', 'UME', 'EMERALD OPPO A57', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(397, 'AKSESORIS', 'SOFTCASE', '-', 'ANTICRACK GALAXY C9 PRO', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(398, 'AKSESORIS', 'SOFTCASE', '-', 'ANTICRACK GALAXY J2 PRIME', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(399, 'AKSESORIS', 'SOFTCASE', '-', 'ANTICRACK GALAXY J7 PRIME', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(400, 'AKSESORIS', 'SOFTCASE', '-', 'ANTICRACK GALAXY J7/J7 CORE', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(401, 'AKSESORIS', 'SOFTCASE', '-', 'ANTICRACK OPPO A37', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(402, 'AKSESORIS', 'SOFTCASE', '-', 'ANTICRACK REDMI 4A', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(403, 'AKSESORIS', 'SOFTCASE', '-', 'ANTICRACK REDMI 4X', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(404, 'AKSESORIS', 'SOFTCASE', 'SMILE', 'CROSS J7 PRO', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(405, 'AKSESORIS', 'SOFTCASE', 'SMILE', 'CROSS OPPO A37', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(406, 'AKSESORIS', 'SOFTCASE', 'SMILE', 'CROSS REDMI 4A', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(407, 'AKSESORIS', 'SOFTCASE', 'SMILE', 'CROSS REDMI 4X', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(408, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU SAMSUNG J2 PRIME', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(409, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU SAMSUNG J3 PRO', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(410, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU SAMSUNG J5 PRO', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(411, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU SAMSUNG J7 PRO', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(412, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU REDMI NOTE 4X', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(413, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU REDMI 4A', '-', 1, 30000.00, 0.00, 'N', '', 'Y', 5, '2018-03-13', 0, ''),
	(414, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU REDMI 4X', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(415, 'AKSESORIS', 'SOFTCASE', 'GALENO', 'TPU J2 PRIME', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(416, 'AKSESORIS', 'SOFTCASE', 'GALENO', 'TPU J5 PRO', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(417, 'AKSESORIS', 'SOFTCASE', 'GALENO', 'TPU J7 PRO', '-', 1, 25000.00, 0.00, 'N', '', 'Y', 5, '2018-01-17', 0, ''),
	(418, 'AKSESORIS', 'SOFTCASE', 'GALENO', 'TPU REDMI 4A', '-', 1, 25000.00, 0.00, 'N', '', 'Y', 5, '2018-01-17', 0, ''),
	(419, 'AKSESORIS', 'SOFTCASE', 'GALENO', 'TPU REDMI 4X', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(420, 'AKSESORIS', 'SOFTCASE', 'SPIGENN', 'VELVET LEATHER J2 PRIME', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(421, 'AKSESORIS', 'SOFTCASE', 'SPIGENN', 'VELVET LEATHER REDMI NOTE 4', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(422, 'AKSESORIS', 'SOFTCASE', 'SPIGENN', 'VELVET LEATHER REDMI 4A', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(423, 'AKSESORIS', 'SOFTCASE', 'SPIGENN', 'VELVET LEATHER REDMI 4X', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(424, 'AKSESORIS', 'RING', 'WELLCOMM', 'STANDING RING CIRCLE', '-', NULL, 9500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(425, 'AKSESORIS', 'RING', 'WELLCOMM', 'STANDING RING KISS', '-', NULL, 9500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(426, 'AKSESORIS', 'SOFTCASE', 'XO BRAND', 'GALAXY J7_6', '-', NULL, 18000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(427, 'AKSESORIS', 'SMARTWATCH', 'XIAOMI', 'MI BAND 2', 'BLACK', NULL, 400000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(428, 'AKSESORIS', 'SMARTWATCH', 'XIAOMI', 'MI BAND 2 STRAP ', 'GREEN', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(429, 'AKSESORIS', 'TAS', 'XIAOMI', 'MI CITY BACKPACK ORIGINAL', 'GREY', NULL, 470000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(430, 'AKSESORIS', 'TAS', 'XIAOMI', 'MI CITY SLIM BAG ORIGINAL', 'BLACK', NULL, 250000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(431, 'AKSESORIS', 'SELFIE STICK', 'XIAOMI', 'MI REMOTE SHUTTER', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(432, 'AKSESORIS', 'CABLE', 'XIAOMI', 'MI TYPE-C TO HDMI ADAPTER', '-', NULL, 340000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(433, 'HANDPHONE', 'ADVAN', 'G1 PRO SERIES BP', '3/32GB', 'GOLD', NULL, 1650000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(434, 'HANDPHONE', 'ADVAN', 'T2K BP', '-', 'GREEN', NULL, 500000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(435, 'HANDPHONE', 'ADVAN', 'T2K BP', '-', 'WHITE', NULL, 500000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(436, 'HANDPHONE', 'ASUS', 'ZEN LIVE ZB501KL', '2/16GB', 'BLACK', NULL, 1700000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(437, 'HANDPHONE', 'ASUS', 'ZEN 4 MAX ZC520KL BP', '', 'BLACK', 1, 2299000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(438, 'HANDPHONE', 'ASUS', 'ZEN 4 SELFIE ZC553KL BP', '4/64GB', 'BLACK', NULL, 3425000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(439, 'HANDPHONE', 'HUAWEI', 'NOVA 2i BP', '-', 'BLACK', NULL, 4000000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(440, 'HANDPHONE', 'HUAWEI', 'Y5-2017 BP', '-', 'GOLD', 1, 1600000.00, 0.00, 'Y', '', 'Y', 2, '2018-03-13', 0, ''),
	(441, 'HANDPHONE', 'HUAWEI', 'Y7 PRIME', '-', 'GOLD', 1, 2600000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-21', 0, ''),
	(442, 'HANDPHONE', 'LENOVO', 'A7010 K4 NOTE BP', '16GB', 'WHITE', NULL, 1750000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(443, 'HANDPHONE', 'LENOVO', 'K53A48 K6 NOTE BP', '-', 'SILVER', NULL, 2400000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(444, 'HANDPHONE', 'LENOVO', 'K33A42 K6 POWER BP', '-', 'GOLD', 1, 2000000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-20', 0, ''),
	(445, 'HANDPHONE', 'MEIZU', 'M5 NOTE', '3/32GB', 'SILVER', NULL, 2600000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(446, 'HANDPHONE', 'MOTOROLA', 'MOTO E4 PLUS BP', '3/32GB', 'GREY', 1, 0.00, 0.00, 'Y', '', 'Y', 5, '2018-02-20', 0, ''),
	(447, 'HANDPHONE', 'MOTOROLA', 'MOTO M BP', '-', 'GOLD', NULL, 2550000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(448, 'HANDPHONE', 'MOTOROLA', 'MOTO M BP', '-', 'GREY', 1, 2550000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-05', 0, ''),
	(449, 'HANDPHONE', 'NOKIA', 'N105', 'DUAL SIM', 'BLACK', NULL, 285000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(450, 'HANDPHONE', 'NOKIA', 'N105 NEW BP', 'DUAL SIM', 'BLUE', 1, 225000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-28', 0, ''),
	(451, 'HANDPHONE', 'NOKIA', 'N130 NEW BP', 'DUAL SIM', 'BLACK', 1, 315000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-05', 0, ''),
	(452, 'HANDPHONE', 'NOKIA', 'N150', '', 'BLACK', 1, 0.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(453, 'HANDPHONE', 'NOKIA', 'N3310 NEW BP', '', 'WARM RED', 1, 615000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-05', 0, ''),
	(454, 'HANDPHONE', 'NOKIA', 'N216', '-', 'BLUE', NULL, 45000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(455, 'HANDPHONE', 'OPPO', 'A37F BP', '-', 'BLACK', 1, 1800000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-03', 0, ''),
	(456, 'HANDPHONE', 'OPPO', 'CPH1717 A71', '-', 'BLACK', 1, 2300000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-26', 0, ''),
	(457, 'HANDPHONE', 'OPPO', 'CPH1717 A71 BP', '-', 'BLACK', 1, 2300000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-02', 0, ''),
	(458, 'HANDPHONE', 'OPPO', 'CPH1717 A71', '-', 'GOLD', 1, 2300000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-15', 0, ''),
	(459, 'HANDPHONE', 'OPPO', 'CPH1801 A71 BP', '3GB', 'GOLD', 1, 2400000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-13', 0, ''),
	(460, 'HANDPHONE', 'OPPO', 'CPH1723 F5', '-', 'GOLD', 1, 4000000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-26', 0, ''),
	(461, 'HANDPHONE', 'OPPO', 'CPH1723 F5 BP', '-', 'GOLD', 1, 4000000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-10', 0, ''),
	(462, 'HANDPHONE', 'OPPO', 'CPH1725 F5 YOUTH', '-', 'GOLD', 1, 3599000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-15', 0, ''),
	(463, 'HANDPHONE', 'SAMSUNG', 'C710 GALAXY J7 PLUS', '', 'BLACK', 1, 4800000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(464, 'HANDPHONE', 'SAMSUNG', 'G532G GALAXY J2 PRIME BP', '', 'BLACK', 1, 1525000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-19', 0, ''),
	(465, 'HANDPHONE', 'SAMSUNG', 'G532G GALAXY J2 PRIME BP', '', 'GOLD', 1, 1505000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-13', 0, ''),
	(466, 'HANDPHONE', 'SAMSUNG', 'G532G GALAXY J2 PRIME BP', '', 'SILVER', 1, 1525000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-19', 0, ''),
	(467, 'HANDPHONE', 'SAMSUNG', 'G610F GALAXY J7 PRIME BP', '-', 'BLUE SILVER', 1, 2885000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-26', 0, ''),
	(468, 'HANDPHONE', 'SAMSUNG', 'J530 GALAXY J5 PRO', '', 'BLACK', 1, 3245000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(469, 'HANDPHONE', 'SAMSUNG', 'J730 GALAXY J7 PRO BP', '-', 'BLACK', 1, 3680000.00, 0.00, 'Y', '', 'Y', 10, '2018-03-12', 0, ''),
	(470, 'HANDPHONE', 'SAMSUNG', 'J730 GALAXY J7 PRO BP', '-', 'GOLD', 1, 3680000.00, 0.00, 'Y', '', 'Y', 10, '2018-03-12', 0, ''),
	(471, 'HANDPHONE', 'SAMSUNG', 'J730 GALAXY J7 PRO BP', '-', 'PINK', NULL, 3735000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(472, 'HANDPHONE', 'SAMSUNG', 'J730 GALAXY J7 PRO BP', '-', 'SILVER', 1, 3735000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-08', 0, ''),
	(473, 'HANDPHONE', 'SAMSUNG', 'SM-T116 GALAXY TAB 3V BP', '-', 'BLACK', 1, 1565000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-13', 0, ''),
	(474, 'HANDPHONE', 'SAMSUNG', 'J320G GALAXY J3-2016 BP', '-', 'WHITE', NULL, 1730000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(475, 'HANDPHONE', 'VIVO', 'V5S', '-', 'CROWN GOLD', NULL, 3599000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(476, 'HANDPHONE', 'VIVO', '1716 V7+', '-', 'GOLD', NULL, 4700000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(477, 'HANDPHONE', 'VIVO', '1719 Y65', '-', 'GOLD', NULL, 2600000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(478, 'HANDPHONE', 'XIAOMI', 'REDMI NOTE 4 BP', '4/64GB', 'GOLD', 1, 2625000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-05', 0, ''),
	(479, 'HANDPHONE', 'XIAOMI', 'REDMI NOTE 5A BP', '2/16GB', 'GOLD', NULL, 1700000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(480, 'DEMO LIVE', 'SAMSUNG', 'J7 CORE', '-', 'BLACK', NULL, 2400000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(481, 'DEMO LIVE ', 'COOLPAD', 'E502 SKY 3', '-', 'GOLD', NULL, 2300000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(482, 'DEMO LIVE ', 'HUAWEI', 'HONOR 4C', '-', 'GOLD', NULL, 2000000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(483, 'DEMO LIVE ', 'MEIZU', 'M3 NOTE', '-', 'SILVER', NULL, 2300000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(484, 'DEMO LIVE ', 'MEIZU', 'M5', '-', 'GOLD', NULL, 1800000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(485, 'DEMO LIVE ', 'MEIZU', 'M5 NOTE', '-', 'GOLD', NULL, 2600000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(486, 'DEMO LIVE ', 'OPPO', 'A71', '-', 'BLACK', NULL, 2300000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(487, 'DEMO LIVE', 'OPPO', 'R3001 MIRROR3', '-', 'WHITE', NULL, 1600000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(488, 'DEMO LIVE ', 'VIVO', 'V5S', 'UNIT ONLY', 'CROWN GOLD', NULL, 0.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(489, 'ASURANSI', 'KARTU', 'OPPO', 'HIGH CLASS', '-', NULL, 140000.00, 0.00, NULL, NULL, 'Y', 5, '2018-01-09', 0, ''),
	(490, 'ASURANSI', 'KARTU', 'OPPO', 'LOW CLASS', '-', NULL, 140000.00, 0.00, NULL, NULL, 'Y', 5, '2018-01-09', 0, ''),
	(491, 'SIMCARD', 'KARTU', 'SIMPATI', '12GB', '-', NULL, 59826.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(492, 'SIMCARD', 'KARTU', 'SIMPATI', '30GB', '-', 1, 65000.00, 0.00, 'N', '', 'Y', 5, '2018-01-27', 0, ''),
	(493, 'SIMCARD', 'KARTU', 'XL AXIATA', '3GB', '-', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(494, 'MEMORI CARD', 'SANDISK', 'FLASHDISK OTG', '16GB', '-', NULL, 113000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(495, 'MEMORI CARD', 'SANDISK', 'FLASHDISK OTG', '32GB', '-', 1, 175000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(496, 'MEMORI CARD', 'SANDISK', 'MICRO CLASS 10 RIZQY 2', '16GB', '-', 1, 120000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(497, 'MEMORI CARD', 'SANDISK', 'MICRO CLASS 10 RIZQY 2', '32GB', '-', 1, 190000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(498, 'MEMORI CARD', 'SANDISK', 'MICRO CLASS 10 RIZQY 2', '64GB', '-', 1, 325000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(499, 'MIFI', 'SMARTFREN', 'M3Z', '-', 'BLACK', NULL, 330333.00, 0.00, NULL, NULL, 'Y', 5, '2018-01-09', 0, ''),
	(500, 'AKSESORIS', 'CABLE', 'VIVAN', 'MICRO CBM80', '-', NULL, 10000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(501, 'AKSESORIS', 'CABLE', 'ENERGEA', 'NYLOTOUGH TYPE-C 1,5M', 'RED', NULL, 220000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(502, 'AKSESORIS', 'CABLE', 'VIVAN', 'CM180 MICRO USB', '-', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(503, 'AKSESORIS', 'CABLE', 'ROBOT', 'FLASH LIGHT RSL-160', 'BLACK', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(504, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'BEE 11000MAH', '-', NULL, 240000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(505, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'ATLAS 12000MAH SIMPLE PACK', '-', NULL, 300000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(506, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'TREN 12000MAH SIMPLE PACK', '-', 1, 280000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(507, 'AKSESORIS', 'POWERBANK', 'HIPPO', 'BRONZ X 15000MAH ', '-', NULL, 305000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(508, 'AKSESORIS', 'POWERBANK', 'ROBOT', 'RT-G3 11000MAH', 'BLACK', NULL, 280000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(509, 'AKSESORIS', 'POWERBANK', 'VIVAN', 'B5 5200MAH', 'GOLD', NULL, 250000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(510, 'AKSESORIS', 'CABLE', 'REMAX', 'LESU 3IN1 SPLIT', 'WHITE', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(511, 'AKSESORIS', 'CABLE', 'SICRON', 'USB STRONG POWER APPLE 8PIN', 'WHITE', NULL, 77500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(512, 'AKSESORIS', 'SELFIE STICK', 'MONOPOD', 'KABEL', '-', 1, 15000.00, 0.00, 'N', '', 'Y', 5, '2018-01-23', 0, ''),
	(513, 'AKSESORIS', 'SELFIE STICK', 'MONOPOD', 'MINI  ', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(514, 'AKSESORIS', 'CABLE', 'XO BRAND', 'S3 IPHONE 5/6', 'BLACK', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(515, 'AKSESORIS', 'HANDSFREE', 'ROMAN', 'BLUETOOTH NECKBAND Z6000', '-', NULL, 475000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(516, 'AKSESORIS', 'HANDSFREE', 'ROBOT', 'PE-03', 'GOLD', NULL, 50000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(517, 'AKSESORIS', 'HANDSFREE', 'JABRA', 'BLUETOOTH BOOST', 'BLACK', NULL, 600000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(518, 'AKSESORIS', 'HANDSFREE', 'ROMAN', 'BLUETOOTH R525', '-', NULL, 240000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(519, 'AKSESORIS', 'HANDSFREE', 'SONY', 'MDR-EX155AP', 'RED', NULL, 220000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(520, 'AKSESORIS', 'POWERBANK', 'I LIKE', 'EARBUD LE-505', 'BLACK', NULL, 265000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(521, 'AKSESORIS', 'HARDCASE', 'IMAK', 'CRYSTAL II GALAXY J7', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(522, 'AKSESORIS', 'HARDCASE', 'IMAK', 'CRYSTAL II P8 LITE', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(523, 'AKSESORIS', 'HARDCASE', 'IMAK', 'CRYSTAL II ZENFONE SELFIE', '-', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(524, 'AKSESORIS', 'HARDCASE', 'IMAK', 'RUIYI GALAXY J7', 'BROWN', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(525, 'AKSESORIS', 'HARDCASE', 'IMAK', 'RUIYI GALAXY J7', 'GOLD', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(526, 'AKSESORIS', 'LEATHER CASE', 'DICOTA', 'CRADLE BB9790', 'BLACK', NULL, 195000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(527, 'AKSESORIS', 'LEATHER CASE', 'AMO', 'COOLPAD MAX LITE', 'BLUE', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(528, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE BATIK Y3', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(529, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE BATIK Y5', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(530, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE GRAND 2', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(531, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE OPPO JOY', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(532, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE OPPO NEO K', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(533, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE IPHONE 6', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(534, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE HONOR 3X', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(535, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE GALAXY J1 MINI', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(536, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE LENOVO K4 NOTE', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(537, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE OPPO R7', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(538, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE GALAXY A5_6', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(539, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE ZEN GO 4,5""', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(540, 'AKSESORIS', 'LEATHER CASE', 'HUANMIN', 'NOBLE ZEN 3 5,2""', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(541, 'AKSESORIS', 'LEATHER CASE', 'I-CENTURY', 'ODDY ACE 4', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(542, 'AKSESORIS', 'LEATHER CASE', 'I-CENTURY', 'ODDY XPERIA E3', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(543, 'AKSESORIS', 'LEATHER CASE', 'UME', 'GALAXY S5', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(544, 'AKSESORIS', 'LEATHER CASE', 'UME', 'OPPO NEO K', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(545, 'AKSESORIS', 'LEATHER CASE', 'UME', 'XPERIA E3', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(546, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED GALAXY A3_6', 'BROWN', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(547, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED GALAXY J7', 'BROWN', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(548, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE GALAXY J2 PRIME', 'GOLD', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(549, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE HUAWEI P9', 'BLACK', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(550, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE HUAWEI P9', 'GOLD', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(551, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE ZEN SELFIE 5,5"', 'BLACK', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(552, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE OPPO F1S', 'BLACK', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(553, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE OPPO F1S', 'GOLD', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(554, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE GALAXY A3_6', 'BLACK', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(555, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE GALAXY A3_6', 'GOLD', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(556, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE GALAXY A5_6', 'BLACK', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(557, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE GALAXY A5_6', 'GOLD', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(558, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE GALAXY S7', 'BLACK', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(559, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'SPARKLE XPERIA E4', 'BLACK', NULL, 110000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(560, 'AKSESORIS', 'CABLE', 'NILLKIN', 'AURORA IPHONE 5', 'BLACK', NULL, 67500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(561, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'BURT SERIES GALAXY S8', 'BLACK', NULL, 95000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(562, 'AKSESORIS', 'CABLE', 'NILLKIN', 'IPHONE 5', 'WHITE', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(563, 'AKSESORIS', 'CABLE', 'NILLKIN', 'MICRO USB', 'GREY', NULL, 49545.45, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(564, 'AKSESORIS', 'CABLE', 'NILLKIN', 'MICRO USB', 'WHITE', 1, 75000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(565, 'AKSESORIS', 'CABLE', 'NILLKIN', 'TYPE-C', 'WHITE', NULL, 50000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(566, 'AKSESORIS', 'CABLE', 'NILLKIN', 'PLUS 2 2IN1', 'BLUE', NULL, 58500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(567, 'AKSESORIS', 'CABLE', 'NILLKIN', 'CHIC TYPE-C ', 'KHAKI', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(568, 'AKSESORIS', 'CABLE', 'NILLKIN', 'CHIC TYPE-C', 'RED', 1, 90000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(569, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'DEFENDER 2 GALAXY S7', 'ORANGE', NULL, 90000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(570, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'DEFENDER 2 GALAXY S7 EDGE', 'ORANGE', NULL, 90000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(571, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'HYBRID SERIES IPHONE 7', 'BLACK', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(572, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'HYBRID SERIES IPHONE 7+', 'BLACK', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(573, 'AKSESORIS', 'CHARGER', 'NILLKIN', 'JELLY CAR', 'PINK', NULL, 75000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(574, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'LENSEN SERIES IPHONE 7', 'BLACK', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(575, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'LENSEN SERIES IPHONE 7', 'GOLD', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(576, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'LENSEN SERIES IPHONE 7+', 'BLACK', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(577, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'LENSEN SERIES IPHONE 7+', 'GOLD', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(578, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'LENSEN SERIES IPHONE 7+', 'SILVER', NULL, 100000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(579, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'MAGIC SERIES IPHONE 6', 'BLACK', NULL, 172500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(580, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'MAGIC SERIES IPHONE 7', 'BLACK', NULL, 172500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(581, 'AKSESORIS', 'CABLE', 'NILLKIN', 'MINI MICRO USB', 'GREY', 1, 65000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(582, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'M-JARL SERIES IPHONE 7+', 'RED', NULL, 99000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(583, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'QIN IPHONE 5', 'BROWN', NULL, 85500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(584, 'AKSESORIS', 'LEATHER CASE', 'NILLKIN', 'QIN NOTE 5', 'RED', NULL, 85500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(585, 'AKSESORIS', 'CABLE', 'NILLKIN', 'RAPID LIGHTNING', 'BLUE', 1, 125000.00, 0.00, 'N', '', 'Y', 5, '2018-01-26', 0, ''),
	(586, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED GALAXY A3-2017', 'BLACK', NULL, 49500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(587, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED GALAXY A3-2017', 'BROWN', NULL, 49500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(588, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED GALAXY A5-2017', 'GOLD', NULL, 49500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(589, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED GALAXY A7-2017', 'BLACK', NULL, 49500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(590, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED GALAXY S7', 'ROSE GOLD', NULL, 49500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(591, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED MEIZU M5  ', 'RED', NULL, 49500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(592, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED MEIZU MX6', 'GOLD', NULL, 49500.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(593, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED OPPO F3', 'GOLD', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(594, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED REDMINOTE 4X', 'GOLD', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(595, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'FROSTED REDMI 4A', 'BLACK', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(596, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SUPER FROSTED ZENFONE 3 5,2""', 'BLACK', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(597, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SYNTHETIC FIBER GALAXY S8+', 'BLACK', NULL, 150000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(598, 'AKSESORIS', 'HARDCASE', 'NILLKIN', 'SYNTHETIC FIBER IPHONE 7+', 'BLACK', NULL, 150000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(599, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY A3-2017', 'BROWN', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(600, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY A3-2017', 'WHITE', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(601, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY A5-2017', 'GREY', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(602, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY A7-2017', 'GREY', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(603, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY A7-2017', 'WHITE', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(604, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY GRAND PRIME', 'GREY', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(605, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU IPHONE 5', 'WHITE', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(606, 'AKSESORIS', 'SOFTCASE', 'NILLKIN', 'TPU GALAXY J5 PRIME', 'GREY', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(607, 'AKSESORIS', 'CHARGER', 'NILLKIN', 'VIGOR CAR CHG', 'GREY', NULL, 85000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(608, 'AKSESORIS', 'POWERBANK', 'PRODA', 'THIN 5000MAH', 'SILVER', NULL, 140000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(609, 'AKSESORIS', 'CHARGER', 'REMAX', 'BUSINESS 5 PORT USB', 'GOLD', NULL, 190000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(610, 'AKSESORIS', 'CHARGER', 'REMAX', 'BUSINESS 5 PORT USB', 'SILVER', NULL, 190000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(611, 'AKSESORIS', 'CHARGER', 'REMAX', 'YOUTH 5 PORT USB', 'BLUE', NULL, 130000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(612, 'AKSESORIS', 'HOLDER', 'REMAX', 'CAR HOLDER TRANSFORMER', '-', NULL, 130000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(613, 'AKSESORIS', 'CABLE', 'REMAX', 'ALIEN LIGHTNING', 'BLUE', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(614, 'AKSESORIS', 'CABLE', 'REMAX', 'ALIEN MICRO USB', 'YELLOW', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(615, 'AKSESORIS', 'CABLE', 'REMAX', 'AURORA 2IN1', 'BLACK', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(616, 'AKSESORIS', 'CABLE', 'REMAX', 'FULL SPEED MICRO USB', 'BLACK', 1, 35000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(617, 'AKSESORIS', 'CABLE', 'REMAX', 'FULL SPEED MICRO USB', 'BLUE', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(618, 'AKSESORIS', 'CABLE', 'REMAX', 'FULL SPEED MICRO USB', 'YELLOW', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(619, 'AKSESORIS', 'CABLE', 'REMAX', 'FULL SPEED 2 MICRO USB ', 'BLUE', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(620, 'AKSESORIS', 'CABLE', 'REMAX', 'KINGHT MICRO USB', 'GOLD', NULL, 60000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(621, 'AKSESORIS', 'CABLE', 'REMAX', 'MARTIN MICRO USB', 'BLACK', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(622, 'AKSESORIS', 'CABLE', 'REMAX', 'MARTIN MICRO USB', 'BLUE', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(623, 'AKSESORIS', 'CABLE', 'REMAX', 'MICRO USB', 'BLUE', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-03-06', 0, ''),
	(624, 'AKSESORIS', 'CABLE', 'REMAX', 'PUFF MICRO USB', 'BLUE', NULL, 50000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(625, 'AKSESORIS', 'CABLE', 'REMAX', 'SOULFELL MICRO USB', 'BLUE', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(626, 'AKSESORIS', 'CABLE', 'REMAX', 'SOULFELL MICRO USB', 'PINK', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(627, 'AKSESORIS', 'HOLDER', 'REMAX', 'CAR HOLDER DOLPHIN', '-', NULL, 50000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(628, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'RM502', 'RED', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(629, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'RM-565I', 'BLACK', NULL, 120000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(630, 'AKSESORIS', 'CHARGER', 'REMAX', '2PORT MINI CAR CHG', 'WHITE', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(631, 'AKSESORIS', 'CHARGER', 'PRODA', 'USB RP-21 2 PORT', 'WHITE', 1, 60000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(632, 'AKSESORIS', 'LEATHER CASE', 'SAMSUNG ORIGINAL', 'FLIP WALLET J5_6', 'WHITE', NULL, 220000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(633, 'AKSESORIS', 'HARDCASE', 'SAMSUNG ORIGINAL', 'ALCANTARA COVER GALAXY NOTE 8', 'BLACK', 1, 650000.00, 0.00, 'N', '', 'Y', 5, '2018-02-19', 0, ''),
	(634, 'AKSESORIS', 'LEATHER CASE', 'SAMSUNG ORIGINAL', 'CLEAR VIEW STAND COVER GALAXY NOTE 8', 'BLACK', NULL, 975000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(635, 'AKSESORIS', 'CHARGER', 'SAMSUNG ORIGINAL', 'FAST CHARGING', 'WHITE', 1, 350000.00, 0.00, 'N', '', 'Y', 5, '2018-03-03', 0, ''),
	(636, 'AKSESORIS', 'SCREENGUARD', 'JETE', 'TEMPERED GLASS J7 PRIME', '-', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(637, 'AKSESORIS', 'SCREENGUARD', 'JETE', 'TEMPERED GLASS J1_6', '-', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(638, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE GALAXY A8', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(639, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE ZEN 2 SELFIE 5,5""', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(640, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI SHOCK GALAXY A3', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(641, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI SHOCK IPHONE 4', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(642, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J1 MINI', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(643, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J1-6', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(644, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J3_6', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(645, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J5 PRO', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(646, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY J7_6', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(647, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY TAB 3V', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(648, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY TAB A8INC', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(649, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY TAB A7-2016', '', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(650, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY A7_2017 FULLSET', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(651, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP IPHONE 5', 'FULLSET', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(652, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP IPHONE 6', 'FULLSET', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(653, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP IPHONE 6+', 'FULLSET', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(654, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP IPHONE 7', 'FULLSET', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(655, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP IPHONE 7+', 'FULLSET', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(656, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', '', '-', 1, 25000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(657, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP OPPO F3 PLUS', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(658, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP XIAOMI REDMI 3', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(659, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP XIAOMI REDMINOTE 4', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(660, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP GALAXY GRAND', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(661, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP ZENFONE 3 5,2""', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(662, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'AFP ZENFONE 3 MAX', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(663, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE IPHONE 5', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(664, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE XPERIA C3', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(665, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE IPHONE 6 PLUS', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(666, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE LENOVO K4 NOTE', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(667, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE LENOVO K5', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(668, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE OPPO MIRROR 5', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(669, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE OPPO NEO 7', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(670, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE COOLPAD SKY 3', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(671, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE LENOVO VIBE SHOT', '-', NULL, 15000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(672, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY C9 PRO', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(673, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY A3_2017', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(674, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY A5_2017', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(675, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY J7+', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(676, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK HUAWEI GR5', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(677, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK IPHONE 4', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(678, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK IPHONE 6', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 5, '2018-01-15', 0, ''),
	(679, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK IPHONE 6+', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(680, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK OPPO A71', '', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(681, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK OPPO F1', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(682, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK OPPO F3', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 10, '2018-01-10', 0, 'image/uploads/item/682/201811515567712/item-682.jpg'),
	(683, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK OPPO R7S', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(684, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK REDMI 4A', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(685, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK REDMI NOTE 5A', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(686, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK XPERIA C5', '-', NULL, 80000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(687, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'CYSTAL FX GALAXY TAB 3V', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(688, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS GALAXY J2 PRIME', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(689, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS J3_6', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(690, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS J3 PRO', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(691, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS GALAXY J5 PRIME', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(692, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS GALAXY J5_6', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(693, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS GALAXY J7 PRIME', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(694, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS IPHONE 5', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(695, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS IPHONE 6', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(696, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS IPHONE 6 PLUS', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(697, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS OPPO A39', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(698, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS OPPO A57', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(699, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS OPPO F1S', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(700, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS REDMINOTE 5A', '-', 1, 70000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(701, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS ZEN 3 MAX 5,2""', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(702, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS ZEN GO NEW', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(703, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS M3 NOTE', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(704, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS OPPO F3 PLUS', '-', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(705, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN ANDROMAX Z', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(706, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN BB9220', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(707, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN GALAXY J1_6', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(708, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN GALAXY J7_6', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(709, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN LENOVO K4 NOTE', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(710, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN OPPO A71', '-', 1, 15000.00, 0.00, 'N', '', 'Y', 5, '2018-01-26', 0, ''),
	(711, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN OPPO F5', '-', 1, 20000.00, 0.00, 'N', '', 'Y', 5, '2018-02-24', 0, ''),
	(712, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN REDMINOTE 3', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(713, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN REDMINOTE 4', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(714, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN REDMINOTE 5A', '-', 1, 15000.00, 0.00, 'N', '', 'Y', 5, '2018-01-26', 0, ''),
	(715, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI GLARE GALAXY A5 ', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(716, 'AKSESORIS', 'SCREENGUARD', 'BODYGUARD', 'TPG FULL REDMI NOTE 4/4X', 'BLACK', NULL, 70000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(717, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXY J3 PRO', 'BLACK', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(718, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXY J5 PRO', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(719, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXY J7 PRO', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(720, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE J1 ACE', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(721, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE GALAXY J1 MINI', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(722, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE HUAWEI GR3', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(723, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE LENOVO A2010', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(724, 'AKSESORIS', 'HARDCASE', 'HUANMIN', 'LINE CASE ZENFONE MAX', '-', NULL, 45000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(725, 'AKSESORIS', 'RING', 'ROBOT', 'RING STENT BR02', '-', NULL, 35000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(726, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'CARBON CASE REDMI NOTE 4', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(727, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'CARBON CASE REDMI 4A', '-', 1, 30000.00, 0.00, 'N', 'rc0002', 'Y', 5, '2018-03-13', 0, ''),
	(728, 'AKSESORIS', 'SOFTCASE', 'I-CENTURY', 'ULTRATHIN CORE 2', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(729, 'AKSESORIS', 'SOFTCASE', 'I-CENTURY', 'ULTRATHIN GRAND PRIME', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(730, 'AKSESORIS', 'SOFTCASE', 'I-CENTURY', 'ULTRATHIN LENOVO A3300', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(731, 'AKSESORIS', 'SOFTCASE', 'I-CENTURY', 'ULTRATHIN LENOVO A3500', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(732, 'AKSESORIS', 'SOFTCASE', 'I-CENTURY', 'ULTRATHIN OPPO JOY', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(733, 'AKSESORIS', 'SOFTCASE', 'I-CENTURY', 'ULTRATHIN OPPO FIND 5 MINI', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(734, 'AKSESORIS', 'SOFTCASE', 'UME', 'EMERALD J2 PRIME', '-', NULL, 30000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(735, 'AKSESORIS', 'SOFTCASE', '-', 'ANTICRACK OPPO A37', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(736, 'AKSESORIS', 'SOFTCASE', '-', 'ANTICRACK REDMI 4A', '-', NULL, 20000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(737, 'AKSESORIS', 'SOFTCASE', 'SMILE', 'CROSS J2 PRIME', '-', NULL, 25000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(738, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU SAMSUNG J2 PRIME', '-', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(739, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU SAMSUNG J3 PRO', '-', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(740, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU SAMSUNG J5 PRO', '-', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(741, 'AKSESORIS', 'SOFTCASE', 'I-ZORE', 'TPU REDMI 4A', '-', 1, 30000.00, 0.00, 'N', '', 'Y', 5, '2018-01-26', 0, ''),
	(742, 'AKSESORIS', 'SMARTWATCH', 'XIAOMI', 'MI BAND 2 STRAP', 'BLUE', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(743, 'HANDPHONE', 'ALCATEL', '1054D BP', '-', 'PURE WHITE', NULL, 170000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(744, 'HANDPHONE', 'ASUS', 'ZEN 3 MAX ZC553KL BP', '3/32GB', 'SILVER', NULL, 2000000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(745, 'HANDPHONE', 'ASUS', 'ZEN 4 MAX PRO ZC554KL BP', '3/32GB', 'BLACK', NULL, 2950000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(746, 'HANDPHONE', 'HAIER', 'G7 BP', '-', 'GOLD', NULL, 1149000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(747, 'HANDPHONE', 'HAIER', 'LEISURE L7 BP', '-', 'BLACK', 1, 1850000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-20', 0, ''),
	(748, 'HANDPHONE', 'HUAWEI', 'NOVA 2i BP', '-', 'GOLD', NULL, 4000000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(749, 'HANDPHONE', 'LENOVO', 'K33A42 K6 POWER BP', '-', 'SILVER', 1, 2000000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-20', 0, ''),
	(750, 'HANDPHONE', 'MEIZU', 'MX6', '4/32GB', 'GREY', NULL, 3500000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(751, 'HANDPHONE', 'MOTOROLA', 'MOTO E4 PLUS BP', '3/32GB', 'GOLD', 1, 2335000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-20', 0, ''),
	(752, 'HANDPHONE', 'NOKIA', 'N105 BP', 'SINGLE SIM', 'BLACK', NULL, 225000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(753, 'HANDPHONE', 'NOKIA', 'N105 NEW BP', 'DUAL SIM', 'WHITE', 1, 250000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-28', 0, ''),
	(754, 'HANDPHONE', 'NOKIA', 'N130 NEW BP', 'DUAL SIM', 'GREY', NULL, 315000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(755, 'HANDPHONE', 'NOKIA', 'N150 BP', 'DUAL SIM', 'WHITE', NULL, 395000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(756, 'HANDPHONE', 'NOKIA', 'N3310 NEW BP', '', 'DARK BLUE', 1, 650000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-05', 0, ''),
	(757, 'HANDPHONE', 'NOKIA', 'N216 BP', '', 'BLUE  ', 1, 450000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(758, 'HANDPHONE', 'OPPO', 'CPH1725 F5 YOUTH', '-', 'GOLD', NULL, 3600000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(759, 'HANDPHONE', 'OPPO', 'CPH1725 F5 YOUTH BP', '-', 'GOLD', 1, 3600000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-24', 0, ''),
	(760, 'HANDPHONE', 'SAMSUNG', 'C710 GALAXY J7 PLUS BP', '-', 'GOLD', 1, 4800000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-07', 0, ''),
	(761, 'HANDPHONE', 'SAMSUNG', 'G532G GALAXY J2 PRIME BP', '-', 'BLACK', NULL, 1525000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(763, 'HANDPHONE', 'SAMSUNG', 'G610F GALAXY J7 PRIME BP', '-', 'BLACK', 1, 2990000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-07', 0, ''),
	(764, 'HANDPHONE', 'SAMSUNG', 'G610F GALAXY J7 PRIME BP', '-', 'WHITE GOLD', 1, 2990000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-21', 0, ''),
	(765, 'HANDPHONE', 'SAMSUNG', 'J530 GALAXY J5 PRO BP', '-', 'BLACK', 1, 3245000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-08', 0, ''),
	(766, 'HANDPHONE', 'SAMSUNG', 'J530 GALAXY J5 PRO', '', 'GOLD', 1, 3245000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(767, 'HANDPHONE', 'SAMSUNG', 'J530 GALAXY J5 PRO BP', '-', 'GOLD', 1, 3245000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-08', 0, ''),
	(768, 'HANDPHONE', 'SAMSUNG', 'J730 GALAXY J7 PRO BP', '-', 'BLACK', 1, 3680000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-12', 0, ''),
	(769, 'HANDPHONE', 'SAMSUNG', 'J730 GALAXY J7 PRO BP', '-', 'GOLD', NULL, 3735000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(770, 'HANDPHONE', 'SAMSUNG', 'N950 GALAXY NOTE 8 BP', '', 'BLACK', 1, 12450000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-27', 0, ''),
	(771, 'HANDPHONE', 'SAMSUNG', 'J320G GALAXY J3-2016 BP', '-', 'BLACK', 1, 1730000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-21', 0, ''),
	(772, 'HANDPHONE', 'SAMSUNG', 'J320G GALAXY J3-2016 BP', '-', 'GOLD', 1, 1730000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-07', 0, ''),
	(773, 'HANDPHONE', 'SAMSUNG', 'SM-T116 GALAXY TAB 3V BP', '-', 'CREAM WHITE', 1, 1565000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-13', 0, ''),
	(774, 'HANDPHONE', 'VIVO', '1716 V7+', '-', 'MATTE BLACK', NULL, 4700000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(775, 'DEMO LIVE ', 'COOLPAD', 'COOL DUAL', '-', 'GOLD', NULL, 1600000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(776, 'DEMO LIVE ', 'COOLPAD', 'R108 MAX LITE', '-', 'WHITE', NULL, 1500000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(777, 'DEMO LIVE ', 'COOLPAD', 'E502 SKY 3', 'RAM 3', 'GOLD', NULL, 1250000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(778, 'DEMO LIVE ', 'SAMSUNG', 'GALAXY J3 PRO', '-', 'BLACK', NULL, 1223272.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(779, 'DEMO LIVE ', 'HAIER', 'LEISURE L7', '-', 'GOLD', NULL, 940005.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(780, 'DEMO LIVE ', 'HUAWEI', 'MEDIAPAD T1 7"', '-', 'SILVER', NULL, 652750.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(781, 'DEMO LIVE ', 'MEIZU', 'M5', '-', 'BLUE', NULL, 1000000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(782, 'DEMO LIVE ', 'OPPO', 'A33W NEO7', '-', 'WHITE', NULL, 1233333.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(783, 'DEMO LIVE ', 'OPPO', 'CPH1613 F3 PLUS', '-', 'GOLD', NULL, 3300000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(784, 'DEMO LIVE ', 'SAMSUNG', 'GALAXY J7+', '-', 'BLACK', NULL, 2350000.00, 0.00, 'Y', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(785, 'SIMCARD', 'KARTU', 'SIMPATI', '12GB', '-', NULL, 59965.03, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(786, 'SIMCARD', 'KARTU', 'SIMPATI', '30GB', '-', NULL, 65000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(787, 'SIMCARD', 'KARTU', 'SIMPATI', '7GB', '-', NULL, 55000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(788, 'SIMCARD', 'KARTU', 'XL AXIATA', '10GB', '-', NULL, 40000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(789, 'MEMORI CARD', 'SANDISK', 'MICRO CLASS 10', '8GB', '-', NULL, 65000.00, 0.00, 'N', NULL, 'Y', 5, '2018-01-09', 0, ''),
	(790, 'HANDPHONE', 'SAMSUNG', 'G610 J7 PRIME', '-', 'WHITE GOLD', 1, 2990000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-10', 0, ''),
	(791, 'HANDPHONE', 'SAMSUNG', 'Galaxy J3 Pro SM-J330 BP', '-', 'Gold', 1, 2300000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-19', 0, ''),
	(792, 'HANDPHONE', 'SAMSUNG', 'Galaxy J3 Pro SM-J330 BP', '-', 'Black', 1, 2300000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-19', 0, ''),
	(793, 'HANDPHONE', 'SAMSUNG', 'Galaxy J3 Pro SM-J330 BP', '-', 'Silver', 1, 2300000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-07', 0, ''),
	(794, 'HANDPHONE', 'SAMSUNG', 'J530 GALAXY J5 PRO BP', '-', 'Silver', 1, 3250000.00, 0.00, 'Y', '', 'Y', 5, '2018-02-05', 0, ''),
	(795, 'HANDPHONE', 'SAMSUNG', 'Galaxy J1 SM-J120 BP', '', 'Gold', 1, 1355000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-08', 0, ''),
	(796, 'HANDPHONE', 'SAMSUNG', 'Galaxy J1 SM-J120 BP', '-', 'Black', 1, 1355000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-09', 0, ''),
	(797, 'HANDPHONE', 'SAMSUNG', 'Galaxy J1 SM-J120 BP', '-', 'White', 1, 1355000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-09', 0, ''),
	(801, 'HANDPHONE', 'NOKIA', 'N216 BP', '-', 'Black', 1, 450000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(802, 'HANDPHONE', 'ASUS', 'ZEN 4 SELFIE ZD553KL', '4/64GB', 'GOLD', 1, 3425000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(803, 'HANDPHONE', 'ASUS', 'ZEN GO ZB450KL BP', '8/16GB', 'Silver', 1, 1200000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(804, 'HANDPHONE', 'SAMSUNG', 'GALAXY NOTE FE N935 BP', NULL, 'BLUE', 1, 8250000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(805, 'HANDPHONE', 'SAMSUNG', 'GALAXY NOTE FE N935 BP', '', 'BLACK', 1, 8250000.00, 0.00, 'Y', '', 'Y', 4, '2018-02-19', 0, ''),
	(806, 'HANDPHONE', 'SAMSUNG', 'C710 GALAXY J7 PLUS BP', '-', 'BLACK', 1, 4800000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-07', 0, ''),
	(807, 'HANDPHONE', 'SAMSUNG', 'FRESH EIDER B109 BP', '-', 'BLACK', 1, 250000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-08', 0, ''),
	(808, 'HANDPHONE', 'SAMSUNG', 'FRESH EIDER B109 BP', '-', 'WHITE', 1, 250000.00, 0.00, 'Y', '', 'Y', 5, '2018-03-08', 0, ''),
	(809, 'HANDPHONE', 'SAMSUNG', 'PITON B310', '-', 'BLUE', 1, 285000.00, 0.00, 'Y', '', 'Y', 4, '2018-01-10', 0, ''),
	(810, 'HANDPHONE', 'SAMSUNG', 'PITON B310', '-', 'WHITE', 1, 285000.00, 0.00, 'Y', '', 'Y', 4, '2018-01-10', 0, ''),
	(811, 'HANDPHONE', 'MOTOROLA', 'G5 PHONE XT1805', '4/32GB DUAL SIM', 'GREY', 1, 3150000.00, 0.00, 'Y', '', 'Y', 5, '2018-01-10', 0, ''),
	(812, 'AKSESORIS', 'MEIZU', 'M5', '', '123', 1, 1231231.00, 0.00, 'N', '123019010100121', 'N', 1231, '2018-01-10', 0, ''),
	(813, 'AKSESORIS', 'USB', 'HIPPO', 'NERO 2 VALUE PACK', '-', 1, 50000.00, 0.00, 'N', '', 'Y', 5, '2018-01-13', 0, ''),
	(814, 'AKSESORIS', 'USB', 'HIPPO', 'NERO 3 VALUE PACK', '-', 1, 90000.00, 0.00, 'N', '', 'Y', 4, '2018-01-13', 0, ''),
	(815, 'AKSESORIS', 'USB', 'HIPPO', 'PUPA VALUE PACK', '2 PORT', 1, 85000.00, 0.00, 'N', '', 'Y', 3, '2018-01-13', 0, ''),
	(816, 'AKSESORIS', 'TC', 'HIPPO', 'DYNAMIC VALUE PACK', '-', 1, 110000.00, 0.00, 'N', '', 'Y', 9, '2018-01-13', 0, ''),
	(817, 'AKSESORIS', 'TC', 'HIPPO', 'NYMP MICRO SIMPLE PACK', '-', 1, 170000.00, 0.00, 'N', '', 'Y', 9, '2018-01-13', 0, ''),
	(818, 'AKSESORIS', 'TONGSIS', '-', '-', '-', 1, 15000.00, 0.00, 'N', '', 'Y', 40, '2018-01-13', 0, ''),
	(819, 'AKSESORIS', 'HANDSFREE', 'STEREO', 'SP-08 BB 9000', 'BLUE', 1, 60000.00, 0.00, 'N', '', 'Y', 10, '2018-01-14', 0, ''),
	(820, 'AKSESORIS', 'HANDSFREE', 'STEREO', 'SP-08 BB 9000', 'LIGHT BLUE', 1, 60000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(821, 'AKSESORIS', 'HANDSFREE', 'STEREO', 'SP-08 BB 9000', 'PURPLE', 1, 60000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(822, 'AKSESORIS', 'HANDSFREE', 'STEREO', 'SP-08 BB 9000', 'RED', 1, 60000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(823, 'AKSESORIS', 'HANDSFREE', 'STEREO', 'SP-08 BB 9000', 'WHITE', 1, 60000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(824, 'AKSESORIS', 'HANDSFREE', 'STEREO', 'SP-98 BB 9000', 'WHITE', 1, 65000.00, 0.00, 'N', '', 'Y', 9, '2018-01-14', 0, ''),
	(825, 'AKSESORIS', 'HANDSFREE', 'STEREO', 'SP-98 BB 9000', 'BLACK', 1, 65000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(826, 'AKSESORIS', 'USB', 'PLUG IN', 'FAST CHARGE', 'BLACK', 1, 90000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(827, 'AKSESORIS', 'USB', 'PLUG IN', '3.1A K DATA FLAT MICRO', 'BLACK', 1, 65000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(828, 'AKSESORIS', 'USB', 'PLUG IN', '3.1A K DATA FLAT MICRO', 'WHITE', 1, 65000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(829, 'AKSESORIS', 'USB', 'PLUG IN', 'FAST CHARGE', 'WHITE', 1, 90000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(830, 'AKSESORIS', 'HANDSFREE', 'JETE', 'LIANIE', '-', 1, 30000.00, 0.00, 'N', '', 'Y', 9, '2018-01-14', 0, ''),
	(831, 'AKSESORIS', 'HANDSFREE', 'JETE', 'MOMENTUM', 'PREMIUM QUALITY', 1, 55000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(832, 'AKSESORIS', 'HANDSFREE', 'HIPPO', '009', '-', 1, 85000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(833, 'AKSESORIS', 'HANDSFREE', 'HIPPO', '012', '-', 1, 65000.00, 0.00, 'N', '', 'Y', 8, '2018-01-14', 0, ''),
	(834, 'HANDPHONE', 'OPPO', 'A37F', '-', 'GOLD', 1, 2000000.00, 0.00, 'Y', '', 'Y', 8, '2018-03-07', 0, ''),
	(835, 'HANDPHONE', 'OPPO', 'A37F', '-', 'BLACK', 1, 1900000.00, 0.00, 'Y', '', 'Y', 4, '2018-01-14', 0, ''),
	(836, 'HANDPHONE', 'OPPO', 'A71', '-', 'GOLD', 1, 2100000.00, 0.00, 'Y', '', 'Y', 9, '2018-01-14', 0, ''),
	(837, 'HANDPHONE', 'OPPO', 'A71', '-', 'BLACK', 1, 2100000.00, 0.00, 'Y', '', 'Y', 8, '2018-01-14', 0, ''),
	(838, 'HANDPHONE', 'OPPO', 'F5 Y', '-', 'BLACK', 1, 3400000.00, 0.00, 'Y', '', 'Y', 7, '2018-01-14', 0, ''),
	(839, 'HANDPHONE', 'OPPO', 'F5 Y', '-', 'GOLD', 1, 3500000.00, 0.00, 'Y', '', 'Y', 4, '2018-01-16', 0, ''),
	(840, 'HANDPHONE', 'OPPO', 'F5', '-', 'GOLD', 1, 4000000.00, 0.00, 'Y', '', 'Y', 4, '2018-01-26', 0, ''),
	(841, 'HANDPHONE', 'OPPO', 'F5', '-', 'BLACK', 1, 3700000.00, 0.00, 'Y', '', 'Y', 4, '2018-01-16', 0, ''),
	(842, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'XIAOMI REDMI 5A', 'SLIM VISION', 1, 45000.00, 0.00, 'N', '', 'Y', 4, '2018-02-28', 0, ''),
	(843, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'XIAOMI REDMI 5X/A1', 'SLIM VISION', 1, 45000.00, 0.00, 'N', '', 'Y', 6, '2018-01-16', 0, ''),
	(844, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'XIAOMI REDMI NOTE 5A', 'SLIM VISION', 1, 45000.00, 0.00, 'N', '', 'Y', 4, '2018-01-16', 0, ''),
	(845, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'XIAOMI REDMI NOTE 4X', 'SLIM VISION', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(846, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'OPPO F5', 'SLIM VISION', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-22', 0, ''),
	(847, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'OPPO A37', 'SLIM VISION', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-16', 0, ''),
	(848, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'OPPO A71', 'SLIM VISION', 1, 45000.00, 0.00, 'N', '', 'Y', 6, '2018-01-16', 0, ''),
	(849, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'SAMSUNG J2 PRIME', 'SLIM VISION', 1, 45000.00, 0.00, 'N', '', 'Y', 5, '2018-01-16', 0, ''),
	(850, 'HANDPHONE', 'OPPO', 'CPH1723 F5', '-', 'black', 1, 4000000.00, 0.00, 'Y', '', 'Y', 0, '2018-01-26', 0, ''),
	(851, 'HANDPHONE', 'LENOVO', 'K53A48 K6 NOTE BP', '-', 'gold', 1, 2400000.00, 0.00, 'Y', '', 'Y', 0, '2018-01-29', 0, ''),
	(852, 'HANDPHONE', 'XIAOMI', 'REDMI 5A BP', '', 'GOLD', 1, 1350000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-10', 0, ''),
	(853, 'HANDPHONE', 'XIAOMI', 'MI A1 BP', '4/64GB', 'GOLD', 1, 2975000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-08', 0, ''),
	(854, 'HANDPHONE', 'LENOVO', 'A7700 BP', NULL, 'BLACK', 1, 1500000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-05', 0, ''),
	(855, 'HANDPHONE', 'LENOVO', 'A7700 BP', NULL, 'WHITE', 1, 1500000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-05', 0, ''),
	(856, 'HANDPHONE', 'XIAOMI', 'REDMI 5A BP', '2/16 GB', 'GREY', 1, 1350000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-13', 0, ''),
	(857, 'HANDPHONE', 'SAMSUNG', 'GALAXY J3 PRO', '', 'blue silver', 1, 2300000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(858, 'HANDPHONE', 'XIAOMI', 'MI A1 BP', '4/64GB', '', NULL, 3250000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-09', 0, ''),
	(859, 'HANDPHONE', 'XIAOMI', 'MI A1 BP', '4/64GB', 'black', 1, 3250000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-28', 0, ''),
	(860, 'HANDPHONE', 'OPPO', 'A83 ', '', 'GOLD', NULL, 3000000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-09', 0, ''),
	(861, 'HANDPHONE', 'SAMSUNG', 'A8 PLUS BP', '', 'black', 1, 8000000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-09', 0, ''),
	(862, 'HANDPHONE', 'SAMSUNG', 'J7 CORE BP', '-', 'BLACK', 1, 2400000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(863, 'HANDPHONE', 'SAMSUNG', 'J7 CORE BP', '-', 'GOLD', 1, 2400000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(864, 'HANDPHONE', 'HUAWEI', 'Y7 PRIME BP', NULL, 'GOLD', NULL, 2600000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-10', 0, ''),
	(865, 'HANDPHONE', 'HUAWEI', 'Y7 PRIME', '-', 'GREY', NULL, 2600000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-10', 0, ''),
	(866, 'HANDPHONE', 'HUAWEI', 'Y7 PRIME BP', '', 'GREY', 1, 2600000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-10', 0, ''),
	(867, 'HANDPHONE', 'HUAWEI', 'Y5-2017 BP', '-', 'GREY', 1, 1800000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-10', 0, ''),
	(868, 'HANDPHONE', 'HUAWEI', 'Y3-2017 BP', NULL, 'GOLD', NULL, 1300000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-10', 0, ''),
	(869, 'HANDPHONE', 'HUAWEI', 'Y3-2017 BP', '', 'GREY', NULL, 1300000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-10', 0, ''),
	(870, 'HANDPHONE', 'OPPO', 'A37F BP', '-', 'GOLD', NULL, 1800000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-10', 0, ''),
	(871, 'HANDPHONE', 'OPPO', 'CPH1801 A71 BP', '2GB', 'GOLD', 1, 2000000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-13', 0, ''),
	(872, 'HANDPHONE', 'OPPO', 'CPH1801 A71 BP', '', 'black', NULL, 2400000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-10', 0, ''),
	(873, 'HANDPHONE', 'OPPO', 'CPH1723 F5 BP', '-', 'black', NULL, 4000000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-10', 0, ''),
	(874, 'HANDPHONE', 'SAMSUNG', 'A730 GALAXY A8+ (2018) BP', '', 'BLACK', 1, 8100000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(875, 'HANDPHONE', 'SAMSUNG', 'PITON B310E BLUE BP', NULL, 'BLUE', 1, 320000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-12', 0, ''),
	(876, 'HANDPHONE', 'OPPO', 'A83 ', '', 'black', NULL, 3000000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-17', 0, ''),
	(877, 'HANDPHONE', 'SAMSUNG', 'SM A530 BP', 'A8 4/32', 'GOLD', 1, 6300000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(878, 'HANDPHONE', 'SAMSUNG', 'SM A530 BP', 'A8 4/32', 'BLACK', 1, 6300000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(879, 'AKSESORIS', 'CHARGER', 'SAMSUNG ORIGINAL', 'MINI CAR CHARGER TYPE-C', 'BLACK', 1, 350000.00, 0.00, 'N', '', 'Y', 0, '2018-02-19', 0, ''),
	(880, 'HANDPHONE', 'SAMSUNG', 'Galaxy J1 SM-J120 BP', '', 'WHITE', NULL, 1355000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-19', 0, ''),
	(881, 'HANDPHONE', 'SAMSUNG', 'b310e bp', NULL, 'white', 1, 320000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-19', 0, ''),
	(882, 'HANDPHONE', 'MOTOROLA', 'moto c xt 1775', NULL, 'BLACK', NULL, 1100000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(883, 'HANDPHONE', 'MOTOROLA', 'moto c xt 1775', '', 'white', NULL, 1100000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(884, 'HANDPHONE', 'SAMSUNG', 'A520 BP', '', 'BLACK', 1, 4420000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(885, 'HANDPHONE', 'MOTOROLA', 'MOTO G5 XT1805 BP', '4/32', 'GREY', NULL, 3330000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(886, 'HANDPHONE', 'SAMSUNG', 'J7 CORE BP', '-', 'SILVER', NULL, 2400000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(887, 'HANDPHONE', 'HAIER', 'LEISURE L7 BP', '-', 'GOLD', 1, 1850000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(888, 'HANDPHONE', 'HAIER', 'G7 JL BP', NULL, 'BATMAN EDITION', 1, 1350000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(889, 'HANDPHONE', 'HAIER', 'G7 JL BP', '-', 'CYBORG EDITION', 1, 1350000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(890, 'HANDPHONE', 'HAIER', 'G7 JL BP', '-', 'SUPERMAN EDITION', 1, 1350000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(891, 'HANDPHONE', 'SAMSUNG', 'SM A530 BP', 'A8 4/32', 'orchid gray', NULL, 6300000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(892, 'HANDPHONE', 'SAMSUNG', 'a720 BP', NULL, 'GOLD', NULL, 5300000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-20', 0, ''),
	(893, 'HANDPHONE', 'HUAWEI', 'Y3-2017', '-', 'GOLD', 1, 1300000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-21', 0, ''),
	(894, 'HANDPHONE', 'HUAWEI', 'Y3-2017', '-', 'GREY', 1, 1300000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-21', 0, ''),
	(895, 'HANDPHONE', 'HUAWEI', 'Y5-2017', '-', 'GOLD', 1, 1600000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-13', 0, ''),
	(896, 'HANDPHONE', 'HUAWEI', 'Y5-2017', '-', 'GREY', 1, 1600000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-21', 0, ''),
	(897, 'HANDPHONE', 'OPPO', 'CPH1729 A83 BP', '-', 'GOLD', 1, 3000000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-21', 0, ''),
	(898, 'HANDPHONE', 'ASUS', 'ZEN 4 MAX PRO ZC554KL', '3/32GB', 'BLACK', 1, 2725000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-23', 0, ''),
	(899, 'HANDPHONE', 'ASUS', 'ZEN 4 MAX PRO ZC554KL', '3/32GB', 'GOLD', 1, 2725000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-23', 0, ''),
	(900, 'HANDPHONE', 'ASUS', 'ZEN LIVE ZB501KL', '2/16GB', 'ROSE GOLD', 1, 1530000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-23', 0, ''),
	(901, 'HANDPHONE', 'XIAOMI', 'REDMI NOTE 5A PRIME', '3/32GB', 'GREY', 1, 2500000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-01', 0, ''),
	(902, 'HANDPHONE', 'XIAOMI', 'REDMI NOTE 5A PRIME', '3/32GB', 'GOLD', 1, 2500000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-01', 0, ''),
	(903, 'AKSESORIS', 'CHARGER', 'TC WELLCOMM USB FAST CHARGER 3.0', '-', '-', 1, 140000.00, 0.00, 'N', '', 'Y', 0, '2018-02-24', 0, ''),
	(904, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY A8 (2018)', '', 1, 80000.00, 0.00, 'N', '', 'Y', 0, '2018-02-24', 0, ''),
	(905, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK REDMI 5A', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 0, '2018-02-24', 0, ''),
	(906, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'CRYSTAL FX MEDIAPAD T1 7\'\'', '-', 1, 50000.00, 0.00, 'N', '', 'Y', 0, '2018-02-24', 0, ''),
	(907, 'HANDPHONE', 'OPPO', 'CPH1729 A83 BP', '-', 'BLACK', NULL, 3000000.00, 0.00, 'Y', '', 'N', 0, '2018-02-24', 0, ''),
	(908, 'HANDPHONE', 'OPPO', 'CPH1727 F5 PRO BP', 'RAM 6', 'RED EDITION', NULL, 5200000.00, 0.00, 'Y', '', 'Y', 0, '2018-02-26', 0, ''),
	(909, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK GALAXY J2 PRO', '-', 1, 80000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(910, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'ANTI BREAK SAMSUNG NOTE FE', 'FULLSET', 1, 100000.00, 0.00, 'N', '', 'Y', 0, '2018-02-26', 0, ''),
	(911, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', '3D TEMPERED GLASS GALAXY NOTE 8', 'FULLSET', 1, 200000.00, 0.00, 'N', '', 'Y', 0, '2018-02-26', 0, ''),
	(912, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', '3D TEMPERED GLASS GALAXY A8 2018', '', 1, 200000.00, 0.00, 'N', '', 'Y', 0, '2018-02-26', 0, ''),
	(913, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', '3D TEMPERED GLASS GALAXY A8+ 2018', '', 1, 200000.00, 0.00, 'N', '', 'Y', 0, '2018-02-26', 0, ''),
	(914, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', '3D TEMPERED GLASS SAMSUNG NOTE FE', 'FULLSET', 1, 200000.00, 0.00, 'N', '', 'Y', 0, '2018-02-26', 0, ''),
	(915, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'TEMPERED GLASS REDMI 5A', '', 1, 0.00, 0.00, 'N', '', 'Y', 0, '2018-02-26', 0, ''),
	(916, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN LENOVO A6600+', '', 1, 1500000.00, 0.00, 'N', '', 'Y', 0, '2018-02-26', 0, ''),
	(917, 'AKSESORIS', 'SCREENGUARD', 'INDOSCREEN', 'I-SCREEN GALAXY J2 PRO', '', 1, 1500000.00, 0.00, 'N', '', 'Y', 0, '2018-02-26', 0, ''),
	(918, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXY J2 PRO', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(919, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'GALAXY J7/J7 CORE', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(920, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'XIAOMI REDMI PLUS', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(921, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'XIAOMI REDMI 5 PLUS', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(922, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'MOTOROLA C', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(923, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'MOTOROLA G5S', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(924, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'VIVO Y53', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(925, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'HUAWEI Y3-III', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(926, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'HUAWEI Y5-III', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(927, 'AKSESORIS', 'HARDCASE', 'DELKIN', 'HUAWEI NOVA 2i', 'BLACK', 1, 45000.00, 0.00, 'N', '', 'Y', 0, '2018-02-27', 0, ''),
	(928, 'HANDPHONE', 'HUAWEI', 'NOVA 2i', '-', 'BLACK', 1, 4000000.00, 0.00, 'Y', '', 'N', 0, '2018-02-28', 0, ''),
	(929, 'HANDPHONE', 'HUAWEI', 'NOVA 2i', '-', 'GOLD', 1, 4000000.00, 0.00, 'Y', '', 'N', 0, '2018-02-28', 0, ''),
	(930, 'AKSESORIS', 'POWERBANK', 'ASUS', 'ZENPOWER DUO 10050MAH', 'BLUE', 1, 300000.00, 0.00, 'N', '', 'Y', 0, '2018-03-03', 0, ''),
	(931, 'AKSESORIS', 'POWERBANK', 'ASUS', 'ZENPOWER DUO 10050MAH', 'GOLD', 1, 300000.00, 0.00, 'N', '', 'Y', 0, '2018-03-03', 0, ''),
	(932, 'AKSESORIS', 'POWERBANK', 'ASUS', 'ZENPOWER DUO 10050MAH', 'PINK', 1, 300000.00, 0.00, 'N', '', 'Y', 0, '2018-03-03', 0, ''),
	(933, 'HANDPHONE', 'OPPO', 'CPH1725 F5 YOUTH BP', '-', 'BLACK', 1, 3600000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-03', 0, ''),
	(934, 'HANDPHONE', 'SAMSUNG', 'A520 BP', '', 'GOLD', NULL, 4400000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-05', 0, ''),
	(935, 'AKSESORIS', 'CABLE', 'REMAX', 'MICRO USB', 'BLACK', 1, 20000.00, 0.00, 'N', '', 'Y', 0, '2018-03-06', 0, ''),
	(936, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'CANDY RM301', 'BLACK', 1, 65000.00, 0.00, 'N', '', 'Y', 0, '2018-03-06', 0, ''),
	(937, 'AKSESORIS', 'HANDSFREE', 'REMAX', 'CANDY RM301', 'WHITE', 1, 65000.00, 0.00, 'N', '', 'Y', 0, '2018-03-06', 0, ''),
	(938, 'AKSESORIS', 'CABLE', 'REMAX', 'OTG TO TYPE-C', 'SILVER', 1, 35000.00, 0.00, 'N', '', 'Y', 0, '2018-03-06', 0, ''),
	(939, 'AKSESORIS', 'CHARGER', 'REMAX', '2,1A CAR CHG JIAN', 'WHITE', 1, 65000.00, 0.00, 'N', '', 'Y', 0, '2018-03-06', 0, ''),
	(940, 'AKSESORIS', 'CABLE', 'REMAX', 'OTG MICRO', 'BLACK', 1, 25000.00, 0.00, 'N', '', 'Y', 0, '2018-03-06', 0, ''),
	(941, 'AKSESORIS', 'CABLE', 'REMAX', 'OTG MICRO', 'WHITE', 1, 25000.00, 0.00, 'N', '', 'Y', 0, '2018-03-06', 0, ''),
	(942, 'AKSESORIS', 'SMARTWATCH', 'OASE', 'HEY 3S', 'BLACK', 1, 2000000.00, 0.00, 'N', '', 'Y', 0, '2018-03-06', 0, ''),
	(943, 'AKSESORIS', 'SMARTWATCH', 'OASE', 'SMARTBAND NOW 2', 'BLACK', 1, 799000.00, 0.00, 'N', '', 'Y', 0, '2018-03-06', 0, ''),
	(944, 'HANDPHONE', 'APPLE', 'IPHONE 6 BP', '32GB', 'GOLD', 1, 4800000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-06', 0, ''),
	(945, 'DEMO LIVE', 'SAMSUNG', 'j250 j2 pro', NULL, 'black', NULL, 892530.00, 0.00, 'Y', '', 'Y', 0, '2018-03-07', 0, ''),
	(946, 'HANDPHONE', 'SAMSUNG', 'j250 j2 pro', '', 'black', 1, 1900000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-08', 0, ''),
	(947, 'HANDPHONE', 'SAMSUNG', 'j250 j2 pro', '', 'GOLD', 1, 1900000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-08', 0, ''),
	(948, 'HANDPHONE', 'SAMSUNG', 'SM T285 BP', '', 'black', 1, 1970000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-13', 0, ''),
	(949, 'HANDPHONE', 'SAMSUNG', NULL, NULL, 'silver', NULL, 3735000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-08', 0, ''),
	(950, 'HANDPHONE', 'SAMSUNG', 'G610 J7 PRIME', '-', 'BLACK', 1, 2990000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-10', 0, ''),
	(951, 'HANDPHONE', 'SAMSUNG', 'C710 GALAXY J7 PLUS', '', 'GOLD', 1, 4570000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-10', 0, ''),
	(952, 'HANDPHONE', 'SAMSUNG', 'A730 GALAXY A8+ (2018)', NULL, 'BLACK', 1, 7500000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-10', 0, ''),
	(953, 'HANDPHONE', 'SAMSUNG', 'J730 GALAXY J7 PRO', NULL, 'GOLD', 1, 3680000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-10', 0, ''),
	(954, 'HANDPHONE', 'SAMSUNG', 'J730 GALAXY J7 PRO', '', 'BLACK', 1, 3680000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-10', 0, ''),
	(955, 'HANDPHONE', 'SAMSUNG', 'J730 GALAXY J7 PRO', '', 'SILVER', 1, 3680000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-10', 0, ''),
	(956, 'HANDPHONE', 'OPPO', 'CPH 1801 A71', '3GB', 'BLACK', NULL, 2400000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-12', 0, ''),
	(957, 'HANDPHONE', 'SAMSUNG', 'SM T285 BP', '', 'white', NULL, 1970000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-13', 0, ''),
	(958, 'HANDPHONE', 'XIAOMI', 'REDMI 5 PLUS BP', '3/32GB', 'BLACK', 1, 2950000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(959, 'HANDPHONE', 'XIAOMI', 'REDMI NOTE 5A PRIME BP', '3/32GB', 'GREY', 1, 0.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(960, 'HANDPHONE', 'XIAOMI', 'REDMI 5 PLUS BP', '3/32GB', 'GOLD', 1, 2900000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(961, 'HANDPHONE', 'SAMSUNG', 'GALAXY J3 PRO', '-', 'BLACK', 1, 0.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(962, 'HANDPHONE', 'SAMSUNG', 'A530 GALAXY A8 (2018)', '4/32GB', 'ORCHID GREY', 1, 0.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(963, 'HANDPHONE', 'SAMSUNG', 'A530 GALAXY A8 (2018)', '4/32GB', 'BLACK', 1, 0.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(964, 'HANDPHONE', 'SAMSUNG', 'A730 GALAXY A8+ (2018)', '', 'GOLD', 1, 0.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(965, 'HANDPHONE', 'OPPO', 'CPH1725 F5 YOUTH', '-', 'BLACK', 1, 3600000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(966, 'HANDPHONE', 'OPPO', 'CPH 1801 A71', '3GB', 'GOLD', 1, 2400000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-14', 0, ''),
	(967, 'HANDPHONE', 'OPPO', 'CPH1723 F5', '4GB', 'RED EDITION', 1, 4200000.00, 0.00, 'Y', '', 'Y', 0, '2018-03-16', 0, ''),
	(968, 'HANDPHONE', 'ASUS', 'uji coba asus', '', 'Asus uji coba', 1, 1500000.00, 1400000.00, 'Y', '', 'Y', 5, '2018-04-06', 0, ''),
	(969, 'HANDPHONE', 'HUAWEI', 'Y5-2017 BP', '-', 'black', 1, 2700000.00, 2650000.00, 'N', '23434324', 'Y', 9, '2018-05-16', 0, 'image/uploads/item/969/201851526467803/item-969.jpg'),
	(970, 'HANDPHONE', 'ASUS', 'ZEN 4 SELFIE ZC553KL BP', '4/64GB', '-', 1, 2500000.00, 2500000.00, 'Y', '', 'Y', 10, '2018-05-27', 0, 'image/uploads/item/970/201851527404363/item-970.png');
/*!40000 ALTER TABLE `d_item` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_item_bundling: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_item_bundling` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_item_bundling` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_item_plan: ~4 rows (approximately)
/*!40000 ALTER TABLE `d_item_plan` DISABLE KEYS */;
REPLACE INTO `d_item_plan` (`ip_id`, `ip_comp`, `ip_item`, `ip_qtyreq`, `ip_date_due`, `ip_qtyappr`, `ip_date_appr`, `ip_confirm`, `ip_status`, `ip_insert`) VALUES
	(1, 'RM00000001', 802, 2, '0000-00-00', 2, '2018-05-27', 1, 'Approved', '2018-05-27 14:00:39'),
	(2, 'RM00000001', 438, 10, '0000-00-00', 10, '2018-05-27', NULL, 'OnProses', '2018-05-27 18:09:22'),
	(3, 'RM00000001', 438, 2, '0000-00-00', 2, '2018-05-27', NULL, 'OnProses', '2018-05-27 18:13:23'),
	(4, 'RM00000001', 437, 2, '0000-00-00', 2, '2018-05-27', 2, 'Approved', '2018-05-27 18:13:57');
/*!40000 ALTER TABLE `d_item_plan` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_item_supplier: ~390 rows (approximately)
/*!40000 ALTER TABLE `d_item_supplier` DISABLE KEYS */;
REPLACE INTO `d_item_supplier` (`id`, `is_supplier`, `is_item`, `is_last_price`, `is_insert`, `is_update`) VALUES
	(12, 1117, 796, 1330000.00, '2018-01-09 23:44:22', '2018-01-09 23:44:22'),
	(13, 1117, 797, 1330000.00, '2018-01-09 23:48:27', '2018-01-09 23:48:27'),
	(14, 1117, 468, 3230000.00, '2018-01-10 00:00:37', '2018-01-10 00:00:37'),
	(15, 1117, 766, 3230000.00, '2018-01-10 00:01:21', '2018-01-10 00:01:21'),
	(23, 1117, 801, 416000.00, '2018-01-10 01:49:28', '2018-01-10 01:49:28'),
	(26, 1117, 452, 360000.00, '2018-01-10 01:53:29', '2018-01-10 01:53:29'),
	(27, 1117, 757, 416000.00, '2018-01-10 01:53:55', '2018-01-10 01:53:55'),
	(28, 1117, 802, 3291000.00, '2018-01-10 02:38:00', '2018-01-10 02:38:00'),
	(29, 1117, 437, 2227000.00, '2018-01-10 02:40:21', '2018-01-10 02:40:21'),
	(30, 1117, 803, 1152000.00, '2018-01-10 02:48:14', '2018-01-10 02:48:14'),
	(31, 1117, 804, 8075000.00, '2018-01-10 03:08:24', '2018-01-10 03:08:24'),
	(45, 1117, 809, 285000.00, '2018-01-10 03:53:40', '2018-01-10 03:53:40'),
	(46, 1117, 810, 285000.00, '2018-01-10 04:05:53', '2018-01-10 04:05:53'),
	(48, 1117, 463, 4750000.00, '2018-01-10 04:07:34', '2018-01-10 04:07:34'),
	(50, 1117, 811, 3150000.00, '2018-01-10 04:17:35', '2018-01-10 04:17:35'),
	(54, 1114, 284, 0.00, '2018-01-10 06:28:06', '2018-01-10 06:28:06'),
	(55, 1114, 285, 28000.00, '2018-01-10 06:29:16', '2018-01-10 06:29:16'),
	(56, 1114, 287, 28000.00, '2018-01-10 06:32:31', '2018-01-10 06:32:31'),
	(58, 1114, 682, 38500.00, '2018-01-10 07:01:52', '2018-01-10 07:01:52'),
	(61, 1113, 2, 123123123.00, '2018-01-10 11:17:12', '2018-01-10 11:17:12'),
	(62, 1125, 812, 1100000.00, '2018-01-10 12:03:33', '2018-01-10 12:03:33'),
	(63, 1126, 812, 120102.00, '2018-01-10 12:03:33', '2018-01-10 12:03:33'),
	(64, 1125, 813, 50000.00, '2018-01-13 15:53:05', '2018-01-13 15:53:05'),
	(65, 1125, 814, 65000.00, '2018-01-13 15:55:31', '2018-01-13 15:55:31'),
	(66, 1125, 815, 60000.00, '2018-01-13 15:57:07', '2018-01-13 15:57:07'),
	(68, 1125, 817, 125000.00, '2018-01-13 16:02:05', '2018-01-13 16:02:05'),
	(69, 1125, 816, 80000.00, '2018-01-13 16:06:46', '2018-01-13 16:06:46'),
	(70, 1132, 818, 11500.00, '2018-01-13 16:11:54', '2018-01-13 16:11:54'),
	(71, 1115, 819, 43500.00, '2018-01-14 12:03:04', '2018-01-14 12:03:04'),
	(72, 1115, 820, 43500.00, '2018-01-14 12:06:35', '2018-01-14 12:06:35'),
	(73, 1115, 821, 43500.00, '2018-01-14 12:07:45', '2018-01-14 12:07:45'),
	(74, 1115, 822, 43500.00, '2018-01-14 12:08:27', '2018-01-14 12:08:27'),
	(75, 1115, 823, 43500.00, '2018-01-14 12:09:48', '2018-01-14 12:09:48'),
	(76, 1115, 824, 47500.00, '2018-01-14 12:11:20', '2018-01-14 12:11:20'),
	(77, 1115, 825, 47500.00, '2018-01-14 12:13:04', '2018-01-14 12:13:04'),
	(78, 1115, 826, 69500.00, '2018-01-14 12:14:45', '2018-01-14 12:14:45'),
	(79, 1115, 827, 54500.00, '2018-01-14 14:53:53', '2018-01-14 14:53:53'),
	(80, 1115, 828, 54500.00, '2018-01-14 14:54:42', '2018-01-14 14:54:42'),
	(81, 1115, 829, 69500.00, '2018-01-14 15:00:33', '2018-01-14 15:00:33'),
	(82, 1125, 830, 20000.00, '2018-01-14 15:05:18', '2018-01-14 15:05:18'),
	(83, 1125, 831, 39900.00, '2018-01-14 15:07:49', '2018-01-14 15:07:49'),
	(84, 1125, 832, 65000.00, '2018-01-14 15:12:51', '2018-01-14 15:12:51'),
	(85, 1125, 833, 45000.00, '2018-01-14 15:15:09', '2018-01-14 15:15:09'),
	(87, 1130, 835, 1740000.00, '2018-01-14 15:29:55', '2018-01-14 15:29:55'),
	(88, 1130, 836, 2040000.00, '2018-01-14 15:32:42', '2018-01-14 15:32:42'),
	(89, 1130, 837, 2040000.00, '2018-01-14 15:34:11', '2018-01-14 15:34:11'),
	(90, 1130, 838, 3220000.00, '2018-01-14 15:36:36', '2018-01-14 15:36:36'),
	(92, 1114, 310, 28000.00, '2018-01-15 02:48:47', '2018-01-15 02:48:47'),
	(95, 1127, 349, 26000.00, '2018-01-15 03:22:06', '2018-01-15 03:22:06'),
	(97, 1125, 59, 123750.00, '2018-01-15 03:48:40', '2018-01-15 03:48:40'),
	(98, 1123, 568, 70000.00, '2018-01-15 03:54:58', '2018-01-15 03:54:58'),
	(99, 1114, 247, 13000.00, '2018-01-15 03:56:27', '2018-01-15 03:56:27'),
	(100, 1114, 223, 13000.00, '2018-01-15 03:58:07', '2018-01-15 03:58:07'),
	(103, 1126, 631, 44623.00, '2018-01-15 04:21:12', '2018-01-15 04:21:12'),
	(104, 1130, 458, 2040000.00, '2018-01-15 04:22:37', '2018-01-15 04:22:37'),
	(105, 1130, 462, 3220000.00, '2018-01-15 04:25:35', '2018-01-15 04:25:35'),
	(108, 1114, 306, 28000.00, '2018-01-15 04:29:01', '2018-01-15 04:29:01'),
	(109, 1114, 308, 28000.00, '2018-01-15 04:31:27', '2018-01-15 04:31:27'),
	(110, 1114, 307, 28000.00, '2018-01-15 04:32:16', '2018-01-15 04:32:16'),
	(113, 1114, 678, 38500.00, '2018-01-15 04:36:15', '2018-01-15 04:36:15'),
	(114, 1126, 630, 48000.00, '2018-01-15 04:38:27', '2018-01-15 04:38:27'),
	(115, 1126, 30, 9000.00, '2018-01-15 04:39:14', '2018-01-15 04:39:14'),
	(116, 1123, 155, 47500.00, '2018-01-15 06:01:26', '2018-01-15 06:01:26'),
	(117, 1114, 275, 38500.00, '2018-01-15 06:02:15', '2018-01-15 06:02:15'),
	(119, 1127, 348, 26000.00, '2018-01-15 06:04:46', '2018-01-15 06:04:46'),
	(120, 1126, 616, 27331.00, '2018-01-15 06:07:29', '2018-01-15 06:07:29'),
	(121, 1126, 33, 24898.00, '2018-01-15 06:10:45', '2018-01-15 06:10:45'),
	(122, 1123, 604, 45000.00, '2018-01-15 06:47:59', '2018-01-15 06:47:59'),
	(123, 1125, 16, 225000.00, '2018-01-15 06:49:44', '2018-01-15 06:49:44'),
	(124, 1125, 27, 145000.00, '2018-01-15 06:50:54', '2018-01-15 06:50:54'),
	(125, 1115, 40, 39000.00, '2018-01-15 06:54:03', '2018-01-15 06:54:03'),
	(126, 1125, 506, 210000.00, '2018-01-15 06:55:20', '2018-01-15 06:55:20'),
	(127, 1114, 228, 13000.00, '2018-01-15 07:00:12', '2018-01-15 07:00:12'),
	(128, 1126, 193, 24016.00, '2018-01-15 07:01:25', '2018-01-15 07:01:25'),
	(129, 1123, 114, 75000.00, '2018-01-15 07:03:10', '2018-01-15 07:03:10'),
	(130, 1114, 229, 15000.00, '2018-01-15 07:04:44', '2018-01-15 07:04:44'),
	(131, 1127, 352, 26000.00, '2018-01-15 07:06:26', '2018-01-15 07:06:26'),
	(132, 1126, 191, 24016.00, '2018-01-15 07:07:57', '2018-01-15 07:07:57'),
	(133, 1123, 161, 85000.00, '2018-01-15 07:09:17', '2018-01-15 07:09:17'),
	(134, 1130, 839, 3400000.00, '2018-01-16 03:46:59', '2018-01-16 03:46:59'),
	(136, 1130, 841, 3560000.00, '2018-01-16 03:53:49', '2018-01-16 03:53:49'),
	(138, 1132, 843, 26000.00, '2018-01-16 08:44:34', '2018-01-16 08:44:34'),
	(139, 1132, 844, 26000.00, '2018-01-16 08:46:21', '2018-01-16 08:46:21'),
	(142, 1132, 847, 26000.00, '2018-01-16 08:49:12', '2018-01-16 08:49:12'),
	(143, 1132, 848, 26000.00, '2018-01-16 08:50:41', '2018-01-16 08:50:41'),
	(144, 1132, 849, 26000.00, '2018-01-16 08:51:59', '2018-01-16 08:51:59'),
	(145, 1127, 418, 15500.00, '2018-01-17 04:31:03', '2018-01-17 04:31:03'),
	(146, 1127, 417, 15500.00, '2018-01-17 04:35:57', '2018-01-17 04:35:57'),
	(147, 1114, 293, 28000.00, '2018-01-17 04:41:53', '2018-01-17 04:41:53'),
	(148, 1114, 700, 28000.00, '2018-01-22 07:14:40', '2018-01-22 07:14:40'),
	(150, 1126, 187, 33000.00, '2018-01-22 07:18:37', '2018-01-22 07:18:37'),
	(151, 1123, 156, 47500.00, '2018-01-22 07:19:58', '2018-01-22 07:19:58'),
	(154, 1123, 162, 85000.00, '2018-01-22 07:23:52', '2018-01-22 07:23:52'),
	(155, 1114, 302, 28000.00, '2018-01-22 07:28:11', '2018-01-22 07:28:11'),
	(156, 1114, 695, 28000.00, '2018-01-22 07:28:48', '2018-01-22 07:28:48'),
	(157, 1114, 321, 55000.00, '2018-01-22 07:30:11', '2018-01-22 07:30:11'),
	(158, 1123, 118, 85500.00, '2018-01-22 07:32:22', '2018-01-22 07:32:22'),
	(160, 1114, 644, 13000.00, '2018-01-22 07:39:10', '2018-01-22 07:39:10'),
	(161, 1114, 301, 28000.00, '2018-01-22 07:43:48', '2018-01-22 07:43:48'),
	(162, 1123, 564, 50000.00, '2018-01-22 07:48:17', '2018-01-22 07:48:17'),
	(163, 1125, 22, 125000.00, '2018-01-22 07:49:32', '2018-01-22 07:49:32'),
	(164, 1123, 581, 45000.00, '2018-01-22 07:51:24', '2018-01-22 07:51:24'),
	(165, 1114, 248, 13000.00, '2018-01-22 07:52:22', '2018-01-22 07:52:22'),
	(166, 1114, 332, 11000.00, '2018-01-22 07:53:17', '2018-01-22 07:53:17'),
	(168, 1126, 198, 78000.00, '2018-01-22 07:55:42', '2018-01-22 07:55:42'),
	(169, 1114, 322, 55000.00, '2018-01-22 07:58:54', '2018-01-22 07:58:54'),
	(170, 1126, 179, 51000.00, '2018-01-22 08:01:02', '2018-01-22 08:01:02'),
	(171, 1114, 226, 13000.00, '2018-01-22 08:03:30', '2018-01-22 08:03:30'),
	(172, 1114, 295, 28000.00, '2018-01-22 08:04:36', '2018-01-22 08:04:36'),
	(173, 1123, 98, 49500.00, '2018-01-22 08:31:49', '2018-01-22 08:31:49'),
	(174, 1114, 656, 15000.00, '2018-01-22 08:34:46', '2018-01-22 08:34:46'),
	(175, 1114, 246, 15000.00, '2018-01-22 08:35:47', '2018-01-22 08:35:47'),
	(176, 1114, 693, 28000.00, '2018-01-22 08:36:38', '2018-01-22 08:36:38'),
	(177, 1125, 17, 270000.00, '2018-01-22 08:38:40', '2018-01-22 08:38:40'),
	(178, 1114, 276, 38500.00, '2018-01-22 08:39:58', '2018-01-22 08:39:58'),
	(179, 1114, 249, 13000.00, '2018-01-22 08:48:29', '2018-01-22 08:48:29'),
	(180, 1127, 845, 26000.00, '2018-01-22 08:49:36', '2018-01-22 08:49:36'),
	(181, 1132, 45, 11000.00, '2018-01-22 08:52:06', '2018-01-22 08:52:06'),
	(182, 1114, 696, 28000.00, '2018-01-22 08:53:11', '2018-01-22 08:53:11'),
	(183, 1127, 846, 26000.00, '2018-01-22 08:54:40', '2018-01-22 08:54:40'),
	(184, 1125, 13, 150000.00, '2018-01-22 08:58:48', '2018-01-22 08:58:48'),
	(185, 1127, 350, 26000.00, '2018-01-22 09:00:10', '2018-01-22 09:00:10'),
	(186, 1125, 15, 159000.00, '2018-01-22 09:03:11', '2018-01-22 09:03:11'),
	(187, 1125, 212, 15000.00, '2018-01-22 09:07:13', '2018-01-22 09:07:13'),
	(188, 1125, 379, 3250.00, '2018-01-22 09:08:25', '2018-01-22 09:08:25'),
	(189, 1130, 67, 50000.00, '2018-01-22 09:08:56', '2018-01-22 09:08:56'),
	(190, 1114, 273, 44000.00, '2018-01-22 09:10:23', '2018-01-22 09:10:23'),
	(191, 1123, 108, 48571.00, '2018-01-22 09:12:10', '2018-01-22 09:12:10'),
	(192, 1126, 176, 45590.00, '2018-01-22 09:14:09', '2018-01-22 09:14:09'),
	(193, 1130, 66, 50000.00, '2018-01-22 09:15:50', '2018-01-22 09:15:50'),
	(195, 1114, 238, 13000.00, '2018-01-22 09:18:26', '2018-01-22 09:18:26'),
	(196, 1126, 196, 41000.00, '2018-01-22 09:19:39', '2018-01-22 09:19:39'),
	(199, 1130, 69, 50000.00, '2018-01-22 09:24:23', '2018-01-22 09:24:23'),
	(200, 1125, 14, 195000.00, '2018-01-22 09:25:48', '2018-01-22 09:25:48'),
	(201, 1114, 300, 28000.00, '2018-01-22 09:26:35', '2018-01-22 09:26:35'),
	(202, 1121, 498, 292900.00, '2018-01-22 09:28:14', '2018-01-22 09:28:14'),
	(203, 1121, 495, 163000.00, '2018-01-22 09:29:45', '2018-01-22 09:29:45'),
	(204, 1130, 68, 50000.00, '2018-01-22 09:31:00', '2018-01-22 09:31:00'),
	(205, 1126, 188, 11500.00, '2018-01-22 09:32:04', '2018-01-22 09:32:04'),
	(207, 1127, 345, 26000.00, '2018-01-22 09:37:46', '2018-01-22 09:37:46'),
	(208, 1121, 496, 104700.00, '2018-01-22 09:42:31', '2018-01-22 09:42:31'),
	(209, 1126, 29, 26661.00, '2018-01-22 09:47:06', '2018-01-22 09:47:06'),
	(210, 1115, 41, 70327.00, '2018-01-22 09:49:25', '2018-01-22 09:49:25'),
	(211, 1126, 32, 11500.00, '2018-01-23 06:25:34', '2018-01-23 06:25:34'),
	(212, 1127, 351, 26000.00, '2018-01-23 06:33:08', '2018-01-23 06:33:08'),
	(213, 1126, 28, 26661.00, '2018-01-23 06:36:08', '2018-01-23 06:36:08'),
	(214, 1125, 51, 210000.00, '2018-01-23 07:50:51', '2018-01-23 07:50:51'),
	(215, 1114, 269, 38500.00, '2018-01-23 07:58:09', '2018-01-23 07:58:09'),
	(216, 1132, 512, 11000.00, '2018-01-23 08:01:39', '2018-01-23 08:01:39'),
	(217, 1126, 167, 87300.00, '2018-01-23 08:50:00', '2018-01-23 08:50:00'),
	(220, 1125, 4, 4500.00, '2018-01-23 08:55:16', '2018-01-23 08:55:16'),
	(221, 1114, 309, 28000.00, '2018-01-23 09:02:03', '2018-01-23 09:02:03'),
	(222, 1114, 182, 48000.00, '2018-01-23 09:03:05', '2018-01-23 09:03:05'),
	(223, 1123, 111, 58500.00, '2018-01-23 09:08:08', '2018-01-23 09:08:08'),
	(224, 1125, 23, 155000.00, '2018-01-23 09:10:40', '2018-01-23 09:10:40'),
	(225, 1121, 497, 177700.00, '2018-01-23 09:15:28', '2018-01-23 09:15:28'),
	(226, 1125, 21, 116779.00, '2018-01-26 03:10:44', '2018-01-26 03:10:44'),
	(228, 1114, 233, 15000.00, '2018-01-26 03:16:00', '2018-01-26 03:16:00'),
	(229, 1127, 369, 0.00, '2018-01-26 03:24:18', '2018-01-26 03:24:18'),
	(232, 1127, 741, 19000.00, '2018-01-26 03:50:09', '2018-01-26 03:50:09'),
	(233, 1114, 714, 13000.00, '2018-01-26 04:04:29', '2018-01-26 04:04:29'),
	(234, 1123, 585, 97500.00, '2018-01-26 04:09:20', '2018-01-26 04:09:20'),
	(235, 1114, 710, 11000.00, '2018-01-26 04:15:02', '2018-01-26 04:15:02'),
	(236, 1130, 840, 3560000.00, '2018-01-26 06:29:57', '2018-01-26 06:29:57'),
	(237, 1130, 460, 3560000.00, '2018-01-26 06:33:34', '2018-01-26 06:33:34'),
	(238, 1116, 353, 17500.00, '2018-01-26 06:47:14', '2018-01-26 06:47:14'),
	(239, 1116, 467, 0.00, '2018-01-26 06:51:15', '2018-01-26 06:51:15'),
	(241, 1116, 376, 0.00, '2018-01-26 08:44:33', '2018-01-26 08:44:33'),
	(242, 1115, 42, 42810.00, '2018-01-26 08:49:08', '2018-01-26 08:49:08'),
	(243, 1130, 456, 2040000.00, '2018-01-26 09:23:07', '2018-01-26 09:23:07'),
	(244, 1130, 850, 3560000.00, '2018-01-26 09:39:26', '2018-01-26 09:39:26'),
	(245, 1116, 492, 0.00, '2018-01-27 06:24:36', '2018-01-27 06:24:36'),
	(246, 1116, 380, 0.00, '2018-01-27 06:43:20', '2018-01-27 06:43:20'),
	(247, 1117, 851, 2300000.00, '2018-01-29 06:43:02', '2018-01-29 06:43:02'),
	(250, 1112, 854, 1430000.00, '2018-02-05 07:01:22', '2018-02-05 07:01:22'),
	(251, 1112, 855, 1430000.00, '2018-02-05 07:02:56', '2018-02-05 07:02:56'),
	(252, 1117, 451, 288000.00, '2018-02-05 07:18:59', '2018-02-05 07:18:59'),
	(253, 1117, 453, 575000.00, '2018-02-05 07:19:33', '2018-02-05 07:19:33'),
	(254, 1117, 756, 575000.00, '2018-02-05 07:21:03', '2018-02-05 07:21:03'),
	(256, 1117, 794, 3230000.00, '2018-02-05 08:41:50', '2018-02-05 08:41:50'),
	(258, 1117, 858, 2900000.00, '2018-02-09 03:19:35', '2018-02-09 03:19:35'),
	(263, 1130, 860, 2680000.00, '2018-02-09 07:30:23', '2018-02-09 07:30:23'),
	(264, 1117, 861, 7695000.00, '2018-02-09 08:00:56', '2018-02-09 08:00:56'),
	(271, 1133, 864, 2395000.00, '2018-02-10 03:51:13', '2018-02-10 03:51:13'),
	(272, 1133, 865, 2395000.00, '2018-02-10 03:55:38', '2018-02-10 03:55:38'),
	(275, 1133, 868, 1195000.00, '2018-02-10 04:04:19', '2018-02-10 04:04:19'),
	(276, 1133, 869, 1195000.00, '2018-02-10 04:05:28', '2018-02-10 04:05:28'),
	(277, 1133, 866, 2395000.00, '2018-02-10 04:08:42', '2018-02-10 04:08:42'),
	(280, 1133, 867, 1449000.00, '2018-02-10 04:17:42', '2018-02-10 04:17:42'),
	(281, 1133, 867, 1449000.00, '2018-02-10 04:17:42', '2018-02-10 04:17:42'),
	(282, 1130, 870, 1600000.00, '2018-02-10 06:18:52', '2018-02-10 06:18:52'),
	(284, 1130, 872, 2040000.00, '2018-02-10 06:22:45', '2018-02-10 06:22:45'),
	(285, 1130, 873, 3560000.00, '2018-02-10 06:24:58', '2018-02-10 06:24:58'),
	(286, 1130, 461, 3560000.00, '2018-02-10 06:30:47', '2018-02-10 06:30:47'),
	(288, 1128, 875, 281060.00, '2018-02-12 07:24:59', '2018-02-12 07:24:59'),
	(291, 1130, 876, 2680000.00, '2018-02-17 02:29:16', '2018-02-17 02:29:16'),
	(296, 1117, 633, 520000.00, '2018-02-19 04:39:44', '2018-02-19 04:39:44'),
	(297, 1117, 879, 280000.00, '2018-02-19 04:45:27', '2018-02-19 04:45:27'),
	(298, 1117, 880, 1330000.00, '2018-02-19 06:44:43', '2018-02-19 06:44:43'),
	(301, 1128, 881, 281060.00, '2018-02-19 06:58:31', '2018-02-19 06:58:31'),
	(304, 1128, 464, 1503060.00, '2018-02-19 07:15:37', '2018-02-19 07:15:37'),
	(305, 1117, 464, 1515000.00, '2018-02-19 07:15:37', '2018-02-19 07:15:37'),
	(306, 1128, 466, 1503060.00, '2018-02-19 07:16:38', '2018-02-19 07:16:38'),
	(307, 1117, 466, 1515000.00, '2018-02-19 07:16:38', '2018-02-19 07:16:38'),
	(308, 1117, 791, 2280000.00, '2018-02-19 07:19:35', '2018-02-19 07:19:35'),
	(309, 1128, 791, 2255060.00, '2018-02-19 07:19:35', '2018-02-19 07:19:35'),
	(310, 1117, 792, 2280000.00, '2018-02-19 07:20:11', '2018-02-19 07:20:11'),
	(311, 1128, 792, 2255060.00, '2018-02-19 07:20:11', '2018-02-19 07:20:11'),
	(314, 1117, 805, 8075000.00, '2018-02-19 07:22:07', '2018-02-19 07:22:07'),
	(315, 1128, 805, 7519060.00, '2018-02-19 07:22:07', '2018-02-19 07:22:07'),
	(317, 1117, 882, 980000.00, '2018-02-20 02:03:13', '2018-02-20 02:03:13'),
	(318, 1117, 883, 980000.00, '2018-02-20 02:05:22', '2018-02-20 02:05:22'),
	(321, 1117, 444, 1900000.00, '2018-02-20 02:59:36', '2018-02-20 02:59:36'),
	(322, 1117, 749, 1900000.00, '2018-02-20 03:00:24', '2018-02-20 03:00:24'),
	(328, 1117, 751, 2140000.00, '2018-02-20 03:26:49', '2018-02-20 03:26:49'),
	(329, 1117, 446, 2140000.00, '2018-02-20 03:28:02', '2018-02-20 03:28:02'),
	(331, 1117, 885, 3150000.00, '2018-02-20 03:57:36', '2018-02-20 03:57:36'),
	(332, 1128, 884, 4323060.00, '2018-02-20 04:14:20', '2018-02-20 04:14:20'),
	(335, 1117, 862, 2375000.00, '2018-02-20 04:39:21', '2018-02-20 04:39:21'),
	(336, 1128, 862, 2349060.00, '2018-02-20 04:39:21', '2018-02-20 04:39:21'),
	(337, 1128, 886, 2349000.00, '2018-02-20 04:40:31', '2018-02-20 04:40:31'),
	(338, 1129, 887, 1672468.00, '2018-02-20 06:38:45', '2018-02-20 06:38:45'),
	(339, 1129, 888, 1190650.00, '2018-02-20 06:43:52', '2018-02-20 06:43:52'),
	(340, 1129, 889, 1190650.00, '2018-02-20 06:45:44', '2018-02-20 06:45:44'),
	(341, 1129, 890, 1190650.00, '2018-02-20 06:46:54', '2018-02-20 06:46:54'),
	(342, 1129, 747, 1672468.00, '2018-02-20 06:50:09', '2018-02-20 06:50:09'),
	(343, 1128, 878, 6109060.00, '2018-02-20 07:23:28', '2018-02-20 07:23:28'),
	(344, 1128, 877, 6109060.00, '2018-02-20 07:29:08', '2018-02-20 07:29:08'),
	(345, 1128, 891, 6109060.00, '2018-02-20 07:30:31', '2018-02-20 07:30:31'),
	(346, 1128, 874, 7613060.00, '2018-02-20 07:36:40', '2018-02-20 07:36:40'),
	(347, 1128, 892, 5169000.00, '2018-02-20 07:43:04', '2018-02-20 07:43:04'),
	(350, 1128, 863, 2349000.00, '2018-02-20 07:54:30', '2018-02-20 07:54:30'),
	(351, 1133, 893, 1195000.00, '2018-02-21 04:38:25', '2018-02-21 04:38:25'),
	(352, 1133, 894, 1195000.00, '2018-02-21 04:40:29', '2018-02-21 04:40:29'),
	(354, 1133, 896, 1449000.00, '2018-02-21 04:44:44', '2018-02-21 04:44:44'),
	(355, 1133, 441, 2395000.00, '2018-02-21 05:55:53', '2018-02-21 05:55:53'),
	(356, 1128, 771, 1691060.00, '2018-02-21 06:36:52', '2018-02-21 06:36:52'),
	(357, 1128, 764, 2913060.00, '2018-02-21 06:39:05', '2018-02-21 06:39:05'),
	(358, 1117, 764, 2945000.00, '2018-02-21 06:39:05', '2018-02-21 06:39:05'),
	(359, 1130, 897, 2680000.00, '2018-02-21 08:31:52', '2018-02-21 08:31:52'),
	(360, 1119, 898, 2485000.00, '2018-02-23 06:57:33', '2018-02-23 06:57:33'),
	(361, 1119, 899, 2485000.00, '2018-02-23 06:58:51', '2018-02-23 06:58:51'),
	(362, 1119, 900, 1500000.00, '2018-02-23 07:02:46', '2018-02-23 07:02:46'),
	(370, 1115, 903, 99000.00, '2018-02-24 04:29:24', '2018-02-24 04:29:24'),
	(371, 1114, 904, 38500.00, '2018-02-24 04:34:25', '2018-02-24 04:34:25'),
	(372, 1114, 905, 38500.00, '2018-02-24 04:37:01', '2018-02-24 04:37:01'),
	(374, 1114, 681, 38500.00, '2018-02-24 05:54:26', '2018-02-24 05:54:26'),
	(375, 1114, 270, 44000.00, '2018-02-24 05:56:53', '2018-02-24 05:56:53'),
	(376, 1114, 294, 28000.00, '2018-02-24 05:59:01', '2018-02-24 05:59:01'),
	(377, 1114, 292, 28000.00, '2018-02-24 06:00:56', '2018-02-24 06:00:56'),
	(380, 1114, 688, 28000.00, '2018-02-24 06:05:13', '2018-02-24 06:05:13'),
	(381, 1114, 283, 28000.00, '2018-02-24 06:05:34', '2018-02-24 06:05:34'),
	(382, 1114, 690, 28000.00, '2018-02-24 06:06:30', '2018-02-24 06:06:30'),
	(384, 1114, 230, 15000.00, '2018-02-24 06:29:53', '2018-02-24 06:29:53'),
	(386, 1114, 245, 13000.00, '2018-02-24 06:31:38', '2018-02-24 06:31:38'),
	(387, 1114, 239, 13000.00, '2018-02-24 06:32:21', '2018-02-24 06:32:21'),
	(388, 1114, 241, 13000.00, '2018-02-24 06:33:17', '2018-02-24 06:33:17'),
	(389, 1114, 232, 15000.00, '2018-02-24 06:34:27', '2018-02-24 06:34:27'),
	(390, 1114, 337, 11000.00, '2018-02-24 06:35:27', '2018-02-24 06:35:27'),
	(391, 1114, 711, 13000.00, '2018-02-24 06:36:13', '2018-02-24 06:36:13'),
	(392, 1114, 331, 11000.00, '2018-02-24 06:37:12', '2018-02-24 06:37:12'),
	(393, 1114, 906, 40000.00, '2018-02-24 06:51:47', '2018-02-24 06:51:47'),
	(394, 1114, 906, 0.00, '2018-02-24 06:51:47', '2018-02-24 06:51:47'),
	(397, 1130, 907, 2680000.00, '2018-02-24 09:16:49', '2018-02-24 09:16:49'),
	(398, 1130, 759, 3220000.00, '2018-02-24 09:18:34', '2018-02-24 09:18:34'),
	(399, 1130, 908, 4630000.00, '2018-02-26 03:31:45', '2018-02-26 03:31:45'),
	(401, 1114, 910, 38500.00, '2018-02-26 05:46:42', '2018-02-26 05:46:42'),
	(402, 1114, 268, 38500.00, '2018-02-26 05:50:38', '2018-02-26 05:50:38'),
	(403, 1114, 263, 44000.00, '2018-02-26 05:51:43', '2018-02-26 05:51:43'),
	(404, 1114, 911, 150000.00, '2018-02-26 06:08:52', '2018-02-26 06:08:52'),
	(405, 1114, 912, 150000.00, '2018-02-26 06:10:14', '2018-02-26 06:10:14'),
	(406, 1114, 913, 150000.00, '2018-02-26 06:11:37', '2018-02-26 06:11:37'),
	(407, 1114, 914, 150000.00, '2018-02-26 06:16:01', '2018-02-26 06:16:01'),
	(408, 1114, 915, 28000.00, '2018-02-26 06:18:48', '2018-02-26 06:18:48'),
	(409, 1114, 916, 11000.00, '2018-02-26 06:35:51', '2018-02-26 06:35:51'),
	(410, 1114, 917, 11000.00, '2018-02-26 06:37:51', '2018-02-26 06:37:51'),
	(411, 1114, 222, 13000.00, '2018-02-26 06:42:20', '2018-02-26 06:42:20'),
	(412, 1114, 243, 13000.00, '2018-02-26 06:45:50', '2018-02-26 06:45:50'),
	(413, 1114, 225, 13000.00, '2018-02-26 06:48:58', '2018-02-26 06:48:58'),
	(414, 1131, 770, 12350000.00, '2018-02-27 02:32:10', '2018-02-27 02:32:10'),
	(415, 1114, 909, 38500.00, '2018-02-27 04:25:49', '2018-02-27 04:25:49'),
	(416, 1127, 918, 26000.00, '2018-02-27 09:01:09', '2018-02-27 09:01:09'),
	(417, 1127, 919, 26000.00, '2018-02-27 09:03:39', '2018-02-27 09:03:39'),
	(418, 1127, 920, 26000.00, '2018-02-27 09:05:39', '2018-02-27 09:05:39'),
	(419, 1127, 921, 26000.00, '2018-02-27 09:07:53', '2018-02-27 09:07:53'),
	(420, 1127, 922, 26000.00, '2018-02-27 09:10:22', '2018-02-27 09:10:22'),
	(421, 1127, 923, 26000.00, '2018-02-27 09:12:12', '2018-02-27 09:12:12'),
	(422, 1127, 924, 26000.00, '2018-02-27 09:15:02', '2018-02-27 09:15:02'),
	(423, 1127, 925, 26000.00, '2018-02-27 09:16:15', '2018-02-27 09:16:15'),
	(424, 1127, 926, 26000.00, '2018-02-27 09:17:09', '2018-02-27 09:17:09'),
	(425, 1127, 927, 26000.00, '2018-02-27 09:18:44', '2018-02-27 09:18:44'),
	(426, 1133, 928, 3580000.00, '2018-02-28 04:17:11', '2018-02-28 04:17:11'),
	(429, 1133, 929, 3580000.00, '2018-02-28 04:17:57', '2018-02-28 04:17:57'),
	(430, 1124, 859, 2850000.00, '2018-02-28 04:21:22', '2018-02-28 04:21:22'),
	(431, 1127, 343, 26000.00, '2018-02-28 04:32:47', '2018-02-28 04:32:47'),
	(432, 1127, 842, 26000.00, '2018-02-28 04:35:20', '2018-02-28 04:35:20'),
	(433, 1117, 753, 220000.00, '2018-02-28 06:20:29', '2018-02-28 06:20:29'),
	(434, 1117, 450, 200000.00, '2018-02-28 06:22:53', '2018-02-28 06:22:53'),
	(435, 1124, 901, 2195000.00, '2018-03-01 07:28:54', '2018-03-01 07:28:54'),
	(436, 1124, 902, 2195000.00, '2018-03-01 07:29:43', '2018-03-01 07:29:43'),
	(437, 1130, 457, 1790000.00, '2018-03-02 02:20:18', '2018-03-02 02:20:18'),
	(438, 1117, 635, 280000.00, '2018-03-03 05:51:26', '2018-03-03 05:51:26'),
	(440, 1117, 931, 252000.00, '2018-03-03 05:57:36', '2018-03-03 05:57:36'),
	(442, 1117, 930, 252000.00, '2018-03-03 05:59:07', '2018-03-03 05:59:07'),
	(443, 1117, 932, 252000.00, '2018-03-03 06:31:22', '2018-03-03 06:31:22'),
	(444, 1130, 933, 3220000.00, '2018-03-03 09:41:04', '2018-03-03 09:41:04'),
	(445, 1130, 455, 1600000.00, '2018-03-03 09:44:39', '2018-03-03 09:44:39'),
	(446, 1124, 478, 2575000.00, '2018-03-05 06:23:56', '2018-03-05 06:23:56'),
	(447, 1124, 448, 2450000.00, '2018-03-05 06:26:21', '2018-03-05 06:26:21'),
	(448, 1128, 934, 4323060.00, '2018-03-05 09:50:44', '2018-03-05 09:50:44'),
	(449, 1126, 184, 28000.00, '2018-03-06 03:31:54', '2018-03-06 03:31:54'),
	(450, 1126, 623, 11943.00, '2018-03-06 03:39:17', '2018-03-06 03:39:17'),
	(451, 1126, 935, 11943.00, '2018-03-06 03:40:17', '2018-03-06 03:40:17'),
	(452, 1126, 936, 43763.00, '2018-03-06 03:43:15', '2018-03-06 03:43:15'),
	(453, 1126, 937, 43763.00, '2018-03-06 03:44:11', '2018-03-06 03:44:11'),
	(454, 1126, 938, 24671.00, '2018-03-06 03:53:23', '2018-03-06 03:53:23'),
	(455, 1126, 939, 47394.00, '2018-03-06 03:56:20', '2018-03-06 03:56:20'),
	(456, 1126, 940, 13535.00, '2018-03-06 03:59:22', '2018-03-06 03:59:22'),
	(457, 1126, 941, 13535.00, '2018-03-06 04:00:28', '2018-03-06 04:00:28'),
	(458, 1126, 170, 24671.00, '2018-03-06 04:03:54', '2018-03-06 04:03:54'),
	(460, 1134, 943, 600000.00, '2018-03-06 04:17:41', '2018-03-06 04:17:41'),
	(461, 1134, 942, 1650000.00, '2018-03-06 04:18:23', '2018-03-06 04:18:23'),
	(462, 1117, 944, 4650000.00, '2018-03-06 04:23:55', '2018-03-06 04:23:55'),
	(463, 1130, 834, 1740000.00, '2018-03-07 01:50:42', '2018-03-07 01:50:42'),
	(464, 1128, 945, 892530.00, '2018-03-07 02:32:13', '2018-03-07 02:32:13'),
	(468, 1128, 793, 2280000.00, '2018-03-07 04:34:32', '2018-03-07 04:34:32'),
	(469, 1128, 760, 4511060.00, '2018-03-07 06:46:06', '2018-03-07 06:46:06'),
	(470, 1117, 806, 4750000.00, '2018-03-07 06:46:32', '2018-03-07 06:46:32'),
	(471, 1128, 806, 4511060.00, '2018-03-07 06:46:32', '2018-03-07 06:46:32'),
	(472, 1128, 772, 1691060.00, '2018-03-07 07:06:55', '2018-03-07 07:06:55'),
	(474, 1117, 763, 2900000.00, '2018-03-07 08:54:47', '2018-03-07 08:54:47'),
	(475, 1128, 763, 2916060.00, '2018-03-07 08:54:47', '2018-03-07 08:54:47'),
	(476, 1128, 807, 234060.00, '2018-03-08 02:48:55', '2018-03-08 02:48:55'),
	(477, 1128, 808, 234060.00, '2018-03-08 02:49:33', '2018-03-08 02:49:33'),
	(478, 1128, 795, 1315000.00, '2018-03-08 02:51:25', '2018-03-08 02:51:25'),
	(480, 1117, 853, 2900000.00, '2018-03-08 03:57:41', '2018-03-08 03:57:41'),
	(481, 1124, 853, 2860000.00, '2018-03-08 03:57:41', '2018-03-08 03:57:41'),
	(482, 1117, 767, 3230000.00, '2018-03-08 04:12:47', '2018-03-08 04:12:47'),
	(483, 1117, 946, 1805000.00, '2018-03-08 04:15:15', '2018-03-08 04:15:15'),
	(484, 1117, 947, 1805000.00, '2018-03-08 04:16:33', '2018-03-08 04:16:33'),
	(485, 1117, 949, 3705000.00, '2018-03-08 04:20:49', '2018-03-08 04:20:49'),
	(486, 1117, 472, 3705000.00, '2018-03-08 04:33:53', '2018-03-08 04:33:53'),
	(490, 1117, 765, 3230000.00, '2018-03-08 04:43:58', '2018-03-08 04:43:58'),
	(492, 1117, 950, 0.00, '2018-03-10 03:26:38', '2018-03-10 03:26:38'),
	(493, 1117, 951, 0.00, '2018-03-10 03:28:13', '2018-03-10 03:28:13'),
	(494, 1117, 952, 0.00, '2018-03-10 03:30:31', '2018-03-10 03:30:31'),
	(495, 1117, 953, 0.00, '2018-03-10 03:32:18', '2018-03-10 03:32:18'),
	(496, 1117, 954, 0.00, '2018-03-10 03:33:59', '2018-03-10 03:33:59'),
	(497, 1117, 955, 0.00, '2018-03-10 03:35:24', '2018-03-10 03:35:24'),
	(498, 1131, 790, 2945000.00, '2018-03-10 03:37:40', '2018-03-10 03:37:40'),
	(499, 1117, 790, 0.00, '2018-03-10 03:37:40', '2018-03-10 03:37:40'),
	(500, 1117, 852, 1179000.00, '2018-03-10 09:16:29', '2018-03-10 09:16:29'),
	(501, 1130, 956, 2150000.00, '2018-03-12 03:32:51', '2018-03-12 03:32:51'),
	(502, 1117, 768, 3705000.00, '2018-03-12 04:33:02', '2018-03-12 04:33:02'),
	(503, 1117, 469, 3705000.00, '2018-03-12 04:37:26', '2018-03-12 04:37:26'),
	(504, 1117, 470, 3705000.00, '2018-03-12 04:40:56', '2018-03-12 04:40:56'),
	(505, 1114, 296, 28000.00, '2018-03-12 05:26:15', '2018-03-12 05:26:15'),
	(506, 1126, 192, 0.00, '2018-03-12 05:30:35', '2018-03-12 05:30:35'),
	(507, 1127, 340, 0.00, '2018-03-12 05:46:01', '2018-03-12 05:46:01'),
	(508, 1119, 473, 1525000.00, '2018-03-13 06:42:33', '2018-03-13 06:42:33'),
	(509, 1119, 773, 1525000.00, '2018-03-13 06:43:37', '2018-03-13 06:43:37'),
	(510, 1128, 948, 1879060.00, '2018-03-13 06:46:15', '2018-03-13 06:46:15'),
	(511, 1119, 948, 1910000.00, '2018-03-13 06:46:15', '2018-03-13 06:46:15'),
	(512, 1119, 957, 1910000.00, '2018-03-13 06:47:55', '2018-03-13 06:47:55'),
	(513, 1124, 856, 1350000.00, '2018-03-13 07:40:25', '2018-03-13 07:40:25'),
	(514, 1127, 727, 0.00, '2018-03-13 08:34:30', '2018-03-13 08:34:30'),
	(515, 1127, 413, 0.00, '2018-03-13 08:37:20', '2018-03-13 08:37:20'),
	(516, 1128, 465, 1503060.00, '2018-03-13 08:45:27', '2018-03-13 08:45:27'),
	(517, 1117, 465, 1520000.00, '2018-03-13 08:45:27', '2018-03-13 08:45:27'),
	(519, 1130, 459, 2150000.00, '2018-03-13 09:06:41', '2018-03-13 09:06:41'),
	(521, 1133, 440, 1449000.00, '2018-03-13 09:20:08', '2018-03-13 09:20:08'),
	(522, 1133, 440, 1449000.00, '2018-03-13 09:20:08', '2018-03-13 09:20:08'),
	(523, 1133, 895, 1449000.00, '2018-03-13 09:21:44', '2018-03-13 09:21:44'),
	(524, 1130, 871, 2040000.00, '2018-03-13 09:22:55', '2018-03-13 09:22:55'),
	(525, 1124, 958, 2750000.00, '2018-03-14 04:15:29', '2018-03-14 04:15:29'),
	(526, 1124, 959, 2145000.00, '2018-03-14 04:26:33', '2018-03-14 04:26:33'),
	(527, 1124, 960, 2750000.00, '2018-03-14 04:33:41', '2018-03-14 04:33:41'),
	(528, 1128, 857, 2255060.00, '2018-03-14 05:08:25', '2018-03-14 05:08:25'),
	(529, 1117, 857, 2280000.00, '2018-03-14 05:08:25', '2018-03-14 05:08:25'),
	(530, 1117, 961, 2280000.00, '2018-03-14 05:25:32', '2018-03-14 05:25:32'),
	(531, 1117, 962, 6175000.00, '2018-03-14 05:29:38', '2018-03-14 05:29:38'),
	(532, 1117, 963, 6175000.00, '2018-03-14 05:30:25', '2018-03-14 05:30:25'),
	(533, 1117, 964, 7695000.00, '2018-03-14 05:31:53', '2018-03-14 05:31:53'),
	(534, 1130, 965, 3220000.00, '2018-03-14 07:30:43', '2018-03-14 07:30:43'),
	(535, 1130, 966, 2150000.00, '2018-03-14 07:32:57', '2018-03-14 07:32:57'),
	(536, 1130, 967, 3740000.00, '2018-03-16 07:42:02', '2018-03-16 07:42:02'),
	(537, 1131, 968, 1000000.00, '2018-04-06 03:40:54', '2018-04-06 03:40:54'),
	(538, 1111, 968, 1200000.00, '2018-04-06 03:40:54', '2018-04-06 03:40:54'),
	(539, 1128, 969, 2500000.00, '2018-05-16 10:50:03', '2018-05-16 10:50:03'),
	(540, 1117, 969, 2300000.00, '2018-05-16 10:50:03', '2018-05-16 10:50:03'),
	(541, 1135, 970, 2500000.00, '2018-05-27 06:59:23', '2018-05-27 06:59:23');
/*!40000 ALTER TABLE `d_item_supplier` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_jabatan: ~7 rows (approximately)
/*!40000 ALTER TABLE `d_jabatan` DISABLE KEYS */;
REPLACE INTO `d_jabatan` (`id`, `kode`, `nama`, `gaji_pokok`, `tunjangan_jabatan`, `tunjangan_kehadiran`, `tunjangan_makan`, `s_insert`, `s_update`) VALUES
	(1, '00001', 'DIREKTUR', 200000, 40000, 40000, 10000, '2017-12-28 03:12:18', '2018-01-08 11:30:40'),
	(2, '00002', 'GM', 100000, 20000, 20000, 5000, '2017-12-28 03:13:07', '2018-01-08 11:30:44'),
	(3, '00003', 'MANAGER', 100000, 20000, 20000, 5000, '2017-12-28 03:13:07', '2018-01-08 11:30:44'),
	(4, '00004', 'SPV', 100000, 20000, 20000, 5000, '2017-12-28 03:13:07', '2018-01-08 11:30:44'),
	(5, '00005', 'KT', 100000, 20000, 20000, 5000, '2017-12-28 03:13:07', '2018-01-08 11:32:02'),
	(6, '00006', 'SALES', 100000, 20000, 20000, 5000, '2017-12-28 03:13:07', '2018-01-08 11:32:02'),
	(7, '00007', 'STAFF', 100000, 20000, 20000, 5000, '2017-12-28 03:13:07', '2018-01-08 11:32:02');
/*!40000 ALTER TABLE `d_jabatan` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_jurnal: ~5 rows (approximately)
/*!40000 ALTER TABLE `d_jurnal` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_jurnal` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_jurnal_dt
CREATE TABLE IF NOT EXISTS `d_jurnal_dt` (
  `jrdt_id` bigint(20) NOT NULL,
  `jrdt_dt` tinyint(4) NOT NULL,
  `jrdt_acc` varchar(9) DEFAULT NULL,
  `jrdt_value` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`jrdt_id`,`jrdt_dt`),
  CONSTRAINT `FK1_jurnal_detail_id` FOREIGN KEY (`jrdt_id`) REFERENCES `d_jurnal` (`jr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_jurnal_dt: ~11 rows (approximately)
/*!40000 ALTER TABLE `d_jurnal_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_jurnal_dt` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_katalog
CREATE TABLE IF NOT EXISTS `d_katalog` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_item` int(11) DEFAULT NULL,
  `d_groupid` int(11) DEFAULT NULL,
  `d_value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_katalog: ~340 rows (approximately)
/*!40000 ALTER TABLE `d_katalog` DISABLE KEYS */;
REPLACE INTO `d_katalog` (`d_id`, `d_item`, `d_groupid`, `d_value`) VALUES
	(1, 280, 1, '2799000'),
	(2, 280, 2, '2400000'),
	(3, 280, 3, '2017'),
	(4, 280, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2, HSDPA'),
	(5, 280, 5, 'IPS LCD capacitive touchscreen, 16M colors'),
	(6, 280, 6, '5.5 inches, 1080 x 1920 pixels (~401 ppi pixel density), Multitouch, Oleophobic coating, ASUS ZenUI 3.0'),
	(7, 280, 7, '151.4 x 76.2 x 8.3 mm / 175 gram'),
	(8, 280, 8, 'Vibration; MP3, WAV ringtones'),
	(9, 280, 9, '3.5mm jack'),
	(10, 280, 10, 'Ya'),
	(11, 280, 11, '32 GB, 3 GB RAM'),
	(12, 280, 12, 'microSD, up to 256 GB (uses SIM 2 slot)'),
	(13, 280, 13, 'HSPA 42.2/5.76 Mbps'),
	(14, 280, 14, 'Ya'),
	(15, 280, 15, 'Ya'),
	(16, 280, 16, 'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, hotspot'),
	(17, 280, 17, 'v4.1, A2DP, LE'),
	(18, 280, 18, 'microUSB v2.0, USB On-The-Go'),
	(19, 280, 19, 'LTE Cat4 150/50 Mbps'),
	(20, 280, 20, '16 MP, f/2.0, phase detection & laser autofocus, dual-LED (dual tone) flash, 1/3" sensor size, geo-tagging, touch focus, face detection, panorama, HDR'),
	(21, 280, 21, '8 MP, f/2.2'),
	(22, 280, 22, '1080p@30fps'),
	(23, 280, 23, 'Non-removable Li-Ion 4100 mAh'),
	(24, 280, 24, 'Android OS, v6.0.1 (Marshmallow)'),
	(25, 280, 25, 'Qualcomm MSM8937 Snapdragon 430, Octa-core 1.4 GHz Cortex-A53, GPU Adreno 505'),
	(26, 280, 26, 'HTML5'),
	(27, 280, 27, 'A-GPS, GLONASS, BDS'),
	(28, 280, 28, 'SMS (threaded view), MMS, Email, IM, Push Email'),
	(29, 280, 29, 'FM radio, Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass, Fast battery charging, Power Bank function'),
	(30, 280, 30, 'Dual SIM GSM - GSM'),
	(31, 280, 31, 'MP4/H.264 player'),
	(32, 280, 31, 'MP3/WAV/eAAC+ player'),
	(33, 280, 32, 'Ya'),
	(34, 281, 1, '2499000'),
	(35, 281, 2, '-'),
	(36, 281, 3, '206'),
	(37, 281, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2, HSDPA 850 / 900 / 1900 / 2100, LTE'),
	(38, 281, 5, 'IPS LCD capacitive touchscreen, 16M colors'),
	(39, 281, 6, '5.5 inches, 720 x 1280 pixels (~294 ppi pixel density), Multitouch, 2.5D Curved Edge Glass'),
	(40, 281, 7, '153 X 76.8 X 7.85 mm / -'),
	(41, 281, 8, 'Vibration; MP3, WAV ringtones'),
	(42, 281, 9, '3.5mm jack'),
	(43, 281, 10, 'Ya'),
	(44, 281, 11, '16 GB, 3 GB RAM'),
	(45, 281, 12, 'microSD, up to 32 GB'),
	(46, 281, 13, 'HSPA 21.1/5.76 Mbps'),
	(47, 281, 14, 'Ya'),
	(48, 281, 15, 'Ya'),
	(49, 281, 16, 'Wi-Fi 802.11 b/g/n, hotspot'),
	(50, 281, 17, '\nv4.0, A2DP'),
	(51, 281, 18, '\nmicroUSB v2.0'),
	(52, 281, 19, 'LTE Cat4 150/50 Mbps'),
	(53, 281, 20, '8 MP, autofocus, LED flash, Geo-tagging, touch focus, face detection, panorama'),
	(54, 281, 21, '5 MP'),
	(55, 281, 22, '720p@30fps'),
	(56, 281, 23, 'Li-Ion 2500 mAh'),
	(57, 281, 24, 'Android OS, v6.0.1 (Marshmallow)'),
	(58, 281, 25, 'Mediatek MT6735P Quad-core 1.0 GHz Cortex-A53, GPU Mali-T720MP2'),
	(59, 281, 26, 'HTML'),
	(60, 281, 27, 'A-GPS'),
	(61, 281, 28, 'SMS (threaded view), MMS, Email, IM, Push Email'),
	(62, 281, 29, 'FM radio, Fast battery charging, Active noise cancellation with dedicated mic'),
	(63, 281, 30, 'Dual SIM GSM - GSM'),
	(64, 281, 31, 'MP4/H.264 player'),
	(65, 281, 32, '\nMP3/WAV/eAAC+ player'),
	(66, 281, 33, 'Ya'),
	(67, 282, 1, '2500000'),
	(68, 282, 2, '-'),
	(69, 282, 3, '2016'),
	(70, 282, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2, HSDPA 1800 / 1900 / 2100, LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 6(900), 7(2600), 8(900), 12(700), 17(700), 18(800), 19(800), 20(800), 2'),
	(71, 282, 5, 'IPS-NEO LCD capacitive touchscreen, 16M colors'),
	(72, 282, 6, '5.2 inches, 1080 x 1920 pixels (~424 ppi pixel density), Multitouch, Emotion UI 4.1'),
	(73, 282, 7, '145 x 70.9 x 7 mm / 144 gram'),
	(74, 282, 8, '\nVibration; MP3, WAV ringtones'),
	(75, 282, 9, '3.5mm jack'),
	(76, 282, 10, 'Ya'),
	(77, 282, 11, '32 GB, 3 GB RAM'),
	(78, 282, 12, 'microSD, up to 256 GB (uses SIM 2 slot)'),
	(79, 282, 13, 'HSPA 42.2/5.76 Mbps'),
	(80, 282, 14, 'Ya'),
	(81, 282, 15, 'Ya'),
	(82, 282, 16, 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, WiFi Direct, hotspot'),
	(83, 282, 17, 'v4.2, A2DP, LE'),
	(84, 282, 18, 'Type-C 1.0 reversible connector'),
	(85, 282, 19, 'LTE Cat6 300/50 Mbps'),
	(86, 282, 20, '\nDual 16 MP, f/2.2, 27 mm, Leica optics, phase detection autofocus, dual-LED (dual tone) flash, 1.25 Âµm pixel size, geo-tagging, touch focus, face/smile detection, panorama, HDR'),
	(87, 282, 21, '8 MP, f/2.4, 1080p'),
	(88, 282, 22, '1080p@60fps, 1080p@30fps, 720p@120fps'),
	(89, 282, 23, '\nNon-removable Li-Ion 3000 mAh'),
	(90, 282, 24, 'Android OS, v6.0.1 (Marshmallow)'),
	(91, 282, 25, 'HiSilicon Kirin 955, Octa-core (4x2.5 GHz Cortex-A72 & 4x1.8 GHz Cortex-A53), GPU Mali-T880 MP4'),
	(92, 282, 26, 'HTML5'),
	(93, 282, 27, '\nA-GPS, GLONASS/ BDS'),
	(94, 282, 28, 'SMS (threaded view), MMS, Email, IM, Push Email'),
	(95, 282, 29, 'Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass, Fast battery charging: 44% in 30 min'),
	(96, 282, 30, 'Dual SIM GSM - GSM'),
	(97, 282, 31, 'XviD/MP4/H.265 player'),
	(98, 282, 32, '\nMP3/eAAC+/WAV/Flac player'),
	(99, 282, 33, '-'),
	(100, 283, 1, '4500000'),
	(101, 283, 2, '-'),
	(102, 283, 3, '2016'),
	(103, 283, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2, HSDPA 850 / 900 / 1900 / 2100, LTE'),
	(104, 283, 5, 'IPS LCD capacitive touchscreen, 16M colors'),
	(105, 283, 6, '5.5 inches, 720 x 1280 pixels (~294 ppi pixel density), Multitouch'),
	(106, 283, 7, '145.3x72.3x8.7 mm'),
	(107, 283, 8, 'Vibration; MP3, WAV ringtones'),
	(108, 283, 9, '3.5mm jack'),
	(109, 283, 10, 'Ya'),
	(110, 283, 11, '16 GB, 2 GB RAM'),
	(111, 283, 12, 'microSD, up to 64 GB'),
	(112, 283, 13, 'HSPA 21.1/5.76 Mbps'),
	(113, 283, 14, 'Ya'),
	(114, 283, 15, 'Ya'),
	(115, 283, 16, '\nWi-Fi 802.11 b/g/n, hotspot'),
	(116, 283, 17, 'v4.0, A2DP, EDR'),
	(117, 283, 18, 'microUSB v2.0'),
	(118, 283, 19, 'LTE Cat4 150/50 Mbps'),
	(119, 283, 20, '13 MP, f/2.2, autofocus, LED flash, Geo-tagging, touch focus, face detection, HDR, panorama'),
	(120, 283, 21, '8 MP, f/2.2'),
	(121, 283, 22, '1080p@30fps'),
	(122, 283, 23, '\nLi-Ion 2500 mAh'),
	(123, 283, 24, 'Android OS, v6.0 (Marshmallow)'),
	(124, 283, 25, 'MEDIATEK MT6735CP 1.0 GHz Quad-Core ARM Mali-450'),
	(125, 283, 26, '\nHTML'),
	(126, 283, 27, 'A-GPS'),
	(127, 283, 28, 'SMS (threaded view), MMS, Email, IM, Push Email'),
	(128, 283, 29, '-'),
	(129, 283, 30, 'Dual SIM GSM - GSM'),
	(130, 283, 31, 'MP4/H.264 player'),
	(131, 283, 32, 'MP3/WAV/eAAC+ player'),
	(132, 283, 33, '-'),
	(133, 284, 1, '3999000'),
	(134, 284, 2, '-'),
	(135, 284, 3, '2015'),
	(136, 284, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2, HSDPA 850 / 900 / 1900 / 2100, LTE 900 / 1800 / 2100 / 2600 TD-LTE 2300 / 2600'),
	(137, 284, 5, '\nAMOLED capacitive touchscreen, 16M colors'),
	(138, 284, 6, '1080 x 1920 pixels, 5.0 inches (~445 ppi pixel density)'),
	(139, 284, 7, '143 x 71 x 6.3 mm / 147 g'),
	(140, 284, 8, '\nVibration; MP3, WAV ringtones'),
	(141, 284, 9, '3.5mm jack'),
	(142, 284, 10, 'Ya'),
	(143, 284, 11, '16 GB, 2 GB RAM'),
	(144, 284, 12, 'microSD, up to 128 GB'),
	(145, 284, 13, '\nHSDPA, HUSPA, LTE, Cat4, 50 Mbps UL, 150 Mbps DL'),
	(146, 284, 14, 'Ya'),
	(147, 284, 15, 'Ya'),
	(148, 284, 16, 'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, hotspot'),
	(149, 284, 17, 'v4.0'),
	(150, 284, 18, 'microUSB v2.0'),
	(151, 284, 19, '-'),
	(152, 284, 20, '13 MP, 4128 x 3096 pixels, Schneider-Kreuznach optics, phase detection autofocus, LED flash, Geo-tagging, touch focus, face detection, panorama, HDR'),
	(153, 284, 21, '8 MP'),
	(154, 284, 22, '1080p@30fps'),
	(155, 284, 23, 'Non-removable Li-Po 2320 mAh'),
	(156, 284, 24, 'Android OS, v5.1 (Lollipop)'),
	(157, 284, 25, 'Qualcomm MSM8939 Snapdragon 615, Quad-core 1.5 GHz Cortex-A53 & quad-core 1.0 GHz Cortex-A53, GPU Adreno 405'),
	(158, 284, 26, 'HTML5'),
	(159, 284, 27, 'A-GPS, GLONASS'),
	(160, 284, 28, '\nSMS (threaded view), MMS, Email, IM, Push Email'),
	(161, 284, 29, 'Corning Gorilla Glass 3 - Color OS 2.1 - Fast battery charging: 75% in 30 min - Active noise cancellation with dedicated mic - Photo/video editor - Document viewer'),
	(162, 284, 30, 'Dual SIM GSM - GSM'),
	(163, 284, 31, 'MP4/H.264 player'),
	(164, 284, 32, 'MP3/WAV/eAAC+/Flac player'),
	(165, 284, 33, 'Ya'),
	(166, 285, 1, ''),
	(167, 285, 2, '-'),
	(168, 285, 3, ''),
	(169, 285, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2'),
	(170, 285, 5, 'IPS LCD Capacitive touchscreen'),
	(171, 285, 6, '5.5 inches'),
	(173, 285, 7, '153 X 76.8 X 7.85 mm /-'),
	(174, 285, 8, 'Vibration; MP3, WAV ringtones'),
	(175, 285, 9, '3.5 jack'),
	(176, 285, 10, 'Ya'),
	(177, 285, 11, '8 GB'),
	(178, 285, 12, 'microSD'),
	(179, 285, 13, 'HSPA 21.15/5.76 Mbps'),
	(180, 285, 14, 'Ya'),
	(181, 285, 15, 'Ya'),
	(182, 285, 16, 'Wi-Fi 802.11 b/g/n'),
	(183, 285, 17, 'v4.0, A2DP'),
	(184, 285, 18, 'microUSB v2.0'),
	(185, 285, 19, 'LTE Cat4 150/50 Mbps'),
	(186, 285, 20, '13 MP'),
	(187, 285, 21, '5 MP'),
	(188, 285, 22, '720@30fps'),
	(189, 285, 23, 'Li-Po 2750 mAh'),
	(190, 285, 24, 'Android OS'),
	(191, 285, 25, 'Mediatek MT6735P Quad-core 1.2 Ghz Cortex-A53'),
	(192, 285, 26, 'HTML'),
	(193, 285, 27, 'A-GPS'),
	(194, 285, 28, 'SMS(threaded view)'),
	(195, 285, 29, 'FM Radio'),
	(196, 285, 30, 'Dual SIM GSM - GSM'),
	(197, 285, 31, 'MP4/H.264 player'),
	(198, 285, 32, 'MP3/WAV/eAAC + player'),
	(199, 285, 33, 'Ya'),
	(200, 286, 1, ''),
	(201, 286, 2, ''),
	(202, 286, 3, ''),
	(203, 286, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2'),
	(204, 286, 5, 'IPS LCD Capacitive touchscreen'),
	(205, 286, 6, '5.5 inches'),
	(206, 286, 7, '153 X 76.8 X 7.85 mm /-'),
	(207, 286, 8, 'Vibration; MP3, WAV ringtones'),
	(208, 286, 9, '3.5 jack'),
	(209, 286, 10, 'Ya'),
	(210, 286, 11, '8 GB'),
	(211, 286, 12, 'microSD'),
	(212, 286, 13, 'HSPA 21.15/5.76 Mbps'),
	(213, 286, 14, 'Ya'),
	(214, 286, 15, 'Ya'),
	(215, 286, 16, 'Wi-Fi 802.11 b/g/n'),
	(216, 286, 17, 'v4.0, A2DP'),
	(217, 286, 18, 'microUSB v2.0'),
	(218, 286, 19, 'LTE Cat4 150/50 Mbps'),
	(219, 286, 20, '13 MP'),
	(220, 286, 21, '5 MP'),
	(221, 286, 22, '720@30fps'),
	(222, 286, 23, 'Li-Po 2750 mAh'),
	(223, 286, 24, 'Android OS'),
	(224, 286, 25, 'Mediatek MT6735P Quad-core 1.2 Ghz Cortex-A53'),
	(225, 286, 26, 'HTML'),
	(226, 286, 27, 'A-GPS'),
	(227, 286, 28, 'SMS(threaded view)'),
	(228, 286, 29, 'FM Radio'),
	(229, 286, 30, 'Dual SIM GSM - GSM'),
	(230, 286, 31, 'MP4/H.264 player'),
	(231, 286, 32, 'MP3/WAV/eAAC + player'),
	(232, 286, 33, 'Ya'),
	(233, 287, 1, ''),
	(234, 287, 2, ''),
	(235, 287, 3, ''),
	(236, 287, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2'),
	(237, 287, 5, 'IPS LCD Capacitive touchscreen'),
	(238, 287, 6, '5.5 inches'),
	(239, 287, 7, '153 X 76.8 X 7.85 mm /-'),
	(240, 287, 8, 'Vibration; MP3, WAV ringtones'),
	(241, 287, 9, '3.5 jack'),
	(242, 287, 10, 'Ya'),
	(243, 287, 11, '8 GB'),
	(244, 287, 12, 'microSD'),
	(245, 287, 13, 'HSPA 21.15/5.76 Mbps'),
	(246, 287, 14, 'Ya'),
	(247, 287, 15, 'Ya'),
	(248, 287, 16, 'Wi-Fi 802.11 b/g/n'),
	(249, 287, 17, 'v4.0, A2DP'),
	(250, 287, 18, 'microUSB v2.0'),
	(251, 287, 19, 'LTE Cat4 150/50 Mbps'),
	(252, 287, 20, '13 MP'),
	(253, 287, 21, '5 MP'),
	(254, 287, 22, '720@30fps'),
	(255, 287, 23, 'Li-Po 2750 mAh'),
	(256, 287, 24, 'Android OS'),
	(257, 287, 25, 'Mediatek MT6735P Quad-core 1.2 Ghz Cortex-A53'),
	(258, 287, 26, 'HTML'),
	(259, 287, 27, 'A-GPS'),
	(260, 287, 28, 'SMS(threaded view)'),
	(261, 287, 29, 'FM Radio'),
	(262, 287, 30, 'Dual SIM GSM - GSM'),
	(263, 287, 31, 'MP4/H.264 player'),
	(264, 287, 32, 'MP3/WAV/eAAC + player'),
	(265, 287, 33, 'Ya'),
	(266, 288, 1, ''),
	(267, 288, 2, ''),
	(268, 288, 3, ''),
	(269, 288, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2'),
	(270, 288, 5, 'IPS LCD Capacitive touchscreen'),
	(271, 288, 6, '5.5 inches'),
	(272, 288, 7, '153 X 76.8 X 7.85 mm /-'),
	(273, 288, 8, 'Vibration; MP3, WAV ringtones'),
	(274, 288, 9, '3.5 jack'),
	(275, 288, 10, 'Ya'),
	(276, 288, 11, '8 GB'),
	(277, 288, 12, 'microSD'),
	(278, 288, 13, 'HSPA 21.15/5.76 Mbps'),
	(279, 288, 14, 'Ya'),
	(280, 288, 15, 'Ya'),
	(281, 288, 16, 'Wi-Fi 802.11 b/g/n'),
	(282, 288, 17, 'v4.0, A2DP'),
	(283, 288, 18, 'microUSB v2.0'),
	(284, 288, 19, 'LTE Cat4 150/50 Mbps'),
	(285, 288, 20, '13 MP'),
	(286, 288, 21, '5 MP'),
	(287, 288, 22, '720@30fps'),
	(288, 288, 23, 'Li-Po 2750 mAh'),
	(289, 288, 24, 'Android OS'),
	(290, 288, 25, 'Mediatek MT6735P Quad-core 1.2 Ghz Cortex-A53'),
	(291, 288, 26, 'HTML'),
	(292, 288, 27, 'A-GPS'),
	(293, 288, 28, 'SMS(threaded view)'),
	(294, 288, 29, 'FM Radio'),
	(295, 288, 30, 'Dual SIM GSM - GSM'),
	(296, 288, 31, 'MP4/H.264 player'),
	(297, 288, 32, 'MP3/WAV/eAAC + player'),
	(298, 288, 33, 'Ya'),
	(299, 218, 1, ' 2299000'),
	(300, 218, 2, '1600000'),
	(301, 218, 3, '2015'),
	(302, 218, 4, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2, HSDPA 850 / 900 / 1900 / 2100, LTE 800 / 1800 / 2100 / 2600'),
	(303, 218, 5, 'IPS capacitive touchscreen, 16M colors'),
	(304, 218, 6, '1080 x 1920 pixels,5.5 inches (~403 ppi pixel density)'),
	(305, 218, 7, '156.5 x 77.2 x 10.8 mm / 170 g'),
	(306, 218, 8, 'Vibration; MP3, WAV ringtones'),
	(307, 218, 9, '3.5mm jack'),
	(308, 218, 10, 'Ya'),
	(309, 218, 11, '32 GB, 3 GB RAM'),
	(310, 218, 12, 'microSD, up to 64 GB'),
	(311, 218, 13, 'HSPA 42.2/5.76 Mbps, LTE Cat4 150/50 Mbps'),
	(312, 218, 14, 'Ya'),
	(313, 218, 15, 'Ya'),
	(314, 218, 16, 'Wi-Fi 802.11 a/b/g/n/ac, Wi-Fi Direct, hotspot'),
	(315, 218, 17, 'v4.0, A2DP, EDR'),
	(316, 218, 18, 'microUSB v2.0, USB Host'),
	(317, 218, 19, '13 MP, 4128 x 3096 pixels, laser autofocus, dual-LED (dual tone) flash, Geo-tagging, touch focus, face detection, panorama, HDR'),
	(318, 218, 20, '13 MP, 1080p, autofocus, dual-LED (dual tone) flash'),
	(319, 218, 21, '1080p@30fps'),
	(320, 218, 22, 'Li-Po 3000 mAh battery'),
	(321, 218, 23, 'Android OS, v5.0 (Lollipop)'),
	(322, 218, 24, 'Android 5.0 (Lollipop)'),
	(323, 218, 25, 'HTML5'),
	(324, 218, 26, 'A-GPS, GLONASS'),
	(325, 218, 27, 'SMS(threaded view), MMS, Email, Push Email, IM'),
	(326, 218, 28, 'Java MIDP emulator - 5GB free lifetime ASUS WebStorage - Document viewer - Photo/video editor'),
	(327, 218, 29, 'Dual SIM GSM-GSM'),
	(328, 218, 30, 'MP4/H.264 player'),
	(329, 218, 31, 'MP3/WAV/eAAC+ player'),
	(330, 218, 32, 'Ya'),
	(331, 218, 33, 'TV-Out'),
	(332, 281, 34, 'COOLPAD'),
	(333, 282, 34, 'ASUS'),
	(334, 283, 34, 'COOLPAD'),
	(335, 284, 34, 'OPPO'),
	(336, 285, 34, 'HUAWEI'),
	(337, 286, 34, 'HUAWEI'),
	(338, 287, 34, 'SAMSUNG'),
	(339, 288, 34, 'OPPO'),
	(340, 218, 34, 'ASUS'),
	(341, 280, 34, 'ASUS');
/*!40000 ALTER TABLE `d_katalog` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_magang: 1 rows
/*!40000 ALTER TABLE `d_magang` DISABLE KEYS */;
REPLACE INTO `d_magang` (`m_id`, `m_nis`, `m_nama`, `m_alamat`, `m_jenis_kelamin`, `m_hoby`) VALUES
	(3, '1234', 'Multazam', 'Bareng', 'L', 'Vc');
/*!40000 ALTER TABLE `d_magang` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_mem: ~65 rows (approximately)
/*!40000 ALTER TABLE `d_mem` DISABLE KEYS */;
REPLACE INTO `d_mem` (`m_id`, `m_hak`, `m_nik`, `m_username`, `m_passwd`, `m_name`, `m_birth_tgl`, `m_addr`, `m_img`, `m_reff`, `m_lastlogin`, `m_lastlogout`, `m_insert`, `m_update`, `status`, `tempat_lahir`, `j_kel`, `m_device_token`, `status_karyawan`, `m_isactive`, `kode_jabatan`) VALUES
	('MEM-000001', 'pelanggan', '111111', '00000', '$2y$10$LxCEqzAh60/oeOkaKloC1u5DTUC0l.l37', 'Ina', '2017-12-01', 'surabaya', NULL, NULL, NULL, NULL, '2017-12-04 13:22:43', '2018-05-11 13:40:28', 'lajang', 'Surabaya', 'pria', NULL, 'tetap', 'y', '00006'),
	('MEM-000002', 'pelanggan', '898989', '99999', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Ona', '2017-12-04', 'surabaya', NULL, NULL, NULL, NULL, '2017-12-04 13:23:26', '2018-01-15 21:05:41', 'sudah menikah', 'surabaya', 'pria', NULL, NULL, 'y', NULL),
	('MEM-000004', 'pelanggan', '87583457', '0822575265081', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Koperasi', '2017-12-11', 'huh', NULL, NULL, NULL, NULL, '2017-12-08 12:07:43', '2018-01-15 21:05:41', 'lajang', 'Kalimantan', 'pria', NULL, NULL, 'y', NULL),
	('MEM-000007', 'pelanggan', '089656788', NULL, NULL, 'reva', '2018-01-25', 'surabaya', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:05:41', '', NULL, 'wanita', NULL, NULL, 'y', NULL),
	('MEM-000008', 'pelanggan', '1234', NULL, NULL, 'SUWARNO', '1989-08-23', 'GRESIK', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:05:41', 'lajang', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000009', 'pelanggan', '123456', NULL, NULL, 'diaz', '2008-12-29', 'jalan', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:05:41', 'lajang', NULL, 'wanita', NULL, NULL, 'y', NULL),
	('MEM-000010', 'pelanggan', NULL, NULL, NULL, 'input', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:05:41', NULL, NULL, NULL, NULL, NULL, 'y', NULL),
	('MEM-000011', 'pelanggan', NULL, NULL, NULL, 'ilham rolis', '2018-01-19', '', NULL, NULL, NULL, NULL, NULL, '2018-01-19 09:57:55', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000012', 'pelanggan', NULL, NULL, NULL, 'dirga', '2018-01-19', '', NULL, NULL, NULL, NULL, NULL, '2018-01-19 10:01:32', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000013', 'pelanggan', NULL, NULL, NULL, 'Rosik', '1989-11-09', '', NULL, NULL, NULL, NULL, NULL, '2018-01-19 10:03:36', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000014', 'pelanggan', NULL, NULL, NULL, 'sutris', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 09:58:23', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000015', 'pelanggan', NULL, NULL, NULL, 'sutris', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 10:01:13', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000016', 'pelanggan', NULL, NULL, NULL, 'oktavia lia', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 10:16:21', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000017', 'pelanggan', NULL, NULL, NULL, 'tofik', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 10:19:52', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000018', 'pelanggan', NULL, NULL, NULL, 'arif hariono', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 10:21:52', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000019', 'pelanggan', NULL, NULL, NULL, 'ninin', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 10:29:17', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000020', 'pelanggan', NULL, NULL, NULL, 'dwi', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 13:39:29', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000021', 'pelanggan', NULL, NULL, NULL, 'fatimah najmusshofa', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 13:52:51', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000022', 'pelanggan', NULL, NULL, NULL, 'farida', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 14:11:23', '', NULL, 'wanita', NULL, NULL, 'y', NULL),
	('MEM-000023', 'pelanggan', NULL, NULL, NULL, 'nisaul karimah', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 14:14:52', '', NULL, 'wanita', NULL, NULL, 'y', NULL),
	('MEM-000024', 'pelanggan', NULL, NULL, NULL, 'atho', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 14:16:26', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000025', 'pelanggan', NULL, NULL, NULL, 'barnadib', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 14:21:03', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000026', 'pelanggan', NULL, NULL, NULL, 'yusuf', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 14:25:38', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000027', 'pelanggan', NULL, NULL, NULL, 'endik', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 14:27:27', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000028', 'pelanggan', NULL, NULL, NULL, 'joko nugroho', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 14:54:32', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000029', 'pelanggan', NULL, NULL, NULL, 'togel', '2018-01-26', '', NULL, NULL, NULL, NULL, NULL, '2018-01-26 15:02:08', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000030', 'pelanggan', NULL, NULL, NULL, 'erik tri hartono', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 13:23:06', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000031', 'pelanggan', NULL, NULL, NULL, 'rizal', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 13:26:44', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000032', 'pelanggan', NULL, NULL, NULL, 'ratih', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 13:30:02', '', NULL, 'wanita', NULL, NULL, 'y', NULL),
	('MEM-000033', 'pelanggan', NULL, NULL, NULL, 'andre', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 13:37:01', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000034', 'pelanggan', NULL, NULL, NULL, 'm. sobri waskito', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 13:38:11', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000035', 'pelanggan', NULL, NULL, NULL, 'pungki', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 13:45:10', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000036', 'pelanggan', NULL, NULL, NULL, 'eli', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 13:54:56', '', NULL, 'wanita', NULL, NULL, 'y', NULL),
	('MEM-000037', 'pelanggan', NULL, NULL, NULL, 'hendrik', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 13:56:30', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000038', 'pelanggan', NULL, NULL, NULL, 'm. bagus pribadi', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 14:01:18', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000039', 'pelanggan', NULL, NULL, NULL, 'huda', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 14:04:29', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000040', 'pelanggan', NULL, NULL, NULL, 'ariya', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 14:06:20', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000041', 'pelanggan', NULL, NULL, NULL, 'sarah', '2018-01-27', '', NULL, NULL, NULL, NULL, NULL, '2018-01-27 14:22:11', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000042', 'pelanggan', '123', NULL, NULL, 'asep saputra', '2018-03-13', '', NULL, NULL, NULL, NULL, NULL, '2018-03-13 20:15:30', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000043', 'pelanggan', NULL, NULL, NULL, 'Gumilang', '2018-03-14', '', NULL, NULL, NULL, NULL, NULL, '2018-03-14 09:48:43', '', NULL, 'pria', NULL, NULL, 'y', NULL),
	('MEM-000044', 'pelanggan', '09129012', NULL, NULL, 'deny', '2018-05-01', '', NULL, NULL, NULL, NULL, NULL, '2018-05-27 14:16:57', 'lajang', NULL, 'pria', NULL, NULL, 'y', NULL),
	('RMZ-000001', 'pelanggan', NULL, 'essensi_creative', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Reva i', '1970-01-01', 'Jl. DR. Soetomo No.132, Sukorame, Kec. Gresik, Kabupaten Gresik, Jawa Timur 61111', NULL, NULL, NULL, NULL, NULL, '2018-05-27 20:55:18', NULL, NULL, NULL, NULL, NULL, 'y', NULL),
	('RMZ-000002', 'petugas', NULL, 'rizqy_soetomo', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Thoriq', '1970-01-01', 'Jl. DR. Soetomo No.132, Sukorame, Kec. Gresik, Kabupaten Gresik, Jawa Timur 61111', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:05:41', NULL, NULL, NULL, NULL, NULL, 'y', NULL),
	('RMZ-000003', 'petugas', NULL, 'rizqy_kalimantan', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Aziz', '1970-01-01', ' jl kalimantan no 121 GKB , jl DR. Soetomo 132, Sukorame, GRESIK, Sukorame, Kec. Gresik, Kabupaten Gresik, Jawa Timur 61151', NULL, NULL, NULL, NULL, NULL, '2018-01-26 07:55:58', NULL, NULL, NULL, NULL, NULL, 'y', NULL),
	('RMZ-000004', 'petugas', '098765', 'rizqy_b1', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Dina', '2017-06-11', 'jalan gresik', 'image/uploads/karyawan/098765/item-098765.jpg', NULL, NULL, NULL, NULL, '2018-05-11 13:42:09', 'sudah menikah', 'Surabaya', 'wanita', 'szPl8', 'tetap', 'y', '00006'),
	('RMZ-000006', 'petugas', '22222', NULL, '$2y$10$XHOApgTJkiPbT0M84eWQIOPgqOjethp9E', 'lina', '2017-05-21', NULL, 'null', NULL, NULL, NULL, NULL, '2018-01-15 21:05:41', 'lajang', 'svdv', 'pria', NULL, NULL, 'y', NULL),
	('RMZ-000007', 'petugas', '123123123', '1212', '$2y$10$MaL1Ih0MwSwDd6OTGngPnONi4mlsMK.uG', '123123', '2018-01-09', 'wd22323', 'image/uploads/karyawan/RMZ-000007/karyawan-RMZ-000007.png', NULL, NULL, NULL, '2018-01-08 13:26:06', '2018-01-08 13:26:06', 'lajang', '1', 'pria', NULL, 'magang', 'y', '00001'),
	('RMZ-000008', 'petugas', '923954230', '0824523454', '$2y$10$v60qRia6lN5WKdCQn/CBW.CuTZwPHWZpY', 'nana', '1994-10-06', 'brunei', 'image/uploads/karyawan/RMZ-000008/karyawan-RMZ-000008.png', NULL, NULL, NULL, '2018-01-08 13:45:53', '2018-01-08 13:48:43', 'lajang', 'tuban', 'pria', NULL, 'magang', 'y', '00006'),
	('RMZ-000009', 'petugas', '1230444', '089898989', '$2y$10$k1fmC81baGwWAb6ZXJXRi.vpQ6mCRjeIn', 'adi', '2018-01-23', 'medokan ayu 1k no 17', 'image/uploads/karyawan/RMZ-000009/karyawan-RMZ-000009.png', NULL, NULL, NULL, '2018-01-08 17:56:48', '2018-02-01 13:39:02', 'lajang', 'surabyaa', 'pria', NULL, 'magang', 'n', '00006'),
	('RMZ-000010', 'petugas', '3312312', '212121212', '$2y$10$2x9UbDyJJJe2pkvaOYd4F.z7EZcUKT/zn', '31231231231', '2018-01-15', '123sdasdasd', 'image/uploads/karyawan/RMZ-000010/karyawan-RMZ-000010.png', NULL, NULL, NULL, '2018-01-08 20:20:31', '2018-02-15 10:16:37', 'lajang', '123123121', 'pria', NULL, 'magang', 'n', '00001'),
	('RMZ-000011', 'petugas', '123123331', '2222333123123123', '$2y$10$1PxG826BHKCtdmpd7wOveulMYL7XHC/L8', '123123111', '2018-01-09', 'sdasdasdasdasdasd', 'image/uploads/karyawan/RMZ-000011/karyawan-RMZ-000011.png', NULL, NULL, NULL, '2018-01-09 11:31:44', '2018-01-09 11:31:44', 'lajang', '3312312121', 'pria', NULL, 'magang', 'y', '00001'),
	('RMZ-000012', 'petugas', '11133322255662', '123331112233311', '$2y$10$nEkrcjgJOrpA.Uxob0BXue7KzD8OzKGKD', 'anjuuurrrrrrrrrrrr', '2018-01-23', 'asdasda', 'image/uploads/karyawan/RMZ-000012/karyawan-RMZ-000012.jpg', NULL, NULL, NULL, '2018-01-16 11:25:26', '2018-01-23 16:06:44', 'lajang', 'asdasdasd1231212312', 'pria', NULL, 'magang', 'n', '00001'),
	('RMZ-000013', 'petugas', '123123446867', '234442244119', '$2y$10$FJUHioLTJjEdT/B.ktGsiuqJh74JGOEUe', 'fsdfsdfsdf', '2018-01-17', '2ddd', 'image/uploads/karyawan/RMZ-000013/karyawan-RMZ-000013.jpg', NULL, NULL, NULL, '2018-01-16 13:07:51', '2018-01-16 13:07:51', 'lajang', 'sfsdfsdfs', 'pria', NULL, 'magang', 'y', '00004'),
	('RMZ-000014', 'petugas', NULL, NULL, 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'input', '2018-01-10', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-26 09:58:17', NULL, NULL, NULL, NULL, 'tetap', 'y', '00005'),
	('RMZ-000015', 'petugas', '3523201404960002', '0822348880115', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Achmad Rifai', '0000-00-00', 'Jl. Gubernur suryo 8/14', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:23', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00005'),
	('RMZ-000016', 'petugas', '3524150501960003', '085732292993', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Jefri Prasetio', '2035-06-09', 'Petiyin takerharjo solokuro', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:23', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00006'),
	('RMZ-000017', 'petugas', '3525103103960004', '08113377714', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Muhammad Ali Muzakky', '0000-00-00', 'Jl. Jamrud 3/11 PPS', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:23', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00004'),
	('RMZ-000018', 'petugas', '1807051508960002', '081249518234', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Nur Aziz', '0000-00-00', 'Jl. Oksigen no 15 perumdinas', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:23', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00006'),
	('RMZ-000019', 'petugas', '3525010208970002', '085731757049', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Thohirin', '0000-00-00', 'Dukun Gresik', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:23', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00006'),
	('RMZ-000020', 'petugas', '3525072211970004', '085855721146', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Abiyazid Albasthomi', '0000-00-00', 'Kebonagung ujung pangkah', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:23', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00006'),
	('RMZ-000021', 'petugas', '3578041801940001', '081938355299', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Kiki hermanto', '0000-00-00', 'Jl. Krukah lama 4/11', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:23', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00006'),
	('RMZ-000022', 'petugas', '3525162108930001', '082257303948', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Muhammad Luthfi', '0000-00-00', 'Jl. Kh kholil 6D no 17', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:24', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00006'),
	('RMZ-000023', 'petugas', '3524182711940001', '085851518001', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Dedin Kristanto', '0000-00-00', 'Ds kendalkemlagi karanggeneng', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:24', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00006'),
	('RMZ-000024', 'petugas', '3578130808970001', '089607915550', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Edy is sulistyo ', '0000-00-00', 'Jl. Bali 1/39 GKB', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:24', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00006'),
	('RMZ-000025', 'petugas', '3316092201960004', '081217268240', 'b009e8a938bd1bcee747eb405cd46653b2b80fa0', 'Teguh Buchori Mandhani', '2035-08-06', 'Jl. Sunan Giri 5B no 1c', NULL, NULL, NULL, NULL, NULL, '2018-01-15 21:27:24', 'lajang', NULL, 'pria', NULL, NULL, 'y', '00006'),
	('RMZ-000026', 'petugas', '3525120504910002', '081381248286', '$2y$10$BtaWB73ptXORBOdcg8GES.vjcoNB1oqyM', 'Mukhammad Jadir', '0000-00-00', 'Bedanten bungah', NULL, NULL, NULL, NULL, NULL, '2018-05-11 13:23:01', 'lajang', 'sby', 'pria', NULL, 'tetap', 'y', '00006');
/*!40000 ALTER TABLE `d_mem` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_mem_access: ~203 rows (approximately)
/*!40000 ALTER TABLE `d_mem_access` DISABLE KEYS */;
REPLACE INTO `d_mem_access` (`ma_id`, `ma_member`, `ma_access`, `ma_level`, `ma_reff`, `ma_group`, `ma_insert`, `ma_update`) VALUES
	(114, 'RMZ-000001', 1, '1', 'G', 3, '2017-12-14 07:42:26', '2017-12-14 07:42:26'),
	(161, 'RMZ-000001', 16, '1', 'G', 3, '2017-12-19 04:19:31', '2017-12-19 04:19:31'),
	(162, 'RMZ0000-11', 1, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(163, 'RMZ0000-11', 2, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(164, 'RMZ0000-11', 3, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(165, 'RMZ0000-11', 4, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(166, 'RMZ0000-11', 5, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(167, 'RMZ0000-11', 6, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(168, 'RMZ0000-11', 7, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(169, 'RMZ0000-11', 8, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(170, 'RMZ0000-11', 9, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(171, 'RMZ0000-11', 10, '3', 'G', 4, '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(172, 'RMZ0000001', 1, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(173, 'RMZ0000001', 2, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(174, 'RMZ0000001', 3, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(175, 'RMZ0000001', 4, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(176, 'RMZ0000001', 5, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(177, 'RMZ0000001', 6, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(178, 'RMZ0000001', 7, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(179, 'RMZ0000001', 8, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(180, 'RMZ0000001', 9, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(181, 'RMZ0000001', 10, '3', 'G', 4, '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(182, 'RMZ-000002', 1, '3', 'G', 1, '2017-12-20 07:53:07', '2017-12-20 07:53:07'),
	(183, 'RMZ-000002', 2, '3', 'G', 1, '2017-12-20 07:53:07', '2017-12-20 07:53:07'),
	(184, 'RMZ-000002', 3, '3', 'G', 1, '2017-12-20 07:53:07', '2017-12-20 07:53:07'),
	(185, 'RMZ-000002', 4, '3', 'G', 1, '2017-12-20 07:53:07', '2017-12-20 07:53:07'),
	(186, 'RMZ-000002', 5, '3', 'G', 1, '2017-12-20 07:53:07', '2017-12-20 07:53:07'),
	(187, 'RMZ-000002', 6, '2', 'G', 1, '2017-12-20 07:53:07', '2017-12-20 07:53:07'),
	(188, 'RMZ-000002', 8, '1', 'G', 1, '2017-12-20 07:53:07', '2017-12-20 07:53:07'),
	(189, 'RMZ-000002', 9, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(190, 'RMZ-000002', 10, '2', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(191, 'RMZ-000002', 11, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(192, 'RMZ-000002', 12, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(193, 'RMZ-000002', 13, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(194, 'RMZ-000002', 14, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(195, 'RMZ-000002', 15, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(196, 'RMZ-000002', 16, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(197, 'RMZ-000002', 17, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(198, 'RMZ-000002', 18, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(199, 'RMZ-000002', 19, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(200, 'RMZ-000002', 20, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(201, 'RMZ-000002', 21, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(202, 'RMZ-000002', 22, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(203, 'RMZ-000002', 23, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(204, 'RMZ-000002', 24, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(205, 'RMZ-000002', 25, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(206, 'RMZ-000002', 26, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(207, 'RMZ-000002', 27, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(208, 'RMZ-000002', 28, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(209, 'RMZ-000002', 29, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(210, 'RMZ-000002', 30, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(211, 'RMZ-000002', 31, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(212, 'RMZ-000002', 32, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(213, 'RMZ-000002', 34, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(214, 'RMZ-000002', 35, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(215, 'RMZ-000002', 36, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(216, 'RMZ-000002', 39, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(217, 'RMZ-000002', 40, '1', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(218, 'RMZ-000002', 41, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(219, 'RMZ-000002', 42, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(220, 'RMZ-000002', 43, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(221, 'RMZ-000002', 44, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(222, 'RMZ-000001', 1, '2', 'G', 2, '2017-12-20 09:41:46', '2017-12-20 09:41:46'),
	(223, 'RMZ-000001', 2, '2', 'G', 2, '2017-12-20 09:41:46', '2017-12-20 09:41:46'),
	(224, 'RMZ-000001', 3, '1', 'G', 2, '2017-12-20 09:41:46', '2017-12-20 09:41:46'),
	(225, 'RMZ-000001', 4, '3', 'G', 2, '2017-12-20 09:41:46', '2017-12-20 09:41:46'),
	(226, 'RMZ-000001', 5, '3', 'G', 2, '2017-12-20 09:41:46', '2017-12-20 09:41:46'),
	(227, 'RMZ-000001', 6, '3', 'G', 2, '2017-12-20 09:41:46', '2017-12-20 09:41:46'),
	(228, 'RMZ-000001', 7, '3', 'G', 2, '2017-12-20 09:41:46', '2017-12-20 09:41:46'),
	(229, 'RMZ-000001', 8, '3', 'G', 2, '2017-12-20 09:41:46', '2017-12-20 09:41:46'),
	(230, 'RMZ-000001', 9, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(231, 'RMZ-000001', 10, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(232, 'RMZ-000001', 11, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(233, 'RMZ-000001', 12, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(234, 'RMZ-000001', 13, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(235, 'RMZ-000001', 14, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(236, 'RMZ-000001', 15, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(237, 'RMZ-000001', 16, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(238, 'RMZ-000001', 17, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(239, 'RMZ-000001', 18, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(240, 'RMZ-000001', 19, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(241, 'RMZ-000001', 20, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(242, 'RMZ-000001', 21, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(243, 'RMZ-000001', 22, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(244, 'RMZ-000001', 23, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(245, 'RMZ-000001', 24, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(246, 'RMZ-000001', 25, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(247, 'RMZ-000001', 26, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(248, 'RMZ-000001', 27, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(249, 'RMZ-000001', 28, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(250, 'RMZ-000001', 29, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(251, 'RMZ-000001', 30, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(252, 'RMZ-000001', 31, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(253, 'RMZ-000001', 32, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(254, 'RMZ-000001', 33, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(255, 'RMZ-000001', 34, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(256, 'RMZ-000001', 35, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(257, 'RMZ-000001', 36, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(258, 'RMZ-000001', 39, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(259, 'RMZ-000001', 40, '3', 'G', 2, '2017-12-20 09:41:47', '2017-12-20 09:41:47'),
	(300, 'RMZ-000001', 44, '3', 'G', 1, '2017-12-20 07:53:08', '2017-12-20 07:53:08'),
	(301, 'RMZ-000001', 22, '1', 'A', NULL, '2018-01-08 03:16:03', '2018-01-08 03:16:03'),
	(302, 'RMZ-000001', 21, '1', 'A', NULL, '2018-01-08 03:16:03', '2018-01-08 03:16:03'),
	(303, 'RMZ-000001', 23, '1', 'A', NULL, '2018-01-08 03:16:03', '2018-01-08 03:16:03'),
	(304, 'RMZ00000-5', 1, '3', 'G', 5, '2018-01-08 04:10:10', '2018-01-08 04:10:10'),
	(305, 'RMZ0000001', 1, '3', 'G', 5, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(306, 'RMZ0000001', 1, '3', 'G', 5, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(307, 'RMZ0000001', 1, '1', 'G', 3, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(308, 'RMZ0000001', 16, '1', 'G', 3, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(309, 'RMZ0000001', 1, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(310, 'RMZ0000001', 2, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(311, 'RMZ0000001', 3, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(312, 'RMZ0000001', 4, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(313, 'RMZ0000001', 5, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(314, 'RMZ0000001', 6, '2', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(315, 'RMZ0000001', 8, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(316, 'RMZ0000001', 9, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(317, 'RMZ0000001', 10, '2', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(318, 'RMZ0000001', 11, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(319, 'RMZ0000001', 12, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(320, 'RMZ0000001', 13, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(321, 'RMZ0000001', 14, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(322, 'RMZ0000001', 15, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(323, 'RMZ0000001', 16, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(324, 'RMZ0000001', 17, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(325, 'RMZ0000001', 18, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(326, 'RMZ0000001', 19, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(327, 'RMZ0000001', 20, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(328, 'RMZ0000001', 21, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(329, 'RMZ0000001', 22, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(330, 'RMZ0000001', 23, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(331, 'RMZ0000001', 24, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(332, 'RMZ0000001', 25, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(333, 'RMZ0000001', 26, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(334, 'RMZ0000001', 27, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(335, 'RMZ0000001', 28, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(336, 'RMZ0000001', 29, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(337, 'RMZ0000001', 30, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(338, 'RMZ0000001', 31, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(339, 'RMZ0000001', 32, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(340, 'RMZ0000001', 34, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(341, 'RMZ0000001', 35, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(342, 'RMZ0000001', 36, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(343, 'RMZ0000001', 39, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(344, 'RMZ0000001', 40, '1', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(345, 'RMZ0000001', 41, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(346, 'RMZ0000001', 42, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(347, 'RMZ0000001', 43, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(348, 'RMZ0000001', 44, '3', 'G', 1, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(349, 'RMZ0000001', 1, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(350, 'RMZ0000001', 2, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(351, 'RMZ0000001', 3, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(352, 'RMZ0000001', 4, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(353, 'RMZ0000001', 5, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(354, 'RMZ0000001', 6, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(355, 'RMZ0000001', 7, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(356, 'RMZ0000001', 8, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(357, 'RMZ0000001', 9, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(358, 'RMZ0000001', 10, '3', 'G', 4, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(359, 'RMZ0000001', 1, '2', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(360, 'RMZ0000001', 2, '2', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(361, 'RMZ0000001', 3, '1', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(362, 'RMZ0000001', 4, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(363, 'RMZ0000001', 5, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(364, 'RMZ0000001', 6, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(365, 'RMZ0000001', 7, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(366, 'RMZ0000001', 8, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(367, 'RMZ0000001', 9, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(368, 'RMZ0000001', 10, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(369, 'RMZ0000001', 11, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(370, 'RMZ0000001', 12, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(371, 'RMZ0000001', 13, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(372, 'RMZ0000001', 14, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(373, 'RMZ0000001', 15, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(374, 'RMZ0000001', 16, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(375, 'RMZ0000001', 17, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(376, 'RMZ0000001', 18, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(377, 'RMZ0000001', 19, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(378, 'RMZ0000001', 20, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(379, 'RMZ0000001', 21, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(380, 'RMZ0000001', 22, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(381, 'RMZ0000001', 23, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(382, 'RMZ0000001', 24, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(383, 'RMZ0000001', 25, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(384, 'RMZ0000001', 26, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(385, 'RMZ0000001', 27, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(386, 'RMZ0000001', 28, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(387, 'RMZ0000001', 29, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(388, 'RMZ0000001', 30, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(389, 'RMZ0000001', 31, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(390, 'RMZ0000001', 32, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(391, 'RMZ0000001', 33, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(392, 'RMZ0000001', 34, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(393, 'RMZ0000001', 35, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(394, 'RMZ0000001', 36, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(395, 'RMZ0000001', 39, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(396, 'RMZ0000001', 40, '3', 'G', 2, '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(397, 'RMZ-000003', 1, '3', 'G', 5, '2018-01-09 10:14:59', '2018-01-09 10:14:59'),
	(398, 'RMZ-000003', 13, '3', 'A', NULL, '2018-01-26 07:55:58', '2018-01-26 07:55:58'),
	(399, 'RMZ-000004', 6, '3', 'A', NULL, '2018-01-30 08:52:15', '2018-01-30 08:52:15'),
	(400, 'RMZ-000004', 13, '3', 'A', NULL, '2018-02-27 02:17:47', '2018-02-27 02:17:47'),
	(401, 'RMZ-000004', 40, '3', 'A', NULL, '2018-03-13 04:31:37', '2018-03-13 04:31:37'),
	(402, 'RMZ-000001', 42, '3', 'A', NULL, '2018-03-22 04:34:46', '2018-03-22 04:34:46');
/*!40000 ALTER TABLE `d_mem_access` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_mem_alamat: 6 rows
/*!40000 ALTER TABLE `d_mem_alamat` DISABLE KEYS */;
REPLACE INTO `d_mem_alamat` (`a_id`, `a_mem`, `a_alamat`, `a_id_provinsi`, `a_provinsi`, `a_id_kab`, `a_kabupaten`, `a_kecamatan`, `a_kodepos`) VALUES
	(74, 'MEM-000006', 'yyy6', 0, '', 0, '', '', ''),
	(73, 'MEM-000005', 'sdfdsf', 0, '', 0, '', '', ''),
	(72, 'MEM-000004', 'cabang surabaya', 0, '', 0, '', '', ''),
	(71, 'MEM-000003', 'surabaya', 0, '', 0, '', '', ''),
	(70, 'MEM-000002', 'surabaya', 0, '', 0, '', '', ''),
	(69, 'MEM-000001', 'surabaya', 0, '', 0, '', '', '');
/*!40000 ALTER TABLE `d_mem_alamat` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_mem_basket
CREATE TABLE IF NOT EXISTS `d_mem_basket` (
  `b_member` varchar(50) NOT NULL,
  `b_item` int(11) NOT NULL,
  `b_qty` int(11) DEFAULT '1',
  `b_insert` timestamp NULL DEFAULT NULL,
  `b_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`b_member`,`b_item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table bisnis_rizqy.d_mem_basket: ~5 rows (approximately)
/*!40000 ALTER TABLE `d_mem_basket` DISABLE KEYS */;
REPLACE INTO `d_mem_basket` (`b_member`, `b_item`, `b_qty`, `b_insert`, `b_update`) VALUES
	('MEM-011', 282, 2, '2017-06-13 11:50:39', '2017-06-15 16:04:34'),
	('MEM-011', 283, 1, '2017-06-13 12:52:59', '2017-06-13 12:52:59'),
	('MEM-1022', 280, 1, '2017-06-06 12:42:33', '2017-06-06 12:42:33'),
	('MEM-1023', 280, 1, '2017-05-31 14:53:28', '2017-05-31 14:53:28'),
	('RMZ9999999', 218, 1, '2017-06-02 03:11:52', '2017-06-02 03:11:52');
/*!40000 ALTER TABLE `d_mem_basket` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_mem_comp: ~20 rows (approximately)
/*!40000 ALTER TABLE `d_mem_comp` DISABLE KEYS */;
REPLACE INTO `d_mem_comp` (`mc_mem`, `mc_comp`, `mc_lvl`, `mc_active`, `mc_insert`, `mc_update`) VALUES
	('RMZ-000001', 'RM00000001', 2, '0', NULL, '2018-03-22 04:34:46'),
	('RMZ-000002', 'RM00000003', 2, '0', NULL, '2017-12-20 07:53:07'),
	('RMZ-000003', 'RM00000004', NULL, '0', NULL, '2018-01-26 07:55:58'),
	('RMZ-000004', 'RM00000002', NULL, '0', NULL, '2018-03-13 04:31:37'),
	('RMZ-000012', 'RM00000001', NULL, '0', NULL, '2018-01-16 11:25:26'),
	('RMZ-000013', 'RM00000002', NULL, '0', NULL, '2018-01-16 13:07:51'),
	('RMZ-000014', 'RM00000003', NULL, '0', NULL, '2018-01-26 09:59:25'),
	('RMZ-000014', 'RM00000004', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000015', 'RM00000003', NULL, '0', NULL, '2018-01-16 16:23:37'),
	('RMZ-000016', 'RM00000001', NULL, '0', NULL, '2018-02-01 14:10:39'),
	('RMZ-000017', 'RM00000001', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000018', 'RM00000004', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000019', 'RM00000004', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000020', 'RM00000004', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000021', 'RM00000004', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000022', 'RM00000003', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000023', 'RM00000003', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000024', 'RM00000003', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000025', 'RM00000003', NULL, '0', NULL, '2018-01-16 16:11:50'),
	('RMZ-000026', 'RM00000004', NULL, '0', NULL, '2018-01-16 16:11:50');
/*!40000 ALTER TABLE `d_mem_comp` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_mem_email: ~39 rows (approximately)
/*!40000 ALTER TABLE `d_mem_email` DISABLE KEYS */;
REPLACE INTO `d_mem_email` (`me_member`, `me_email`, `me_isprimary`, `me_insert`, `me_update`) VALUES
	('MEM-000001', 'ina@gmail.com', NULL, '2017-12-04 13:22:43', '2017-12-04 13:22:43'),
	('MEM-000002', 'ona5@gmail.com', NULL, '2017-12-04 13:23:26', '2017-12-04 13:27:03'),
	('MEM-000004', 'kop@gmail.com', NULL, '2017-12-08 12:07:43', '2017-12-08 12:07:43'),
	('MEM-000007', 'ilham@gmail.com', NULL, '2018-01-02 02:09:50', '2018-01-02 02:09:50'),
	('MEM-000008', 'SUWARNO@GMAIL.COM', NULL, '2018-01-09 10:16:45', '2018-01-09 10:16:45'),
	('MEM-000009', 'diaz85@gmail.com', NULL, '2018-01-09 10:30:30', '2018-01-09 10:30:30'),
	('MEM-000011', '', NULL, '2018-01-19 02:57:55', '2018-01-19 02:57:55'),
	('MEM-000012', '', NULL, '2018-01-19 03:01:32', '2018-01-19 03:01:32'),
	('MEM-000013', '', NULL, '2018-01-19 03:03:36', '2018-01-19 03:03:36'),
	('MEM-000014', '', NULL, '2018-01-26 02:58:23', '2018-01-26 02:58:23'),
	('MEM-000015', '', NULL, '2018-01-26 03:01:13', '2018-01-26 03:01:13'),
	('MEM-000016', '', NULL, '2018-01-26 03:16:21', '2018-01-26 03:16:21'),
	('MEM-000017', '', NULL, '2018-01-26 03:19:52', '2018-01-26 03:19:52'),
	('MEM-000018', '', NULL, '2018-01-26 03:21:52', '2018-01-26 03:21:52'),
	('MEM-000019', '', NULL, '2018-01-26 03:29:17', '2018-01-26 03:29:17'),
	('MEM-000020', '', NULL, '2018-01-26 06:39:29', '2018-01-26 06:39:29'),
	('MEM-000021', '', NULL, '2018-01-26 06:52:51', '2018-01-26 06:52:51'),
	('MEM-000022', '', NULL, '2018-01-26 07:11:23', '2018-01-26 07:11:23'),
	('MEM-000023', '', NULL, '2018-01-26 07:14:52', '2018-01-26 07:14:52'),
	('MEM-000024', '', NULL, '2018-01-26 07:16:26', '2018-01-26 07:16:26'),
	('MEM-000025', '', NULL, '2018-01-26 07:21:03', '2018-01-26 07:21:03'),
	('MEM-000026', '', NULL, '2018-01-26 07:25:38', '2018-01-26 07:25:38'),
	('MEM-000027', '', NULL, '2018-01-26 07:27:27', '2018-01-26 07:27:27'),
	('MEM-000028', '', NULL, '2018-01-26 07:54:32', '2018-01-26 07:54:32'),
	('MEM-000029', '', NULL, '2018-01-26 08:02:08', '2018-01-26 08:02:08'),
	('MEM-000030', '', NULL, '2018-01-27 06:23:06', '2018-01-27 06:23:06'),
	('MEM-000031', 'rayaalmeyra@gmail.com', NULL, '2018-01-27 06:26:44', '2018-01-27 06:26:44'),
	('MEM-000032', '', NULL, '2018-01-27 06:30:02', '2018-01-27 06:30:02'),
	('MEM-000033', '', NULL, '2018-01-27 06:37:01', '2018-01-27 06:37:01'),
	('MEM-000034', '', NULL, '2018-01-27 06:38:11', '2018-01-27 06:38:11'),
	('MEM-000035', '', NULL, '2018-01-27 06:45:10', '2018-01-27 06:45:10'),
	('MEM-000036', '', NULL, '2018-01-27 06:54:56', '2018-01-27 06:54:56'),
	('MEM-000037', '', NULL, '2018-01-27 06:56:30', '2018-01-27 06:56:30'),
	('MEM-000038', '', NULL, '2018-01-27 07:01:18', '2018-01-27 07:01:18'),
	('MEM-000039', '', NULL, '2018-01-27 07:04:29', '2018-01-27 07:04:29'),
	('MEM-000040', '', NULL, '2018-01-27 07:06:20', '2018-01-27 07:06:20'),
	('MEM-000041', '', NULL, '2018-01-27 07:22:11', '2018-01-27 07:22:11'),
	('MEM-000042', '', NULL, '2018-03-13 13:15:30', '2018-03-13 13:15:30'),
	('MEM-000043', '', NULL, '2018-03-14 02:48:43', '2018-03-14 02:48:43'),
	('MEM-000044', 'denyprasetyo41@gmail.com', NULL, '2018-05-27 07:16:57', '2018-05-27 07:16:57');
/*!40000 ALTER TABLE `d_mem_email` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_mem_group
CREATE TABLE IF NOT EXISTS `d_mem_group` (
  `mg_id` int(11) NOT NULL,
  `mg_member` varchar(50) NOT NULL DEFAULT '',
  `mg_group` varchar(50) NOT NULL DEFAULT '',
  `mg_insert` datetime DEFAULT NULL,
  `mg_update` datetime DEFAULT NULL,
  PRIMARY KEY (`mg_id`,`mg_member`,`mg_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_mem_group: ~13 rows (approximately)
/*!40000 ALTER TABLE `d_mem_group` DISABLE KEYS */;
REPLACE INTO `d_mem_group` (`mg_id`, `mg_member`, `mg_group`, `mg_insert`, `mg_update`) VALUES
	(1, 'RMZ-000001', '3', '2017-12-14 07:42:26', '2017-12-14 07:42:26'),
	(2, 'RMZ0000-11', '4', '2017-12-19 04:36:49', '2017-12-19 04:36:49'),
	(3, 'RMZ0000001', '4', '2017-12-19 04:54:26', '2017-12-19 04:54:26'),
	(4, 'RMZ-000002', '1', '2017-12-20 07:53:07', '2017-12-20 07:53:07'),
	(5, 'RMZ-000001', '2', '2017-12-20 09:41:46', '2017-12-20 09:41:46'),
	(6, 'RMZ00000-5', '5', '2018-01-08 04:10:10', '2018-01-08 04:10:10'),
	(7, 'RMZ0000001', '5', '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(8, 'RMZ0000001', '5', '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(9, 'RMZ0000001', '3', '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(10, 'RMZ0000001', '1', '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(11, 'RMZ0000001', '4', '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(12, 'RMZ0000001', '2', '2018-01-08 04:27:39', '2018-01-08 04:27:39'),
	(13, 'RMZ-000003', '5', '2018-01-09 10:14:59', '2018-01-09 10:14:59');
/*!40000 ALTER TABLE `d_mem_group` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_mem_hp: ~60 rows (approximately)
/*!40000 ALTER TABLE `d_mem_hp` DISABLE KEYS */;
REPLACE INTO `d_mem_hp` (`mhp_member`, `mhp_hp`, `mhp_isprimary`, `mhp_isactive`, `mhp_insert`, `mhp_update`) VALUES
	('MEM-000001', '00000', '0', '0', '2017-12-04 13:22:43', '2017-12-04 13:22:43'),
	('MEM-000002', '99999', '0', '0', '2017-12-04 13:23:26', '2017-12-04 13:23:26'),
	('MEM-000004', '675847487', '0', '0', '2017-12-08 12:07:43', '2017-12-08 12:07:43'),
	('MEM-000007', '089232526899', '0', '0', '2018-01-02 09:09:50', '2018-01-02 09:09:50'),
	('MEM-000008', '081553014353', '0', '0', '2018-01-09 17:16:45', '2018-01-09 17:16:45'),
	('MEM-000009', '085749756578', '0', '0', '2018-01-09 17:30:30', '2018-01-09 17:30:30'),
	('MEM-000010', '11111111', '0', '0', '2018-01-10 09:14:58', '2018-01-10 09:14:58'),
	('MEM-000011', '085730536659', '0', '0', '2018-01-19 09:57:55', '2018-01-19 09:57:55'),
	('MEM-000012', '085635273833', '0', '0', '2018-01-19 10:01:32', '2018-01-19 10:01:32'),
	('MEM-000013', '0812353748444', '0', '0', '2018-01-19 10:03:36', '2018-01-19 10:03:36'),
	('MEM-000014', '081357386638', '0', '0', '2018-01-26 09:58:23', '2018-01-26 09:58:23'),
	('MEM-000015', '081357386638', '0', '0', '2018-01-26 10:01:13', '2018-01-26 10:01:13'),
	('MEM-000016', '082171583116', '0', '0', '2018-01-26 10:16:21', '2018-01-26 10:16:21'),
	('MEM-000017', '081251976303', '0', '0', '2018-01-26 10:19:52', '2018-01-26 10:19:52'),
	('MEM-000018', '081330433818', '0', '0', '2018-01-26 10:21:52', '2018-01-26 10:21:52'),
	('MEM-000019', '085748001425', '0', '0', '2018-01-26 10:29:17', '2018-01-26 10:29:17'),
	('MEM-000020', '085648151147', '0', '0', '2018-01-26 13:39:29', '2018-01-26 13:39:29'),
	('MEM-000021', '081360986200', '0', '0', '2018-01-26 13:52:51', '2018-01-26 13:52:51'),
	('MEM-000022', '081232320203', '0', '0', '2018-01-26 14:11:23', '2018-01-26 14:11:23'),
	('MEM-000023', '085648761495', '0', '0', '2018-01-26 14:14:52', '2018-01-26 14:14:52'),
	('MEM-000024', '08123096407', '0', '0', '2018-01-26 14:16:26', '2018-01-26 14:16:26'),
	('MEM-000025', '085733926962', '0', '0', '2018-01-26 14:21:03', '2018-01-26 14:21:03'),
	('MEM-000026', '082337546090', '0', '0', '2018-01-26 14:25:38', '2018-01-26 14:25:38'),
	('MEM-000027', '081336680808', '0', '0', '2018-01-26 14:27:27', '2018-01-26 14:27:27'),
	('MEM-000028', '085731687475', '0', '0', '2018-01-26 14:54:32', '2018-01-26 14:54:32'),
	('MEM-000029', '085257274341', '0', '0', '2018-01-26 15:02:08', '2018-01-26 15:02:08'),
	('MEM-000030', '085745388686', '0', '0', '2018-01-27 13:23:06', '2018-01-27 13:23:06'),
	('MEM-000031', '085648079297', '0', '0', '2018-01-27 13:26:44', '2018-01-27 13:26:44'),
	('MEM-000032', '08133204735', '0', '0', '2018-01-27 13:30:02', '2018-01-27 13:30:02'),
	('MEM-000033', '083832059383', '0', '0', '2018-01-27 13:37:01', '2018-01-27 13:37:01'),
	('MEM-000034', '082229466321', '0', '0', '2018-01-27 13:38:11', '2018-01-27 13:38:11'),
	('MEM-000035', '081553583146', '0', '0', '2018-01-27 13:45:10', '2018-01-27 13:45:10'),
	('MEM-000036', '08126151514', '0', '0', '2018-01-27 13:54:56', '2018-01-27 13:54:56'),
	('MEM-000037', '082230446140', '0', '0', '2018-01-27 13:56:30', '2018-01-27 13:56:30'),
	('MEM-000038', '981554246503', '0', '0', '2018-01-27 14:01:18', '2018-01-27 14:01:18'),
	('MEM-000039', '085708605154', '0', '0', '2018-01-27 14:04:29', '2018-01-27 14:04:29'),
	('MEM-000040', '082292604608', '0', '0', '2018-01-27 14:06:20', '2018-01-27 14:06:20'),
	('MEM-000041', '082243930331', '0', '0', '2018-01-27 14:22:11', '2018-01-27 14:22:11'),
	('MEM-000042', '', '0', '0', '2018-03-13 20:15:30', '2018-03-13 20:15:30'),
	('MEM-000043', '08982132892015', '0', '0', '2018-03-14 09:48:43', '2018-03-14 09:48:43'),
	('MEM-000044', '08888888888', '0', '0', '2018-05-27 14:16:57', '2018-05-27 14:16:57'),
	('RMZ-000007', '1212', '0', '0', '2018-01-08 13:26:06', '2018-01-08 13:26:06'),
	('RMZ-000008', '0824523454', '0', '0', '2018-01-08 13:45:53', '2018-01-08 13:45:53'),
	('RMZ-000009', '089898989', '0', '0', '2018-01-08 17:56:45', '2018-01-08 17:56:45'),
	('RMZ-000010', '212121212', '0', '0', '2018-01-08 20:20:31', '2018-01-08 20:20:31'),
	('RMZ-000011', '2222333123123123', '0', '0', '2018-01-09 11:31:44', '2018-01-09 11:31:44'),
	('RMZ-000012', '123331112233311', '0', '0', '2018-01-16 11:25:26', '2018-01-16 11:25:26'),
	('RMZ-000013', '234442244119', '0', '0', '2018-01-16 13:07:51', '2018-01-16 13:07:51'),
	('RMZ-000014', '00000000', '0', '0', '2018-01-10 09:13:50', '2018-01-10 09:13:50'),
	('RMZ-000015', '0822348880115', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000016', '085732292993', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000017', '08113377714', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000018', '081249518234', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000019', '085731757049', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000020', '085855721146', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000021', '081938355299', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000022', '082257303948', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000023', '085851518001', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000024', '089607915550', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000025', '081217268240', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45'),
	('RMZ-000026', '081381248286', '1', '0', '2018-01-16 16:19:45', '2018-01-16 16:19:45');
/*!40000 ALTER TABLE `d_mem_hp` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_mem_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_mem_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_mem_log` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_mem_passwd
CREATE TABLE IF NOT EXISTS `d_mem_passwd` (
  `mp_member` varchar(10) NOT NULL,
  `mp_id` tinyint(4) NOT NULL,
  `mp_passwd` tinyint(4) DEFAULT NULL,
  `mp_timechanged` datetime DEFAULT NULL,
  PRIMARY KEY (`mp_member`,`mp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_mem_passwd: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_mem_passwd` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_mem_passwd` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_mem_sosmed: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_mem_sosmed` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_mem_sosmed` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_mem_wish
CREATE TABLE IF NOT EXISTS `d_mem_wish` (
  `w_member` int(11) NOT NULL,
  `w_item` int(11) NOT NULL,
  `w_insert` timestamp NULL DEFAULT NULL,
  `w_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`w_member`,`w_item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table bisnis_rizqy.d_mem_wish: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_mem_wish` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_mem_wish` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_message: 11 rows
/*!40000 ALTER TABLE `d_message` DISABLE KEYS */;
REPLACE INTO `d_message` (`id_message`, `subyek`, `sender`, `message`, `date`, `receiver`) VALUES
	(75, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"as","time":"15:44","user":"ana"},{"message":"iya","time":"15:44","user":"ana"}', '2017-06-07 15:58:52', 'MEM-1022'),
	(73, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"eh","time":1496824265819,"user":"ana"}', '2017-06-07 15:31:18', 'MEM-1022'),
	(74, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"hhu","time":"15:41","user":"reva"},{"message":"","time":"15:41","user":"reva"},{"message":"iya","time":"15:41","user":"ana"}', '2017-06-07 15:42:00', 'MEM-1022'),
	(72, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"halo","time":15,"user":"ana"},{"message":"mas","time":15,"user":"ana"}', '2017-06-07 15:28:11', 'MEM-1022'),
	(71, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"tes","time":-420,"user":"reva"},{"message":"assalamualaikum","time":-420,"user":"ana"},{"message":"ass","time":-420,"user":"reva"},{"message":"test","time":3,"user":"reva"}', '2017-06-07 15:22:43', 'MEM-1022'),
	(70, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"Reffg","time":-420,"user":"ana"},{"message":"Test","time":-420,"user":"reva"},{"message":"Yg","time":-420,"user":"ana"}', '2017-06-01 15:36:43', 'MEM-1022'),
	(69, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"Selamat siang. Ada yg dapat saya bantu","time":-420,"user":"ana"},{"message":"Test","time":-420,"user":"reva"},{"message":"Ya. Dengan ana di sini","time":-420,"user":"ana"},{"message":"Ana juga disini","time":-420,"user":"reva"},{"message":"Ada yg dapat kami bantu","time":-420,"user":"ana"}', '2017-06-01 15:34:10', 'MEM-1022'),
	(67, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"haloo","user":"ana"},{"message":"Iya","time":1496293261608,"user":"reva"}', '2017-06-01 12:01:04', 'MEM-1022'),
	(68, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"Assalamualaikum","time":1496293592364,"user":"reva"},{"message":"iya","time":12,"user":"ana"}', '2017-06-01 12:06:37', 'MEM-1022'),
	(65, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"Hy","time":1496292261358,"user":"ana"},{"message":"Iya","time":1496292266836,"user":"reva"},{"message":"Ushshs","time":1496292270015,"user":"ana"}', '2017-06-01 11:44:35', 'MEM-1022'),
	(66, 'Pesan Konsultasi', 'RMZ9999999', '{"message":"Halo","time":1496292133159,"user":"reva"},{"message":"Mbak..","time":1496292155006,"user":"reva"},{"message":"Saya mau tanya nih","time":1496292162098,"user":"reva"},{"message":"Tes","time":1496292214219,"user":"ana"},{"message":"Halo","time":1496293024454,"user":"ana"},{"message":"iya","time":1496293034969,"user":"reva"}', '2017-06-01 11:57:58', 'MEM-1022');
/*!40000 ALTER TABLE `d_message` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_notifikasi: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_notifikasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_notifikasi` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_order: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_order` DISABLE KEYS */;
REPLACE INTO `d_order` (`so_id`, `so_member`, `so_pembayaran`, `so_ketbayar`, `so_date`, `so_nota`, `so_total_gross`) VALUES
	(1, 'MEM-1022', '2', 'COD diantar di rumah', '2017-06-05 12:47:44', 'SS-17/06/05124744', 5024000),
	(2, 'MEM-1022', '2', 'COD diantar di rumah', '2017-06-05 12:51:54', 'SS-17/06/05125154', 2305000);
/*!40000 ALTER TABLE `d_order` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_order_dt
CREATE TABLE IF NOT EXISTS `d_order_dt` (
  `sd_statusorder` int(11) NOT NULL,
  `sd_detailid` tinyint(4) NOT NULL,
  `sd_item` int(11) DEFAULT NULL,
  `sd_qty` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`sd_statusorder`,`sd_detailid`),
  CONSTRAINT `FK_status` FOREIGN KEY (`sd_statusorder`) REFERENCES `d_order` (`so_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_order_dt: ~3 rows (approximately)
/*!40000 ALTER TABLE `d_order_dt` DISABLE KEYS */;
REPLACE INTO `d_order_dt` (`sd_statusorder`, `sd_detailid`, `sd_item`, `sd_qty`) VALUES
	(1, 1, 280, 1),
	(1, 2, 283, 1),
	(2, 1, 282, 1);
/*!40000 ALTER TABLE `d_order_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_payable: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_payable` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_payable` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_payable_dt: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_payable_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_payable_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_pegawai: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_pegawai` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_pegawai` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_pembayaran
CREATE TABLE IF NOT EXISTS `d_pembayaran` (
  `p_id` int(11) NOT NULL,
  `p_ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_pembayaran: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_pembayaran` DISABLE KEYS */;
REPLACE INTO `d_pembayaran` (`p_id`, `p_ket`) VALUES
	(1, 'COD'),
	(2, 'Transfer Bank');
/*!40000 ALTER TABLE `d_pembayaran` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_promo
CREATE TABLE IF NOT EXISTS `d_promo` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_title` varchar(50) NOT NULL,
  `p_img` varchar(50) DEFAULT NULL,
  `p_ket` longtext NOT NULL,
  `p_date` date NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_promo: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_promo` DISABLE KEYS */;
REPLACE INTO `d_promo` (`p_id`, `p_title`, `p_img`, `p_ket`, `p_date`) VALUES
	(1, 'Review Xiaomi Redmi Note 4 RAM 4GB: Android RAM 4G', 'image/uploads/promo/1/promo-1.jpg', 'Meski ponsel Xiaomi Redmi Note 4 telah masuk secara resmi ke pasar Indonesia, nyatanya versi tidak resmi dari perangkat ini masih cukup diminati konsumen. Dengan RAM 4GB, wajar bila lebih banyak orang mencarinya ketimbang versi resminya yang hanya mengusung RAM sebesar 3GB. Tak hanya RAM yang lebih lega, Redmi Note 4 garansi distributor juga menyediakan ruang penyimpanan internal yang lebih besar berukuran 64GB. Meski dibanderol lebih tinggi, namun kedua kelebihan tersebut tentu sudah cukup jadi alasan bagi banyak orang untuk lebih memilihnya', '2017-05-19'),
	(2, '7 Ponsel Android Nougat di Indonesia', 'image/uploads/promo/2/promo-2.PNG', 'Setiap tahunnya Google senantiasa menggulirkan pembaruan sistem operasi Android untuk para penggemarnya. Di pertengahan 2016, Google resmi merilis versi terbaru Android yakni 7.0 Nougat yang menghadirkan beragam fungsi dan fitur baru.  Interface-nya pun dikemas dengan tampilan yang lebih menarik serta memiliki performa yang lebih cepat dibanding versi Android sebelumnya', '2017-05-19');
/*!40000 ALTER TABLE `d_promo` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_purchase: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_purchase` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_purchase_dt: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_purchase_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_purchase_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_receivable: 0 rows
/*!40000 ALTER TABLE `d_receivable` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_receivable` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_receivable_dt: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_receivable_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_receivable_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_return: 0 rows
/*!40000 ALTER TABLE `d_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_return` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_return_supplier: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_return_supplier` DISABLE KEYS */;
REPLACE INTO `d_return_supplier` (`rs_id`, `rs_date`, `rs_nota`, `rs_supplier`, `rs_insert`, `rs_update`) VALUES
	(1, '2017-12-14', 'RETURN-SUP/17/12/14/042550/45', '1111', '2017-12-14 04:27:44', '2017-12-14 04:27:44');
/*!40000 ALTER TABLE `d_return_supplier` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_return_supplier_dt: ~4 rows (approximately)
/*!40000 ALTER TABLE `d_return_supplier_dt` DISABLE KEYS */;
REPLACE INTO `d_return_supplier_dt` (`rsd_supplierreturn`, `rsd_detailid`, `rsd_mutasi`, `rsd_mutasidetail`, `rsd_status`, `rsd_treatment`, `rsd_item`, `rsd_qty`, `rsd_specificcode`, `rsd_delivery_order`, `rsd_replaceitem`, `rsd_replaceqty`, `rsd_replacespecificcode`, `rsd_insert`, `rsd_update`) VALUES
	(1, 1, 1, 1, '2', '1', 493, 1, '4324235', 'PO-17/12/14/034700', 0, 0, NULL, '2017-12-14 04:27:44', '2017-12-14 04:32:32'),
	(1, 2, 1, 2, '2', '2', 493, 1, '13G', 'PO-17/12/14/034700', 493, 1, 'ASFWE31', '2017-12-14 04:27:44', '2017-12-14 04:32:32'),
	(1, 3, 2, 1, '2', '1', 527, 1, '1', 'PO-17/12/14/034700', 0, 0, NULL, '2017-12-14 04:27:44', '2017-12-14 04:32:32'),
	(1, 4, 2, 2, '2', '3', 527, 1, '2', 'PO-17/12/14/034700', 0, 0, NULL, '2017-12-14 04:27:44', '2017-12-14 04:32:32');
/*!40000 ALTER TABLE `d_return_supplier_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_sales: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_sales` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_sales_dt: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_sales_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_sales_dt` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_sales_payment
CREATE TABLE IF NOT EXISTS `d_sales_payment` (
  `sp_sales` int(11) NOT NULL,
  `sp_detailid` tinyint(4) NOT NULL,
  `sp_method` tinyint(4) NOT NULL,
  `sp_nominal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`sp_sales`,`sp_detailid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_sales_payment: 27 rows
/*!40000 ALTER TABLE `d_sales_payment` DISABLE KEYS */;
REPLACE INTO `d_sales_payment` (`sp_sales`, `sp_detailid`, `sp_method`, `sp_nominal`) VALUES
	(162, 1, 2, 3835000.00),
	(163, 1, 3, 4120000.00),
	(172, 1, 2, 315000.00),
	(174, 1, 2, 4915000.00),
	(175, 1, 2, 3145000.00),
	(177, 1, 2, 3000000.00),
	(178, 1, 2, 1970000.00),
	(179, 1, 2, 1445000.00),
	(180, 1, 2, 3000000.00),
	(182, 1, 2, 2175000.00),
	(183, 1, 2, 2045000.00),
	(184, 1, 2, 2410000.00),
	(185, 1, 2, 70000.00),
	(186, 1, 2, 35000.00),
	(187, 1, 2, 4000000.00),
	(188, 1, 2, 1420000.00),
	(189, 1, 2, 65000.00),
	(190, 1, 2, 325000.00),
	(191, 1, 2, 5105000.00),
	(192, 1, 2, 3690000.00),
	(208, 1, 2, 2725000.00),
	(209, 1, 2, 2725000.00),
	(210, 1, 2, 2700000.00),
	(211, 1, 2, 2700000.00),
	(212, 1, 2, 1500000.00),
	(1, 1, 2, 3425000.00),
	(2, 1, 2, 3425000.00);
/*!40000 ALTER TABLE `d_sales_payment` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_sales_plan: 0 rows
/*!40000 ALTER TABLE `d_sales_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_sales_plan` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_sales_plan_dt: 0 rows
/*!40000 ALTER TABLE `d_sales_plan_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_sales_plan_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_sales_return: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_sales_return` DISABLE KEYS */;
REPLACE INTO `d_sales_return` (`sr_id`, `sr_date`, `sr_notareturn`, `sr_member`, `sr_insert`, `sr_update`) VALUES
	(1, '2018-03-22', 'RETURN/18/03/22/040409/64', 'MEM-000010', '2018-03-22 04:10:14', '2018-03-22 04:10:14'),
	(2, '2018-03-22', 'RETURN/18/03/22/041017/89', 'MEM-000010', '2018-03-22 04:12:23', '2018-03-22 04:12:23');
/*!40000 ALTER TABLE `d_sales_return` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_sales_return_dt: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_sales_return_dt` DISABLE KEYS */;
REPLACE INTO `d_sales_return_dt` (`srd_salesreturn`, `srd_detailid`, `srd_sales`, `srd_salesdetail`, `srd_status`, `srd_treatment`, `srd_item`, `srd_qty`, `srd_specificcode`, `srd_note`, `srd_replaceitem`, `srd_replaceqty`, `srd_replacespecificcode`, `srd_insert`, `srd_update`) VALUES
	(1, 1, 12, 1, '1', '0', 478, 1, '866984037424288', '', 0, 0, NULL, '2018-03-22 04:10:14', '2018-03-22 04:10:14'),
	(2, 1, 13, 1, '1', '0', 478, 1, '866984037453964', 'hank', 0, 0, NULL, '2018-03-22 04:12:23', '2018-03-22 04:12:23');
/*!40000 ALTER TABLE `d_sales_return_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_service: 8 rows
/*!40000 ALTER TABLE `d_service` DISABLE KEYS */;
REPLACE INTO `d_service` (`se_id`, `se_no`, `se_service_center`, `se_date`, `se_status`, `se_insert`, `se_update`) VALUES
	(2, 'SRV-051705', 1, '2017-05-05', 'On Proses', '2017-05-05 03:14:09', '2017-05-05 03:14:52'),
	(1, 'SRV-041705', 1, '2017-05-04', 'On Proses', '2017-05-04 09:22:28', '2017-05-04 09:25:36'),
	(3, 'SRV-051705', 1, '2017-05-05', 'On Proses', '2017-05-05 07:45:19', '2017-05-05 07:46:48'),
	(4, 'SRV-181705', 2, '2017-05-18', 'On Proses', '2017-05-18 04:10:34', '2017-05-18 04:11:25'),
	(5, 'SRV-241705', 2, '2017-05-24', 'On Proses', '2017-05-24 08:12:18', '2017-05-24 08:12:49'),
	(6, 'SRV-291705', 1, '2017-05-29', 'On Proses', '2017-05-29 04:33:57', '2017-05-29 04:34:29'),
	(7, 'SRV-031708', 1, '2017-08-03', 'On Proses', '2017-08-03 05:31:45', '2017-10-05 09:21:46'),
	(8, 'SRV-221803', 1, '2018-03-22', 'Open', '2018-03-22 00:29:50', '2018-03-22 00:29:50');
/*!40000 ALTER TABLE `d_service` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_service_center
CREATE TABLE IF NOT EXISTS `d_service_center` (
  `sc_id` int(11) DEFAULT NULL,
  `sc_name` varchar(100) DEFAULT NULL,
  `sc_address` varchar(100) DEFAULT NULL,
  `sc_create` datetime DEFAULT NULL,
  `sc_update` datetime DEFAULT NULL,
  `sc_company` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_service_center: 3 rows
/*!40000 ALTER TABLE `d_service_center` DISABLE KEYS */;
REPLACE INTO `d_service_center` (`sc_id`, `sc_name`, `sc_address`, `sc_create`, `sc_update`, `sc_company`) VALUES
	(1, 'Huawei Service Center 1', 'Kayoon 2, Surabaya', '2017-04-25 14:08:18', '2017-04-25 14:08:20', 'Huawei'),
	(2, 'Huawei Service Center 2', 'Wonorejo 3, Surabaya', '2017-04-25 14:09:49', '2017-04-25 14:09:49', 'Huawei'),
	(3, 'Coolpad Service Center 1', 'Pandegiling 1, Surabaya', '2017-04-25 14:10:15', '2017-04-25 14:10:15', 'Coolpad');
/*!40000 ALTER TABLE `d_service_center` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_service_request: 13 rows
/*!40000 ALTER TABLE `d_service_request` DISABLE KEYS */;
REPLACE INTO `d_service_request` (`sr_id`, `sr_service`, `sr_comp`, `sr_item`, `sr_spesificcode`, `sr_customer`, `sr_email`, `sr_keluhan`, `sr_date`, `sr_status`, `sr_keterangan_selesai`, `sr_outlet_pengambilan`, `sr_position`, `sr_insert`, `sr_update`) VALUES
	(1, 1, 'RM00000011', 'Huawei Accend 3A', '1', 'Noviastuti Budi Indjotie', 'dirgaswams@gmail.com', '- keyboard mati<br />\r\n- layar gelap<br />\r\n- tidak bisa nelpon', '2017-05-04', 'Selesai', '', 'RM00000011', 'RM00000001', '2017-05-04 09:20:00', '2017-05-04 09:29:47'),
	(2, 1, 'RM00000011', 'Asus Zenfone 3', '2', 'dirga ambara', 'ambaradirga18@gmail.com', '- cek sendiri yaaa', '2017-05-04', 'Dikirim Ke Service Center', '', 'RM00000011', 'RM00000001', '2017-05-04 09:20:53', '2017-05-04 09:25:22'),
	(3, 2, 'RM00000011', 'ggg', '4234', 'ggg', 'revaelsya.12@gmail.com', 'ggg', '2017-05-05', 'Selesai', '', 'RM00000011', 'RM00000001', '2017-05-05 03:12:23', '2017-05-05 03:15:14'),
	(4, 3, 'RM00000011', 'huwaei a3', '154256735625', 'dirga ambara', 'isbandiyah.biaz@gmail.com', '- rusak', '2017-05-05', 'Selesai', '', 'RM00000011', 'RM00000001', '2017-05-05 07:42:40', '2017-05-05 07:48:59'),
	(5, 0, 'RM00000012', 'huawei', '898989', 'Nanada', 'revaelsya.12@gmail.com', 'rusak', '2017-05-12', 'Dikirim Ke Pusat', '', 'RM00000012', 'RM00000012', '2017-05-12 02:55:02', '2017-05-12 03:12:05'),
	(6, 4, 'RM00000011', 'huawei', '99999', 'reva', 'revaelsya.12@gmail.com', 'rusak parah', '2017-05-18', 'Selesai', '', 'RM00000011', 'RM00000001', '2017-05-18 04:06:37', '2017-05-18 04:13:02'),
	(7, 5, 'RM00000011', 'huawei', '11111', 'reva', 'revaelsya.12@gmail.com', 'rusak a', '2017-05-24', 'Selesai', '', 'RM00000011', 'RM00000001', '2017-05-24 08:09:51', '2017-05-24 08:13:41'),
	(8, 6, 'RM00000011', 'Handphone Huawei P9', 'Ana Faradina', 'Reva Ethan Qowash', 'anafrdna@gmail.com', 'LCD RUSAK!!!', '2017-05-29', 'Selesai', '', 'RM00000011', 'RM00000001', '2017-05-29 04:04:18', '2017-05-29 04:34:58'),
	(9, 0, 'RM00000011', 'Headset Earphone', '211122221112', 'Reva Ethan Qowash', 'anafrdna@gmail.com', 'Touchpad rusak', '2017-05-29', 'Dikirim Ke Pusat', '', 'RM00000011', 'RM00000011', '2017-05-29 06:06:19', '2017-05-29 06:08:46'),
	(10, 0, 'RM00000011', 'hh', '92739', 'fhhf', 'uhuhu@gmail.com', 'ee', '2017-06-07', 'Menunggu', '', 'RM00000011', 'RM00000011', '2017-06-07 07:45:26', '2017-06-07 07:45:26'),
	(11, 7, 'RM00000012', 'Samsung', '1234', 'Reva', 'revaelsya.12@gmail.com', 'Rusak', '2017-08-03', 'Dikirim Ke Service Center', '', 'RM00000012', 'RM00000001', '2017-08-03 05:30:00', '2017-10-05 09:21:42'),
	(12, 0, 'RM00000003', 'hp', '23234', 'reva', 'revaelsya.12@gmail.com', 'rusak', '2017-10-05', 'Menunggu', '', 'RM00000003', 'RM00000003', '2017-10-05 09:21:05', '2017-10-05 09:21:05'),
	(13, 8, 'RM00000003', 'Iphone 5s 16', '355676074138189', 'eli', '', 'lcd buram', '2018-03-22', 'Selesai', '', 'RM00000003', 'RM00000001', '2018-03-22 00:29:01', '2018-03-22 00:31:20');
/*!40000 ALTER TABLE `d_service_request` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_set_pph: ~3 rows (approximately)
/*!40000 ALTER TABLE `d_set_pph` DISABLE KEYS */;
REPLACE INTO `d_set_pph` (`id`, `min_gaji`, `max_gaji`, `tarif`, `s_insert`, `s_update`) VALUES
	(1, 0, 50000000, 5, NULL, '2017-10-05 11:12:48'),
	(2, 50000000, 250000000, 15, NULL, '2017-10-05 11:12:48'),
	(3, 250000000, 500000000, 25, NULL, '2017-10-05 11:12:48');
/*!40000 ALTER TABLE `d_set_pph` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_stock: ~1 rows (approximately)
/*!40000 ALTER TABLE `d_stock` DISABLE KEYS */;
REPLACE INTO `d_stock` (`s_id`, `s_comp`, `s_item`, `s_qty`, `s_minstock`, `s_position`, `s_code`, `s_insert`, `s_update`) VALUES
	(2, 'RM00000001', 802, 0, NULL, 'RM00000001', '', '2018-05-27 14:15:08', '2018-05-27 11:18:12');
/*!40000 ALTER TABLE `d_stock` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_stock_dt: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_stock_dt` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_stock_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_stock_mutation: ~8 rows (approximately)
/*!40000 ALTER TABLE `d_stock_mutation` DISABLE KEYS */;
REPLACE INTO `d_stock_mutation` (`sm_stock`, `sm_detailid`, `sm_comp`, `sm_date`, `sm_item`, `sm_detail`, `sm_qty`, `sm_use`, `sm_hpp`, `sm_sell`, `sm_specificcode`, `sm_nota`, `sm_delivery_order`, `sm_petugas`) VALUES
	(1, 1, 'RM00000001', '2018-05-16 20:02:10', 968, 'Pembelian', 1, 0, 1200000.00, 1500000.00, '234234G', 'PO-18/05/16/125952', '44', 'RMZ-000001'),
	(1, 2, 'RM00000001', '2018-05-16 20:02:10', 968, 'Pembelian', 1, 0, 1200000.00, 1500000.00, '32R4FV3G4', 'PO-18/05/16/125952', '44', 'RMZ-000001'),
	(1, 3, 'RM00000001', '2018-05-16 20:02:10', 968, 'Pembelian', 1, 0, 1200000.00, 1500000.00, '4454545FV', 'PO-18/05/16/125952', '44', 'RMZ-000001'),
	(1, 4, 'RM00000001', '2018-05-16 20:02:10', 968, 'Pembelian', 1, 0, 1200000.00, 1500000.00, '45454545', 'PO-18/05/16/125952', '44', 'RMZ-000001'),
	(1, 5, 'RM00000001', '2018-05-16 20:02:10', 968, 'Pembelian', 1, 0, 1200000.00, 1500000.00, '4G43FV3F34', 'PO-18/05/16/125952', '44', 'RMZ-000001'),
	(1, 6, 'RM00000001', '2018-05-16 20:03:52', 968, 'Penjualan', 1, 0, 1200000.00, 1500000.00, '234234G', 'POS-Reg/18/05/16/010317/72', 'POS-Reg/18/05/16/010317/72', 'RMZ-000001'),
	(2, 1, 'RM00000001', '2018-05-27 14:15:08', 802, 'Pembelian', 1, 0, 3291000.00, 3425000.00, '2222', 'PO-18/05/27/071358', '1111', 'RMZ-000001'),
	(2, 2, 'RM00000001', '2018-05-27 14:15:08', 802, 'Pembelian', 1, 0, 3291000.00, 3425000.00, '33333', 'PO-18/05/27/071358', '1111', 'RMZ-000001'),
	(2, 3, 'RM00000001', '2018-05-27 14:44:42', 802, 'Penjualan', 1, 0, 3291000.00, 3425000.00, '2222', 'POS-Reg/18/05/27/074325/55', 'POS-Reg/18/05/27/074325/55', 'RMZ-000001'),
	(2, 4, 'RM00000001', '2018-05-27 18:18:12', 802, 'Penjualan', 1, 0, 3291000.00, 3425000.00, '33333', 'POS-Reg/18/05/27/111509/28', 'POS-Reg/18/05/27/111509/28', 'RMZ-000001');
/*!40000 ALTER TABLE `d_stock_mutation` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_stock_opname: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_stock_opname` DISABLE KEYS */;
REPLACE INTO `d_stock_opname` (`so_id`, `so_comp`, `so_item`, `so_date`, `so_note`, `so_status`) VALUES
	(2, 'RM00000001', 437, '2018-01-19 00:00:00', '', ''),
	(3, 'RM00000001', 437, '2018-01-19 00:00:00', '', '');
/*!40000 ALTER TABLE `d_stock_opname` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_stock_opname_dt
CREATE TABLE IF NOT EXISTS `d_stock_opname_dt` (
  `sod_so` int(11) NOT NULL,
  `sod_detailid` int(11) NOT NULL,
  `sod_specificcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sod_so`,`sod_detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_stock_opname_dt: ~5 rows (approximately)
/*!40000 ALTER TABLE `d_stock_opname_dt` DISABLE KEYS */;
REPLACE INTO `d_stock_opname_dt` (`sod_so`, `sod_detailid`, `sod_specificcode`) VALUES
	(2, 1, 'dfs'),
	(2, 2, '358409083067446'),
	(3, 1, 'dfs'),
	(3, 2, '358409083067446'),
	(3, 3, '358409083078668');
/*!40000 ALTER TABLE `d_stock_opname_dt` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_stock_opname_in: ~4 rows (approximately)
/*!40000 ALTER TABLE `d_stock_opname_in` DISABLE KEYS */;
REPLACE INTO `d_stock_opname_in` (`soin_id`, `so_id`, `soin_specificcode`, `soin_check`, `soin_insert`, `soin_update`, `soin_petugas`) VALUES
	(1, 1, '2', 1, '2017-12-08 11:57:08', '2017-12-08 11:57:08', 0),
	(2, 1, '5', 0, '2017-12-08 11:57:23', '2017-12-08 11:57:23', 0),
	(3, 1, '21212125678', 0, '2017-12-08 11:59:26', '2018-01-08 13:43:49', 0),
	(4, 1, '211', 1, '2017-12-08 11:59:40', '2017-12-08 11:59:40', 0);
/*!40000 ALTER TABLE `d_stock_opname_in` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_supplier: ~25 rows (approximately)
/*!40000 ALTER TABLE `d_supplier` DISABLE KEYS */;
REPLACE INTO `d_supplier` (`s_id`, `s_company`, `s_name`, `s_address`, `s_phone`, `s_fax`, `s_note`, `s_insert`, `s_update`, `s_limit`) VALUES
	(1111, 'Channel', 'Channel', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', 10000000),
	(1112, 'Parastar', 'Parastar', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', 8000000),
	(1113, 'Sales Smart', 'Sales Smart', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', 5000000),
	(1114, 'Screen Mask Indonesia', 'Screen Mask Indonesia', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', 15000000),
	(1115, 'Wellcomm', 'Wellcomm', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', 7000000),
	(1116, 'Sales Umum', 'Sales Umum', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', 0),
	(1117, 'Tam Selluler', 'Tam Selluler', 'JL ALAM AT', '0000000', '000000', 'XX', '2018-01-08 17:18:33', '2018-05-16 11:24:05', 1000000000),
	(1118, 'Trevesty', 'Trevesty', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', 2000000),
	(1119, 'Smart Cell', 'Smart Cell', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1120, 'Royal', 'Royal', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1121, 'Rizqy Komputer', 'Rizqy Komputer', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1122, 'El Cipta', 'El Cipta', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1123, 'Nilkin Kalaideng', 'Nilkin Kalaideng', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1124, 'Grand Shop SBY', 'Grand Shop SBY', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1125, 'CV Doran', 'CV Doran', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1126, 'Mirage', 'Mirage', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1127, 'Ga Accesories', 'Ga Accesories', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1128, 'PT Sein Samsung Elektronik Indonesia', 'PT Sein Samsung Elektronik Indonesia', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1129, 'Data Script JKT', 'Data Script JKT', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:33', NULL),
	(1130, 'PT World Innovative', 'PT World Innovative', NULL, NULL, NULL, NULL, '2018-01-08 17:18:33', '2018-01-08 17:18:51', NULL),
	(1131, 'Bumilindo', 'Bumilindo', NULL, NULL, NULL, NULL, '2018-01-09 21:18:33', '2018-01-09 21:19:04', NULL),
	(1132, 'Extra Accesories', 'Extra Accesories', '-', '01', '-', '-', '2018-01-13 16:09:27', '2018-01-13 16:09:27', 0),
	(1133, 'TELERING ONYX PRATAMA', 'TELERING ONYX PRATAMA', 'SURABAYA', '081217174702', '000000', 'SUPPLIER HUAWEI', '2018-02-10 03:48:49', '2018-02-10 03:48:49', 50000000),
	(1134, 'PT. OASE TEKNOLOGI ASIA', 'PT. OASE TEKNOLOGI ASIA', '-', '02163859510', '--', '-', '2018-03-06 04:13:08', '2018-03-06 04:13:08', 0),
	(1135, 'PT ALAMRAYA', 'DENY', 'JL UNDAH', '012999', '92929', 'GAADA', '2018-05-16 10:52:20', '2018-05-16 10:52:20', 4000000);
/*!40000 ALTER TABLE `d_supplier` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.d_survey: ~31 rows (approximately)
/*!40000 ALTER TABLE `d_survey` DISABLE KEYS */;
REPLACE INTO `d_survey` (`s_id`, `s_mem`, `s_question`, `s_answer`, `s_date`) VALUES
	('1', 'MEM-000002', 1, 2, '2018-01-03 12:50:23'),
	('1', 'MEM-000002', 2, 3, '2018-01-03 12:50:23'),
	('1', 'MEM-000002', 3, 3, '2018-01-03 12:50:23'),
	('2', 'MEM-000003', 1, 1, '2018-01-03 12:50:32'),
	('2', 'MEM-000003', 2, 4, '2018-01-03 12:50:32'),
	('2', 'MEM-000003', 3, 2, '2018-01-03 12:50:32'),
	('3', 'MEM-000002', 1, 4, '2018-01-03 22:49:26'),
	('3', 'MEM-000002', 2, 4, '2018-01-03 22:49:26'),
	('3', 'MEM-000002', 3, 6, '2018-01-03 22:49:26'),
	('4', 'MEM-000001', 1, 1, '2018-01-04 10:16:11'),
	('4', 'MEM-000001', 2, 1, '2018-01-04 10:16:11'),
	('4', 'MEM-000001', 3, 1, '2018-01-04 10:16:11'),
	('5', 'MEM-000002', 1, 2, '2018-01-04 10:16:25'),
	('5', 'MEM-000002', 2, 3, '2018-01-04 10:16:25'),
	('5', 'MEM-000002', 3, 3, '2018-01-04 10:16:25'),
	('6', 'MEM-000002', 1, 1, '2018-01-04 10:39:59'),
	('6', 'MEM-000002', 2, 1, '2018-01-04 10:39:59'),
	('6', 'MEM-000002', 3, 1, '2018-01-04 10:39:59'),
	('6', 'MEM-000002', 4, 3, '2018-01-04 10:39:59'),
	('7', 'MEM-000008', 1, 2, '2018-01-18 16:37:02'),
	('7', 'MEM-000008', 2, 3, '2018-01-18 16:37:02'),
	('7', 'MEM-000008', 3, 3, '2018-01-18 16:37:02'),
	('7', 'MEM-000008', 4, 2, '2018-01-18 16:37:02'),
	('8', 'MEM-000009', 1, 1, '2018-01-18 16:37:21'),
	('8', 'MEM-000009', 2, 2, '2018-01-18 16:37:21'),
	('8', 'MEM-000009', 3, 2, '2018-01-18 16:37:21'),
	('8', 'MEM-000009', 4, 2, '2018-01-18 16:37:21'),
	('9', 'MEM-000007', 1, 2, '2018-01-18 16:37:39'),
	('9', 'MEM-000007', 2, 3, '2018-01-18 16:37:39'),
	('9', 'MEM-000007', 3, 4, '2018-01-18 16:37:39'),
	('9', 'MEM-000007', 4, 2, '2018-01-18 16:37:39');
/*!40000 ALTER TABLE `d_survey` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_survey_answer
CREATE TABLE IF NOT EXISTS `d_survey_answer` (
  `sa_question` int(11) NOT NULL,
  `sa_id` int(11) NOT NULL,
  `sa_answer` text,
  PRIMARY KEY (`sa_id`,`sa_question`),
  KEY `FK__d_survey_question` (`sa_question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_survey_answer: ~18 rows (approximately)
/*!40000 ALTER TABLE `d_survey_answer` DISABLE KEYS */;
REPLACE INTO `d_survey_answer` (`sa_question`, `sa_id`, `sa_answer`) VALUES
	(1, 1, 'sangat nyaman'),
	(2, 1, 'Sangat Puas'),
	(3, 1, 'harga'),
	(4, 1, '1 kali'),
	(1, 2, 'nyaman'),
	(2, 2, 'Puas'),
	(3, 2, 'diskon'),
	(4, 2, '2 kali'),
	(1, 3, 'cukup nyaman'),
	(2, 3, 'cukup puas'),
	(3, 3, 'promo'),
	(4, 3, '20 kali'),
	(1, 4, 'kurang nyaman'),
	(2, 4, 'kurang puas'),
	(3, 4, 'lokasi'),
	(4, 4, '50 kali'),
	(3, 5, 'pelayanan'),
	(3, 6, 'emmm gak tau');
/*!40000 ALTER TABLE `d_survey_answer` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.d_survey_question
CREATE TABLE IF NOT EXISTS `d_survey_question` (
  `sq_id` int(11) NOT NULL,
  `sq_question` text NOT NULL,
  `sq_isactive` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`sq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.d_survey_question: ~4 rows (approximately)
/*!40000 ALTER TABLE `d_survey_question` DISABLE KEYS */;
REPLACE INTO `d_survey_question` (`sq_id`, `sq_question`, `sq_isactive`) VALUES
	(1, 'Apakah anda nyaman di toko Rizqy Mobile', 'Y'),
	(2, 'Seberapa puaskah anda membeli di toko Rizqy Mobile', 'Y'),
	(3, 'Kenapa anda memilih rizqy mobile', 'Y'),
	(4, 'Makan berapa kali', 'Y');
/*!40000 ALTER TABLE `d_survey_question` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.karyawans: ~0 rows (approximately)
/*!40000 ALTER TABLE `karyawans` DISABLE KEYS */;
/*!40000 ALTER TABLE `karyawans` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.konsultasi: 7 rows
/*!40000 ALTER TABLE `konsultasi` DISABLE KEYS */;
REPLACE INTO `konsultasi` (`k_id`, `k_idchat`, `k_noantri`, `k_petugas`, `k_date`, `k_user`, `k_status`, `k_time`) VALUES
	(165, 3, NULL, NULL, '2017-06-14', 'MEM-011', 'belum di konfirmasi', '2017-06-14 12:33:47'),
	(166, 2, NULL, NULL, '2017-06-17', 'MEM-011', 'belum di konfirmasi', '2017-06-17 15:55:53'),
	(162, 2, NULL, 'RMZ-034', '2017-06-13', 'MEM-011', 'sudah dikonfirmasi', '2017-06-13 11:44:42'),
	(163, 3, NULL, NULL, '2017-06-13', 'MEM-011', 'belum di konfirmasi', '2017-06-13 20:15:46'),
	(164, 2, NULL, 'RMZ-034', '2017-06-14', 'MEM-011', 'sudah dikonfirmasi', '2017-06-14 12:33:08'),
	(161, 3, NULL, NULL, '2017-06-12', 'MEM-008', 'belum di konfirmasi', '2017-06-12 11:57:58'),
	(160, 2, NULL, 'RMZ-020', '2017-06-12', 'MEM-008', 'sudah dikonfirmasi', '2017-06-12 11:57:56');
/*!40000 ALTER TABLE `konsultasi` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.merk
CREATE TABLE IF NOT EXISTS `merk` (
  `id` int(10) unsigned NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bisnis_rizqy.merk: ~5 rows (approximately)
/*!40000 ALTER TABLE `merk` DISABLE KEYS */;
REPLACE INTO `merk` (`id`, `nama`, `created_at`, `updated_at`) VALUES
	(1, 'Samsung', '2017-07-03 09:54:23', '2017-07-03 09:54:23'),
	(2, 'Apple', NULL, NULL),
	(3, 'Oppo', NULL, NULL),
	(4, 'Nokia', NULL, NULL),
	(5, 'Asus', NULL, NULL);
/*!40000 ALTER TABLE `merk` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bisnis_rizqy.migrations: ~6 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(46, '2014_10_12_000000_create_users_table', 1),
	(47, '2014_10_12_100000_create_password_resets_table', 1),
	(48, '2016_12_09_110147_create_karyawans_table', 1),
	(49, '2016_12_09_110213_create_nominals_table', 1),
	(50, '2016_12_09_110240_create_transaksis_table', 1),
	(51, '2017_06_13_073937_create_d_pegawai_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.m_comp_type
CREATE TABLE IF NOT EXISTS `m_comp_type` (
  `ct_id` tinyint(4) NOT NULL,
  `ct_name` varchar(50) DEFAULT NULL,
  `ct_isactive` varchar(1) DEFAULT '0',
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.m_comp_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `m_comp_type` DISABLE KEYS */;
REPLACE INTO `m_comp_type` (`ct_id`, `ct_name`, `ct_isactive`) VALUES
	(10, 'Perusahaan', '0'),
	(11, 'Perusahaan - Kuliner', '1'),
	(12, 'Perusahaan - Manufaktur', '1'),
	(13, 'Perusahaan - Retail', '1'),
	(19, 'Perusahaan - Jasa', '1'),
	(20, 'Keuangan Rumah Tangga', '1'),
	(80, 'Investor', '1'),
	(90, 'Koperasi', '1');
/*!40000 ALTER TABLE `m_comp_type` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.m_katalog_type
CREATE TABLE IF NOT EXISTS `m_katalog_type` (
  `k_id` int(11) NOT NULL,
  `k_groupname` varchar(50) DEFAULT NULL,
  `k_groupurut` int(11) DEFAULT NULL,
  `k_groupvalue` varchar(50) DEFAULT NULL,
  `k_nourut` int(11) DEFAULT NULL,
  PRIMARY KEY (`k_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.m_katalog_type: 34 rows
/*!40000 ALTER TABLE `m_katalog_type` DISABLE KEYS */;
REPLACE INTO `m_katalog_type` (`k_id`, `k_groupname`, `k_groupurut`, `k_groupvalue`, `k_nourut`) VALUES
	(1, 'HARGA', 1, 'Harga Baru', 1),
	(2, 'HARGA', 1, 'Harga Bekas', 2),
	(3, 'TAHUN', 3, 'Tahun', 1),
	(4, 'GENERAL', 4, 'Network', 1),
	(5, 'LAYAR', 5, 'Tipe', 1),
	(6, 'LAYAR', 5, 'Ukuran', 2),
	(7, 'DIMENSI', 6, 'Ukuran / Berat', 1),
	(8, 'AUDIO', 7, 'Fitur', 1),
	(9, 'AUDIO', 7, 'Jack', 2),
	(10, 'AUDIO', 7, 'Speakerphone', 3),
	(11, 'MEMORY', 8, 'Internal', 1),
	(12, 'MEMORY', 8, 'Eksternal', 2),
	(13, 'DATA', 9, '3G', 1),
	(14, 'DATA', 9, 'EDGE', 2),
	(15, 'DATA', 9, 'GPRS', 3),
	(16, 'DATA', 9, 'WLAN', 4),
	(17, 'DATA', 9, 'Bluetooth', 5),
	(18, 'DATA', 9, 'USB / Port', 6),
	(19, 'DATA', 9, '4G', 7),
	(20, 'KAMERA', 10, 'BELAKANG', 1),
	(21, 'KAMERA', 10, 'DEPAN', 2),
	(22, 'KAMERA', 10, 'Video Record', 3),
	(23, 'BATERAI', 11, 'Tipe', 2),
	(24, 'FITUR', 12, 'OS', 1),
	(25, 'FITUR', 12, 'CPU', 2),
	(26, 'FITUR', 12, 'Browser', 3),
	(27, 'FITUR', 12, 'GPS', 4),
	(28, 'FITUR', 12, 'Messaging', 5),
	(29, 'FITUR', 12, 'Fitur Tambahan', 6),
	(30, 'FITUR LAIN', 13, 'Multiple SIM', 1),
	(31, 'FITUR LAIN', 13, 'Video Player', 2),
	(32, 'FITUR LAIN', 13, 'MP3 Layer', 3),
	(33, 'FITUR LAIN', 13, 'Audio Record', 4),
	(34, 'BRAND', 14, 'ASUS', 1);
/*!40000 ALTER TABLE `m_katalog_type` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.m_mem_level
CREATE TABLE IF NOT EXISTS `m_mem_level` (
  `lvl_id` tinyint(4) NOT NULL,
  `lvl_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lvl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.m_mem_level: ~5 rows (approximately)
/*!40000 ALTER TABLE `m_mem_level` DISABLE KEYS */;
REPLACE INTO `m_mem_level` (`lvl_id`, `lvl_name`) VALUES
	(1, 'Owner'),
	(2, 'Admin'),
	(11, 'Bookkeeper'),
	(90, 'Reader'),
	(99, 'Member');
/*!40000 ALTER TABLE `m_mem_level` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.m_paymentmethod: ~0 rows (approximately)
/*!40000 ALTER TABLE `m_paymentmethod` DISABLE KEYS */;
REPLACE INTO `m_paymentmethod` (`pm_id`, `pm_year`, `pm_name`, `pm_coa_comp`, `pm_coa_year`, `pm_coa_code`) VALUES
	(1, '2018', 'BRI', 'RMZ-', '2018', '1010.....');
/*!40000 ALTER TABLE `m_paymentmethod` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.m_satuan
CREATE TABLE IF NOT EXISTS `m_satuan` (
  `s_id` tinyint(4) NOT NULL,
  `s_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.m_satuan: ~0 rows (approximately)
/*!40000 ALTER TABLE `m_satuan` DISABLE KEYS */;
REPLACE INTO `m_satuan` (`s_id`, `s_name`) VALUES
	(1, 'PCS');
/*!40000 ALTER TABLE `m_satuan` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.m_trans_cat
CREATE TABLE IF NOT EXISTS `m_trans_cat` (
  `tt_code` varchar(2) NOT NULL,
  `tt_name` varchar(50) DEFAULT NULL,
  `tt_income` tinyint(4) NOT NULL,
  `tt_isactive` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.m_trans_cat: ~17 rows (approximately)
/*!40000 ALTER TABLE `m_trans_cat` DISABLE KEYS */;
REPLACE INTO `m_trans_cat` (`tt_code`, `tt_name`, `tt_income`, `tt_isactive`) VALUES
	('10', 'PENJUALAN', 1, '1'),
	('11', 'DISKON PENJUALAN', -1, '1'),
	('12', 'RETUR PENJUALAN', -1, '1'),
	('20', 'HARGA POKOK PENJUALAN', -1, '1'),
	('21', 'SELISIH HPP', 1, '1'),
	('30', 'BIAYA OPERASIONAL', -1, '1'),
	('41', 'PENYUSUTAN', -1, '1'),
	('42', 'AMORTISASI', -1, '1'),
	('51', 'PENDAPATAN LAIN-LAIN', 1, '1'),
	('52', 'BIAYA LAIN-LAIN', -1, '1'),
	('61', 'BUNGA', -1, '1'),
	('62', 'PAJAK', -1, '1'),
	('71', 'MUTASI ANTAR KAS', 0, '1'),
	('72', 'TRANSAKSI ASET', 0, '1'),
	('73', 'TRANSAKSI PIUTANG', 0, '1'),
	('74', 'TRANSAKSI KEWAJIBAN', 0, '1'),
	('75', 'TRANSAKSI MODAL', 0, '1');
/*!40000 ALTER TABLE `m_trans_cat` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.nominals
CREATE TABLE IF NOT EXISTS `nominals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jml_nominal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bisnis_rizqy.nominals: ~0 rows (approximately)
/*!40000 ALTER TABLE `nominals` DISABLE KEYS */;
/*!40000 ALTER TABLE `nominals` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.opname_barang: 3 rows
/*!40000 ALTER TABLE `opname_barang` DISABLE KEYS */;
REPLACE INTO `opname_barang` (`id_opname`, `i_id`, `stock_nyata`, `selisih`, `keterangan`) VALUES
	(1, 218, 2, 0, ''),
	(2, 280, 4, -2, ''),
	(3, 281, 1, 7, '');
/*!40000 ALTER TABLE `opname_barang` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table bisnis_rizqy.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
REPLACE INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('admin@admin.com', '4e0bca7a7666199f245fd6b5380acdb0f9f90626924aee6abc7c7bca85f6da47', '2016-12-25 04:23:52');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.table1_seq
CREATE TABLE IF NOT EXISTS `table1_seq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.table1_seq: 43 rows
/*!40000 ALTER TABLE `table1_seq` DISABLE KEYS */;
REPLACE INTO `table1_seq` (`id`) VALUES
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10),
	(11),
	(12),
	(13),
	(14),
	(15),
	(16),
	(17),
	(18),
	(19),
	(20),
	(21),
	(22),
	(23),
	(24),
	(25),
	(26),
	(27),
	(28),
	(29),
	(30),
	(31),
	(32),
	(33),
	(34),
	(35),
	(36),
	(37),
	(38),
	(39),
	(40),
	(41),
	(42),
	(43);
/*!40000 ALTER TABLE `table1_seq` ENABLE KEYS */;

-- Dumping structure for table bisnis_rizqy.table2_seq
CREATE TABLE IF NOT EXISTS `table2_seq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table bisnis_rizqy.table2_seq: 15 rows
/*!40000 ALTER TABLE `table2_seq` DISABLE KEYS */;
REPLACE INTO `table2_seq` (`id`) VALUES
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10),
	(11),
	(12),
	(13),
	(14),
	(15);
/*!40000 ALTER TABLE `table2_seq` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.transaksis: ~0 rows (approximately)
/*!40000 ALTER TABLE `transaksis` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksis` ENABLE KEYS */;

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

-- Dumping data for table bisnis_rizqy.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin@admin.com', '$2y$10$dYeBtiYS74uzfFaCKSvTdOyta8chM9WfH6JR3mbdN0Ht.bmYsl7XO', 'qSOXCMm90I7TlcT6Ppt20mwVQccoZoyl7ssuzjyVv5HYvs1pvAi9BwMQvF9X', '2016-12-19 00:23:42', '2016-12-28 11:25:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
