-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Mar 2021 pada 02.38
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatifs`
--

CREATE TABLE `alternatifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternatifs`
--

INSERT INTO `alternatifs` (`id`, `nama`, `kode`, `created_at`, `updated_at`) VALUES
(1, 'Mhs A', 'F1', '2020-08-10 08:16:23', '2021-03-21 07:49:04'),
(2, 'Mhs B', 'F2', '2020-08-10 15:42:06', '2021-03-21 07:49:08'),
(3, 'Mhs C', 'F3', '2020-08-10 15:44:22', '2021-03-21 07:49:11'),
(4, 'Mhs D', 'F4', '2020-08-10 15:45:03', '2021-03-21 07:49:15'),
(5, 'Mhs E', 'F5', '2020-08-10 15:49:49', '2021-03-21 07:49:18'),
(6, 'Mhs F', 'F6', '2020-08-10 15:53:50', '2021-03-21 07:49:22'),
(7, 'Mhs G', 'F7', '2020-08-10 15:54:53', '2021-03-21 07:49:30'),
(8, 'Mhs H', 'F8', '2020-08-10 16:23:26', '2021-03-21 07:49:34'),
(9, 'Mhs I', 'F9', '2020-08-10 08:16:23', '2021-03-21 07:49:38'),
(10, 'Mhs J', 'F10', '2020-08-10 15:42:06', '2021-03-21 07:49:41'),
(11, 'Mhs K', 'F11', '2020-08-10 15:44:22', '2021-03-21 07:49:45'),
(12, 'Mhs L', 'F12', '2020-08-10 15:45:03', '2021-03-21 07:49:49'),
(13, 'Mhs M', 'F13', '2020-08-10 15:49:49', '2021-03-21 07:49:52'),
(14, 'Mhs N', 'F14', '2020-08-10 15:53:50', '2021-03-21 07:49:56'),
(15, 'Mhs O', 'F15', '2020-08-10 15:54:53', '2021-03-21 07:49:59'),
(16, 'Mhs P', 'F16', '2020-08-10 16:23:26', '2021-03-21 07:50:05'),
(17, 'Mhs Q', 'F17', '2020-08-10 15:54:53', '2021-03-21 07:50:09'),
(18, 'Mhs R', 'F18', '2020-08-10 16:23:26', '2021-03-21 07:50:14'),
(19, 'Mhs S', 'F19', '2020-08-10 15:53:50', '2021-03-21 07:50:22'),
(20, 'Mhs T', 'F20', '2020-08-10 15:54:53', '2021-03-21 07:50:29'),
(21, 'Mhs U', 'F21', '2020-08-10 16:23:26', '2021-03-21 07:50:33'),
(22, 'Mhs V', 'F22', '2020-08-10 15:54:53', '2021-03-21 07:50:37'),
(23, 'Mhs W', 'F23', '2020-08-10 16:23:26', '2021-03-21 07:50:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `evaluasis`
--

CREATE TABLE `evaluasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternatif` bigint(20) UNSIGNED NOT NULL,
  `kriteria` bigint(20) UNSIGNED NOT NULL,
  `nilai` double(8,2) NOT NULL,
  `submit_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `evaluasis`
--

