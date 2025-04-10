-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2025 at 04:39 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_parkir_elgiansyah`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `plat_nomor` int NOT NULL,
  `merek` varchar(10) DEFAULT NULL,
  `jenis_kendaraan` varchar(50) NOT NULL,
  `tahun` int DEFAULT NULL,
  `no_parkir` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`plat_nomor`, `merek`, `jenis_kendaraan`, `tahun`, `no_parkir`) VALUES
(11, 'Porche', 'Mobil', 2002, 1),
(12, 'Porche', 'Mobil', 2013, 2),
(13, 'lamborgini', 'Mobil', 2012, 3),
(14, 'honda', 'Motor', 2004, 4),
(15, 'yamaha', 'Motor', 2016, 5);

-- --------------------------------------------------------

--
-- Table structure for table `parkir`
--

CREATE TABLE `parkir` (
  `no_parkir` int NOT NULL,
  `lokasi` varchar(10) DEFAULT NULL,
  `tarif_parkir` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `parkir`
--

INSERT INTO `parkir` (`no_parkir`, `lokasi`, `tarif_parkir`) VALUES
(1, 'kampus 1', 2000),
(2, 'kampus 2', 3000),
(3, 'kampus 1', 2000),
(4, 'kampus 1', 2000),
(5, 'kampus 2', 3000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`plat_nomor`),
  ADD KEY `no_parkir` (`no_parkir`);

--
-- Indexes for table `parkir`
--
ALTER TABLE `parkir`
  ADD PRIMARY KEY (`no_parkir`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD CONSTRAINT `kendaraan_ibfk_1` FOREIGN KEY (`no_parkir`) REFERENCES `parkir` (`no_parkir`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
