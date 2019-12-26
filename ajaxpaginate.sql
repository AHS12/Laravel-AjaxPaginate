-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 06:45 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajaxpaginate`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samanta Lueilwitz', 'gene09@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '8qqmlNOATG', '2019-12-26 09:04:00', '2019-12-26 09:04:00'),
(2, 'Breanna Dicki', 'frederick.kertzmann@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'kI0BBnS36e', '2019-12-26 09:04:00', '2019-12-26 09:04:00'),
(3, 'Abner Pouros', 'hallie.boyer@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'NW93LRdCzR', '2019-12-26 09:04:00', '2019-12-26 09:04:00'),
(4, 'Prof. Agustin Lang II', 'marianna59@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '7EFoXGzzi1', '2019-12-26 09:04:00', '2019-12-26 09:04:00'),
(5, 'Prof. Ahmed Friesen V', 'upaucek@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'JPbBrtUE63', '2019-12-26 09:04:00', '2019-12-26 09:04:00'),
(6, 'Annette Fadel II', 'elfrieda33@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'HyJX6FynPb', '2019-12-26 09:04:00', '2019-12-26 09:04:00'),
(7, 'Dr. Guy Walsh V', 'rolfson.alexane@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'GFxxFW1bLE', '2019-12-26 09:04:00', '2019-12-26 09:04:00'),
(8, 'Anjali Parker III', 'darlene.macejkovic@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '2OdbZY3lk8', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(9, 'Frederic Jenkins', 'mitchell.dayton@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'sZ2ZMHQMGS', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(10, 'Niko Nitzsche', 'fkshlerin@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '8dgzVqmq0y', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(11, 'Damion Parisian', 'dickinson.doug@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'F9I40REH1q', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(12, 'Laila Monahan', 'vernie.spencer@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'gmkQyIk46x', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(13, 'Dr. Frederick Hamill III', 'feest.jaime@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '3CVfxQnkiU', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(14, 'Kathleen Walker', 'regan91@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'd6xypggDF0', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(15, 'Letha Roberts MD', 'weber.michale@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'zUZ0yN4w2F', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(16, 'Dr. Cordelia Ryan', 'vincenza.daugherty@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '1bf1lCelzM', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(17, 'Mack Marvin', 'alden56@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '0eEudhNn4x', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(18, 'Conor Schuppe', 'sullrich@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '8hR1nrE0DR', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(19, 'Jacinto Moen', 'arjun95@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '7pSSazYntU', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(20, 'Dr. Timmothy Tillman DVM', 'jalen.hahn@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'zdbuCge0ei', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(21, 'Kyleigh Kuphal', 'chris.romaguera@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'T8m70wmiTe', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(22, 'Andres Boyer', 'ngutkowski@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '0qFK19d7K9', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(23, 'Miss Sister Dickinson', 'ymayert@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'XRc4OELhnR', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(24, 'Ms. Juana Collins Jr.', 'antoinette33@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '2YSVCd6mjn', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(25, 'Weston Lesch PhD', 'zjohnston@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'XXsMzcIaC8', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(26, 'Norberto Harber', 'ynicolas@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'QKJDx5yJPj', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(27, 'Vallie Ratke MD', 'missouri07@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'gn6jt3EwJt', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(28, 'Stacy Stoltenberg', 'juliana11@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'JNYZwsMuir', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(29, 'Terrill Senger', 'taya77@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'glLpEUrXaW', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(30, 'Melisa Wiegand', 'jimmie.nicolas@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'kCGv9P5OaF', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(31, 'Anahi Walker', 'tianna99@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'alxJKk3PkA', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(32, 'Daisy Schuppe', 'wilkinson.idell@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '10sw8lWvu9', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(33, 'Brayan Nitzsche', 'stewart48@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'Qk9ku9lZrU', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(34, 'Jayda Fisher', 'ludie.williamson@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'mBwaAP880C', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(35, 'Dr. Diego Keeling IV', 'alfonso52@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'VNhyj6vBts', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(36, 'Lexie Schimmel', 'paige.hauck@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '7ziyeD9TU8', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(37, 'Prof. Thelma Kshlerin DDS', 'mitchell.brendon@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'VrNdC3rj5T', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(38, 'Sophie Ferry', 'jordyn.cole@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'I9qf97EcEG', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(39, 'Prof. Pauline Jacobs III', 'kory.ohara@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'EG5HJPGOpX', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(40, 'Albin Stokes', 'janis93@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'c447kc4Wyw', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(41, 'Mr. Joaquin Douglas', 'denesik.fleta@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'SVwrWEEClQ', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(42, 'Miss Mattie Keebler', 'conn.samantha@example.com', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'sToiRpUDwu', '2019-12-26 09:04:01', '2019-12-26 09:04:01'),
(43, 'Miss Ressie Orn II', 'welch.elza@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'WsYhx2KMTm', '2019-12-26 09:04:02', '2019-12-26 09:04:02'),
(44, 'Prof. Jerrold Williamson DVM', 'maggio.zechariah@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'z1Xcv7rZGo', '2019-12-26 09:04:02', '2019-12-26 09:04:02'),
(45, 'Fausto Rowe', 'labadie.ludie@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'mGHTzgjs0K', '2019-12-26 09:04:02', '2019-12-26 09:04:02'),
(46, 'Gerard Tremblay', 'anderson.lane@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'vuK9yf9K2A', '2019-12-26 09:04:02', '2019-12-26 09:04:02'),
(47, 'Claudia Waelchi', 'ewald48@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'KxM8MbCGnS', '2019-12-26 09:04:02', '2019-12-26 09:04:02'),
(48, 'Estelle Treutel', 'friesen.dahlia@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'bK72Ta9aCe', '2019-12-26 09:04:02', '2019-12-26 09:04:02'),
(49, 'Mrs. Adell Erdman II', 'adan09@example.org', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', '10JOAjh5Oy', '2019-12-26 09:04:02', '2019-12-26 09:04:02'),
(50, 'Mr. Rodger Schuster', 'kayley59@example.net', '2019-12-26 09:04:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'picture.jpg', 'GYlzZfZJl2', '2019-12-26 09:04:02', '2019-12-26 09:04:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
