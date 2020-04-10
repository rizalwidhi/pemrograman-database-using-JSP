-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2020 at 06:34 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snack`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kemasan` varchar(10) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `produk` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `kemasan`, `jenis`, `produk`) VALUES
('A006', 'Piatoz', '150', 'chiki', 'WingsFood'),
('B001', 'Malkis ', '50', 'wafer', 'Mayora'),
('B002', 'Chitato', '200', 'chiki', 'GarudaFood'),
('B003', 'Cheetos', '200', 'chiki', 'WingsFood'),
('B004', 'Calbee Jagabee Potato Stick', '250', 'kripik', 'TPS Food'),
('B006', 'Mi Lidi Mih Iteung', '100', 'Mie', 'Aloha Food Industri, PT.'),
('B007', 'Indofood LayÃ¢??s Nori Seaweed Flavor', '300', 'kripik', 'IndoFood'),
('B008', 'Tohato Caramel Corn', '250', 'Kacang Polong', 'GarudaFood'),
('B009', ' Indofood Cheetos Puffs BBQ Steak Flavor', '300', 'chiki', 'IndoFood'),
('B010', 'Glico PRETZ Pizza', '150', 'kripik', 'Modernfood Industri, PT.'),
('B011', 'Pringles Sour Cream & Onion', '300', 'kripik', 'Aloha Food Industri, PT.'),
('B012', 'Calbee Kappa Ebisen', '250', 'chiki', 'Kino Sentra Industrindo,'),
('B013', 'Ei Salted Egg Crispy Chicken Skin', '250', 'kripik', 'TPS Food'),
('B014', 'Irvins Salted Egg Fish Skin', '250', 'kripik', 'Mayora'),
('B015', 'Go Potato', '250', 'wafer', 'Siantar Top'),
('B016', 'GoRioRio', '100', 'wafer', 'Siantar Top'),
('B017', 'Qtela Singkong Balado', '100', 'kripik', 'IndoFood'),
('B018', 'Sari Gandum Sandwich Peanut Butter', '300', 'Biskuit', 'Mayora'),
('B019', 'Taro Net', '200', 'chiki', 'WingsFood'),
('B020', 'Lays', '250', 'kripik', 'Modernfood Industri, PT.'),
('B021', 'Chiki Balls', '250', 'chiki', 'Margajaya Mandiri Perkasa'),
('B022', 'Nabati Cheese Wafers', '300', 'wafer', 'Modernfood Industri, PT.'),
('B023', 'Kusuka', '250', 'kripik', 'WingsFood'),
('B024', 'Astor', '250', 'wafer', 'Mayora'),
('B025', 'Kit Kat', '100', 'wafer', 'Modernfood Industri, PT.'),
('B026', 'Pocky', '150', 'Biskuit', 'Aloha Food Industri, PT.'),
('B027', ' Lotte Choco Pie', '250', 'Biskuit', 'Modernfood Industri, PT.'),
('B028', 'KrisBee', '50', 'kripik', 'WingsFood'),
('B029', 'Happy Tos', '150', 'kripik', 'TPS Food'),
('B030', 'Beng Beng Share it', '50', 'wafer', 'Kino Sentra Industrindo,'),
('B031', 'Nyam-nyam Moo', '100', 'Biskuit', 'Mayora'),
('B032', 'GoodTime Cookies', '50', 'Biskuit', 'Aloha Food Industri, PT.'),
('B033', 'Momogi', '50', 'wafer', 'Siantar Top'),
('KJF5365', 'Tango', '150', 'wafer', 'GarudaFood');

-- --------------------------------------------------------

--
-- Table structure for table `detail_trans`
--

CREATE TABLE `detail_trans` (
  `no` int(11) NOT NULL,
  `id_trans` varchar(10) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_trans`
--

INSERT INTO `detail_trans` (`no`, `id_trans`, `id_barang`, `jumlah`, `harga`) VALUES
(5, 'T02', 'A006', 1, 4500),
(6, 'T03', 'KJF5365', 5, 2000),
(7, 'T03', 'B002', 5, 6000),
(8, 'T04', 'B001', 5, 5000),
(9, 'T05', 'B001', 3, 4500),
(10, 'T06', 'KJF5365', 5, 2000),
(11, 'T07', 'B003', 10, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(10) NOT NULL,
  `jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `jenis`) VALUES
(1, 'chiki'),
(2, 'kripik'),
(3, 'kacang'),
(4, 'wafer'),
(5, 'Kacang Polong'),
(6, 'Kacang Atom'),
(7, 'Makaroni'),
(8, 'Mie '),
(9, 'Permen'),
(10, 'Biskuit');

-- --------------------------------------------------------

--
-- Table structure for table `kemasan`
--

CREATE TABLE `kemasan` (
  `id_kemasan` int(10) NOT NULL,
  `ukuran_kemasan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kemasan`
--

INSERT INTO `kemasan` (`id_kemasan`, `ukuran_kemasan`) VALUES
(1, '200'),
(2, '150'),
(3, '100'),
(4, '50'),
(5, '250'),
(6, '300');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) NOT NULL,
  `produk` varchar(25) NOT NULL,
  `tgl_expayed` date NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `produk`, `tgl_expayed`, `keterangan`) VALUES
