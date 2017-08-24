-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 26 Nis 2016, 11:23:13
-- Sunucu sürümü: 5.6.26
-- PHP Sürümü: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `nakliyee`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(11) NOT NULL,
  `a_username` varchar(45) NOT NULL,
  `a_password` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`a_id`, `a_username`, `a_password`) VALUES
(1, 'furkan', '123'),
(2, 'goksel', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `a_araclar`
--

CREATE TABLE IF NOT EXISTS `a_araclar` (
  `arac_id` int(11) NOT NULL,
  `arac_plaka` varchar(45) NOT NULL,
  `arac_marka` varchar(45) NOT NULL,
  `arac_model` varchar(45) NOT NULL,
  `arac_renk` varchar(45) NOT NULL,
  `arac_yakit` varchar(45) NOT NULL,
  `arac_tarih` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `a_araclar`
--

INSERT INTO `a_araclar` (`arac_id`, `arac_plaka`, `arac_marka`, `arac_model`, `arac_renk`, `arac_yakit`, `arac_tarih`) VALUES
(1, '34GO1907', 'Volvo', '2016', 'Kırmızı', 'Benzin+Lpg', '2016-04-24'),
(2, '22FB2234', 'DAF', '2014', 'Bej', 'Dizel', '2016-04-24'),
(3, '22FB2235', 'Mercedes', '2014', 'Beyaz', 'Benzin', '2016-04-24'),
(4, '22FB2236', 'Mercedes', '2014', 'Beyaz', 'Benzin', '2016-04-24'),
(5, '22FB2237', 'Mercedes', '2014', 'Kırmızı', 'Benzin', '2016-04-24'),
(6, '06AD3425', 'IVECO', '2016', 'Mavi', 'Benzin+Lpg', '2016-04-24'),
(7, '06AD3426', 'IVECO', '2016', 'Mavi', 'Benzin+Lpg', '2016-04-24'),
(8, '06AD3427', 'IVECO', '2016', 'Mavi', 'Benzin+Lpg', '2016-04-24'),
(9, '06AD3428', 'IVECO', '2016', 'Mavi', 'Benzin+Lpg', '2016-04-24'),
(10, '39AS2941', 'Renault', '2013', 'Siyah', 'Benzin', '2016-04-06'),
(11, '39AS2942', 'Renault', '2013', 'Siyah', 'Benzin', '2016-04-06'),
(12, '39AS2943', 'Renault', '2013', 'Kırmızı', 'Benzin', '2016-04-06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `a_mesaj`
--

CREATE TABLE IF NOT EXISTS `a_mesaj` (
  `mesaj_id` int(11) NOT NULL,
  `musteri_id` int(45) NOT NULL,
  `mesaj_baslik` varchar(45) NOT NULL,
  `mesaj_icerik` text NOT NULL,
  `mesaj_tarih` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `a_nakliyatlar`
--

CREATE TABLE IF NOT EXISTS `a_nakliyatlar` (
  `nakliyat_id` int(11) NOT NULL,
  `nakliyat_nerden` varchar(45) NOT NULL,
  `nakliyat_nereye` varchar(45) NOT NULL,
  `sofor_id` varchar(45) NOT NULL,
  `musteri_id` varchar(45) NOT NULL,
  `nakliyat_tarih` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `a_odemeistek`
--

CREATE TABLE IF NOT EXISTS `a_odemeistek` (
  `odemeistek_id` int(11) NOT NULL,
  `musteri_id` int(11) NOT NULL,
  `uodeme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `a_soforler`
--

CREATE TABLE IF NOT EXISTS `a_soforler` (
  `sofor_id` int(11) NOT NULL,
  `sofor_adsoyad` varchar(45) NOT NULL,
  `sofor_telefon` varchar(45) NOT NULL,
  `sofor_adres` longtext NOT NULL,
  `sofor_email` varchar(45) NOT NULL,
  `sofor_maas` int(11) NOT NULL,
  `sofor_tarih` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `a_soforler`
--

INSERT INTO `a_soforler` (`sofor_id`, `sofor_adsoyad`, `sofor_telefon`, `sofor_adres`, `sofor_email`, `sofor_maas`, `sofor_tarih`) VALUES
(1, 'Ayhan Kutlu', '541545415', 'İstanbul	', 'ayhan.kutlu@gmail.com', 1750, '2016-04-23'),
(2, 'Yiğit Yalçın', '5419614787', 'İstanbul', 'yigit.yalcin@ntr.com', 2500, '2016-04-24'),
(3, 'Tufan Haydar', '5419614521', 'İstanbul/Kocaeli', 'tufan.haydar@ntr.com', 2500, '2016-04-24'),
(4, 'Hüseyin Çalışkan', '5419614522', 'İstanbul/Kocaeli/Ankara	', 'huseyin.clskn@ntr.com', 1999, '2016-04-24'),
(5, 'Murtaza Oför', '5419614523', 'İstanbul/Kocaeli/Ankara	', 'murtaza.ofr@ntr.com', 3482, '2016-04-24'),
(6, 'Mustafa Vites', '5419614524', 'Aydın', 'mustafa.vites@ntr.com', 2750, '2016-04-01'),
(7, 'Görkem Kılıçaslan', '5352147896', 'Edirne', 'gorkem.kilicaslan@trnakliye.com', 2250, '2016-02-09'),
(8, 'Fuat Terkin', '5428957212', 'Kırklareli/Vize', 'fuat.terkin@trnakliye.com', 1950, '2016-02-19'),
(9, 'Mehmet Çalık', '5387489826', 'Adıyaman', 'mehmet.calik@trnakliye.com', 2450, '2016-02-19'),
(11, 'Hüseyin Rek', '5412223345', 'Çanakkale', 'huseyinrek@gmail.com', 1475, '2016-04-26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bankalar`
--

CREATE TABLE IF NOT EXISTS `bankalar` (
  `banka_id` int(11) NOT NULL,
  `banka_adi` varchar(100) NOT NULL,
  `banka_sube` varchar(20) NOT NULL,
  `banka_hesapno` varchar(45) NOT NULL,
  `banka_iban` varchar(70) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bankalar`
--

INSERT INTO `bankalar` (`banka_id`, `banka_adi`, `banka_sube`, `banka_hesapno`, `banka_iban`) VALUES
(1, 'GARANTİ BANKASI', '2234', '12456', 'TR65 0011 1000 0000 0048 4688 80'),
(2, 'TC. İŞBANKASI', '1377', '0042967', 'TR31 0006 4000 0011 3770 0429 67');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteriler`
--

CREATE TABLE IF NOT EXISTS `musteriler` (
  `musteri_id` int(11) NOT NULL,
  `musteri_adsoyad` varchar(80) NOT NULL,
  `musteri_telefon` varchar(45) NOT NULL,
  `musteri_email` varchar(45) NOT NULL,
  `musteri_adres` longtext NOT NULL,
  `musteri_sifre` varchar(7) NOT NULL,
  `musteri_tarih` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `musteriler`
--

INSERT INTO `musteriler` (`musteri_id`, `musteri_adsoyad`, `musteri_telefon`, `musteri_email`, `musteri_adres`, `musteri_sifre`, `musteri_tarih`) VALUES
(0, 'Göksel Özardalı', '5419614941', 'goksel@ozardali.com', 'Papatya 2 Residance Beylikdüzü / İST.', '123', NULL),
(1, 'Furkan Belikırık', '05419614942', 'furkanbelikirik@gmail.com', 'Maltepe / İstanbul', '123', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sehirler`
--

CREATE TABLE IF NOT EXISTS `sehirler` (
  `sehir_id` int(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Plaka Numarası',
  `sehir_adi` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sehirler`
--

INSERT INTO `sehirler` (`sehir_id`, `sehir_adi`) VALUES
(1, 'Adana'),
(2, 'Adıyaman'),
(3, 'Afyonkarahisar'),
(4, 'Ağrı'),
(68, 'Aksaray'),
(5, 'Amasya'),
(6, 'Ankara'),
(7, 'Antalya'),
(75, 'Ardahan'),
(8, 'Artvin'),
(9, 'Aydın'),
(10, 'Balıkesir'),
(74, 'Bartın'),
(72, 'Batman'),
(69, 'Bayburt'),
(11, 'Bilecik'),
(12, 'Bingöl'),
(14, 'Bolu'),
(15, 'Burdur'),
(13, 'Bitlis'),
(16, 'Bursa'),
(17, 'Çanakkale'),
(18, 'Çankırı'),
(19, 'Çorum'),
(20, 'Denizli'),
(21, 'Diyarbakır'),
(81, 'Düzce'),
(22, 'Edirne'),
(23, 'Elazığ'),
(24, 'Erzincan'),
(25, 'Erzurum'),
(26, 'Eskişehir'),
(27, 'Gaziantep'),
(28, 'Giresun'),
(44, 'Malatya'),
(67, 'Zonguldak'),
(66, 'Yozgat'),
(77, 'Yalova'),
(65, 'Van'),
(64, 'Uşak'),
(62, 'Tunceli'),
(61, 'Trabzon'),
(60, 'Tokat'),
(59, 'Tekirdağ'),
(73, 'Şırnak'),
(63, 'Şanlıurfa'),
(58, 'Sivas'),
(57, 'Sinop'),
(56, 'Siirt'),
(55, 'Samsun'),
(54, 'Sakarya'),
(53, 'Rize'),
(80, 'Osmaniye'),
(52, 'Ordu'),
(51, 'Niğde'),
(50, 'Nevşehir'),
(49, 'Muş'),
(48, 'Muğla'),
(47, 'Mardin'),
(45, 'Manisa'),
(29, 'Gümüşhane'),
(30, 'Hakkari'),
(31, 'Hatay'),
(76, 'Iğdır'),
(32, 'Isparta'),
(33, 'İçel'),
(34, 'İstanbul'),
(35, 'İzmir'),
(46, 'Kahramanmaraş'),
(78, 'Karabük'),
(70, 'Karaman'),
(36, 'Kars'),
(37, 'Kastamonu'),
(38, 'Kayseri'),
(71, 'Kırıkkale'),
(39, 'Kırklareli'),
(40, 'Kırşehir'),
(79, 'Kilis'),
(41, 'Kocaeli'),
(42, 'Konya'),
(43, 'Kütahya');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `u_mesaj`
--

CREATE TABLE IF NOT EXISTS `u_mesaj` (
  `mesaj_id` int(11) NOT NULL,
  `musteri_id` int(5) NOT NULL,
  `mesaj_baslik` varchar(45) NOT NULL,
  `mesaj_icerik` text NOT NULL,
  `tarih` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `u_nakliyeistek`
--

CREATE TABLE IF NOT EXISTS `u_nakliyeistek` (
  `nakliyeistek_id` int(11) NOT NULL,
  `musteri_id` int(11) NOT NULL,
  `nakliyeistek_nerden` varchar(45) NOT NULL,
  `nakliyeistek_nereye` varchar(45) NOT NULL,
  `nakliyeistek_tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `u_odeme`
--

CREATE TABLE IF NOT EXISTS `u_odeme` (
  `uodeme_id` int(11) NOT NULL,
  `musteri_id` int(11) NOT NULL,
  `uodeme_ad` varchar(45) NOT NULL,
  `uodeme_tarih` varchar(45) NOT NULL,
  `uodeme_tutar` int(11) NOT NULL,
  `uodeme_banka` int(45) NOT NULL,
  `uodeme_islemno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`a_id`);

--
-- Tablo için indeksler `a_araclar`
--
ALTER TABLE `a_araclar`
  ADD PRIMARY KEY (`arac_id`);

--
-- Tablo için indeksler `a_mesaj`
--
ALTER TABLE `a_mesaj`
  ADD PRIMARY KEY (`mesaj_id`),
  ADD KEY `musteri_id` (`musteri_id`),
  ADD KEY `musteri_id_2` (`musteri_id`);

--
-- Tablo için indeksler `a_nakliyatlar`
--
ALTER TABLE `a_nakliyatlar`
  ADD PRIMARY KEY (`nakliyat_id`);

--
-- Tablo için indeksler `a_odemeistek`
--
ALTER TABLE `a_odemeistek`
  ADD PRIMARY KEY (`odemeistek_id`);

--
-- Tablo için indeksler `a_soforler`
--
ALTER TABLE `a_soforler`
  ADD PRIMARY KEY (`sofor_id`),
  ADD UNIQUE KEY `sofor_id_UNIQUE` (`sofor_id`);

--
-- Tablo için indeksler `bankalar`
--
ALTER TABLE `bankalar`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `musteriler`
--
ALTER TABLE `musteriler`
  ADD PRIMARY KEY (`musteri_id`),
  ADD UNIQUE KEY `m_id_UNIQUE` (`musteri_id`);

--
-- Tablo için indeksler `sehirler`
--
ALTER TABLE `sehirler`
  ADD PRIMARY KEY (`sehir_id`);

--
-- Tablo için indeksler `u_mesaj`
--
ALTER TABLE `u_mesaj`
  ADD PRIMARY KEY (`mesaj_id`);

--
-- Tablo için indeksler `u_nakliyeistek`
--
ALTER TABLE `u_nakliyeistek`
  ADD PRIMARY KEY (`nakliyeistek_id`),
  ADD KEY `musteri_id` (`musteri_id`);

--
-- Tablo için indeksler `u_odeme`
--
ALTER TABLE `u_odeme`
  ADD PRIMARY KEY (`uodeme_id`),
  ADD KEY `musteri_id` (`musteri_id`),
  ADD KEY `uodeme_banka` (`uodeme_banka`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `a_araclar`
--
ALTER TABLE `a_araclar`
  MODIFY `arac_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `a_mesaj`
--
ALTER TABLE `a_mesaj`
  MODIFY `mesaj_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `a_nakliyatlar`
--
ALTER TABLE `a_nakliyatlar`
  MODIFY `nakliyat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `a_odemeistek`
--
ALTER TABLE `a_odemeistek`
  MODIFY `odemeistek_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `a_soforler`
--
ALTER TABLE `a_soforler`
  MODIFY `sofor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Tablo için AUTO_INCREMENT değeri `bankalar`
--
ALTER TABLE `bankalar`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `musteriler`
--
ALTER TABLE `musteriler`
  MODIFY `musteri_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `u_mesaj`
--
ALTER TABLE `u_mesaj`
  MODIFY `mesaj_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `u_nakliyeistek`
--
ALTER TABLE `u_nakliyeistek`
  MODIFY `nakliyeistek_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `u_odeme`
--
ALTER TABLE `u_odeme`
  MODIFY `uodeme_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `a_mesaj`
--
ALTER TABLE `a_mesaj`
  ADD CONSTRAINT `a_mesaj_ibfk_1` FOREIGN KEY (`musteri_id`) REFERENCES `musteriler` (`musteri_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `u_nakliyeistek`
--
ALTER TABLE `u_nakliyeistek`
  ADD CONSTRAINT `u_nakliyeistek_ibfk_1` FOREIGN KEY (`musteri_id`) REFERENCES `musteriler` (`musteri_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `u_odeme`
--
ALTER TABLE `u_odeme`
  ADD CONSTRAINT `u_odeme_ibfk_1` FOREIGN KEY (`musteri_id`) REFERENCES `musteriler` (`musteri_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
