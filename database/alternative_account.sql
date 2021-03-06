-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2018 at 08:23 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alternative_account`
--

-- --------------------------------------------------------

--
-- Table structure for table `aa_purchaser_name`
--

CREATE TABLE `aa_purchaser_name` (
  `purchaser_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_number` varchar(255) NOT NULL,
  `purchaser_account_no` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `branch_code` varchar(255) NOT NULL,
  `pan_card` varchar(255) NOT NULL,
  `purchaser_address` varchar(255) NOT NULL,
  `purchaser_gst_no` varchar(255) NOT NULL,
  `remark` longtext NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date NOT NULL,
  `status` enum('Active','Inactive','Delete') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aa_purchaser_name`
--

INSERT INTO `aa_purchaser_name` (`purchaser_id`, `name`, `contact_person_name`, `contact_person_number`, `purchaser_account_no`, `bank_name`, `ifsc_code`, `branch_code`, `pan_card`, `purchaser_address`, `purchaser_gst_no`, `remark`, `added_date`, `updated_date`, `status`) VALUES
(2, 'Laala bhaiya', '', '', '', '', '', '', '', '', '', '', '2018-06-09 10:33:13', '0000-00-00', 'Active'),
(3, 'Lal Ji Enterprises', '', '', '', '', '', '', '', '', '', '', '2018-06-09 10:33:13', '0000-00-00', 'Active'),
(4, 'Singh Roadlines', '', '', '', '', '', '', '', '', '', '', '2018-06-09 10:33:58', '0000-00-00', 'Active'),
(5, 'Mahendra Sachan', 'Mahendra Sachan', '999999999999', '54646464654', 'HDFC BANK', 'HDFC000545', '5465S', '54654SSS44', 'sadfsfd', '4534DFSG4G', 'GDFDGDFG', '2018-06-09 10:33:58', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `aa_quality`
--

CREATE TABLE `aa_quality` (
  `quality_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date NOT NULL,
  `status` enum('Active','Inactive','Delete') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aa_quality`
--

INSERT INTO `aa_quality` (`quality_id`, `name`, `added_date`, `updated_date`, `status`) VALUES
(1, 'R/sand', '2018-06-09 10:36:29', '0000-00-00', 'Active'),
(2, 'Dust\r\n', '2018-06-09 10:36:29', '0000-00-00', 'Active'),
(3, '20MM\r\n', '2018-06-09 10:36:45', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `aa_seller`
--

CREATE TABLE `aa_seller` (
  `seller_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_number` varchar(255) NOT NULL,
  `seller_account_no` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `branch_code` varchar(255) NOT NULL,
  `pan_card` varchar(255) NOT NULL,
  `seller_address` varchar(255) NOT NULL,
  `seller_gst_no` varchar(255) NOT NULL,
  `remark` longtext NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date NOT NULL,
  `status` enum('Active','Inactive','Delete') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aa_seller`
--

INSERT INTO `aa_seller` (`seller_id`, `name`, `contact_person_name`, `contact_person_number`, `seller_account_no`, `bank_name`, `ifsc_code`, `branch_code`, `pan_card`, `seller_address`, `seller_gst_no`, `remark`, `added_date`, `updated_date`, `status`) VALUES
(1, 'Prabhu\r\n', '', '', '', '', '', '', '', '', '', '', '2018-06-09 10:35:34', '0000-00-00', 'Active'),
(2, 'Kavya\r\n', '', '', '', '', '', '', '', '', '', '', '2018-06-09 10:35:34', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `aa_site`
--

CREATE TABLE `aa_site` (
  `site_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_number` varchar(255) NOT NULL,
  `site_account_no` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `branch_code` varchar(255) NOT NULL,
  `pan_card` varchar(255) NOT NULL,
  `site_address` varchar(255) NOT NULL,
  `site_gst_no` varchar(255) NOT NULL,
  `remark` longtext NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date NOT NULL,
  `status` enum('Active','Inactive','Delete') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aa_site`
--

INSERT INTO `aa_site` (`site_id`, `name`, `contact_person_name`, `contact_person_number`, `site_account_no`, `bank_name`, `ifsc_code`, `branch_code`, `pan_card`, `site_address`, `site_gst_no`, `remark`, `added_date`, `updated_date`, `status`) VALUES
(1, 'Vascon\r\n', '', '', '', '', '', '', '', '', '', '', '2018-06-09 10:34:57', '0000-00-00', 'Active'),
(2, 'Rmc Metro\r\n', '', '', '', '', '', '', '', '', '', '', '2018-06-09 10:34:57', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `aa_tax`
--

CREATE TABLE `aa_tax` (
  `tax_id` int(11) NOT NULL,
  `cgst` varchar(255) NOT NULL,
  `sgst` varchar(255) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date NOT NULL,
  `status` enum('Active','Inactive','Delete') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aa_tax`
--

INSERT INTO `aa_tax` (`tax_id`, `cgst`, `sgst`, `gst`, `added_date`, `updated_date`, `status`) VALUES
(1, '2.5', '2.50', '', '2018-06-09 11:13:06', '0000-00-00', 'Active'),
(2, '2.55', '2.32', '', '2018-06-09 11:16:36', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `am_city`
--

CREATE TABLE `am_city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive','Delete') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_city`
--

INSERT INTO `am_city` (`city_id`, `state_id`, `name`, `added_date`, `updated_date`, `status`) VALUES
(1, 1, 'Lucknow', '0000-00-00 00:00:00', '2018-05-23 04:28:37', 'Delete'),
(2, 3, 'New Delhi', '0000-00-00 00:00:00', '2018-05-23 04:28:52', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `am_state`
--

CREATE TABLE `am_state` (
  `state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date NOT NULL,
  `status` enum('Active','Inactive','Delete') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_state`
--

INSERT INTO `am_state` (`state_id`, `name`, `added_date`, `updated_date`, `status`) VALUES
(1, 'Uttar Pradesh', '2018-05-17 05:13:12', '0000-00-00', 'Delete'),
(2, 'Bihar', '2018-05-17 05:18:35', '0000-00-00', 'Delete'),
(3, 'Delhi', '2018-05-23 04:28:27', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `token` longtext NOT NULL,
  `token_valid` date NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gst_no` varchar(255) NOT NULL,
  `pan_number` varchar(255) NOT NULL,
  `organisation_name` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive','Delete') DEFAULT 'Active',
  `modified_time` datetime DEFAULT NULL,
  `added_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `user_type` enum('1','2','3','4','5') DEFAULT NULL COMMENT '1=super admin,2=admin,3=accounts, 4=accountant,5=support'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `token`, `token_valid`, `mobile`, `gst_no`, `pan_number`, `organisation_name`, `state_id`, `city_id`, `address`, `zipcode`, `mobile_no`, `fax`, `status`, `modified_time`, `added_date`, `updated_date`, `last_login`, `user_type`) VALUES
(1, 'Lokesh', 'Singh', 'lokesh@yopmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '0000-00-00', '9838507000', 'KJHJVGKXBWD1WD521', 'KAVCC22E1CC6', 'Prabhu Accociates', 3, 1, 'New Delhi', 201301, '05122230021', NULL, 'Active', NULL, '2018-05-29 07:48:18', NULL, '2018-05-29 09:49:06', '3'),
(2, 'Super', 'Admin', 'admin@yopmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '0000-00-00', '65544654654', 'SD54SDF4S', 'SD654GD4FG6', 'Super Admin', 1, 2, 'fklnnggjngj', 2, '5464646464', NULL, 'Active', NULL, '2018-05-29 07:53:17', NULL, '2018-06-09 07:08:01', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aa_purchaser_name`
--
ALTER TABLE `aa_purchaser_name`
  ADD PRIMARY KEY (`purchaser_id`);

--
-- Indexes for table `aa_quality`
--
ALTER TABLE `aa_quality`
  ADD PRIMARY KEY (`quality_id`);

--
-- Indexes for table `aa_seller`
--
ALTER TABLE `aa_seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `aa_site`
--
ALTER TABLE `aa_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `aa_tax`
--
ALTER TABLE `aa_tax`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `am_city`
--
ALTER TABLE `am_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `am_state`
--
ALTER TABLE `am_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aa_purchaser_name`
--
ALTER TABLE `aa_purchaser_name`
  MODIFY `purchaser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `aa_quality`
--
ALTER TABLE `aa_quality`
  MODIFY `quality_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aa_seller`
--
ALTER TABLE `aa_seller`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aa_site`
--
ALTER TABLE `aa_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aa_tax`
--
ALTER TABLE `aa_tax`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `am_city`
--
ALTER TABLE `am_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `am_state`
--
ALTER TABLE `am_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
