-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 27 Cze 2021, 21:52
-- Wersja serwera: 5.7.27-0ubuntu0.18.04.1
-- Wersja PHP: 7.3.24-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `egzaminer`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `activelanguage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DE',
  `counterset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `operator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '<',
  `currentcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currenttag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `settings`
--

INSERT INTO `settings` (`id`, `user_id`, `activelanguage`, `counterset`, `operator`, `currentcategory`, `currenttag`, `created_at`, `updated_at`) VALUES
(1, 1, 'DE', '5', '<', 'nieprzypisane', '', '2020-07-31 14:52:24', '2021-06-13 10:56:24'),
(2, 2, 'DE', '5', '<', '', '', '2020-11-24 15:01:11', '2020-11-24 15:01:11'),
(3, 3, 'DE', '5', '<', '', '', '2021-03-31 11:18:54', '2021-03-31 11:18:54');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
