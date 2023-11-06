-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:12 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `nomor` int(11) NOT NULL,
  `destinasi` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `biaya` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`nomor`, `destinasi`, `kategori`, `keterangan`, `alamat`, `biaya`) VALUES
(1, 'Sam Poo Kong', 'Wisata Religi', 'Kelenteng Gedung Kuno Sam Poo Kong yaitu bekas tempat persinggahan dan pendaratan pertama seorang Laksamana Tiongkok beragama Islam yang bernama Zheng He/Cheng Ho, yang juga dikenal dengan nama Sam Poo. Tidak semua anak buah kapal beragama Islam.', 'Jl. Simongan No.129, Bongsari, Kec. Semarang Barat, Kota Semarang, Jawa Tengah\r\n', 'Rp 35.000 - Rp 45.000'),
(2, 'Vihara Buddhagaya Watugong', 'Wisata Religi', 'Vihara Buddhagaya Watugong atau juga dikenal dengan nama Vihara Buddhagaya merupakan salah satu tempat ibadah agama Buddha yang terletak di Pudakpayung, Banyumanik, Semarang Jawa Tengah. Komplek Vihara Buddhagaya Watugong tersebut terdiri dari dua bangunan induk utama yaitu Pagoda Avalokitesvara dan Dhammasala serta beberapa bangunan lain. Pagoda Avalokitesvara adalah bangunan yang mempunyai nilai artistik tinggi, dengan tinggi mencapai 45 meter dan ditetapkan sebagai pagoda tertinggi di Indones', 'Jl. Perintis Kemerdekaan Pudakpayung, Banyumanik, Semarang Jawa Tengah', 'Gratis'),
(3, 'Lunpia Gang Lombok', 'Wisata Kuliner', 'Lumpia Gang Lombok kuliner legendaris di kota Semarang. Kuliner ini merupakan jajanan yang memadukan cita rasa Tionghoa dan Jawa, berbahan dasar rebung dan tepung. Dalam penyajiannya dilengkapi dengan saus coklat, acar dan dau bawang yang menambah cita rasa lumpia menjadi lebih lezat!Lumpia Gang Lombok adalah aliran pertama jajanan lumpia di kota Semarang, yang sangat terkenal dan selalu ramai diminati para wisatawan. Lunpia Gang Lombok menyediakan 2 varian lunpia, yaitu lunpia basah dan lunpia ', 'Jl. Gg. Lombok No.11, Purwodinatan, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah', 'Rp 20.000/pcs'),
(4, 'Bandeng Juwana Erlina', 'Wisata Kuliner', 'Toko Bandeng Juwana Erlina bisa dikatakan sebagai toko penjual bandeng presto terenak kedua di Semarang. Tak hanya rasanya yang lezat, pengemasan yang dibungkus menggunakan sangkar juga menjadi salah satu yang diunggulkan di sini, karena mengutamakan keamanan. Di sini kalian juga dapat menyantap sepiring bandeng asap dengan atau tanpa tulang dengan tambahan nasi hangat yang begitu menggugah selera. Buka setiap hari mulai pukul 07.00-20.00', 'Jl. Pandanaran No. 57, Randusari, Kec. Semarang Selatan, Kota Semarang, Jawa Tengah', 'Rp 71.000/kg'),
(5, 'Wingko Babad Cap Kereta Api', 'Wisata Kuliner', 'Semula wingko babat olahan Loe Lan Hwa dan suaminya hanya dibungkus kertas tanpa merek. Setelah banyak pembeli yang bertanya, akhirnya wingko babat itu diberi nama \'Cap Spoor\'. Ide nama dan logo itu dari gambar sampul buku saran di gerbong restorasi atau kereta makan. Sebab, D Mulyono suami Loe Lan Hwa bekerja di bagian restorasi kereta.Seiring perkembangan Bahasa Indonesia, \'Cap Spoor\' kemudian diganti \'Cap Kereta Api\' (brosur wingko babad cap kereta api, 2020). Karena banyak pelanggannya yang ', 'Jl. Cendrawasih No.14, Purwodinatan Timur, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah', 'Rp 57.000 (10 pcs original)'),
(7, 'Lawang Sewu', 'Wisata Sejarah', 'Secara etimologis kata Lawang Sewu berasal dari bahasa jawa yang berarti “pintu seribu”. Penyebutan Lawang Swu didasarkan pada banyaknya jendela dan pintu yang terdapat di bangunan ini walaupun jumlahnya tidak menyentuh angka seribu pintu. Pada masa kolonialisme Belanda, gedung ini bernama Het administratiegebouw van de Nederlandsch-Indische Spoorweg-Maatschappij, sebuah gedung perkantoran untuk mengurus perkereta apian milik Nederlandsch-Indische Spoorweg Maatschappij (NIS). Saat ini bangunan L', 'Jl. Pemuda No.160, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah', 'Rp 20.000'),
(8, 'Kota Lama', 'Wisata Sejarah', 'Kota Lama Semarang merupakan tempat wisata yang memiliki julukan Little Netherland. Kawasan ini dinamai Kota Lama karena memang bangunan-bangunan di wilayah tersebut memiliki gaya arsitektur zaman dulu. Tempat wisata ini menawarkan indahnya bangunan-bangunan bergaya arsitektur Eropa tahun 1700-an. Bangunan-bangunan tersebut adalah saksi bisu sejarah masa kolonial Belanda. Selain itu, terdapat kanal-kanal air yang dibangun oleh pemerintah kolonial di sekitar Kota Lama Semarang ini. Di kawasan ini', 'Jl. Tj. Mas, Kec. Semarang Utara, Kota Semarang, Jawa Tengah', 'Gratis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`nomor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
