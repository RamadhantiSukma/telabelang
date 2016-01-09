-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2016 at 05:59 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `telabelang`
--

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE IF NOT EXISTS `jual` (
`id_jual` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `kategori_jual` varchar(100) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` text NOT NULL,
  `harga` double NOT NULL,
  `regional` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`id_jual`, `id_member`, `kategori_jual`, `nama_barang`, `keterangan`, `foto`, `harga`, `regional`) VALUES
(1, 1, 'Mobil', 'AVANZA Type G 2009 MT Tangerang', 'Mobil Bekas Â» Daihatsu Tangerang Selatan Kota', '128305993_1_94x72_triton-hdx-mantap-pekanbaru-kota.jpg', 120000, 'Brebes'),
(3, 1, 'Mobil', 'Over Kredit Sangat Santai Dantsun Go+ T Option 1.2 CC', 'Mobil Bekas Â» Datsun Garut Kab. ', 'mobil-toyota-rush.jpg', 20000000, 'Pemalang'),
(5, 1, 'Properti', 'Cepat Rumah Baru Daerah UPN Ready 3 Unit', 'oke kerangan', '19961469_1_94x72_cepat-rumah-baru-daerah-upn-ready-3-unit-surabaya-kota_rev002.jpg', 1200000, 'Pemalang'),
(6, 1, 'Industri', 'industri', 'ket okeeee', '6.PNG', 1000000, 'Slawi');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`id_member` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `telp` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `regional` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `telp`, `alamat`, `email`, `regional`, `password`, `foto`) VALUES
(1, 'Nandang Mulyadi', 2147483647, 'Desa Bogares Kidul Tegal', 'n@mail.com', 'Tegal', '202cb962ac59075b964b07152d234b70', '');

-- --------------------------------------------------------

--
-- Table structure for table `regional`
--

CREATE TABLE IF NOT EXISTS `regional` (
`id_reg` int(11) NOT NULL,
  `regional` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regional`
--

INSERT INTO `regional` (`id_reg`, `regional`) VALUES
(2, 'Tegal\r\n'),
(3, 'Brebes'),
(4, 'Slawi'),
(5, 'Pemalang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jual`
--
ALTER TABLE `jual`
 ADD PRIMARY KEY (`id_jual`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `regional`
--
ALTER TABLE `regional`
 ADD PRIMARY KEY (`id_reg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jual`
--
ALTER TABLE `jual`
MODIFY `id_jual` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `regional`
--
ALTER TABLE `regional`
MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
