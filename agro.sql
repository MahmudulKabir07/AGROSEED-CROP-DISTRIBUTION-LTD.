-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 08:25 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agro`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(10000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(128, 'Oat', '99', 'oats.jpg', '1'),
(129, 'Rice', '49', 'rice.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `crop`
--

CREATE TABLE `crop` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop`
--

INSERT INTO `crop` (`id`, `name`, `status`, `time`) VALUES
(5, 'rice', 'On cultivation', '1 month'),
(7, 'carrot', 'On cultivation', '15 days'),
(8, 'tomato', 'ready', 'ready'),
(9, 'mango', 'On cultivation', '6 month'),
(10, 'fulkopi', 'On cultivation', '7 days'),
(11, 'wheat', 'ready', 'ready'),
(12, 'raddish', 'On cultivation', '15 days');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `opinion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `username`, `email`, `country`, `opinion`) VALUES
(8, 'mahmudul', 'mahmudulkabir@gmail.com', 'bd', 'productand the quality was good');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `total_products` varchar(100) NOT NULL,
  `total_price` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`) VALUES
(25, 'mahmudul', '0156897634', 'mahmudulkabir@gmail.com', 'cash on delivery', 'dhanmondi', '8', 'dhaka', '1205', 'bd', '1205', 'alu potol (2) , spinach (2) , kola (2) ', '6336');

-- --------------------------------------------------------

--
-- Table structure for table `pesticide`
--

CREATE TABLE `pesticide` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` int(200) NOT NULL,
  `quantity` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesticide`
--

INSERT INTO `pesticide` (`id`, `name`, `price`, `quantity`) VALUES
(10, 'compost', 77, 5),
(12, 'Kit spray', 99, 12);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(10000) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(17, 'Oat', '99', 'oats.jpg'),
(18, 'Sorghum', '26', 'sorghum.jpg'),
(22, 'Rice', '49', 'rice.jpg'),
(23, 'Barley', '99', 'barley.jpg'),
(24, 'Corn', '99', 'corn.jpg'),
(27, 'Millet', '89', 'millet.jpg'),
(28, 'Rye', '22', 'rye.jpg'),
(29, 'Broccoli', '30', 'brocoli.jpg'),
(30, 'Bingle', '70', 'begun.jpg'),
(33, 'Carrot', '9', 'carrot.jpg'),
(35, 'wheat', '12', 'wheat.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `userpassword` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `dob`, `address`, `usertype`, `userpassword`, `confirmpassword`) VALUES
(29, 'Mahmudul Kabir', 'mahmudulfarmer@gmail.com', '0175269765', '2022-12-14', 'Dhaka,17/7', 'farmer', '1234', '1234'),
(30, 'sharfaraz', 'sharfarazadmin@gmail.com', '016564416', '2022-12-05', 'Dhaka,39/5', 'admin', '1234', '1234'),
(33, 'Muntakim', 'muntakimmanager@gmail.com', '0189764561', '1996-12-13', 'Dhaka,98/8', 'manager', '1234', '1234'),
(34, 'zubair', 'zubaircustomer@gmail.com', '0148941465', '2022-12-06', 'Dhaka,12/2', 'customer', '1234', '1234'),
(35, 'ADMIN', 'ADMIN@GMAIL.COM', '01765465126', '2022-01-05', 'DHAKA', 'admin', '1234', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop`
--
ALTER TABLE `crop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesticide`
--
ALTER TABLE `pesticide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `crop`
--
ALTER TABLE `crop`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pesticide`
--
ALTER TABLE `pesticide`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
