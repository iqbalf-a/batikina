-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2019 at 10:46 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batikina`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `trx_id` varchar(128) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `address` varchar(128) NOT NULL,
  `postcode` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `receiver` varchar(128) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `buyer_id`, `trx_id`, `subtotal`, `cost`, `address`, `postcode`, `phone`, `receiver`, `total`, `status`, `date_created`) VALUES
(20, 7, '5ddce34bcc41e', 700000, 20000, 'sdf', '68465', '987896', 'sadasd', 720000, 0, 1574778795),
(21, 14, '5ddd4c5c4f9b7', 3500000, 20000, 'Perum. Bumi Mondoroko Raya Blok I/5,Kec. Singosari,Kel. Banjararum, Kab. Malang\r\n-', '65153', '081945920003', 'Uqi', 3520000, 0, 1574805692),
(23, 1, '5dde09d91808e', 1000000, 20000, 'asd', '68465', '081554094173', 'Ibul', 1020000, 0, 1574854201),
(24, 17, '5dde178e4c86b', 700000, 20000, 'kepanjen', '65163', '09264656', 'busthomi', 720000, 0, 1574857710),
(25, 18, '5dde1fd26c980', 14950000, 20000, 'Malang', '13769', '085859988554', 'Bujang', 14970000, 0, 1574859826),
(26, 7, '5de2ba94d8135', 850000, 20000, 'asdsa', '68465', '34324', 'Ibul', 870000, 0, 1575161588),
(28, 7, '5de2beb0bf2cc', 500000, 20000, 'asd', '68465', '081554094173', 'sadasd', 520000, 0, 1575162640),
(29, 7, '5de2bff3229ce', 500000, 20000, 'asd', '68465', '34324', 'sad', 520000, 0, 1575162963),
(30, 19, '5de7476011819', 1000000, 20000, 'neraka jahanan no.1 dekat surga ', '123', '0912849', 'Azaziel', 1020000, 0, 1575459776);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `trx_id` varchar(128) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `cart_id`, `trx_id`, `buyer_id`, `seller_id`, `product_id`, `status`) VALUES
(27, 51, '5ddce34bcc41e', 7, 1, 2, 0),
(28, 52, '5ddd4c5c4f9b7', 14, 1, 1, 0),
(30, 56, '5dde09d91808e', 1, 17, 6, 0),
(31, 57, '5dde178e4c86b', 17, 1, 2, 0),
(32, 58, '5dde1fd26c980', 18, 17, 5, 0),
(33, 59, '5de2ba94d8135', 7, 1, 1, 0),
(34, 60, '5de2ba94d8135', 7, 1, 2, 0),
(36, 62, '5de2beb0bf2cc', 7, 1, 1, 0),
(37, 63, '5de2bff3229ce', 7, 1, 1, 0),
(38, 64, '5de7476011819', 19, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upload_product`
--

CREATE TABLE `upload_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `details` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_product`
--

INSERT INTO `upload_product` (`id`, `user_id`, `name`, `price`, `image`, `details`) VALUES
(1, 1, 'Batik Solo', 500000, '5dd6b7d2e4718.jpg', 'Murah , awet, Mabar kuy'),
(2, 1, 'Batik Mega Mendung Warna Biru', 350000, '5dd6b7e2cf132.jpg', 'Murah banget'),
(3, 11, 'Batik Coklat', 130000, '5dda9e1f5188f.jpg', 'asdas'),
(5, 17, 'batik kawung', 650000, '5dde08ef8e61c.jpg', 'hanya coba upload'),
(6, 17, 'batik parang rusak', 500000, '5dde095b5a350.jpg', 'hanya coba upload');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `bill_numb` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `bill_numb`, `email`, `password`, `role_id`, `date_created`) VALUES
(1, 'admin', '', 'admin@gmail.com', '$2y$10$zMloC2vXZRsoObcKgQDfNecvZTkOWGQKd.K8RgQB.0q6ZBdrAcv/i', 1, 1554114738),
(7, 'Ardi', '', 'ardi250899@gmail.com', '$2y$10$H7QBvQg3frNZIQ2kvl1eYOpH2DU/CWQe/C6lainmuxrrTf3WR1q9S', 2, 1573626943),
(11, 'Ibal', '', 'ibal@gmail.com', '$2y$10$8MJBbb204dgNPQ49Z5ZbGefQ5KNexkK30Yxp2BhXOrj8oZoeEOJjm', 2, 1574437050),
(12, 'Sugab', '', 'sugab@gmail.com', '$2y$10$58C8t7ezP1fSLvp9KRdcOeQVl1leW9oPHVptM1P0yxcztos4fWHzC', 2, 1574437050),
(13, 'Sauki', '', 'sauki@gmail.com', '$2y$10$iVfoyizVDOGd09LR0BNPdeIV8426Sp1pzDVbOxfWl5KpCQ4iw3M8W', 2, 1574697539),
(14, 'Rudi Usman', '', 'commander.heaven@gmail.com', '$2y$10$W.znK238joFIQhApOiNxVenHhGZSLnoZU5nCC12DAKddk.A9JiO6u', 2, 1574851146),
(17, 'omi', '12506613213', 'omi@gmail.com', '$2y$10$NcsNZixTvMI/JaxsWJ8nrep4.hU9fgYxUxoTSowfDLLxKOcQbl.Cm', 2, 1574853752),
(18, 'Bujang', '', 'bujang.ngan@um.ac.id', '$2y$10$zdDBHLLKCBnMCnLLRn035OzfXZbqeiDN0yG0i1Fz2LT.41wkWLe2m', 2, 1574859261),
(19, 'ocincin', '', '8ball@busthomi.manda', '$2y$10$uql94HmMqinmdW0dA9ynKOESGK/H1Tu9GJ3LTXUgZ42caTcYzHXU2', 2, 1575459653),
(20, 'Iqbal', '', 'iqbal@gmail.com', '$2y$10$sciXlWydNmPAAPfCR3TvHOwU4iFHVdkgZ2YoOxFaj74TmcV/d.oQS', 2, 1575545334);

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `id` int(1) NOT NULL,
  `role_id` int(1) NOT NULL,
  `menu_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`id`, `seller_id`, `buyer_id`, `product_id`, `amount`, `status`) VALUES
(51, 1, 7, 2, 2, 0),
(52, 1, 14, 1, 7, 0),
(53, 11, 14, 3, 3, 1),
(56, 17, 1, 6, 2, 0),
(57, 1, 17, 2, 2, 0),
(58, 17, 18, 5, 23, 0),
(59, 1, 7, 1, 1, 0),
(60, 1, 7, 2, 1, 0),
(62, 1, 7, 1, 1, 0),
(63, 1, 7, 1, 1, 0),
(64, 1, 19, 1, 2, 0),
(65, 1, 20, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_product`
--
ALTER TABLE `upload_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `upload_product`
--
ALTER TABLE `upload_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
