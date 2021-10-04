-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for swj-fe
CREATE DATABASE IF NOT EXISTS `swj-fe` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `swj-fe`;

-- Dumping structure for table swj-fe.berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id` int(11) NOT NULL,
  `judul_berita` varchar(50) DEFAULT NULL,
  `isi_berita` varchar(200) DEFAULT NULL,
  `alamat_destination` varchar(50) DEFAULT NULL,
  `sumber` varchar(50) DEFAULT NULL,
  `sumber_foto` varchar(50) DEFAULT NULL,
  `foto_berita` varchar(50) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table swj-fe.berita: ~0 rows (approximately)
DELETE FROM `berita`;
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
INSERT INTO `berita` (`id`, `judul_berita`, `isi_berita`, `alamat_destination`, `sumber`, `sumber_foto`, `foto_berita`, `created_at`, `updated_at`) VALUES
	(1, 'Gedung Sate', 'Gedung Sate', 'Jalan Diponegoro', 'Disaparbud', 'Disaparbud', 'berita_1.jpg', 1630582473, 1630582473),
	(6, 'Gedung Sate', 'Gedung Sate', 'Jalan Diponegoro', 'Disaparbud', 'Disaparbud', 'berita_6.jpg', 1631120465, 1631120465);
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;

-- Dumping structure for table swj-fe.destination
CREATE TABLE IF NOT EXISTS `destination` (
  `id` int(11) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table swj-fe.destination: ~5 rows (approximately)
DELETE FROM `destination`;
/*!40000 ALTER TABLE `destination` DISABLE KEYS */;
INSERT INTO `destination` (`id`, `gambar`) VALUES
	(1, 'gambarD_1.jpg'),
	(2, 'gambarD_2.jpg'),
	(3, 'gambarD_3.jpg'),
	(4, 'gambarD_4.jpg'),
	(12, 'gambarD_12.jpg');
/*!40000 ALTER TABLE `destination` ENABLE KEYS */;

-- Dumping structure for table swj-fe.event
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL,
  `judul_event` varchar(50) DEFAULT NULL,
  `tempat_event` varchar(50) DEFAULT NULL,
  `waktu_event` time DEFAULT NULL,
  `tgl_event` date DEFAULT NULL,
  `deskripsi_event` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table swj-fe.event: ~2 rows (approximately)
DELETE FROM `event`;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` (`id`, `judul_event`, `tempat_event`, `waktu_event`, `tgl_event`, `deskripsi_event`) VALUES
	(1, 'MUSIK BANDUNG', 'bandung', '14:00:00', '2021-08-31', 'event1'),
	(2, 'event1', 'bandung', '14:00:00', '2021-08-31', 'event122'),
	(3, 'Makasar', 'Gasibu', '14:00:00', '2021-08-31', 'event gasibu'),
	(4, 'Event 4', 'bandung', '15:00:00', '2021-07-17', 'event 4');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;

-- Dumping structure for table swj-fe.lbp
CREATE TABLE IF NOT EXISTS `lbp` (
  `id` int(11) NOT NULL,
  `look` varchar(100) DEFAULT NULL,
  `book` varchar(100) DEFAULT NULL,
  `pay` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table swj-fe.lbp: ~2 rows (approximately)
DELETE FROM `lbp`;
/*!40000 ALTER TABLE `lbp` DISABLE KEYS */;
INSERT INTO `lbp` (`id`, `look`, `book`, `pay`) VALUES
	(1, 'looks', 'books', 'pays'),
	(2, 'look', 'book', 'pay');
/*!40000 ALTER TABLE `lbp` ENABLE KEYS */;

-- Dumping structure for table swj-fe.migration
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table swj-fe.migration: ~2 rows (approximately)
DELETE FROM `migration`;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1630240651),
	('m130524_201442_init', 1630240653),
	('m190124_110200_add_verification_token_column_to_user_table', 1630240653);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;

-- Dumping structure for table swj-fe.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table swj-fe.user: ~0 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
	(1, 'admin1', 'pIYD429zCSlRHEIjVHJ3jK773AVGNfoV', '$2y$13$Gl7/6GvtSkcpkZAPlGfog.g6hd4ce1VFBhVvCkUJ5sSWWaH.ziJZC', NULL, 'admin@gmail.com', 10, 1630240674, 1630240674, 'ZTPFeGAx1pofrr3ZFWtOwzOtkf8llgjG_1630240674');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
