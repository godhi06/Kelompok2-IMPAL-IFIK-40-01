-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2019 at 09:31 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elon shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idBarang` varchar(10) NOT NULL,
  `namaBarang` varchar(25) NOT NULL,
  `jmlStok` int(11) NOT NULL,
  `hargaBarang` int(11) NOT NULL,
  `ketBarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idBarang`, `namaBarang`, `jmlStok`, `hargaBarang`, `ketBarang`) VALUES
('BR001', 'Kulkas', 10, 3000000, 'second'),
('BR002', 'AC', 8, 2500000, 'second'),
('BR003', 'Microwave', 2, 1000000, 'second'),
('BR004', 'TV', 4, 1200000, 'second'),
('BR005', 'Dispenser', 1, 800000, 'second');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `IdKaryawan` varchar(10) NOT NULL,
  `namaKaryawan` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`IdKaryawan`, `namaKaryawan`, `username`) VALUES
('BB01', 'Bambang', 'bambank'),
('FR05', 'Firman', 'firmantap'),
('HD03', 'Hendra', 'hendraft'),
('RH04', 'Rahmat', 'dirahmati'),
('SR02', 'Satrio', 'masatrio');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('andidna', 'abc123'),
('bambank', 'pqr678'),
('budiman', 'def456'),
('dirahmati', 'yza567'),
('firmantap', 'bcd890'),
('hendraft', 'vwx234'),
('kerjarudi', 'mno345'),
('masatrio', 'stu901'),
('ratnarok', 'jkl012'),
('tinaman', 'ghi789');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idPelanggan` varchar(10) NOT NULL,
  `namaPelanggan` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `noTlp` varchar(12) NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idPelanggan`, `namaPelanggan`, `alamat`, `noTlp`, `username`) VALUES
('00001', 'Andi', 'bandung', '081862787694', 'andidna'),
('00002', 'Budi', 'solo', '082282019987', 'budiman'),
('00003', 'Tina', 'semarang', '089809765543', 'tinaman'),
('00004', 'Ratn', 'cimahi', '082298876687', 'ratnarok'),
('00005', 'Rudi', 'jakarta', '089800319765', 'kerjarudi');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `IdPembayaran` varchar(10) NOT NULL,
  `tglPembayaran` date DEFAULT NULL,
  `totalBayar` int(11) NOT NULL,
  `metodePembayaran` varchar(30) NOT NULL,
  `IdPemesanan` varchar(10) NOT NULL,
  `IdPelanggan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`IdPembayaran`, `tglPembayaran`, `totalBayar`, `metodePembayaran`, `IdPemesanan`, `IdPelanggan`) VALUES
('PAY001', '2019-01-18', 3000000, 'MANDIRI', '01', '00001'),
('PAY002', '2019-01-20', 2500000, 'MANDIRI', '02', '00004'),
('PAY003', '2019-01-20', 3000000, 'MANDIRI', '03', '00003'),
('PAY004', '2019-01-21', 800000, 'MANDIRI', '04', '00002'),
('PAY005', '2019-01-22', 1200000, 'MANDIRI', '05', '00005');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `IdPemesanan` varchar(10) NOT NULL,
  `jmlPemesanan` char(5) NOT NULL,
  `totalHarga` int(11) NOT NULL,
  `tglBeli` date NOT NULL,
  `idPelanggan` varchar(10) NOT NULL,
  `idBarang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`IdPemesanan`, `jmlPemesanan`, `totalHarga`, `tglBeli`, `idPelanggan`, `idBarang`) VALUES
('01', '1', 3000000, '2019-01-18', '00001', 'BR001'),
('02', '1', 2500000, '2019-01-20', '00004', 'BR002'),
('03', '1', 3000000, '2019-01-20', '00003', 'BR001'),
('04', '1', 800000, '2019-01-21', '00002', 'BR005'),
('05', '1', 1200000, '2019-01-22', '00005', 'BR004');

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `resiPengiriman` varchar(15) NOT NULL,
  `namaEkspedisi` varchar(20) NOT NULL,
  `alamatPengiriman` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `idPembayaran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`resiPengiriman`, `namaEkspedisi`, `alamatPengiriman`, `status`, `idPembayaran`) VALUES
('0001117712', 'JNE', 'Jakarta', 'On Process', 'PAY005'),
('0001228400', 'JNE', 'Semarang', 'On Process', 'PAY003'),
('0002001922', 'JNE', 'Bandung', 'On Process', 'PAY001'),
('0004455700', 'JNE', 'Solo', 'On Process', 'PAY004'),
('0033980013', 'JNE', 'Cimahi', 'On Process', 'PAY002');

-- --------------------------------------------------------

--
-- Table structure for table `rekappenjualan`
--

CREATE TABLE `rekappenjualan` (
  `idRekapJual` varchar(10) NOT NULL,
  `tanggalRekap` date NOT NULL,
  `totalPenjualan` int(11) NOT NULL,
  `idPembayaran` varchar(10) NOT NULL,
  `idKaryawan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekappenjualan`
--

INSERT INTO `rekappenjualan` (`idRekapJual`, `tanggalRekap`, `totalPenjualan`, `idPembayaran`, `idKaryawan`) VALUES
('RKP001', '2019-01-18', 1, 'PAY001', 'BB01'),
('RKP002', '2019-01-20', 1, 'PAY002', 'RH04'),
('RKP003', '2019-01-20', 1, 'PAY003', 'FR05'),
('RKP004', '2019-01-21', 1, 'PAY004', 'HD03'),
('RKP005', '2019-01-22', 1, 'PAY005', 'SR02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`IdKaryawan`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idPelanggan`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`IdPembayaran`),
  ADD KEY `IdPemesanan` (`IdPemesanan`),
  ADD KEY `IdPelanggan` (`IdPelanggan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`IdPemesanan`),
  ADD KEY `idPelanggan` (`idPelanggan`),
  ADD KEY `idBarang` (`idBarang`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`resiPengiriman`),
  ADD KEY `idPembayaran` (`idPembayaran`);

--
-- Indexes for table `rekappenjualan`
--
ALTER TABLE `rekappenjualan`
  ADD PRIMARY KEY (`idRekapJual`),
  ADD KEY `idPembayaran` (`idPembayaran`),
  ADD KEY `idKaryawan` (`idKaryawan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`IdPemesanan`) REFERENCES `pemesanan` (`IdPemesanan`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`IdPelanggan`) REFERENCES `pelanggan` (`idPelanggan`) ON DELETE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`idPelanggan`) REFERENCES `pelanggan` (`idPelanggan`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`) ON DELETE CASCADE;

--
-- Constraints for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`idPembayaran`) REFERENCES `pembayaran` (`IdPembayaran`) ON DELETE CASCADE;

--
-- Constraints for table `rekappenjualan`
--
ALTER TABLE `rekappenjualan`
  ADD CONSTRAINT `rekappenjualan_ibfk_1` FOREIGN KEY (`idPembayaran`) REFERENCES `pembayaran` (`IdPembayaran`) ON DELETE CASCADE,
  ADD CONSTRAINT `rekappenjualan_ibfk_2` FOREIGN KEY (`idKaryawan`) REFERENCES `karyawan` (`IdKaryawan`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
