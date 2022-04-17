-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 06:43 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `dana_awals`
--

CREATE TABLE `dana_awals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_akademik_id` bigint(20) UNSIGNED NOT NULL,
  `dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dana_awals`
--

INSERT INTO `dana_awals` (`id`, `tahun_akademik_id`, `dana`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 1, 'Infaq Kelas 12', '150000', '2022-04-05 14:42:18', '2022-04-05 14:42:18'),
(2, 2, 'Infaq Kelas 11', '140000', '2022-04-05 14:42:42', '2022-04-05 14:42:42'),
(3, 3, 'Infaq Kelas 10', '130000', '2022-04-05 14:42:59', '2022-04-05 14:42:59'),
(4, 1, 'Infaq Kelas 10', '250000', '2022-04-10 15:22:39', '2022-04-10 15:22:39'),
(5, 1, 'Infaq Kelas 11', '175000', '2022-04-10 15:22:53', '2022-04-10 15:22:53'),
(6, 1, 'DSP', '3500000', '2022-04-10 15:23:50', '2022-04-10 15:23:50'),
(7, 1, 'Kunjungan Industri', '1250000', '2022-04-10 15:25:27', '2022-04-10 15:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusans`
--

INSERT INTO `jurusans` (`id`, `jurusan`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Akuntansi dan Keuangan Lembaga', 'AKL', '2022-04-05 13:02:25', '2022-04-05 13:02:25'),
(2, 'Bisnis Daring dan Pemasaran', 'BDP', '2022-04-05 13:02:25', '2022-04-05 13:02:25'),
(3, 'Otomasi Tata Kelola Perkantoran', 'OTKP', '2022-04-05 13:02:25', '2022-04-05 13:02:25'),
(4, 'Akomodasi Perhotelan', 'Hotel', '2022-04-05 13:02:25', '2022-04-05 13:02:25'),
(5, 'Tata Boga', 'TB', '2022-04-05 13:02:25', '2022-04-05 13:02:25'),
(6, 'Multimedia', 'MM', '2022-04-05 13:02:25', '2022-04-05 13:02:25'),
(7, 'Rekayasa Perangkat Lunak', 'RPL', '2022-04-05 13:02:25', '2022-04-05 13:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan_id` bigint(20) NOT NULL,
  `urut_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `jurusan_id`, `urut_kelas`, `created_at`, `updated_at`) VALUES
(1, '12', 1, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(2, '12', 1, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(3, '12', 1, '3', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(4, '12', 1, '4', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(5, '12', 2, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(6, '12', 2, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(7, '12', 2, '3', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(8, '12', 3, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(9, '12', 3, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(10, '12', 3, '3', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(11, '12', 4, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(12, '12', 4, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(13, '12', 5, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(14, '12', 5, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(15, '12', 6, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(16, '12', 7, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(17, '11', 1, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(18, '11', 1, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(19, '11', 1, '3', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(20, '11', 1, '4', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(21, '11', 2, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(22, '11', 2, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(23, '11', 2, '3', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(24, '11', 3, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(25, '11', 3, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(26, '11', 3, '3', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(27, '11', 4, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(28, '11', 4, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(29, '11', 5, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(30, '11', 5, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(31, '11', 6, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(32, '11', 7, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(33, '10', 1, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(34, '10', 1, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(35, '10', 1, '3', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(36, '10', 1, '4', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(37, '10', 2, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(38, '10', 2, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(39, '10', 2, '3', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(40, '10', 3, '1', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(41, '10', 3, '2', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(42, '10', 3, '3', '2022-04-05 14:37:24', '2022-04-05 14:37:24'),
(43, '10', 4, '1', '2022-04-05 14:37:25', '2022-04-05 14:37:25'),
(44, '10', 4, '2', '2022-04-05 14:37:25', '2022-04-05 14:37:25'),
(45, '10', 5, '1', '2022-04-05 14:37:25', '2022-04-05 14:37:25'),
(46, '10', 5, '2', '2022-04-05 14:37:25', '2022-04-05 14:37:25'),
(47, '10', 6, '1', '2022-04-05 14:37:25', '2022-04-05 14:37:25'),
(48, '10', 7, '1', '2022-04-05 14:37:25', '2022-04-05 14:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_05_055532_create_dana_awals_table', 1),
(6, '2022_03_05_061228_create_tahun_akademiks_table', 1),
(7, '2022_03_06_094236_create_kelas_table', 1),
(8, '2022_03_06_135806_create_siswa_table', 1),
(9, '2022_03_08_050543_create_pekerjaan_table', 1),
(10, '2022_03_10_090052_create_pembayaran_siswas_table', 1),
(11, '2022_03_10_093447_create_tabungan_siswas_table', 1),
(12, '2022_03_26_105722_create_jurusans_table', 2),
(13, '2022_03_26_111453_create_jurusans_table', 3),
(14, '2022_03_26_120116_create_kelas_table', 4),
(15, '2022_03_26_162100_create_permission_tables', 5),
(16, '2022_03_27_123624_pembayaran_siswa', 6),
(17, '2022_03_27_123832_tabungan_siswa', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `pekerjaan`, `created_at`, `updated_at`) VALUES
(1, 'Belum/Tidak Bekerja', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(2, 'Mengurus Rumah Tangga', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(3, 'Pelajar/Mahasiswa', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(4, 'Pensiunan', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(5, 'Pegawai Negeri Sipil (PNS)', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(6, 'Tentara Nasional Indonesia (TNI)', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(7, 'Kepolisian RI (POLRI)', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(8, 'Perdagangan', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(9, 'Peternak', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(10, 'Petani/Pekebun', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(11, 'Nelayan/Perikanan', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(12, 'Industri', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(13, 'Konstruksi', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(14, 'Transportasi', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(15, 'Karyawan Swasta', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(16, 'Karyawan BUMN', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(17, 'Karyawan BUMD', '2022-03-25 03:09:16', '2022-03-25 03:09:16'),
(18, 'Karyawan Honorer', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(19, 'Buruh Harian Lepas', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(20, 'Buruh Tani/Perkebunan', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(21, 'Buruh Nelayan/Perikanan', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(22, 'Buruh Peternakan', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(23, 'Pembantu Rumah Tangga', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(24, 'Tukang Cukur', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(25, 'Tukang Listrik', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(26, 'Tukang Batu', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(27, 'Tukang Kayu', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(28, 'Tukang Sol Sepatu', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(29, 'Tukang Las/Pandai Besi', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(30, 'TUkang Jahit', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(31, 'Tukang Gigi', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(32, 'Penata Rias', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(33, 'Penata Busana', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(34, 'Penata Rambut', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(35, 'Mekanik', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(36, 'Seniman', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(37, 'Tabib', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(38, 'Paraji', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(39, 'Perancang Busana', '2022-03-25 03:09:17', '2022-03-25 03:09:17'),
(40, 'Penterjemah', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(41, 'Imam Masjid', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(42, 'Pendeta', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(43, 'Pastor', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(44, 'Wartawan', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(45, 'Ustadz/Mubaligh', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(46, 'Juru Masak', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(47, 'Promotor Acara', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(48, 'Anggota DPR-RI', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(49, 'Anggota DPD', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(50, 'Anggota BPK', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(51, 'Presiden', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(52, 'Wakil Presiden', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(53, 'Anggota Mahkamah', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(54, 'Konstitusi', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(55, 'Anggota Kabinet/Kementrian', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(56, 'Duta Besar', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(57, 'Gubernur', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(58, 'Wakil Gubernur', '2022-03-25 03:09:18', '2022-03-25 03:09:18'),
(59, 'Bupati', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(60, 'Wakil Bupati', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(61, 'Walikota', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(62, 'Wakil Walikota', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(63, 'Anggota DPRD Provinsi/Anggota DPRD Kabupaten/Kota', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(64, 'Dosen', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(65, 'Guru', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(66, 'Pilot', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(67, 'Pengacara', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(68, 'Notaris', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(69, 'Arsitek', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(70, 'Akuntan', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(71, 'Konsultan', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(72, 'Dokter', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(73, 'Bidan', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(74, 'Perawat', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(75, 'Apoteker', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(76, 'Psikiater/Psikolog', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(77, 'Penyiar Televisi', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(78, 'Penyiar Radio', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(79, 'Pelaut', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(80, 'Sopir', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(81, 'Pialang', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(82, 'Paranormal', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(83, 'Pedagang', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(84, 'Perangkat Desa', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(85, 'Kepala Desa', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(86, 'Biarawati', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(87, 'Wiraswasta', '2022-03-25 03:09:19', '2022-03-25 03:09:19'),
(88, 'Lainnya', '2022-03-25 03:09:19', '2022-03-25 03:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_siswas`
--

CREATE TABLE `pembayaran_siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `petugas_id` bigint(20) UNSIGNED NOT NULL,
  `dana_awal_id` bigint(20) UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sisa_tagihan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_akademik_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran_siswas`
--

INSERT INTO `pembayaran_siswas` (`id`, `kode`, `siswa_id`, `petugas_id`, `dana_awal_id`, `keterangan`, `nominal`, `sisa_tagihan`, `kelas_id`, `jurusan_id`, `tahun_akademik_id`, `tanggal`, `bulan`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 'PS04202200001', 558, 6, 7, '-', '1250000', '0', 16, 7, 1, '13 April 2022', 'April', '2022', '2022-04-13 07:41:08', '2022-04-13 07:41:08'),
(2, 'PS04202200002', 558, 6, 6, '-', '3500000', '0', 16, 7, 1, '16 April 2022', 'April', '2022', '2022-04-16 15:49:49', '2022-04-16 15:49:49'),
(3, 'PS04202200003', 558, 6, 5, '-', '175000', '0', 16, 7, 1, '16 April 2022', 'April', '2022', '2022-04-16 15:55:44', '2022-04-16 15:55:44'),
(4, 'PS04202200004', 558, 6, 1, '-', '150000', '0', 16, 7, 1, '16 April 2022', 'April', '2022', '2022-04-16 16:02:45', '2022-04-16 16:02:45'),
(5, 'PS04202200005', 558, 6, 4, '-', '250000', '0', 16, 7, 1, '17 April 2022', 'April', '2022', '2022-04-17 03:39:34', '2022-04-17 03:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'pengguna.index', 'web', '2022-03-26 10:39:42', '2022-03-26 10:39:42'),
(3, 'role.index', 'web', '2022-03-26 10:39:58', '2022-03-26 10:39:58'),
(4, 'jurusan.index', 'web', '2022-03-26 10:40:12', '2022-03-26 10:40:12'),
(7, 'kelas.index', 'web', '2022-03-26 10:42:52', '2022-03-26 10:42:52'),
(8, 'tahunakademik.index', 'web', '2022-03-26 10:43:05', '2022-03-26 10:43:05'),
(9, 'danaawal.index', 'web', '2022-03-26 10:43:15', '2022-04-17 03:24:37'),
(10, 'siswa.index', 'web', '2022-03-26 12:55:07', '2022-03-26 12:55:07'),
(11, 'siswa.create', 'web', '2022-03-26 12:55:16', '2022-03-26 12:55:16'),
(12, 'siswa.update', 'web', '2022-03-26 12:55:26', '2022-03-26 12:55:26'),
(13, 'siswa.delete', 'web', '2022-03-26 12:55:39', '2022-03-26 12:55:39'),
(14, 'siswa.read', 'web', '2022-03-26 12:55:48', '2022-03-26 12:55:48'),
(16, 'pengguna.create', 'web', '2022-03-26 14:16:50', '2022-03-26 14:16:50'),
(17, 'pengguna.edit', 'web', '2022-03-26 14:17:00', '2022-03-26 14:17:00'),
(18, 'pengguna.delete', 'web', '2022-03-26 14:17:24', '2022-03-26 14:17:24'),
(19, 'permission.index', 'web', '2022-04-11 13:26:20', '2022-04-11 13:26:20'),
(20, 'kenaikan.index', 'web', '2022-04-11 13:27:28', '2022-04-11 13:27:28'),
(21, 'laporantabungan.index', 'web', '2022-04-11 13:28:39', '2022-04-11 13:28:39'),
(22, 'laporantunggakan.index', 'web', '2022-04-11 13:29:11', '2022-04-11 13:29:11'),
(23, 'siswatabungan.index', 'web', '2022-04-11 13:30:47', '2022-04-11 13:30:47'),
(24, 'siswatabungan.create', 'web', '2022-04-11 13:30:58', '2022-04-11 13:30:58'),
(25, 'siswatabungan.update', 'web', '2022-04-11 13:31:10', '2022-04-11 13:31:10'),
(26, 'siswatabungan.delete', 'web', '2022-04-11 13:31:22', '2022-04-11 13:31:22'),
(27, 'siswapembayaran.index', 'web', '2022-04-11 13:31:55', '2022-04-11 13:31:55'),
(28, 'siswapembayaran.create', 'web', '2022-04-11 13:32:09', '2022-04-11 13:32:19'),
(29, 'siswapembayaran.update', 'web', '2022-04-11 13:32:31', '2022-04-11 13:32:31'),
(30, 'siswapembayaran.delete', 'web', '2022-04-11 13:32:46', '2022-04-11 13:32:46'),
(31, 'siswapembayaran.tagihan', 'web', '2022-04-11 13:32:59', '2022-04-11 13:32:59'),
(32, 'siswa.import', 'web', '2022-04-11 13:33:58', '2022-04-11 13:33:58'),
(33, 'siswa.export', 'web', '2022-04-11 13:34:10', '2022-04-11 13:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin Bank', 'web', '2022-03-26 10:22:25', '2022-03-26 10:22:25'),
(2, 'Operator', 'web', '2022-03-26 10:25:43', '2022-03-26 12:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 2),
(3, 2),
(4, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 1),
(20, 2),
(21, 2),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_akademik_id` bigint(20) DEFAULT NULL,
  `kelas_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_id` bigint(20) DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anak_ke` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warga_negara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asal_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_ijazah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `alamat_ortu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `pekerjaan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `pekerjaan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `alamat_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `kerja_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `hubungan_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `foto`, `nama`, `nisn`, `nis`, `tahun_akademik_id`, `kelas_id`, `jurusan_id`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `anak_ke`, `warga_negara`, `agama`, `asal_sekolah`, `no_ijazah`, `tahun_lulus`, `alamat_sekolah`, `ayah`, `ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `wali`, `alamat_wali`, `kerja_wali`, `hubungan_wali`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/foto/siswa/siswa.png', 'ADE ANISA', NULL, '192010001', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(2, 'upload/foto/siswa/siswa.png', 'ADE FARHAN', NULL, '192010002', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(3, 'upload/foto/siswa/siswa.png', 'AI WIDANINGSIH', NULL, '192010003', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(4, 'upload/foto/siswa/siswa.png', 'AMEL FEBRIANI', NULL, '192010004', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(5, 'upload/foto/siswa/siswa.png', 'AQILLA ISMANIAR RIHLATIN', NULL, '192010005', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(6, 'upload/foto/siswa/siswa.png', 'ARIEF RAMADHAN', NULL, '192010006', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(7, 'upload/foto/siswa/siswa.png', 'DALIS KURROTUN FILLAH', NULL, '192010007', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(8, 'upload/foto/siswa/siswa.png', 'DESI NOVIANTI', NULL, '192010008', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(9, 'upload/foto/siswa/siswa.png', 'DIAN EKA WIJAYA', NULL, '192010009', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(10, 'upload/foto/siswa/siswa.png', 'DILA MELATI SUKMA', NULL, '192010010', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(11, 'upload/foto/siswa/siswa.png', 'ERISA SULISTIANI', NULL, '192010011', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(12, 'upload/foto/siswa/siswa.png', 'FEBI SETIAWATI', NULL, '192010012', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(13, 'upload/foto/siswa/siswa.png', 'GANI SETIA SANJANI', NULL, '192010013', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(14, 'upload/foto/siswa/siswa.png', 'ILMA NURLAELIAH', NULL, '192010014', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(15, 'upload/foto/siswa/siswa.png', 'ISABEL AURELIA BR NABABAN', NULL, '192010015', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(16, 'upload/foto/siswa/siswa.png', 'LELY NURLAELY AWALIYAH', NULL, '192010017', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(17, 'upload/foto/siswa/siswa.png', 'LURI NARANTIKA', NULL, '192010018', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(18, 'upload/foto/siswa/siswa.png', 'MELAWATI PUTRI OKTAVIANI', NULL, '192010019', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(19, 'upload/foto/siswa/siswa.png', 'MUHAMAD FAHRURROJI', NULL, '192010020', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(20, 'upload/foto/siswa/siswa.png', 'MUHAMMAD NIZAR', NULL, '192010021', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(21, 'upload/foto/siswa/siswa.png', 'NADIA A\'I NUR ROHMAH', NULL, '192010022', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(22, 'upload/foto/siswa/siswa.png', 'NAJWATUL MUTOHIROH', NULL, '192010023', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(23, 'upload/foto/siswa/siswa.png', 'NASYA PUTRI DESTIANI', NULL, '192010024', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(24, 'upload/foto/siswa/siswa.png', 'NIRA AZHARI', NULL, '192010025', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(25, 'upload/foto/siswa/siswa.png', 'PINA SAPINAH', NULL, '192010026', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(26, 'upload/foto/siswa/siswa.png', 'RACHMI DWI RUDISTA', NULL, '192010027', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(27, 'upload/foto/siswa/siswa.png', 'RINI ANGGIYANI', NULL, '192010028', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(28, 'upload/foto/siswa/siswa.png', 'RIZAL QOISAL FIKRI', NULL, '192010029', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(29, 'upload/foto/siswa/siswa.png', 'SALMADIA AZZAHRA', NULL, '192010030', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(30, 'upload/foto/siswa/siswa.png', 'SHEILLA DWI JULIANA', NULL, '192010031', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(31, 'upload/foto/siswa/siswa.png', 'SITI NURHAYATI', NULL, '192010032', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(32, 'upload/foto/siswa/siswa.png', 'SUSAN WULANDARI', NULL, '192010033', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(33, 'upload/foto/siswa/siswa.png', 'TINA GANTINA', NULL, '192010034', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(34, 'upload/foto/siswa/siswa.png', 'WIDIYA GUSTIANI', NULL, '192010035', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(35, 'upload/foto/siswa/siswa.png', 'YESI MELISA ANGGITA', NULL, '192010036', 1, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(36, 'upload/foto/siswa/siswa.png', 'ADE SOFIATUNNISA', NULL, '192010037', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(37, 'upload/foto/siswa/siswa.png', 'ADE TEDI MULYADI', NULL, '192010038', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(38, 'upload/foto/siswa/siswa.png', 'ALDA SITI AL ADAWIYAH', NULL, '192010039', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(39, 'upload/foto/siswa/siswa.png', 'AMMALIA FEBRIANI', NULL, '192010040', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(40, 'upload/foto/siswa/siswa.png', 'ASRI ROSTINI', NULL, '192010041', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(41, 'upload/foto/siswa/siswa.png', 'AZIZ HAMZAH BADRUZANAN', NULL, '192010042', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:20', '2022-04-05 14:32:20'),
(42, 'upload/foto/siswa/siswa.png', 'DARA NAURIA SUGIANTI', NULL, '192010043', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(43, 'upload/foto/siswa/siswa.png', 'DESTIN PUTRI HUSNUSYIFA', NULL, '192010044', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(44, 'upload/foto/siswa/siswa.png', 'DILA SULASTRI', NULL, '192010045', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(45, 'upload/foto/siswa/siswa.png', 'EGI SUPRAYOGA', NULL, '192010046', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(46, 'upload/foto/siswa/siswa.png', 'ERNA NINGSIH AGUSTIANI', NULL, '192010047', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(47, 'upload/foto/siswa/siswa.png', 'FERA HERAWATI', NULL, '192010048', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(48, 'upload/foto/siswa/siswa.png', 'INDRA JUNIAR', NULL, '192010049', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(49, 'upload/foto/siswa/siswa.png', 'INE CERINE AWALIAH', NULL, '192010050', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(50, 'upload/foto/siswa/siswa.png', 'ISTIADAH', NULL, '192010051', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(51, 'upload/foto/siswa/siswa.png', 'KHARISMA NOVIANA CUSMAN', NULL, '192010052', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(52, 'upload/foto/siswa/siswa.png', 'LILIS NURAFIFAH', NULL, '192010053', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(53, 'upload/foto/siswa/siswa.png', 'MAHARANI DEWI RIZKY DEISTI', NULL, '192010054', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(54, 'upload/foto/siswa/siswa.png', 'MEYSA RAYLUNA', NULL, '192010055', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(55, 'upload/foto/siswa/siswa.png', 'MUHAMAD FAUZI UMAM', NULL, '192010056', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(56, 'upload/foto/siswa/siswa.png', 'NADIA NOERMAYUNITA', NULL, '192010057', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(57, 'upload/foto/siswa/siswa.png', 'NAKHLA SYA\'BAN FILDANI', NULL, '192010058', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(58, 'upload/foto/siswa/siswa.png', 'NATASHA MAWARIZ', NULL, '192010059', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(59, 'upload/foto/siswa/siswa.png', 'NIZAR SARIP', NULL, '192010060', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(60, 'upload/foto/siswa/siswa.png', 'NOVIYANTI WULAN RAMADHANI', NULL, '192010061', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(61, 'upload/foto/siswa/siswa.png', 'PISHA KHOEROTUL AGUSTIN', NULL, '192010062', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(62, 'upload/foto/siswa/siswa.png', 'RAHMA DHIA HAIFA', NULL, '192010063', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(63, 'upload/foto/siswa/siswa.png', 'RINI ROSMIATI', NULL, '192010064', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(64, 'upload/foto/siswa/siswa.png', 'SANTI MULYANI', NULL, '192010065', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(65, 'upload/foto/siswa/siswa.png', 'SILMA AMALIA', NULL, '192010066', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(66, 'upload/foto/siswa/siswa.png', 'SITI NURKHOERIAH', NULL, '192010067', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(67, 'upload/foto/siswa/siswa.png', 'SUSI SUSANTI', NULL, '192010068', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(68, 'upload/foto/siswa/siswa.png', 'VIA DELAVISTA', NULL, '192010069', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(69, 'upload/foto/siswa/siswa.png', 'WIDYA ANDIANI', NULL, '192010070', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(70, 'upload/foto/siswa/siswa.png', 'YUKE DELA OKTAVIANI', NULL, '192010071', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(71, 'upload/foto/siswa/siswa.png', 'YULIANI', NULL, '192010072', 1, '2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(72, 'upload/foto/siswa/siswa.png', 'ADITYA AHSANUL FIKRI', NULL, '192010073', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(73, 'upload/foto/siswa/siswa.png', 'AFNI INDRIYANI', NULL, '192010074', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(74, 'upload/foto/siswa/siswa.png', 'ALIYA', NULL, '192010075', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(75, 'upload/foto/siswa/siswa.png', 'ANGGY HERMALIA', NULL, '192010076', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(76, 'upload/foto/siswa/siswa.png', 'AZKA ALIFIA LUTFI', NULL, '192010077', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(77, 'upload/foto/siswa/siswa.png', 'CICA', NULL, '192010078', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(78, 'upload/foto/siswa/siswa.png', 'DEDEH SITI JUBAEDAH', NULL, '192010079', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(79, 'upload/foto/siswa/siswa.png', 'DEWI PUSPITASARI', NULL, '192010080', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(80, 'upload/foto/siswa/siswa.png', 'EKA LIA RAHMALIA', NULL, '192010081', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(81, 'upload/foto/siswa/siswa.png', 'EVA ALAWIAH', NULL, '192010082', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(82, 'upload/foto/siswa/siswa.png', 'FAISAL RHAMDANI', NULL, '192010083', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(83, 'upload/foto/siswa/siswa.png', 'FEVI AGUSTIN OKTAVIANI', NULL, '192010084', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(84, 'upload/foto/siswa/siswa.png', 'INTAN NATHALIA', NULL, '192010085', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(85, 'upload/foto/siswa/siswa.png', 'JALIANTI SOPYAN', NULL, '192010086', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(86, 'upload/foto/siswa/siswa.png', 'KAKA MOCHAMMAD RIZQI', NULL, '192010087', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(87, 'upload/foto/siswa/siswa.png', 'KIKI NURHAYATI', NULL, '192010088', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(88, 'upload/foto/siswa/siswa.png', 'LILIS SELVIANA DEWI', NULL, '192010089', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(89, 'upload/foto/siswa/siswa.png', 'MALWA NURHALIMAH', NULL, '192010090', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(90, 'upload/foto/siswa/siswa.png', 'MITA PEBRIANTI', NULL, '192010091', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(91, 'upload/foto/siswa/siswa.png', 'MUHAMAD HARVI SEPTIANA', NULL, '192010092', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(92, 'upload/foto/siswa/siswa.png', 'NADIATUL ALIMAH', NULL, '192010093', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(93, 'upload/foto/siswa/siswa.png', 'NANDA WIDIYA', NULL, '192010094', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(94, 'upload/foto/siswa/siswa.png', 'NAZWA DHEA ADHISTY', NULL, '192010095', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(95, 'upload/foto/siswa/siswa.png', 'NUR ASYIFA SAFARI SALAM', NULL, '192010096', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(96, 'upload/foto/siswa/siswa.png', 'PUTRI YUPITASARI', NULL, '192010097', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(97, 'upload/foto/siswa/siswa.png', 'RAFHAEL MAULANA SETIAWAN', NULL, '192010098', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(98, 'upload/foto/siswa/siswa.png', 'REFANIA HAFIFAH', NULL, '192010099', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(99, 'upload/foto/siswa/siswa.png', 'RIPA TSALTSABILA', NULL, '192010100', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(100, 'upload/foto/siswa/siswa.png', 'SANTI SARIFATUL ULYA', NULL, '192010101', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(101, 'upload/foto/siswa/siswa.png', 'SILVI LIANA MELIDA', NULL, '192010102', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(102, 'upload/foto/siswa/siswa.png', 'SITI ROSMAWATI', NULL, '192010103', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(103, 'upload/foto/siswa/siswa.png', 'TANIA RAHMAWATI HIDAYAT', NULL, '192010104', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(104, 'upload/foto/siswa/siswa.png', 'VIONA VINASTIA', NULL, '192010105', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(105, 'upload/foto/siswa/siswa.png', 'WINDI NOVIANA SAFITRI', NULL, '192010106', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(106, 'upload/foto/siswa/siswa.png', 'YULI RAHMAWATI', NULL, '192010107', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(107, 'upload/foto/siswa/siswa.png', 'YUNIAR MULYA RIANI', NULL, '192010108', 1, '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(108, 'upload/foto/siswa/siswa.png', 'AHMAD SHAMIL', NULL, '192010109', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(109, 'upload/foto/siswa/siswa.png', 'AI SITI AISYAH', NULL, '192010110', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(110, 'upload/foto/siswa/siswa.png', 'AMALIA OKTAVIANY', NULL, '192010111', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(111, 'upload/foto/siswa/siswa.png', 'ANISA', NULL, '192010112', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(112, 'upload/foto/siswa/siswa.png', 'CINDY UTAMI', NULL, '192010113', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:21', '2022-04-05 14:32:21'),
(113, 'upload/foto/siswa/siswa.png', 'DELA FITRI NURAENI', NULL, '192010114', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(114, 'upload/foto/siswa/siswa.png', 'DHEA ROSMALIANA', NULL, '192010116', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(115, 'upload/foto/siswa/siswa.png', 'ENUR', NULL, '192010117', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(116, 'upload/foto/siswa/siswa.png', 'EVI NURHAFIFAH', NULL, '192010118', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(117, 'upload/foto/siswa/siswa.png', 'FAIZAL ARDIANSYAH', NULL, '192010119', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(118, 'upload/foto/siswa/siswa.png', 'FEBIOLA AGNIA SALSABILA', NULL, '192010120', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(119, 'upload/foto/siswa/siswa.png', 'HESTIANI', NULL, '192010121', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(120, 'upload/foto/siswa/siswa.png', 'INTAN SANTIKA', NULL, '192010122', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(121, 'upload/foto/siswa/siswa.png', 'JUITA SARI', NULL, '192010123', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(122, 'upload/foto/siswa/siswa.png', 'LAELA PURNAMASARI', NULL, '192010124', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(123, 'upload/foto/siswa/siswa.png', 'LULU APRILIA', NULL, '192010125', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(124, 'upload/foto/siswa/siswa.png', 'MAMAY DAMAYANTI', NULL, '192010126', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(125, 'upload/foto/siswa/siswa.png', 'MEIZAR SANDIKA', NULL, '192010127', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(126, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ADITYA SAPUTRA', NULL, '192010128', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(127, 'upload/foto/siswa/siswa.png', 'MUSTIKA SYIFA DEWI', NULL, '192010129', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(128, 'upload/foto/siswa/siswa.png', 'NAJMA NUR ZAHRA', NULL, '192010130', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(129, 'upload/foto/siswa/siswa.png', 'NANI SUMARNI', NULL, '192010131', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(130, 'upload/foto/siswa/siswa.png', 'NINA DIANA', NULL, '192010132', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(131, 'upload/foto/siswa/siswa.png', 'NURUL PUTRI UTAMI', NULL, '192010133', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(132, 'upload/foto/siswa/siswa.png', 'QORIANA DIAN ATMA WIBISONO', NULL, '192010134', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(133, 'upload/foto/siswa/siswa.png', 'RAKHA MEIDHA PUTERA MANESTA', NULL, '192010135', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(134, 'upload/foto/siswa/siswa.png', 'RIKA MAYLA FAJAR', NULL, '192010136', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(135, 'upload/foto/siswa/siswa.png', 'RIZNA ROZANI', NULL, '192010137', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(136, 'upload/foto/siswa/siswa.png', 'SELI FITRIANI', NULL, '192010138', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(137, 'upload/foto/siswa/siswa.png', 'SITI ALMINA SARI', NULL, '192010139', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(138, 'upload/foto/siswa/siswa.png', 'SUMINAR', NULL, '192010140', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(139, 'upload/foto/siswa/siswa.png', 'TINA AGUSTIN', NULL, '192010141', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(140, 'upload/foto/siswa/siswa.png', 'WIDI LESTARI', NULL, '192010142', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(141, 'upload/foto/siswa/siswa.png', 'WULAN NUR AENY', NULL, '192010143', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(142, 'upload/foto/siswa/siswa.png', 'YULI YULIANI', NULL, '192010144', 1, '4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(143, 'upload/foto/siswa/siswa.png', 'ADITYA MULYA PUTRA', NULL, '192010145', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(144, 'upload/foto/siswa/siswa.png', 'AI ALEXSA', NULL, '192010146', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(145, 'upload/foto/siswa/siswa.png', 'ALYA DITA FAUZIYAH', NULL, '192010147', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(146, 'upload/foto/siswa/siswa.png', 'ANISA FITRI', NULL, '192010148', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(147, 'upload/foto/siswa/siswa.png', 'ARDI WAHYUDI', NULL, '192010149', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(148, 'upload/foto/siswa/siswa.png', 'DEBY DWI SAPUTRI', NULL, '192010150', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(149, 'upload/foto/siswa/siswa.png', 'DERISA AGUSTINA', NULL, '192010151', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(150, 'upload/foto/siswa/siswa.png', 'DINA NUR SOFIANI', NULL, '192010152', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(151, 'upload/foto/siswa/siswa.png', 'ELMA AMELIA', NULL, '192010154', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(152, 'upload/foto/siswa/siswa.png', 'EVA NURFITRI', NULL, '192010155', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(153, 'upload/foto/siswa/siswa.png', 'FAUZAN NURHIDAYAT', NULL, '192010156', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(154, 'upload/foto/siswa/siswa.png', 'IA WIDIASARI', NULL, '192010157', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(155, 'upload/foto/siswa/siswa.png', 'IDAN WILDAN', NULL, '192010158', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(156, 'upload/foto/siswa/siswa.png', 'IRMA FITRIANI', NULL, '192010160', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(157, 'upload/foto/siswa/siswa.png', 'KHOERUNISA MAULANI', NULL, '192010161', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(158, 'upload/foto/siswa/siswa.png', 'LALA KOMALA', NULL, '192010162', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(159, 'upload/foto/siswa/siswa.png', 'MEISI RAHMALIRA', NULL, '192010163', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(160, 'upload/foto/siswa/siswa.png', 'MUHAMAD ARIFQYYADI', NULL, '192010164', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(161, 'upload/foto/siswa/siswa.png', 'MUHAMMAD SYAHRIL RIVANA PUTRA', NULL, '192010165', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(162, 'upload/foto/siswa/siswa.png', 'NIA MARYANA', NULL, '192010166', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(163, 'upload/foto/siswa/siswa.png', 'NURUL ANGGRAENI', NULL, '192010167', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(164, 'upload/foto/siswa/siswa.png', 'RAMDANI', NULL, '192010168', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(165, 'upload/foto/siswa/siswa.png', 'RANI HANDAYANI', NULL, '192010169', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(166, 'upload/foto/siswa/siswa.png', 'RESTA AGUSTIAR KUSUMA WARDANI', NULL, '192010170', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(167, 'upload/foto/siswa/siswa.png', 'RINA SRI PRAJAYANTI', NULL, '192010171', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(168, 'upload/foto/siswa/siswa.png', 'RINEU TANIA', NULL, '192010172', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(169, 'upload/foto/siswa/siswa.png', 'RISMA MUTIARA', NULL, '192010173', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(170, 'upload/foto/siswa/siswa.png', 'RIVAN NUR RODIANSYAH', NULL, '192010174', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(171, 'upload/foto/siswa/siswa.png', 'ROSIYANI JULIANTI', NULL, '192010175', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(172, 'upload/foto/siswa/siswa.png', 'SELI YONIKA', NULL, '192010176', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(173, 'upload/foto/siswa/siswa.png', 'SILVIA JULIANTI', NULL, '192010177', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:22', '2022-04-05 14:32:22'),
(174, 'upload/foto/siswa/siswa.png', 'SITI NURJANAH', NULL, '192010178', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(175, 'upload/foto/siswa/siswa.png', 'TIARA RAHMAWATI', NULL, '192010179', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(176, 'upload/foto/siswa/siswa.png', 'WINDA NURLELA', NULL, '192010180', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(177, 'upload/foto/siswa/siswa.png', 'ELDA ROSTIKA PURNAMASARI', NULL, '202111577', 1, '5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(178, 'upload/foto/siswa/siswa.png', 'AGIS SUPRIATNA', NULL, '192010181', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(179, 'upload/foto/siswa/siswa.png', 'AJENG KUSTIKA DEWI', NULL, '192010182', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(180, 'upload/foto/siswa/siswa.png', 'AMELIA ISWANTI', NULL, '192010183', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(181, 'upload/foto/siswa/siswa.png', 'ASEP RAHMAT HIDAYAT', NULL, '192010184', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(182, 'upload/foto/siswa/siswa.png', 'AZRI MUKAROMAH', NULL, '192010185', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(183, 'upload/foto/siswa/siswa.png', 'DEDE MILA AMELIA', NULL, '192010186', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(184, 'upload/foto/siswa/siswa.png', 'DEDE RIPAN', NULL, '192010187', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(185, 'upload/foto/siswa/siswa.png', 'DESINTA SEPTIANI', NULL, '192010188', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(186, 'upload/foto/siswa/siswa.png', 'DINDA KHOIRUNNISA', NULL, '192010189', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(187, 'upload/foto/siswa/siswa.png', 'DWI APRILIANI', NULL, '192010190', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(188, 'upload/foto/siswa/siswa.png', 'ELSA LUSI SUCIANA', NULL, '192010191', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(189, 'upload/foto/siswa/siswa.png', 'FAUZY SAEPULLOH', NULL, '192010192', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(190, 'upload/foto/siswa/siswa.png', 'FEBI NURUL INSANI', NULL, '192010193', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(191, 'upload/foto/siswa/siswa.png', 'IDA FARIDA', NULL, '192010194', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(192, 'upload/foto/siswa/siswa.png', 'ILYAS MAULANA', NULL, '192010195', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(193, 'upload/foto/siswa/siswa.png', 'IZZA MAULIDA ANNISA RAHMAH', NULL, '192010196', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(194, 'upload/foto/siswa/siswa.png', 'JAPARUDIN MALIK', NULL, '192010197', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(195, 'upload/foto/siswa/siswa.png', 'KINASIH ROSNENDAH TAKARIA', NULL, '192010198', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(196, 'upload/foto/siswa/siswa.png', 'LUTFI NAFILAH UTAMI', NULL, '192010199', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(197, 'upload/foto/siswa/siswa.png', 'MUHAMAD FADHLAN RUSTAMAN', NULL, '192010200', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23');
INSERT INTO `siswa` (`id`, `foto`, `nama`, `nisn`, `nis`, `tahun_akademik_id`, `kelas_id`, `jurusan_id`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `anak_ke`, `warga_negara`, `agama`, `asal_sekolah`, `no_ijazah`, `tahun_lulus`, `alamat_sekolah`, `ayah`, `ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `wali`, `alamat_wali`, `kerja_wali`, `hubungan_wali`, `status`, `created_at`, `updated_at`) VALUES
(198, 'upload/foto/siswa/siswa.png', 'MUHAMMAD THORIQ ABDULLAH NUR HIDAYATULLAH', NULL, '192010201', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(199, 'upload/foto/siswa/siswa.png', 'NADIYA ZULFA NURAZIZAH', NULL, '192010202', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(200, 'upload/foto/siswa/siswa.png', 'NOPITA GUNA SARI', NULL, '192010203', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(201, 'upload/foto/siswa/siswa.png', 'OPIH CAHYATI', NULL, '192010204', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(202, 'upload/foto/siswa/siswa.png', 'REFI FAIZA PERMATA', NULL, '192010205', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(203, 'upload/foto/siswa/siswa.png', 'RESTA OKTA ARIANA PUTRI', NULL, '192010206', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(204, 'upload/foto/siswa/siswa.png', 'RIDHO MIFTAH FARID', NULL, '192010207', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(205, 'upload/foto/siswa/siswa.png', 'RIRIN MUSTIKA', NULL, '192010208', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(206, 'upload/foto/siswa/siswa.png', 'RISMA PUSPITASARI', NULL, '192010209', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(207, 'upload/foto/siswa/siswa.png', 'RIZKI SAEPULLOH', NULL, '192010210', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(208, 'upload/foto/siswa/siswa.png', 'SABINA OKTAFIANI', NULL, '192010211', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(209, 'upload/foto/siswa/siswa.png', 'SELLY GUSTIRA DEWI', NULL, '192010212', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(210, 'upload/foto/siswa/siswa.png', 'SINDI ROHAENI', NULL, '192010213', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(211, 'upload/foto/siswa/siswa.png', 'SRI CAHYATI', NULL, '192010214', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(212, 'upload/foto/siswa/siswa.png', 'TRY MULYANI RAHAYU', NULL, '192010215', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(213, 'upload/foto/siswa/siswa.png', 'WULANSARI', NULL, '192010216', 1, '6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(214, 'upload/foto/siswa/siswa.png', 'ALIF FIRMANSYAH', NULL, '192010217', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(215, 'upload/foto/siswa/siswa.png', 'ALIS NAFISA ZAHRA', NULL, '192010218', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(216, 'upload/foto/siswa/siswa.png', 'ALVY APRILIA', NULL, '192010219', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(217, 'upload/foto/siswa/siswa.png', 'AMELIA JULIANTI', NULL, '192010220', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(218, 'upload/foto/siswa/siswa.png', 'AZMI AHZAMI', NULL, '192010221', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(219, 'upload/foto/siswa/siswa.png', 'DELLA IMELDA KRISTIA', NULL, '192010222', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(220, 'upload/foto/siswa/siswa.png', 'DEWI', NULL, '192010223', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(221, 'upload/foto/siswa/siswa.png', 'DITA FEBRIYANTI', NULL, '192010224', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(222, 'upload/foto/siswa/siswa.png', 'ELI YULIYANTO', NULL, '192010225', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(223, 'upload/foto/siswa/siswa.png', 'ELIS SULASTRI', NULL, '192010226', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(224, 'upload/foto/siswa/siswa.png', 'EVA FAUZIYAH', NULL, '192010227', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(225, 'upload/foto/siswa/siswa.png', 'IMAN DARMANTO', NULL, '192010228', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(226, 'upload/foto/siswa/siswa.png', 'INTAN AULIA WULANDARI', NULL, '192010229', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(227, 'upload/foto/siswa/siswa.png', 'JIHAN NURHALIZA', NULL, '192010230', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(228, 'upload/foto/siswa/siswa.png', 'LAILA HOERUNNISA', NULL, '192010231', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(229, 'upload/foto/siswa/siswa.png', 'MARIA OKTAVIANI', NULL, '192010232', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(230, 'upload/foto/siswa/siswa.png', 'MOCH. ALDI', NULL, '192010233', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(231, 'upload/foto/siswa/siswa.png', 'MUHAMAD ILHAM FAJAR RIANDI', NULL, '192010234', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(232, 'upload/foto/siswa/siswa.png', 'MUMU MUHLISIN', NULL, '192010235', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(233, 'upload/foto/siswa/siswa.png', 'NAYA NURLAILA KHOIRUNNISA', NULL, '192010236', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(234, 'upload/foto/siswa/siswa.png', 'NUR ASRI', NULL, '192010237', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(235, 'upload/foto/siswa/siswa.png', 'NURAISAH', NULL, '192010238', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(236, 'upload/foto/siswa/siswa.png', 'PUJAWATI', NULL, '192010239', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(237, 'upload/foto/siswa/siswa.png', 'RELGA MONICA RAMANIA', NULL, '192010240', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(238, 'upload/foto/siswa/siswa.png', 'RIFA SUTRISNI', NULL, '192010241', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(239, 'upload/foto/siswa/siswa.png', 'RIF\'AT ABDUL MALIK', NULL, '192010242', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(240, 'upload/foto/siswa/siswa.png', 'RISMA MAUDI AZIZAH', NULL, '192010243', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(241, 'upload/foto/siswa/siswa.png', 'RIZKI AMELIA', NULL, '192010244', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:23', '2022-04-05 14:32:23'),
(242, 'upload/foto/siswa/siswa.png', 'SANI APRILIA', NULL, '192010245', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(243, 'upload/foto/siswa/siswa.png', 'SEPTIA NURHANDAYANI', NULL, '192010246', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(244, 'upload/foto/siswa/siswa.png', 'SINTIA ARRIANTI', NULL, '192010247', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(245, 'upload/foto/siswa/siswa.png', 'TATING SARININGSIH', NULL, '192010248', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(246, 'upload/foto/siswa/siswa.png', 'WIDIA SAKINATUN NAFISAH', NULL, '192010249', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(247, 'upload/foto/siswa/siswa.png', 'YOAN MAHARANI', NULL, '192010250', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(248, 'upload/foto/siswa/siswa.png', 'YULIANI SITI ZARIAH', NULL, '192010251', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(249, 'upload/foto/siswa/siswa.png', 'ZAHRA ZHILLAN YOSIKA', NULL, '192010252', 1, '7', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(250, 'upload/foto/siswa/siswa.png', 'ADE PITRIANI', NULL, '192010253', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(251, 'upload/foto/siswa/siswa.png', 'AKMAL MAULANA', NULL, '192010254', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(252, 'upload/foto/siswa/siswa.png', 'ALFI AFIATUL FAUZIAH', NULL, '192010255', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(253, 'upload/foto/siswa/siswa.png', 'ANISA NURFAUZIAH', NULL, '192010256', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(254, 'upload/foto/siswa/siswa.png', 'ARIF RIFAY MAULANA', NULL, '192010257', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(255, 'upload/foto/siswa/siswa.png', 'DEA LESTARI', NULL, '192010258', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(256, 'upload/foto/siswa/siswa.png', 'DEVI DRAJAT PERMANA', NULL, '192010259', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(257, 'upload/foto/siswa/siswa.png', 'DITA SITI FEBRIANI', NULL, '192010260', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(258, 'upload/foto/siswa/siswa.png', 'ERIYANA DWI PUTRI', NULL, '192010261', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(259, 'upload/foto/siswa/siswa.png', 'FITRIA RESKA AYU', NULL, '192010262', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(260, 'upload/foto/siswa/siswa.png', 'GUNTUR JULPAJRI', NULL, '192010263', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(261, 'upload/foto/siswa/siswa.png', 'HENDA PUTRIANI AISYAH', NULL, '192010264', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(262, 'upload/foto/siswa/siswa.png', 'ICA ARDELIA', NULL, '192010265', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(263, 'upload/foto/siswa/siswa.png', 'INDY FEBRIANI', NULL, '192010266', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(264, 'upload/foto/siswa/siswa.png', 'KINANTI ROSNENDAH TAKARIA', NULL, '192010267', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(265, 'upload/foto/siswa/siswa.png', 'LINDA SAFITRI', NULL, '192010268', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(266, 'upload/foto/siswa/siswa.png', 'LUSI APRILIANI', NULL, '192010269', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(267, 'upload/foto/siswa/siswa.png', 'MAYLAFAIZZA AULIA AZ-ZAHRA', NULL, '192010270', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(268, 'upload/foto/siswa/siswa.png', 'MIRA NAJWA SALSABILA', NULL, '192010271', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(269, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ADITIYA RAMADHAN', NULL, '192010272', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(270, 'upload/foto/siswa/siswa.png', 'NIA ANDIANI KURNIADIE', NULL, '192010273', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(271, 'upload/foto/siswa/siswa.png', 'NURLATIFAH', NULL, '192010274', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(272, 'upload/foto/siswa/siswa.png', 'RAHMAH MAULIDA', NULL, '192010275', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(273, 'upload/foto/siswa/siswa.png', 'RENA MAOLIDA', NULL, '192010276', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(274, 'upload/foto/siswa/siswa.png', 'REVA LISTY APRIANTY', NULL, '192010277', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(275, 'upload/foto/siswa/siswa.png', 'RIDWAN DENISTRIAN', NULL, '192010278', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(276, 'upload/foto/siswa/siswa.png', 'RIKA PUTRI AWALIAH FEBRIANTI', NULL, '192010279', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(277, 'upload/foto/siswa/siswa.png', 'RISMA SITI NURHALIZAH', NULL, '192010280', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(278, 'upload/foto/siswa/siswa.png', 'ROYYAN ZIA HILMI HIDAYAT', NULL, '192010281', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(279, 'upload/foto/siswa/siswa.png', 'SABRINA AMALIANI AWANIS', NULL, '192010282', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(280, 'upload/foto/siswa/siswa.png', 'SHILVIA NANDA PUTRY', NULL, '192010283', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(281, 'upload/foto/siswa/siswa.png', 'SISKA AMALIA', NULL, '192010284', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(282, 'upload/foto/siswa/siswa.png', 'SOPIYATUL KHOIRIYAH', NULL, '192010285', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(283, 'upload/foto/siswa/siswa.png', 'SUGIH PUTRI LESTARI', NULL, '192010286', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(284, 'upload/foto/siswa/siswa.png', 'THEVIRA NUR AZZAHRA', NULL, '192010287', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(285, 'upload/foto/siswa/siswa.png', 'WIDI INDRIYANA', NULL, '192010288', 1, '8', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(286, 'upload/foto/siswa/siswa.png', 'ADE TASYA FEBRILIANI', NULL, '192010289', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(287, 'upload/foto/siswa/siswa.png', 'ALDI ZAINURI HIKAM', NULL, '192010290', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(288, 'upload/foto/siswa/siswa.png', 'ALMA FAUZIAH', NULL, '192010291', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(289, 'upload/foto/siswa/siswa.png', 'ASRI MULYANTI', NULL, '192010292', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(290, 'upload/foto/siswa/siswa.png', 'DEA NOPIANA', NULL, '192010293', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(291, 'upload/foto/siswa/siswa.png', 'DIAN ANDRIANI', NULL, '192010294', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(292, 'upload/foto/siswa/siswa.png', 'DIMAS RAHMATTULLOH', NULL, '192010295', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(293, 'upload/foto/siswa/siswa.png', 'DITTA ANGGRAENI', NULL, '192010296', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(294, 'upload/foto/siswa/siswa.png', 'FAUZIYAH MUTMAINAH', NULL, '192010297', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(295, 'upload/foto/siswa/siswa.png', 'GISTA PERMATA', NULL, '192010298', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(296, 'upload/foto/siswa/siswa.png', 'HIDRINA HERDIN', NULL, '192010299', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(297, 'upload/foto/siswa/siswa.png', 'INDAH KARTIKA RULIANI', NULL, '192010300', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(298, 'upload/foto/siswa/siswa.png', 'IRDA SAFITRI', NULL, '192010301', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(299, 'upload/foto/siswa/siswa.png', 'KYTSA NAJWA AZZAHRA', NULL, '192010302', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(300, 'upload/foto/siswa/siswa.png', 'LUTFI  HAMIDAH', NULL, '192010304', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(301, 'upload/foto/siswa/siswa.png', 'MAULANA YUSUF', NULL, '192010305', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(302, 'upload/foto/siswa/siswa.png', 'MELISSA AUILA TARTILA', NULL, '192010306', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(303, 'upload/foto/siswa/siswa.png', 'NAZWA ALFIATUN FAIZAH', NULL, '192010307', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(304, 'upload/foto/siswa/siswa.png', 'NIRA RAHMAWATI', NULL, '192010308', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(305, 'upload/foto/siswa/siswa.png', 'PUJI AHMAD MAULANA', NULL, '192010309', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(306, 'upload/foto/siswa/siswa.png', 'PUPUT INTAN', NULL, '192010310', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(307, 'upload/foto/siswa/siswa.png', 'RAHMAH NUR SA\'DIYAH', NULL, '192010311', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(308, 'upload/foto/siswa/siswa.png', 'RESTI KURNIAWATI', NULL, '192010312', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(309, 'upload/foto/siswa/siswa.png', 'RIDWAN FADILAH', NULL, '192010313', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(310, 'upload/foto/siswa/siswa.png', 'RIKA AMALIZAH', NULL, '192010314', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:24', '2022-04-05 14:32:24'),
(311, 'upload/foto/siswa/siswa.png', 'RIMA AULIA', NULL, '192010315', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(312, 'upload/foto/siswa/siswa.png', 'RIZFA DWI RACHMA DIAN', NULL, '192010316', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(313, 'upload/foto/siswa/siswa.png', 'SALSABILA INTAN YANUARIKA', NULL, '192010317', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(314, 'upload/foto/siswa/siswa.png', 'SIFA BAETI NURAENI', NULL, '192010318', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(315, 'upload/foto/siswa/siswa.png', 'SITI AISYAH', NULL, '192010319', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(316, 'upload/foto/siswa/siswa.png', 'SRI SULASTRI', NULL, '192010320', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(317, 'upload/foto/siswa/siswa.png', 'SULISTIAWATI', NULL, '192010321', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(318, 'upload/foto/siswa/siswa.png', 'WAHYUDIN', NULL, '192010323', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(319, 'upload/foto/siswa/siswa.png', 'WULAN INDRIYANI', NULL, '192010324', 1, '9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(320, 'upload/foto/siswa/siswa.png', 'AI SITI NURHAYATI', NULL, '192010325', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(321, 'upload/foto/siswa/siswa.png', 'AMELIA MAULIDA', NULL, '192010326', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(322, 'upload/foto/siswa/siswa.png', 'ANDITO SENA DUANDA', NULL, '192010327', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(323, 'upload/foto/siswa/siswa.png', 'CHIKA DIANISA SHABIRAH', NULL, '192010328', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(324, 'upload/foto/siswa/siswa.png', 'DEA SANTIKA', NULL, '192010329', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(325, 'upload/foto/siswa/siswa.png', 'DINI NURAENI', NULL, '192010330', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(326, 'upload/foto/siswa/siswa.png', 'EKA FEBRYANTI', NULL, '192010331', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(327, 'upload/foto/siswa/siswa.png', 'FITRI HANDAYANI SANTOSO', NULL, '192010332', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(328, 'upload/foto/siswa/siswa.png', 'GANJAR NUGRAHA', NULL, '192010333', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(329, 'upload/foto/siswa/siswa.png', 'HANA RIZKA KAYLA', NULL, '192010334', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(330, 'upload/foto/siswa/siswa.png', 'HILDA NURHAYANI', NULL, '192010335', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(331, 'upload/foto/siswa/siswa.png', 'INDILA SITI LISTIANI', NULL, '192010336', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(332, 'upload/foto/siswa/siswa.png', 'KEISHA AYUDINA HARUN', NULL, '192010337', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(333, 'upload/foto/siswa/siswa.png', 'LILIS SEPTIANI DARMAWAN', NULL, '192010338', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(334, 'upload/foto/siswa/siswa.png', 'LITA HANDAYANI', NULL, '192010339', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(335, 'upload/foto/siswa/siswa.png', 'LUTFI AULIA NUR KHOTIMAH', NULL, '192010340', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(336, 'upload/foto/siswa/siswa.png', 'MELLY RAHMATUL MUNAWAROH', NULL, '192010341', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(337, 'upload/foto/siswa/siswa.png', 'MUHAMAD BAMBANG ERLAMBANG', NULL, '192010342', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(338, 'upload/foto/siswa/siswa.png', 'NELI INDRIANI', NULL, '192010343', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(339, 'upload/foto/siswa/siswa.png', 'NUNIK NURKHOLIFAH', NULL, '192010344', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(340, 'upload/foto/siswa/siswa.png', 'PUTRI FAUZI', NULL, '192010345', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(341, 'upload/foto/siswa/siswa.png', 'RAISHA NABILA PUTRI WIJAYA', NULL, '192010346', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(342, 'upload/foto/siswa/siswa.png', 'RESYA SITI NUR CHOLISYA', NULL, '192010347', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(343, 'upload/foto/siswa/siswa.png', 'REZIK ALDI NURLATIF', NULL, '192010348', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(344, 'upload/foto/siswa/siswa.png', 'RIFKI ABDUL AZIZ', NULL, '192010349', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(345, 'upload/foto/siswa/siswa.png', 'RIKA NURLIANI', NULL, '192010350', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(346, 'upload/foto/siswa/siswa.png', 'RISKA HADERANI', NULL, '192010351', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(347, 'upload/foto/siswa/siswa.png', 'RIZQINA SYAFNABILLA AGISTAVIA', NULL, '192010352', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(348, 'upload/foto/siswa/siswa.png', 'SHEYLA NURALIKA', NULL, '192010353', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(349, 'upload/foto/siswa/siswa.png', 'SUCI ISWARI GUMULYA KHOERUNNISA', NULL, '192010355', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(350, 'upload/foto/siswa/siswa.png', 'SYIFA AMALIA', NULL, '192010356', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(351, 'upload/foto/siswa/siswa.png', 'TRIA NABILA', NULL, '192010357', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(352, 'upload/foto/siswa/siswa.png', 'VIRLY NAFISATUL RAHMA', NULL, '192010358', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(353, 'upload/foto/siswa/siswa.png', 'YENI HERNIANI', NULL, '192010359', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(354, 'upload/foto/siswa/siswa.png', 'YUSAR SIDIK', NULL, '192010360', 1, '10', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(355, 'upload/foto/siswa/siswa.png', 'ADAM MUFTI', NULL, '192010361', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(356, 'upload/foto/siswa/siswa.png', 'ADE NURUL APRILIA', NULL, '192010362', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(357, 'upload/foto/siswa/siswa.png', 'AGUS RUDIANSAH', NULL, '192010363', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(358, 'upload/foto/siswa/siswa.png', 'ANITA SINDIYANI', NULL, '192010364', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(359, 'upload/foto/siswa/siswa.png', 'AZIZ FIRMAN NASHIHIN', NULL, '192010365', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(360, 'upload/foto/siswa/siswa.png', 'DIANI RESMAWATI', NULL, '192010366', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(361, 'upload/foto/siswa/siswa.png', 'DWI SEPTIANI', NULL, '192010367', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(362, 'upload/foto/siswa/siswa.png', 'FEBI FEBRIANTI', NULL, '192010368', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(363, 'upload/foto/siswa/siswa.png', 'GEMA AWAL KHALIFAH', NULL, '192010369', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(364, 'upload/foto/siswa/siswa.png', 'HAFARI FAJRIA NURUL UMMAH', NULL, '192010370', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(365, 'upload/foto/siswa/siswa.png', 'HANI HERDIYANTI', NULL, '192010371', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(366, 'upload/foto/siswa/siswa.png', 'HERDI HERLAMBANG', NULL, '192010372', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(367, 'upload/foto/siswa/siswa.png', 'IMELDA AMELIA', NULL, '192010373', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(368, 'upload/foto/siswa/siswa.png', 'LINDA AMELIA', NULL, '192010374', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(369, 'upload/foto/siswa/siswa.png', 'MELLI SRI NURSANTI', NULL, '192010375', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(370, 'upload/foto/siswa/siswa.png', 'MIRNA AYU NINGSIH', NULL, '192010376', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(371, 'upload/foto/siswa/siswa.png', 'MOHAMAD DARUL RAMADHANI', NULL, '192010377', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(372, 'upload/foto/siswa/siswa.png', 'MUHAMAD RIFKI', NULL, '192010378', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(373, 'upload/foto/siswa/siswa.png', 'NANA CAHYANA', NULL, '192010379', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(374, 'upload/foto/siswa/siswa.png', 'NAZWA SITI SABILLA', NULL, '192010380', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(375, 'upload/foto/siswa/siswa.png', 'NISA AYU RAHMAWATI', NULL, '192010381', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(376, 'upload/foto/siswa/siswa.png', 'NOOR FATIMAH DEVINA RAMADHANTI', NULL, '192010382', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(377, 'upload/foto/siswa/siswa.png', 'NURUL HERAWATI', NULL, '192010383', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(378, 'upload/foto/siswa/siswa.png', 'RAFLI RAHMAWAN', NULL, '192010384', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(379, 'upload/foto/siswa/siswa.png', 'RARA HERAWATI', NULL, '192010385', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(380, 'upload/foto/siswa/siswa.png', 'RIKBAL ADITYA', NULL, '192010386', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(381, 'upload/foto/siswa/siswa.png', 'RINA SRI NURHIDAYAH', NULL, '192010387', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(382, 'upload/foto/siswa/siswa.png', 'SABILA ANITA PUTRI', NULL, '192010388', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(383, 'upload/foto/siswa/siswa.png', 'SHIFA ZAHRATUNI SALSABILA', NULL, '192010389', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(384, 'upload/foto/siswa/siswa.png', 'SINDI LESTARI', NULL, '192010390', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(385, 'upload/foto/siswa/siswa.png', 'SITI ARUMSARI', NULL, '192010391', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(386, 'upload/foto/siswa/siswa.png', 'SRI RAHAYU', NULL, '192010392', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(387, 'upload/foto/siswa/siswa.png', 'SWITA RANI', NULL, '192010393', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:25', '2022-04-05 14:32:25'),
(388, 'upload/foto/siswa/siswa.png', 'TARI DWI NANDA', NULL, '192010394', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(389, 'upload/foto/siswa/siswa.png', 'VERA ZAHRA AULYA', NULL, '192010395', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(390, 'upload/foto/siswa/siswa.png', 'WINDY', NULL, '192010396', 1, '11', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(391, 'upload/foto/siswa/siswa.png', 'ADJI MULYA HIDAYAT', NULL, '192010397', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(392, 'upload/foto/siswa/siswa.png', 'AKMAL NAZHIR SYARIF', NULL, '192010398', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(393, 'upload/foto/siswa/siswa.png', 'ANGGIA NURAENI', NULL, '192010399', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26');
INSERT INTO `siswa` (`id`, `foto`, `nama`, `nisn`, `nis`, `tahun_akademik_id`, `kelas_id`, `jurusan_id`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `anak_ke`, `warga_negara`, `agama`, `asal_sekolah`, `no_ijazah`, `tahun_lulus`, `alamat_sekolah`, `ayah`, `ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `wali`, `alamat_wali`, `kerja_wali`, `hubungan_wali`, `status`, `created_at`, `updated_at`) VALUES
(394, 'upload/foto/siswa/siswa.png', 'ANNISA AZ-ZAHRA', NULL, '192010400', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(395, 'upload/foto/siswa/siswa.png', 'DELITA MAULANA', NULL, '192010401', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(396, 'upload/foto/siswa/siswa.png', 'DENDI ALI YAHYA ISKANDAR', NULL, '192010402', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(397, 'upload/foto/siswa/siswa.png', 'DILAH NURDALILAH', NULL, '192010403', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(398, 'upload/foto/siswa/siswa.png', 'FADILLA AULIA PUTRI', NULL, '192010404', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(399, 'upload/foto/siswa/siswa.png', 'FITRI NOPIANTI', NULL, '192010405', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(400, 'upload/foto/siswa/siswa.png', 'HAMANDA FISABILILAH', NULL, '192010406', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(401, 'upload/foto/siswa/siswa.png', 'ICHA SABRINA', NULL, '192010407', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(402, 'upload/foto/siswa/siswa.png', 'IMEY MEIDA LESTARI', NULL, '192010408', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(403, 'upload/foto/siswa/siswa.png', 'LISDIANI AZIZAH', NULL, '192010409', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(404, 'upload/foto/siswa/siswa.png', 'MIRA NURAZIZAH', NULL, '192010410', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(405, 'upload/foto/siswa/siswa.png', 'MUHAMAD ILHAM MAULANA AKBAR', NULL, '192010411', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(406, 'upload/foto/siswa/siswa.png', 'MUHAMAD ROFI\'I SAHIDUL HAK', NULL, '192010412', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(407, 'upload/foto/siswa/siswa.png', 'NAJWA JAUHARULMANIK', NULL, '192010413', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(408, 'upload/foto/siswa/siswa.png', 'NANANG SURYANA', NULL, '192010414', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(409, 'upload/foto/siswa/siswa.png', 'NIDA NURFAIZAH', NULL, '192010415', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(410, 'upload/foto/siswa/siswa.png', 'NISPIA WULANDARI', NULL, '192010416', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(411, 'upload/foto/siswa/siswa.png', 'NOVITA RAMDANIYATI', NULL, '192010417', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(412, 'upload/foto/siswa/siswa.png', 'RAHMA FARHATUZZAHRA', NULL, '192010418', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(413, 'upload/foto/siswa/siswa.png', 'RAMA RIZKY ARRAFI', NULL, '192010419', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(414, 'upload/foto/siswa/siswa.png', 'RINA ANDRIANI', NULL, '192010420', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(415, 'upload/foto/siswa/siswa.png', 'RINI NURAENI', NULL, '192010421', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(416, 'upload/foto/siswa/siswa.png', 'SARAS FAJARIAH', NULL, '192010422', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(417, 'upload/foto/siswa/siswa.png', 'SILVA DESTRIANAWATI', NULL, '192010423', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(418, 'upload/foto/siswa/siswa.png', 'SISKA APRILIANI', NULL, '192010424', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(419, 'upload/foto/siswa/siswa.png', 'SITI NAZIATUL WALIDIAH OKTAVIA', NULL, '192010425', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(420, 'upload/foto/siswa/siswa.png', 'SYINTA DESTRIANI', NULL, '192010427', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(421, 'upload/foto/siswa/siswa.png', 'TITIN SUPRIHATIN', NULL, '192010428', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(422, 'upload/foto/siswa/siswa.png', 'TRESNA YULIAWATI', NULL, '192010429', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(423, 'upload/foto/siswa/siswa.png', 'VIRA OKTAVIA', NULL, '192010430', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(424, 'upload/foto/siswa/siswa.png', 'YAYU YULIANA', NULL, '192010431', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(425, 'upload/foto/siswa/siswa.png', 'ZENNIO AL QIBLAT', NULL, '192010432', 1, '12', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(426, 'upload/foto/siswa/siswa.png', 'ADE INE APRILIANINGSIH', NULL, '192010433', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(427, 'upload/foto/siswa/siswa.png', 'AGESTI SITI NUR HAPIDAH', NULL, '192010434', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(428, 'upload/foto/siswa/siswa.png', 'AGIS RIDWAN BAYHAQI', NULL, '192010435', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(429, 'upload/foto/siswa/siswa.png', 'ALIF MAULANA IBRAHIM', NULL, '192010436', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(430, 'upload/foto/siswa/siswa.png', 'ANISA NUR AISYAH', NULL, '192010437', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(431, 'upload/foto/siswa/siswa.png', 'ANNA ASTRIANA', NULL, '192010438', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(432, 'upload/foto/siswa/siswa.png', 'ARINI DAMAYANTI', NULL, '192010439', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(433, 'upload/foto/siswa/siswa.png', 'AZIS', NULL, '192010440', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(434, 'upload/foto/siswa/siswa.png', 'CICA MAULANI PUTRI', NULL, '192010441', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(435, 'upload/foto/siswa/siswa.png', 'DINDA NURHALIZA', NULL, '192010442', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(436, 'upload/foto/siswa/siswa.png', 'DINI NURDIANI', NULL, '192010443', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(437, 'upload/foto/siswa/siswa.png', 'ENDAH SILVIA YUANITA', NULL, '192010444', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(438, 'upload/foto/siswa/siswa.png', 'FARID KUSTIAWAN', NULL, '192010445', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(439, 'upload/foto/siswa/siswa.png', 'GHINA KHAIRUNNISA', NULL, '192010446', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(440, 'upload/foto/siswa/siswa.png', 'GISKA MARSSELLA AMANY', NULL, '192010447', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(441, 'upload/foto/siswa/siswa.png', 'INDAH PERMATASARI', NULL, '192010448', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(442, 'upload/foto/siswa/siswa.png', 'LELA MARSELA', NULL, '192010449', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(443, 'upload/foto/siswa/siswa.png', 'NELIS', NULL, '192010450', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(444, 'upload/foto/siswa/siswa.png', 'NISA DWI ARYANTI', NULL, '192010451', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(445, 'upload/foto/siswa/siswa.png', 'NOVA AGUSTIA PUTRI', NULL, '192010452', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(446, 'upload/foto/siswa/siswa.png', 'NUR AMELIA TRIHAPSARI', NULL, '192010453', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(447, 'upload/foto/siswa/siswa.png', 'PUTRI NOVIA HASIM', NULL, '192010454', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(448, 'upload/foto/siswa/siswa.png', 'RAFI KHOERUL INSAN', NULL, '192010455', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(449, 'upload/foto/siswa/siswa.png', 'RIJAL PRATAMA', NULL, '192010457', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(450, 'upload/foto/siswa/siswa.png', 'RONI NUROHMAN', NULL, '192010459', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(451, 'upload/foto/siswa/siswa.png', 'SELIA NURFAUZIYAH', NULL, '192010460', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(452, 'upload/foto/siswa/siswa.png', 'SIDIK FATURROHMAN', NULL, '192010461', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(453, 'upload/foto/siswa/siswa.png', 'SILVI YUNINGSIH', NULL, '192010462', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(454, 'upload/foto/siswa/siswa.png', 'SITI NURHALIJA', NULL, '192010463', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(455, 'upload/foto/siswa/siswa.png', 'SITI SOPARIAH', NULL, '192010464', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(456, 'upload/foto/siswa/siswa.png', 'TESA TRIPUTRI', NULL, '192010465', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(457, 'upload/foto/siswa/siswa.png', 'TIA SEPTIANY PURWANTI', NULL, '192010466', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(458, 'upload/foto/siswa/siswa.png', 'VINDI VIRDIA ASTUTI', NULL, '192010467', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(459, 'upload/foto/siswa/siswa.png', 'WULAN PRATAMA PUTRI', NULL, '192010468', 1, '13', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(460, 'upload/foto/siswa/siswa.png', 'ADISTIRA SAPUTRI', NULL, '192010469', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(461, 'upload/foto/siswa/siswa.png', 'AGIS SAEPUDIN', NULL, '192010470', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(462, 'upload/foto/siswa/siswa.png', 'AMELIA DAMAYANTI', NULL, '192010471', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:26', '2022-04-05 14:32:26'),
(463, 'upload/foto/siswa/siswa.png', 'ANITA AGUSTIANI', NULL, '192010472', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(464, 'upload/foto/siswa/siswa.png', 'APRILIA', NULL, '192010473', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(465, 'upload/foto/siswa/siswa.png', 'ARI ARYANTO', NULL, '192010474', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(466, 'upload/foto/siswa/siswa.png', 'BULAN SUCI CINTAWATI', NULL, '192010475', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(467, 'upload/foto/siswa/siswa.png', 'CICI PERMATASARI', NULL, '192010476', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(468, 'upload/foto/siswa/siswa.png', 'DINA SRI MULYANI', NULL, '192010477', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(469, 'upload/foto/siswa/siswa.png', 'DINI AFRIANI', NULL, '192010478', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(470, 'upload/foto/siswa/siswa.png', 'ELMA ROSELINA', NULL, '192010479', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(471, 'upload/foto/siswa/siswa.png', 'GINA KARTIKA', NULL, '192010480', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(472, 'upload/foto/siswa/siswa.png', 'IHSAN ADRIANSAH MA\'SOEM', NULL, '192010481', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(473, 'upload/foto/siswa/siswa.png', 'IIN KONIAH', NULL, '192010482', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(474, 'upload/foto/siswa/siswa.png', 'LALA LISNAWATI', NULL, '192010483', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(475, 'upload/foto/siswa/siswa.png', 'MELA HALIMAH PUTRI HIDAYAT', NULL, '192010484', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(476, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ARVIL HERLIANA', NULL, '192010485', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(477, 'upload/foto/siswa/siswa.png', 'NETILAWATI', NULL, '192010486', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(478, 'upload/foto/siswa/siswa.png', 'NITA KHOERUNISA', NULL, '192010487', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(479, 'upload/foto/siswa/siswa.png', 'NOVIYANTI NURUL SAOMI', NULL, '192010488', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(480, 'upload/foto/siswa/siswa.png', 'NURUL WAFA', NULL, '192010489', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(481, 'upload/foto/siswa/siswa.png', 'RAHMA AMELIA', NULL, '192010490', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(482, 'upload/foto/siswa/siswa.png', 'RIFANDI ARYA FIRDAUS', NULL, '192010491', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(483, 'upload/foto/siswa/siswa.png', 'RINE RACHMAN NURYANI', NULL, '192010492', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(484, 'upload/foto/siswa/siswa.png', 'RIZAL NOVIANDI', NULL, '192010493', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(485, 'upload/foto/siswa/siswa.png', 'RIZKY RIDWAN BACHTIAR', NULL, '192010494', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(486, 'upload/foto/siswa/siswa.png', 'SANDI MAULANA', NULL, '192010495', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(487, 'upload/foto/siswa/siswa.png', 'SHAFIRA AMALIA RAHMANI', NULL, '192010496', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(488, 'upload/foto/siswa/siswa.png', 'SISKA PERMATASARI', NULL, '192010497', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(489, 'upload/foto/siswa/siswa.png', 'SITI ROHIMAH', NULL, '192010498', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(490, 'upload/foto/siswa/siswa.png', 'SRI NURHAYATI', NULL, '192010499', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(491, 'upload/foto/siswa/siswa.png', 'TIA SEKARSARI ARUM', NULL, '192010500', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(492, 'upload/foto/siswa/siswa.png', 'UPU MAHPUDOH', NULL, '192010501', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(493, 'upload/foto/siswa/siswa.png', 'VITA TRESNA ANGGRAENI', NULL, '192010502', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(494, 'upload/foto/siswa/siswa.png', 'ZIDAN AKMAL FADILAH', NULL, '192010503', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(495, 'upload/foto/siswa/siswa.png', 'ZUTRI INTAN', NULL, '192010504', 1, '14', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(496, 'upload/foto/siswa/siswa.png', 'ADI RAHMADI', NULL, '192010505', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(497, 'upload/foto/siswa/siswa.png', 'ALGHIFARI ROZAN SAKHARANA PUTRA', NULL, '192010506', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(498, 'upload/foto/siswa/siswa.png', 'AMALIA ZAHARA', NULL, '192010507', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(499, 'upload/foto/siswa/siswa.png', 'BENI SAPARI', NULL, '192010508', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(500, 'upload/foto/siswa/siswa.png', 'DEA ANGGRAENI', NULL, '192010509', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(501, 'upload/foto/siswa/siswa.png', 'DINA MARSELA', NULL, '192010510', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(502, 'upload/foto/siswa/siswa.png', 'FADHILAH ROVIATUL HAQ', NULL, '192010511', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(503, 'upload/foto/siswa/siswa.png', 'FAHRUL DWI PUTRA', NULL, '192010512', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(504, 'upload/foto/siswa/siswa.png', 'FARHAN SYADID S.', NULL, '192010513', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(505, 'upload/foto/siswa/siswa.png', 'FATIMAH AZZAHRA PUTRIYANA', NULL, '192010514', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(506, 'upload/foto/siswa/siswa.png', 'GIFFARI AIDIL ADHARI', NULL, '192010515', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(507, 'upload/foto/siswa/siswa.png', 'IWAN', NULL, '192010516', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(508, 'upload/foto/siswa/siswa.png', 'JAUZA ZIKRI ZAHARAWANI', NULL, '192010517', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(509, 'upload/foto/siswa/siswa.png', 'MAHANDA DZUHRISA', NULL, '192010518', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(510, 'upload/foto/siswa/siswa.png', 'MEILANI NUR PAJRINA', NULL, '192010519', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(511, 'upload/foto/siswa/siswa.png', 'MOCH. ILHAM RULIANA', NULL, '192010520', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(512, 'upload/foto/siswa/siswa.png', 'MUHAMAD IKHMAL FAISAL', NULL, '192010521', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(513, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ARDI GUNAWAN', NULL, '192010522', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(514, 'upload/foto/siswa/siswa.png', 'MUHAMMAD FATHUR ROCHMAN', NULL, '192010523', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(515, 'upload/foto/siswa/siswa.png', 'MUHAMMAD HILAL RAMDANI AKBAR', NULL, '192010524', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(516, 'upload/foto/siswa/siswa.png', 'MUHAMMAD RAFLY ALGHIFARI', NULL, '192010525', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(517, 'upload/foto/siswa/siswa.png', 'NAUFAL FADLULLAH AMJAD', NULL, '192010526', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(518, 'upload/foto/siswa/siswa.png', 'NAZIL MAKARIM RAMADHANY', NULL, '192010527', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(519, 'upload/foto/siswa/siswa.png', 'NOVIA RAMADHANI', NULL, '192010528', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:27', '2022-04-05 14:32:27'),
(520, 'upload/foto/siswa/siswa.png', 'PAHMI JAMIL', NULL, '192010529', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(521, 'upload/foto/siswa/siswa.png', 'PINA KARLINA', NULL, '192010530', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(522, 'upload/foto/siswa/siswa.png', 'RAFI ABDUL AZIZ', NULL, '192010531', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(523, 'upload/foto/siswa/siswa.png', 'RINA RIYANTI', NULL, '192010532', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(524, 'upload/foto/siswa/siswa.png', 'RISDA AZIZA AULIA', NULL, '192010533', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(525, 'upload/foto/siswa/siswa.png', 'RIZQI MAULANA NURUL AZIZ', NULL, '192010534', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(526, 'upload/foto/siswa/siswa.png', 'SITI NURJANAH', NULL, '192010535', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(527, 'upload/foto/siswa/siswa.png', 'TARISA VIDYA SUTARI', NULL, '192010536', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(528, 'upload/foto/siswa/siswa.png', 'TESA GUNAWAN', NULL, '192010537', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(529, 'upload/foto/siswa/siswa.png', 'TIAN NURAENI', NULL, '192010538', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(530, 'upload/foto/siswa/siswa.png', 'WULAN NURSALIMAH', NULL, '192010539', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(531, 'upload/foto/siswa/siswa.png', 'ZAKIYA ASHARI JULIANTI', NULL, '192010540', 1, '15', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(532, 'upload/foto/siswa/siswa.png', 'ADHIYA AGENG PRATIWI', NULL, '192010541', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(533, 'upload/foto/siswa/siswa.png', 'ADI FERDIANSYAH', NULL, '192010542', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(534, 'upload/foto/siswa/siswa.png', 'AGI BUSROL KARIM', NULL, '192010543', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(535, 'upload/foto/siswa/siswa.png', 'ALBAR ABDI RAHMAN', NULL, '192010544', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(536, 'upload/foto/siswa/siswa.png', 'ALDINA NURUL ZAHRO', NULL, '192010545', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(537, 'upload/foto/siswa/siswa.png', 'ARYA ANDIKA', NULL, '192010546', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(538, 'upload/foto/siswa/siswa.png', 'ASTRI ANDRIANI PUTRI', NULL, '192010547', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(539, 'upload/foto/siswa/siswa.png', 'BUSTANUL WILDAN ANSHARI', NULL, '192010548', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(540, 'upload/foto/siswa/siswa.png', 'DAFFA FAUZUL HAKIM', NULL, '192010549', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(541, 'upload/foto/siswa/siswa.png', 'DIAN OKTARI', NULL, '192010550', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(542, 'upload/foto/siswa/siswa.png', 'ENDANG LAELA SARI', NULL, '192010551', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(543, 'upload/foto/siswa/siswa.png', 'GADIS TAPANA BELA', NULL, '192010552', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(544, 'upload/foto/siswa/siswa.png', 'HENDRIK LESMANA PUTRA', NULL, '192010554', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(545, 'upload/foto/siswa/siswa.png', 'IJLALUL AKROM', NULL, '192010555', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(546, 'upload/foto/siswa/siswa.png', 'JENI ADI HIDAYAT', NULL, '192010556', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(547, 'upload/foto/siswa/siswa.png', 'M. IMAM FIRMAN SETIAWAN', NULL, '192010557', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(548, 'upload/foto/siswa/siswa.png', 'MARCELIO RIF\'AT', NULL, '192010558', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(549, 'upload/foto/siswa/siswa.png', 'MELI ROHIMAH PUTRI HIDAYAT', NULL, '192010559', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(550, 'upload/foto/siswa/siswa.png', 'MOHAMMAD RIANSYAH', NULL, '192010560', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(551, 'upload/foto/siswa/siswa.png', 'MUHAMAD AKBAR FAUZI', NULL, '192010561', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(552, 'upload/foto/siswa/siswa.png', 'MUHAMAD RIZQI', NULL, '192010562', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(553, 'upload/foto/siswa/siswa.png', 'MUHAMMAD  RIFAN FATHURROHMAN', NULL, '192010563', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(554, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ALFI ARDIANA', NULL, '192010564', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(555, 'upload/foto/siswa/siswa.png', 'MUHAMMAD SANDY NUR IHSAN', NULL, '192010565', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(556, 'upload/foto/siswa/siswa.png', 'NENDEN HINDUN KHOIRUNISA', NULL, '192010566', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(557, 'upload/foto/siswa/siswa.png', 'RAHMI HANIPAH', NULL, '192010567', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(558, 'upload/foto/siswa/siswa.png', 'REIHAN ANDIKA ABDIPRAJA MAKMUR', '0000012131', '192010568', 1, '16', 7, 'Laki-Laki', 'Ciamis', '2004-06-14', 'Jl. Pasar Rancah No. 32', '4', 'WNI', 'Islam', 'SMP Negeri 1 Rancah', NULL, '2019', 'Jl. Pasar Rancah No. 32', '-', '-', '-', '-', '-', NULL, '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-10 12:49:14'),
(559, 'upload/foto/siswa/siswa.png', 'REZA ISWANTO', NULL, '192010569', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(560, 'upload/foto/siswa/siswa.png', 'RIQZA HARLY SAPUTRA', NULL, '192010570', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(561, 'upload/foto/siswa/siswa.png', 'SATARIA KEMAL PASHA', NULL, '192010571', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(562, 'upload/foto/siswa/siswa.png', 'SEPTI GUNAWAN', NULL, '192010572', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(563, 'upload/foto/siswa/siswa.png', 'SISKA PUTRI APRILIANY MUSTIKASARI', NULL, '192010573', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(564, 'upload/foto/siswa/siswa.png', 'SYIFA NURANGGRAINI', NULL, '192010574', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(565, 'upload/foto/siswa/siswa.png', 'VIDI AZZAHRA MUJAHIDILLAH', NULL, '192010575', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(566, 'upload/foto/siswa/siswa.png', 'VIKHRAMA SATYA PUTRA JAGADENTHA', NULL, '192010576', 1, '16', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(567, 'upload/foto/siswa/siswa.png', 'ADE FARHAN KHOERUJJAMAN', NULL, '202110001', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(568, 'upload/foto/siswa/siswa.png', 'ADINDA LARASATI', NULL, '202110002', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(569, 'upload/foto/siswa/siswa.png', 'AJENG ALIVIA KHOERUNNISA', NULL, '202110003', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(570, 'upload/foto/siswa/siswa.png', 'AMARA MIRANTI IRZAN', NULL, '202110004', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(571, 'upload/foto/siswa/siswa.png', 'APAH DALPAH', NULL, '202110005', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(572, 'upload/foto/siswa/siswa.png', 'BELLA NURANISYA AZAHRA', NULL, '202110006', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(573, 'upload/foto/siswa/siswa.png', 'CITRA DEWI PUTRI SETIAWAN', NULL, '202110007', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(574, 'upload/foto/siswa/siswa.png', 'DAFFA NAUFAL ABID SAIFULLAH', NULL, '202110008', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(575, 'upload/foto/siswa/siswa.png', 'DEFALYA NAINA SUHERMAN', NULL, '202110009', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(576, 'upload/foto/siswa/siswa.png', 'DEVI DWI ANDRIYANI', NULL, '202110010', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(577, 'upload/foto/siswa/siswa.png', 'DILA NURFADILAH', NULL, '202110011', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(578, 'upload/foto/siswa/siswa.png', 'DISA LIESTIANIE PUTRI', NULL, '202110012', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(579, 'upload/foto/siswa/siswa.png', 'ELSA NURAINI', NULL, '202110013', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(580, 'upload/foto/siswa/siswa.png', 'FERDIANSYAH', NULL, '202110014', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(581, 'upload/foto/siswa/siswa.png', 'FIRDA NURJIHAN SALSABILA', NULL, '202110015', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(582, 'upload/foto/siswa/siswa.png', 'HALDINA SAFITRI', NULL, '202110016', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(583, 'upload/foto/siswa/siswa.png', 'IMAS SRI MASTUTI', NULL, '202110017', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:28', '2022-04-05 14:32:28'),
(584, 'upload/foto/siswa/siswa.png', 'IRMA', NULL, '202110018', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(585, 'upload/foto/siswa/siswa.png', 'LILIS WIDAYANTI', NULL, '202110019', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(586, 'upload/foto/siswa/siswa.png', 'MEILANA SALSABILA', NULL, '202110020', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(587, 'upload/foto/siswa/siswa.png', 'MOCHAMMAD  VICKY AL FATH PERMANA', NULL, '202110021', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29');
INSERT INTO `siswa` (`id`, `foto`, `nama`, `nisn`, `nis`, `tahun_akademik_id`, `kelas_id`, `jurusan_id`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `anak_ke`, `warga_negara`, `agama`, `asal_sekolah`, `no_ijazah`, `tahun_lulus`, `alamat_sekolah`, `ayah`, `ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `wali`, `alamat_wali`, `kerja_wali`, `hubungan_wali`, `status`, `created_at`, `updated_at`) VALUES
(588, 'upload/foto/siswa/siswa.png', 'N. REVANI NURZIHAN', NULL, '202110022', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(589, 'upload/foto/siswa/siswa.png', 'NANDA AZZAHRA ADAWIAH', NULL, '202110023', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(590, 'upload/foto/siswa/siswa.png', 'NURUL ZAMILA', NULL, '202110024', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(591, 'upload/foto/siswa/siswa.png', 'RAHMITHA AINA', NULL, '202110025', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(592, 'upload/foto/siswa/siswa.png', 'RESA NUHALIZA', NULL, '202110026', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(593, 'upload/foto/siswa/siswa.png', 'RESTI IRIYANTI', NULL, '202110027', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(594, 'upload/foto/siswa/siswa.png', 'RIDWAN FIRDAUS FAUZI HAKIM', NULL, '202110028', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(595, 'upload/foto/siswa/siswa.png', 'ROSIANA PUTRI', NULL, '202110029', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(596, 'upload/foto/siswa/siswa.png', 'SALSABILA', NULL, '202110030', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(597, 'upload/foto/siswa/siswa.png', 'SHELA FAUZIAH', NULL, '202110031', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(598, 'upload/foto/siswa/siswa.png', 'SITI NURUL AZIZAH', NULL, '202110032', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(599, 'upload/foto/siswa/siswa.png', 'SRI INTAN', NULL, '202110033', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(600, 'upload/foto/siswa/siswa.png', 'TIO PARHAN', NULL, '202110034', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(601, 'upload/foto/siswa/siswa.png', 'VENY LESTARI', NULL, '202110035', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(602, 'upload/foto/siswa/siswa.png', 'WINI NUR OPTAVIANI', NULL, '202110036', 2, '17', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(603, 'upload/foto/siswa/siswa.png', 'AFNENDA ZAHRATUNNISA', NULL, '202110037', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(604, 'upload/foto/siswa/siswa.png', 'ALIKA TAZKIAH REVA ANANDA', NULL, '202110038', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(605, 'upload/foto/siswa/siswa.png', 'ANGGI AGUSTINI', NULL, '202110039', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(606, 'upload/foto/siswa/siswa.png', 'ARUM RUMNASIH', NULL, '202110040', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(607, 'upload/foto/siswa/siswa.png', 'ASEP PAJAR', NULL, '202110041', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(608, 'upload/foto/siswa/siswa.png', 'CAHYA YULIA', NULL, '202110042', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(609, 'upload/foto/siswa/siswa.png', 'DARA PANIA', NULL, '202110043', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(610, 'upload/foto/siswa/siswa.png', 'DELIS APRIADILA', NULL, '202110044', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(611, 'upload/foto/siswa/siswa.png', 'DETRYAN GUSTIADI', NULL, '202110045', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(612, 'upload/foto/siswa/siswa.png', 'DEWI ISWATUN HASANAH', NULL, '202110046', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(613, 'upload/foto/siswa/siswa.png', 'DINDA SITI NURHASANAH', NULL, '202110047', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(614, 'upload/foto/siswa/siswa.png', 'DISA SWELA', NULL, '202110048', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(615, 'upload/foto/siswa/siswa.png', 'EVI SITI NUR\'APIPAH', NULL, '202110049', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(616, 'upload/foto/siswa/siswa.png', 'FITRI NUR\'AMINAH', NULL, '202110050', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(617, 'upload/foto/siswa/siswa.png', 'HANI KHOERUNNISA', NULL, '202110051', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(618, 'upload/foto/siswa/siswa.png', 'INDAH ROSIANA', NULL, '202110052', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(619, 'upload/foto/siswa/siswa.png', 'IRPAN SANJAYA', NULL, '202110053', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(620, 'upload/foto/siswa/siswa.png', 'ISVINA SITI PURNAMA', NULL, '202110054', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(621, 'upload/foto/siswa/siswa.png', 'LINDA NURMEILIA', NULL, '202110055', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(622, 'upload/foto/siswa/siswa.png', 'MELIANA ANGGRAENI', NULL, '202110056', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(623, 'upload/foto/siswa/siswa.png', 'MONGGA FITRI MAHARANI', NULL, '202110057', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(624, 'upload/foto/siswa/siswa.png', 'NAYA YULIANTI', NULL, '202110058', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(625, 'upload/foto/siswa/siswa.png', 'NUR ASRIFATUL SAFITRI', NULL, '202110059', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(626, 'upload/foto/siswa/siswa.png', 'PENTI', NULL, '202110060', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(627, 'upload/foto/siswa/siswa.png', 'RANI YULIANI', NULL, '202110061', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(628, 'upload/foto/siswa/siswa.png', 'RESA NURAINI', NULL, '202110062', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(629, 'upload/foto/siswa/siswa.png', 'RESTU AULIA AMANDA', NULL, '202110063', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(630, 'upload/foto/siswa/siswa.png', 'REVINNA NAZLAA ANTARINI', NULL, '202110064', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(631, 'upload/foto/siswa/siswa.png', 'RIZQI HIKMATUROJAB', NULL, '202110065', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(632, 'upload/foto/siswa/siswa.png', 'SABILLA SALMA MARYAM', NULL, '202110066', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(633, 'upload/foto/siswa/siswa.png', 'SANIA', NULL, '202110067', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(634, 'upload/foto/siswa/siswa.png', 'SIFA NUR FADILAH', NULL, '202110068', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(635, 'upload/foto/siswa/siswa.png', 'SITI ROHIMAH', NULL, '202110069', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(636, 'upload/foto/siswa/siswa.png', 'SUCCI OCKTAVIANI PUTRI', NULL, '202110070', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(637, 'upload/foto/siswa/siswa.png', 'WINA YUNINGSIH', NULL, '202110071', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(638, 'upload/foto/siswa/siswa.png', 'ZAHWA DENIERA BILQIS', NULL, '202110072', 2, '18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(639, 'upload/foto/siswa/siswa.png', 'AGISA PUTRI WULANDARI RUSDIANA', NULL, '202110073', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(640, 'upload/foto/siswa/siswa.png', 'ALYA SITI RAHMAWATI', NULL, '202110074', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(641, 'upload/foto/siswa/siswa.png', 'ANNISA DWI FEBRILANA', NULL, '202110075', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(642, 'upload/foto/siswa/siswa.png', 'ASEP SUPRIATNA', NULL, '202110076', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(643, 'upload/foto/siswa/siswa.png', 'AULIA YUNIDA NUR APRILIANTY', NULL, '202110077', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(644, 'upload/foto/siswa/siswa.png', 'CAKRA WANGI N.C. DEWI LOKA', NULL, '202110078', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(645, 'upload/foto/siswa/siswa.png', 'DEA ANANDA WIDIA', NULL, '202110079', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(646, 'upload/foto/siswa/siswa.png', 'DERISNA PERMATA', NULL, '202110080', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(647, 'upload/foto/siswa/siswa.png', 'DEWI LARA ANJANGSARI', NULL, '202110081', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(648, 'upload/foto/siswa/siswa.png', 'DINI NUR ANISA', NULL, '202110082', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(649, 'upload/foto/siswa/siswa.png', 'DONI ALDEANTO', NULL, '202110083', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(650, 'upload/foto/siswa/siswa.png', 'ELGY SUNDARI', NULL, '202110084', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(651, 'upload/foto/siswa/siswa.png', 'FADIAH NAULAH HUSNA', NULL, '202110085', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(652, 'upload/foto/siswa/siswa.png', 'FIYNA RAHMAWATI', NULL, '202110086', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(653, 'upload/foto/siswa/siswa.png', 'HANI NARULITA', NULL, '202110087', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(654, 'upload/foto/siswa/siswa.png', 'INTAN INDRIANI', NULL, '202110088', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(655, 'upload/foto/siswa/siswa.png', 'KARINA DESIANI SUWARTO', NULL, '202110089', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(656, 'upload/foto/siswa/siswa.png', 'LITA DEWI AGUSTIANI', NULL, '202110090', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(657, 'upload/foto/siswa/siswa.png', 'M. AKMAL RAFI GHASANI', NULL, '202110091', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:29', '2022-04-05 14:32:29'),
(658, 'upload/foto/siswa/siswa.png', 'MEYSHABILA MAHARANI PUTRI', NULL, '202110092', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(659, 'upload/foto/siswa/siswa.png', 'MUHIMAH SAPUTRI', NULL, '202110093', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(660, 'upload/foto/siswa/siswa.png', 'NISA ARYANTI', NULL, '202110094', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(661, 'upload/foto/siswa/siswa.png', 'NISA ULIJATI', NULL, '202110095', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(662, 'upload/foto/siswa/siswa.png', 'NURLAILA', NULL, '202110096', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(663, 'upload/foto/siswa/siswa.png', 'RAFIKAH NUR AZIZ', NULL, '202110097', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(664, 'upload/foto/siswa/siswa.png', 'RENNA ERIANA', NULL, '202110098', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(665, 'upload/foto/siswa/siswa.png', 'RESHANDA AGUSTIN', NULL, '202110099', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(666, 'upload/foto/siswa/siswa.png', 'RESTY LHIVIA WIDIASTRI', NULL, '202110100', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(667, 'upload/foto/siswa/siswa.png', 'RIDA', NULL, '202110101', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(668, 'upload/foto/siswa/siswa.png', 'SAHWALANI AINUL FITRI', NULL, '202110102', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(669, 'upload/foto/siswa/siswa.png', 'SANDI FAUZAN HIDAYAT', NULL, '202110103', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(670, 'upload/foto/siswa/siswa.png', 'SEFI KOMALASARI', NULL, '202110104', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(671, 'upload/foto/siswa/siswa.png', 'SILVIA FERONICA', NULL, '202110105', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(672, 'upload/foto/siswa/siswa.png', 'SOCA GALUH PURNAMA', NULL, '202110106', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(673, 'upload/foto/siswa/siswa.png', 'SUSI TRISNAWATI', NULL, '202110107', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(674, 'upload/foto/siswa/siswa.png', 'WINDA RATNA AYU', NULL, '202110108', 2, '19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(675, 'upload/foto/siswa/siswa.png', 'AI NURUL', NULL, '202110109', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(676, 'upload/foto/siswa/siswa.png', 'AMALIA DWI YANTI', NULL, '202110110', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(677, 'upload/foto/siswa/siswa.png', 'ANNISA SRI SYA\'BANIAH', NULL, '202110111', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(678, 'upload/foto/siswa/siswa.png', 'AWALIA PUTRI', NULL, '202110112', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(679, 'upload/foto/siswa/siswa.png', 'CHESA NURFAJAR MAULANA', NULL, '202110113', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(680, 'upload/foto/siswa/siswa.png', 'CHIKITA MAWARNI', NULL, '202110114', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(681, 'upload/foto/siswa/siswa.png', 'DETI NABILLAH', NULL, '202110115', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(682, 'upload/foto/siswa/siswa.png', 'DEWI NURWULAN', NULL, '202110116', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(683, 'upload/foto/siswa/siswa.png', 'DHEA AULIA', NULL, '202110117', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(684, 'upload/foto/siswa/siswa.png', 'DINI RUKMANA DEWI', NULL, '202110118', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(685, 'upload/foto/siswa/siswa.png', 'ELIS SRI FARIDA', NULL, '202110119', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(686, 'upload/foto/siswa/siswa.png', 'FAHIRA PEBRIYANTI', NULL, '202110120', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(687, 'upload/foto/siswa/siswa.png', 'FAHMI FAUZI RAMDANI', NULL, '202110121', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(688, 'upload/foto/siswa/siswa.png', 'GITA MAHARANI', NULL, '202110122', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(689, 'upload/foto/siswa/siswa.png', 'HEPY', NULL, '202110123', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(690, 'upload/foto/siswa/siswa.png', 'INTAN LESVIA', NULL, '202110124', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(691, 'upload/foto/siswa/siswa.png', 'KARINA RATNASARI', NULL, '202110125', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(692, 'upload/foto/siswa/siswa.png', 'LUTHFI LATHIFAH', NULL, '202110126', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(693, 'upload/foto/siswa/siswa.png', 'MOCHAMAD ALDITIYANSYAH', NULL, '202110127', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(694, 'upload/foto/siswa/siswa.png', 'MUCHAMAD ADJI MALIK SYAJIDIN', NULL, '202110128', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(695, 'upload/foto/siswa/siswa.png', 'MULYA SHAPUTRA', NULL, '202110129', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(696, 'upload/foto/siswa/siswa.png', 'NANDA ANISA', NULL, '202110130', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(697, 'upload/foto/siswa/siswa.png', 'NISA DWI OKTAVIANI', NULL, '202110131', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(698, 'upload/foto/siswa/siswa.png', 'NURUL IKHLAS HIDAYAH', NULL, '202110132', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(699, 'upload/foto/siswa/siswa.png', 'RAHMITA DEWI', NULL, '202110133', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(700, 'upload/foto/siswa/siswa.png', 'RENA JULIANTI', NULL, '202110134', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(701, 'upload/foto/siswa/siswa.png', 'RESTHY CESARIA NURBAITI HARTONO', NULL, '202110135', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(702, 'upload/foto/siswa/siswa.png', 'REVALIA MAHARANI', NULL, '202110136', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(703, 'upload/foto/siswa/siswa.png', 'RINA ANILUL ROHMAH', NULL, '202110137', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(704, 'upload/foto/siswa/siswa.png', 'SALSABILA', NULL, '202110138', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(705, 'upload/foto/siswa/siswa.png', 'SHEENA MAHARANI', NULL, '202110139', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(706, 'upload/foto/siswa/siswa.png', 'SITI ALIAH', NULL, '202110140', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(707, 'upload/foto/siswa/siswa.png', 'SRI ANGGRAENI', NULL, '202110141', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(708, 'upload/foto/siswa/siswa.png', 'TEGUH FRASTIA AGUSTIAN', NULL, '202110142', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(709, 'upload/foto/siswa/siswa.png', 'UTARI MUNJIAH', NULL, '202110143', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(710, 'upload/foto/siswa/siswa.png', 'WINDY ROSMIATI', NULL, '202110144', 2, '20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(711, 'upload/foto/siswa/siswa.png', 'ADEL DELA JULIANTI', NULL, '202110145', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(712, 'upload/foto/siswa/siswa.png', 'AGIL HENDRAWAN', NULL, '202110146', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(713, 'upload/foto/siswa/siswa.png', 'ALYA KANIA', NULL, '202110147', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(714, 'upload/foto/siswa/siswa.png', 'AMANDA DESTYA PUTRI', NULL, '202110148', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(715, 'upload/foto/siswa/siswa.png', 'ANNAS NASRUDIN', NULL, '202110149', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(716, 'upload/foto/siswa/siswa.png', 'ANYA WULANDARI', NULL, '202110150', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(717, 'upload/foto/siswa/siswa.png', 'CINDY MELISA', NULL, '202110151', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(718, 'upload/foto/siswa/siswa.png', 'DEDEN ARIA ANDRIANA', NULL, '202110152', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(719, 'upload/foto/siswa/siswa.png', 'DENTI RISMAYANTI RIZQI FAUZIAH', NULL, '202110153', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(720, 'upload/foto/siswa/siswa.png', 'DESI SITI SAMROTULFU\'ADAKH', NULL, '202110154', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(721, 'upload/foto/siswa/siswa.png', 'DINI ANDINI', NULL, '202110155', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(722, 'upload/foto/siswa/siswa.png', 'ELSA DAMAYANTI', NULL, '202110156', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(723, 'upload/foto/siswa/siswa.png', 'FAJAR ARYA PRATAMA', NULL, '202110157', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(724, 'upload/foto/siswa/siswa.png', 'FIRMAN HIDAYAT', NULL, '202110158', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:30', '2022-04-05 14:32:30'),
(725, 'upload/foto/siswa/siswa.png', 'FUZY RAHAYU LESTARI', NULL, '202110159', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(726, 'upload/foto/siswa/siswa.png', 'HERAWATI ALFIASANI', NULL, '202110160', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(727, 'upload/foto/siswa/siswa.png', 'INDRIANY', NULL, '202110161', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(728, 'upload/foto/siswa/siswa.png', 'JIHAN SAFIRA', NULL, '202110162', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(729, 'upload/foto/siswa/siswa.png', 'MAHSA TSANY KUSUMASEPTYA', NULL, '202110163', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(730, 'upload/foto/siswa/siswa.png', 'MELANI NURMAYANSAH', NULL, '202110164', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(731, 'upload/foto/siswa/siswa.png', 'MUHAMAD AGUM UBAIDILLAH', NULL, '202110165', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(732, 'upload/foto/siswa/siswa.png', 'NADIA ZAHIRA FAUZYIAH', NULL, '202110166', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(733, 'upload/foto/siswa/siswa.png', 'NAZWA PRAMESWARI', NULL, '202110167', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(734, 'upload/foto/siswa/siswa.png', 'NIZMA NINDYA AZZAHRA', NULL, '202110168', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(735, 'upload/foto/siswa/siswa.png', 'RAFLY RIFALDY', NULL, '202110169', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(736, 'upload/foto/siswa/siswa.png', 'RANI WIDA ANJANI', NULL, '202110170', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(737, 'upload/foto/siswa/siswa.png', 'REFKI VIKIYATUL ILMIAH', NULL, '202110171', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(738, 'upload/foto/siswa/siswa.png', 'RENALDI HILMAN GUNAWAN', NULL, '202110172', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(739, 'upload/foto/siswa/siswa.png', 'REVA RAMADHANI', NULL, '202110173', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(740, 'upload/foto/siswa/siswa.png', 'SELPI AGUSTINA', NULL, '202110174', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(741, 'upload/foto/siswa/siswa.png', 'SHINTA AMELIA', NULL, '202110175', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(742, 'upload/foto/siswa/siswa.png', 'SOVI NOVITA SARI CAHYANI', NULL, '202110176', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(743, 'upload/foto/siswa/siswa.png', 'SRI RAHAYU', NULL, '202110177', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(744, 'upload/foto/siswa/siswa.png', 'TESA FITRIANI', NULL, '202110178', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(745, 'upload/foto/siswa/siswa.png', 'TRESNA NURMALA', NULL, '202110179', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(746, 'upload/foto/siswa/siswa.png', 'WINDI WINDIARTI', NULL, '202110180', 2, '21', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(747, 'upload/foto/siswa/siswa.png', 'AGUNG', NULL, '202110181', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(748, 'upload/foto/siswa/siswa.png', 'AJENG SITI RAMADHANI', NULL, '202110182', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(749, 'upload/foto/siswa/siswa.png', 'AMALAWATI AULIA', NULL, '202110183', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(750, 'upload/foto/siswa/siswa.png', 'AMELIA WULANDARI', NULL, '202110184', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(751, 'upload/foto/siswa/siswa.png', 'ARI', NULL, '202110185', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(752, 'upload/foto/siswa/siswa.png', 'AYU SILVA WULANDARI', NULL, '202110186', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(753, 'upload/foto/siswa/siswa.png', 'DELLA SYARAH FADILAH', NULL, '202110187', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(754, 'upload/foto/siswa/siswa.png', 'DESI', NULL, '202110188', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(755, 'upload/foto/siswa/siswa.png', 'DESTA PUTRI BENAZA', NULL, '202110189', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(756, 'upload/foto/siswa/siswa.png', 'DIAN SUKMAWAN', NULL, '202110190', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(757, 'upload/foto/siswa/siswa.png', 'DINI MEILANI', NULL, '202110191', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(758, 'upload/foto/siswa/siswa.png', 'EVI RAHAYU', NULL, '202110192', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(759, 'upload/foto/siswa/siswa.png', 'FAUZAN DJULPIQRI', NULL, '202110193', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(760, 'upload/foto/siswa/siswa.png', 'HASYA SITI NUR\'AQILA', NULL, '202110194', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(761, 'upload/foto/siswa/siswa.png', 'IDA ANGGRAENI', NULL, '202110195', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(762, 'upload/foto/siswa/siswa.png', 'IMAM FIRMANSAH', NULL, '202110196', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(763, 'upload/foto/siswa/siswa.png', 'INTARI AISYA NURPADZILA', NULL, '202110197', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(764, 'upload/foto/siswa/siswa.png', 'KAILA SALSABILA PUTRI GUNAWAN', NULL, '202110198', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(765, 'upload/foto/siswa/siswa.png', 'MAULINA TASYA RACHMADILLA', NULL, '202110199', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(766, 'upload/foto/siswa/siswa.png', 'MUHAMAD ALDRIN HIDAYAT', NULL, '202110200', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(767, 'upload/foto/siswa/siswa.png', 'MUNA PUJA MUSTIKA', NULL, '202110201', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(768, 'upload/foto/siswa/siswa.png', 'NAJLA AISYAH', NULL, '202110202', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(769, 'upload/foto/siswa/siswa.png', 'NISA AI NUSIPA', NULL, '202110203', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(770, 'upload/foto/siswa/siswa.png', 'NOVA YULIANI', NULL, '202110204', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(771, 'upload/foto/siswa/siswa.png', 'RAGIL NUGRAHA', NULL, '202110205', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(772, 'upload/foto/siswa/siswa.png', 'RASITA BELA', NULL, '202110206', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(773, 'upload/foto/siswa/siswa.png', 'REKHA MAULIDDINA', NULL, '202110207', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(774, 'upload/foto/siswa/siswa.png', 'RIKA MAUDI ROSMIATI', NULL, '202110208', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(775, 'upload/foto/siswa/siswa.png', 'SELVI RADIA PUTRI', NULL, '202110209', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(776, 'upload/foto/siswa/siswa.png', 'SIFA ALIA', NULL, '202110210', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(777, 'upload/foto/siswa/siswa.png', 'SITI SA\'DIAH', NULL, '202110211', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(778, 'upload/foto/siswa/siswa.png', 'SRI WULAN DARI', NULL, '202110212', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(779, 'upload/foto/siswa/siswa.png', 'TINA GISELA AGUSTINA', NULL, '202110213', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(780, 'upload/foto/siswa/siswa.png', 'TYA DESWINTIYASARI', NULL, '202110214', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(781, 'upload/foto/siswa/siswa.png', 'YESI', NULL, '202110215', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(782, 'upload/foto/siswa/siswa.png', 'YUSUF ABABIL', NULL, '202110216', 2, '22', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(783, 'upload/foto/siswa/siswa.png', 'AGUS SUGIAR', NULL, '202110217', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31');
INSERT INTO `siswa` (`id`, `foto`, `nama`, `nisn`, `nis`, `tahun_akademik_id`, `kelas_id`, `jurusan_id`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `anak_ke`, `warga_negara`, `agama`, `asal_sekolah`, `no_ijazah`, `tahun_lulus`, `alamat_sekolah`, `ayah`, `ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `wali`, `alamat_wali`, `kerja_wali`, `hubungan_wali`, `status`, `created_at`, `updated_at`) VALUES
(784, 'upload/foto/siswa/siswa.png', 'ALMA SARASWATI', NULL, '202110218', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(785, 'upload/foto/siswa/siswa.png', 'AMALIA PAUZIAH NURJANAH', NULL, '202110219', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(786, 'upload/foto/siswa/siswa.png', 'AMELLIA AYU LESTARI', NULL, '202110220', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:31', '2022-04-05 14:32:31'),
(787, 'upload/foto/siswa/siswa.png', 'ARIA KUSWANDA', NULL, '202110221', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(788, 'upload/foto/siswa/siswa.png', 'AZELLA PAVITA FLORANTY', NULL, '202110222', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(789, 'upload/foto/siswa/siswa.png', 'DESI PUSPITA', NULL, '202110223', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(790, 'upload/foto/siswa/siswa.png', 'DESTY YULIANTY', NULL, '202110224', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(791, 'upload/foto/siswa/siswa.png', 'DIMAS YANUARSAM', NULL, '202110225', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(792, 'upload/foto/siswa/siswa.png', 'DINI NURAINI', NULL, '202110226', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(793, 'upload/foto/siswa/siswa.png', 'FERI IRMANSYAH', NULL, '202110227', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(794, 'upload/foto/siswa/siswa.png', 'FITRI NUR ANGGRAENI', NULL, '202110228', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(795, 'upload/foto/siswa/siswa.png', 'IIS ISMAYANTI', NULL, '202110229', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(796, 'upload/foto/siswa/siswa.png', 'JIHAN NURBAIT', NULL, '202110230', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(797, 'upload/foto/siswa/siswa.png', 'LILIS MELYSA', NULL, '202110231', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(798, 'upload/foto/siswa/siswa.png', 'LORI AGUSTIN', NULL, '202110232', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(799, 'upload/foto/siswa/siswa.png', 'MAY DAMAYANTI', NULL, '202110233', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(800, 'upload/foto/siswa/siswa.png', 'MUHAMMAD RIZKY LUTFIANA HERDIS', NULL, '202110234', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(801, 'upload/foto/siswa/siswa.png', 'NAYA AUFAGASTA NURFASYA', NULL, '202110235', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(802, 'upload/foto/siswa/siswa.png', 'NITA ANGGRAENI', NULL, '202110236', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(803, 'upload/foto/siswa/siswa.png', 'PEBRIANI NUR AZIZAH', NULL, '202110237', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(804, 'upload/foto/siswa/siswa.png', 'RAIHAN AGUS ATHALLAH', NULL, '202110238', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(805, 'upload/foto/siswa/siswa.png', 'RATIH PERMATA SARI', NULL, '202110239', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(806, 'upload/foto/siswa/siswa.png', 'RESTU NAUFAL SHIDQI', NULL, '202110240', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(807, 'upload/foto/siswa/siswa.png', 'RIAN APRIANSYAH', NULL, '202110241', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(808, 'upload/foto/siswa/siswa.png', 'RINDA INTAN AULIA', NULL, '202110242', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(809, 'upload/foto/siswa/siswa.png', 'RIVAN HAIKAL', NULL, '202110243', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(810, 'upload/foto/siswa/siswa.png', 'SERLI WULANDARI', NULL, '202110244', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(811, 'upload/foto/siswa/siswa.png', 'SISKA GANISKA', NULL, '202110245', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(812, 'upload/foto/siswa/siswa.png', 'SITI NURJANAH', NULL, '202110246', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(813, 'upload/foto/siswa/siswa.png', 'SITINA', NULL, '202110247', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(814, 'upload/foto/siswa/siswa.png', 'SRI MULYANI', NULL, '202110248', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(815, 'upload/foto/siswa/siswa.png', 'TENI KHOIRUNISA', NULL, '202110249', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(816, 'upload/foto/siswa/siswa.png', 'TITA NURHAYATI', NULL, '202110250', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(817, 'upload/foto/siswa/siswa.png', 'WIDANINGSIH', NULL, '202110251', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(818, 'upload/foto/siswa/siswa.png', 'YESSA MAHALIA PATIMAH AZZAHRA', NULL, '202110252', 2, '23', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(819, 'upload/foto/siswa/siswa.png', 'ADITIA PURNAMA', NULL, '202110253', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(820, 'upload/foto/siswa/siswa.png', 'AGNIA CAHYATI PUTRI', NULL, '202110254', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(821, 'upload/foto/siswa/siswa.png', 'AJENG FITRI ANJANI', NULL, '202110255', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(822, 'upload/foto/siswa/siswa.png', 'ALDI JULIANDI', NULL, '202110256', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(823, 'upload/foto/siswa/siswa.png', 'ANDHARA MAIGA SHOVA', NULL, '202110257', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(824, 'upload/foto/siswa/siswa.png', 'DEA SALSABILA SITI NURSHIFA', NULL, '202110258', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(825, 'upload/foto/siswa/siswa.png', 'DESI ANGGRAENI SOMANTRI', NULL, '202110259', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(826, 'upload/foto/siswa/siswa.png', 'DIMAS MAFTUHASSIDIK', NULL, '202110260', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(827, 'upload/foto/siswa/siswa.png', 'DINA AGUSTINA', NULL, '202110261', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(828, 'upload/foto/siswa/siswa.png', 'DITA MAULINA KURNIA', NULL, '202110262', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(829, 'upload/foto/siswa/siswa.png', 'ELSA JULIANTI', NULL, '202110263', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(830, 'upload/foto/siswa/siswa.png', 'ERMA HERA HERNAWATI', NULL, '202110264', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(831, 'upload/foto/siswa/siswa.png', 'FANNY FACHRIANI', NULL, '202110265', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(832, 'upload/foto/siswa/siswa.png', 'FITRIA SAHARANI', NULL, '202110266', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(833, 'upload/foto/siswa/siswa.png', 'GISYA YASMIN HERMAWAN', NULL, '202110267', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(834, 'upload/foto/siswa/siswa.png', 'ICA FITRIAN HANDAYANI', NULL, '202110268', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(835, 'upload/foto/siswa/siswa.png', 'IRNA NURAENI', NULL, '202110269', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(836, 'upload/foto/siswa/siswa.png', 'JESICA SUKARMAN', NULL, '202110270', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(837, 'upload/foto/siswa/siswa.png', 'JUPRIYADI PRATAMA', NULL, '202110271', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(838, 'upload/foto/siswa/siswa.png', 'LUSI', NULL, '202110272', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(839, 'upload/foto/siswa/siswa.png', 'MEGA PUSPITA SARI', NULL, '202110273', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(840, 'upload/foto/siswa/siswa.png', 'MIRA JULIYANTI', NULL, '202110274', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(841, 'upload/foto/siswa/siswa.png', 'NABILA PUTRI KHAIRUNNISA', NULL, '202110275', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(842, 'upload/foto/siswa/siswa.png', 'NEYSA ANINDHTYA', NULL, '202110276', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(843, 'upload/foto/siswa/siswa.png', 'NOVI KOMALASARI', NULL, '202110277', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(844, 'upload/foto/siswa/siswa.png', 'PASYA VIRQIN NURKAMILA', NULL, '202110278', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(845, 'upload/foto/siswa/siswa.png', 'RENDY FIRMANSYAH', NULL, '202110279', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(846, 'upload/foto/siswa/siswa.png', 'RIFSA LADILA HADISA', NULL, '202110280', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(847, 'upload/foto/siswa/siswa.png', 'RITA FITRIA', NULL, '202110281', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(848, 'upload/foto/siswa/siswa.png', 'SENIA MADIRO', NULL, '202110282', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(849, 'upload/foto/siswa/siswa.png', 'SILPI WULANDARI', NULL, '202110283', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(850, 'upload/foto/siswa/siswa.png', 'SITI ANISA KULSUM', NULL, '202110284', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(851, 'upload/foto/siswa/siswa.png', 'SUCI NUR RAHAYU', NULL, '202110285', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:32', '2022-04-05 14:32:32'),
(852, 'upload/foto/siswa/siswa.png', 'TASYA', NULL, '202110286', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(853, 'upload/foto/siswa/siswa.png', 'VIRA RAHMAWATI', NULL, '202110287', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(854, 'upload/foto/siswa/siswa.png', 'YUNIAR FAJAR RAMADHANI', NULL, '202110288', 2, '24', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(855, 'upload/foto/siswa/siswa.png', 'AHMAD DIFA MUJAHIDIN', NULL, '202110289', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(856, 'upload/foto/siswa/siswa.png', 'AI RAHMAWATI', NULL, '202110290', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(857, 'upload/foto/siswa/siswa.png', 'ALIFIA MEINIKA PUTRI', NULL, '202110291', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(858, 'upload/foto/siswa/siswa.png', 'AMINUDIN NASUTION', NULL, '202110292', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(859, 'upload/foto/siswa/siswa.png', 'ANNISA FRIMA SETYA', NULL, '202110293', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(860, 'upload/foto/siswa/siswa.png', 'DEBI SEFTIANI NURANISA', NULL, '202110294', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(861, 'upload/foto/siswa/siswa.png', 'DEWI GUSTIANI', NULL, '202110295', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(862, 'upload/foto/siswa/siswa.png', 'DISKA NAZWARI KOMARUDIN', NULL, '202110296', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(863, 'upload/foto/siswa/siswa.png', 'DWI KHOERUNNISSA SETIADI', NULL, '202110297', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(864, 'upload/foto/siswa/siswa.png', 'EVA NOVIANA', NULL, '202110298', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(865, 'upload/foto/siswa/siswa.png', 'FARIZ AKBAR', NULL, '202110299', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(866, 'upload/foto/siswa/siswa.png', 'FIRDA ARI SAFITRI', NULL, '202110300', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(867, 'upload/foto/siswa/siswa.png', 'FUJA CYNTIA DEWI', NULL, '202110301', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(868, 'upload/foto/siswa/siswa.png', 'GITA PUJI LESTARI', NULL, '202110302', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(869, 'upload/foto/siswa/siswa.png', 'IKA ROSTIKA', NULL, '202110303', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(870, 'upload/foto/siswa/siswa.png', 'INTAN BIDURI PERMATASARI', NULL, '202110304', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(871, 'upload/foto/siswa/siswa.png', 'ISNI LUSINTA', NULL, '202110305', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(872, 'upload/foto/siswa/siswa.png', 'LELA NURFAUZIAH', NULL, '202110306', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(873, 'upload/foto/siswa/siswa.png', 'MALA NURMALA SARI', NULL, '202110307', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(874, 'upload/foto/siswa/siswa.png', 'MELANI', NULL, '202110308', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(875, 'upload/foto/siswa/siswa.png', 'MIRNA AMELIA SEPTIANTI', NULL, '202110309', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(876, 'upload/foto/siswa/siswa.png', 'MOH RIFKI ABDILAH', NULL, '202110310', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(877, 'upload/foto/siswa/siswa.png', 'NANDA HERLINA SYAIFUL', NULL, '202110311', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(878, 'upload/foto/siswa/siswa.png', 'NINDI WIDURI', NULL, '202110312', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(879, 'upload/foto/siswa/siswa.png', 'NURASHYFA TAHZANI', NULL, '202110313', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(880, 'upload/foto/siswa/siswa.png', 'RAFFI MAULANA', NULL, '202110314', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(881, 'upload/foto/siswa/siswa.png', 'RIRIS SETIANUR', NULL, '202110315', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(882, 'upload/foto/siswa/siswa.png', 'RIZA AMELIA', NULL, '202110316', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(883, 'upload/foto/siswa/siswa.png', 'SANTIKA', NULL, '202110317', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(884, 'upload/foto/siswa/siswa.png', 'SEPTI NURFADILLA', NULL, '202110318', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(885, 'upload/foto/siswa/siswa.png', 'SILVI DINI FAJRIANI', NULL, '202110319', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(886, 'upload/foto/siswa/siswa.png', 'SITI WAFIQ NUR AZIZAH', NULL, '202110320', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(887, 'upload/foto/siswa/siswa.png', 'SYALWA DEWI AYU PERTIWI', NULL, '202110321', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(888, 'upload/foto/siswa/siswa.png', 'TYARA ABABIEL', NULL, '202110322', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(889, 'upload/foto/siswa/siswa.png', 'WIPA DAMAYANTI', NULL, '202110323', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(890, 'upload/foto/siswa/siswa.png', 'ZAHRA SHABIRAH DWICAHYA', NULL, '202110324', 2, '25', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(891, 'upload/foto/siswa/siswa.png', 'ALISA SULI OKTAVIANI', NULL, '202110325', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(892, 'upload/foto/siswa/siswa.png', 'ARI SAHRUL ASHARI', NULL, '202110326', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(893, 'upload/foto/siswa/siswa.png', 'DEA RERE RAHMAWATI', NULL, '202110327', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(894, 'upload/foto/siswa/siswa.png', 'DERA SETIA ANGGUN', NULL, '202110328', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(895, 'upload/foto/siswa/siswa.png', 'DHEA ARISTHA NATARI', NULL, '202110329', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(896, 'upload/foto/siswa/siswa.png', 'ELIS HERAWATI', NULL, '202110330', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(897, 'upload/foto/siswa/siswa.png', 'ELSA SEPTIANI AMALIA', NULL, '202110331', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(898, 'upload/foto/siswa/siswa.png', 'EVI NAVIANA', NULL, '202110332', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(899, 'upload/foto/siswa/siswa.png', 'FITRI SETIAWATI', NULL, '202110333', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(900, 'upload/foto/siswa/siswa.png', 'HANSA LIA AWALIAH', NULL, '202110334', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(901, 'upload/foto/siswa/siswa.png', 'IKLIMMA NAZAR MUHAROM', NULL, '202110335', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(902, 'upload/foto/siswa/siswa.png', 'ILHAM NURHIDAYAH', NULL, '202110336', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(903, 'upload/foto/siswa/siswa.png', 'IMELDA MELLITA MARSYANDA', NULL, '202110337', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(904, 'upload/foto/siswa/siswa.png', 'INDAH SUCI OKTARIANI', NULL, '202110338', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(905, 'upload/foto/siswa/siswa.png', 'IRENA INDRIANI', NULL, '202110339', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(906, 'upload/foto/siswa/siswa.png', 'JENNY MARETHA PUTRI NURJAMAN', NULL, '202110340', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(907, 'upload/foto/siswa/siswa.png', 'MANDA KRISTINA', NULL, '202110341', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(908, 'upload/foto/siswa/siswa.png', 'MIA LIA ELIA', NULL, '202110342', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(909, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ILHAN EL KHAIR', NULL, '202110343', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(910, 'upload/foto/siswa/siswa.png', 'MUTIAH PUTRI PRATAMA', NULL, '202110344', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(911, 'upload/foto/siswa/siswa.png', 'NELA MUSTIKA SARI', NULL, '202110345', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(912, 'upload/foto/siswa/siswa.png', 'NURLELASARI', NULL, '202110346', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(913, 'upload/foto/siswa/siswa.png', 'REVALINA AGUSTIN NURDIANTY', NULL, '202110347', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:33', '2022-04-05 14:32:33'),
(914, 'upload/foto/siswa/siswa.png', 'RISKA RAODHOTUL MA\'RIPAH', NULL, '202110348', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(915, 'upload/foto/siswa/siswa.png', 'SABRINA AULIA DANTY', NULL, '202110349', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(916, 'upload/foto/siswa/siswa.png', 'SANTI AULIA', NULL, '202110350', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(917, 'upload/foto/siswa/siswa.png', 'SEPTI SETIANINGSIH', NULL, '202110351', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(918, 'upload/foto/siswa/siswa.png', 'SINDI YULIANTI', NULL, '202110352', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(919, 'upload/foto/siswa/siswa.png', 'SITI JULFAH ZAQIYATUL HUDA', NULL, '202110353', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(920, 'upload/foto/siswa/siswa.png', 'SITI NURHASANAH', NULL, '202110354', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(921, 'upload/foto/siswa/siswa.png', 'SITI ROHAYATI', NULL, '202110355', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(922, 'upload/foto/siswa/siswa.png', 'SRI RATNA KHOERUNISA', NULL, '202110356', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(923, 'upload/foto/siswa/siswa.png', 'TYARA FRIDAYANTY NURAMALINA', NULL, '202110357', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(924, 'upload/foto/siswa/siswa.png', 'YANTI', NULL, '202110358', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(925, 'upload/foto/siswa/siswa.png', 'YOGA HADISAPUTRA', NULL, '202110359', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(926, 'upload/foto/siswa/siswa.png', 'ZIA NURFAUZIAH', NULL, '202110360', 2, '26', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(927, 'upload/foto/siswa/siswa.png', 'AGUNG MAULANA YUSUP', NULL, '202110361', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(928, 'upload/foto/siswa/siswa.png', 'ALI JIBRIL', NULL, '202110362', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(929, 'upload/foto/siswa/siswa.png', 'AN AN AGNI MULYANI', NULL, '202110363', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(930, 'upload/foto/siswa/siswa.png', 'ANISYA NUR ALFINA', NULL, '202110364', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(931, 'upload/foto/siswa/siswa.png', 'ASRI SOPARANI ASBAH', NULL, '202110365', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(932, 'upload/foto/siswa/siswa.png', 'CINDY PUSPA GRASIA', NULL, '202110366', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(933, 'upload/foto/siswa/siswa.png', 'DESI RAHMAWATI', NULL, '202110367', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(934, 'upload/foto/siswa/siswa.png', 'DEVA SITI NURAENI', NULL, '202110368', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(935, 'upload/foto/siswa/siswa.png', 'DIMAS SULISTIO', NULL, '202110369', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(936, 'upload/foto/siswa/siswa.png', 'DINA', NULL, '202110370', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(937, 'upload/foto/siswa/siswa.png', 'ELSA PEBRIYANI', NULL, '202110371', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(938, 'upload/foto/siswa/siswa.png', 'FADILLAH NABHAN HANIFAH', NULL, '202110372', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(939, 'upload/foto/siswa/siswa.png', 'FITRI RAHMAWATI', NULL, '202110373', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(940, 'upload/foto/siswa/siswa.png', 'ILA APRILLA', NULL, '202110374', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(941, 'upload/foto/siswa/siswa.png', 'IRPAN AFANDI', NULL, '202110375', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(942, 'upload/foto/siswa/siswa.png', 'KARINA MAULINA', NULL, '202110376', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(943, 'upload/foto/siswa/siswa.png', 'LALA APRILIA', NULL, '202110377', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(944, 'upload/foto/siswa/siswa.png', 'LENI WAHYUNI', NULL, '202110378', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(945, 'upload/foto/siswa/siswa.png', 'MEISKA FAUZIAH AULIA MULYANI', NULL, '202110379', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(946, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ALFAN BAHAR', NULL, '202110380', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(947, 'upload/foto/siswa/siswa.png', 'MULYANI', NULL, '202110381', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(948, 'upload/foto/siswa/siswa.png', 'NINDA PUTRI', NULL, '202110382', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(949, 'upload/foto/siswa/siswa.png', 'NOER ANISA', NULL, '202110383', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(950, 'upload/foto/siswa/siswa.png', 'NUGIE NUGRAHA ILLAHI', NULL, '202110384', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(951, 'upload/foto/siswa/siswa.png', 'PUTRI TASYA SALSABILA', NULL, '202110385', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:34', '2022-04-05 14:32:34'),
(952, 'upload/foto/siswa/siswa.png', 'RAMA RAISYUL CHRISNANDO', NULL, '202110386', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(953, 'upload/foto/siswa/siswa.png', 'RESTI AULIASARI', NULL, '202110387', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(954, 'upload/foto/siswa/siswa.png', 'RIFA SHOHWATUL MILLA', NULL, '202110388', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(955, 'upload/foto/siswa/siswa.png', 'SALSA MEIDIANA', NULL, '202110389', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(956, 'upload/foto/siswa/siswa.png', 'SELFIANI PRATIWI NINGSIH', NULL, '202110390', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(957, 'upload/foto/siswa/siswa.png', 'SHOFA DWINA', NULL, '202110391', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(958, 'upload/foto/siswa/siswa.png', 'SITI FAUZIAH', NULL, '202110392', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(959, 'upload/foto/siswa/siswa.png', 'TEGUH ANGGARA JAYA', NULL, '202110393', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(960, 'upload/foto/siswa/siswa.png', 'TINA ROSMAWATI', NULL, '202110394', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(961, 'upload/foto/siswa/siswa.png', 'VIRA SRI AGUSTIN', NULL, '202110395', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(962, 'upload/foto/siswa/siswa.png', 'YAYU INDAH LESTARI', NULL, '202110396', 2, '27', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(963, 'upload/foto/siswa/siswa.png', 'AKMAL JAMALUDIN', NULL, '202110397', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(964, 'upload/foto/siswa/siswa.png', 'ALIF SYAM NATHIN MANADI', NULL, '202110398', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(965, 'upload/foto/siswa/siswa.png', 'ANDIN DENA AGUSTIN', NULL, '202110399', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(966, 'upload/foto/siswa/siswa.png', 'ANNISA NUR SALSABILA', NULL, '202110400', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(967, 'upload/foto/siswa/siswa.png', 'BELA TRIWULAN ANZANI', NULL, '202110401', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(968, 'upload/foto/siswa/siswa.png', 'DEPIN SRI WAHYUNI', NULL, '202110402', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:35', '2022-04-05 14:32:35'),
(969, 'upload/foto/siswa/siswa.png', 'DESI RAHMAWATI', NULL, '202110403', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(970, 'upload/foto/siswa/siswa.png', 'DEWI PUSPITA', NULL, '202110404', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(971, 'upload/foto/siswa/siswa.png', 'ELISTA FATHIA APRILIA FAJAR', NULL, '202110405', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(972, 'upload/foto/siswa/siswa.png', 'ELSA RAMADHANI', NULL, '202110406', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(973, 'upload/foto/siswa/siswa.png', 'FATHUR NUR FUJIANSYAH', NULL, '202110407', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(974, 'upload/foto/siswa/siswa.png', 'GITA KARTIKA SARI', NULL, '202110408', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(975, 'upload/foto/siswa/siswa.png', 'HERI', NULL, '202110409', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(976, 'upload/foto/siswa/siswa.png', 'KAMILASARI', NULL, '202110410', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(977, 'upload/foto/siswa/siswa.png', 'KOMALA', NULL, '202110411', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(978, 'upload/foto/siswa/siswa.png', 'LAILI NURFITRI', NULL, '202110412', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36');
INSERT INTO `siswa` (`id`, `foto`, `nama`, `nisn`, `nis`, `tahun_akademik_id`, `kelas_id`, `jurusan_id`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `anak_ke`, `warga_negara`, `agama`, `asal_sekolah`, `no_ijazah`, `tahun_lulus`, `alamat_sekolah`, `ayah`, `ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `wali`, `alamat_wali`, `kerja_wali`, `hubungan_wali`, `status`, `created_at`, `updated_at`) VALUES
(979, 'upload/foto/siswa/siswa.png', 'MARIO ARMANDO SUMURUNG. S', NULL, '202110413', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(980, 'upload/foto/siswa/siswa.png', 'MAYA EKA KUSWARA', NULL, '202110414', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(981, 'upload/foto/siswa/siswa.png', 'MELINDA SURYANI', NULL, '202110415', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(982, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ALFIAN BACHTIAR', NULL, '202110416', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(983, 'upload/foto/siswa/siswa.png', 'NADILA PUTRI DEVIYANTI', NULL, '202110417', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(984, 'upload/foto/siswa/siswa.png', 'NISRINA SULASTRI', NULL, '202110418', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(985, 'upload/foto/siswa/siswa.png', 'NOVA AWALIA', NULL, '202110419', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(986, 'upload/foto/siswa/siswa.png', 'RAFLY RAMADHAN DWI YUDHA', NULL, '202110420', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(987, 'upload/foto/siswa/siswa.png', 'RAHMA NURANGGRAENI', NULL, '202110421', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(988, 'upload/foto/siswa/siswa.png', 'RESTU SITI NUR\'AENI', NULL, '202110422', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(989, 'upload/foto/siswa/siswa.png', 'RIDO DZIKRI AL FAJARI', NULL, '202110423', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(990, 'upload/foto/siswa/siswa.png', 'SALMA ANANDA', NULL, '202110424', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(991, 'upload/foto/siswa/siswa.png', 'SARAH MAHARANI WIBOWO', NULL, '202110425', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(992, 'upload/foto/siswa/siswa.png', 'SHIFA FAUDILAH', NULL, '202110426', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(993, 'upload/foto/siswa/siswa.png', 'SIFA NAHRIANI AZMI', NULL, '202110427', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(994, 'upload/foto/siswa/siswa.png', 'SOFFI MAURA AZZAHRA', NULL, '202110428', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(995, 'upload/foto/siswa/siswa.png', 'TRIANA NUR WIDIA', NULL, '202110429', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(996, 'upload/foto/siswa/siswa.png', 'WILDA RAMDHANI', NULL, '202110430', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(997, 'upload/foto/siswa/siswa.png', 'YURRI ALMYRA YAJMI', NULL, '202110431', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(998, 'upload/foto/siswa/siswa.png', 'ZAIDAN AKBAR', NULL, '202110432', 2, '28', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(999, 'upload/foto/siswa/siswa.png', 'AGRIAWAN FAKHU RIZKI AL IHSAN', NULL, '202110433', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1000, 'upload/foto/siswa/siswa.png', 'AKMAL HENDRAYANA', NULL, '202110434', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1001, 'upload/foto/siswa/siswa.png', 'ALIA AFRIYANTI', NULL, '202110435', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1002, 'upload/foto/siswa/siswa.png', 'AMELIA SARI', NULL, '202110436', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1003, 'upload/foto/siswa/siswa.png', 'ANISA WANDINI', NULL, '202110437', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1004, 'upload/foto/siswa/siswa.png', 'ARVINTY ZALYANTI NUGRAHA', NULL, '202110438', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1005, 'upload/foto/siswa/siswa.png', 'DAFFINA RIFDA', NULL, '202110439', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1006, 'upload/foto/siswa/siswa.png', 'DEKI RAMDANI', NULL, '202110440', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1007, 'upload/foto/siswa/siswa.png', 'DEVINA KHARISMA ISKANDAR', NULL, '202110441', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1008, 'upload/foto/siswa/siswa.png', 'DITA ANISA', NULL, '202110442', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1009, 'upload/foto/siswa/siswa.png', 'ELFATHANIA NURANI', NULL, '202110443', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1010, 'upload/foto/siswa/siswa.png', 'FATIMAH NOORSYA\'BANI', NULL, '202110444', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1011, 'upload/foto/siswa/siswa.png', 'GIFAR RAMDHANI AKBAR', NULL, '202110445', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1012, 'upload/foto/siswa/siswa.png', 'HANI FAUZIAH', NULL, '202110446', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1013, 'upload/foto/siswa/siswa.png', 'HILDA PARIDA', NULL, '202110447', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1014, 'upload/foto/siswa/siswa.png', 'INDAH INDRIYANI', NULL, '202110448', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1015, 'upload/foto/siswa/siswa.png', 'ISMI NABILA HANIFAH', NULL, '202110449', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1016, 'upload/foto/siswa/siswa.png', 'KURNIA DEWI', NULL, '202110450', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1017, 'upload/foto/siswa/siswa.png', 'MUHAMAD RIZKY RAMADHAN', NULL, '202110451', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1018, 'upload/foto/siswa/siswa.png', 'NAURIL AHADIS SYAWALIYAH', NULL, '202110452', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1019, 'upload/foto/siswa/siswa.png', 'NOVARELL CHENDRA', NULL, '202110453', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1020, 'upload/foto/siswa/siswa.png', 'NOVIA ROHIMAWATI', NULL, '202110454', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1021, 'upload/foto/siswa/siswa.png', 'OSEU FAUZIAH', NULL, '202110455', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1022, 'upload/foto/siswa/siswa.png', 'RANI SEPTIANI', NULL, '202110456', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1023, 'upload/foto/siswa/siswa.png', 'RANTI LESTARI', NULL, '202110457', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1024, 'upload/foto/siswa/siswa.png', 'REVAN ALVIANO MANULANG', NULL, '202110458', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1025, 'upload/foto/siswa/siswa.png', 'RIFKI WAHYUDI RUSWANA', NULL, '202110459', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1026, 'upload/foto/siswa/siswa.png', 'RIKEU MEINANDA', NULL, '202110460', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1027, 'upload/foto/siswa/siswa.png', 'RIZKA ARIE SAGITA', NULL, '202110461', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1028, 'upload/foto/siswa/siswa.png', 'RULLY APRILLIANSYAH', NULL, '202110462', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1029, 'upload/foto/siswa/siswa.png', 'SELVINA ANGGRAINI', NULL, '202110463', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1030, 'upload/foto/siswa/siswa.png', 'SHIVA AWALIA BAROKAH', NULL, '202110464', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1031, 'upload/foto/siswa/siswa.png', 'SITI ANISAH', NULL, '202110465', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:36', '2022-04-05 14:32:36'),
(1032, 'upload/foto/siswa/siswa.png', 'SRI SEPTIANI', NULL, '202110466', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1033, 'upload/foto/siswa/siswa.png', 'WIRANTO JULIAN ADITIA', NULL, '202110467', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1034, 'upload/foto/siswa/siswa.png', 'YENI HERYANI', NULL, '202110468', 2, '29', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1035, 'upload/foto/siswa/siswa.png', 'AGUNG MAULANA', NULL, '202110469', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1036, 'upload/foto/siswa/siswa.png', 'ALYA LISTIA OKTAVIANI', NULL, '202110470', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1037, 'upload/foto/siswa/siswa.png', 'ANDINI NUR AGUSTIN', NULL, '202110471', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1038, 'upload/foto/siswa/siswa.png', 'ANNISA RAHMAWATI', NULL, '202110472', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1039, 'upload/foto/siswa/siswa.png', 'ASRI LAILA MUFIDAH', NULL, '202110473', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1040, 'upload/foto/siswa/siswa.png', 'ASTRID KHOIROTUNNISA', NULL, '202110474', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1041, 'upload/foto/siswa/siswa.png', 'AZHAR SYABANI', NULL, '202110475', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1042, 'upload/foto/siswa/siswa.png', 'DEA PRASETYA', NULL, '202110476', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1043, 'upload/foto/siswa/siswa.png', 'DILLA MARCELLA OKTAVIANI', NULL, '202110477', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1044, 'upload/foto/siswa/siswa.png', 'FARAS NUR BILQIS', NULL, '202110478', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1045, 'upload/foto/siswa/siswa.png', 'GHAZA MAULANA RACHMAN', NULL, '202110479', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1046, 'upload/foto/siswa/siswa.png', 'GINA ZAKIYYATUL HASNA', NULL, '202110480', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1047, 'upload/foto/siswa/siswa.png', 'HAIKAL ANDARUN', NULL, '202110481', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1048, 'upload/foto/siswa/siswa.png', 'HANIFAH NUR AWALIYAH', NULL, '202110482', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1049, 'upload/foto/siswa/siswa.png', 'INDAH EKA PUTRI SETIAWAN', NULL, '202110483', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1050, 'upload/foto/siswa/siswa.png', 'INDRIA NOOR', NULL, '202110484', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1051, 'upload/foto/siswa/siswa.png', 'KHALIZA UMAMI', NULL, '202110485', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1052, 'upload/foto/siswa/siswa.png', 'MUHAMMAD RHAKA FAZLI', NULL, '202110486', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1053, 'upload/foto/siswa/siswa.png', 'NADYA RAHHAL AZZAHRA', NULL, '202110487', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1054, 'upload/foto/siswa/siswa.png', 'NISA TERESA', NULL, '202110488', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1055, 'upload/foto/siswa/siswa.png', 'NUR RIFA AINUNNISA AFFANDI', NULL, '202110489', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1056, 'upload/foto/siswa/siswa.png', 'RAHMAEINA AULIA AGUSTINA', NULL, '202110490', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1057, 'upload/foto/siswa/siswa.png', 'RANI WIDANINGSIH', NULL, '202110491', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1058, 'upload/foto/siswa/siswa.png', 'RATU AUREL AULIA ICHWANSYAH', NULL, '202110492', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1059, 'upload/foto/siswa/siswa.png', 'RENA MULYANI', NULL, '202110493', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1060, 'upload/foto/siswa/siswa.png', 'RESA PRANAJAYA', NULL, '202110494', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1061, 'upload/foto/siswa/siswa.png', 'RESTY SRI WAHYUNI', NULL, '202110495', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1062, 'upload/foto/siswa/siswa.png', 'REVI RIYADI', NULL, '202110496', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1063, 'upload/foto/siswa/siswa.png', 'RINA SEPTIANA', NULL, '202110497', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1064, 'upload/foto/siswa/siswa.png', 'RIZAL MUHAMAD HERDIANA', NULL, '202110498', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1065, 'upload/foto/siswa/siswa.png', 'SALSABILA', NULL, '202110499', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1066, 'upload/foto/siswa/siswa.png', 'SIPA ULGINA', NULL, '202110500', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1067, 'upload/foto/siswa/siswa.png', 'SITI IKA PERMANAH', NULL, '202110501', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1068, 'upload/foto/siswa/siswa.png', 'SUNAN ROHMAT', NULL, '202110502', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1069, 'upload/foto/siswa/siswa.png', 'SYNTHIA EVRILIYANTI', NULL, '202110503', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1070, 'upload/foto/siswa/siswa.png', 'TINA NOVIARA', NULL, '202110504', 2, '30', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1071, 'upload/foto/siswa/siswa.png', 'ALVIANA AULIA PUTRI', NULL, '202110505', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1072, 'upload/foto/siswa/siswa.png', 'ANISA RISQINA SETIA PUTRI', NULL, '202110506', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1073, 'upload/foto/siswa/siswa.png', 'ANNISA ZAKIAH RAHMAH', NULL, '202110507', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1074, 'upload/foto/siswa/siswa.png', 'DERI NURDIANSAH', NULL, '202110508', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1075, 'upload/foto/siswa/siswa.png', 'DEVFINA CHAERUNISSA', NULL, '202110509', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1076, 'upload/foto/siswa/siswa.png', 'DIAN SUTIONO', NULL, '202110510', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1077, 'upload/foto/siswa/siswa.png', 'DIAZ ADITYA RASHQI P', NULL, '202110511', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1078, 'upload/foto/siswa/siswa.png', 'DINIATI GUSNI RHEYA RIZQINA', NULL, '202110512', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1079, 'upload/foto/siswa/siswa.png', 'FADILAH TRI WAHYUNI', NULL, '202110513', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1080, 'upload/foto/siswa/siswa.png', 'FATIH SURYA FAHREJA', NULL, '202110514', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1081, 'upload/foto/siswa/siswa.png', 'GADING ERLANGGA', NULL, '202110515', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1082, 'upload/foto/siswa/siswa.png', 'GALUH SETYA PRATAMA', NULL, '202110516', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1083, 'upload/foto/siswa/siswa.png', 'HADI JANUARSYAH', NULL, '202110517', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1084, 'upload/foto/siswa/siswa.png', 'HIKMATUNNISA NURHASANAH', NULL, '202110518', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1085, 'upload/foto/siswa/siswa.png', 'JENDRY SUSAPTO', NULL, '202110519', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1086, 'upload/foto/siswa/siswa.png', 'KARINA LATIPAH', NULL, '202110520', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1087, 'upload/foto/siswa/siswa.png', 'KASRIAH', NULL, '202110521', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:37', '2022-04-05 14:32:37'),
(1088, 'upload/foto/siswa/siswa.png', 'MUHAMAD ZAIDAN AL ASFAR', NULL, '202110522', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1089, 'upload/foto/siswa/siswa.png', 'MUHAMMAD FARHAN SAEFULLOH', NULL, '202110523', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1090, 'upload/foto/siswa/siswa.png', 'NAFIATUN NISA', NULL, '202110524', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1091, 'upload/foto/siswa/siswa.png', 'PUTRI SYAKILA RAHMA AZKIA', NULL, '202110525', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1092, 'upload/foto/siswa/siswa.png', 'RADHI ALWI', NULL, '202110526', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1093, 'upload/foto/siswa/siswa.png', 'RAINA ADITYA MULYANI', NULL, '202110527', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1094, 'upload/foto/siswa/siswa.png', 'RAKA HIKMATULLAH KUSUMAH', NULL, '202110528', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1095, 'upload/foto/siswa/siswa.png', 'RIDWAN TAUFIK RAHMAN', NULL, '202110529', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1096, 'upload/foto/siswa/siswa.png', 'RISTA ARISTA', NULL, '202110530', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1097, 'upload/foto/siswa/siswa.png', 'RIZKY RAHMAWANTI', NULL, '202110531', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1098, 'upload/foto/siswa/siswa.png', 'SILMY AWALIA FIRDAUS', NULL, '202110532', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1099, 'upload/foto/siswa/siswa.png', 'SITI HOTIMAH', NULL, '202110533', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1100, 'upload/foto/siswa/siswa.png', 'TATANG', NULL, '202110534', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1101, 'upload/foto/siswa/siswa.png', 'TIA SEPTIANI', NULL, '202110535', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1102, 'upload/foto/siswa/siswa.png', 'TINA TRISTIANI', NULL, '202110536', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1103, 'upload/foto/siswa/siswa.png', 'VIRGINIA NAZWA MEILA FAJRIN', NULL, '202110537', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1104, 'upload/foto/siswa/siswa.png', 'WAWAN KURNIAWAN', NULL, '202110538', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1105, 'upload/foto/siswa/siswa.png', 'YANI SURYANI', NULL, '202110539', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1106, 'upload/foto/siswa/siswa.png', 'ZAIDAN RIZKI RAMADAN', NULL, '202110540', 2, '31', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1107, 'upload/foto/siswa/siswa.png', 'AGIAN ILHAM RAMADHAN', NULL, '202110541', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1108, 'upload/foto/siswa/siswa.png', 'ALDITA SEPTINASARI', NULL, '202110542', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1109, 'upload/foto/siswa/siswa.png', 'ANTO WIRANTO', NULL, '202110543', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1110, 'upload/foto/siswa/siswa.png', 'ASEP RIPANI', NULL, '202110544', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1111, 'upload/foto/siswa/siswa.png', 'AZIZAH NUR RAHMA TIARSA', NULL, '202110545', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1112, 'upload/foto/siswa/siswa.png', 'CANDRA MAULANA', NULL, '202110546', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1113, 'upload/foto/siswa/siswa.png', 'DEA REFSI WIDAYANI', NULL, '202110547', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1114, 'upload/foto/siswa/siswa.png', 'FAROJ AINURRIDLO', NULL, '202110548', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1115, 'upload/foto/siswa/siswa.png', 'FAUZI NUR IKHSAN', NULL, '202110549', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1116, 'upload/foto/siswa/siswa.png', 'FERY FRIADHIE', NULL, '202110550', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1117, 'upload/foto/siswa/siswa.png', 'FUAD FAUZAN', NULL, '202110551', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1118, 'upload/foto/siswa/siswa.png', 'HASBI SIDKI MAULIDI', NULL, '202110552', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1119, 'upload/foto/siswa/siswa.png', 'IPAN KURNIAWAN', NULL, '202110553', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1120, 'upload/foto/siswa/siswa.png', 'IRA MUTIARA RAHMAH', NULL, '202110554', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1121, 'upload/foto/siswa/siswa.png', 'JALU GIRI NUGRAHA', NULL, '202110555', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1122, 'upload/foto/siswa/siswa.png', 'LANI SRI AGUSTIN', NULL, '202110556', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1123, 'upload/foto/siswa/siswa.png', 'MOCH. RAIHAN PUTRA RAMADHAN', NULL, '202110557', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1124, 'upload/foto/siswa/siswa.png', 'MUHAMAD AZRIEL RAMDHAN', NULL, '202110558', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1125, 'upload/foto/siswa/siswa.png', 'MUHAMAD IRSAM SYABANI', NULL, '202110559', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1126, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ARYA KAUTSAR', NULL, '202110560', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:38', '2022-04-05 14:32:38'),
(1127, 'upload/foto/siswa/siswa.png', 'NAZWA AGNESYA SALSABILLA', NULL, '202110561', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1128, 'upload/foto/siswa/siswa.png', 'OKTAVIANI RIANTI', NULL, '202110562', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1129, 'upload/foto/siswa/siswa.png', 'PADLI DESTA ADITIA', NULL, '202110563', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1130, 'upload/foto/siswa/siswa.png', 'RAFI RATAMA MUNGGARAN', NULL, '202110564', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1131, 'upload/foto/siswa/siswa.png', 'RAFIE TAUFIK IHSAN', NULL, '202110565', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1132, 'upload/foto/siswa/siswa.png', 'RENALDI ADRIANSYAH', NULL, '202110566', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1133, 'upload/foto/siswa/siswa.png', 'REYSHAN MUHAMMAD BINTANG', NULL, '202110567', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1134, 'upload/foto/siswa/siswa.png', 'RISMA MUNAWAROH', NULL, '202110568', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1135, 'upload/foto/siswa/siswa.png', 'RIZKY ADJIE HERMAWAN', NULL, '202110569', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1136, 'upload/foto/siswa/siswa.png', 'SEH AJAD AL KAUTSAR', NULL, '202110570', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1137, 'upload/foto/siswa/siswa.png', 'SENDY PUTRA RAMADHANI', NULL, '202110571', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1138, 'upload/foto/siswa/siswa.png', 'SINDI PUSPITASARI', NULL, '202110572', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1139, 'upload/foto/siswa/siswa.png', 'SRI HERYANTI', NULL, '202110573', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1140, 'upload/foto/siswa/siswa.png', 'SUCI SRI RAHMAWATI', NULL, '202110574', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1141, 'upload/foto/siswa/siswa.png', 'TAOPIK MAULIDAN', NULL, '202110575', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1142, 'upload/foto/siswa/siswa.png', 'WINA YULIANA', NULL, '202110576', 2, '32', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1143, 'upload/foto/siswa/siswa.png', 'ADNI ANGGRAENI', NULL, '212210001', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1144, 'upload/foto/siswa/siswa.png', 'ALIFA ZAHRA EKA PUTRI', NULL, '212210002', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1145, 'upload/foto/siswa/siswa.png', 'ANGGI LISMA PUTRI', NULL, '212210003', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1146, 'upload/foto/siswa/siswa.png', 'ANNISA SABILA LIDYAWATI', NULL, '212210004', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1147, 'upload/foto/siswa/siswa.png', 'ARIF BUDIMAN', NULL, '212210005', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1148, 'upload/foto/siswa/siswa.png', 'AWALYA YOANNA FEBRIANI', NULL, '212210006', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1149, 'upload/foto/siswa/siswa.png', 'DAVINA MULIAWATY', NULL, '212210007', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1150, 'upload/foto/siswa/siswa.png', 'DESTIA SRI AULIA', NULL, '212210008', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1151, 'upload/foto/siswa/siswa.png', 'DISTY RAISA MEISANI', NULL, '212210009', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1152, 'upload/foto/siswa/siswa.png', 'ELSA HALWATUNNISA', NULL, '212210010', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1153, 'upload/foto/siswa/siswa.png', 'FAUZAN ABDUL MAZID', NULL, '212210011', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1154, 'upload/foto/siswa/siswa.png', 'GHEVIRA KUSUMAH PUTRI', NULL, '212210012', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1155, 'upload/foto/siswa/siswa.png', 'GITA NURUL AENI', NULL, '212210013', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1156, 'upload/foto/siswa/siswa.png', 'IMAN SEPTIAN', NULL, '212210014', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1157, 'upload/foto/siswa/siswa.png', 'IMEL MELANI', NULL, '212210015', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1158, 'upload/foto/siswa/siswa.png', 'JAHRA WAHYU HARDIANTI', NULL, '212210016', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1159, 'upload/foto/siswa/siswa.png', 'KEYSHA BUNGA RAMADHANI', NULL, '212210017', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1160, 'upload/foto/siswa/siswa.png', 'LISYA NUR LAILA', NULL, '212210018', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1161, 'upload/foto/siswa/siswa.png', 'MARSHA AYUNI RAHAYU', NULL, '212210019', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1162, 'upload/foto/siswa/siswa.png', 'MEYRIN SALSABILA', NULL, '212210020', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1163, 'upload/foto/siswa/siswa.png', 'NARULITA ATWANDA', NULL, '212210021', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1164, 'upload/foto/siswa/siswa.png', 'NAZIB MUHADI', NULL, '212210022', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1165, 'upload/foto/siswa/siswa.png', 'NOVI FITRIANI', NULL, '212210023', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1166, 'upload/foto/siswa/siswa.png', 'RAHMA PUTRI MAHARANI', NULL, '212210024', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1167, 'upload/foto/siswa/siswa.png', 'RENA MEYLINDA', NULL, '212210025', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1168, 'upload/foto/siswa/siswa.png', 'REVA PUSPITA', NULL, '212210026', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1169, 'upload/foto/siswa/siswa.png', 'RIDHO RAMDANI', NULL, '212210027', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1170, 'upload/foto/siswa/siswa.png', 'RINDI AULIA LESTARI', NULL, '212210028', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1171, 'upload/foto/siswa/siswa.png', 'RISNA NOVIANTI', NULL, '212210029', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1172, 'upload/foto/siswa/siswa.png', 'SALWA FITRIA SALSABILA', NULL, '212210030', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39');
INSERT INTO `siswa` (`id`, `foto`, `nama`, `nisn`, `nis`, `tahun_akademik_id`, `kelas_id`, `jurusan_id`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `anak_ke`, `warga_negara`, `agama`, `asal_sekolah`, `no_ijazah`, `tahun_lulus`, `alamat_sekolah`, `ayah`, `ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `wali`, `alamat_wali`, `kerja_wali`, `hubungan_wali`, `status`, `created_at`, `updated_at`) VALUES
(1173, 'upload/foto/siswa/siswa.png', 'SISI AULIA SYABANI', NULL, '212210031', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1174, 'upload/foto/siswa/siswa.png', 'SUCI PURNAMA PUTRI', NULL, '212210032', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1175, 'upload/foto/siswa/siswa.png', 'SYOFI FARIHAH', NULL, '212210033', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1176, 'upload/foto/siswa/siswa.png', 'TIA SEPTIANI', NULL, '212210034', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1177, 'upload/foto/siswa/siswa.png', 'TYURA ROYENI PUTRI PASARIBU', NULL, '212210035', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1178, 'upload/foto/siswa/siswa.png', 'WILDA AULIA HASNAWATI', NULL, '212210036', 3, '33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1179, 'upload/foto/siswa/siswa.png', 'AI DINI MASRIKA', NULL, '212210037', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1180, 'upload/foto/siswa/siswa.png', 'AMECCAH RISQULLAH JAYA', NULL, '212210038', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1181, 'upload/foto/siswa/siswa.png', 'ANGGI SITI ROHIMAH', NULL, '212210039', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1182, 'upload/foto/siswa/siswa.png', 'ASHILAH MAISARAH', NULL, '212210040', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1183, 'upload/foto/siswa/siswa.png', 'AYU WIDYA AGUSTINA', NULL, '212210041', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1184, 'upload/foto/siswa/siswa.png', 'BRIANA MAS`UD SIDIK', NULL, '212210042', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1185, 'upload/foto/siswa/siswa.png', 'DAVINA ZALIANTI', NULL, '212210043', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1186, 'upload/foto/siswa/siswa.png', 'DHINI FHITRIA', NULL, '212210044', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1187, 'upload/foto/siswa/siswa.png', 'DWI FITRIA PURWANTO', NULL, '212210045', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1188, 'upload/foto/siswa/siswa.png', 'FAKHIRA ZAHRA', NULL, '212210046', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1189, 'upload/foto/siswa/siswa.png', 'FAUZI NUR ALI RAMDHANI', NULL, '212210047', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1190, 'upload/foto/siswa/siswa.png', 'GINA ARUM SAFITRI', NULL, '212210048', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1191, 'upload/foto/siswa/siswa.png', 'GITA RAHMAWATI', NULL, '212210049', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:39', '2022-04-05 14:32:39'),
(1192, 'upload/foto/siswa/siswa.png', 'INDAH AZHARI AHADIANI', NULL, '212210050', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1193, 'upload/foto/siswa/siswa.png', 'IYANG ARDIANSAH SAEPUL ROHMAN', NULL, '212210051', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1194, 'upload/foto/siswa/siswa.png', 'JULYTA APHRODITA SULAEMAN', NULL, '212210052', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1195, 'upload/foto/siswa/siswa.png', 'LAURA CESYA AGUSTIN', NULL, '212210053', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1196, 'upload/foto/siswa/siswa.png', 'LITHA MAULIDA KUSUMAWARDHANI', NULL, '212210054', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1197, 'upload/foto/siswa/siswa.png', 'MARSHELA', NULL, '212210055', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1198, 'upload/foto/siswa/siswa.png', 'MONA AFRILIANI', NULL, '212210056', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1199, 'upload/foto/siswa/siswa.png', 'NESYA ARINI PUTRI', NULL, '212210057', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1200, 'upload/foto/siswa/siswa.png', 'PUTRI SRI MA`MUR', NULL, '212210058', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1201, 'upload/foto/siswa/siswa.png', 'RAI AFIFATUL FADHILAH', NULL, '212210059', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1202, 'upload/foto/siswa/siswa.png', 'RAIHAN PUTRA RAMADHAN', NULL, '212210060', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1203, 'upload/foto/siswa/siswa.png', 'RENA NURMALASARI', NULL, '212210061', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1204, 'upload/foto/siswa/siswa.png', 'REVALINA', NULL, '212210062', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1205, 'upload/foto/siswa/siswa.png', 'RIFKI FADILLAH', NULL, '212210063', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1206, 'upload/foto/siswa/siswa.png', 'RISKA LESTARI', NULL, '212210064', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1207, 'upload/foto/siswa/siswa.png', 'RULIA KURNIATI', NULL, '212210065', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1208, 'upload/foto/siswa/siswa.png', 'SALWA ROSIANA WIDI AULIA', NULL, '212210066', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1209, 'upload/foto/siswa/siswa.png', 'SISWANTI', NULL, '212210067', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1210, 'upload/foto/siswa/siswa.png', 'SYALWA FAUZIYA RAHMADANI', NULL, '212210068', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1211, 'upload/foto/siswa/siswa.png', 'TARI SRIYANTI', NULL, '212210069', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1212, 'upload/foto/siswa/siswa.png', 'TIARA KARTIKA SARI', NULL, '212210070', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1213, 'upload/foto/siswa/siswa.png', 'VIOLA HILDA NOVIANTI', NULL, '212210071', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1214, 'upload/foto/siswa/siswa.png', 'WINA NURHAYATI', NULL, '212210072', 3, '34', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1215, 'upload/foto/siswa/siswa.png', 'AI VIRNA', NULL, '212210073', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1216, 'upload/foto/siswa/siswa.png', 'ANA NURJANAH', NULL, '212210074', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1217, 'upload/foto/siswa/siswa.png', 'ANIS RENGGANIS', NULL, '212210075', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1218, 'upload/foto/siswa/siswa.png', 'ASIH NURSOLIHAH', NULL, '212210076', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1219, 'upload/foto/siswa/siswa.png', 'BUNGA SEPTIA RAMADHANI', NULL, '212210077', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1220, 'upload/foto/siswa/siswa.png', 'DAFA VIRGY FIRDAUS', NULL, '212210078', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1221, 'upload/foto/siswa/siswa.png', 'DEDE SRI MARTINI', NULL, '212210079', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1222, 'upload/foto/siswa/siswa.png', 'DILA SARI', NULL, '212210080', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1223, 'upload/foto/siswa/siswa.png', 'EKA PUTRI FARDILA', NULL, '212210081', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1224, 'upload/foto/siswa/siswa.png', 'FANI CAHYANI', NULL, '212210082', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1225, 'upload/foto/siswa/siswa.png', 'GINA CAHYANI', NULL, '212210083', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1226, 'upload/foto/siswa/siswa.png', 'HANNIE RHAHMAWATI', NULL, '212210084', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1227, 'upload/foto/siswa/siswa.png', 'HASBY SETIAWAN PUTERA', NULL, '212210085', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1228, 'upload/foto/siswa/siswa.png', 'INE NOVIANTI', NULL, '212210086', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1229, 'upload/foto/siswa/siswa.png', 'KARIN YULIANI', NULL, '212210087', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1230, 'upload/foto/siswa/siswa.png', 'LENI MELANI', NULL, '212210088', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1231, 'upload/foto/siswa/siswa.png', 'LIVIA AMELIA AGUSTIN', NULL, '212210089', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1232, 'upload/foto/siswa/siswa.png', 'MELATI NUR SUKMA', NULL, '212210090', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1233, 'upload/foto/siswa/siswa.png', 'MOCH REZAR JANUAR PRATAMA', NULL, '212210091', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1234, 'upload/foto/siswa/siswa.png', 'MUTIA YULIANTI', NULL, '212210092', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1235, 'upload/foto/siswa/siswa.png', 'NINDIA HERDIANTI', NULL, '212210093', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1236, 'upload/foto/siswa/siswa.png', 'RADEN PUTRI AULIA BUSTAMI', NULL, '212210094', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1237, 'upload/foto/siswa/siswa.png', 'RANDI RAHMADANI', NULL, '212210095', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1238, 'upload/foto/siswa/siswa.png', 'RANI DUHITA AGUSTIN', NULL, '212210096', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1239, 'upload/foto/siswa/siswa.png', 'RENATA', NULL, '212210097', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1240, 'upload/foto/siswa/siswa.png', 'RIFKA KHOERUNISA', NULL, '212210098', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1241, 'upload/foto/siswa/siswa.png', 'RISMA NURMALASARI', NULL, '212210099', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1242, 'upload/foto/siswa/siswa.png', 'SALMA FADLILAH TSAMRATUL HIJJAH', NULL, '212210100', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:40', '2022-04-05 14:32:40'),
(1243, 'upload/foto/siswa/siswa.png', 'SANDITA SASIH KIRANI', NULL, '212210101', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1244, 'upload/foto/siswa/siswa.png', 'SITI SALMA ALINDA', NULL, '212210102', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1245, 'upload/foto/siswa/siswa.png', 'SUTAN ZALWAD ARYA NUGRAHA', NULL, '212210103', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1246, 'upload/foto/siswa/siswa.png', 'SYFA ALZAHRA', NULL, '212210104', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1247, 'upload/foto/siswa/siswa.png', 'TATI SULASTRI', NULL, '212210105', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1248, 'upload/foto/siswa/siswa.png', 'TINA FEBRIANI', NULL, '212210106', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1249, 'upload/foto/siswa/siswa.png', 'WANITA YEREMIA YASMINE', NULL, '212210107', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1250, 'upload/foto/siswa/siswa.png', 'WULANDARI', NULL, '212210108', 3, '35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1251, 'upload/foto/siswa/siswa.png', 'ALIFA MAULIDINA', NULL, '212210109', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1252, 'upload/foto/siswa/siswa.png', 'ANA NURYANI', NULL, '212210110', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1253, 'upload/foto/siswa/siswa.png', 'ANNISA RACHMAWATI', NULL, '212210111', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1254, 'upload/foto/siswa/siswa.png', 'ASSYFA JAHRA ZEFIRA', NULL, '212210112', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1255, 'upload/foto/siswa/siswa.png', 'DARA AISYAH', NULL, '212210113', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1256, 'upload/foto/siswa/siswa.png', 'DEDE ZALZA BILAH', NULL, '212210114', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1257, 'upload/foto/siswa/siswa.png', 'DINIS AGUSTIANI', NULL, '212210115', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1258, 'upload/foto/siswa/siswa.png', 'ELITA SALSA PUTRI', NULL, '212210116', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1259, 'upload/foto/siswa/siswa.png', 'ERGISTIANA HIKMADANI', NULL, '212210117', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1260, 'upload/foto/siswa/siswa.png', 'FITRIA SARI RAHMADANI', NULL, '212210118', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1261, 'upload/foto/siswa/siswa.png', 'GITA FANI', NULL, '212210119', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1262, 'upload/foto/siswa/siswa.png', 'HASNA JAUZA FAUJIYYAH', NULL, '212210120', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1263, 'upload/foto/siswa/siswa.png', 'ILHAM NOUVAL GYPARI', NULL, '212210121', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1264, 'upload/foto/siswa/siswa.png', 'INTAN RATNA NIRMALA', NULL, '212210122', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1265, 'upload/foto/siswa/siswa.png', 'KAYLA AGUSTINA', NULL, '212210123', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1266, 'upload/foto/siswa/siswa.png', 'LIANTY HENDRASTI PUTRI', NULL, '212210124', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1267, 'upload/foto/siswa/siswa.png', 'MAELANI CAHYANINGSIH', NULL, '212210125', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1268, 'upload/foto/siswa/siswa.png', 'MELLANI INTAN RAMADANI', NULL, '212210126', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1269, 'upload/foto/siswa/siswa.png', 'MUHAMMAD HAIKAL FADILA', NULL, '212210127', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1270, 'upload/foto/siswa/siswa.png', 'MUTIARA MAHARANI KUSNADI', NULL, '212210128', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1271, 'upload/foto/siswa/siswa.png', 'NISRINA SALSABILA', NULL, '212210129', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1272, 'upload/foto/siswa/siswa.png', 'RAHMA NURUL AULIA', NULL, '212210130', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1273, 'upload/foto/siswa/siswa.png', 'RATNA DWI LESTARI', NULL, '212210131', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1274, 'upload/foto/siswa/siswa.png', 'RAYHAN JESTIAN ADITRIYANA', NULL, '212210132', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1275, 'upload/foto/siswa/siswa.png', 'RENI CAHYANI', NULL, '212210133', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1276, 'upload/foto/siswa/siswa.png', 'RIKA ANDIANI', NULL, '212210134', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1277, 'upload/foto/siswa/siswa.png', 'RISMAYANTI', NULL, '212210135', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1278, 'upload/foto/siswa/siswa.png', 'SALMA NURBAETI', NULL, '212210136', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1279, 'upload/foto/siswa/siswa.png', 'SINTA RATNASARI', NULL, '212210137', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1280, 'upload/foto/siswa/siswa.png', 'SITI SARAH ANJANI', NULL, '212210138', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1281, 'upload/foto/siswa/siswa.png', 'SYIVA NURILLA', NULL, '212210139', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1282, 'upload/foto/siswa/siswa.png', 'TIA FITRIANI', NULL, '212210140', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1283, 'upload/foto/siswa/siswa.png', 'TIRA AMELIA', NULL, '212210141', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1284, 'upload/foto/siswa/siswa.png', 'WIDYA HASTUTI', NULL, '212210142', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1285, 'upload/foto/siswa/siswa.png', 'YAYU AULIA RAHAYUNINGSIH', NULL, '212210143', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1286, 'upload/foto/siswa/siswa.png', 'ZASKIA JULIASARI', NULL, '212210144', 3, '36', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1287, 'upload/foto/siswa/siswa.png', 'ADAM BHAHTIAR', NULL, '212210145', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1288, 'upload/foto/siswa/siswa.png', 'ADE INTAN NUR SABRINA', NULL, '212210146', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1289, 'upload/foto/siswa/siswa.png', 'ADIT HERDIANA', NULL, '212210147', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1290, 'upload/foto/siswa/siswa.png', 'AMALIA AMANDA', NULL, '212210148', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1291, 'upload/foto/siswa/siswa.png', 'AMING SARIJAYA', NULL, '212210149', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:41', '2022-04-05 14:32:41'),
(1292, 'upload/foto/siswa/siswa.png', 'ANISAH ZAHRAH HANIYAH', NULL, '212210150', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1293, 'upload/foto/siswa/siswa.png', 'ARIF SARIPUDIN', NULL, '212210151', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1294, 'upload/foto/siswa/siswa.png', 'ARIN ARWATI', NULL, '212210152', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1295, 'upload/foto/siswa/siswa.png', 'DEDE SUDENDI', NULL, '212210153', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1296, 'upload/foto/siswa/siswa.png', 'DIANI SEPIANI', NULL, '212210154', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1297, 'upload/foto/siswa/siswa.png', 'ERNASARI', NULL, '212210155', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1298, 'upload/foto/siswa/siswa.png', 'FARIZ ALAM ARIANSAH', NULL, '212210156', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1299, 'upload/foto/siswa/siswa.png', 'GALIH NUGRAHA', NULL, '212210157', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1300, 'upload/foto/siswa/siswa.png', 'GITA ANGGRAENI', NULL, '212210158', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1301, 'upload/foto/siswa/siswa.png', 'ICHA OKTAVIA', NULL, '212210159', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1302, 'upload/foto/siswa/siswa.png', 'ISMA NURFAUZIAH', NULL, '212210160', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1303, 'upload/foto/siswa/siswa.png', 'JASKIA MOHAMAD HABIBI', NULL, '212210161', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1304, 'upload/foto/siswa/siswa.png', 'KAMILA SHAHRIN', NULL, '212210162', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1305, 'upload/foto/siswa/siswa.png', 'LAILATUL NURAZIZAH', NULL, '212210163', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1306, 'upload/foto/siswa/siswa.png', 'MAESA WAHYUNINGSIH', NULL, '212210164', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1307, 'upload/foto/siswa/siswa.png', 'MOCHAMAD YUNUS FIRMANSYAH', NULL, '212210165', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1308, 'upload/foto/siswa/siswa.png', 'MUHAMAD AFRIZAL', NULL, '212210166', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1309, 'upload/foto/siswa/siswa.png', 'MUHAMMAD FARID HAKIM', NULL, '212210167', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1310, 'upload/foto/siswa/siswa.png', 'NEYLA HELWA WELFIAN ASSAMS', NULL, '212210168', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1311, 'upload/foto/siswa/siswa.png', 'PITRI SAPITRI', NULL, '212210169', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1312, 'upload/foto/siswa/siswa.png', 'RAMA PATRIA ABIMANYU', NULL, '212210170', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1313, 'upload/foto/siswa/siswa.png', 'RELAWATI', NULL, '212210171', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1314, 'upload/foto/siswa/siswa.png', 'RIKI MUHAMMAD RIFKY', NULL, '212210172', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1315, 'upload/foto/siswa/siswa.png', 'RINA KALISTA', NULL, '212210173', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1316, 'upload/foto/siswa/siswa.png', 'RONI', NULL, '212210174', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1317, 'upload/foto/siswa/siswa.png', 'SELA AULIA ARDIANI', NULL, '212210175', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1318, 'upload/foto/siswa/siswa.png', 'SISKA SISWANTI', NULL, '212210176', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1319, 'upload/foto/siswa/siswa.png', 'SYIRA ZULIKA PUTRI YOGASWARA', NULL, '212210177', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1320, 'upload/foto/siswa/siswa.png', 'TIJAR SEPTIANA', NULL, '212210178', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1321, 'upload/foto/siswa/siswa.png', 'TRISYA CULISTRIJAROH', NULL, '212210179', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1322, 'upload/foto/siswa/siswa.png', 'WULAN WIDARI', NULL, '212210180', 3, '37', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1323, 'upload/foto/siswa/siswa.png', 'ADE HERDIYANA', NULL, '212210181', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1324, 'upload/foto/siswa/siswa.png', 'ADINDA NOVITA ANGGRAENI', NULL, '212210182', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1325, 'upload/foto/siswa/siswa.png', 'AFRIZAL MULADI', NULL, '212210183', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1326, 'upload/foto/siswa/siswa.png', 'ANISA DIYANAH', NULL, '212210184', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1327, 'upload/foto/siswa/siswa.png', 'ANNISA AMELIA', NULL, '212210185', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1328, 'upload/foto/siswa/siswa.png', 'APRIYATNA', NULL, '212210186', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1329, 'upload/foto/siswa/siswa.png', 'ARIZAL MUTAQIN', NULL, '212210187', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1330, 'upload/foto/siswa/siswa.png', 'ARNI TRI SETIANI', NULL, '212210188', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1331, 'upload/foto/siswa/siswa.png', 'DIRA ALIYYA RAHMA APRIANI', NULL, '212210189', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1332, 'upload/foto/siswa/siswa.png', 'EGI MUHAMAD RIZKI', NULL, '212210190', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1333, 'upload/foto/siswa/siswa.png', 'FARAMITA SEKARWATI', NULL, '212210191', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1334, 'upload/foto/siswa/siswa.png', 'Ferdiansyah', NULL, '212210192', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1335, 'upload/foto/siswa/siswa.png', 'GITA DEWI MEIYANI', NULL, '212210193', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1336, 'upload/foto/siswa/siswa.png', 'HAPIS NURDIN NANSA', NULL, '212210194', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1337, 'upload/foto/siswa/siswa.png', 'INDI NURHIDAYAH', NULL, '212210195', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1338, 'upload/foto/siswa/siswa.png', 'JEJEN SANDI MAULANA', NULL, '212210196', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1339, 'upload/foto/siswa/siswa.png', 'JELITA DWIYANTI', NULL, '212210197', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1340, 'upload/foto/siswa/siswa.png', 'KARMILA SRIMULYANI', NULL, '212210198', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1341, 'upload/foto/siswa/siswa.png', 'LIA AGUSTIN', NULL, '212210199', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1342, 'upload/foto/siswa/siswa.png', 'MOHAMAD RESPATY NEGARA', NULL, '212210200', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1343, 'upload/foto/siswa/siswa.png', 'MUHAMAD ARYA WIGUNA', NULL, '212210201', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1344, 'upload/foto/siswa/siswa.png', 'MUHAMMAD IRGI SYARIFUDIN', NULL, '212210202', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1345, 'upload/foto/siswa/siswa.png', 'MUTIARA WULANDARY', NULL, '212210203', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1346, 'upload/foto/siswa/siswa.png', 'NOVIA NURHAYATI', NULL, '212210204', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1347, 'upload/foto/siswa/siswa.png', 'RAHMA DAMAYANTI', NULL, '212210205', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1348, 'upload/foto/siswa/siswa.png', 'RENDI RUSMANA', NULL, '212210206', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1349, 'upload/foto/siswa/siswa.png', 'RESTI FEBRIANTI', NULL, '212210207', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1350, 'upload/foto/siswa/siswa.png', 'RIPAN ADRIANSYAH', NULL, '212210208', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1351, 'upload/foto/siswa/siswa.png', 'RIRIS SRI LESTARI', NULL, '212210209', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1352, 'upload/foto/siswa/siswa.png', 'SHAFA` ZAHIRAH', NULL, '212210210', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1353, 'upload/foto/siswa/siswa.png', 'SITI HANIFA MUTMAINAH', NULL, '212210211', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1354, 'upload/foto/siswa/siswa.png', 'SOFWAN ALAWIL HADAD', NULL, '212210212', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1355, 'upload/foto/siswa/siswa.png', 'TIA RAHMAWATI', NULL, '212210213', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1356, 'upload/foto/siswa/siswa.png', 'VIKA VERDIANISA', NULL, '212210214', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1357, 'upload/foto/siswa/siswa.png', 'WIDI FAJAR RAMDHANI', NULL, '212210215', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1358, 'upload/foto/siswa/siswa.png', 'YASTI NUR AWALYA', NULL, '212210216', 3, '38', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1359, 'upload/foto/siswa/siswa.png', 'ADE HILMAN SUKMAWAN', NULL, '212210217', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1360, 'upload/foto/siswa/siswa.png', 'AHMAD IKHSANUL MA`ARIF', NULL, '212210218', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:42', '2022-04-05 14:32:42'),
(1361, 'upload/foto/siswa/siswa.png', 'ALIFAH NURROHMAH', NULL, '212210219', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1362, 'upload/foto/siswa/siswa.png', 'ANISA SITI MARYAM', NULL, '212210220', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1363, 'upload/foto/siswa/siswa.png', 'ANNISA PUTRI KHAIRUNNISA', NULL, '212210221', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1364, 'upload/foto/siswa/siswa.png', 'ARDIAN TIRTA HIDAYAT', NULL, '212210222', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1365, 'upload/foto/siswa/siswa.png', 'ASEP SUPRIATNA', NULL, '212210223', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1366, 'upload/foto/siswa/siswa.png', 'AZZAHWA KAMILLA NUR AZIZAH', NULL, '212210224', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43');
INSERT INTO `siswa` (`id`, `foto`, `nama`, `nisn`, `nis`, `tahun_akademik_id`, `kelas_id`, `jurusan_id`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `anak_ke`, `warga_negara`, `agama`, `asal_sekolah`, `no_ijazah`, `tahun_lulus`, `alamat_sekolah`, `ayah`, `ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `wali`, `alamat_wali`, `kerja_wali`, `hubungan_wali`, `status`, `created_at`, `updated_at`) VALUES
(1367, 'upload/foto/siswa/siswa.png', 'EKA MUSTIKA', NULL, '212210225', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1368, 'upload/foto/siswa/siswa.png', 'FAQIH MUHAMMAD FAHREZI', NULL, '212210226', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1369, 'upload/foto/siswa/siswa.png', 'FIKA SRI WAHYUNI', NULL, '212210227', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1370, 'upload/foto/siswa/siswa.png', 'FIKRI FAUZAN', NULL, '212210228', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1371, 'upload/foto/siswa/siswa.png', 'HEZA LUMAYA', NULL, '212210229', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1372, 'upload/foto/siswa/siswa.png', 'HILMAN', NULL, '212210230', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1373, 'upload/foto/siswa/siswa.png', 'INDRIYANI NURHIDAYAH', NULL, '212210231', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1374, 'upload/foto/siswa/siswa.png', 'KAILA AGUSTIN', NULL, '212210232', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1375, 'upload/foto/siswa/siswa.png', 'KHOERUL ANWAR', NULL, '212210233', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1376, 'upload/foto/siswa/siswa.png', 'LAILA MUBAROKAH', NULL, '212210234', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1377, 'upload/foto/siswa/siswa.png', 'LINDA SITI AULIA', NULL, '212210235', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1378, 'upload/foto/siswa/siswa.png', 'MUGHI RIZKY PANGESTU', NULL, '212210236', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1379, 'upload/foto/siswa/siswa.png', 'MUHAMAD RIDHO DWI PUTRA', NULL, '212210237', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1380, 'upload/foto/siswa/siswa.png', 'NANDA FARIZHA', NULL, '212210238', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1381, 'upload/foto/siswa/siswa.png', 'NAUFAL NABIIH HIBATULLAH', NULL, '212210239', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1382, 'upload/foto/siswa/siswa.png', 'NURI ANDINI', NULL, '212210240', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1383, 'upload/foto/siswa/siswa.png', 'RAYA ISNAENI NUGRAHA', NULL, '212210241', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1384, 'upload/foto/siswa/siswa.png', 'RENDRA', NULL, '212210242', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1385, 'upload/foto/siswa/siswa.png', 'RESTIKA', NULL, '212210243', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1386, 'upload/foto/siswa/siswa.png', 'RIZAL SAPUTRA', NULL, '212210244', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1387, 'upload/foto/siswa/siswa.png', 'SASIE ARTIA', NULL, '212210245', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1388, 'upload/foto/siswa/siswa.png', 'SIFA ZAHARA SILVANA', NULL, '212210246', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1389, 'upload/foto/siswa/siswa.png', 'SRI MULYATI', NULL, '212210247', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1390, 'upload/foto/siswa/siswa.png', 'SYAHRUL ANAM', NULL, '212210248', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1391, 'upload/foto/siswa/siswa.png', 'TINA AGUSTINA', NULL, '212210249', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1392, 'upload/foto/siswa/siswa.png', 'WINDA SELVIA', NULL, '212210250', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1393, 'upload/foto/siswa/siswa.png', 'YENI HARYENI', NULL, '212210251', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1394, 'upload/foto/siswa/siswa.png', 'ZIAN NURJANAH', NULL, '212210252', 3, '39', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1395, 'upload/foto/siswa/siswa.png', 'ADIDAH', NULL, '212210253', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1396, 'upload/foto/siswa/siswa.png', 'AKBAR FITROHUANA', NULL, '212210254', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1397, 'upload/foto/siswa/siswa.png', 'AMELIA DAMAYANTI', NULL, '212210255', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1398, 'upload/foto/siswa/siswa.png', 'ANNISA NUR FAUZIYAH', NULL, '212210256', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1399, 'upload/foto/siswa/siswa.png', 'AYU ADINDA PUTRI', NULL, '212210257', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1400, 'upload/foto/siswa/siswa.png', 'AZZAHRA AULIA PRADITA', NULL, '212210258', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1401, 'upload/foto/siswa/siswa.png', 'CITRA TRI ANNISA WULANDARI', NULL, '212210259', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1402, 'upload/foto/siswa/siswa.png', 'DHEVANO ALVITO DHENOVA', NULL, '212210260', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1403, 'upload/foto/siswa/siswa.png', 'DINDA ANNISA PURBASARI', NULL, '212210261', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1404, 'upload/foto/siswa/siswa.png', 'ELI ERMAWATI', NULL, '212210262', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1405, 'upload/foto/siswa/siswa.png', 'ESTHY ISKANDAR EKA PUTRI', NULL, '212210263', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1406, 'upload/foto/siswa/siswa.png', 'FASYA SITI FADILAH', NULL, '212210264', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1407, 'upload/foto/siswa/siswa.png', 'FEBRIANTO', NULL, '212210265', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1408, 'upload/foto/siswa/siswa.png', 'FUJAWATI HELSANTIARA', NULL, '212210266', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1409, 'upload/foto/siswa/siswa.png', 'HANI HARYALI', NULL, '212210267', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1410, 'upload/foto/siswa/siswa.png', 'INDRI LESTARI', NULL, '212210268', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1411, 'upload/foto/siswa/siswa.png', 'ISMI RAJNIKA NURUL ANWAR', NULL, '212210269', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1412, 'upload/foto/siswa/siswa.png', 'LENA RUSLIANI', NULL, '212210270', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1413, 'upload/foto/siswa/siswa.png', 'MAYA AYU LESTARI', NULL, '212210271', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1414, 'upload/foto/siswa/siswa.png', 'NAJLA `A NURUL AWALIYAH', NULL, '212210272', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1415, 'upload/foto/siswa/siswa.png', 'NESTA AMELIANI', NULL, '212210273', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1416, 'upload/foto/siswa/siswa.png', 'NURLAILI INTAN', NULL, '212210274', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1417, 'upload/foto/siswa/siswa.png', 'RAFLY AHMAD ALFARISY', NULL, '212210275', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1418, 'upload/foto/siswa/siswa.png', 'REFA APRILIANTI', NULL, '212210276', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1419, 'upload/foto/siswa/siswa.png', 'REVA RATU ANANDA', NULL, '212210277', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1420, 'upload/foto/siswa/siswa.png', 'REZA HASAN SAEFULOH', NULL, '212210278', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1421, 'upload/foto/siswa/siswa.png', 'RIRIS INDRIANI UTAMI', NULL, '212210279', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1422, 'upload/foto/siswa/siswa.png', 'RITA NURAENI', NULL, '212210280', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1423, 'upload/foto/siswa/siswa.png', 'SEFTIAN DWI YANA', NULL, '212210281', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1424, 'upload/foto/siswa/siswa.png', 'SHANIA DEWI', NULL, '212210282', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:43', '2022-04-05 14:32:43'),
(1425, 'upload/foto/siswa/siswa.png', 'SINTA AULIA DEWI', NULL, '212210283', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1426, 'upload/foto/siswa/siswa.png', 'SITI NABILA', NULL, '212210284', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1427, 'upload/foto/siswa/siswa.png', 'SUSI HERYANTI', NULL, '212210285', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1428, 'upload/foto/siswa/siswa.png', 'TIA LESTARI', NULL, '212210286', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1429, 'upload/foto/siswa/siswa.png', 'VIERLY NUGRAHA', NULL, '212210287', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1430, 'upload/foto/siswa/siswa.png', 'WULAN PURNAMASARI', NULL, '212210288', 3, '40', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1431, 'upload/foto/siswa/siswa.png', 'ALEXA ADISTY', NULL, '212210289', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1432, 'upload/foto/siswa/siswa.png', 'AMRITA', NULL, '212210290', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1433, 'upload/foto/siswa/siswa.png', 'ASEP MAULANA YUSUP', NULL, '212210291', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1434, 'upload/foto/siswa/siswa.png', 'AULIA FEBRIANI', NULL, '212210292', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1435, 'upload/foto/siswa/siswa.png', 'AZHILANI NUR KHOFIFAH', NULL, '212210293', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1436, 'upload/foto/siswa/siswa.png', 'BUNGA AULIA', NULL, '212210294', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1437, 'upload/foto/siswa/siswa.png', 'DEBY YULISTIANI', NULL, '212210295', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1438, 'upload/foto/siswa/siswa.png', 'DINI MEILANI', NULL, '212210296', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1439, 'upload/foto/siswa/siswa.png', 'ELSA NABILA', NULL, '212210297', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1440, 'upload/foto/siswa/siswa.png', 'ERIK SEPTIAN', NULL, '212210298', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1441, 'upload/foto/siswa/siswa.png', 'FANNISA SRI ANDIANI', NULL, '212210299', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1442, 'upload/foto/siswa/siswa.png', 'FATIA NAJWATUZAHRA', NULL, '212210300', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1443, 'upload/foto/siswa/siswa.png', 'FUJI MAHARANI', NULL, '212210301', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1444, 'upload/foto/siswa/siswa.png', 'HERA FEBRIANI', NULL, '212210302', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1445, 'upload/foto/siswa/siswa.png', 'INDRIANI FADILLA', NULL, '212210303', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1446, 'upload/foto/siswa/siswa.png', 'ISTNA NURLIANI KOHIROH', NULL, '212210304', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1447, 'upload/foto/siswa/siswa.png', 'KRISTIAN ADITIA CHANDRA', NULL, '212210305', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1448, 'upload/foto/siswa/siswa.png', 'LENA SEPTIANI', NULL, '212210306', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1449, 'upload/foto/siswa/siswa.png', 'MELGA RIZKY JUARIAH', NULL, '212210307', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1450, 'upload/foto/siswa/siswa.png', 'NASYA PUTRI NOVIYANA', NULL, '212210308', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1451, 'upload/foto/siswa/siswa.png', 'NISA FAUZIYAH', NULL, '212210309', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1452, 'upload/foto/siswa/siswa.png', 'RAFRIAN AGUSTIAWAN', NULL, '212210310', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1453, 'upload/foto/siswa/siswa.png', 'RAISSA EKATERINA JASMINE', NULL, '212210311', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1454, 'upload/foto/siswa/siswa.png', 'RESTIANI AGUSTIN', NULL, '212210312', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1455, 'upload/foto/siswa/siswa.png', 'RIFA NURUL AZMI', NULL, '212210313', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1456, 'upload/foto/siswa/siswa.png', 'RISFA PUTRI ARDIA', NULL, '212210314', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1457, 'upload/foto/siswa/siswa.png', 'RULY NUGRAHA', NULL, '212210315', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1458, 'upload/foto/siswa/siswa.png', 'SALWA FAKHIRA PUTRI', NULL, '212210316', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1459, 'upload/foto/siswa/siswa.png', 'SENDY SEFTIAN', NULL, '212210317', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1460, 'upload/foto/siswa/siswa.png', 'SHINTA YULIASARI', NULL, '212210318', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1461, 'upload/foto/siswa/siswa.png', 'SINTIA ALIFIAH HENDRAYANI', NULL, '212210319', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1462, 'upload/foto/siswa/siswa.png', 'SITI SALSA SABILA', NULL, '212210320', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1463, 'upload/foto/siswa/siswa.png', 'SYA`BANI ZAKIYAH NURAENI', NULL, '212210321', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1464, 'upload/foto/siswa/siswa.png', 'TIARA KISMANISA PUTRIA', NULL, '212210322', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1465, 'upload/foto/siswa/siswa.png', 'WIDIASTUTI', NULL, '212210323', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1466, 'upload/foto/siswa/siswa.png', 'ZALZABYLA ANUGRAH PUTRI', NULL, '212210324', 3, '41', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1467, 'upload/foto/siswa/siswa.png', 'ALIYA SYILVIANNISA', NULL, '212210325', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1468, 'upload/foto/siswa/siswa.png', 'ANDINI SRI LESTARI', NULL, '212210326', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1469, 'upload/foto/siswa/siswa.png', 'AULIA MAULANI MUSTOPA', NULL, '212210327', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1470, 'upload/foto/siswa/siswa.png', 'AZRI SANI FAUZIAH', NULL, '212210328', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1471, 'upload/foto/siswa/siswa.png', 'AZRIEL NURTIAS ISKANDAR', NULL, '212210329', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1472, 'upload/foto/siswa/siswa.png', 'CINTIYA RAMADANI', NULL, '212210330', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1473, 'upload/foto/siswa/siswa.png', 'DEWI ANNISSA YULIA NINGSIH', NULL, '212210331', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1474, 'upload/foto/siswa/siswa.png', 'DIPA AGNESIA', NULL, '212210332', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1475, 'upload/foto/siswa/siswa.png', 'ERLIANA SITI NUR BANDA', NULL, '212210333', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1476, 'upload/foto/siswa/siswa.png', 'FANY AMELIA', NULL, '212210334', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1477, 'upload/foto/siswa/siswa.png', 'FARIZ AFRIZAL', NULL, '212210335', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1478, 'upload/foto/siswa/siswa.png', 'FAUZIAH MUSTIKA ASIH', NULL, '212210336', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1479, 'upload/foto/siswa/siswa.png', 'GINA TRI ARINI', NULL, '212210337', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1480, 'upload/foto/siswa/siswa.png', 'ILA FEBRIANY', NULL, '212210338', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1481, 'upload/foto/siswa/siswa.png', 'INTAN NURAENI', NULL, '212210339', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1482, 'upload/foto/siswa/siswa.png', 'KENNY AZZAHRA PUTRI', NULL, '212210340', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1483, 'upload/foto/siswa/siswa.png', 'MARISA NURLELA SETIAWAN', NULL, '212210341', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1484, 'upload/foto/siswa/siswa.png', 'MUHAMMAD RIFKI FIRMANSYAH', NULL, '212210342', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1485, 'upload/foto/siswa/siswa.png', 'NAILA ZAKIA', NULL, '212210343', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1486, 'upload/foto/siswa/siswa.png', 'NEIZA RIJKI JUNIAR', NULL, '212210344', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1487, 'upload/foto/siswa/siswa.png', 'NOVIAH', NULL, '212210345', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:44', '2022-04-05 14:32:44'),
(1488, 'upload/foto/siswa/siswa.png', 'RAGIEL SATRIA WIGUNA', NULL, '212210346', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1489, 'upload/foto/siswa/siswa.png', 'RANI RAMADANI', NULL, '212210347', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1490, 'upload/foto/siswa/siswa.png', 'RETA MARCHELA', NULL, '212210348', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1491, 'upload/foto/siswa/siswa.png', 'RIRIN FAUZIAH', NULL, '212210349', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1492, 'upload/foto/siswa/siswa.png', 'RISKA APRILIANI', NULL, '212210350', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1493, 'upload/foto/siswa/siswa.png', 'SATRIA NURALAM', NULL, '212210351', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1494, 'upload/foto/siswa/siswa.png', 'SELVI FAUZIAH', NULL, '212210352', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1495, 'upload/foto/siswa/siswa.png', 'SILFI RAMDLANI', NULL, '212210353', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1496, 'upload/foto/siswa/siswa.png', 'SITI AMELIA', NULL, '212210354', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1497, 'upload/foto/siswa/siswa.png', 'SOPHIE', NULL, '212210355', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1498, 'upload/foto/siswa/siswa.png', 'TANTIA APRILIANI', NULL, '212210356', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1499, 'upload/foto/siswa/siswa.png', 'THOMAS ALPHA FERRARI', NULL, '212210357', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1500, 'upload/foto/siswa/siswa.png', 'TIYA LURIYANA', NULL, '212210358', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1501, 'upload/foto/siswa/siswa.png', 'WIDYA IRGADITA WULANSARI', NULL, '212210359', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1502, 'upload/foto/siswa/siswa.png', 'ZIDNA KHOERUNNISA', NULL, '212210360', 3, '42', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1503, 'upload/foto/siswa/siswa.png', 'ADE DARIS', NULL, '212210361', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1504, 'upload/foto/siswa/siswa.png', 'AI HARTONO', NULL, '212210362', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1505, 'upload/foto/siswa/siswa.png', 'AJENG PRIMANDINI ADE PUTRI', NULL, '212210363', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1506, 'upload/foto/siswa/siswa.png', 'ANDINIE ZHINSKY YANDRE', NULL, '212210364', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1507, 'upload/foto/siswa/siswa.png', 'DAFFA SETIAWAN', NULL, '212210365', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1508, 'upload/foto/siswa/siswa.png', 'DENI FIRMANSYAH', NULL, '212210366', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1509, 'upload/foto/siswa/siswa.png', 'DEVI AULIA ASTUTI', NULL, '212210367', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1510, 'upload/foto/siswa/siswa.png', 'DIMAS AGUNG TRIYANA', NULL, '212210368', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1511, 'upload/foto/siswa/siswa.png', 'ELISALSABILLA DAYANTI', NULL, '212210369', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1512, 'upload/foto/siswa/siswa.png', 'FASHA FITRI PEBRIANTI', NULL, '212210370', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1513, 'upload/foto/siswa/siswa.png', 'FITRIANSYAH AZIS', NULL, '212210371', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1514, 'upload/foto/siswa/siswa.png', 'FITRY NUR RAMADHANI', NULL, '212210372', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1515, 'upload/foto/siswa/siswa.png', 'GIZKA AMELIA PUTRI', NULL, '212210373', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1516, 'upload/foto/siswa/siswa.png', 'KINKIN NURFAUJIAH', NULL, '212210374', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1517, 'upload/foto/siswa/siswa.png', 'MAEY SALSABILA', NULL, '212210375', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1518, 'upload/foto/siswa/siswa.png', 'MIA SUMIATI', NULL, '212210376', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1519, 'upload/foto/siswa/siswa.png', 'MIRANI PUSPITASARI', NULL, '212210377', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1520, 'upload/foto/siswa/siswa.png', 'MOHAMAD FAHRI', NULL, '212210378', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1521, 'upload/foto/siswa/siswa.png', 'MUHAMAD RAIHAN MAULANA', NULL, '212210379', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1522, 'upload/foto/siswa/siswa.png', 'NURDIANI', NULL, '212210380', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1523, 'upload/foto/siswa/siswa.png', 'PIRA PRASELITA', NULL, '212210381', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1524, 'upload/foto/siswa/siswa.png', 'RESTU ASRI', NULL, '212210382', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1525, 'upload/foto/siswa/siswa.png', 'RHIMA RAHMANIATI', NULL, '212210383', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1526, 'upload/foto/siswa/siswa.png', 'RIFQI RIANDANI', NULL, '212210384', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1527, 'upload/foto/siswa/siswa.png', 'SALSA NABILA', NULL, '212210385', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1528, 'upload/foto/siswa/siswa.png', 'SASTI PUTRI YULIAWANTI', NULL, '212210386', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1529, 'upload/foto/siswa/siswa.png', 'SELYNA', NULL, '212210387', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1530, 'upload/foto/siswa/siswa.png', 'SINTA SUCIANTI', NULL, '212210388', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1531, 'upload/foto/siswa/siswa.png', 'SOPI WULANDARI', NULL, '212210389', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1532, 'upload/foto/siswa/siswa.png', 'SUCI LESTARI', NULL, '212210390', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1533, 'upload/foto/siswa/siswa.png', 'SURYA MULIAWAN SUBKHAN', NULL, '212210391', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1534, 'upload/foto/siswa/siswa.png', 'TENI SEPTIANI', NULL, '212210392', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1535, 'upload/foto/siswa/siswa.png', 'TIRA RAHMAHWATI', NULL, '212210393', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1536, 'upload/foto/siswa/siswa.png', 'YUDIKA AGUNG NIRVANA', NULL, '212210394', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1537, 'upload/foto/siswa/siswa.png', 'YULIA SARAH', NULL, '212210395', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1538, 'upload/foto/siswa/siswa.png', 'ZAHRAN ADIPUTRA', NULL, '212210396', 3, '43', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1539, 'upload/foto/siswa/siswa.png', 'ADRIAN RHAMADAN', NULL, '212210397', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1540, 'upload/foto/siswa/siswa.png', 'AJI ADHA SETIYADI', NULL, '212210398', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1541, 'upload/foto/siswa/siswa.png', 'ALICYA NURAZIZAH', NULL, '212210399', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1542, 'upload/foto/siswa/siswa.png', 'ALISA NURMALA', NULL, '212210400', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1543, 'upload/foto/siswa/siswa.png', 'DAIS NUR AZIZAH', NULL, '212210401', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1544, 'upload/foto/siswa/siswa.png', 'DENI DARMAWAN', NULL, '212210402', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1545, 'upload/foto/siswa/siswa.png', 'DHE DION AGUS TRIA DINATA', NULL, '212210403', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1546, 'upload/foto/siswa/siswa.png', 'ELA PITRIYANI', NULL, '212210404', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1547, 'upload/foto/siswa/siswa.png', 'ELSA YELISTA SUCI', NULL, '212210405', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:45', '2022-04-05 14:32:45'),
(1548, 'upload/foto/siswa/siswa.png', 'FEBI PRATIWI ALYSSA PUTRI', NULL, '212210406', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1549, 'upload/foto/siswa/siswa.png', 'FEBRIANSYAH', NULL, '212210407', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1550, 'upload/foto/siswa/siswa.png', 'GHISA AZZAHRA', NULL, '212210408', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1551, 'upload/foto/siswa/siswa.png', 'HERA YUHERAWATI', NULL, '212210409', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1552, 'upload/foto/siswa/siswa.png', 'LIA AMELIA', NULL, '212210410', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1553, 'upload/foto/siswa/siswa.png', 'MAYA WIJAYANTI', NULL, '212210411', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1554, 'upload/foto/siswa/siswa.png', 'MILA SILAWATI', NULL, '212210412', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1555, 'upload/foto/siswa/siswa.png', 'MOCHAMMAD FADHIL', NULL, '212210413', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1556, 'upload/foto/siswa/siswa.png', 'MUHAMAD NOVAL ALFARIJI', NULL, '212210414', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1557, 'upload/foto/siswa/siswa.png', 'MUHAMMAD AFRIZAL NUR', NULL, '212210415', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1558, 'upload/foto/siswa/siswa.png', 'NAELI HIKMATUL MAOLIDIA', NULL, '212210416', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1559, 'upload/foto/siswa/siswa.png', 'PIKA YUNI SAHARANI', NULL, '212210417', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1560, 'upload/foto/siswa/siswa.png', 'RAHMA APRILIA ENDAYANA HERMAWAN', NULL, '212210418', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1561, 'upload/foto/siswa/siswa.png', 'REVA ANGGRAENI NOVELA SANDY', NULL, '212210419', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46');
INSERT INTO `siswa` (`id`, `foto`, `nama`, `nisn`, `nis`, `tahun_akademik_id`, `kelas_id`, `jurusan_id`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `anak_ke`, `warga_negara`, `agama`, `asal_sekolah`, `no_ijazah`, `tahun_lulus`, `alamat_sekolah`, `ayah`, `ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `wali`, `alamat_wali`, `kerja_wali`, `hubungan_wali`, `status`, `created_at`, `updated_at`) VALUES
(1562, 'upload/foto/siswa/siswa.png', 'RIFA SIPATUL FATONAH', NULL, '212210420', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1563, 'upload/foto/siswa/siswa.png', 'SAEFULLOH AKBAR', NULL, '212210421', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1564, 'upload/foto/siswa/siswa.png', 'SANTI NURHASANAH', NULL, '212210422', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1565, 'upload/foto/siswa/siswa.png', 'SELLY JULIYANA', NULL, '212210423', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1566, 'upload/foto/siswa/siswa.png', 'SILMA NURKAFFAHTUNISA', NULL, '212210424', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1567, 'upload/foto/siswa/siswa.png', 'SITI ROHMAH', NULL, '212210425', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1568, 'upload/foto/siswa/siswa.png', 'SRI IPMA MULYANI', NULL, '212210426', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1569, 'upload/foto/siswa/siswa.png', 'SYAILA CAHAYA JUNIANTI', NULL, '212210427', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1570, 'upload/foto/siswa/siswa.png', 'TINA YUSTIANA', NULL, '212210428', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1571, 'upload/foto/siswa/siswa.png', 'VIESTA SEPTI ANNISA PRIMASTY', NULL, '212210429', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1572, 'upload/foto/siswa/siswa.png', 'VIRGIAWAN MAHENDRANATA', NULL, '212210430', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1573, 'upload/foto/siswa/siswa.png', 'YUSPIA ERNI', NULL, '212210431', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1574, 'upload/foto/siswa/siswa.png', 'YUSUF MUHAMMAD IKHLAS MULYANA', NULL, '212210432', 3, '44', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1575, 'upload/foto/siswa/siswa.png', 'ADINDANISA FEBRUARENDRA', NULL, '212210433', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1576, 'upload/foto/siswa/siswa.png', 'ADITIYA MESSY ZULFA', NULL, '212210434', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1577, 'upload/foto/siswa/siswa.png', 'ALIFA TSANIA', NULL, '212210435', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1578, 'upload/foto/siswa/siswa.png', 'ALISA NURFADILAH', NULL, '212210436', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1579, 'upload/foto/siswa/siswa.png', 'ALYA NURROHMAH', NULL, '212210437', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1580, 'upload/foto/siswa/siswa.png', 'ANDANI NUR HASANAH', NULL, '212210438', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1581, 'upload/foto/siswa/siswa.png', 'CICI HERAWATI', NULL, '212210439', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1582, 'upload/foto/siswa/siswa.png', 'ELANG IJLAL RADITYA ISLAM', NULL, '212210440', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1583, 'upload/foto/siswa/siswa.png', 'ELSA AMALIA', NULL, '212210441', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1584, 'upload/foto/siswa/siswa.png', 'ENOK DINI NURAINI', NULL, '212210442', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1585, 'upload/foto/siswa/siswa.png', 'FIKRI UMAR PERMATA HILMI', NULL, '212210443', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1586, 'upload/foto/siswa/siswa.png', 'FIRA FIRDAUSYA', NULL, '212210444', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1587, 'upload/foto/siswa/siswa.png', 'GINA NURAINI', NULL, '212210445', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1588, 'upload/foto/siswa/siswa.png', 'HANA SITI RUKMANA', NULL, '212210446', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1589, 'upload/foto/siswa/siswa.png', 'HASNI SITI KAMILA', NULL, '212210447', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1590, 'upload/foto/siswa/siswa.png', 'HENDRA HERDIANSYAH', NULL, '212210448', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1591, 'upload/foto/siswa/siswa.png', 'HERMA CITRA MARDIANA LESTARI', NULL, '212210449', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:46', '2022-04-05 14:32:46'),
(1592, 'upload/foto/siswa/siswa.png', 'IIS SITI ROBI`AH', NULL, '212210450', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1593, 'upload/foto/siswa/siswa.png', 'INTAN NURAINI', NULL, '212210451', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1594, 'upload/foto/siswa/siswa.png', 'KEISYA SALSABILLA IMANASTI', NULL, '212210452', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1595, 'upload/foto/siswa/siswa.png', 'MELANI OKTAVIANI', NULL, '212210453', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1596, 'upload/foto/siswa/siswa.png', 'MOZA HALIMAH SYA`DIAH', NULL, '212210454', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1597, 'upload/foto/siswa/siswa.png', 'NAZWA ZAHFARINA', NULL, '212210455', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1598, 'upload/foto/siswa/siswa.png', 'NURMALA', NULL, '212210456', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1599, 'upload/foto/siswa/siswa.png', 'RAHMA INSANI PUTRI', NULL, '212210457', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1600, 'upload/foto/siswa/siswa.png', 'RAVELA BERLIANA PUTRI', NULL, '212210458', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1601, 'upload/foto/siswa/siswa.png', 'SAFITRI MULYA NINGSIH', NULL, '212210459', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1602, 'upload/foto/siswa/siswa.png', 'SANDRINA VIENKA OKTAVANIA', NULL, '212210460', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1603, 'upload/foto/siswa/siswa.png', 'SEFTA ZULFATU NASHWA', NULL, '212210461', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1604, 'upload/foto/siswa/siswa.png', 'SITI ANISA', NULL, '212210462', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1605, 'upload/foto/siswa/siswa.png', 'SITI RAHMAWATI', NULL, '212210463', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1606, 'upload/foto/siswa/siswa.png', 'TAUFIK RAMADHAN', NULL, '212210464', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1607, 'upload/foto/siswa/siswa.png', 'TIARA RESAENI', NULL, '212210465', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1608, 'upload/foto/siswa/siswa.png', 'TIYAS SUNDARI', NULL, '212210466', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1609, 'upload/foto/siswa/siswa.png', 'VERYA DELENA METIASARI', NULL, '212210467', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1610, 'upload/foto/siswa/siswa.png', 'VINA OKTAVIA', NULL, '212210468', 3, '45', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1611, 'upload/foto/siswa/siswa.png', 'AGNIA YULISTINA', NULL, '212210469', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1612, 'upload/foto/siswa/siswa.png', 'ALINDA SUCI  OKTAVIANI', NULL, '212210470', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1613, 'upload/foto/siswa/siswa.png', 'ALYA NANDA NURFITRIA', NULL, '212210471', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1614, 'upload/foto/siswa/siswa.png', 'AMELIA', NULL, '212210472', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1615, 'upload/foto/siswa/siswa.png', 'ARTIKA PUJI YULISTIANI', NULL, '212210473', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1616, 'upload/foto/siswa/siswa.png', 'DINI AGUSTIN', NULL, '212210474', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1617, 'upload/foto/siswa/siswa.png', 'DZAKY FARI` IBRAHIM', NULL, '212210475', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1618, 'upload/foto/siswa/siswa.png', 'ELSA FARIDAH', NULL, '212210476', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1619, 'upload/foto/siswa/siswa.png', 'FAEZA FATHUR RAHMAN', NULL, '212210477', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1620, 'upload/foto/siswa/siswa.png', 'FEBY PETRINA DEWI', NULL, '212210478', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1621, 'upload/foto/siswa/siswa.png', 'GHINA NAILAH RIYADI', NULL, '212210479', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1622, 'upload/foto/siswa/siswa.png', 'GITA YULIYANTI', NULL, '212210480', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1623, 'upload/foto/siswa/siswa.png', 'HADDAD TAUFIK RAMADHAN', NULL, '212210481', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1624, 'upload/foto/siswa/siswa.png', 'HANNA KHELYA ADNIN', NULL, '212210482', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1625, 'upload/foto/siswa/siswa.png', 'HENI ANDRIATIKA', NULL, '212210483', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1626, 'upload/foto/siswa/siswa.png', 'IHPA NURLITA', NULL, '212210484', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1627, 'upload/foto/siswa/siswa.png', 'ILMI SRI NURYA RAMADANI', NULL, '212210485', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1628, 'upload/foto/siswa/siswa.png', 'JULIANA', NULL, '212210486', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1629, 'upload/foto/siswa/siswa.png', 'KHANSA TALITHA FEBIYANSYA', NULL, '212210487', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1630, 'upload/foto/siswa/siswa.png', 'LUKMAN NUR HAKIM', NULL, '212210488', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1631, 'upload/foto/siswa/siswa.png', 'MOJANG QHOTARATU NABILA', NULL, '212210489', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1632, 'upload/foto/siswa/siswa.png', 'NANDA YUNITASARI', NULL, '212210490', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1633, 'upload/foto/siswa/siswa.png', 'NINA NURHAYATI', NULL, '212210491', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1634, 'upload/foto/siswa/siswa.png', 'NURMALA SINTA LESTARI', NULL, '212210492', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1635, 'upload/foto/siswa/siswa.png', 'RAHMA KAMILA', NULL, '212210493', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1636, 'upload/foto/siswa/siswa.png', 'REGIANA FAUZAN HILMAN', NULL, '212210494', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1637, 'upload/foto/siswa/siswa.png', 'SAHLA AMINATY GUMILAR', NULL, '212210495', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1638, 'upload/foto/siswa/siswa.png', 'SANI AGISNI', NULL, '212210496', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1639, 'upload/foto/siswa/siswa.png', 'SHAKIRA ANGELA', NULL, '212210497', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1640, 'upload/foto/siswa/siswa.png', 'SITI JUNIANTI IMEALDA', NULL, '212210498', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1641, 'upload/foto/siswa/siswa.png', 'TASYA SURURROTUL MANAN', NULL, '212210499', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1642, 'upload/foto/siswa/siswa.png', 'TITA ROSMAYANTI', NULL, '212210500', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1643, 'upload/foto/siswa/siswa.png', 'VANI NURFADILAH FAUZI', NULL, '212210501', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1644, 'upload/foto/siswa/siswa.png', 'VINA NUR AMALIA ISHLAH', NULL, '212210502', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1645, 'upload/foto/siswa/siswa.png', 'WIWIT WINARTI', NULL, '212210503', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1646, 'upload/foto/siswa/siswa.png', 'ZAHRA NURUL AZMI', NULL, '212210504', 3, '46', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:47', '2022-04-05 14:32:47'),
(1647, 'upload/foto/siswa/siswa.png', 'ANNISA NUR RAHMAWATI', NULL, '212210505', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1648, 'upload/foto/siswa/siswa.png', 'ARIF RAHMAN HAKIM', NULL, '212210506', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1649, 'upload/foto/siswa/siswa.png', 'AZRIL MULYA PRADANA PUTRA', NULL, '212210507', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1650, 'upload/foto/siswa/siswa.png', 'BRILIANT YUSUF PRAMUDA', NULL, '212210508', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1651, 'upload/foto/siswa/siswa.png', 'DAHLIYA ANGGUN PERAMITA', NULL, '212210509', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1652, 'upload/foto/siswa/siswa.png', 'DHAVA AGUSTIAN', NULL, '212210510', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1653, 'upload/foto/siswa/siswa.png', 'DIMAS ARIF SUPRIATNA', NULL, '212210511', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1654, 'upload/foto/siswa/siswa.png', 'EGI ALVAREZY', NULL, '212210512', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1655, 'upload/foto/siswa/siswa.png', 'ELSHA ALISHA', NULL, '212210513', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1656, 'upload/foto/siswa/siswa.png', 'FAIQ NAJMI SYAUQI', NULL, '212210514', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1657, 'upload/foto/siswa/siswa.png', 'FALSHA ABIDZAR AL GHIFARI', NULL, '212210515', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1658, 'upload/foto/siswa/siswa.png', 'FAREL ZAIDAN MUDZAKY', NULL, '212210516', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1659, 'upload/foto/siswa/siswa.png', 'GAGAS SUSETYO PAMBUDI', NULL, '212210517', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1660, 'upload/foto/siswa/siswa.png', 'GITA DWI ROSIKA', NULL, '212210518', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1661, 'upload/foto/siswa/siswa.png', 'IIN NURHAYATI', NULL, '212210519', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1662, 'upload/foto/siswa/siswa.png', 'ILHAM BHAKTI INDRATAMA', NULL, '212210520', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1663, 'upload/foto/siswa/siswa.png', 'ILMAN MAULANA', NULL, '212210521', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1664, 'upload/foto/siswa/siswa.png', 'IRMA DELIMA', NULL, '212210522', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1665, 'upload/foto/siswa/siswa.png', 'JUWITA KHOERUNNISA', NULL, '212210523', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1666, 'upload/foto/siswa/siswa.png', 'KAULA SADIDA KARIMA', NULL, '212210524', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1667, 'upload/foto/siswa/siswa.png', 'MALYA EMILY SOERIASASMITA', NULL, '212210525', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1668, 'upload/foto/siswa/siswa.png', 'MILA AMANAH', NULL, '212210526', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1669, 'upload/foto/siswa/siswa.png', 'MUHAMAD IQBAL NUR ALIM', NULL, '212210527', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1670, 'upload/foto/siswa/siswa.png', 'MUHAMMAD RAFASYA DWISATRIA YOSUANDA PUTRA', NULL, '212210528', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1671, 'upload/foto/siswa/siswa.png', 'MUHAMMAD RAZQI SAPUTRA', NULL, '212210529', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1672, 'upload/foto/siswa/siswa.png', 'NABILA SITI NADIROH', NULL, '212210530', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1673, 'upload/foto/siswa/siswa.png', 'NAJMI BAIHAQI HERMAWAN', NULL, '212210531', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1674, 'upload/foto/siswa/siswa.png', 'NATA NUGRAHA', NULL, '212210532', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1675, 'upload/foto/siswa/siswa.png', 'RAFI WEDYA ERNAWATI', NULL, '212210533', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1676, 'upload/foto/siswa/siswa.png', 'RAIHAN NUR AZIDDAN', NULL, '212210534', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1677, 'upload/foto/siswa/siswa.png', 'RAJIB DWI AZHADI', NULL, '212210535', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1678, 'upload/foto/siswa/siswa.png', 'RANDI ZAIDHAN', NULL, '212210536', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1679, 'upload/foto/siswa/siswa.png', 'REISAN HIDAYAH', NULL, '212210537', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1680, 'upload/foto/siswa/siswa.png', 'RUDI NOVIANTO', NULL, '212210538', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1681, 'upload/foto/siswa/siswa.png', 'SALMAN DZIA UL HAQ', NULL, '212210539', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1682, 'upload/foto/siswa/siswa.png', 'WINA NADIA SEPTIANI', NULL, '212210540', 3, '47', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1683, 'upload/foto/siswa/siswa.png', 'AGUNG MUHAMAD FAJRI', NULL, '212210541', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1684, 'upload/foto/siswa/siswa.png', 'AKMAL MUHAMAD KAMIL', NULL, '212210542', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1685, 'upload/foto/siswa/siswa.png', 'ALIF ADIPUTRA SAEPUDIN', NULL, '212210543', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1686, 'upload/foto/siswa/siswa.png', 'AMELIA TRI NUR KHIKMAH', NULL, '212210544', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1687, 'upload/foto/siswa/siswa.png', 'ANDIKA AKBAR JUNIANSYAH', NULL, '212210545', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1688, 'upload/foto/siswa/siswa.png', 'ANDIKA ALDI SULTON NUGRAHA', NULL, '212210546', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1689, 'upload/foto/siswa/siswa.png', 'ARIF SAIPULOH', NULL, '212210547', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1690, 'upload/foto/siswa/siswa.png', 'ASISYAH SARAH AZZAHRA', NULL, '212210548', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1691, 'upload/foto/siswa/siswa.png', 'CANDRA LESMANA', NULL, '212210549', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1692, 'upload/foto/siswa/siswa.png', 'CANTIKA KUSUMA DEWI AGUSTIN', NULL, '212210550', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1693, 'upload/foto/siswa/siswa.png', 'DHEA REFANA', NULL, '212210551', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1694, 'upload/foto/siswa/siswa.png', 'DIO BAGUS PRAMUDYA', NULL, '212210552', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1695, 'upload/foto/siswa/siswa.png', 'FARHAN ABDULLAH AZZAM', NULL, '212210553', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1696, 'upload/foto/siswa/siswa.png', 'FEBRIYANDI WINATAKUSUMAH', NULL, '212210554', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1697, 'upload/foto/siswa/siswa.png', 'FRIZKY ALBAIHANI', NULL, '212210555', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1698, 'upload/foto/siswa/siswa.png', 'GINA TRIANI', NULL, '212210556', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1699, 'upload/foto/siswa/siswa.png', 'HILMY SYAHBANY', NULL, '212210557', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1700, 'upload/foto/siswa/siswa.png', 'HISYAM FALAH KARIM', NULL, '212210558', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1701, 'upload/foto/siswa/siswa.png', 'KHAZNA KHALIFATUNESYA', NULL, '212210559', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1702, 'upload/foto/siswa/siswa.png', 'MUHAMMAD ABIDZAR GHIFFARY', NULL, '212210560', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:48', '2022-04-05 14:32:48'),
(1703, 'upload/foto/siswa/siswa.png', 'NAYLA AULIA PRATAMI HERDIYANA', NULL, '212210561', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1704, 'upload/foto/siswa/siswa.png', 'NAYLA FASHA AZZAHRA', NULL, '212210562', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1705, 'upload/foto/siswa/siswa.png', 'NEZZA JULIANTIE', NULL, '212210563', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1706, 'upload/foto/siswa/siswa.png', 'NISA PUSPITA', NULL, '212210564', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1707, 'upload/foto/siswa/siswa.png', 'RADEN GRAYNINDA AGHNISWARA KUSUMANINGRAT', NULL, '212210565', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1708, 'upload/foto/siswa/siswa.png', 'RIVA MUHAMAD NAZAR', NULL, '212210566', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1709, 'upload/foto/siswa/siswa.png', 'SALSABILA FELISIAWATI SETIAWAN', NULL, '212210567', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1710, 'upload/foto/siswa/siswa.png', 'SATRIA NUR HUSEN', NULL, '212210568', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1711, 'upload/foto/siswa/siswa.png', 'SATRIO NUR HASAN', NULL, '212210569', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1712, 'upload/foto/siswa/siswa.png', 'SATYA NURFADILLAH RABBANI', NULL, '212210570', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1713, 'upload/foto/siswa/siswa.png', 'SELVI NURLIANI', NULL, '212210571', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1714, 'upload/foto/siswa/siswa.png', 'TEDI SETIADI', NULL, '212210572', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1715, 'upload/foto/siswa/siswa.png', 'TIAN', NULL, '212210573', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1716, 'upload/foto/siswa/siswa.png', 'WHENDRY OCTORA RAMDHANI', NULL, '212210574', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1717, 'upload/foto/siswa/siswa.png', 'YUSUF MUHAMMAD GUNAWAN', NULL, '212210575', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49'),
(1718, 'upload/foto/siswa/siswa.png', 'ZAIDAN RASYIQ FAYYADH ABDULLAH', NULL, '212210576', 3, '48', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Aktif', '2022-04-05 14:32:49', '2022-04-05 14:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `tabungan_siswas`
--

CREATE TABLE `tabungan_siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `petugas_id` bigint(20) UNSIGNED NOT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `sisa_saldo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabungan_siswas`
--

INSERT INTO `tabungan_siswas` (`id`, `kode`, `siswa_id`, `petugas_id`, `tipe`, `keterangan`, `nominal`, `kelas_id`, `sisa_saldo`, `tanggal`, `bulan`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 'TS04202200001', 1718, 6, '1', '-', '130000', 48, '130000', '13 April 2022', 'April', '2022', '2022-04-12 17:45:44', '2022-04-12 17:45:44'),
(2, 'TS04202200002', 558, 6, '1', '-', '125000', 16, '125000', '16 April 2022', 'April', '2022', '2022-04-16 08:17:34', '2022-04-16 08:17:34'),
(3, 'TS04202200003', 558, 6, '1', '-', '130000', 16, '255000', '16 April 2022', 'April', '2022', '2022-04-16 08:32:58', '2022-04-16 08:32:58'),
(4, 'TS04202200004', 558, 6, '1', '-', '1000000', 16, '1255000', '16 April 2022', 'April', '2022', '2022-04-16 10:26:37', '2022-04-16 10:26:37'),
(5, 'TS04202200005', 558, 6, '1', '-', '10000000', 16, '11255000', '16 April 2022', 'April', '2022', '2022-04-16 14:11:26', '2022-04-16 14:11:26'),
(6, 'TS04202200006', 558, 6, '2', '-', '130000', 16, '11125000', '16 April 2022', 'April', '2022', '2022-04-16 14:15:47', '2022-04-16 14:15:47'),
(7, 'TS04202200007', 558, 6, '1', '-', '1500000', 16, '12625000', '16 April 2022', 'April', '2022', '2022-04-16 14:35:45', '2022-04-16 14:46:37'),
(11, 'TS04202200008', 558, 6, '1', '-', '20000', 16, '12645000', '16 April 2022', 'April', '2022', '2022-04-16 15:16:02', '2022-04-16 15:16:02'),
(12, 'TS04202200009', 558, 6, '1', '-', '1000000', 16, '13645000', '16 April 2022', 'April', '2022', '2022-04-16 15:17:13', '2022-04-16 15:17:13'),
(13, 'TS04202200010', 558, 6, '1', '-', '4444', 16, '13649444', '16 April 2022', 'April', '2022', '2022-04-16 15:17:38', '2022-04-16 15:17:38'),
(14, 'TS04202200011', 558, 6, '1', '-', '4444', 16, '13653888', '16 April 2022', 'April', '2022', '2022-04-16 15:18:00', '2022-04-16 15:18:00'),
(15, 'TS04202200012', 558, 6, '1', '-', '250000', 16, '13903888', '16 April 2022', 'April', '2022', '2022-04-16 15:20:40', '2022-04-16 15:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademiks`
--

CREATE TABLE `tahun_akademiks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `awal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tahun_akademiks`
--

INSERT INTO `tahun_akademiks` (`id`, `awal`, `akhir`, `created_at`, `updated_at`) VALUES
(1, '2019-05', '2022-05', '2022-04-05 13:21:35', '2022-04-05 13:21:35'),
(2, '2020-05', '2023-05', '2022-04-05 13:22:08', '2022-04-05 13:22:08'),
(3, '2021-05', '2024-05', '2022-04-05 13:22:26', '2022-04-05 13:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `nama`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'upload/avatar/user.png', 'Admin', 'admin@gmail.com', '$2y$10$CgGyqIJlq3eadrrKzCOmQObY5CkU9/oMR/mnHeFpP/9XwSaCLwc7m', NULL, '2022-03-26 13:12:58', '2022-04-11 13:18:37'),
(6, 'upload/avatar/user.png', 'Reihan Andika AM', 'operator@gmail.com', '$2y$10$SIZ/IPZvk1W0q.5CPjbxR.TQ4xpLZ0t4DAQkCRMp0QUCEm9yepFuK', NULL, '2022-03-26 13:30:57', '2022-03-31 00:06:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dana_awals`
--
ALTER TABLE `dana_awals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_siswas`
--
ALTER TABLE `pembayaran_siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tahun_akademik_id` (`tahun_akademik_id`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- Indexes for table `tabungan_siswas`
--
ALTER TABLE `tabungan_siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahun_akademiks`
--
ALTER TABLE `tahun_akademiks`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `dana_awals`
--
ALTER TABLE `dana_awals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `pembayaran_siswas`
--
ALTER TABLE `pembayaran_siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1719;

--
-- AUTO_INCREMENT for table `tabungan_siswas`
--
ALTER TABLE `tabungan_siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tahun_akademiks`
--
ALTER TABLE `tahun_akademiks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
