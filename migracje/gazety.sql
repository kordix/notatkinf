CREATE TABLE `gazety` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gazeta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `zagadnienie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `kategoria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',

      PRIMARY KEY (id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
