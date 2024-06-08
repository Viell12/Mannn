-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 08:47 AM
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
-- Database: `starboy`
--

-- --------------------------------------------------------

--
-- Table structure for table `detilpenggajians`
--

CREATE TABLE `detilpenggajians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gaji_id` bigint(20) UNSIGNED NOT NULL,
  `penggajian_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detilpenggajians`
--

INSERT INTO `detilpenggajians` (`id`, `gaji_id`, `penggajian_id`, `qty`, `nominal`, `created_at`, `updated_at`) VALUES
(5, 2, 5, '12', 4500000, '2024-06-06 21:18:57', '2024-06-06 21:18:57'),
(6, 2, 7, '2', 4500000, '2024-06-06 21:39:17', '2024-06-06 21:39:17'),
(9, 3, 10, '4', 20000, '2024-06-06 23:27:01', '2024-06-06 23:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `gajis`
--

CREATE TABLE `gajis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gajis`
--

INSERT INTO `gajis` (`id`, `name`, `golongan`, `jabatan`, `nominal`, `created_at`, `updated_at`) VALUES
(2, 'Pak ahmadi', 'Guru Produktif', 'Pegawai Tetap', 4500000, '2024-06-06 21:13:00', '2024-06-06 21:13:10'),
(3, 'Lepiu', 'Murid', 'Pelajar', 20000, '2024-06-06 21:14:59', '2024-06-06 21:14:59'),
(4, 'Berok', 'Murid', 'Pelajar', 15000, '2024-06-06 21:15:45', '2024-06-06 21:15:45'),
(5, 'Berok', 'Murid', 'Pelajar', 1500, '2024-06-06 21:38:59', '2024-06-06 21:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `name`, `hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'ahmadi', '082252832132', 'paya raja', '2024-06-05 22:35:15', '2024-06-05 22:35:15'),
(2, 'Mann', '082252832132', 'Indonesia', '2024-06-05 23:07:09', '2024-06-06 21:17:59'),
(3, 'Lepiu', '082379615643', 'Tupa City', '2024-06-06 21:17:31', '2024-06-06 21:17:31'),
(4, 'Berok', '082252832132', '-', '2024-06-06 21:18:33', '2024-06-06 21:18:33'),
(5, 'Berok', '111', '-', '2024-06-06 21:38:39', '2024-06-06 21:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `penggajians`
--

CREATE TABLE `penggajians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penggajians`
--

INSERT INTO `penggajians` (`id`, `invoice`, `pegawai_id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
(1, 'INV-1', 1, 3, 0, '2024-06-05 22:38:28', '2024-06-05 22:38:28'),
(2, 'INV-2', 1, 3, -27, '2024-06-05 22:40:01', '2024-06-05 22:44:15'),
(3, 'INV-3', 2, 3, 45, '2024-06-05 23:07:19', '2024-06-05 23:07:29'),
(4, 'INV-4', 2, 4, 45, '2024-06-06 20:48:48', '2024-06-06 20:48:57'),
(5, 'INV-5', 1, 4, 54000000, '2024-06-06 21:18:42', '2024-06-06 21:18:57'),
(6, 'INV-6', 1, 4, 0, '2024-06-06 21:20:46', '2024-06-06 21:20:46'),
(7, 'INV-7', 1, 4, 9000000, '2024-06-06 21:39:08', '2024-06-06 21:39:17'),
(8, 'INV-8', 5, 4, 0, '2024-06-06 23:18:58', '2024-06-06 23:18:58'),
(9, 'INV-9', 5, 4, 0, '2024-06-06 23:22:41', '2024-06-06 23:22:41'),
(10, 'INV-10', 1, 4, 100000, '2024-06-06 23:25:43', '2024-06-06 23:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verifed_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verifed_at`, `password`, `hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, '', '', '0000-00-00 00:00:00', '123\r\n', '', '', NULL, NULL),
(2, '', 'Mann12@gmail.com', NULL, '827ccb0eea8a706c4c34a16891f84e7b', '', '', NULL, NULL),
(3, 'ahmadi', 'ahmadi@muslim.com', NULL, '$2y$12$TVJtC7T93qUuXX3Cazp3Y.VssKk2ilII9yYG8jway367kAo1bJWVy', '12', 'paya raja', '2024-06-05 22:33:01', '2024-06-05 22:33:01'),
(4, 'Mann', 'Mannn@gmail.com', NULL, '$2y$12$4fwsZ.bJnsXVjrr8nBK3ZOi13g5lcpZUARFzybh3LcAyZkr13OeBK', '12', 'babo', '2024-06-05 23:09:45', '2024-06-05 23:09:45'),
(5, 'Berok', 'berokgaming12@gmail.com', NULL, '$2y$12$YShX/Q6eSPA2SPPL/db1LOCJk04uoacWGnyxkC1ZS4qCHNwTrG6Ju', '082220012002', '-', '2024-06-06 21:09:43', '2024-06-06 21:09:43'),
(6, 'Lepiu', 'LepidarkSystem@gmail.com', NULL, '$2y$12$TFnpY2JDA0YsMKxfBfXVL..Zpl/YQU3583ydp.T835ALQDrhHkeke', '082379615643', 'Tupa City', '2024-06-06 21:11:33', '2024-06-06 21:11:33'),
(8, 'Lepiu', 'LepidarkSyste@gmail.com', NULL, '$2y$12$SWmqAK.xGvE/w9ZYs9rmqu3sPe8uouVzaom9bEPnqkBsgCtCtLUEC', '082379615643', 'Tupa City', '2024-06-06 21:38:22', '2024-06-06 21:38:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detilpenggajians`
--
ALTER TABLE `detilpenggajians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detilpenggajians_gaji_id_foreign` (`gaji_id`),
  ADD KEY `detilpenggajians_penggajian_id_foreign` (`penggajian_id`);

--
-- Indexes for table `gajis`
--
ALTER TABLE `gajis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penggajians`
--
ALTER TABLE `penggajians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penggajians_pegawai_id_foreign` (`pegawai_id`),
  ADD KEY `penggajians_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detilpenggajians`
--
ALTER TABLE `detilpenggajians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gajis`
--
ALTER TABLE `gajis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penggajians`
--
ALTER TABLE `penggajians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detilpenggajians`
--
ALTER TABLE `detilpenggajians`
  ADD CONSTRAINT `detilpenggajians_gaji_id_foreign` FOREIGN KEY (`gaji_id`) REFERENCES `gajis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detilpenggajians_penggajian_id_foreign` FOREIGN KEY (`penggajian_id`) REFERENCES `penggajians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penggajians`
--
ALTER TABLE `penggajians`
  ADD CONSTRAINT `penggajians_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penggajians_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
