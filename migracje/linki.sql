CREATE TABLE `linki` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `opis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `kategoria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',

      PRIMARY KEY (id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
