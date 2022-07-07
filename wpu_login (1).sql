-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Jul 2022 pada 04.40
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `display`
--

CREATE TABLE `display` (
  `id` int(11) NOT NULL,
  `quotes` text NOT NULL,
  `video` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `display`
--

INSERT INTO `display` (`id`, `quotes`, `video`) VALUES
(1, 'Bisa Bisa2', 'video1.mp4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id` int(11) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `satker` varchar(255) NOT NULL,
  `instansi` varchar(255) NOT NULL,
  `kepentingan` varchar(255) NOT NULL,
  `nohp` bigint(32) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `counter` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id`, `nip`, `nama`, `slug`, `satker`, `instansi`, `kepentingan`, `nohp`, `layanan`, `counter`, `created_at`, `updated_at`, `status`) VALUES
(11, 1756123, 'Ara', 'Ara', 'test', 'test', 'test', 0, 'test', 'A', '2022-06-01 00:00:00', NULL, 2),
(12, 1756401021, 'gandia', '', 'Satker', 'Kepentingan', 'kepetningan', 123, 'Pengangkatan dan Pensiun', 'A', '2022-06-02 00:00:00', NULL, 2),
(13, 1756401021, 'gandia', '', 'Satker', 'Kepentingan', 'kepetningan', 0, 'Pengembangan dan Supervisi Kepegawaian', 'A', '2022-06-03 00:00:00', NULL, 2),
(14, 1756401021, 'gandia', '', 'Satker', 'Kepentingan', 'kepetningan', 123, 'Mutasi dan Status Kepegawaian', 'A', '2022-06-15 00:00:00', NULL, 2),
(15, 1756401021, 'Counter A', '', 'Satker', 'test', 'kepetningan', 123, 'Mutasi dan Status Kepegawaian', 'B', '2022-06-01 00:00:00', NULL, 2),
(16, 1756401021, 'Fahra', '', 'Satker', 'Kepentingan', 'kepetningan', 0, 'Mutasi dan Status Kepegawaian', 'A', '2022-06-26 21:58:54', '2022-06-26 21:58:54', 2),
(17, 1756401021, 'Fahri', '', 'Bebas', 'Kepentingan', 'kepetningan', 0, 'Informasi Kepegawaian', 'A', '2022-06-26 22:42:10', '2022-06-26 22:42:10', 2),
(18, 1756401021, 'gandi2', '', 'Satker', 'Kepentingan', 'kepetningan', 123, 'Informasi Kepegawaian', 'A', '2022-07-05 19:37:30', '2022-07-05 19:37:30', 2),
(19, 22, 'gandiaq1', '', 'Satker1', 'Kepentingan11', 'kepetningan1', 123, 'Informasi Kepegawaian2', 'A', '2022-07-05 20:26:08', '2022-07-05 20:26:08', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(13, 'bkn-admin1', 'bkn@gmail.com', 'default1.jpg', '$2y$10$rC7WlP6o1NClAcIa/3DGgun3FSwzPFm641WQl07S5l21LMDU4uhzO', 1, 1, 1653810097);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(3, 2, 2),
(7, 1, 3),
(8, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 0),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 0),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 0),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 0),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 3, 'Layanan', 'menu/layanan', 'fas fa-fw fa-folder', 1),
(10, 3, 'Data', 'menu/data', 'fas fa-fw fa-chart-bar', 1),
(11, 3, 'Display', 'menu/Display', 'fas fa-fw fa-compass', 1),
(12, 3, 'Counter', 'menu/Counter', 'fas fa-fw fa-battery-full', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `display`
--
ALTER TABLE `display`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`,`nip`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `display`
--
ALTER TABLE `display`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
