-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2024 at 11:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
(1, 'Sinomderajat', 'gerung lingsar', 'https://picsum.photos/id/1/200/300'),
(5, 'yuais', 'akjsbd', 'https://fastly.picsum.photos/id/731/200/200.jpg?hmac=f28-4BBT0mjsAystSYFss8hXUcYGvzvo054jqaZG4i0'),
(6, 'anjer', 'auauau', 'gambar'),
(7, 'asjkbd', 'akjsbd', 'ajsbjd'),
(8, 'yuai', 'akjsbd', 'https://fastly.picsum.photos/id/731/200/200.jpg?hmac=f28-4BBT0mjsAystSYFss8hXUcYGvzvo054jqaZG4i0');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int NOT NULL,
  `nama_event` varchar(255) NOT NULL,
  `tanggal_event` varchar(255) NOT NULL,
  `lokasi_event` varchar(255) NOT NULL,
  `deskripsi` varchar(755) NOT NULL,
  `gambar` varchar(755) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `nama_event`, `tanggal_event`, `lokasi_event`, `deskripsi`, `gambar`) VALUES
(1, 'cosplay', '09-08-2024', 'gunung jae', 'blablabla', 'https://awsimages.detik.net.id/community/media/visual/2023/04/02/kak-ariela_43.jpeg?w=1200'),
(3, '1', '1', '1', '1', '1');

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
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `nama_wisata`, `gambar`, `jam_layanan`, `jam_tutup`, `alamat`) VALUES
(1, 'Gunung Jae ', 'https://img.okezone.com/content/2021/08/02/408/2449387/pesona-alam-gunung-jae-lombok-dulunya-bekas-tambang-kini-jadi-wisata-eksotis-rr6hQkHz89.JPG', '17', '17', 'Sedao');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartemen`
--
ALTER TABLE `apartemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