(1, 'WingsFood', '2019-12-10', 'Halal'),
(2, 'Mayora', '2019-12-31', 'Halal'),
(3, 'GarudaFood', '2019-12-14', 'Halal'),
(4, 'TPS Food', '2022-01-13', 'Halal'),
(5, 'Siantar Top', '2022-01-13', 'Halal'),
(7, 'Kino Sentra Industrindo, ', '2021-11-10', 'Makanan Ringan'),
(8, 'Margajaya Mandiri Perkasa', '2021-11-10', 'makanan ringan'),
(9, 'Modernfood Industri, PT.', '2022-07-15', 'Makanan Ringan'),
(10, 'Aloha Food Industri, PT.', '2022-11-15', 'makanan ringan'),
(11, 'IndoFood', '2023-01-13', 'Makanan Ringan');

-- --------------------------------------------------------

--
-- Table structure for table `produsen`
--

CREATE TABLE `produsen` (
  `id_produsen` varchar(10) NOT NULL,
  `nama_produsen` varchar(50) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produsen`
--

INSERT INTO `produsen` (`id_produsen`, `nama_produsen`, `alamat`, `no_hp`) VALUES
('P002', 'Yusril Bintang', 'Wonogiri', '089543129864'),
('P003', 'Indo Food', 'Jl. Raya Cibubur', '021872652'),
('P004', 'CV Bola-bola', 'Jl. Setia Budi ', '5761253'),
('P005', 'UD. Baraka', 'Jl. Dr. Sutomo', '08534267926');

-- --------------------------------------------------------

--
-- Table structure for table `spk`
--

CREATE TABLE `spk` (
  `no` int(11) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `id_kemasan` int(10) NOT NULL,
  `id_jenis` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spn`
--

CREATE TABLE `spn` (
  `no` int(11) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `id_produsen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `st`
--

CREATE TABLE `st` (
  `no` int(11) NOT NULL,
  `id_produsen` varchar(10) NOT NULL,
  `id_trans` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `no` int(11) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`no`, `id_barang`, `stock`) VALUES
(9, 'A006', 20),
(12, 'B001', 10),
(14, 'KJF5365', 10),
(16, 'B002', 5),
(17, 'B003', 10),
(18, 'B007', 0),
(19, 'B004', 0),
(20, 'B006', 0),
(21, 'B008', 0),
(22, 'B009', 0),
(23, 'B010', 0),
(24, 'B011', 0),
(25, 'B012', 0),
(26, 'B013', 0),
(27, 'B014', 0),
(28, 'B015', 0),
(29, 'B016', 0),
(30, 'B017', 0),
(31, 'B018', 0),
(32, 'B019', 0),
(33, 'B020', 0),
(34, 'B021', 0),
(35, 'B022', 0),
(36, 'B023', 0),
(37, 'B024', 0),
(38, 'B025', 0),
(39, 'B026', 0),
(40, 'B027', 0),
(41, 'B028', 0),
(42, 'B029', 0),
(43, 'B030', 0),
(44, 'B031', 0),
(45, 'B032', 0),
(46, 'B033', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trans_pembelian`
--

CREATE TABLE `trans_pembelian` (
  `id_trans` varchar(10) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `id_produsen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans_pembelian`
--

INSERT INTO `trans_pembelian` (`id_trans`, `tgl_pembelian`, `id_produsen`) VALUES
('T02', '2020-01-13', 'P003'),
('T03', '2020-01-13', 'P003'),
('T04', '2020-01-13', 'P003'),
('T05', '2020-01-13', 'P003'),
('T06', '2020-01-13', 'P003'),
('T07', '2020-01-14', 'P003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_trans`
--
ALTER TABLE `detail_trans`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_trans` (`id_trans`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `kemasan`
--
ALTER TABLE `kemasan`
  ADD PRIMARY KEY (`id_kemasan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produsen`
--
ALTER TABLE `produsen`
  ADD PRIMARY KEY (`id_produsen`);

--
-- Indexes for table `spk`
--
ALTER TABLE `spk`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_barang` (`id_barang`,`id_produk`,`id_kemasan`,`id_jenis`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_kemasan` (`id_kemasan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `spn`
--
ALTER TABLE `spn`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_barang` (`id_barang`,`id_produsen`),
  ADD KEY `id_produsen` (`id_produsen`);

--
-- Indexes for table `st`
--
ALTER TABLE `st`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_produsen` (`id_produsen`),
  ADD KEY `id_trans` (`id_trans`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `trans_pembelian`
--
ALTER TABLE `trans_pembelian`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `id_produsen` (`id_produsen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_trans`
--
ALTER TABLE `detail_trans`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_trans`
--
ALTER TABLE `detail_trans`
  ADD CONSTRAINT `detail_trans_ibfk_1` FOREIGN KEY (`id_trans`) REFERENCES `trans_pembelian` (`id_trans`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `spk`
--
ALTER TABLE `spk`
  ADD CONSTRAINT `spk_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id_jenis`),
  ADD CONSTRAINT `spk_ibfk_2` FOREIGN KEY (`id_kemasan`) REFERENCES `kemasan` (`id_kemasan`),
  ADD CONSTRAINT `spk_ibfk_3` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `spk_ibfk_4` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Constraints for table `spn`
--
ALTER TABLE `spn`
  ADD CONSTRAINT `spn_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `spn_ibfk_2` FOREIGN KEY (`id_produsen`) REFERENCES `produsen` (`id_produsen`);

--
-- Constraints for table `st`
--
ALTER TABLE `st`
  ADD CONSTRAINT `st_ibfk_1` FOREIGN KEY (`id_produsen`) REFERENCES `produsen` (`id_produsen`),
  ADD CONSTRAINT `st_ibfk_2` FOREIGN KEY (`id_trans`) REFERENCES `trans_pembelian` (`id_trans`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
