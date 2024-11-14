-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 03:50 PM
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
-- Database: `db_lembaga_pelatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `judul_agenda` varchar(255) NOT NULL,
  `tanggal_agenda` date NOT NULL,
  `waktu_agenda` time NOT NULL,
  `lokasi_agenda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `judul_agenda`, `tanggal_agenda`, `waktu_agenda`, `lokasi_agenda`) VALUES
(1, 'Orientation Day', '2024-10-10', '09:00:00', 'Gedung A Lantai 3'),
(2, 'Job Fair', '0024-10-20', '10:00:00', 'Aula Utama');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi_berita` text NOT NULL,
  `tanggal_publikasi` date NOT NULL,
  `foto_berita` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `isi_berita`, `tanggal_publikasi`, `foto_berita`) VALUES
(1, 'Pembukaan Batch 5', 'Pembukaan program pelatihan Batch 5 dimulai bulan ini.', '2024-11-12', 'batch5.jpg'),
(2, 'Workshop Data Science', 'Workshop mengenai Data Science akan diadakan minggu depan.', '2024-12-18', 'datascience.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `nilai_tugas` int(11) NOT NULL,
  `nilai_ujian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_peserta`, `id_program`, `nilai_tugas`, `nilai_ujian`) VALUES
(1, 1, 1, 85, 90),
(2, 1, 2, 78, 88);

-- --------------------------------------------------------

--
-- Table structure for table `prograam`
--

CREATE TABLE `prograam` (
  `id_program` int(11) NOT NULL,
  `nama_program` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `jadwal` text NOT NULL,
  `biaya` int(11) NOT NULL,
  `materi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prograam`
--

INSERT INTO `prograam` (`id_program`, `nama_program`, `deskripsi`, `jadwal`, `biaya`, `materi`) VALUES
(1, 'Positive Psychology', 'Program ini mengajarkan tentang ilmu psikologi positif yang membantu peserta untuk lebih fokus pada kekuatan diri dan bagaimana bersyukur dapat membantu kesehatan mental.', 'Setiap Senin dan Kamis', 1800000, 'Psikologi Positif, Psikologi Syukur, Pembentukan Karakter Positif');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--
-- Error reading structure for table db_lembaga_pelatihan.program: #1932 - Table &#039;db_lembaga_pelatihan.program&#039; doesn&#039;t exist in engine
-- Error reading data for table db_lembaga_pelatihan.program: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `db_lembaga_pelatihan`.`program`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `alamat_user` text NOT NULL,
  `no_telp_user` varchar(15) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_user` varchar(255) NOT NULL,
  `role_user` enum('Admin','Peserta','Tenaga Pelatih','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `alamat_user`, `no_telp_user`, `email_user`, `password`, `foto_user`, `role_user`) VALUES
(1, 'Najwa Shauna Azkia', 'Jl. Merdeka No.1', '085742239001', 'nashaazkiaaa@gmail.com', '', 'najwa.jpg', 'Admin'),
(2, 'Syahril Bimantara', 'Jl. Sejahtera No.2', '0895372001279', 'syahrilbimantara02@gmail.com', '', 'syahril.jpg', 'Peserta'),
(3, 'Dhya\'ul Fatihah Rohmana', 'Jl. Sudirman No.3', '082219238889', 'nadiadhyaul@gmail.com', '', 'dhyaul.jpg', 'Tenaga Pelatih');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `prograam`
--
ALTER TABLE `prograam`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prograam`
--
ALTER TABLE `prograam`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
