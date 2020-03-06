-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 04 Mai 2019 à 19:52
-- Version du serveur :  5.7.11
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tp_image_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `images`
--

INSERT INTO `images` (`id`, `location_id`, `user_id`, `created_at`, `updated_at`, `name`) VALUES
(11, 8, 3, '2019-04-17 18:17:12', NULL, '7gwADkS9w7hm7AoFgt29o95SDAHXDjejO4K6Gfvc.jpeg'),
(12, 2, 3, '2019-04-17 18:19:10', NULL, 'S1aXWYEXHhVCmt2UJMEwiKYGXWh7C60hzmaazfCI.jpeg'),
(13, 4, 3, '2019-04-17 18:19:24', NULL, 'cSkDYCTFEhZUsDAScQb2ZXA20KmRy2VWYWMMjzBH.jpeg'),
(14, 3, 3, '2019-04-17 18:19:35', NULL, '48aPUV6wkpwbHDUQi4wdaU2uhAX48NuekIG5ZgYI.jpeg'),
(15, 1, 3, '2019-04-17 18:19:47', NULL, 'TkuMnAL1mFPzhC8Es1iNa6pufjNLYIEePEKPX9BU.jpeg'),
(16, 5, 3, '2019-04-17 18:20:29', NULL, 'COhd9hiG8iqaq8TEiS5kkpig0T7iKEQ83OFZZT3J.jpeg'),
(17, 7, 3, '2019-04-17 18:20:56', NULL, 'zPtQlmpEm7FNHtCEeIqg0kyXJzIK2idfhVH2GR5N.png'),
(18, 2, 2, '2019-04-23 15:30:20', NULL, 'I08BFVDESIOkXYk4ifQYs8o3ttFrjgENa7ckIXns.jpeg'),
(19, 1, 2, '2019-04-26 19:31:30', NULL, 'lAR6ligA22pVxrv6ADrXTmQJrXwU79lttzJnZL4y.jpeg'),
(20, 2, 2, '2019-04-27 17:41:06', NULL, 'U5U1q2rBybe2600W9kPHRgOCVNQ4a9YITR35Stqc.jpeg'),
(21, 1, 2, '2019-04-27 17:41:31', NULL, 'Cbicxv2OZ4JI5pMsatCB5wV1d6pw3F4eUjrOvnri.jpeg'),
(22, 2, 2, '2019-04-27 17:42:06', NULL, 'Q9icF954f5wVh5AMHVMPq35Fxzzk2N9oiPk0ELrY.jpeg'),
(23, 1, 2, '2019-04-27 17:42:43', NULL, 'vSS3iUrB9NagH1aV0IhxnDAYqcoD8vsIT2ulMBwM.jpeg'),
(24, 1, 2, '2019-04-30 14:54:36', NULL, 'kckSm5oWpXbEXj0a8QAEVU79TF97ecgRjNV3NMqO.png'),
(25, 1, 2, '2019-04-30 14:55:06', NULL, 'KzFFTaDk6Z9hQPM2NH84BNmbFjC60RHr6KFg5xqd.png'),
(26, 1, 2, '2019-04-30 14:58:34', NULL, 'OWy1joCo0rGhNSXqxlNxJnAX0XFTfsf1wM3ooL5p.jpeg'),
(27, 2, 2, '2019-04-30 15:00:59', NULL, 'uA0DJhrPAYIObFPlG0xspDnIiW75vkvzyZ30yR2n.jpeg'),
(28, 8, 2, '2019-04-30 15:03:41', NULL, 'thk1Ajq6HfFByAhSpcdQtpn9juHK2vsV3YMRKMq7.jpeg'),
(29, 5, 2, '2019-04-30 15:10:43', NULL, '3oGhkinMleNwowGPH8T2MNiiIiPhLk2PAHydYB9V.jpeg'),
(30, 9, 2, '2019-04-30 15:11:19', NULL, '4DdRezWl6xpOXX9zjpxy9mOmOxsVJBwwQ0vZROUj.jpeg'),
(31, 6, 2, '2019-04-30 15:16:17', NULL, 'Q3k5EepMjMFL7Gaes1DG7fluCaWeXUof9XUFtzDe.jpeg'),
(32, 1, 8, '2019-05-01 17:22:09', NULL, 'zSkVwOpo06pMhPZSmNzzgwE3slUb2mXrVV2yMrqn.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `image_user`
--

CREATE TABLE `image_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `alert` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `image_user`
--

INSERT INTO `image_user` (`id`, `image_id`, `user_id`, `alert`, `created_at`, `updated_at`) VALUES
(4, 22, 3, 1, '2019-04-27 20:23:00', '2019-04-27 20:23:00'),
(6, 12, 2, 1, '2019-04-30 14:25:53', '2019-04-30 14:25:53'),
(7, 20, 2, 1, '2019-04-30 14:52:25', '2019-04-30 14:53:12'),
(9, 19, 3, 1, '2019-04-30 17:38:53', '2019-04-30 17:38:53'),
(15, 25, 7, 1, '2019-04-30 18:00:49', '2019-04-30 18:09:25'),
(16, 22, 7, 1, '2019-04-30 18:09:19', '2019-04-30 18:09:19'),
(17, 25, 6, 1, '2019-04-30 18:10:35', '2019-04-30 18:10:35'),
(18, 25, 1, 1, '2019-04-30 18:11:57', '2019-05-01 15:20:15'),
(19, 25, 4, 1, '2019-05-01 15:26:47', '2019-05-01 15:26:47'),
(20, 25, 3, 1, '2019-05-01 15:30:20', '2019-05-01 15:30:20'),
(21, 25, 8, 1, '2019-05-01 15:31:47', '2019-05-01 15:31:47');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Quebec', NULL, NULL),
(2, 'Montreal', NULL, NULL),
(3, 'New York', NULL, NULL),
(4, 'Washington', NULL, NULL),
(5, 'Bangkok', NULL, NULL),
(6, 'Paris', NULL, NULL),
(7, 'Phnom Penh', NULL, NULL),
(8, 'Hong Kong', NULL, NULL),
(9, 'Vancouver', NULL, NULL),
(10, 'Tatouine', NULL, NULL),
(11, 'Terre du milieu', NULL, NULL),
(12, 'Jakku', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_03_154621_create_images_table', 1),
(4, '2019_04_03_154839_create_image_user_table', 1),
(5, '2019_04_03_155024_create_locations_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.ca', NULL, '$2y$10$E/9lDpnlW26bOyJwoq8oseLDN7bpcuTnsLzNhFNdjfCrBSccAsTnK', 'admin', NULL, '2019-04-16 05:04:33', '2019-04-16 05:04:33'),
(2, 'user1', 'user1@user1.ca', NULL, '$2y$10$4OWTQGjUJ5dX9y0COib9aOuC9lcwDv5yQE5LgtjvDPH/agwfkLi.2', 'user', NULL, '2019-04-16 05:04:59', '2019-04-16 05:04:59'),
(3, 'user2', 'user2@user2.ca', NULL, '$2y$10$OW2jX04Uz6AHp2iG2npM1ulnAfUu7732ggYAZBCDKSuGol4wckSLG', 'user', NULL, '2019-04-16 05:05:57', '2019-04-16 05:05:57'),
(4, 'user3', 'user3@user3.ca', NULL, '$2y$10$RKZmw1Tji.YqhAtp7clRtu0hHRzzDFKdaCif0DaXpHOFAOP6wSUiy', 'user', NULL, '2019-04-17 20:43:39', '2019-04-17 20:43:39'),
(5, 'user4', 'user4@user4.com', NULL, '$2y$10$p5m5rgDDGL9MwuBdfN/zvu7ETN1V6Kt3a9Xsd8hO9nOvGmel0x9s6', 'user', NULL, '2019-04-17 20:45:15', '2019-04-17 20:45:15'),
(6, 'user5', 'user5@user5.com', NULL, '$2y$10$eUqVVbJF6mn.ADToNphIvu93/n3HIlQtDewSTWWY.U13JETyLoh7y', 'user', NULL, '2019-04-17 20:47:45', '2019-04-17 20:47:45'),
(7, 'user6', 'user6@user6.com', NULL, '$2y$10$JyHDdZ9RGnjiyecAQ5JvYOMwavRAeFq05kZtybdK86T7DrcI6oNHy', 'user', NULL, '2019-04-17 20:48:37', '2019-04-17 20:48:37'),
(8, 'user7', 'user7@user7.com', NULL, '$2y$10$.yx4QT7Uy.i4.j4yw8VTGO5Vx4rNBbFHjcN7/.2Pp9WZ6BpvOx3ru', 'user', NULL, '2019-04-17 16:51:52', '2019-04-17 16:51:52'),
(9, 'user9@user9.ca', 'user9@user9.ca', NULL, '$2y$10$elhjWo0bZndveLl4w7zP0uoXkurIEvrJodjQhCXtFtyT4iT9DfuCC', 'user', NULL, '2019-05-01 17:28:12', '2019-05-01 17:28:12');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_location_id_index` (`location_id`),
  ADD KEY `images_user_id_index` (`user_id`);

--
-- Index pour la table `image_user`
--
ALTER TABLE `image_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_user_image_id_index` (`image_id`),
  ADD KEY `image_user_user_id_index` (`user_id`),
  ADD KEY `image_user_alert_index` (`alert`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `image_user`
--
ALTER TABLE `image_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `image_user`
--
ALTER TABLE `image_user`
  ADD CONSTRAINT `image_user_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `image_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
