-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.30-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for kri
DROP DATABASE IF EXISTS `kri`;
CREATE DATABASE IF NOT EXISTS `kri` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kri`;

-- Dumping structure for table kri.anggota
DROP TABLE IF EXISTS `anggota`;
CREATE TABLE IF NOT EXISTS `anggota` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_univ` int(5) NOT NULL DEFAULT '0',
  `id_divisi` int(5) NOT NULL DEFAULT '0',
  `id_peserta` int(5) NOT NULL DEFAULT '0',
  `jenis` enum('MHS','PDP','MKN') DEFAULT NULL,
  `nama` varchar(100) NOT NULL DEFAULT '0',
  `npm` varchar(100) NOT NULL DEFAULT '0',
  `jabatan` varchar(100) NOT NULL DEFAULT '0',
  `no_hp` varchar(100) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `foto` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kri.anggota: ~0 rows (approximately)
DELETE FROM `anggota`;
/*!40000 ALTER TABLE `anggota` DISABLE KEYS */;
/*!40000 ALTER TABLE `anggota` ENABLE KEYS */;

-- Dumping structure for table kri.divisi
DROP TABLE IF EXISTS `divisi`;
CREATE TABLE IF NOT EXISTS `divisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `divisi` varchar(50) NOT NULL DEFAULT '0',
  `peserta` int(2) NOT NULL DEFAULT '0',
  `pendamping` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table kri.divisi: ~4 rows (approximately)
DELETE FROM `divisi`;
/*!40000 ALTER TABLE `divisi` DISABLE KEYS */;
INSERT INTO `divisi` (`id`, `divisi`, `peserta`, `pendamping`) VALUES
	(1, 'KRAI', 3, 1),
	(2, 'KRPAI Berkaki', 2, 1),
	(3, 'KRSBI Beroda', 4, 1),
	(4, 'KRSTI', 3, 1);
/*!40000 ALTER TABLE `divisi` ENABLE KEYS */;

-- Dumping structure for table kri.peserta
DROP TABLE IF EXISTS `peserta`;
CREATE TABLE IF NOT EXISTS `peserta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tim` varchar(50) NOT NULL DEFAULT '0',
  `id_univ` int(11) NOT NULL DEFAULT '0',
  `id_divisi` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- Dumping data for table kri.peserta: ~74 rows (approximately)
DELETE FROM `peserta`;
/*!40000 ALTER TABLE `peserta` DISABLE KEYS */;
INSERT INTO `peserta` (`id`, `tim`, `id_univ`, `id_divisi`) VALUES
	(1, 'BRAHMANA', 1, 1),
	(2, 'KAYUBI', 3, 1),
	(3, 'Saint\'ideas 1.1', 4, 1),
	(4, 'Lexarga V5', 6, 1),
	(5, 'INZPERO', 8, 1),
	(6, 'SAGOTRA', 11, 1),
	(7, 'Ell_TORO', 12, 1),
	(8, 'Bandhayudha', 13, 1),
	(9, 'HEROES', 14, 1),
	(10, 'PEJUANG HIJRAH', 15, 1),
	(11, 'ABU NAWAS', 16, 1),
	(12, 'MR_RECHT', 20, 1),
	(13, 'BLEDHEG IJO', 21, 1),
	(14, 'MAESTRO_EVO', 22, 1),
	(15, 'ATOM', 23, 1),
	(16, 'Werkudara', 25, 1),
	(17, 'SEMAR-BOT', 26, 1),
	(18, 'SAROTAMA', 1, 2),
	(19, 'HALILIPAN', 3, 2),
	(20, 'Ideasfire 1.1', 4, 2),
	(21, 'EBO LEG FIRE V.4', 5, 2),
	(22, 'POLIREVO L.2', 6, 2),
	(23, 'ESCOBO_WINO', 7, 2),
	(24, 'ARCEE-EVO', 8, 2),
	(25, 'NEXTRON', 9, 2),
	(26, 'BALINGKANG', 10, 2),
	(27, 'AL-JAZARI', 11, 2),
	(28, 'NAKULA', 12, 2),
	(29, 'EWS ANDROMEDA', 13, 2),
	(30, 'Al - Fatih', 14, 2),
	(31, 'Unisi Arsilia', 15, 2),
	(32, 'D\' AVECENNA 2.8', 16, 2),
	(33, 'T.IMPERIUM v2', 17, 2),
	(34, 'R2C-ALCEO', 18, 2),
	(35, 'RR AVERROES', 19, 2),
	(36, 'MR.COOL MK7', 20, 2),
	(37, 'SFR REBORN', 21, 2),
	(38, 'GARENG PUNK', 22, 2),
	(39, 'ASTRO', 23, 2),
	(40, 'ZUSSIEG', 24, 2),
	(41, 'SAMBERGENI', 25, 2),
	(42, 'INJOH_BOT', 26, 2),
	(43, 'LEMPUYANGAN', 27, 2),
	(44, '9 BINTANG', 28, 2),
	(45, 'PMSD-UNITED', 2, 3),
	(46, 'BAUNTUNG', 3, 3),
	(47, 'Ideassoccer 1.1', 4, 3),
	(48, 'MEGA PORA', 6, 3),
	(49, 'BAGANDING', 10, 3),
	(50, 'FIRE-X', 11, 3),
	(51, 'SADEWA', 12, 3),
	(52, 'EWS BARRACUDA', 13, 3),
	(53, 'FUKURO', 14, 3),
	(54, 'ADMIRAL Unisi', 15, 3),
	(55, 'URT-ROSO', 16, 3),
	(56, 'R2C-WARRIOR', 18, 3),
	(57, 'AL JAZARI RR', 19, 3),
	(58, 'Mr_Dev MK2', 20, 3),
	(59, 'SAITAMA V3', 21, 3),
	(60, 'MOBO-EVO', 22, 3),
	(61, 'HATMOKO JR', 23, 3),
	(62, 'Kona 2', 24, 3),
	(63, 'TRUNS Maladi', 25, 3),
	(64, 'Muhibbin', 3, 4),
	(65, 'LANANGE JAGAD', 11, 4),
	(66, 'ALFAN', 14, 4),
	(67, 'ARTSILIA', 15, 4),
	(68, 'D\'AZKA', 16, 4),
	(69, 'AL-GASIYAH 2', 19, 4),
	(70, 'ROSEMERY', 22, 4),
	(71, 'HEAVEN', 23, 4),
	(72, 'Kona 3', 24, 4),
	(73, 'Sriwedari', 25, 4),
	(74, 'JAN\'NAH', 26, 4);
/*!40000 ALTER TABLE `peserta` ENABLE KEYS */;

-- Dumping structure for table kri.univ
DROP TABLE IF EXISTS `univ`;
CREATE TABLE IF NOT EXISTS `univ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Dumping data for table kri.univ: ~28 rows (approximately)
DELETE FROM `univ`;
/*!40000 ALTER TABLE `univ` DISABLE KEYS */;
INSERT INTO `univ` (`id`, `nama`) VALUES
	(1, 'Institut Sains dan Teknologi AKPRIND Yogyakarta'),
	(2, 'Politeknik Mekatronika Sanata Dharma'),
	(3, 'Politeknik Negeri Banjarmasin'),
	(4, 'Politeknik Negeri Cilacap'),
	(5, 'Politeknik Negeri Samarinda'),
	(6, 'Politeknik Negeri Semarang'),
	(7, 'Sekolah Tinggi Teknik Wiworotomo Purwokerto'),
	(8, 'Sekolah Tinggi Teknologi Nasional Yogyakarta'),
	(9, 'Sekolah Tinggi Teknologi Nuklir Yogyakarta'),
	(10, 'STMIK Banjarbaru'),
	(11, 'Universitas Ahmad Dahlan'),
	(12, 'Universitas Dian Nuswantoro'),
	(13, 'Universitas Diponegoro'),
	(14, 'Universitas Gadjah Mada'),
	(15, 'Universitas Islam Indonesia'),
	(16, 'Universitas Islam Sultan Agung'),
	(17, 'Universitas Jenderal Soedirman'),
	(18, 'Universitas Kristen Satya Wacana'),
	(19, 'Universitas Muhammadiyah Surakarta'),
	(20, 'Universitas Muhammadiyah Yogyakarta'),
	(21, 'Universitas Negeri Semarang'),
	(22, 'Universitas Negeri Yogyakarta'),
	(23, 'Universitas PGRI Semarang'),
	(24, 'Universitas Sanata Dharma'),
	(25, 'Universitas Sebelas Maret'),
	(26, 'Universitas Semarang'),
	(27, 'Universitas Teknologi Yogyakarta'),
	(28, 'Universitas Wahid Hasyim');
/*!40000 ALTER TABLE `univ` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