INSERT INTO `evaluasis` (`id`, `alternatif`, `kriteria`, `nilai`, `submit_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4.00, 22, '2020-08-23 12:52:18', '2020-08-23 12:52:18'),
(2, 2, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(3, 3, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(4, 4, 1, 4.00, 22, NULL, '2021-03-21 08:18:12'),
(5, 5, 1, 4.00, 22, NULL, '2021-03-21 08:18:12'),
(6, 6, 1, 4.00, 22, NULL, '2021-03-21 08:18:12'),
(7, 7, 1, 4.00, 22, NULL, '2021-03-21 08:18:12'),
(8, 8, 1, 4.00, 22, NULL, '2021-03-21 08:18:12'),
(9, 9, 1, 4.00, 22, NULL, '2021-03-21 08:18:12'),
(10, 10, 1, 4.00, 22, NULL, '2021-03-21 08:18:12'),
(11, 11, 1, 4.00, 22, NULL, '2021-03-21 08:18:12'),
(12, 12, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(13, 13, 1, 4.00, 22, NULL, '2021-03-21 08:18:12'),
(14, 14, 1, 3.00, 22, NULL, '2021-03-21 08:18:12'),
(15, 15, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(44, 16, 1, 3.00, 22, NULL, '2021-03-21 08:18:12'),
(45, 17, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(46, 18, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(47, 19, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(48, 20, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(49, 21, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(50, 22, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(51, 23, 1, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(52, 1, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(53, 2, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(54, 3, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(55, 4, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(56, 5, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(57, 6, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(58, 7, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(59, 8, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(60, 9, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(61, 10, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(62, 11, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(63, 12, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(64, 13, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(65, 14, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(66, 15, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(67, 16, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(68, 17, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(69, 18, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(70, 19, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(71, 20, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(72, 21, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(73, 22, 2, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(74, 23, 2, 2.00, 22, NULL, '2021-03-21 08:18:12'),
(75, 1, 3, 3.00, 22, NULL, '2021-03-21 08:18:12'),
(76, 2, 3, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(77, 3, 3, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(78, 4, 3, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(79, 5, 3, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(80, 6, 3, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(81, 7, 3, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(82, 8, 3, 3.00, 22, NULL, '2021-03-21 08:18:12'),
(83, 9, 3, 1.00, 22, NULL, '2021-03-21 08:18:12'),
(84, 10, 3, 5.00, 22, NULL, '2021-03-21 08:18:12'),
(99, 11, 3, 5.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(100, 12, 3, 5.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(101, 13, 3, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(102, 14, 3, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(103, 15, 3, 5.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(104, 16, 3, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(105, 17, 3, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(106, 18, 3, 5.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(107, 19, 3, 5.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(108, 20, 3, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(109, 21, 3, 5.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(110, 22, 3, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(111, 23, 3, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(112, 1, 4, 2.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(113, 2, 4, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(114, 3, 4, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(115, 4, 4, 4.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(116, 5, 4, 2.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(117, 6, 4, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(118, 7, 4, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(119, 8, 4, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(120, 9, 4, 2.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(121, 10, 4, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(122, 11, 4, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(123, 12, 4, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(124, 13, 4, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(125, 14, 4, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(126, 15, 4, 2.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(127, 16, 4, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(128, 17, 4, 2.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(129, 18, 4, 5.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(130, 19, 4, 2.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(131, 20, 4, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(132, 21, 4, 4.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(133, 22, 4, 4.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(134, 23, 4, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(135, 1, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(136, 2, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(137, 3, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(138, 4, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(139, 5, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(140, 6, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(141, 7, 5, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(142, 8, 5, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(143, 9, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(144, 10, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(145, 11, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(146, 12, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(147, 13, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(148, 14, 5, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(149, 15, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(150, 16, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(151, 17, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(152, 18, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(153, 19, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(154, 20, 5, 1.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(155, 21, 5, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(156, 22, 5, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(157, 23, 5, 3.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(158, 1, 6, 2.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(159, 2, 6, 2.00, 22, '2021-03-21 08:18:12', '2021-03-21 08:18:12'),
(160, 3, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(161, 4, 6, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(162, 5, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(163, 6, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(164, 7, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(165, 8, 6, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(166, 9, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(167, 10, 6, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(168, 11, 6, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(169, 12, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(170, 13, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(171, 14, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(172, 15, 6, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(173, 16, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(174, 17, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(175, 18, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(176, 19, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(177, 20, 6, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(178, 21, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(179, 22, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(180, 23, 6, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(181, 1, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(182, 2, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(183, 3, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(184, 4, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(185, 5, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(186, 6, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(187, 7, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(188, 8, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(189, 9, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(190, 10, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(191, 11, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(192, 12, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(193, 13, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(194, 14, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(195, 15, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(196, 16, 7, 1.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(197, 17, 7, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(198, 18, 7, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(199, 19, 7, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(200, 20, 7, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(201, 21, 7, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(202, 22, 7, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13'),
(203, 23, 7, 2.00, 22, '2021-03-21 08:18:13', '2021-03-21 08:18:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasis`
--

CREATE TABLE `klasifikasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kriteria` bigint(20) UNSIGNED NOT NULL,
  `nilai` double(8,2) NOT NULL,
  `klasifikasi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `klasifikasis`
--

INSERT INTO `klasifikasis` (`id`, `kriteria`, `nilai`, `klasifikasi`, `created_at`, `updated_at`) VALUES
(1, 1, 1.00, '< 2,50', '2020-07-23 14:49:08', '2021-03-21 06:41:37'),
(2, 1, 2.00, '2,50 – 2,75', '2020-07-23 14:49:08', '2021-03-21 06:41:41'),
(3, 1, 3.00, '2,75 – 3,00', '2020-07-23 14:49:08', '2021-03-21 06:41:53'),
(4, 1, 4.00, '3,00 – 3,50', '2020-07-23 14:49:08', '2021-03-21 06:42:09'),
(5, 1, 5.00, '> 3,50', '2020-07-23 14:49:08', '2021-03-21 06:42:15'),
(6, 2, 1.00, 'Tidak Ada', '2020-07-23 14:54:16', '2021-03-21 06:42:38'),
(7, 2, 2.00, 'Tingkat Universitas', '2020-07-23 14:54:16', '2021-03-21 06:42:46'),
(8, 2, 3.00, 'Tingkat Daerah', '2020-07-23 14:54:16', '2021-03-21 06:42:53'),
(9, 2, 4.00, 'Tingkat Nasional', '2020-07-23 14:54:16', '2021-03-21 06:42:59'),
(10, 2, 5.00, 'Tingkat Internasional', '2020-11-20 20:17:38', '2021-03-21 06:43:08'),
(11, 3, 1.00, '> 4.000.000', '2020-07-23 14:56:38', '2021-03-21 06:43:15'),
(12, 3, 2.00, '3.000.000 - 4.000.000', '2020-07-23 14:56:38', '2021-03-21 06:43:24'),
(13, 3, 3.00, '2.000.000 - 3.000.000', '2020-07-23 14:56:38', '2021-03-21 06:43:35'),
(14, 3, 4.00, '1.500.000 - 2.000.000', '2020-07-23 14:56:38', '2021-03-21 06:43:39'),
(15, 3, 5.00, '< 1.000.000', '2020-07-23 14:56:38', '2021-03-21 06:43:52'),
(16, 4, 1.00, '1', '2020-07-23 14:58:33', '2021-03-21 06:44:10'),
(17, 4, 2.00, '2', '2020-07-23 14:58:33', '2021-03-21 06:44:15'),
(18, 4, 3.00, '3', '2020-07-23 14:58:33', '2021-03-21 06:44:19'),
(19, 4, 4.00, '4', '2020-07-23 14:58:33', '2021-03-21 06:44:21'),
(20, 4, 5.00, '5', '2020-07-23 14:58:33', '2021-03-21 06:44:28'),
(21, 5, 1.00, '> 6', '2020-07-23 15:00:09', '2021-03-21 06:44:50'),
(22, 5, 2.00, '5 - 6', '2020-07-23 15:00:09', '2021-03-21 06:45:01'),
(23, 5, 3.00, '4 - 5', '2020-07-23 15:00:09', '2021-03-21 06:45:10'),
(24, 5, 4.00, '3 - 4', '2020-07-23 15:00:09', '2021-03-21 06:45:21'),
(25, 5, 5.00, '2 - 3', '2020-07-23 15:00:09', '2021-03-21 06:45:29'),
(26, 6, 1.00, 'Tidak Ada', '2020-07-23 15:17:34', '2021-03-21 06:45:52'),
(27, 6, 2.00, 'Ada', '2020-07-23 15:17:34', '2021-03-21 06:45:58'),
(31, 7, 1.00, 'Lengkap', '2020-07-23 15:11:45', '2021-03-21 06:46:28'),
(32, 7, 2.00, 'Piatu', '2020-07-23 15:11:45', '2021-03-21 06:46:37'),
(33, 7, 3.00, 'Yatim', '2020-07-23 15:16:04', '2021-03-21 06:46:44'),
(34, 7, 4.00, 'Wali', '2020-07-23 15:16:04', '2021-03-21 06:46:53'),
(56, 7, 5.00, 'Yatim Piatu', '2020-07-23 15:16:04', '2021-03-21 06:46:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriterias`
--

CREATE TABLE `kriterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minmaks` set('min','maks') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pref` bigint(20) UNSIGNED NOT NULL,
  `kode` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q` double(8,2) NOT NULL,
  `p` double(8,2) NOT NULL,
  `bobot` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kriterias`
--

INSERT INTO `kriterias` (`id`, `nama`, `minmaks`, `pref`, `kode`, `q`, `p`, `bobot`, `created_at`, `updated_at`) VALUES
(1, 'IPK', 'maks', 1, 'K1', 1.00, 2.00, 2.00, '2020-07-21 06:37:14', '2021-03-21 14:36:45'),
(2, 'Prestasi', 'maks', 1, 'K2', 1.00, 2.00, 2.00, '2020-07-21 06:37:14', '2021-03-21 14:36:53'),
(3, 'Penghasilan Orang Tua / Wali', 'maks', 1, 'K3', 1.00, 2.00, 2.00, '2020-07-21 06:41:31', '2021-03-21 14:37:02'),
(4, 'Jumlah Tanggungan Orang Tua / Wali', 'maks', 1, 'K4', 1.00, 2.00, 1.00, '2020-07-21 06:41:31', '2021-03-21 14:26:04'),
(5, 'Semester', 'maks', 1, 'K5', 1.00, 2.00, 1.00, '2020-07-21 06:42:49', '2021-03-21 14:26:11'),
(6, 'Proposal PKM', 'maks', 1, 'K6', 1.00, 2.00, 1.00, '2020-07-21 06:42:49', '2021-03-21 14:26:19'),
(7, 'Status Orang Tua', 'maks', 1, 'K7', 1.00, 2.00, 1.00, '2020-07-21 06:43:51', '2021-03-21 14:26:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_20_175600_create_preferensis_table', 2),
(5, '2020_07_20_175849_create_kriterias_table', 3),
(6, '2020_07_20_180738_create_alternatifs_table', 4),
(7, '2020_07_20_181250_create_klasifikasis_table', 5),
(8, '2020_07_20_181618_create_evaluasis_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('apklingo@gmail.com', '$2y$10$RCGOcddpguesr5IuKrOcvelf8ov0DogUTJ9e2D9DD82vWd32FDY/O', '2020-09-03 07:59:07'),
('prawitoardiansah17@gmail.com', '$2y$10$MGs4QgR8HINwbyEN4Tc1Deq61s7xxxMiFXbpfyghi7cuQioeAKVV2', '2020-09-15 06:00:10'),
('prawito@student.ce.undip.ac.id', '$2y$10$AvIfawiVgWwbnsFXrr7HA.EyX8DGPgf7qOqDKVm60l5iZIA0i7/qm', '2020-09-15 06:03:32'),
('prawito0798@gmail.com', '$2y$10$a/V9ZycDi9HD9ghDNVYzoO1FQsajPCaIebKsz49YClCEx.OFWeafG', '2020-10-28 04:33:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `preferensis`
--

CREATE TABLE `preferensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `preferensis`
--

INSERT INTO `preferensis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Usual', '2020-07-21 06:31:30', '2020-07-21 06:31:30'),
(2, 'Quasi', '2020-07-21 06:31:30', '2020-07-21 06:31:30'),
(3, 'Linier', '2020-07-21 06:31:54', '2020-07-21 06:31:54'),
(4, 'Level', '2020-07-21 06:31:54', '2020-07-21 06:31:54'),
(5, 'Area', '2020-07-21 06:32:23', '2020-07-21 06:32:23'),
(6, 'Gaussian', '2020-07-21 06:32:23', '2020-07-21 06:32:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` set('Administrator','User') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `status`, `created_at`, `updated_at`) VALUES
(14, 'user', 'user@gmail.com', '2020-08-07 03:16:22', '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', '6hZtnXgZTuzyE3VMqur5XObLxCmpSKq0lpO2MDlK0pTWaiyxHrEgGaMTXI77', 'User', 0, '2020-08-07 03:16:22', '2020-11-20 01:28:50'),
(22, 'admin', 'admin@gmail.com', '2020-08-08 08:19:02', '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', NULL, 'Administrator', 1, '2020-08-08 08:19:02', '2020-11-20 01:28:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatifs`
--
ALTER TABLE `alternatifs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `evaluasis`
--
ALTER TABLE `evaluasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternatif` (`alternatif`),
  ADD KEY `kriteria1` (`kriteria`),
  ADD KEY `submit_by` (`submit_by`);

--
-- Indeks untuk tabel `klasifikasis`
--
ALTER TABLE `klasifikasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kriteria` (`kriteria`);

--
-- Indeks untuk tabel `kriterias`
--
ALTER TABLE `kriterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pref` (`pref`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `preferensis`
--
ALTER TABLE `preferensis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatifs`
--
ALTER TABLE `alternatifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `evaluasis`
--
ALTER TABLE `evaluasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT untuk tabel `klasifikasis`
--
ALTER TABLE `klasifikasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `kriterias`
--
ALTER TABLE `kriterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `preferensis`
--
ALTER TABLE `preferensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `evaluasis`
--
ALTER TABLE `evaluasis`
  ADD CONSTRAINT `alternatif` FOREIGN KEY (`alternatif`) REFERENCES `alternatifs` (`id`),
  ADD CONSTRAINT `kriteria1` FOREIGN KEY (`kriteria`) REFERENCES `kriterias` (`id`),
  ADD CONSTRAINT `submit_by` FOREIGN KEY (`submit_by`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `klasifikasis`
--
ALTER TABLE `klasifikasis`
  ADD CONSTRAINT `kriteria` FOREIGN KEY (`kriteria`) REFERENCES `kriterias` (`id`);

--
-- Ketidakleluasaan untuk tabel `kriterias`
--
ALTER TABLE `kriterias`
  ADD CONSTRAINT `pref` FOREIGN KEY (`pref`) REFERENCES `preferensis` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
