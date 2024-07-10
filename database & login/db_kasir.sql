-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2024 pada 12.37
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(10) NOT NULL,
  `id_transaksi` bigint(20) NOT NULL,
  `kd_menu` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `catatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_transaksi`, `kd_menu`, `quantity`, `catatan`) VALUES
(58, 17, '8MNM', 1, ''),
(59, 17, '6MNM', 3, ''),
(60, 17, '7MNM', 1, ''),
(61, 18, '6MNM', 1, ''),
(62, 18, '7MNM', 1, ''),
(63, 19, '8MNM', 1, ''),
(64, 19, '6MNM', 1, ''),
(65, 19, '5SNK', 1, ''),
(66, 20, '9MNM', 1, ''),
(67, 20, '8MNM', 1, ''),
(68, 21, '12MKN', 1, ''),
(69, 21, '13MKN', 1, ''),
(70, 21, '10MNM', 1, ''),
(71, 21, '3MNM', 1, ''),
(72, 22, '10MNM', 1, ''),
(73, 22, '3MNM', 1, ''),
(74, 22, '7MNM', 1, ''),
(75, 22, '11SNK', 1, ''),
(76, 23, '12MKN', 1, ''),
(77, 23, '3MNM', 1, ''),
(78, 23, '10MNM', 1, ''),
(79, 24, '3MNM', 1, ''),
(80, 24, '2SNK', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `kd_menu` varchar(10) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `harga_satuan` int(20) NOT NULL,
  `stok` int(10) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`kd_menu`, `nama_menu`, `type`, `harga_satuan`, `stok`, `img`) VALUES
('10MNM', 'Ice Taro', 'minuman', 13000, 2, 'taro.jpg'),
('11SNK', 'Roti Bakar', 'snack', 12000, 4, 'roti bakar.jpg'),
('12MKN', 'Mie lvl 2', 'makanan', 14000, 1, 'mie lvl 2.jpg'),
('13MKN', 'Mie lvl 3', 'makanan', 15000, 2, 'mie lvl 3.jpg'),
('1MKN', 'Mie lvl 1', 'makanan', 12000, 1, 'mie lvl 1.jpeg'),
('2SNK', 'French Fries', 'snack', 10000, 1, '2SNK0.jpg'),
('3MNM', 'Chocolate', 'minuman', 15000, 0, 'chocolate.jpg'),
('4SNK', 'Cireng', 'snack', 8000, 5, '4SNK0.jpg'),
('5SNK', 'Donat', 'snack', 12000, 4, '5SNK1.png'),
('6MNM', 'Americano', 'minuman', 15000, 0, 'americano.jpg'),
('7MNM', 'Cappucino', 'minuman', 12000, 2, 'cappucino.jpg'),
('8MNM', 'Expresso', 'minuman', 12000, 2, 'expresso.jpg'),
('9MNM', 'Matcha', 'minuman', 15000, 5, 'matcha.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` bigint(20) NOT NULL,
  `id_user` int(10) NOT NULL,
  `nama_customer` varchar(20) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `no_meja` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `nama_customer`, `total_harga`, `waktu`, `no_meja`) VALUES
(17, 4, 'bongsky', 75900, '2024-05-26 12:47:30', '12'),
(18, 4, 'rian', 29700, '2024-05-26 13:37:23', '11'),
(19, 4, 'Rian Saputra', 42900, '2024-05-26 14:00:36', '19220838'),
(20, 10, 'rian', 29700, '2024-05-28 13:02:40', '11'),
(21, 10, 'leonardo', 62700, '2024-05-31 11:42:50', '7'),
(22, 10, 'Steven', 57200, '2024-05-31 11:43:37', '2'),
(23, 10, 'ridwan', 46200, '2024-06-04 08:18:27', '13'),
(24, 10, 'ridwan', 27500, '2024-06-24 13:42:09', '8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(4, 'meiranda', '1ef88564dee2393485f39dee44e20736', 'admin'),
(10, 'rian saputra', '1d8a0c2b9bb5f218b825a78a8a1f4d8d', 'admin'),
(11, 'steven wijaya', '68fd9207ffa000b9bd6e90798fbf22bc', 'user'),
(12, 'leonardus ejo', 'a35dde6e0312c1a3541721606565c3ec', 'user'),
(14, 'muhammad aziz fadill', '13dceec23d7d511ee118ef0460bf389d', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `kd_menu` (`kd_menu`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_login` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`kd_menu`) REFERENCES `menu` (`kd_menu`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
