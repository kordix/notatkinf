CREATE TABLE `jokes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
      PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
