-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2023 pada 12.18
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `breeze-product`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_16_045825_create_transactions_table', 1),
(6, '2023_07_16_045848_create_products_table', 1),
(7, '2023_07_16_064842_add_products_id_column_to_transactions_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` enum('ada','kosong') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'kosong',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Baju Pria', 10000, 'ada', 'Celana bagus import dari kamboja', '2023-07-16 15:28:17', '2023-07-16 15:28:17'),
(2, 'Celana Kantor', 20000, 'ada', 'Celana bagus import dari kamboja', '2023-07-16 15:28:17', '2023-07-16 15:28:17'),
(6, 'Pearl Lind V', 4400034, 'kosong', 'Autem qui at doloremque rem quod adipisci et non. Deleniti perferendis rerum fugit saepe. Eveniet sint maxime vel et animi ipsam delectus. Illo dignissimos impedit optio est error voluptatum nihil.', '2023-07-16 20:56:17', '2023-07-16 20:56:17'),
(7, 'Malika Friesen', 2513674, 'ada', 'Quaerat qui magnam facilis animi repudiandae est aut. Quia culpa corporis voluptatem dignissimos possimus. Unde fugit sunt necessitatibus et sequi voluptatem reprehenderit.', '2023-07-16 20:56:17', '2023-07-16 20:56:17'),
(8, 'Enrico Upton', 7190181, 'kosong', 'Doloremque ut blanditiis vitae odio eos nihil. Voluptatem deleniti similique consequatur sunt. Dolor maxime et tempora velit. Rem sit voluptatem eaque assumenda eaque voluptatem magni.', '2023-07-16 20:56:17', '2023-07-16 20:56:17'),
(9, 'Celana Kosong', 61000, 'ada', 'BAgus Bagus Enim ipsum quibusdam aut libero rerum. Non ut laboriosam sint accusamus assumenda dolor. Numquam inventore provident a similique dicta adipisci.', '2023-07-16 20:56:17', '2023-07-17 16:51:13'),
(10, 'Leif Daugherty', 7268578, 'kosong', 'Consequatur quia iure saepe nam ad quibusdam sed. Veniam voluptatem impedit et earum officiis corrupti perspiciatis quas. At eos hic autem libero.', '2023-07-16 20:56:17', '2023-07-16 20:56:17'),
(11, 'Dr. Reginald Cummings II', 1084737, 'kosong', 'Nihil natus assumenda omnis. Itaque dolorem delectus voluptas voluptatem tempora. Inventore sit vero corrupti dolorem. Ut vel quos illum maiores rerum et nam sit.', '2023-07-16 20:56:17', '2023-07-16 20:56:17'),
(12, 'Micheal Steuber', 368561, 'ada', 'Explicabo et a laudantium modi. Qui eligendi quibusdam et voluptas enim odit nobis. Ratione earum qui aspernatur quis.', '2023-07-16 20:56:17', '2023-07-16 20:56:17'),
(13, 'Charity Stroman I', 4408949, 'ada', 'Numquam delectus et recusandae esse ea odio necessitatibus. Omnis odio voluptatem et ut fuga ratione. Voluptatem nam eius cumque itaque eos.', '2023-07-16 20:56:25', '2023-07-16 20:56:25'),
(14, 'Waldo Mohr', 2233032, 'ada', 'Id hic aliquid fugit et officia et. Possimus vel expedita provident qui. Esse fugit qui facere qui recusandae. Saepe saepe occaecati hic in repudiandae quia est quae.', '2023-07-16 20:56:25', '2023-07-16 20:56:25'),
(15, 'Caterina Windler', 9234826, 'ada', 'Et et voluptatem non autem quis perspiciatis quia. Odio ea sit ducimus quia. Et reiciendis cumque maxime tempora ad. Ut aut qui aliquid ipsum.', '2023-07-16 20:56:25', '2023-07-16 20:56:25'),
(16, 'Donnie Paucek', 2676418, 'kosong', 'Non nihil incidunt ut voluptas harum sint voluptas. Accusamus doloribus asperiores est suscipit veniam quibusdam qui. Amet ratione tempore voluptas eius.', '2023-07-16 20:56:25', '2023-07-16 20:56:25'),
(17, 'Donato Towne', 3856945, 'ada', 'Velit ad quia veritatis consequatur odio maiores. Rerum natus in quasi sit cum ut ab. Hic adipisci facilis sint est velit. Cumque quos sit esse distinctio voluptatem exercitationem.', '2023-07-16 20:56:25', '2023-07-16 20:56:25'),
(18, 'Dr. Kayley Altenwerth Jr.', 5063513, 'ada', 'Quam incidunt ex et cum aut nulla ut. Quisquam minima id ab voluptatem commodi sapiente libero ratione. Sunt et autem quia consequatur maxime odit.', '2023-07-16 20:56:25', '2023-07-16 20:56:25'),
(19, 'Trever McGlynn', 8829147, 'kosong', 'Facere quia est asperiores autem consequuntur commodi. Sed et optio et voluptatibus culpa eaque eum.', '2023-07-16 20:56:25', '2023-07-16 20:56:25'),
(20, 'Kaylin Tremblay', 4727369, 'ada', 'Et necessitatibus et molestias aliquid perspiciatis ratione. Magni iusto accusamus sed ut. Iusto odio est quae mollitia eum laudantium ea. Sed fugit id voluptatum ut molestias corporis eveniet.', '2023-07-16 20:56:25', '2023-07-16 20:56:25'),
(23, 'Baju Daerah Biru', 12000, 'ada', 'sdadasdasdasdasdsadasdsadlsdfagjlakjdglksajdgalkdsfsafas', '2023-07-17 02:39:12', '2023-07-17 02:39:12'),
(24, 'Baju Daerah Biru', 12000, 'ada', 'sdadasdasdasdasdsadasdsadlsdfagjlakjdglksajdgalkdsfsafas', '2023-07-17 02:40:05', '2023-07-17 02:40:05'),
(25, 'Baju Daerah Merah', 12000, 'ada', 'sdadasdasdasdasdsadasdsadlsdfagjlakjdglksajdgalkdsfsafas', '2023-07-17 02:41:35', '2023-07-17 02:41:35'),
(26, 'Baju Merah Hijau', 230000, 'ada', 'sdakfhsajjdhfalksdnfmsankfa  kjflsa hfs dkjsahfdklas hfd klashdfk', '2023-07-17 02:42:52', '2023-07-17 02:42:52'),
(27, 'Celana Kolor', 111000, 'ada', 'adsa sa das das dvcvvbcb  cv', '2023-07-17 02:44:14', '2023-07-17 02:44:14'),
(28, 'Celana Abu', 340000, 'ada', 'aklj;fdkal lkfj;dsaj lkjfal', '2023-07-17 02:45:13', '2023-07-17 02:45:13'),
(29, 'Earline Robel', 1575052, 'kosong', 'Eligendi tenetur architecto aut perspiciatis. Dignissimos optio ipsa magni iusto quis voluptates dolore. Enim dolor cupiditate dolores natus.', '2023-07-17 06:49:03', '2023-07-17 06:49:03'),
(30, 'Ottis Mills', 7197399, 'kosong', 'Similique omnis iure fugit eveniet voluptatem deserunt nemo distinctio. Corrupti error earum repellat voluptatibus. Doloribus quas reprehenderit dolor debitis velit cum illo.', '2023-07-17 06:49:03', '2023-07-17 06:49:03'),
(31, 'Araceli Mayer', 5336714, 'ada', 'Quis consequatur similique dolorem molestias dolores. Vero voluptatibus non ut est. Consequatur quas ea est qui veritatis. Dolore quaerat praesentium quo natus.', '2023-07-17 06:49:03', '2023-07-17 06:49:03'),
(32, 'Dallin Connelly', 3323706, 'ada', 'Laborum distinctio et est perferendis modi. Atque ipsum vero sed expedita quae. Totam voluptatibus qui autem vero.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(33, 'Sabina Cummings', 6458974, 'ada', 'Corrupti ratione ipsum quia temporibus eos dolorem. Repellendus distinctio dicta soluta labore. Aut cumque beatae rerum omnis voluptatem. Cumque eveniet ut qui harum.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(34, 'Cristobal Gulgowski I', 9796244, 'kosong', 'Ipsa ullam nihil omnis quia aliquam nulla. Dolores et quia nihil repudiandae repellendus. Laboriosam corrupti quia ullam quasi quo et id.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(35, 'Zita Daniel', 1787513, 'ada', 'Sit perferendis veniam autem labore explicabo. Velit rerum assumenda sapiente voluptatum ut qui. Aut qui corrupti id delectus laboriosam quod harum culpa.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(36, 'John Feeney', 175672, 'ada', 'Totam amet dicta alias quo similique est sed nobis. Animi id in ipsam qui. Saepe et quis suscipit quam deleniti iusto dolorum.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(37, 'Aurelie Harris', 9642289, 'kosong', 'Mollitia et aperiam accusantium voluptatem. Recusandae non nostrum omnis exercitationem aut et.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(38, 'Ms. Leslie Bernier', 3836679, 'kosong', 'Porro neque sit consequatur nihil. Voluptate repellat sunt dicta odit quia magni debitis.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(39, 'Piper Balistreri', 560587, 'kosong', 'Doloribus quaerat aut non optio. Omnis aliquam vitae saepe fugiat autem a illo ullam. Ex iste et quo repellat quam nesciunt. Et cum enim est id repellat qui odio.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(40, 'Octavia Koelpin', 9552781, 'kosong', 'Iure corporis eum quas quod asperiores. Sed nihil unde ut quo. Soluta omnis officia autem iure nihil. Eius perspiciatis et dolor.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(41, 'Mae Renner', 3130612, 'ada', 'Quam id atque natus id sit veritatis dolor. Vero laboriosam atque dignissimos. Aut nostrum voluptas est repudiandae quis.', '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(42, 'Janiya Erdman', 3693408, 'kosong', 'Ad aut quibusdam doloremque. Numquam maiores ipsam ipsum error saepe sed.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(43, 'Israel Lubowitz', 7241925, 'ada', 'Inventore ut non itaque rem earum. A repellendus nam ea. Omnis accusantium nihil voluptatibus provident laudantium.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(44, 'Agnes Beatty DVM', 549565, 'ada', 'Est nobis optio cumque et rerum voluptatum est ad. Maiores non rem et sed. Rerum cupiditate a qui reprehenderit.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(45, 'Prof. Dewitt Rippin PhD', 6354588, 'ada', 'Cumque quis voluptates qui qui pariatur. Inventore error sed sit non et. Velit et iure amet omnis sunt sint ipsa.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(46, 'Dr. Natalia Mosciski Sr.', 4487599, 'ada', 'Quam nesciunt quis doloremque et aut eveniet. Consequatur aspernatur maiores sunt nemo et. Ut sint sit sapiente ipsa. Officiis aut assumenda quaerat voluptas aperiam sed.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(47, 'Timothy Keebler', 5945757, 'ada', 'Ea quia enim voluptatem sit nihil impedit omnis. Iusto ea tenetur ad ut. Asperiores inventore architecto qui.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(48, 'Ottis Gulgowski', 6910722, 'kosong', 'Quis sit quidem vel esse. Aut nihil enim facilis iure. Quaerat excepturi ad in aut tempora veritatis aut.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(49, 'Mr. Elliott Marks DVM', 6862722, 'ada', 'Totam eligendi sequi magni. Autem voluptatem magnam qui et sint. Fuga nam porro ipsum veniam. Itaque dolore perspiciatis ut. Reiciendis inventore nam sed rem odio.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(50, 'Dr. Dana Murray IV', 6240390, 'kosong', 'Quod sint et dolor autem quibusdam illo aperiam. Temporibus id recusandae sed itaque voluptatem sunt vel. Et nostrum consequuntur omnis ullam.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(51, 'Gaston Klocko', 9779054, 'ada', 'Voluptas eum nam tenetur totam. Necessitatibus ipsam at nesciunt iure.', '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(52, 'Baju Gombreng', 30000, 'kosong', 'Baju Gombreng adalah baju tradisional yang seharusnya dipakai oleh koruptor dan ODGJ', '2023-07-17 09:18:28', '2023-07-17 09:18:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `refrence_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `refrence_no`, `price`, `quantity`, `payment_amount`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 'INV20230717102017456', 12000, 2, 24000, 1, NULL, NULL),
(5, 'LWUsXb8ePN', 51662, 7, 9737193, 32, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(6, 'vR5Vjc2K78', 3381, 6, 13155411, 33, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(7, 'FXqayXkb0u', 91393, 6, 81507985, 34, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(8, '4RgZfVxuub', 83512, 3, 55262476, 35, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(9, 'uf15nvFmOD', 22312, 6, 3275771, 36, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(10, '4vVgHfDmsi', 72755, 3, 73430036, 37, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(11, 'dv9oFti7z9', 33675, 2, 35761964, 38, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(12, '0DOFvXj11m', 63396, 3, 71561030, 39, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(13, 'gJgtoaoTz1', 65774, 2, 44836367, 40, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(14, 'TA6dgkNo9q', 76854, 4, 51910970, 41, '2023-07-17 07:00:29', '2023-07-17 07:00:29'),
(15, 'fmeiEwfj2m', 98778, 2, 13333604, 42, '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(16, 'yikFjo6eSl', 12830, 0, 79663924, 43, '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(17, '2MFRCEMaIB', 75422, 7, 26132877, 44, '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(18, 'MEhWBRFJkL', 54244, 6, 34638933, 45, '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(19, 'PJkcG6kUYH', 19911, 4, 67506774, 46, '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(20, 'WonAHPQXyy', 14855, 6, 49611428, 47, '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(21, 'knxShcSd5O', 86634, 5, 89110804, 48, '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(22, 'pHAHwGPzlK', 9011, 7, 71168855, 49, '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(23, '7qqkRehSUE', 51792, 5, 20966076, 50, '2023-07-17 07:00:44', '2023-07-17 07:00:44'),
(24, 'VtfF4RdLuW', 73129, 5, 14959523, 51, '2023-07-17 07:00:44', '2023-07-17 07:00:44');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aan Satu', 'aan1@gmail.com', NULL, '$2y$10$Wz5Bf.XODrgQcIuLr6e2OeFzSYuKNRYzwVokpePrCAIhHfItsyFJ2', NULL, '2023-07-16 15:28:17', '2023-07-16 15:28:17'),
(2, 'Aan Dua', 'aan2@gmail.com', NULL, '$2y$10$COTRA1Ac76i71TMzNdKHROwGPLnpnIOg6ZVidrTXbYZn3g6L2Wh5K', NULL, '2023-07-16 15:28:17', '2023-07-16 15:28:17'),
(3, 'Abad', 'abad@test', NULL, '$2y$10$ztO7/rKm0VNnucM/vgrbMeav2e67QqF0gzHycH3NCl13iH4gc6OkS', NULL, '2023-07-16 15:36:27', '2023-07-16 15:36:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
