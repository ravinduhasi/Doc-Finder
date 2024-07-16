-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 01:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doc_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `reg_no` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `specialty` varchar(100) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `hospital` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`reg_no`, `user_id`, `name`, `phone_no`, `district`, `location`, `qualification`, `specialty`, `profile_photo`, `hospital`) VALUES
('mbbs1234', 22, 'Tharindu Dilshan', '0766263405', 'matara', 'matara', 'xsdfghnbvc', 'fiver', 'uploads/Screenshot 2024-07-15 015325.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `feedback_text` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `contact_number`, `feedback_text`, `submitted_at`) VALUES
(1, 'Tharindu Dilshan', 'tharindudilshan6263@gmail.com', '1452655', 'goood', '2024-07-11 09:50:49'),
(2, 'Tharindu Dilshan', 'tharindudilshan6263@gmail.com', '', 'good', '2024-07-11 09:51:59'),
(3, 'Tharindu Dilshan', 'chanukaisuru26@gmail.com', '', 'fgfdrtdgfcgctrtdcythcdcyhc', '2024-07-14 05:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message_details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `nic` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `sick` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_no` int(2) NOT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `otp_expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `user_name`, `password`, `role_no`, `otp_code`, `otp_expires_at`, `created_at`) VALUES
(2, 'chanukaisuru26@gmail.com', 'root', '$2y$10$Cbo4dZGwt34Qy0c3M7cQjOG3zjQINLmD2.57hof//zPUShU3xuSOW', 2, NULL, NULL, '2024-07-12 04:25:12'),
(8, 'tharindudilshanemf6263@gmail.com', 'Tharindu', '$2y$10$M77oD.8y1LX9X1wOMi5zsO2VnquCX0Txkupe7egzVHztAIWZQXsl.', 3, NULL, NULL, '2024-07-12 13:27:17'),
(9, 'tharindudilshanemlll6263@gmail.com', 'Tharindu', '$2y$10$noQ8e5/hY2VsPLrMqORpfu2o3blgYZck.jbo/C/zxUPYtapIpGXd.', 3, NULL, NULL, '2024-07-12 13:27:41'),
(10, 'doctor1@gmail.com', 'Tharindu', '$2y$10$l81asxdm93WMg97o08jozeOBl8w.ShDCqRlOlOSr/dPdrfXBaQONO', 2, NULL, NULL, '2024-07-12 13:34:24'),
(12, 'chanaka8@gmail.com', 'Tharindu', '$2y$10$SEcEUXqqqggRh.JoR5kXiOdUbUOB7zMWZmaXGlbBfrxoC/Ix2VPoy', 2, NULL, NULL, '2024-07-12 15:34:52'),
(14, 'chanaka855@gmail.com', 'Tharindu', '$2y$10$6hUfknHeV3Sni09aOWhH2enxmm5dfmhcLhmm9axgXcdnJX4ofoYae', 2, NULL, NULL, '2024-07-12 17:25:54'),
(15, 'chanukaisuru263433@gmail.com', 'Tharindu', '$2y$10$gUkuz9DyufIwXU3zHDxx/OW75A4ofrVqCBNtnGWEM8tZ8ked/vKB.', 2, NULL, NULL, '2024-07-12 18:41:43'),
(16, 'dimuthu', 'admin', '$2y$10$jtzSTujiVTJCndO9PSH2ZOi/5e6BBgMSmeNZlB46OYLF/m3fAE8i.', 1, NULL, NULL, '2024-07-14 06:27:05'),
(17, 'admin123456@gmail.com', 'admin', '$2y$10$YUNhk4bHnEfT2i5UtErK.e0b3DblSszkmSDRGiUzYRA0vuDeSdfSq', 1, NULL, NULL, '2024-07-14 06:31:04'),
(18, 'admin1234556@gmail.com', 'admin', '$2y$10$U0hrMkhA28y2HfHB1.wh4.RIJN5EupZqLROFcN584pGVeWURa7Vmu', 1, NULL, NULL, '2024-07-14 06:32:11'),
(19, 'chanukaisuru45626@gmail.com', 'sgdeuyfguyedb', '$2y$10$9Unizf5JAkNhsjmY18fXpev7LIHd8FSy8.NYXxX7wXO.X6TKfpyWG', 2, NULL, NULL, '2024-07-14 09:15:16'),
(20, 'tharindu@gmail.com', 'Tharindu', '$2y$10$qKVOfvaRGcOt3hthvIyiiudOUy/rcuSNOFGyT234FLT28/SdRYwXy', 3, NULL, NULL, '2024-07-14 12:46:03'),
(22, 'tharindu125879335@gmail.com', 'Tharindu Dilshan', '$2y$10$C1h8GtzZT8kJLYAo7TtQFe1vujEGLEwfR5kSLX0slbUfEefYojAbC', 2, NULL, NULL, '2024-07-15 10:44:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`reg_no`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`nic`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
