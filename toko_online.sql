-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 11:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian_game`
--

CREATE TABLE `detail_pembelian_game` (
  `id_detail_pembelian_game` int(11) NOT NULL,
  `id_pembelian_game` int(11) NOT NULL,
  `id_game` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pembelian_game`
--

INSERT INTO `detail_pembelian_game` (`id_detail_pembelian_game`, `id_pembelian_game`, `id_game`, `id_user`, `qty`) VALUES
(1, 1, 3, 1, 1),
(2, 2, 4, 2, 1),
(3, 3, 4, 1, 30),
(4, 4, 4, 2, 1),
(5, 5, 2, 1, 1),
(6, 6, 5, 2, 1),
(7, 7, 4, 3, 1),
(8, 8, 7, 3, 1),
(9, 9, 2, 3, 30),
(10, 10, 3, 2, 1),
(11, 10, 1, 2, 1),
(12, 11, 2, 2, 3),
(13, 11, 3, 2, 1),
(14, 12, 3, 1, 1000),
(15, 12, 6, 1, 100),
(16, 13, 3, 7, 1),
(17, 14, 2, 8, 20),
(18, 15, 3, 8, 5),
(19, 15, 5, 8, 10),
(20, 16, 3, 11, 1),
(21, 17, 5, 15, 100000),
(23, 19, 3, 16, 1),
(24, 20, 3, 17, 1),
(26, 21, 2, 16, 1),
(28, 23, 1, 16, 1),
(30, 25, 2, 16, 1),
(31, 26, 7, 16, 1),
(33, 26, 6, 16, 1),
(34, 27, 4, 16, 1),
(35, 28, 11, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `nama_game` varchar(100) NOT NULL,
  `developer` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_release` date NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `harga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id_game`, `nama_game`, `developer`, `deskripsi`, `foto`, `tanggal_release`, `publisher`, `harga`) VALUES
(11, 'bungaaa', 'emill', 'bungaa tulip', 'pidio.jpg', '2023-12-06', 'emillia', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_game`
--

CREATE TABLE `pembelian_game` (
  `id_pembelian_game` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian_game`
--

INSERT INTO `pembelian_game` (`id_pembelian_game`, `id_user`, `tanggal_beli`) VALUES
(1, 1, '2023-10-16'),
(2, 2, '2023-10-16'),
(3, 1, '2023-10-16'),
(4, 2, '2023-10-16'),
(5, 1, '2023-10-16'),
(6, 2, '2023-10-16'),
(7, 3, '2023-10-16'),
(8, 3, '2023-10-16'),
(9, 3, '2023-10-16'),
(10, 2, '2023-10-16'),
(11, 2, '2023-10-16'),
(12, 1, '2023-10-16'),
(13, 7, '2023-10-16'),
(14, 8, '2023-10-16'),
(15, 8, '2023-10-16'),
(16, 11, '2023-10-17'),
(17, 15, '2023-10-18'),
(18, 16, '2023-10-19'),
(19, 16, '2023-10-19'),
(20, 17, '2023-10-19'),
(21, 16, '2023-10-19'),
(22, 16, '2023-10-19'),
(23, 16, '2023-10-19'),
(24, 16, '2023-10-19'),
(25, 16, '2023-10-19'),
(26, 16, '2023-10-19'),
(27, 16, '2023-10-19'),
(28, 19, '2023-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `penjual` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_beli`
--

CREATE TABLE `status_beli` (
  `id_status_beli` int(11) NOT NULL,
  `id_pembelian_game` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_beli`
--

INSERT INTO `status_beli` (`id_status_beli`, `id_pembelian_game`, `tanggal_pembelian`) VALUES
(1, 1, '2023-10-16'),
(2, 3, '2023-10-16'),
(3, 5, '2023-10-16'),
(4, 12, '2023-10-16'),
(5, 13, '2023-10-16'),
(6, 14, '2023-10-16'),
(7, 15, '2023-10-16'),
(8, 16, '2023-10-17'),
(9, 17, '2023-10-18'),
(13, 21, '2023-10-19'),
(14, 19, '2023-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` enum('pelanggan','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_pelanggan`, `tanggal_lahir`, `gender`, `alamat`, `username`, `pass`, `level`) VALUES
(1, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(2, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(3, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(5, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(7, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(8, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(9, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(10, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(11, 'brey', '2023-10-27', 'L', 'Tulungagung', 'idk', 'idk', 'pelanggan'),
(15, 'Joko', '2023-10-20', 'L', 'Pasuruan', 'nein', '9', 'admin'),
(16, 'Daniel', '2023-10-26', 'L', 'Tulungagung', 'ADMIN', '123', 'admin'),
(17, 'Tes2', '2023-10-18', 'P', 'eee', 'tes2', '123', 'pelanggan'),
(18, 'tes3', '2023-10-18', 'L', 'ddd', 'tes3', '123', 'pelanggan'),
(19, 'oren', '2023-12-06', 'L', 'bulawang', 'oren', '111', 'pelanggan'),
(20, 'emillia', '2023-12-14', 'P', 'pakisaji', 'mill', '111', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pembelian_game`
--
ALTER TABLE `detail_pembelian_game`
  ADD PRIMARY KEY (`id_detail_pembelian_game`),
  ADD KEY `id_pembelian_game` (`id_pembelian_game`,`id_game`),
  ADD KEY `id_game` (`id_game`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `pembelian_game`
--
ALTER TABLE `pembelian_game`
  ADD PRIMARY KEY (`id_pembelian_game`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `status_beli`
--
ALTER TABLE `status_beli`
  ADD PRIMARY KEY (`id_status_beli`),
  ADD KEY `id_pembelian_game` (`id_pembelian_game`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pembelian_game`
--
ALTER TABLE `detail_pembelian_game`
  MODIFY `id_detail_pembelian_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pembelian_game`
--
ALTER TABLE `pembelian_game`
  MODIFY `id_pembelian_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_beli`
--
ALTER TABLE `status_beli`
  MODIFY `id_status_beli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
