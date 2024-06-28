-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2024 at 01:58 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile3`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartemen`
--

CREATE TABLE `apartemen` (
  `id` int NOT NULL,
  `nama_apartemen` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `gambar` varchar(755) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `apartemen`
--

INSERT INTO `apartemen` (`id`, `nama_apartemen`, `alamat`, `gambar`) VALUES
(1, 'Sinom apartemen', 'gerung lingsar', 'https://picsum.photos/id/1/200/300'),
(2, 'Riko apartemen', 'Lingsar jalan pahlawan', 'asldjbasu'),
(3, 'Riko apartemen 2', 'Lingsar jalan pahlawan', 'asldjbasu'),
(5, 'yuais', 'akjsbd', 'https://fastly.picsum.photos/id/731/200/200.jpg?hmac=f28-4BBT0mjsAystSYFss8hXUcYGvzvo054jqaZG4i0'),
(6, 'anjer', 'auauau', 'gambar'),
(7, 'asjkbd', 'akjsbd', 'ajsbjd'),
(8, 'yuai', 'akjsbd', 'https://fastly.picsum.photos/id/731/200/200.jpg?hmac=f28-4BBT0mjsAystSYFss8hXUcYGvzvo054jqaZG4i0');

-- --------------------------------------------------------

--
-- Table structure for table `event_wisata`
--

CREATE TABLE `event_wisata` (
  `id` int NOT NULL,
  `wisata_id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `tanggal_ditambahkan` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'hunter'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `nama`, `username`, `password`, `email`, `level`) VALUES
(9, 'Anies Voldigoad', 'amon', '123456', 'anise02@gmail.com', 'admin'),
(20, 'shirovon', 'shiro', '12345', 'shiro@gmail.com', 'user'),
(21, 'duasatu@gmail.com', 'satu', '12345678', 'duasatu', 'user'),
(22, '1', '1', '1', '1', 'user'),
(23, 'sinomderajat@gmail.com', 'sinom', '12345', 'sinom derajat', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` int NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `jam_layanan` varchar(255) NOT NULL,
  `jam_tutup` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartemen`
--
ALTER TABLE `apartemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_wisata`
--
ALTER TABLE `event_wisata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wisata_id` (`wisata_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartemen`
--
ALTER TABLE `apartemen`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `event_wisata`
--
ALTER TABLE `event_wisata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_wisata`
--
ALTER TABLE `event_wisata`
  ADD CONSTRAINT `event_wisata_ibfk_1` FOREIGN KEY (`wisata_id`) REFERENCES `wisata` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
