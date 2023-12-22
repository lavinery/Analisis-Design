-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2023 pada 15.42
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_divisi`
--

CREATE TABLE `tbl_divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_divisi`
--

INSERT INTO `tbl_divisi` (`id_divisi`, `nama_divisi`) VALUES
(1, 'Sekretaris'),
(2, 'Bendahara'),
(3, 'Acara'),
(4, 'Humas'),
(5, 'Keamanan'),
(6, 'ATP'),
(7, 'Medis'),
(8, 'PDD'),
(11, 'Logistik'),
(12, 'PSDM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_konten`
--

CREATE TABLE `tbl_konten` (
  `id_konten` int(11) NOT NULL,
  `judul_konten` varchar(255) NOT NULL,
  `isi_konten` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_konten`
--

INSERT INTO `tbl_konten` (`id_konten`, `judul_konten`, `isi_konten`, `gambar`, `tanggal`) VALUES
(9, 'Article 4', 'Loremb ipsums', 'content-03.jpg', '2023-11-22 06:45:41'),
(10, 'ARTICLE SELANJUTNYA', 'Lorem ipsum dolor met amet ksdksl s', 'content-01.jpg', '2023-11-22 06:49:52'),
(11, 'harap', 'masukan', 'fextruth_4107176.jpg', '2023-11-24 02:42:57'),
(12, 'Judul ini', '', 'fextruth_', '2023-11-24 02:46:52'),
(13, 'Judul ini', 'Judul ini', 'fextruth_Logo-Gamadhikari.png', '2023-11-24 02:48:42'),
(14, 'Judul ini', 'Judul ini', 'fextruth_replicate-prediction-ty4hixrb3muvlno5me3owsuqum.png', '2023-11-24 02:51:51'),
(15, 'Judul inidas', 'Judul inidas', 'msultanalhakim_replicate-prediction-ty4hixrb3muvlno5me3owsuqum.png', '2023-11-24 02:53:04'),
(16, 'Judul inidas', 'dsadasdsad', 'rian_ssstik.io_1700701614978.jpeg', '2023-11-26 15:52:24'),
(17, 'Judul inidas', 'Judul inidas', 'rian_replicate-prediction-4p7gw7bbtn6yt6iadxmrjhvbrm.png', '2023-11-26 15:52:24'),
(18, 'Judul inidas', 'sdadasdas', 'msultanalhakim_replicate-prediction-tpa3itbbu4dv44owcqfr4c73pa.png', '2023-11-26 16:26:40'),
(19, 'Judul inidas', 'sdadasdas', 'msultanalhakim_replicate-prediction-tpa3itbbu4dv44owcqfr4c73pa.png', '2023-11-26 16:26:40'),
(20, 'INI ARTIKEL TERBARU 2023', 'ISI ARTIKELNYA', 'msultanalhakim_Katalog-Suku-Cadang-Honda-Vario-160_page-0081.jpg', '2023-11-27 06:54:38'),
(21, 'INI ARTIKEL TERBARU 2023', 'INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023INI ARTIKEL TERBARU 2023', 'msultanalhakim_replicate-prediction-tpa3itbbu4dv44owcqfr4c73pa.png', '2023-11-27 06:54:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_peserta`
--

CREATE TABLE `tbl_peserta` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `status` enum('Pending','Rejected','Accepted') NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_proker` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_peserta`
--

INSERT INTO `tbl_peserta` (`id`, `nama`, `nim`, `email`, `no_telp`, `status`, `username`, `id_proker`, `id_divisi`) VALUES
(12, 'Muhammad Sultan Alhakimssss', 'H1D022105', 'muhammad.alhakim@mhs.unsoed.ac.id', '082113155212', 'Rejected', 'msultanalhakimdadada', 1, 2),
(17, 'Muhammad Syaiful', 'H1D022105', 'muhammad.latief@mhs.unsoed.com', '082113155212', 'Accepted', 'syaiful', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_proker`
--

CREATE TABLE `tbl_proker` (
  `id_proker` int(11) NOT NULL,
  `nama_proker` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_proker`
--

INSERT INTO `tbl_proker` (`id_proker`, `nama_proker`) VALUES
(1, 'Informatics Championships'),
(2, 'Lustrum 3.0'),
(3, 'Soedirman Technophoria'),
(5, 'GEMASTIK'),
(6, 'Pengmas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` enum('Administrator','Staff','Member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `email`, `level`) VALUES
(1, 'Muhammad Sultan Alhakimssss', 'msultanalhakimdadada', '$2y$10$BGHrWQOR2ljIVt3MWqNP4OpuR4EeU1ZANU67U0UH5nSzQdsEdye8O', 'muhammad.alhakim@mhs.unsoed.ac.id', 'Administrator'),
(3, 'Ahmad Rian Syaifullahah', 'rian', '$2y$10$p9fR.8yAz9lt3GLky9Y8S.LItu9eu2Q9GsBw.c7RBYiZqIG2T4U2S', 'ahmad@gmail.com', 'Staff'),
(5, 'Muhammad Syaiful', 'syaiful', '$2y$10$z8jaD/WLqbrFRGBAeq8pVuD3LetO1ZmlZjfx3eyDJGMsU.GvJx11a', 'muhammad.latief@mhs.unsoed.com', 'Member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indeks untuk tabel `tbl_konten`
--
ALTER TABLE `tbl_konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indeks untuk tabel `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_proker`
--
ALTER TABLE `tbl_proker`
  ADD PRIMARY KEY (`id_proker`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_konten`
--
ALTER TABLE `tbl_konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_proker`
--
ALTER TABLE `tbl_proker`
  MODIFY `id_proker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
