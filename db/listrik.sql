-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2019 pada 13.33
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `listrik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `noPegawai` int(6) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `noPegawai`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin@email.com', 999991, 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(8, 'mahendra', 'mahendra@email.com', 111112, 'bank111', '5eb43042be86ac776eeaae9086ebc202', '2'),
(9, 'abi siwi', 'abisiwi@email.com', 111113, 'bank112', '1cd59b29021d5d8b0051a8d9a53115a5', '2'),
(10, 'ayok', 'ayok@email.com', 1112234432, 'bank113', '81082ec130ed2f99e83373f458ee43f3', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan`
--

CREATE TABLE `bulan` (
  `id_bulan` int(2) NOT NULL,
  `bulan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bulan`
--

INSERT INTO `bulan` (`id_bulan`, `bulan`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `nomor_kwh` int(6) NOT NULL,
  `id_tarif` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `username`, `password`, `nama`, `email`, `alamat`, `nomor_kwh`, `id_tarif`) VALUES
(1, 'bayu123', '92360c2c392c85b23f38c188996f8d74', 'bayu', 'bayu@gmail.com', 'Ds.ehfrhuu', 112233, 4),
(3, 'abisiwi', '2bf6763d45e01a11eea1d54fd64e4310', 'Abi Siwi', 'abi@email.com', 'ngandusari 2afddfdafjhfkjafhvjfasdfkvsdjfkshfvsdvflkhsfsvsvvsvsvvvvvv', 789066, 3),
(4, 'tsani123', '43974281b49341e9a849169faffeb5cb', 'Affifatus', 'tsani@email.com', 'iugsdfgifgsdhgfifgsdhkgfksjdfskdjfsdfjlsdfksdjf', 555777, 2),
(5, 'bimasatriya', 'e4387043cd09837026150b9aa5c3fe2a', 'bima satriya', 'bima@email.com', 'trenggalek', 112321, 6),
(6, 'celvinabdul', 'f4aba05d423adbdbeda563148421490d', 'celvin abdul', 'celvin@email.com', 'fdshfjhsafdjdfasjdhsadsajdfjsahdfjsdhjsafjdfashjfdasfdhas', 652736, 1),
(7, 'mahendra', 'db6f6da1ce3437f3d38eb05a63402d41', 'mahendra', 'mahendra@email.com', 'gfdasfjshafdjsafdgasdjafsjdasjdjsafdjhsfdsaksfadgsajhaskdasdkshfdhsafdasfdha', 545372, 5),
(8, 'brilliano', 'aba76cc74f50f20d04ed1b8593a15fd5', 'Brilliano', 'brilliano@gmail.com', 'Jarakanrhserwtdyjyectjfuyctrytwt', 656452, 5),
(9, 'dimas123', '51947e3cf64ee746b6f2c73d174d525a', 'dimas', 'dimas@email.com', 'desa Njati Karangan', 234556, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(4) NOT NULL,
  `id_tagihan` int(4) NOT NULL,
  `id_pelanggan` int(4) NOT NULL,
  `tanggal_pembayaran` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bulan_bayar` int(2) NOT NULL,
  `tahun_bayar` int(4) NOT NULL,
  `biaya_admin` int(3) NOT NULL,
  `total_bayar` int(10) NOT NULL,
  `id_admin` int(2) NOT NULL,
  `noKk` varchar(12) NOT NULL,
  `status` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_tagihan`, `id_pelanggan`, `tanggal_pembayaran`, `bulan_bayar`, `tahun_bayar`, `biaya_admin`, `total_bayar`, `id_admin`, `noKk`, `status`) VALUES
(8, 4, 1, '2019-04-06 15:55:51', 12, 2014, 2000, 119360, 9, '214748364741', '2'),
(9, 3, 3, '2019-04-06 15:55:37', 1, 2014, 2000, 204800, 8, '214748364712', '2'),
(10, 10, 5, '2019-04-06 15:55:44', 2, 2017, 2000, 81950, 8, '214748364743', '2'),
(11, 9, 3, '2019-04-06 16:06:31', 2, 2014, 2000, 29040, 8, '214748364712', '2'),
(12, 8, 4, '2019-04-06 16:05:54', 2, 2014, 2000, 242000, 8, '123456789012', '2'),
(13, 18, 4, '2019-04-06 16:18:55', 2, 2014, 2000, 149600, 8, '123456789012', '2'),
(14, 11, 5, '2019-04-06 16:07:05', 1, 2015, 2000, 257840, 8, '545453423641', '2'),
(15, 22, 6, '2019-04-06 16:06:58', 1, 2014, 2000, 343000, 8, '123121414555', '2'),
(16, 23, 6, '2019-04-06 16:07:39', 2, 2014, 2000, 125000, 8, '123121414555', '2'),
(17, 31, 7, '2019-04-06 16:02:01', 12, 2013, 2000, 331070, 0, '967623563542', '1'),
(18, 32, 8, '2019-04-06 16:03:30', 2, 2013, 2000, 193174, 0, '564534654234', '1'),
(19, 5, 1, '2019-04-07 05:17:50', 1, 2015, 2000, 295400, 0, '123456789012', '1'),
(20, 34, 9, '2019-04-08 09:03:15', 1, 2017, 2000, 102000, 10, '111122223333', '2'),
(21, 26, 7, '2019-04-08 12:03:04', 1, 2014, 2000, 649171, 0, '111122223333', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggunaan`
--

CREATE TABLE `penggunaan` (
  `id_penggunaan` int(11) NOT NULL,
  `id_pelanggan` int(50) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `meter` int(50) NOT NULL,
  `event` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penggunaan`
--

INSERT INTO `penggunaan` (`id_penggunaan`, `id_pelanggan`, `bulan`, `tahun`, `meter`, `event`) VALUES
(3, 1, '1', '2015', 200, '1'),
(4, 1, '5', '2015', 150, '1'),
(5, 1, '2', '2015', 90, '1'),
(11, 1, '12', '2014', 80, '1'),
(12, 3, '1', '2014', 150, '1'),
(13, 1, '1', '2015', 450, '1'),
(14, 4, '2', '2014', 200, '1'),
(15, 3, '2', '2014', 20, '1'),
(16, 5, '2', '2017', 50, '1'),
(17, 5, '1', '2015', 160, '1'),
(18, 5, '2', '2015', 123, '1'),
(19, 5, '3', '2015', 111, '1'),
(20, 3, '3', '2014', 231, '1'),
(21, 3, '5', '2014', 123, '1'),
(22, 3, '8', '2014', 145, '1'),
(23, 4, '2', '2014', 123, '1'),
(24, 4, '3', '2014', 133, '1'),
(25, 4, '4', '2014', 43, '1'),
(26, 4, '7', '2014', 12, '1'),
(29, 6, '2', '2014', 123, '1'),
(30, 6, '1', '2014', 341, '1'),
(31, 6, '3', '2014', 213, '1'),
(32, 6, '4', '2014', 201, '1'),
(33, 7, '1', '2014', 413, '1'),
(34, 7, '2', '2014', 213, '1'),
(35, 7, '3', '2014', 324, '1'),
(36, 8, '1', '2014', 120, '1'),
(37, 8, '2', '2014', 450, '1'),
(38, 7, '12', '2013', 210, '1'),
(39, 8, '2', '2013', 122, '1'),
(40, 8, '5', '2014', 123, '1'),
(41, 9, '1', '2017', 100, '1'),
(42, 1, '2', '2017', 150, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subjek` varchar(30) NOT NULL,
  `pesan` text NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `nama`, `email`, `subjek`, `pesan`, `status`) VALUES
(1, 'mahendra', 'mahendra@email.com', 'tes', 'tes tes tes', '1'),
(2, 'celvin', 'celvin@email.com', 'tanya', 'tanya soal cara tes\r\n', '1'),
(3, 'sugap', 'sugap@email.com', 'tanya', 'tanya tanya apa aja', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihan`
--

CREATE TABLE `tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_penggunaan` int(11) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `tahun` int(50) NOT NULL,
  `meter` int(50) NOT NULL,
  `status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tagihan`
--

INSERT INTO `tagihan` (`id_tagihan`, `id_pelanggan`, `id_penggunaan`, `bulan`, `tahun`, `meter`, `status`) VALUES
(3, 3, 12, '1', 2014, 150, '2'),
(4, 1, 11, '12', 2014, 80, '2'),
(5, 1, 3, '1', 2015, 200, '1'),
(6, 1, 5, '2', 2015, 90, '0'),
(7, 1, 4, '5', 2015, 150, '0'),
(8, 4, 14, '2', 2014, 200, '2'),
(9, 3, 15, '2', 2014, 20, '2'),
(10, 5, 16, '2', 2017, 50, '2'),
(11, 5, 17, '1', 2015, 160, '2'),
(12, 5, 18, '2', 2015, 123, '0'),
(13, 5, 19, '3', 2015, 111, '0'),
(14, 1, 13, '1', 2015, 450, '0'),
(15, 3, 20, '3', 2014, 231, '0'),
(16, 3, 21, '5', 2014, 123, '0'),
(17, 3, 22, '8', 2014, 145, '0'),
(18, 4, 23, '2', 2014, 123, '2'),
(19, 4, 24, '3', 2014, 133, '0'),
(20, 4, 25, '4', 2014, 43, '0'),
(21, 4, 26, '7', 2014, 12, '0'),
(22, 6, 30, '1', 2014, 341, '2'),
(23, 6, 29, '2', 2014, 123, '2'),
(24, 6, 31, '3', 2014, 213, '0'),
(25, 6, 32, '4', 2014, 201, '0'),
(26, 7, 33, '1', 2014, 413, '1'),
(27, 7, 34, '2', 2014, 213, '0'),
(28, 7, 35, '3', 2014, 324, '0'),
(29, 8, 37, '2', 2014, 450, '0'),
(30, 8, 36, '1', 2014, 120, '0'),
(31, 7, 38, '12', 2013, 210, '1'),
(32, 8, 39, '2', 2013, 122, '1'),
(33, 8, 40, '5', 2014, 123, '0'),
(34, 9, 41, '1', 2017, 100, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarif`
--

CREATE TABLE `tarif` (
  `id_tarif` int(11) NOT NULL,
  `daya` int(50) NOT NULL,
  `tarifperkwh` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tarif`
--

INSERT INTO `tarif` (`id_tarif`, `daya`, `tarifperkwh`) VALUES
(1, 450, 1000),
(2, 750, 1200),
(3, 900, 1352),
(4, 2200, 1467),
(5, 4400, 1567),
(6, 6600, 1599);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`id_bulan`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `id_tarif` (`id_tarif`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_tagihan` (`id_tagihan`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `penggunaan`
--
ALTER TABLE `penggunaan`
  ADD PRIMARY KEY (`id_penggunaan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id_tagihan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_penggunaan` (`id_penggunaan`);

--
-- Indeks untuk tabel `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`id_tarif`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `bulan`
--
ALTER TABLE `bulan`
  MODIFY `id_bulan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `penggunaan`
--
ALTER TABLE `penggunaan`
  MODIFY `id_penggunaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tarif`
--
ALTER TABLE `tarif`
  MODIFY `id_tarif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`id_tarif`) REFERENCES `tarif` (`id_tarif`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`id_tagihan`) REFERENCES `tagihan` (`id_tagihan`);

--
-- Ketidakleluasaan untuk tabel `penggunaan`
--
ALTER TABLE `penggunaan`
  ADD CONSTRAINT `penggunaan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);

--
-- Ketidakleluasaan untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD CONSTRAINT `tagihan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `tagihan_ibfk_2` FOREIGN KEY (`id_penggunaan`) REFERENCES `penggunaan` (`id_penggunaan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
