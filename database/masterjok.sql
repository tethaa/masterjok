-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Agu 2017 pada 13.57
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bolt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(12, 'BOLT1', 'Jok Model A1', 'Keterangan detail model, bahan, desain jok mobil', 5000, 2, 10000, '2017-08-07 03:25:43', 'tetha9@gmail.com'),
(13, 'BOLT32', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 200, 1, 200, '2017-08-07 03:25:43', 'tetha9@gmail.com'),
(14, 'BOLT222', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 200, 1, 200, '2017-08-07 03:25:43', 'tetha9@gmail.com'),
(15, 'BOLT2', 'Jok Model A2', 'Keterangan detail model, bahan, desain jok mobil', 200, 1, 200, '2017-08-08 06:24:28', 'tetha9@gmail.com'),
(16, 'BOLT32', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 200, 2, 400, '2017-08-08 06:24:29', 'tetha9@gmail.com'),
(17, 'BOLT1', 'Jok Model A1', 'Keterangan detail model, bahan, desain jok mobil', 5000, 1, 5000, '2017-08-08 06:30:48', 'admin@admin.com'),
(18, 'BOLT1asd', 'Jok Model A1', 'Keterangan detail model, bahan, desain jok mobil', 5000, 1, 5000, '2017-08-08 06:30:48', 'admin@admin.com'),
(19, 'BOLT3', 'Jok Model A3', 'Keterangan detail model, bahan, desain jok mobil', 1000, 1, 1000, '2017-08-11 08:56:29', 'tetha9@gmail.com'),
(20, 'BOLT32', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 200, 1, 200, '2017-08-11 08:56:29', 'tetha9@gmail.com'),
(21, 'BOLT2', 'Jok Model A2', 'Keterangan detail model, bahan, desain jok mobil', 200, 1, 200, '2017-08-11 08:56:30', 'tetha9@gmail.com'),
(22, 'BOLT32', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 200, 1, 200, '2017-08-11 11:37:56', 'tetha9@gmail.com'),
(23, 'BOLT2', 'Jok Model A2', 'Keterangan detail model, bahan, desain jok mobil', 200, 1, 200, '2017-08-11 11:37:56', 'tetha9@gmail.com'),
(24, 'BOLT3233', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 200, 1, 200, '2017-08-11 11:37:56', 'tetha9@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'BOLT1', 'Jok Model A1', 'Keterangan detail model, bahan, desain jok mobil', 'jok_modelA.jpg', 23, 5000),
(2, 'BOLT2', 'Jok Model A2', 'Keterangan detail model, bahan, desain jok mobil', 'jok_modelB.jpg', 4, 200),
(3, 'BOLT3', 'Jok Model A3', 'Keterangan detail model, bahan, desain jok mobil', 'jok_modelC.jpg', 33, 1000),
(5, 'BOLT222', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 'jok_modelD.jpg', 6, 200),
(7, 'BOLT32', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 'jok_modelE.jpg', 2, 200),
(8, 'BOLT323', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 'jok_modelD.jpg', 7, 200),
(9, 'BOLT3232', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 'jok_modelD.jpg', 7, 200),
(10, 'BOLT3233', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 'jok_modelE.jpg', 3, 200),
(11, 'BOLT323300', 'Jok Model A4', 'Keterangan detail model, bahan, desain jok mobil', 'jok_modelE.jpg', 3, 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Steve', 'Jobs', 'Infinite Loop', 'California', 95014, 'sjobs@apple.com', 'steve', 'user'),
(2, 'Admin', 'Webmaster', 'Internet', 'Electricity', 101010, 'admin@admin.com', 'admin', 'admin'),
(3, 'Tetha', 'Valianta', 'Badas', 'Badas', 5555, 'tetha9@gmail.com', 'juara!!!', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
