-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 04:04 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '01-07-2020 03:25:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Buku', 'Cetak berbagai jenis buku dengan harga terbaik', '2022-05-05 12:44:40', NULL),
(2, 'Kemasan', 'Cetak kemasan untuk kebutuhan usaha anda', '2022-05-05 12:46:04', NULL),
(3, 'Stationary', 'Perlengkapan kantor anda', '2022-05-05 12:53:29', NULL),
(4, 'Promosi', 'Keperluan untuk promosi usaha anda', '2022-05-05 12:54:05', NULL),
(5, 'Undangan', 'Cetak undangan untuk moment berharga anda', '2022-05-05 12:57:56', NULL),
(6, 'Signage&Display', 'Cetak Banner, Spanduk, Poster, dll.', '2022-05-05 13:00:34', NULL),
(7, 'Souvenir', 'Menyediakan souvernir untuk perlengkapan acara anda', '2022-05-05 13:01:30', NULL),
(8, 'Tekstil', 'Menyediakan print di baju, jaket, topi,  tas, totebag, dll.', '2022-05-05 13:02:59', NULL),
(9, 'Dekorasi', 'Menyediakan kebutuhan untuk dekorasi ruangan dan lainnya.', '2022-05-05 14:10:09', '05-05-2022 07:50:45 PM'),
(17, 'Gelas', 'Cetak gelas dengan desain custom', '2022-06-19 10:49:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(9, 7, '45', 1, '2022-06-10 16:53:37', 'COD', 'Delivered'),
(10, 8, '2', 100, '2022-06-11 08:37:43', 'Internet Banking', NULL),
(11, 8, '74', 100, '2022-06-11 08:37:43', 'Internet Banking', NULL),
(12, 9, '55', 100, '2022-06-11 09:51:59', 'Debit / Credit card', NULL),
(13, 9, '67', 1, '2022-06-11 09:51:59', 'Debit / Credit card', NULL),
(14, 9, '78', 50, '2022-06-11 09:51:59', 'Debit / Credit card', NULL),
(15, 8, '2', 100, '2022-06-11 11:49:52', 'COD', NULL),
(16, 8, '48', 200, '2022-06-11 11:49:52', 'COD', NULL),
(17, 8, '2', 100, '2022-06-11 11:57:49', 'COD', NULL),
(18, 8, '48', 200, '2022-06-11 11:57:49', 'COD', NULL),
(19, 10, '2', 500, '2022-06-19 10:46:01', 'COD', 'in Process'),
(20, 10, '91', 10, '2022-06-19 10:46:01', 'COD', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(7, 7, 'in Process', 'oke', '2022-05-14 09:08:25'),
(8, 8, 'in Process', 'oke', '2022-05-14 09:09:08'),
(9, 9, 'Delivered', 'ok', '2022-06-11 06:15:37'),
(10, 19, 'in Process', 'diikirim hari ini', '2022-06-19 10:47:10'),
(11, 20, 'in Process', 'dikirim hari ini', '2022-06-19 10:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'Buku Biografi', 'Kertas', 20000, 30000, 'Cetak buku biografi dengan kualitas dan harga terbaik.', 'biografi1.jpg', 'biografi3.jpg', 'biografi2.jpg', 0, 'Tersedia', '2022-05-04 09:44:36', NULL),
(2, 5, 35, 'Undangan Pernikahan Klasik', 'Kertas Hammer', 3000, 5000, 'Cetak undangan pernikahan dengan bahan berkualitas, desain klasik, dan harga terjangkau untuk melengkapi keperluan acara pernikahan anda. Undangan pernikahan bertema klasik bisa disesuaikan dengan tema adat/suku anda.<br>', 'undangan1.2.jpg', 'undangan1.3.jpg', 'undangan1.5.jpg', 0, 'Tersedia', '2022-05-07 12:45:51', NULL),
(3, 1, 2, 'Annual Report', 'Kertas ', 5000, 7000, '<div style=\"text-align: left;\">Cetak Annual Report untuk keperuan kantor anda dengan kualitas dan harga terbaik.</div>', 'anR1.jpg', 'anR.jpg', 'anR2.webp', 0, 'Tersedia', '2022-05-07 12:56:24', NULL),
(4, 1, 3, 'Company Profile', 'Kertas ', 3000, 5000, 'Cetak Company Profile untuk keperluaan perusahaan anda dengan kualitas dan harga terbaik.', 'comPRO1.jpg', 'comPRO3.jpg', 'comPRO2.jpg', 0, 'Tersedia', '2022-05-07 13:02:01', NULL),
(5, 1, 4, 'E-Book', 'File Electonic Book', 25000, 30000, 'Membuat E-book dan file lengkapnya akan diexport ke file PDF unutk dikirimkan dan siap dijual secara elektronik', 'ebook1.jpg', 'ebook2.jpg', 'ebook3.jpg', 0, 'Tersedia', '2022-06-10 10:46:17', NULL),
(6, 1, 5, 'Majalah ', 'Art paper', 7000, 12000, 'Mencetak majalah fashion, produk kosmetik, majalah anak, majalah kantor, pendidikan, dan sebagainya', 'majalah.JPG', 'majalah1.jpg', 'majalah2.jpg', 0, 'Tersedia', '2022-06-10 11:00:08', NULL),
(7, 1, 6, 'Materi presentasi', 'book paper', 3000, 5000, 'mencetak materi presentasi unutk kelancaran presentasi anda agar lebih maksimal', 'map.jpg', 'map1.jpg', 'map2.jpg', 0, 'Tersedia', '2022-06-10 11:14:35', NULL),
(8, 2, 7, 'Kemasan Makanan', 'Paper', 700, 2000, 'Cetak kemasan untuk usaha produk makanan anda dengan kualitas terbaik dan harga terbaik.', 'makanan1.jpg', 'makanan2.jpg', 'makanan3.jpg', 0, 'Tersedia', '2022-06-10 11:40:02', NULL),
(31, 2, 8, 'Hard Box', 'Kertas', 1500, 3000, 'Cetak Hard Box untuk kemasan produk anda demi kelancaran usaha dan dicetak dengan design kustom terbaik agar menarik konsumen&nbsp;', 'hardbox.jpg', 'hardbox1.jpg', 'hardbox2.jpg', 0, 'Tersedia', '2022-06-10 11:42:29', NULL),
(32, 2, 9, 'Soft Box', 'Kertas', 1200, 3000, 'Mencetak Soft Box untuk kemasan produk usaha anda dengan kualitas terbaik serta harga terbaik', 'softbox.jpg', 'softbox1.jpg', 'softbox2.jpg', 0, 'Tersedia', '2022-06-10 11:44:38', NULL),
(33, 2, 10, 'Corrugated Box ', 'kertas', 2000, 3500, 'Mencetak Corrugated Box untuk kemasan produk usaha anda agar lebih menarik konsumen, dicetak dengan kualitas terbaik dan harga terbaik', 'corru.jpg', 'corru1.jpg', 'corru2.jpg', 0, 'Tersedia', '2022-06-10 11:46:50', NULL),
(34, 2, 11, 'Kertas Label', 'kertas', 500, 1500, 'Mencetak Kertas Label unutk kerperluan produk usaha anda dengan kualitas terbaik dan harga terbaik juga, dicetak dengan design kustom yang akan menarik konsumen', 'label.png', 'label1.jpg', 'label2.png', 0, 'Tersedia', '2022-06-10 11:49:23', NULL),
(35, 2, 12, 'Produk Tag', 'Kertas', 700, 1500, 'Mencetak Produk Tag unutk kerperluan produk usaha anda dengan kualitas dan harga terbaik, dicetak dengan design yang bisa anda kustom untuk menarik konsumen<br>', 'tag.jpg', 'tag1.jpg', 'tag2.jpg', 0, 'Tersedia', '2022-06-10 11:51:44', NULL),
(36, 2, 13, 'Paper Bag', 'Kertas ', 4000, 5000, 'Mencetak Paper Bag untuk keperluan produk usaha anda dengan kualitas dan harga terbaik sebagai daya tarik konsumen', 'pbag.jpg', 'pbag1.jpg', 'pbag2.jpg', 0, 'Tersedia', '2022-06-10 11:53:52', NULL),
(37, 2, 14, 'Standing Pouch', 'Kertas ', 1500, 2500, 'Cetak Standing Pouch untuk kemasan produk usaha anda dengan kualitas dan harga terbaik sebagai daya tarik konsumen&nbsp;', 'pouch.jpg', 'pouch1.jpg', 'pouch2.jpg', 0, 'Tersedia', '2022-06-10 12:02:34', NULL),
(38, 2, 15, 'Food Tray', 'Kertas', 2500, 5000, 'Mencetak Food Tray untuk kemasan produk makanan anda dengan kualitas dan harga terbaik sebagai daya tarik konsumen', 'tray.jpg', 'tray1.jpg', 'tray2.jpg', 0, 'Tersedia', '2022-06-10 12:04:40', NULL),
(39, 2, 16, 'Paper Cup', 'Kertas sterofoam', 1500, 3000, 'Mencetak Paper Cup unutk kerperluan produk usaha anda dengan kualitas dan harga terbaik, dicetak dengan design yang bisa anda kustom untuk menarik konsumen', 'pcup1.jpg', 'pcup1.jpg', 'pcup2.jpg', 0, 'Tersedia', '2022-06-10 12:07:04', NULL),
(40, 2, 17, 'Paper Bowl', 'Kertas sterofoam', 1500, 3000, 'Mencetak Paper Bowl untuk kerperluan produk usaha anda dengan kualitas dan harga terbaik, dicetak dengan design yang bisa anda kustom untuk menarik konsumen<br>', 'bowl.jpg', 'bowl1.jpg', 'bowl2.jpg', 0, 'Tersedia', '2022-06-10 12:09:25', NULL),
(41, 2, 18, 'Sticker ', 'Kertas', 300, 1000, 'Mencetak Sticker untuk kerperluan produk usaha anda dengan kualitas dan harga terbaik, dicetak dengan design yang bisa anda kustom untuk menarik konsumen<br>', 'sticker1.jpg', 'sticker2.jpg', 'sticker3.jpg', 0, 'Tersedia', '2022-06-10 12:11:05', NULL),
(42, 2, 19, 'Sticker Kemasan ', 'Kertas', 300, 1000, 'Mencetak Sticker Kemasan untuk kerperluan produk usaha anda dengan kualitas dan harga terbaik, dicetak dengan design yang bisa anda kustom untuk menarik konsumen<br>', 'Skemasan.jpg', 'Skemasan1.jpg', 'Skemasan2.jpg', 0, 'Tersedia', '2022-06-10 12:12:29', NULL),
(43, 2, 20, 'Cage Tag', 'Kertas', 300, 1000, 'Mencetak Cake Tag untuk kerperluan produk usaha anda dengan kualitas dan harga terbaik, dicetak dengan design yang bisa anda kustom untuk menarik konsumen<br>', 'cake.jpg', 'cake1.jpg', 'cake2.jpg', 0, 'Tersedia', '2022-06-10 12:14:09', NULL),
(44, 3, 21, 'Map Folder', 'Kertas ', 2000, 3000, 'Mencetak Map Folder untuk kerperluan kantor ataupun akademisi pendidikan&nbsp;', 'map.jpg', 'map1.jpg', 'map2.jpg', 0, 'Tersedia', '2022-06-10 12:28:44', NULL),
(45, 3, 22, 'ID Card ', 'Kertas, PVC', 300, 1500, 'Mencetak ID Card untuk keperluan pribadi, kantor, ataupun usaha anda', 'id.jpg', 'id1.jpg', 'id2.jpg', 0, 'Tersedia', '2022-06-10 12:31:13', NULL),
(46, 3, 23, 'Agenda', 'Kertas', 7000, 10000, 'Menyediakan cetak agenda untuk keperluan pribadi, kantor, ataupun usaha anda', 'agenda.jpeg', 'agenda1.jpg', 'agenda2.jpg', 0, 'Tersedia', '2022-06-10 12:33:23', NULL),
(47, 3, 24, 'Amplop', 'Kertas', 1000, 2000, 'Mencetak Amplop untuk keperluan kantor, akademisi pendidikan, pribadi, ataupun usaha anda.', 'amplop.jpg', 'amplop1.jpg', 'amplop2.jpg', 0, 'Tersedia', '2022-06-10 12:34:55', NULL),
(48, 3, 25, 'Kartu Nama', 'Kertas, PVC', 300, 2000, 'Mencetak Kartu Nama untuk keperluan kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'nama.jpg', 'nama1.jpg', 'nama2.jpg', 0, 'Tersedia', '2022-06-10 12:41:15', NULL),
(49, 3, 26, 'Kartu Akses', 'kertas', 500, 1500, 'Mencetak Kartu Akses untuk keperluan kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'akses.jpg', 'akses1.jpg', 'akses2.jpg', 0, 'Tersedia', '2022-06-10 12:42:28', NULL),
(50, 3, 27, 'Nota NCR', 'Kertas', 3000, 5000, 'Mencetak Nota NCR untuk keperluan kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'nota.jpg', 'nota1.jpg', 'nota2.jpg', 0, 'Tersedia', '2022-06-10 12:43:55', NULL),
(51, 3, 28, 'Formulir', 'Kertas', 2000, 3000, 'Mencetak Formulir untuk keperluan kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'form.jpg', 'form1.jpg', 'form2.jpg', 0, 'Tersedia', '2022-06-10 12:45:09', NULL),
(52, 3, 29, 'Kop Surat', 'Kertas', 500, 1500, 'Mencetak Kop Surat untuk keperluan kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'kop2.jpg', 'kop1.jpg', 'kop.jpg', 0, 'Tersedia', '2022-06-10 12:46:28', NULL),
(53, 4, 30, 'Brosur', 'Kertas', 1500, 3000, 'Mencetak Brosur untuk segala keperluan informasi kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'brosur.jpg', 'brosur1.jpg', 'brosur2.jpg', 0, 'Tersedia', '2022-06-10 12:58:38', NULL),
(54, 4, 31, 'Kalender', 'Kertas', 7000, 10000, 'Mencetak Kalender untuk segala keperluan informasi kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'kalender.jpg', 'kalender1.jpg', 'kalender2.jpg', 0, 'Tersedia', '2022-06-10 13:01:49', NULL),
(55, 4, 32, 'Thankyou Card', 'Kertas', 1200, 2000, 'Mencetak Thankyou Card untuk segala keperluan informasi kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'tcard.jpg', 'tcard1.jpg', 'tcard2.jpg', 0, 'Tersedia', '2022-06-10 13:06:21', NULL),
(56, 4, 33, 'Member Card', 'kertas', 1000, 3000, 'Mencetak Member Card untuk segala keperluan informasi kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'member2.jpg', 'member.jpg', 'member1.jpg', 0, 'Tersedia', '2022-06-10 13:08:33', NULL),
(57, 4, 34, 'Katalog', 'Kertas', 5000, 7000, 'Mencetak Katalog untuk segala keperluan informasi kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'katalog.jpg', 'katalog1.jpg', 'katalog2.jpg', 0, 'Tersedia', '2022-06-10 13:10:45', NULL),
(58, 4, 55, 'Menu', 'Kertas ', 2000, 4000, 'Mencetak Menu untuk segala keperluan usaha anda dengan design yang menarik sebagai daya tarik konsumen<br>', 'menu.jpg', 'menu1.jpg', 'menu2.jpg', 0, 'Tersedia', '2022-06-10 13:14:52', NULL),
(59, 4, 56, 'Table Mat', 'kertas cts', 1000, 2000, 'Mencetak Tablemat untuk segala keperluan informasi kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'tmat.jpg', 'tmat1.jpg', 'tmat2.jpg', 0, 'Tersedia', '2022-06-10 13:19:35', NULL),
(60, 4, 57, 'Coaster', 'kayu', 3000, 5000, 'Mencetak Coaster untuk segala keperluan informasi kantor, akademisi pendidikan, pribadi, ataupun usaha anda.<br>', 'coaster.jpg', 'coaster1.jpg', 'coaster2.jpg', 0, 'Tersedia', '2022-06-10 13:22:18', NULL),
(61, 4, 58, 'Hanging mobile', 'Kertas', 600, 1500, 'Memcetak Hanging mobile untuk keperluan kantor, keperluan pribadi, dan usaha anda', 'hm1.jpg', 'hm.jpg', 'hm2.jpg', 0, 'Tersedia', '2022-06-10 15:09:08', NULL),
(62, 4, 71, 'Booklet', 'Kertas', 5000, 7000, 'Mencetak Booklet untuk keperluan kantor, usaha, dan keperluan pribadi anda dengan kualitas dan harga terbaik', 'booklet.jpg', 'booklet1.jpg', 'booklet2.jpg', 0, 'Tersedia', '2022-06-10 15:11:58', NULL),
(63, 5, 36, 'Undangan Anniversary Kantor', 'Kertas Hammer', 2000, 3000, 'Mencetak Undangan untuk Anniversary kantor anda', 'anniv1.jpg', 'anniv2.jpeg', 'anniv3.jpg', 0, 'Tersedia', '2022-06-10 15:14:01', NULL),
(64, 5, 37, 'Undangan Ulangtahun', 'Kertas Hammer', 1500, 2500, 'Mencetak undangan untuk memperingati acara ulangtahun spesial anda', 'hbd1.jpg', 'hbd2.jpg', 'hbd3.webp', 0, 'Tersedia', '2022-06-10 15:15:42', NULL),
(65, 5, 38, 'Undangan Natal dan Tahun Baru', 'Kertas ', 1500, 3000, 'Mencetak Undangan untuk acara Natal dan Tahun Baru yang sangat spesial', 'natal2.jpg', 'natal1.jpg', 'natal.jpg', 0, 'Tersedia', '2022-06-10 15:19:57', NULL),
(66, 5, 39, 'Undangan Peresmian Perusahaan atau Kantor', 'Kertas', 1000, 2000, 'Mencetak Undangan untuk acara peresmian perusahaan, kantor, dan usaha anda', 'Uperusahaan1.jpg', 'Uperusahaan2.jpg', 'Uperusahaan3.jpg', 0, 'Tersedia', '2022-06-10 15:22:01', NULL),
(67, 6, 59, 'X-Banner', 'Albatros', 40000, 50000, 'Mencetak X-Banner Untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.', 'xbanner.jpg', 'xbanner1.jpg', 'xbanner2.jpg', 0, 'Tersedia', '2022-06-10 15:24:15', NULL),
(68, 6, 60, 'Roll Up Banner', 'Albatros', 40000, 50000, 'Mencetak Roll Up Banner unutk keperluan pribadi, kelompok, kantor, akademisi pendidikan.', 'rollup.jpg', 'rollup1.jpg', 'rollup2.jpg', 0, 'Tersedia', '2022-06-10 15:26:04', NULL),
(69, 6, 61, 'Tripod Banner', 'Albatros', 40000, 50000, 'Mencetak Roll Up Banner untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.', 'tripod.jpg', 'tripod1.jpg', 'tripod2.jpg', 0, 'Tersedia', '2022-06-10 15:28:13', NULL),
(70, 6, 62, 'Spanduk', 'Albatros', 40000, 50000, 'Mencetak Spanduk untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.', 'spanduk.jpg', 'spanduk1.jpg', 'spanduk2.jpg', 0, 'Tersedia', '2022-06-10 15:29:35', NULL),
(71, 6, 63, 'Poster', 'Alabtros', 30000, 40000, 'Mencetak Poster untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'poster.jpg', 'poster1.jpg', 'poster2.jpg', 0, 'Tersedia', '2022-06-10 15:30:48', NULL),
(72, 7, 64, 'E-Money', 'PVC', 5000, 7000, 'Mencetak E-Money untuk keperluan perusahaan,&nbsp; kantor, dan akademisi pendidikan.<br>', 'emoney2.jpg', 'emoney1.jpg', 'emoney.jpg', 0, 'Tersedia', '2022-06-10 15:34:14', NULL),
(73, 7, 65, 'Tas Spundbond', 'Spundbond', 5000, 10000, 'Menyediakan dan mencetak Tas Spundbond untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'tas.jpg', 'tas1.jpg', 'tas2.jpg', 0, 'Tersedia', '2022-06-10 15:37:07', NULL),
(74, 7, 66, 'Gantungan Kunci', 'mika,akrilik', 4000, 7000, 'Mencetak Gantungan Kunci untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'ganci.jpg', 'ganci1.jpg', 'ganci2.jpg', 0, 'Tersedia', '2022-06-10 15:40:52', NULL),
(75, 7, 67, 'Mug', 'Keramik,Kaca', 20000, 30000, 'Menyediakan dan mencetak Mug untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'mug.jpg', 'mug1.jpg', 'mug2.jpg', 0, 'Tersedia', '2022-06-10 15:51:22', NULL),
(76, 7, 68, 'Pin', 'mika,akrilik', 5000, 7000, 'Mencetak Pin untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'pin.jpg', 'pin1.jpg', 'pin2.jpg', 0, 'Tersedia', '2022-06-10 15:52:31', NULL),
(77, 7, 69, 'Pulpen', 'Plastik', 2000, 3000, 'Mencetak Pulpen untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'pen.jpg', 'pen1.jpg', 'pen2.jpg', 0, 'Tersedia', '2022-06-10 15:54:18', NULL),
(78, 7, 70, 'Tumblr', 'plastik,kaca,stainless steel', 20000, 30000, 'Mencetak Tumblr untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'tumblr.jpg', 'tumblr1.jpg', 'tumblr2.jpg', 0, 'Tersedia', '2022-06-10 15:56:39', NULL),
(79, 7, 72, 'Jam dinding', 'Kaca,Plastik', 35000, 50000, 'Menyediakan dan mencetak Jam dinding untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'jam.jpg', 'jam2.jpg', 'jam1.jpg', 0, 'Tersedia', '2022-06-10 15:58:21', NULL),
(80, 7, 73, 'Payung', 'Polyester', 30000, 40000, 'Menyediakan dan Mencetak Payung untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'payung.jpg', 'payung1.jpg', 'payung2.jpg', 0, 'Tersedia', '2022-06-10 16:00:01', NULL),
(81, 7, 74, 'Dompet', 'Kain', 7000, 10000, 'Menyediakan dan Mencetak Dompet untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'dompet.jpg', 'dompet1.jpg', 'dompet2.jpg', 0, 'Tersedia', '2022-06-10 16:01:31', NULL),
(82, 8, 75, 'Kaos', 'Kain', 40000, 50000, 'Menyediakan dan mencetak sablon Kaos untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'kaos.jpg', 'kaos1.jpg', 'kaos2.jpg', 0, 'Tersedia', '2022-06-10 16:14:50', NULL),
(83, 8, 76, 'Taplak Meja', 'Kain', 20000, 30000, 'Menyediakan dan mencetak sablon Taplak Meja untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'meja.jpg', 'meja2.jpg', 'meja1.jpg', 0, 'Tersedia', '2022-06-10 16:15:57', NULL),
(84, 8, 77, 'Apron', 'Kain', 30000, 40000, 'Menyediakan dan mencetak sablon Apron untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'apron.jpg', 'apron1.jpg', 'apron2.jpg', 0, 'Tersedia', '2022-06-10 16:16:59', NULL),
(85, 8, 78, 'Totebag', 'Kain', 15000, 25000, 'Menyediakan dan mencetak sablon totebag untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'bag.jpg', 'bag1.jpg', 'bag2.jpg', 0, 'Tersedia', '2022-06-10 16:19:17', NULL),
(86, 8, 79, 'Pouch', 'Kain', 7000, 15000, 'Menyediakan dan mencetak sablon Pouch untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'spouch.jpg', 'spouch1.jpg', 'spouch2.jpg', 0, 'Tersedia', '2022-06-10 16:20:34', NULL),
(87, 8, 80, 'Topi', 'Kain', 20000, 30000, 'Menyediakan dan mencetak sablon Topi untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'topi.jpg', 'topi1.png', 'topi2.webp', 0, 'Tersedia', '2022-06-10 16:21:51', NULL),
(88, 8, 81, 'Jaket', 'Kain', 150000, 200000, 'Menyediakan dan mencetak sablon Jaket untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'jaket.jpg', 'jaket1.jpg', 'jaket2.jpg', 0, 'Tersedia', '2022-06-10 16:23:04', NULL),
(89, 9, 82, 'Kanvas Print', 'Kanvas', 30000, 50000, 'Mencetak kanvas print untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'canvas1.jpg', 'canvas3.jpg', 'canvas1.jpg', 0, 'Tersedia', '2022-06-10 16:37:48', NULL),
(90, 9, 83, 'Akrilik Paint', 'Akrilik Paint', 20000, 30000, 'Menyediakan dan mencetak akrilik paint untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'akrilik1.jpg', 'akrilik.jpg', 'akrilik2.jpg', 0, 'Tersedia', '2022-06-10 16:41:27', NULL),
(91, 9, 84, 'Photo Print', 'Kertas Photo', 20000, 30000, 'Menyediakan dan mencetak Photo Print untuk keperluan pribadi, kelompok, kantor, dan akademisi pendidikan.<br>', 'poto.jpg', 'poto1.jpg', 'poto2.jpg', 0, 'Tersedia', '2022-06-10 16:44:45', NULL),
(92, 17, 102, 'Gelas Keramik', 'Keramik', 15000, 20000, 'Cetak gelas keramik dengan harga terbaik dan kualitas terjamin', 'akrilik1.jpg', 'akrilik2.jpg', 'akrilik1.jpg', 0, 'Tersedia', '2022-06-19 10:51:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Biografi', '2022-05-05 13:05:18', NULL),
(2, 1, 'Annual Report', '2022-05-05 13:05:24', NULL),
(3, 1, 'Company Profile', '2022-05-05 13:05:30', NULL),
(4, 1, 'E-Book', '2022-05-05 13:05:49', NULL),
(5, 1, 'Majalah', '2022-05-05 13:06:07', NULL),
(6, 1, 'Materi Presentasi', '2022-05-05 13:06:15', NULL),
(7, 2, 'Kemasan Makanan', '2022-05-05 13:08:03', NULL),
(8, 2, 'Hard Box', '2022-05-05 13:08:17', NULL),
(9, 2, 'Soft Box', '2022-05-05 13:08:27', NULL),
(10, 2, 'Corrugated Box', '2022-05-05 13:08:42', NULL),
(11, 2, 'Kertas Label', '2022-05-05 13:09:03', NULL),
(12, 2, 'Produk Tag', '2022-05-05 13:09:16', NULL),
(13, 2, 'Paper Bag', '2022-05-05 13:09:28', NULL),
(14, 2, 'Standing Pouch', '2022-05-05 13:09:39', NULL),
(15, 2, 'Food Tray', '2022-05-05 13:09:53', NULL),
(16, 2, 'Paper Cup', '2022-05-05 13:10:04', NULL),
(17, 2, 'Paper Bowl', '2022-05-05 13:10:14', NULL),
(18, 2, 'Sticker ', '2022-05-05 13:10:27', NULL),
(19, 2, 'Sticker Kemasan', '2022-05-05 13:10:39', NULL),
(20, 2, 'Cake Tag', '2022-05-05 13:10:53', NULL),
(21, 3, 'Map Folder', '2022-05-05 13:20:54', NULL),
(22, 3, 'ID Card', '2022-05-05 13:21:06', NULL),
(23, 3, 'Agenda', '2022-05-05 13:21:17', NULL),
(24, 3, 'Amplop', '2022-05-05 13:21:29', NULL),
(25, 3, 'Kartu Nama', '2022-05-05 13:21:45', NULL),
(26, 3, 'Kartu Akses', '2022-05-05 13:21:55', NULL),
(27, 3, 'Nota NCR', '2022-05-05 13:22:04', NULL),
(28, 3, 'Formulir', '2022-05-05 13:22:16', NULL),
(29, 3, 'Kop Surat', '2022-05-05 13:22:27', NULL),
(30, 4, 'Brosur', '2022-05-05 13:23:48', NULL),
(31, 4, 'Kalender', '2022-05-05 13:23:58', NULL),
(32, 4, 'Thankyou Card', '2022-05-05 13:24:09', NULL),
(33, 4, 'Member Card', '2022-05-05 13:24:27', NULL),
(34, 4, 'Katalog', '2022-05-05 13:24:39', NULL),
(35, 5, 'Undangan Pernikahan', '2022-05-05 13:11:41', NULL),
(36, 5, 'Undangan Anniversary Kantor', '2022-05-05 13:12:11', NULL),
(37, 5, 'Undangan Ulangtahun', '2022-05-05 13:18:39', NULL),
(38, 5, 'Undangan Natal&Tahun Baru', '2022-05-05 13:19:01', NULL),
(39, 5, 'Undangan Peresmian Kantor', '2022-05-05 13:20:05', NULL),
(55, 4, 'Menu', '2022-05-05 13:25:24', NULL),
(56, 4, 'Table Mat', '2022-05-05 13:25:36', NULL),
(57, 4, 'Coaster', '2022-05-05 13:25:51', NULL),
(58, 4, 'Hanging Mobile', '2022-05-05 13:27:38', NULL),
(59, 6, 'X-Banner', '2022-05-05 13:28:09', NULL),
(60, 6, 'Roll Up Banner', '2022-05-05 13:28:22', NULL),
(61, 6, 'Tripod Banner', '2022-05-05 13:33:59', NULL),
(62, 6, 'Spanduk', '2022-05-05 13:34:25', NULL),
(63, 6, 'Poster', '2022-05-05 13:34:37', NULL),
(64, 7, 'E-Money', '2022-05-05 13:36:08', NULL),
(65, 7, 'Tas Spundbond', '2022-05-05 13:36:36', NULL),
(66, 7, 'Gantungan Kunci', '2022-05-05 13:37:01', NULL),
(67, 7, 'Mug', '2022-05-05 13:37:12', NULL),
(68, 7, 'Pin', '2022-05-05 13:37:30', NULL),
(69, 7, 'Pulpen', '2022-05-05 13:37:41', NULL),
(70, 7, 'Tumblr', '2022-05-05 13:37:55', NULL),
(71, 4, 'Booklet', '2022-05-05 13:24:51', NULL),
(72, 7, 'Jam Dinding', '2022-05-05 13:38:35', NULL),
(73, 7, 'Payung', '2022-05-05 13:38:52', NULL),
(74, 7, 'Dompet', '2022-05-05 13:39:13', NULL),
(75, 8, 'Kaos', '2022-05-05 13:39:36', NULL),
(76, 8, 'Taplak Meja', '2022-05-05 13:39:49', NULL),
(77, 8, 'Apron', '2022-05-05 13:40:03', '10-06-2022 09:54:57 PM'),
(78, 8, 'Totebag', '2022-05-05 13:40:20', NULL),
(79, 8, 'Pouch', '2022-05-05 13:40:31', NULL),
(80, 8, 'Topi', '2022-05-05 13:40:40', NULL),
(81, 8, 'Jaket', '2022-05-05 13:41:02', NULL),
(82, 9, 'Kanvas Print', '2022-05-05 14:26:40', NULL),
(83, 9, 'Akrilik Paint', '2022-05-05 14:28:00', NULL),
(84, 9, 'Photo Print', '2022-05-05 14:28:19', NULL),
(102, 17, 'Gelas keramik', '2022-06-19 10:49:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'jesicaaulia28@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-14 08:50:06', NULL, 1),
(28, 'jesica.aulia.pardede@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 16:50:23', NULL, 0),
(29, 'jejecans@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 16:50:37', NULL, 0),
(30, 'dindabcd@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 16:51:41', NULL, 1),
(31, 'dindabcd@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-11 05:52:42', '11-06-2022 01:44:04 PM', 1),
(32, 'enjelita@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-11 08:35:45', NULL, 0),
(33, 'enjellita@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-11 08:36:13', '11-06-2022 03:19:15 PM', 1),
(34, 'jesica.aulia.pardede@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-11 09:50:18', '11-06-2022 05:10:48 PM', 1),
(35, 'enjellita@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-11 11:48:08', NULL, 1),
(36, 'jejecans8@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-19 10:43:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` int(14) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'jesica aulia pardede', 'jesicaaulia28@gmail.com', 822755464, 'e10adc3949ba59abbe56e057f20f883e', 'jl.Pembangunan', 'Medan', 'Sumatera Utara', NULL, 'medan', 'sumatera utara', 'medan', 20135, '2022-05-14 08:49:51', NULL),
(7, 'dinda', 'dindabcd@gmail.com', 896759603, 'e10adc3949ba59abbe56e057f20f883e', 'jl.sentosa', 'Sumatera Utara', 'Medan', NULL, 'Jl.sentosa', 'Sumatera Utara', 'Medan', 20153, '2022-06-10 16:51:15', NULL),
(8, 'enjelita', 'enjellita@gmail.com', 822653262, 'e10adc3949ba59abbe56e057f20f883e', 'Delitua', 'Sumatera Utara', 'Medan', 20166, 'Delitua', 'Sumatera Utara', 'Medan', 20166, '2022-06-11 08:35:29', NULL),
(9, 'jeje', 'jesica.aulia.pardede@gmail.com', 822755464, 'e10adc3949ba59abbe56e057f20f883e', 'jl.pembangunan', 'Sumatera Utara', 'Medan', 20153, 'Jl.Pembangunan', 'Sumatera Utara', 'Medan', 20153, '2022-06-11 09:50:03', NULL),
(10, 'jesica aulia', 'jejecans8@gmail.com', 822756683, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 10:43:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(2, 7, 8, '2022-06-10 16:52:08'),
(3, 7, 4, '2022-06-10 16:52:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
