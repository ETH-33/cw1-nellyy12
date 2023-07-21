-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 10:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nelly`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `descr` varchar(1000) NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `descr`, `product_img_name`, `price`) VALUES
(1, 'MISS DIOR', 'A captivating and feminine fragrance that combines floral and fruity notes, embodying elegance and sophistication', 'product/dior1.jpg', 60.00),
(2, 'JADORE ABSOLU', 'An exquisite floral bouquet with a modern and sensual twist, featuring notes of blood orange, rose, jasmine, vanilla, and musk.', 'product/dior2.jpg', 72.00),
(3, 'POISON GIRL', 'A bold and seductive fragrance aimed at the young and rebellious, with a blend of sweet and spicy notes, leaving a lasting impression.', 'product/dior3.jpg', 60.00),
(4, 'CALFORNIA DREAM', 'A fresh and uplifting fragrance capturing the vibrant and sunny California lifestyle, with citrusy notes and a touch of exotic flowers.', 'product/caldreamm.jpg', 150.00),
(5, 'HEURSE D ABSENCE', 'A delicate and nostalgic perfume with powdery and floral accords, evoking elegance and romanticism.', 'product/heru.jpg', 200.00),
(6, 'IMAGINATION', 'A modern and mysterious fragrance celebrating creativity, with woody and aromatic notes that inspire and transport you to a world of possibilities.', 'product/imagination.jpg', 120.00),
(7, 'COCO CHANEL', 'A timeless and sophisticated perfume by Chanel, blending floral and oriental notes to create an iconic fragrance.', 'product/coco1.jpg', 200.00),
(8, 'CHANCE CHANEL', 'A lively and youthful perfume by Chanel, combining floral and fruity notes for a fresh and playful scent that embraces unexpected possibilities.', 'product/coco2.jpg', 220.00),
(9, 'COCO CHANEL', 'A timeless and sophisticated perfume by Chanel, blending floral and oriental notes to create an iconic fragrance.', 'product/coco3.jpg', 130.00),
(10, 'PEAR GLACE', 'A cool and refreshing perfume by Victoria Secret, combining floral and fruity notes for a delicate and invigorating fragrance.', 'product/vs1.jpg', 100.00),
(11, 'SANTAL STAR', 'Santal Star is a captivating perfume by Victorias Secret, featuring the warm and woody notes of sandalwood, creating a sensual and alluring fragrance.', 'product/vs2.jpg', 140.00),
(12, 'AQUA KISS', 'A refreshing perfume by Victorias Secret, embodying a gentle ocean breeze with its aquatic and floral notes, creating a serene and pure fragrance experience.', 'product/vs3.jpg', 160.00);

-- --------------------------------------------------------

--
-- Table structure for table `selec_pdt`
--

CREATE TABLE `selec_pdt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(50,0) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selec_pdt`
--

INSERT INTO `selec_pdt` (`id`, `name`, `product_name`, `product_price`, `image`, `created_at`) VALUES
(22, 'Nikesh Uprety', 'test', 0, 'test', '2023-07-21 06:46:53'),
(29, 'Nikesh Uprety', 'JADORE ABSOLU', 72, 'product/dior2.jpg', '2023-07-21 06:55:22'),
(30, 'Nikesh Uprety', 'IMAGINATION', 120, 'product/imagination.jpg', '2023-07-21 06:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `Id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`Id`, `name`, `email`, `password`, `user_type`) VALUES
(15, 'Anish Bhattarai', 'upretynikesh021@gmail.com', '11111111', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selec_pdt`
--
ALTER TABLE `selec_pdt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `selec_pdt`
--
ALTER TABLE `selec_pdt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
