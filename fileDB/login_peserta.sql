-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2025 at 10:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autw8743_automation_week`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_peserta`
--

CREATE TABLE `login_peserta` (
  `id_peserta` int(11) NOT NULL,
  `nama_tim` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nama_anggota1` varchar(255) NOT NULL,
  `nama_anggota2` varchar(255) NOT NULL,
  `sekolah` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `jenis_lomba` varchar(100) NOT NULL,
  `bidanglomba` varchar(255) NOT NULL,
  `judul_abstrak` varchar(500) NOT NULL,
  `demo` varchar(10) NOT NULL,
  `proses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_peserta`
--

INSERT INTO `login_peserta` (`id_peserta`, `nama_tim`, `nama`, `nama_anggota1`, `nama_anggota2`, `sekolah`, `email`, `telp`, `pass`, `jenis_lomba`, `bidanglomba`, `judul_abstrak`, `demo`, `proses`) VALUES
(165, 'PERINTIS HORE', 'FALUN', '', '', 'SMKN 99', 'TEST@GMAIL.COM', '092304004567', '85f922d77ee3e4e67d0bc474d8792370', 'ffr', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_peserta`
--
ALTER TABLE `login_peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_peserta`
--
ALTER TABLE `login_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
