-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2019 at 04:09 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bns`
--

-- --------------------------------------------------------

--
-- Table structure for table `bns_city`
--

CREATE TABLE `bns_city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bns_city`
--

INSERT INTO `bns_city` (`city_id`, `state_id`, `name`) VALUES
(1, 2, 'Ahmedabad'),
(2, 2, 'Surat'),
(3, 1, 'Pune');

-- --------------------------------------------------------

--
-- Table structure for table `bns_country`
--

CREATE TABLE `bns_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bns_hotels`
--

CREATE TABLE `bns_hotels` (
  `hotel_id` bigint(20) NOT NULL,
  `hotel_name` varchar(256) DEFAULT NULL,
  `auth_contact_no` varchar(20) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `sub_from` date DEFAULT NULL,
  `sub_to` date DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `client_status` tinyint(4) DEFAULT NULL,
  `owner_name` varchar(256) DEFAULT NULL,
  `email_` varchar(128) DEFAULT NULL,
  `category_` tinyint(4) DEFAULT NULL,
  `group_name` varchar(256) DEFAULT NULL,
  `copyright_by` varchar(256) DEFAULT NULL,
  `ownership_type` tinyint(4) DEFAULT NULL,
  `address_` varchar(1024) DEFAULT NULL,
  `landmark_` varchar(256) DEFAULT NULL,
  `pincode_` varchar(10) DEFAULT NULL,
  `website_` varchar(128) DEFAULT NULL,
  `logo_path` varchar(1024) DEFAULT NULL,
  `contact_fname` varchar(128) DEFAULT NULL,
  `contact_lname` varchar(128) DEFAULT NULL,
  `contact_designation_` varchar(128) DEFAULT NULL,
  `contact_email_` varchar(128) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bns_hotels`
--

INSERT INTO `bns_hotels` (`hotel_id`, `hotel_name`, `auth_contact_no`, `sub_id`, `sub_from`, `sub_to`, `city_id`, `status_id`, `client_status`, `owner_name`, `email_`, `category_`, `group_name`, `copyright_by`, `ownership_type`, `address_`, `landmark_`, `pincode_`, `website_`, `logo_path`, `contact_fname`, `contact_lname`, `contact_designation_`, `contact_email_`, `contact_number`, `created_by`) VALUES
(5, 'Greenz', '9874661230', 4, '2019-04-08', '2019-04-06', 1, 1, 1, 'Prit', 'pr@gmail.com', 1, 'abcd', 'ddwd', 1, 'hhhhhhh', 'hhdhdhd', '382001', 'www.com', 'gagaga', 'lala', 'kak', 'vvav', 'vv@gmail.com', '9875641301', 3),
(6, 'CortYart', '9876541233', 7, '2019-04-09', '2019-04-10', 2, 1, 1, 'llll', 'hh', 1, 'hhghgb', 'gfdgfdgfd', 1, 'hhgfdsasefijo', 'kjhjgghc', '381145', 'www.ba.com', 'hhshshshsh', 'ppp', 'iu', 'g', 'h@gmail.com', '9874561230', 4),
(7, 'Skylar', '8989823849', 7, '2019-04-08', '2019-04-23', 2, 3, 1, 'Hirak Mehta', 'hirak@gmail.com', 2, 'sky', 'sky', 1, 'satellite', 'prahladnagar', '329090', 'jhdjhfh', 'jhjhh', 'hirak', 'mehta', '9897897788', 'hirak@gmil.com', '9899898989', 4);

-- --------------------------------------------------------

--
-- Table structure for table `bns_hotel_admin`
--

