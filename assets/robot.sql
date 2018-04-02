-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 01:33 AM
-- Server version: 5.7.18
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `kdadmin` varchar(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`kdadmin`, `nama`, `username`, `password`) VALUES
('ADM01', 'Administrator', 'admin', '81e95835046de8e21179722d66abaa3bfb7856a3');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(5) NOT NULL,
  `id_univ` int(5) NOT NULL DEFAULT '0',
  `id_divisi` int(5) NOT NULL DEFAULT '0',
  `id_peserta` int(5) NOT NULL DEFAULT '0',
  `jenis` enum('MHS','PDP','MKN') DEFAULT NULL,
  `nama` varchar(100) NOT NULL DEFAULT '0',
  `npm` varchar(100) NOT NULL DEFAULT '0',
  `jabatan` varchar(100) NOT NULL DEFAULT '0',
  `no_hp` varchar(100) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `foto` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `id_univ`, `id_divisi`, `id_peserta`, `jenis`, `nama`, `npm`, `jabatan`, `no_hp`, `email`, `foto`) VALUES
(1, 11, 1, 6, 'MHS', 'Anggit Febriawan', '0', '0', '0', '0', '0'),
(2, 13, 0, 8, 'MHS', 'aris tri', '15670058', '0', '081327783279', 'aristrijaka@gmail.com', 'PMB_Channel1.jpg'),
(3, 13, 0, 8, 'MHS', 'aris tri', '15670058', '0', '081327783279', 'aristrijaka@gmail.com', 'PMB_Channel2.jpg'),
(4, 13, 0, 8, 'MHS', 'aris tri', '15670058', '0', '081327783279', 'aristrijaka@gmail.com', 'PMB_Channel3.jpg'),
(5, 13, 0, 29, 'MHS', 'aris tri', '15670058', '0', '081327783279', 'aristrijaka@gmail.com', 'bioma.jpg'),
(6, 5, 0, 21, 'MHS', 'aris tri', '15670058', '0', '081327783279', 'aristrijaka@gmail.com', 'Lawang_Sewu_Setelah_di_Pugar.jpg'),
(7, 5, 0, 21, 'MHS', 'bptik upgris', '15670058', '0', '081327783279', 'bptik@upgris.ac.id', 'Logo_ALPTKSI.png');

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `divisi` varchar(50) NOT NULL DEFAULT '0',
  `peserta` int(2) NOT NULL DEFAULT '0',
  `pendamping` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id`, `divisi`, `peserta`, `pendamping`) VALUES
(1, 'KRAI', 3, 1),
(2, 'KRPAI Berkaki', 2, 1),
(3, 'KRSBI Beroda', 4, 1),
(4, 'KRSTI', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `tim` varchar(50) NOT NULL DEFAULT '0',
  `id_univ` int(11) NOT NULL DEFAULT '0',
  `id_divisi` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `idreg` int(10) NOT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `nameofcp` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `s_title` varchar(10) DEFAULT NULL,
  `s_fname` varchar(30) DEFAULT NULL,
  `s_lname` varchar(30) DEFAULT NULL,
  `s_gender` enum('Male','Female') DEFAULT NULL,
  `s_position` varchar(50) DEFAULT NULL,
  `s_email` varchar(50) DEFAULT NULL,
  `s_telp` varchar(15) DEFAULT NULL,
  `s_mobile` varchar(15) DEFAULT NULL,
  `s_foodrest` text,
  `s_package` varchar(50) DEFAULT NULL,
  `s_arrival` text,
  `s_departure` text,
  `c_title` varchar(10) DEFAULT NULL,
  `c_fname` varchar(30) DEFAULT NULL,
  `c_lname` varchar(30) DEFAULT NULL,
  `c_gender` enum('Male','Female') DEFAULT NULL,
  `c_position` varchar(50) DEFAULT NULL,
  `c_email` varchar(50) DEFAULT NULL,
  `c_telp` varchar(15) DEFAULT NULL,
  `c_mobile` varchar(15) DEFAULT NULL,
  `c_foodrest` text,
  `c_package` varchar(50) DEFAULT NULL,
  `c_arrival` text,
  `c_departure` text,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`idreg`, `institution`, `nameofcp`, `position`, `email`, `mobile`, `s_title`, `s_fname`, `s_lname`, `s_gender`, `s_position`, `s_email`, `s_telp`, `s_mobile`, `s_foodrest`, `s_package`, `s_arrival`, `s_departure`, `c_title`, `c_fname`, `c_lname`, `c_gender`, `c_position`, `c_email`, `c_telp`, `c_mobile`, `c_foodrest`, `c_package`, `c_arrival`, `c_departure`, `create_at`, `update_at`) VALUES
(2, 'Universitas PGRI Semarangs', 'Parjono', 'Righttor', 'parjono@gmail.com', '087833225300', 'Mr.', 'Maheswari', '', 'Male', 'Mahasiswa', 'maheswari@gmail.com', '', '087833225300', 'Kerang', '2', 'pokoke1', 'pokoke1', 'Mr.', 'Parjono', '', 'Male', 'Dosen', 'dosen@gmail.com', '', '087833225300', 'bubur', '1', 'pokoke2', 'pokoke2', '2017-04-18 09:33:34', '2017-04-18 09:33:34'),
(3, 'Univ Maret yes', 'dsa', 'dsa', 'fahmi.foel@gmail.com', '432432', 'Mr.', 'dsa', '', 'Male', 'dsad', 'fahmi.foel@gmail.com', '', '432432', 'dasd', '2', 'dsa', 'dsa', 'Prof.', 'dsa', '', 'Male', 'das', 'fahmi.foel@gmail.com', '', '432432', 'dsad', '1', 'dsa', 'ds', '2017-04-18 08:45:23', '2017-04-18 08:45:23'),
(6, 'Universitas Semarang', 'Paijo', 'Leader', 'paijo@gmail.com', '087833225300', 'Mr.', 'Ridwan', 'Kamil', 'Male', 'Student', 'ridwan@gmail.com', '087833225300', '087833225300', 'fastfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', 'Prof.', 'Suprana', 'Lala', 'Male', 'Coordinator', 'suprahonda@gmail.com', '087833225300', '087833225300', 'junkfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', '2017-04-18 09:57:45', '0000-00-00 00:00:00'),
(7, 'Universitas Semarang', 'Paijo', 'Leader', 'paijo@gmail.com', '087833225300', 'Mr.', 'Ridwan', 'Kamil', 'Male', 'Student', 'ridwan@gmail.com', '087833225300', '087833225300', 'fastfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', 'Prof.', 'Suprana', 'Lala', 'Male', 'Coordinator', 'suprahonda@gmail.com', '087833225300', '087833225300', 'junkfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', '2017-04-18 09:57:45', '0000-00-00 00:00:00'),
(8, 'Universitas Semarang', 'Paijo', 'Leader', 'paijo@gmail.com', '087833225300', 'Mr.', 'Ridwan', 'Kamil', 'Male', 'Student', 'ridwan@gmail.com', '087833225300', '087833225300', 'fastfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', 'Prof.', 'Suprana', 'Lala', 'Male', 'Coordinator', 'suprahonda@gmail.com', '087833225300', '087833225300', 'junkfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', '2017-04-18 09:57:45', '0000-00-00 00:00:00'),
(9, 'Univ Maret yes', 'dsa', 'dsa', 'fahmi.foel@gmail.com', '432432', 'Mr.', 'dsa', '', 'Male', 'dsad', 'fahmi.foel@gmail.com', '', '432432', 'dasd', '2', 'dsa', 'dsa', 'Prof.', 'dsa', '', 'Male', 'das', 'fahmi.foel@gmail.com', '', '432432', 'dsad', '1', 'dsa', 'ds', '2017-04-18 08:45:23', '2017-04-18 08:45:23'),
(10, 'Universitas PGRI Semarangs', 'Parjono', 'Righttor', 'parjono@gmail.com', '087833225300', 'Mr.', 'Maheswari', '', 'Male', 'Mahasiswa', 'maheswari@gmail.com', '', '087833225300', 'Kerang', '2', 'pokoke1', 'pokoke1', 'Mr.', 'Parjono', '', 'Male', 'Dosen', 'dosen@gmail.com', '', '087833225300', 'bubur', '1', 'pokoke2', 'pokoke2', '2017-04-18 09:33:34', '2017-04-18 09:33:34'),
(11, 'Universitas PGRI Semarangs', 'Parjono', 'Righttor', 'parjono@gmail.com', '087833225300', 'Mr.', 'Maheswari', '', 'Male', 'Mahasiswa', 'maheswari@gmail.com', '', '087833225300', 'Kerang', '2', 'pokoke1', 'pokoke1', 'Mr.', 'Parjono', '', 'Male', 'Dosen', 'dosen@gmail.com', '', '087833225300', 'bubur', '1', 'pokoke2', 'pokoke2', '2017-04-18 09:33:34', '2017-04-18 09:33:34'),
(12, 'Universitas PGRI Semarangs', 'Parjono', 'Righttor', 'parjono@gmail.com', '087833225300', 'Mr.', 'Maheswari', '', 'Male', 'Mahasiswa', 'maheswari@gmail.com', '', '087833225300', 'Kerang', '2', 'pokoke1', 'pokoke1', 'Mr.', 'Parjono', '', 'Male', 'Dosen', 'dosen@gmail.com', '', '087833225300', 'bubur', '1', 'pokoke2', 'pokoke2', '2017-04-18 09:33:34', '2017-04-18 09:33:34'),
(13, 'Univ Maret yes', 'dsa', 'dsa', 'fahmi.foel@gmail.com', '432432', 'Mr.', 'dsa', '', 'Male', 'dsad', 'fahmi.foel@gmail.com', '', '432432', 'dasd', '2', 'dsa', 'dsa', 'Prof.', 'dsa', '', 'Male', 'das', 'fahmi.foel@gmail.com', '', '432432', 'dsad', '1', 'dsa', 'ds', '2017-04-18 08:45:23', '2017-04-18 08:45:23'),
(14, 'Universitas Semarang', 'Paijo', 'Leader', 'paijo@gmail.com', '087833225300', 'Mr.', 'Ridwan', 'Kamil', 'Male', 'Student', 'ridwan@gmail.com', '087833225300', '087833225300', 'fastfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', 'Prof.', 'Suprana', 'Lala', 'Male', 'Coordinator', 'suprahonda@gmail.com', '087833225300', '087833225300', 'junkfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', '2017-04-18 09:57:45', '0000-00-00 00:00:00'),
(15, 'Universitas Semarang', 'Paijo', 'Leader', 'paijo@gmail.com', '087833225300', 'Mr.', 'Ridwan', 'Kamil', 'Male', 'Student', 'ridwan@gmail.com', '087833225300', '087833225300', 'fastfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', 'Prof.', 'Suprana', 'Lala', 'Male', 'Coordinator', 'suprahonda@gmail.com', '087833225300', '087833225300', 'junkfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', '2017-04-18 09:57:45', '0000-00-00 00:00:00'),
(16, 'Universitas Semarang', 'Paijo', 'Leader', 'paijo@gmail.com', '087833225300', 'Mr.', 'Ridwan', 'Kamil', 'Male', 'Student', 'ridwan@gmail.com', '087833225300', '087833225300', 'fastfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', 'Prof.', 'Suprana', 'Lala', 'Male', 'Coordinator', 'suprahonda@gmail.com', '087833225300', '087833225300', 'junkfood', '1', 'Saturday, 16:00 ASIA', 'Saturday, 16:00 ASIA', '2017-04-18 09:57:45', '0000-00-00 00:00:00'),
(17, 'Universitas PGRI Semarangs', 'Parjono', 'Righttor', 'parjono@gmail.com', '087833225300', 'Mr.', 'Maheswari', '', 'Male', 'Mahasiswa', 'maheswari@gmail.com', '', '087833225300', 'Kerang', '2', 'pokoke1', 'pokoke1', 'Mr.', 'Parjono', '', 'Male', 'Dosen', 'dosen@gmail.com', '', '087833225300', 'bubur', '1', 'pokoke2', 'pokoke2', '2017-04-18 09:33:34', '2017-04-18 09:33:34'),
(18, 'Universitas PGRI Semarangs', 'Parjono', 'Righttor', 'parjono@gmail.com', '087833225300', 'Mr.', 'Maheswari', '', 'Male', 'Mahasiswa', 'maheswari@gmail.com', '', '087833225300', 'Kerang', '2', 'pokoke1', 'pokoke1', 'Mr.', 'Parjono', '', 'Male', 'Dosen', 'dosen@gmail.com', '', '087833225300', 'bubur', '1', 'pokoke2', 'pokoke2', '2017-04-18 09:33:34', '2017-04-18 09:33:34'),
(19, 'Universitas PGRI Semarangs', 'Parjono', 'Righttor', 'parjono@gmail.com', '087833225300', 'Mr.', 'Maheswari', '', 'Male', 'Mahasiswa', 'maheswari@gmail.com', '', '087833225300', 'Kerang', '2', 'pokoke1', 'pokoke1', 'Mr.', 'Parjono', '', 'Male', 'Dosen', 'dosen@gmail.com', '', '087833225300', 'bubur', '1', 'pokoke2', 'pokoke2', '2017-04-18 09:33:34', '2017-04-18 09:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `univ`
--

CREATE TABLE `univ` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `univ`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kdadmin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`idreg`);

--
-- Indexes for table `univ`
--
ALTER TABLE `univ`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `idreg` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `univ`
--
ALTER TABLE `univ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
