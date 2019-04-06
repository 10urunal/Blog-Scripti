-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Nis 2019, 11:50:52
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `src`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brkdndr_etiketler`
--

CREATE TABLE `brkdndr_etiketler` (
  `id` int(11) NOT NULL,
  `yazi_id` int(11) NOT NULL,
  `etiket` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `etiket_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brkdndr_genel_ayarlar`
--

CREATE TABLE `brkdndr_genel_ayarlar` (
  `id` int(11) NOT NULL,
  `site_title` text COLLATE utf8_turkish_ci NOT NULL,
  `site_footer` text COLLATE utf8_turkish_ci NOT NULL,
  `site_description` text COLLATE utf8_turkish_ci NOT NULL,
  `site_keywords` text COLLATE utf8_turkish_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `site_appstore` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `site_googleplay` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `site_rss` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `site_facebook` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `site_twitter` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `site_instagram` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `site_youtube` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `site_google_plus` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `anasayfa_yazi_sayisi` int(11) NOT NULL,
  `anasayfa_etiket_sayisi` int(11) NOT NULL,
  `arama_yazi_sayisi` int(11) NOT NULL,
  `enckokunan_yazi_sayisi` int(11) NOT NULL,
  `anasayfa_kategori_sayisi` int(11) NOT NULL,
  `updatedAt` datetime NOT NULL,
  `guncelleyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

--
-- Tablo döküm verisi `brkdndr_genel_ayarlar`
--

INSERT INTO `brkdndr_genel_ayarlar` (`id`, `site_title`, `site_footer`, `site_description`, `site_keywords`, `site_logo`, `site_appstore`, `site_googleplay`, `site_rss`, `site_facebook`, `site_twitter`, `site_instagram`, `site_youtube`, `site_google_plus`, `anasayfa_yazi_sayisi`, `anasayfa_etiket_sayisi`, `arama_yazi_sayisi`, `enckokunan_yazi_sayisi`, `anasayfa_kategori_sayisi`, `updatedAt`, `guncelleyen_id`) VALUES
(1, 'Blog Tech', 'Blog Tech © 2019', 'Haber scripti', 'haber,scripti', '', 'https://itunes.apple.com/tr/', 'https://play.google.com', '', 'https://www.facebook.com/#', 'https://www.twitter.com/#', 'https://www.instagram.com/#', 'https://www.youtube.com/#', 'https://plus.google.com/#', 4, 4, 4, 0, 4, '2019-04-05 11:43:08', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brkdndr_iletisim`
--

CREATE TABLE `brkdndr_iletisim` (
  `id` int(11) NOT NULL,
  `gonderen_ad_soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `gonderen_email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `konu` text COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `iletisim_durum` int(1) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brkdndr_kategoriler`
--

CREATE TABLE `brkdndr_kategoriler` (
  `id` int(11) NOT NULL,
  `kategori_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_durum` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `yazar_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brkdndr_sayfalar`
--

CREATE TABLE `brkdndr_sayfalar` (
  `id` int(11) NOT NULL,
  `sayfa_baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sayfa_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sayfa_icerik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `sayfa_durum` int(11) NOT NULL,
  `yazar_id` int(11) NOT NULL,
  `goruntulenme_sayisi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brkdndr_uyeler`
--

CREATE TABLE `brkdndr_uyeler` (
  `id` int(11) NOT NULL,
  `ad_soyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `cinsiyet` int(1) NOT NULL,
  `sifre` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `isActive` int(1) NOT NULL,
  `user_role` int(1) NOT NULL,
  `ekleyen_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

--
-- Tablo döküm verisi `brkdndr_uyeler`
--

INSERT INTO `brkdndr_uyeler` (`id`, `ad_soyad`, `email`, `telefon`, `cinsiyet`, `sifre`, `isActive`, `user_role`, `ekleyen_id`, `createdAt`, `updatedat`) VALUES
(1, 'Admin', 'admin@admin.com', '05555555555', 1, '25f9e794323b453885f5181f1b624d0b', 1, 4, 1, '2018-07-28 07:50:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brkdndr_yazilar`
--

CREATE TABLE `brkdndr_yazilar` (
  `id` int(11) NOT NULL,
  `yazi_baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yazi_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yazi_icerik` longtext COLLATE utf8_turkish_ci,
  `yazi_resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yazi_durum` int(1) DEFAULT NULL,
  `yazi_goruntulenme` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `yazar_id` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brkdndr_yazi_yorumlar`
--

CREATE TABLE `brkdndr_yazi_yorumlar` (
  `id` int(11) NOT NULL,
  `yazi_id` int(11) NOT NULL,
  `yorum_ad_soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `yorum_email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `yorum_icerik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `yorum_durum` int(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=COMPACT;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `brkdndr_etiketler`
--
ALTER TABLE `brkdndr_etiketler`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `brkdndr_genel_ayarlar`
--
ALTER TABLE `brkdndr_genel_ayarlar`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `brkdndr_iletisim`
--
ALTER TABLE `brkdndr_iletisim`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `brkdndr_kategoriler`
--
ALTER TABLE `brkdndr_kategoriler`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `brkdndr_sayfalar`
--
ALTER TABLE `brkdndr_sayfalar`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `brkdndr_uyeler`
--
ALTER TABLE `brkdndr_uyeler`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `brkdndr_yazilar`
--
ALTER TABLE `brkdndr_yazilar`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `brkdndr_yazi_yorumlar`
--
ALTER TABLE `brkdndr_yazi_yorumlar`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `brkdndr_etiketler`
--
ALTER TABLE `brkdndr_etiketler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- Tablo için AUTO_INCREMENT değeri `brkdndr_genel_ayarlar`
--
ALTER TABLE `brkdndr_genel_ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `brkdndr_iletisim`
--
ALTER TABLE `brkdndr_iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `brkdndr_kategoriler`
--
ALTER TABLE `brkdndr_kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `brkdndr_sayfalar`
--
ALTER TABLE `brkdndr_sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `brkdndr_uyeler`
--
ALTER TABLE `brkdndr_uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `brkdndr_yazilar`
--
ALTER TABLE `brkdndr_yazilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `brkdndr_yazi_yorumlar`
--
ALTER TABLE `brkdndr_yazi_yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