CREATE TABLE `bns_hotel_admin` (
  `id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `fname` varchar(128) DEFAULT NULL,
  `mname` varchar(128) DEFAULT NULL,
  `lname` varchar(128) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `email_id` varchar(128) DEFAULT NULL,
  `address1_` varchar(512) DEFAULT NULL,
  `address2_` varchar(512) DEFAULT NULL,
  `landmark_` varchar(256) DEFAULT NULL,
  `pincode_` varchar(10) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bns_hotel_admin`
--

INSERT INTO `bns_hotel_admin` (`id`, `hotel_id`, `fname`, `mname`, `lname`, `contact_no`, `email_id`, `address1_`, `address2_`, `landmark_`, `pincode_`, `city_id`, `created_at`) VALUES
(3, 5, 'Prin', 'haha', 'Soni', '9874461230', 'p@gmail.com', 'jjjjja', 'hdhdhdh', 'hdhdh', '380010', 1, '2019-04-04 00:00:00'),
(4, 6, 'pika', 's', 'jsjsj', '9874512060', 'pik@gmail.com', 'hsdgsdjh', 'jhvdjhb', 'kjsbdksjbd', '385460', 2, '2019-04-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bns_hotel_images`
--

CREATE TABLE `bns_hotel_images` (
  `id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `image_path` varchar(1024) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bns_hotel_services`
--

CREATE TABLE `bns_hotel_services` (
  `service_id` smallint(6) NOT NULL,
  `service_name` varchar(256) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bns_hotel_services`
--

INSERT INTO `bns_hotel_services` (`service_id`, `service_name`, `created_by`, `created_at`) VALUES
(5, 'Food Order service', 1, '2019-04-04 00:00:00'),
(6, 'Restaurant-Table Booking', 2, '2019-04-05 00:00:00'),
(7, 'Laundry', 1, '2019-04-11 00:00:00'),
(8, 'Room Cleaning', 2, '2019-04-16 00:00:00'),
(9, 'Room Amenities', 1, '2019-04-16 00:00:00'),
(10, 'Third Party Service', 1, '2019-04-19 00:00:00'),
(11, 'Wake Up Call', 2, '2019-04-21 00:00:00'),
(12, 'Personal Request', 1, '2019-04-22 00:00:00'),
(13, 'Porter Service', 2, '2019-04-23 00:00:00'),
(14, 'Hotel Amenities', 2, '2019-04-24 00:00:00'),
(15, 'Check Out Request', 1, '2019-04-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bns_hotel_subscriptions`
--

CREATE TABLE `bns_hotel_subscriptions` (
  `sub_id` int(11) NOT NULL,
  `subscription` varchar(256) DEFAULT NULL,
  `sub_type_id` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `payable_amt` decimal(13,2) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bns_hotel_subscriptions`
--

INSERT INTO `bns_hotel_subscriptions` (`sub_id`, `subscription`, `sub_type_id`, `is_active`, `payable_amt`, `created_by`, `created_at`) VALUES
(4, 'NEW', 1, 1, '866666.00', 3, '2012-12-12 00:00:00'),
(7, 'def', 1, 1, '50000.00', 4, '2019-04-03 18:30:00'),
(9, 'new package', 2, 1, '5445.00', 1, '2019-04-18 08:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `bns_hotel_subscriptions_audit`
--

CREATE TABLE `bns_hotel_subscriptions_audit` (
  `id` bigint(20) NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `subscription` varchar(256) DEFAULT NULL,
  `sub_type_id` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `payable_amt` decimal(13,2) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bns_hotel_subscription_type`
--

CREATE TABLE `bns_hotel_subscription_type` (
  `sub_type_id` tinyint(4) NOT NULL,
  `sub_type` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bns_hotel_subscription_type`
--

INSERT INTO `bns_hotel_subscription_type` (`sub_type_id`, `sub_type`) VALUES
(1, 'White Label'),
(2, 'Cloud Based');

-- --------------------------------------------------------

--
-- Table structure for table `bns_state`
--

CREATE TABLE `bns_state` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bns_subscription_services`
--

CREATE TABLE `bns_subscription_services` (
  `sub_id` int(11) NOT NULL,
  `service_id` smallint(6) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bns_subscription_services`
--

INSERT INTO `bns_subscription_services` (`sub_id`, `service_id`, `is_active`, `created_by`, `created_at`) VALUES
(4, 11, 1, 1, '2019-04-18 08:22:09'),
(4, 12, 1, 1, '2019-04-18 08:22:09'),
(7, 5, 1, 1, '2019-04-10 00:00:00'),
(7, 6, 1, 1, '2019-04-10 00:00:00'),
(7, 13, 1, 1, '2019-04-10 00:00:00'),
(9, 5, 1, 1, '2019-04-18 08:19:19'),
(9, 6, 1, 1, '2019-04-18 08:19:19'),
(9, 7, 1, 1, '2019-04-18 08:19:19'),
(9, 8, 1, 1, '2019-04-18 08:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `bns_subscription_services_audit`
--

CREATE TABLE `bns_subscription_services_audit` (
  `id` bigint(20) NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `service_id` smallint(6) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bns_subscription_services_audit`
--

INSERT INTO `bns_subscription_services_audit` (`id`, `sub_id`, `service_id`, `is_active`, `created_by`, `created_at`) VALUES
(2, 2, 6, 1, 1, '2019-04-04 00:00:00'),
(6, 6, 1, 1, 2019, NULL),
(7, 5, 1, 1, 2019, NULL),
(8, 8, 1, 1, 2019, NULL),
(9, 10, 1, 1, 2019, NULL),
(10, 17, 1, 1, 2019, NULL),
(11, 17, 1, 1, 2019, NULL),
(15, 6, 1, 1, 2019, NULL),
(16, 8, 1, 1, 2019, NULL),
(17, 7, 1, 1, 2019, NULL),
(18, 5, 1, 1, 2019, NULL),
(19, 8, 1, 1, 2019, NULL),
(20, 6, 1, 1, 2019, NULL),
(21, 7, 1, 1, 2019, NULL),
(22, 6, 1, 1, 2019, NULL),
(23, 7, 1, 1, 2019, NULL),
(24, 7, 1, 1, 2019, NULL),
(25, 8, 1, 1, 2019, NULL),
(26, 24, 5, 1, 1, '2019-04-15 07:23:38'),
(27, 24, 6, 1, 1, '2019-04-15 07:23:38'),
(28, 25, 5, 1, 1, '2019-04-15 07:33:46'),
(29, 25, 6, 1, 1, '2019-04-15 07:33:46'),
(30, 25, 7, 1, 1, '2019-04-15 07:33:46'),
(31, 9, 5, 1, 1, '2019-04-18 08:19:19'),
(32, 9, 6, 1, 1, '2019-04-18 08:19:19'),
(33, 9, 7, 1, 1, '2019-04-18 08:19:19'),
(34, 9, 8, 1, 1, '2019-04-18 08:19:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bns_city`
--
ALTER TABLE `bns_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `bns_country`
--
ALTER TABLE `bns_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `bns_hotels`
--
ALTER TABLE `bns_hotels`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `fk_bns_hotels` (`sub_id`);

--
-- Indexes for table `bns_hotel_admin`
--
ALTER TABLE `bns_hotel_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bns_hotel_admin_bns_hotels` (`hotel_id`);

--
-- Indexes for table `bns_hotel_images`
--
ALTER TABLE `bns_hotel_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bns_hotel_images_bns_hotels` (`hotel_id`);

--
-- Indexes for table `bns_hotel_services`
--
ALTER TABLE `bns_hotel_services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `bns_hotel_subscriptions`
--
ALTER TABLE `bns_hotel_subscriptions`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `fk_bns_hotel_subscriptions` (`sub_type_id`);

--
-- Indexes for table `bns_hotel_subscriptions_audit`
--
ALTER TABLE `bns_hotel_subscriptions_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bns_hotel_subscription_type`
--
ALTER TABLE `bns_hotel_subscription_type`
  ADD PRIMARY KEY (`sub_type_id`);

--
-- Indexes for table `bns_state`
--
ALTER TABLE `bns_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `bns_subscription_services`
--
ALTER TABLE `bns_subscription_services`
  ADD PRIMARY KEY (`sub_id`,`service_id`),
  ADD KEY `fk_bns_subscription_services` (`service_id`);

--
-- Indexes for table `bns_subscription_services_audit`
--
ALTER TABLE `bns_subscription_services_audit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bns_city`
--
ALTER TABLE `bns_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bns_country`
--
ALTER TABLE `bns_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bns_hotels`
--
ALTER TABLE `bns_hotels`
  MODIFY `hotel_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bns_hotel_admin`
--
ALTER TABLE `bns_hotel_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bns_hotel_images`
--
ALTER TABLE `bns_hotel_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bns_hotel_services`
--
ALTER TABLE `bns_hotel_services`
  MODIFY `service_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bns_hotel_subscriptions`
--
ALTER TABLE `bns_hotel_subscriptions`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bns_hotel_subscriptions_audit`
--
ALTER TABLE `bns_hotel_subscriptions_audit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bns_hotel_subscription_type`
--
ALTER TABLE `bns_hotel_subscription_type`
  MODIFY `sub_type_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bns_state`
--
ALTER TABLE `bns_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bns_subscription_services_audit`
--
ALTER TABLE `bns_subscription_services_audit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bns_hotels`
--
ALTER TABLE `bns_hotels`
  ADD CONSTRAINT `fk_bns_hotels` FOREIGN KEY (`sub_id`) REFERENCES `bns_hotel_subscriptions` (`sub_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bns_hotel_admin`
--
ALTER TABLE `bns_hotel_admin`
  ADD CONSTRAINT `fk_bns_hotel_admin_bns_hotels` FOREIGN KEY (`hotel_id`) REFERENCES `bns_hotels` (`hotel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bns_hotel_images`
--
ALTER TABLE `bns_hotel_images`
  ADD CONSTRAINT `fk_bns_hotel_images_bns_hotels` FOREIGN KEY (`hotel_id`) REFERENCES `bns_hotels` (`hotel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bns_hotel_subscriptions`
--
ALTER TABLE `bns_hotel_subscriptions`
  ADD CONSTRAINT `fk_bns_hotel_subscriptions` FOREIGN KEY (`sub_type_id`) REFERENCES `bns_hotel_subscription_type` (`sub_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bns_subscription_services`
--
ALTER TABLE `bns_subscription_services`
  ADD CONSTRAINT `fk_bns_subscription_services` FOREIGN KEY (`service_id`) REFERENCES `bns_hotel_services` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bns_subscription_services_sub_id` FOREIGN KEY (`sub_id`) REFERENCES `bns_hotel_subscriptions` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
