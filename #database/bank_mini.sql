-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 05:42 PM
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
(4, 10, 'DSP', '250000', '2022-03-26 07:14:45', '2022-03-26 07:14:45'),
(5, 10, 'Prakerin', '150000', '2022-03-26 07:22:05', '2022-03-26 08:23:33'),
(6, 11, 'DSP', '125000', '2022-03-26 07:57:04', '2022-03-26 07:57:04'),
(7, 11, 'Prakerin', '250000', '2022-03-26 08:33:44', '2022-03-26 08:33:44');

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
(1, 'Akuntansi', 'AKL', '2022-03-26 04:19:42', '2022-03-26 04:22:32'),
(3, 'Rekayasa Perangkat Lunak', 'RPL', '2022-03-26 05:50:04', '2022-03-26 05:50:04'),
(4, 'Otomasi Tata Kelola Perkantoran', 'OTKP', '2022-03-26 09:00:32', '2022-03-26 09:00:43');

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
(9, '11', 3, '1', '2022-03-26 06:00:18', '2022-03-26 06:00:18'),
(10, '12', 3, '1', '2022-03-26 06:09:17', '2022-03-26 06:09:17'),
(11, '10', 3, '1', '2022-03-26 06:09:25', '2022-03-26 06:09:25'),
(12, '10', 1, '1', '2022-03-26 08:26:32', '2022-03-26 08:26:32'),
(13, '11', 1, '1', '2022-03-26 08:27:00', '2022-03-26 08:27:00'),
(14, '12', 1, '1', '2022-03-26 08:27:26', '2022-03-26 08:27:26'),
(15, '12', 1, '2', '2022-03-26 08:31:13', '2022-03-26 08:31:13'),
(16, '12', 1, '3', '2022-03-26 08:59:36', '2022-03-26 08:59:36');

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
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran_siswas`
--

INSERT INTO `pembayaran_siswas` (`id`, `kode`, `siswa_id`, `petugas_id`, `dana_awal_id`, `keterangan`, `nominal`, `sisa_tagihan`, `kelas_id`, `tanggal`, `bulan`, `tahun`, `created_at`, `updated_at`) VALUES
(2, 'PS03202200001', 1, 6, 7, '-', '250000', '0', 10, '28 Maret 2022', 'Maret', '2022', '2022-03-27 20:19:57', '2022-03-27 20:19:57'),
(5, 'PS03202200004', 1, 6, 6, '-', '125000', '0', 10, '30 Maret 2022', 'Maret', '2022', '2022-03-30 04:42:03', '2022-03-30 04:42:03'),
(9, 'PS03202200005', 5, 6, 7, '-', '250000', '0', 10, '30 Maret 2022', 'Maret', '2022', '2022-03-30 08:51:36', '2022-03-30 08:51:36'),
(10, 'PS03202200006', 5, 6, 6, '-', '12000', '113000', 10, '30 Maret 2022', 'Maret', '2022', '2022-03-30 09:51:28', '2022-03-30 10:00:24');

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
(9, 'dana.index', 'web', '2022-03-26 10:43:15', '2022-03-26 10:43:15'),
(10, 'siswa.index', 'web', '2022-03-26 12:55:07', '2022-03-26 12:55:07'),
(11, 'siswa.create', 'web', '2022-03-26 12:55:16', '2022-03-26 12:55:16'),
(12, 'siswa.update', 'web', '2022-03-26 12:55:26', '2022-03-26 12:55:26'),
(13, 'siswa.delete', 'web', '2022-03-26 12:55:39', '2022-03-26 12:55:39'),
(14, 'siswa.read', 'web', '2022-03-26 12:55:48', '2022-03-26 12:55:48'),
(16, 'pengguna.create', 'web', '2022-03-26 14:16:50', '2022-03-26 14:16:50'),
(17, 'pengguna.edit', 'web', '2022-03-26 14:17:00', '2022-03-26 14:17:00'),
(18, 'pengguna.delete', 'web', '2022-03-26 14:17:24', '2022-03-26 14:17:24');

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
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(16, 2),
(17, 2),
(18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_akademik_id` bigint(20) NOT NULL,
  `kelas_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan_id` bigint(20) NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anak_ke` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warga_negara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ijazah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_lulus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'upload/foto/siswa/12 RPL 1/Reihan Andika AM_472×709_.webp', 'Reihan Andika Abdipraja Makmur', '0001234567', '192010568', 11, '10', 3, 'Laki-Laki', 'Ciamis', '2004-06-14', 'Jl. Pasar Rancah', '4', 'WNI', 'Islam', 'SMP Negeri 1 Rancah', '-', '2019', 'Rancah', 'Amin', 'Elin Herlina', 'Rancah', 'Anggota DPRD Provinsi/Anggota DPRD Kabupaten/Kota', 'Mengurus Rumah Tangga', NULL, NULL, NULL, NULL, 'Aktif', '2022-03-27 02:56:38', '2022-03-30 13:30:33'),
(5, 'upload/foto/siswa/12 RPL 1/Muhammad Imam Firman_472×709_.webp', 'Muhammad Imam Firman', '1920200210', '199920109', 11, '10', 3, 'Laki-Laki', 'Ciamis', '2004-06-15', 'Tanjungmangu', '2', 'WNI', 'Islam', 'SMP Negeri 2 Ciamis', '-', '2019', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', '2022-03-27 19:45:11', '2022-03-30 13:30:32'),
(6, 'upload/foto/siswa/siswa.png', 'Marcelio Rif\'at', '0000201111', '192010998', 10, '10', 3, 'Laki-Laki', 'Ciamis', '2004-06-14', 'Ciamis', '2', 'WNI', 'Islam', 'SMP Negeri 1 Rancah', '-', '2019', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aktif', '2022-03-30 11:53:11', '2022-03-30 13:30:33');

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
(25, 'TS03202200001', 1, 6, '1', '-', '125000', 10, '125000', '30 Maret 2022', 'Maret', '2022', '2022-03-30 15:26:57', '2022-03-30 15:26:57'),
(26, 'TS03202200002', 1, 6, '2', '-', '20000', 10, '105000', '30 Maret 2022', 'Maret', '2022', '2022-03-30 15:28:45', '2022-03-30 15:28:45'),
(27, 'TS03202200003', 5, 6, '1', '-', '125000', 10, '125000', '30 Maret 2022', 'Maret', '2022', '2022-03-30 15:47:30', '2022-03-30 15:47:30');

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
(10, '2022-03', '2023-03', '2022-03-26 04:26:00', '2022-03-30 13:42:13'),
(11, '2023-01', '2024-01', '2022-03-26 07:56:46', '2022-03-26 07:56:46');

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
(1, 'upload/avatar/user.png', 'Reihan Andika AM', 'reiandika10@gmail.com', '$2y$10$UGSM9KKMBrVAM/6Xcj6LxuTe9tidTYW9g0YKRu48KSQ44VOoL3ztK', NULL, '2022-03-25 03:09:20', '2022-03-25 03:09:20'),
(5, 'upload/avatar/user.png', 'Admin', 'admin@gmail.com', '$2y$10$fHvldQ.cPo.XrWcfphub/.rbZPrKKX1IXkaCryBwWY.0i9o0BPBya', NULL, '2022-03-26 13:12:58', '2022-03-26 14:11:18'),
(6, 'upload/avatar/user.png', 'Operator', 'operator@gmail.com', '$2y$10$aXI6Mn8k2Bzje2g54DdhterVmFVPJcKwvS./OIahxvMKcrtwlXVCG', NULL, '2022-03-26 13:30:57', '2022-03-26 14:13:18');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tabungan_siswas`
--
ALTER TABLE `tabungan_siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tahun_akademiks`
--
ALTER TABLE `tahun_akademiks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
