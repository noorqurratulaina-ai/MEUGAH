-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2026 at 01:37 PM
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
-- Database: `meugah-aceh`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_wisata_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `sejarah` text DEFAULT NULL,
  `filosofi` text DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `harga_tiket` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `jam_buka` varchar(50) DEFAULT NULL,
  `gambar_utama` varchar(255) DEFAULT NULL,
  `audio_narasi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id`, `kabupaten_kota_id`, `kategori_wisata_id`, `nama`, `deskripsi`, `sejarah`, `filosofi`, `alamat`, `latitude`, `longitude`, `harga_tiket`, `jam_buka`, `gambar_utama`, `audio_narasi`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Masjid Raya Baiturrahman', 'Masjid ikonik Aceh dengan kubah hitam dan menara tinggi.', 'Dibangun pada masa Kesultanan Aceh abad ke-17 dan dipugar pada masa berikutnya.', 'Simbol keislaman dan identitas masyarakat Aceh.', 'Banda Aceh, Aceh', 5.5536000, 95.3174000, 0, '08:00 - 17:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwxrTC5Q4bPV4hxUSWyrSYnW1YunyEDpKx2M8qE3woYA&s=10', NULL, '2026-11-15 10:45:01', '2026-11-17 04:38:00'),
(2, 1, 3, 'Museum Tsunami Aceh', 'Museum untuk mengenang peristiwa tsunami 2004.', 'Dibangun sebagai monumen peringatan dan pusat edukasi mitigasi bencana.', 'Mengajak pengunjung merenung, mengenang, dan bersiap.', 'Banda Aceh, Aceh', 5.5480000, 95.3238000, 15000, '08:00 - 17:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-q6x5mi9Epu2paCF8L_MMfx35W-O6sTU-NkI5nqrapw&s=10', NULL, '2026-11-15 10:45:01', '2026-11-17 04:39:21'),
(3, 1, 3, 'PLTD Apung', 'Kapal pembangkit listrik yang terbawa gelombang tsunami hingga ke daratan.', 'Saksi bisu peristiwa tsunami 2004.', NULL, 'Banda Aceh, Aceh', 5.5465000, 95.2994000, 0, '08:00 - 17:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJqt_rSTJaQn5miF6tgh1dZiv0Sa8z9FJVrPUovvw1uA&s=10', NULL, '2026-11-15 10:45:01', '2026-11-17 04:40:10'),
(4, 2, 2, 'Pantai Lampuuk', 'Pantai berpasir putih dengan ombak yang cocok untuk berselancar.', NULL, NULL, 'Aceh Besar, Aceh', 5.4743000, 95.2275000, 0, '08:00 - 17:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLp7o-zZMUlqiO7s0vJ1HA0RzCfCsdqsGOHr2GeHoBmQ&s=10', NULL, '2026-11-15 10:45:01', '2026-11-17 04:54:02'),
(5, 3, 3, 'Tugu Nol Kilometer', 'Penanda titik paling barat wilayah Indonesia.', NULL, 'Lambang batas barat Nusantara.', 'Sabang, Aceh', 5.8975000, 95.2287000, 0, '08:00 - 17:00', 'https://i.pinimg.com/736x/ad/15/5a/ad155a257c1aa85b6f52b49f23899098.jpg', NULL, '2026-11-15 10:45:01', '2026-11-17 03:58:58'),
(6, 4, 1, 'Danau Laut Tawar', 'Danau luas di dataran tinggi Gayo, dikelilingi perbukitan.', NULL, 'Sumber kehidupan dan budaya masyarakat Gayo.', 'Aceh Tengah, Aceh', 4.6300000, 96.9300000, 0, '08:00 - 17:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTppi6TWNBHx2mKNsiHP1RZ4e9tWsfF47JjkUSLol4pzQ&s=10', NULL, '2026-11-15 10:45:01', '2026-11-17 04:42:31'),
(7, 8, 4, 'Masjid Islamic Center', 'Masjid Islamic Center merupakan salah satu ikon religi dan kebanggaan masyarakat Kota Lhokseumawe.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgem-dLT5opDVvzeqGhxyIzUGviuPtArLTilQFyVwljw&s=10', NULL, '2026-11-16 12:03:44', '2026-11-17 05:11:08'),
(8, 8, 2, 'Pantai Ujong Blang', 'Pantai Ujong Blang merupakan kawasan wisata bahari dengan pemandangan laut dan suasana pesisir.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSrE6SDibHz3lMyKfOBzTL7ovzJL6uNuDZ1l1-HE4X5w&s=10', NULL, '2026-11-16 12:03:44', '2026-11-17 05:11:21'),
(9, 8, 1, 'Waduk Jeulikat', 'Waduk Jeulikat merupakan kawasan wisata alam dengan pemandangan perairan dan lingkungan hijau.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://pasaiaceh.com/wp-content/uploads/2016/07/waduk.jpg', NULL, '2026-11-16 12:03:44', '2026-11-17 04:31:17'),
(10, 8, 1, 'Waduk Kota', 'Waduk Kota merupakan salah satu lokasi yang dapat dikunjungi untuk menikmati suasana alam.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://asset.tribunnews.com/zI8cu9clQNtkokWUtyYbooScMWU=/1200x675/filters:upscale():quality(30):format(webp):focal(0.5x0.5:0.5x0.5)/aceh/foto/bank/originals/Waduk-Kota-Lhokseumawe-04.jpg', NULL, '2026-11-16 12:03:44', '2026-11-17 04:31:26'),
(11, 8, 3, 'Goa Jepang', 'Goa Jepang merupakan salah satu tempat bersejarah yang berkaitan dengan masa pendudukan Jepang.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://lh3.googleusercontent.com/grass-cs/AABkmLePCS8qhJZRUcvev_3MBmFEtl_oJwZJ1JhBma0GhI73B8wE7FLSGPiBYaYN95WcEotwNSTI5zjx23RkfiTH31qxeOqf_YlC69za91TKwU4U54a_sDDihTTJM7YLSO6Vj6xYHMk72A=w270-h312-n-k-no', NULL, '2026-11-16 12:03:44', '2026-11-17 04:32:40'),
(12, 10, 2, 'Nancala Beach', 'Nancala Beach merupakan destinasi wisata bahari di Simeulue dengan keindahan kawasan pesisir.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://www.surfcampsumatra.com/cms/images/general/Nancala-surf-bungalows_38_1.jpg', NULL, '2026-11-16 12:05:16', '2026-11-17 03:48:04'),
(13, 10, 2, 'Pantai Busung', 'Pantai Busung merupakan salah satu kawasan wisata pantai di Kabupaten Simeulue.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW15gtjWUmpb6jH1gHqHJIjxfrDH8UXJYrvnxxxBq6zA&s=10', NULL, '2026-11-16 12:05:16', '2026-11-17 05:09:01'),
(14, 10, 2, 'Pantai Ganting', 'Pantai Ganting menawarkan pemandangan alam pesisir dan suasana laut Simeulue.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://www.tempatwisata.pro/users_media/3066/Pantai%20Ganting11.jpg', NULL, '2026-11-16 12:05:16', '2026-11-17 03:49:28'),
(15, 10, 2, 'Pantai Teluk Simeulue', 'Pantai Teluk Simeulue merupakan kawasan wisata bahari dengan panorama perairan dan pesisir.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTadw5E-yiBOYHX4Iw-kW9iPKj5jjZ1iBA3DrDhx-xoeQ&s=10', NULL, '2026-11-16 12:05:16', '2026-11-17 05:09:16'),
(16, 10, 1, 'Wisata Batu Siambung-Ambung', 'Wisata Batu Siambung-Ambung merupakan destinasi alam dengan keunikan bentang batu di Simeulue.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://d3fphkxyf5o5bm.cloudfront.net/image-resize/format=webp,w=720/QwRY54Li1HMwD7oNfpIkHUH9NJOYQQYgFsT6WvwbgH', NULL, '2026-11-16 12:05:16', '2026-11-17 03:50:06'),
(17, 10, 1, 'Air Terjun Putra Jaya', 'Air Terjun Putra Jaya merupakan wisata alam dengan panorama air terjun dan lingkungan hijau.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://www.gemasulawesi.com/storage/photos/16022024020732.webp', NULL, '2026-11-16 12:05:16', '2026-11-17 03:44:25'),
(18, 9, 2, 'Pulau Banyak', 'Pulau Banyak merupakan gugusan pulau yang terkenal dengan keindahan pantai, laut, dan wisata baharinya.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4S3BzDi1rkpo8pO_udWR6_-s5UOOPrMn0fzqFg-UFvQ&s=10', NULL, '2026-11-16 12:06:17', '2026-11-17 04:43:40'),
(19, 9, 2, 'Tailana Island', 'Tailana Island merupakan salah satu pulau wisata dengan panorama laut dan pesisir yang indah.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz9uRcL_h9fdekR8lBZLj5sFv5feX7ZzDcSZYh0awAFw&s=10', NULL, '2026-11-16 12:06:17', '2026-11-17 04:44:15'),
(20, 9, 2, 'Pantai Teluk Bayu', 'Pantai Teluk Bayu merupakan kawasan wisata bahari di Kabupaten Aceh Singkil.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKz4S8HK9qG4bNsnpFdlfdbxCc6sytcaTjwmhfHiRWAQ&s=10', NULL, '2026-11-16 12:06:17', '2026-11-17 04:45:00'),
(22, 7, 3, 'Tapak Tuan', 'Makam Tuan Tapa merupakan salah satu tempat bersejarah yang berkaitan dengan legenda Tuan Tapa.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://thetapaktuanpost.com/wp-content/uploads/2021/07/t_5ec74493986bf_700.jpg', NULL, '2026-11-16 12:06:56', '2026-11-17 04:49:05'),
(23, 7, 2, 'Pantai Taman Pala Indah', 'Pantai Taman Pala Indah merupakan kawasan wisata pesisir di Kabupaten Aceh Selatan.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7bKwD5Y8TzIFT4zFVfW9lTZjzNRmD1r99JH1xqSFZ-A&s=10', NULL, '2026-11-16 12:06:56', '2026-11-17 04:50:16'),
(24, 7, 1, 'Air Terjun Tingkat 7', 'Air Terjun Tingkat 7 merupakan wisata alam dengan panorama air terjun bertingkat dan lingkungan hijau.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt5UupFdbVXI_i-WtYgeP-MUV3dfY2bxUJ4wedT79IfQ&s=10', NULL, '2026-11-16 12:06:56', '2026-11-17 04:51:06'),
(29, 6, 1, 'Savana Blang Raweu', 'Savana Blang Raweu merupakan kawasan wisata alam dengan hamparan padang rumput dan pemandangan terbuka.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9stzlpO2Rz4bj2xbL8HYLWQw5Lo1_jQQiJ0oRxBMIWA&s=10', NULL, '2026-11-16 12:07:39', '2026-11-17 05:00:43'),
(30, 6, 1, 'Air Terjun Guda Meuh', 'Air Terjun Guda Meuh merupakan destinasi wisata alam dengan keindahan aliran air dan lingkungan sekitarnya.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmmCn-gNz6N0vODYxTnveeTY0ZNSwRLnXo8Qf3Lj19qQ&s=10', NULL, '2026-11-16 12:07:39', '2026-11-17 05:01:27'),
(32, 6, 2, 'Pantai Islamic', 'Pantai Islamic merupakan salah satu kawasan wisata bahari di Kabupaten Pidie Jaya.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqYOYIargHRCtSVHAx-p49Gx7NhmjHUT_CSO6IJQLr-A&s=10', NULL, '2026-11-16 12:07:39', '2026-11-17 05:03:00'),
(33, 6, 3, 'Museum Pidie Jaya', 'Museum Pidie Jaya menjadi tempat untuk mengenal sejarah dan warisan budaya daerah.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyqEFuQQdAqWeJjMs9lsrV1oVysoRQree3wzc-2byP9w&s=10', NULL, '2026-11-16 12:07:39', '2026-11-17 05:03:33'),
(34, 5, 3, 'Museum Tsunami Kota Sigli', 'Museum Tsunami Kota Sigli merupakan tempat untuk mengenang peristiwa tsunami serta mempelajari sejarah dan dampaknya bagi masyarakat Pidie.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://www.tempatwisata.pro/users_media/3066/Monumen%20Tsunami%20Sigli.jpg', NULL, '2026-11-16 12:08:11', '2026-11-17 03:36:34'),
(35, 5, 1, 'Wisata Kilo 6 Geumpang', 'Wisata Kilo 6 Geumpang merupakan destinasi wisata alam di kawasan Geumpang dengan suasana alam yang asri.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://www.acehnews.id/files/images/20251020-img_20251020_153617.jpg', NULL, '2026-11-16 12:08:11', '2026-11-17 03:39:39'),
(36, 5, 1, 'Goa Tujuh', 'Goa Tujuh merupakan destinasi wisata alam dengan daya tarik bentang alam gua.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://min17pidie.sch.id/wp-content/uploads/2025/05/screen-shot-2017-04-02-at-15-2-64ba650e08a8b5519e5941d2-300x164.webp', NULL, '2026-11-16 12:08:11', '2026-11-17 03:40:30'),
(37, 5, 1, 'Tui Jerenge Padang Tiji', 'Tui Jerenge Padang Tiji merupakan salah satu destinasi wisata alam di Kabupaten Pidie.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://www.acehbisnis.com/files/images/whatsapp-image-2024-03-22-at-10-41-59-2.jpeg', NULL, '2026-11-16 12:08:11', '2026-11-17 03:41:11'),
(38, 3, 2, 'Pantai Iboih', 'Pantai Iboih merupakan destinasi wisata bahari terkenal di Sabang dengan keindahan laut dan panorama bawah laut.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://i.pinimg.com/736x/69/28/d6/6928d604ef86c86be200b68a75158ff8.jpg', NULL, '2026-11-16 12:08:39', '2026-11-17 03:55:22'),
(39, 3, 2, 'Pulau Rubiah', 'Pulau Rubiah merupakan destinasi wisata bahari yang dikenal dengan keindahan terumbu karang dan aktivitas snorkeling.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Pulau_Rubiah_dari_Pulau_Iboih_Sabang.jpg', NULL, '2026-11-16 12:08:39', '2026-11-17 03:57:38'),
(40, 3, 2, 'Gua Sarang Sabang', 'Gua Sarang Sabang merupakan kawasan wisata alam pesisir dengan formasi gua dan pemandangan laut yang indah.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://www.indonesia.travel/contentassets/1983e32178554747bc6aab8a3784dc9f/wisata-gua-sarang.jpg', NULL, '2026-11-16 12:08:39', '2026-11-17 04:00:49'),
(41, 2, 2, 'Pantai Pasir Putih', 'Pantai Pasir Putih merupakan destinasi wisata bahari dengan hamparan pasir dan panorama laut yang indah.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWyBhln1CuJvIfzoJ1-gp_3s_NIgz4eA8UxprtuUhaDQ&s=10', NULL, '2026-11-16 12:09:09', '2026-11-17 04:54:12'),
(42, 2, 1, 'Bukit Lamreh', 'Bukit Lamreh merupakan destinasi wisata alam dengan pemandangan perbukitan dan pesisir dari ketinggian.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT00vsjgN5_XpRdP011A16JnshmeBTuQHWe6gYjQ1zrZQ&s=10', NULL, '2026-11-16 12:09:09', '2026-11-17 04:55:18'),
(43, 2, 1, 'Bukit Siron', 'Bukit Siron merupakan kawasan wisata alam yang menawarkan panorama perbukitan dan suasana terbuka.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://habadaily.com/storage/uploads/post/2025/02/amazing-bukit-siron-aceh-besar-destinasi-wisata-baru-yang-menantang-dan-tak-terlupakan-habadaily-lgmwi6DEJx.jpeg', NULL, '2026-11-16 12:09:09', '2026-11-17 04:55:26'),
(44, 2, 1, 'Jantho Panorama Park', 'Jantho Panorama Park merupakan destinasi rekreasi alam dengan pemandangan kawasan Jantho.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvPsgV-6bPEQGFQDT70VhgQjWT39GBUEpycJ1AwyfKIQ&s=10', NULL, '2026-11-16 12:09:09', '2026-11-17 04:56:43'),
(45, 2, 1, 'Taman Hutan Raya Pocut Meurah Intan', 'Taman Hutan Raya Pocut Meurah Intan merupakan kawasan konservasi alam dengan keanekaragaman hayati dan panorama hutan.', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0zYVy_bjP1OtvQBnZC2h-IKUzFI9SyhReYkumRvnRoQ&s=10', NULL, '2026-11-16 12:09:09', '2026-11-17 04:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan_suvenir`
--

CREATE TABLE `detail_pesanan_suvenir` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pesanan_suvenir_id` bigint(20) UNSIGNED NOT NULL,
  `produk_suvenir_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(10) UNSIGNED NOT NULL,
  `harga_satuan` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destinasi_id` bigint(20) UNSIGNED NOT NULL,
  `file_gambar` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE `itinerary` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paket_wisata_id` bigint(20) UNSIGNED NOT NULL,
  `destinasi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hari_ke` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `waktu` varchar(30) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`id`, `paket_wisata_id`, `destinasi_id`, `hari_ke`, `waktu`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '08:00', 'Kunjungan Masjid Raya', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(2, 1, 2, 1, '11:00', 'Museum Tsunami', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(3, 1, 3, 2, '09:00', 'PLTD Apung', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(4, 1, 4, 2, '13:00', 'Pantai Lampuuk', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten_kota`
--

CREATE TABLE `kabupaten_kota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kabupaten_kota`
--

INSERT INTO `kabupaten_kota` (`id`, `nama`, `deskripsi`, `gambar`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Banda Aceh', 'Ibu kota Provinsi Aceh, pusat sejarah dan budaya.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnfX4nab3kA7C4WLUere8M8OfskygKX66CLpuwyhIUDw&s=10', 5.5483000, 95.3238000, '2026-11-15 10:45:01', '2026-11-17 05:14:04'),
(2, 'Aceh Besar', 'Wilayah pesisir dan perbukitan di sekitar Banda Aceh.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1_rvHU3uYOpWs6dQ_4uRzFE-Dzd3YOgbu6PfS_SP3fw&s=10', 5.4500000, 95.4000000, '2026-11-15 10:45:01', '2026-11-17 05:14:12'),
(3, 'Sabang', 'Kota di Pulau Weh, titik paling barat Indonesia.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXTvApvpAuO0ox5T55wNHlL7vXmlgHVSasy-fSm_8Vg&s=10', 5.8947000, 95.3194000, '2026-11-15 10:45:01', '2026-11-17 05:15:51'),
(4, 'Aceh Tengah', 'Dataran tinggi Gayo dengan Danau Laut Tawar.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO28KFumXOUsOuy3Xi4zbspF1C78qd3nqhmF7PkY02dA&s=10', 4.6300000, 96.8500000, '2026-11-15 10:45:01', '2026-11-17 05:16:08'),
(5, 'Pidie', 'Daerah wisata di Provinsi Aceh.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvxszeiSjOa2LBP3kuNBy6JNXFPIoXfvMSjIqGom-70Q&s=10', NULL, NULL, '2026-11-16 10:46:13', '2026-11-17 05:17:10'),
(6, 'Pidie Jaya', 'Daerah wisata di Provinsi Aceh.', 'https://bappeda.pidiejayakab.go.id/media/2015.12/Kantor_Bupati_2.JPG', NULL, NULL, '2026-11-16 10:46:13', '2026-11-17 05:17:43'),
(7, 'Aceh Selatan', 'Daerah wisata di Provinsi Aceh.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQtVeuTRjIG6i0AkRerpMVl1dNncwth7XTgaXk_8ccUw&s=10', NULL, NULL, '2026-11-16 10:46:13', '2026-11-17 05:18:42'),
(8, 'Lhokseumawe', 'Daerah wisata di Provinsi Aceh.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzjloXIIGryOd6jx6eRXdB85K3cF9-6RN4cyW5oObGZQ&s=10', NULL, NULL, '2026-11-16 10:46:13', '2026-11-17 05:22:40'),
(9, 'Aceh Singkil', 'Daerah wisata di Provinsi Aceh.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhSDDhRTvr_u9I--5JpV9ihPb8Je9ztiyg8DLN_2emRA&s=10', NULL, NULL, '2026-11-16 10:46:13', '2026-11-17 05:20:27'),
(10, 'Simeulue', 'Daerah wisata di Provinsi Aceh.', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/ff/ca/28/vue-de-kita-depuis-la.jpg?w=1400&h=-1&s=1', NULL, NULL, '2026-11-16 10:46:13', '2026-11-17 05:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Kopi & Makanan', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(2, 'Kerajinan', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(3, 'Pakaian & Tekstil', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_wisata`
--

CREATE TABLE `kategori_wisata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_wisata`
--

INSERT INTO `kategori_wisata` (`id`, `nama_kategori`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Wisata Alam', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(2, 'Wisata Bahari', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(3, 'Wisata Sejarah', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(4, 'Budaya & Heritage', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_01_01_000001_add_fields_to_users_table', 1),
(5, '2026_01_01_000002_create_wisata_tables', 1),
(6, '2026_01_01_000003_create_transaksi_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paket_wisata`
--

CREATE TABLE `paket_wisata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` bigint(20) UNSIGNED NOT NULL,
  `durasi_hari` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `tanggal_mulai` date DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paket_wisata`
--

INSERT INTO `paket_wisata` (`id`, `nama_paket`, `deskripsi`, `harga`, `durasi_hari`, `tanggal_mulai`, `gambar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Banda Aceh Heritage 2 Hari', 'Menjelajah situs sejarah dan budaya Banda Aceh.', 750000, 2, NULL, NULL, 'aktif', '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(2, 'Sabang & Pulau Weh 3 Hari', 'Wisata bahari dan Tugu Nol Kilometer.', 1800000, 3, NULL, NULL, 'aktif', '2026-11-15 10:45:01', '2026-11-15 10:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `payable_type` varchar(255) NOT NULL,
  `payable_id` bigint(20) UNSIGNED NOT NULL,
  `metode` varchar(20) DEFAULT NULL,
  `jumlah` bigint(20) UNSIGNED NOT NULL,
  `bukti_transfer` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'menunggu',
  `snap_token` text DEFAULT NULL,
  `snap_url` text DEFAULT NULL,
  `gateway_ref` varchar(255) DEFAULT NULL,
  `catatan_admin` text DEFAULT NULL,
  `dibayar_pada` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `paket_wisata_id` bigint(20) UNSIGNED DEFAULT NULL,
  `permintaan_paket_custom_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jenis` varchar(20) NOT NULL DEFAULT 'reguler',
  `tanggal_perjalanan` date NOT NULL,
  `jumlah_peserta` smallint(5) UNSIGNED NOT NULL,
  `total_harga` bigint(20) UNSIGNED NOT NULL,
  `catatan` text DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'menunggu_pembayaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kunci` varchar(255) NOT NULL,
  `nilai` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `kunci`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 'rekening', 'Bank (isi nama bank)\nNo. Rek: 0000000000\na.n. MEUGAH', '2026-11-15 10:45:01', '2026-11-15 10:45:01'),
(2, 'ongkir_flat', '20000', '2026-11-15 10:45:01', '2026-11-15 10:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pesanan_suvenir_id` bigint(20) UNSIGNED NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kurir` varchar(255) DEFAULT NULL,
  `no_resi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permintaan_paket_custom`
--

CREATE TABLE `permintaan_paket_custom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `destinasi_diminati` text NOT NULL,
  `tanggal_perjalanan` date NOT NULL,
  `jumlah_peserta` smallint(5) UNSIGNED NOT NULL,
  `anggaran` bigint(20) UNSIGNED DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'menunggu',
  `tanggapan_admin` text DEFAULT NULL,
  `harga_penawaran` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_suvenir`
--

CREATE TABLE `pesanan_suvenir` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `metode_pengambilan` varchar(20) NOT NULL DEFAULT 'kirim',
  `ongkir` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `total_harga` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'menunggu_pembayaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk_suvenir`
--

CREATE TABLE `produk_suvenir` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_produk_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` bigint(20) UNSIGNED NOT NULL,
  `stok` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk_suvenir`
--

INSERT INTO `produk_suvenir` (`id`, `kategori_produk_id`, `nama`, `deskripsi`, `harga`, `stok`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kopi Gayo 250g', 'Kopi Gayo 250g khas Aceh.', 85000, 50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkfCzg0Pn2wT8livCb1xLm1GWtu0eW5ycGsTGNICV1Yg&s=10', '2026-11-15 10:45:01', '2026-11-17 05:28:48'),
(3, 3, 'Kain Songket Aceh', 'Kain Songket Aceh khas Aceh.', 450000, 10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJZhqq9ahkQ6RsUaGCrsTq6DRzw7-hL5KYStYa8b907A&s=10', '2026-11-15 10:45:01', '2026-11-17 05:28:56'),
(5, 1, 'Kue Adee', 'Kue khas Aceh dengan cita rasa gurih dan legit.', 30000, 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDPuZvSWj5fTl5c65xr1eLaZessKPhrFKsMIJJfdNs8A&s=10', '2026-11-16 10:11:38', '2026-11-17 05:30:03'),
(7, 1, 'Emping', 'Camilan tradisional berbahan dasar melinjo.', 20000, 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSSHBELGDpITXWFJrBM3UvzlkTSLeMY4fzCCz0l3BEkw&s=10', '2026-11-16 10:11:38', '2026-11-17 05:30:14'),
(8, 1, 'Bakpia Sabang', 'Oleh-oleh khas Sabang berupa kue bakpia.', 35000, 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL1t6Zduw-utI3EKNjk0TAZz-AHEUBZ2iGJR88iBJ9pA&s=10', '2026-11-16 10:11:38', '2026-11-17 05:31:00'),
(11, 1, 'Manisan Pala', 'Manisan buah pala khas Aceh.', 30000, 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Gw6Rs0QK9auRJPPP4cLv7XuRa3AT_B0MvvPpys0cvA&s=10', '2026-11-16 10:11:38', '2026-11-17 05:31:45'),
(13, 1, 'Pulot Bakar', 'Makanan tradisional Aceh berbahan dasar ketan yang dibakar.', 25000, 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYj_GHAsmGt0ldAAdocHbX5fpyuE7nzJ4n3kJhLTW4jQ&s=10', '2026-11-16 10:19:46', '2026-11-17 05:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GohAqdyrScJ31I9Y0h0R1G6A7dMqNDYTJxpSLIea', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3VsamR1UDN3VEVyaXNmczdYSVRsTjJ5cWNmeWdDQnpob21WQUpySSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYWZ0YXIiO3M6NToicm91dGUiO3M6NjoiZGFmdGFyIjt9fQ==', 1794918824),
('kD9bjsmhyxUqFUrFYUTeIEi7ykk6ALgt5ZuORBY7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicm40U0hKVUYwbjRCRGJNWjRLNVZ6OXprSjdFVzBhdVlGcm5GUlBFNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9leHBsb3JlL2thYnVwYXRlbi8xMCI7czo1OiJyb3V0ZSI7czoxNzoiZXhwbG9yZS5rYWJ1cGF0ZW4iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjY0OiJkYTM0NGYzY2M5YjY4MTljMWI3OGU1ZDFkODFhZmFlMjI3N2U5MTM2YjI3ZjJlNjNmYTcwMDJiZDI0MzI0YWQ2Ijt9', 1794858405),
('vq6ugu58TOQAEYEYgZam2Vx2A5raljOburU8mjzC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmJhUHBuenhvQjd6S1ZzSko2NWRsektqRFRROXZQR0gxbTNuOHlNUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9leHBsb3JlL2thYnVwYXRlbi84IjtzOjU6InJvdXRlIjtzOjE3OiJleHBsb3JlLmthYnVwYXRlbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1794885627);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'wisatawan',
  `telepon` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `telepon`, `alamat`) VALUES
(1, 'Admin MEUGAH', 'admin@meugah.test', NULL, '$2y$12$7wRAdYXL07StElk5KT1Mx.q0uxt1lWZkFazPESC2xdJ/5jbTJ67.S', NULL, '2026-11-15 10:45:00', '2026-11-16 12:15:24', 'admin', '081200000000', NULL),
(2, 'Wisatawan Demo', 'wisatawan@meugah.test', NULL, '$2y$12$88xhZZ7m0kEGdhMAjRi0x.jROkEBRDBlLB/AOKLiDHva0736k2Ld6', NULL, '2026-11-15 10:45:01', '2026-11-15 10:45:01', 'wisatawan', '081300000000', NULL),
(3, 'Keisya Nazifa', 'kaisyacekli@gmail.com', NULL, '$2y$12$hAPpZ28BVrvv1Z4qlRBOYOKfBzDeXvKNMvqxMlBKEfDPMpJY/5B/C', NULL, '2026-11-16 00:03:00', '2026-11-16 00:03:00', 'wisatawan', '085260684766', 'pidie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinasi_kabupaten_kota_id_foreign` (`kabupaten_kota_id`),
  ADD KEY `destinasi_kategori_wisata_id_foreign` (`kategori_wisata_id`);

--
-- Indexes for table `detail_pesanan_suvenir`
--
ALTER TABLE `detail_pesanan_suvenir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pesanan_suvenir_pesanan_suvenir_id_foreign` (`pesanan_suvenir_id`),
  ADD KEY `detail_pesanan_suvenir_produk_suvenir_id_foreign` (`produk_suvenir_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeri_destinasi_id_foreign` (`destinasi_id`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itinerary_paket_wisata_id_foreign` (`paket_wisata_id`),
  ADD KEY `itinerary_destinasi_id_foreign` (`destinasi_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kabupaten_kota`
--
ALTER TABLE `kabupaten_kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_wisata`
--
ALTER TABLE `kategori_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_wisata`
--
ALTER TABLE `paket_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pembayaran_kode_unique` (`kode`),
  ADD KEY `pembayaran_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `pembayaran_gateway_ref_index` (`gateway_ref`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pemesanan_kode_unique` (`kode`),
  ADD KEY `pemesanan_user_id_foreign` (`user_id`),
  ADD KEY `pemesanan_paket_wisata_id_foreign` (`paket_wisata_id`),
  ADD KEY `pemesanan_permintaan_paket_custom_id_foreign` (`permintaan_paket_custom_id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengaturan_kunci_unique` (`kunci`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengiriman_pesanan_suvenir_id_foreign` (`pesanan_suvenir_id`);

--
-- Indexes for table `permintaan_paket_custom`
--
ALTER TABLE `permintaan_paket_custom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permintaan_paket_custom_user_id_foreign` (`user_id`);

--
-- Indexes for table `pesanan_suvenir`
--
ALTER TABLE `pesanan_suvenir`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pesanan_suvenir_kode_unique` (`kode`),
  ADD KEY `pesanan_suvenir_user_id_foreign` (`user_id`);

--
-- Indexes for table `produk_suvenir`
--
ALTER TABLE `produk_suvenir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_suvenir_kategori_produk_id_foreign` (`kategori_produk_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `detail_pesanan_suvenir`
--
ALTER TABLE `detail_pesanan_suvenir`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kabupaten_kota`
--
ALTER TABLE `kabupaten_kota`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_wisata`
--
ALTER TABLE `kategori_wisata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `paket_wisata`
--
ALTER TABLE `paket_wisata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permintaan_paket_custom`
--
ALTER TABLE `permintaan_paket_custom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan_suvenir`
--
ALTER TABLE `pesanan_suvenir`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk_suvenir`
--
ALTER TABLE `produk_suvenir`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD CONSTRAINT `destinasi_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `destinasi_kategori_wisata_id_foreign` FOREIGN KEY (`kategori_wisata_id`) REFERENCES `kategori_wisata` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_pesanan_suvenir`
--
ALTER TABLE `detail_pesanan_suvenir`
  ADD CONSTRAINT `detail_pesanan_suvenir_pesanan_suvenir_id_foreign` FOREIGN KEY (`pesanan_suvenir_id`) REFERENCES `pesanan_suvenir` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_pesanan_suvenir_produk_suvenir_id_foreign` FOREIGN KEY (`produk_suvenir_id`) REFERENCES `produk_suvenir` (`id`);

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_destinasi_id_foreign` FOREIGN KEY (`destinasi_id`) REFERENCES `destinasi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD CONSTRAINT `itinerary_destinasi_id_foreign` FOREIGN KEY (`destinasi_id`) REFERENCES `destinasi` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `itinerary_paket_wisata_id_foreign` FOREIGN KEY (`paket_wisata_id`) REFERENCES `paket_wisata` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_paket_wisata_id_foreign` FOREIGN KEY (`paket_wisata_id`) REFERENCES `paket_wisata` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pemesanan_permintaan_paket_custom_id_foreign` FOREIGN KEY (`permintaan_paket_custom_id`) REFERENCES `permintaan_paket_custom` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pemesanan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_pesanan_suvenir_id_foreign` FOREIGN KEY (`pesanan_suvenir_id`) REFERENCES `pesanan_suvenir` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permintaan_paket_custom`
--
ALTER TABLE `permintaan_paket_custom`
  ADD CONSTRAINT `permintaan_paket_custom_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pesanan_suvenir`
--
ALTER TABLE `pesanan_suvenir`
  ADD CONSTRAINT `pesanan_suvenir_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `produk_suvenir`
--
ALTER TABLE `produk_suvenir`
  ADD CONSTRAINT `produk_suvenir_kategori_produk_id_foreign` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
