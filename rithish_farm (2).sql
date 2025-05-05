-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2025 at 08:29 AM
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
-- Database: `rithish_farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `name`, `description`, `created_at`, `status`) VALUES
(1, 'Tree Planting', 'Tree planting by students/Employees,\r\nNative plants introduction.', '2025-05-03 08:45:54', 'Active'),
(2, 'Flower Show', 'Flower decorations,\r\nPhotography contest ', '2025-05-03 08:45:54', 'Active'),
(3, 'Nature Bazzar', 'Display of grown Vegetables/Fruits,\r\nCook using garden Veggies', '2025-05-03 08:51:29', 'Active'),
(4, 'Garden Art/Photography', 'Display nature-inspired drawings,\r\nPhoto corner in garden', '2025-05-03 08:51:29', 'Active'),
(5, 'Garden Music', 'Nature-theme poems,\r\nOpen mic event', '2025-05-03 08:51:29', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `visitor_id`, `from_date`, `to_date`, `created_at`, `status`) VALUES
(10, 1, '2025-03-25', NULL, '2025-05-02 09:34:46', 'Active'),
(11, 1, '2025-03-26', NULL, '2025-05-03 05:36:07', 'Active'),
(12, 18, '2024-08-13', NULL, '2025-05-03 05:36:07', 'Active'),
(13, 20, '2025-03-07', NULL, '2025-05-03 05:36:07', 'Active'),
(14, 18, '2025-02-25', NULL, '2025-05-03 05:36:07', 'Active'),
(15, 21, '2025-04-04', NULL, '2025-05-03 06:25:36', 'Active'),
(16, 19, '2024-08-14', NULL, '2025-05-03 06:27:45', 'Active'),
(17, 32, '2024-11-21', NULL, '2025-05-03 06:43:09', 'Active'),
(18, 33, '2025-03-28', NULL, '2025-05-03 06:43:09', 'Active'),
(19, 34, '2024-11-04', NULL, '2025-05-03 06:43:09', 'Active'),
(20, 35, '2024-11-04', NULL, '2025-05-03 06:43:09', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `bookings_id` int(11) NOT NULL,
  `visitor_reason` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `bookings_id`, `visitor_reason`, `created_at`, `status`) VALUES
(10, 10, 'Industrial Visit', '2025-05-03 05:30:04', 'Active'),
(11, 11, 'Industrial Visit', '2025-05-03 05:38:47', 'Active'),
(12, 12, 'Industrial Visit', '2025-05-03 05:38:47', 'Active'),
(13, 13, 'Industrial Visit', '2025-05-03 05:38:47', 'Active'),
(14, 14, 'Industrial Visit', '2025-05-03 05:38:47', 'Active'),
(15, 15, 'Industrial Visit', '2025-05-03 06:49:39', 'Active'),
(16, 16, 'Industrial Visit', '2025-05-03 06:49:39', 'Active'),
(17, 17, 'Industrial Visit', '2025-05-03 06:49:39', 'Active'),
(18, 18, 'Industrial Visit', '2025-05-03 06:49:39', 'Active'),
(19, 19, 'Industrial Visit', '2025-05-03 06:49:39', 'Active'),
(20, 20, 'Industrial Visit', '2025-05-03 06:49:39', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

  CREATE TABLE `department` (
    `id` int(11) NOT NULL,
    `name` varchar(50) NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
    `status` enum('Active','Inactive') DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `created_at`, `status`) VALUES
(1, ' Marketing', '2025-05-02 09:57:21', 'Active'),
(2, 'Accounts', '2025-05-02 09:57:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `created_at`, `status`) VALUES
(1, 'Garden Festival', 'We can enjoy the Nature ', '2025-05-03 09:21:45', 'Active'),
(2, 'Harvest Day', 'We can adopt the Nature', '2025-05-03 09:21:45', 'Active'),
(3, 'Music  Exhibition ', 'Nature with Music', '2025-05-03 09:21:45', 'Active'),
(4, 'Fier Camp', 'Enjoy with your family and friends', '2025-05-03 09:21:45', 'Active'),
(5, 'Rain Dance', 'Chill up your Summer', '2025-05-03 09:21:45', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `event_activities`
--

CREATE TABLE `event_activities` (
  `id` int(11) NOT NULL,
  `events_id` int(11) NOT NULL,
  `activities_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_activities`
--

INSERT INTO `event_activities` (`id`, `events_id`, `activities_id`, `created_at`, `status`) VALUES
(1, 1, 1, '2025-05-03 09:28:13', 'Active'),
(2, 1, 2, '2025-05-03 09:28:13', 'Active'),
(3, 2, 3, '2025-05-03 09:28:13', 'Active'),
(4, 2, 4, '2025-05-03 09:28:13', 'Active'),
(5, 3, 5, '2025-05-03 09:28:13', 'Active'),
(6, 4, 5, '2025-05-03 09:28:13', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `description`, `created_at`, `status`) VALUES
(1, 'Chess ', 'Show your talent', '2025-05-03 08:59:21', 'Active'),
(2, 'Caram', 'Play with your Friends', '2025-05-03 08:59:21', 'Active'),
(3, 'Vollyball', 'Build your team strong ', '2025-05-03 08:59:21', 'Active'),
(4, 'Shuttle Cock', 'Play with your Friends', '2025-05-03 08:59:21', 'Active'),
(5, 'Ring Ball', 'You can gain your favorite things', '2025-05-03 08:59:21', 'Active'),
(6, 'Skipping', 'Play with your Friends', '2025-05-03 08:59:21', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `game_package`
--

CREATE TABLE `game_package` (
  `id` int(11) NOT NULL,
  `games_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_package`
--

INSERT INTO `game_package` (`id`, `games_id`, `total_amount`, `created_at`, `status`) VALUES
(1, 2, 300.00, '2025-05-05 05:36:05', 'Active'),
(2, 1, 500.00, '2025-05-05 05:36:05', 'Active'),
(3, 5, 500.00, '2025-05-05 05:36:05', 'Active'),
(4, 4, 500.00, '2025-05-05 05:36:05', 'Active'),
(5, 6, 300.00, '2025-05-05 05:36:05', 'Active'),
(6, 3, 500.00, '2025-05-05 05:36:05', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `booking_details_id` int(11) NOT NULL,
  `event_activities_id` int(11) NOT NULL,
  `game_package_id` int(11) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `booking_details_id`, `event_activities_id`, `game_package_id`, `feedback`, `created_at`, `status`) VALUES
(1, 10, 1, 1, 'Good Experience', '2025-05-05 05:45:54', 'Active'),
(2, 19, 2, 2, 'We played well', '2025-05-05 05:45:54', 'Active'),
(3, 18, 3, 3, '', '2025-05-05 05:45:54', 'Active'),
(4, 17, 4, 4, '', '2025-05-05 05:45:54', 'Active'),
(5, 16, 5, 5, '', '2025-05-05 05:45:54', 'Active'),
(6, 15, 6, 6, '', '2025-05-05 05:45:54', 'Active'),
(7, 14, 1, 1, '', '2025-05-05 05:45:54', 'Active'),
(8, 13, 2, 2, '', '2025-05-05 05:45:54', 'Active'),
(9, 12, 3, 3, '', '2025-05-05 05:45:54', 'Active'),
(10, 11, 4, 4, '', '2025-05-05 05:45:54', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `bookings_id` int(11) NOT NULL,
  `paid_amount` varchar(50) NOT NULL,
  `received_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `bookings_id`, `paid_amount`, `received_by`, `created_at`, `status`) VALUES
(1, 10, '50000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(2, 19, '60000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(3, 18, '45000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(4, 17, '65000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(5, 16, '50000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(6, 15, '30000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(7, 14, '45000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(8, 13, '47000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(9, 12, '55000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(10, 11, '60000', 'Admin', '2025-05-03 09:04:37', 'Active'),
(11, 20, '50000', 'Admin', '2025-05-03 09:04:37', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `email`, `created_at`, `status`) VALUES
(1, 'Asha', 'asha@gmail.com', '2025-05-02 09:37:31', 'Active'),
(2, 'Ragupathi', 'ragu@gmail.com', '2025-05-02 09:37:31', 'Active'),
(3, 'Priya', 'priya@gmail.com', '2025-05-02 09:37:31', 'Active'),
(4, 'Vignesh', 'vicky@gmail.com', '2025-05-02 09:59:32', 'Active'),
(5, 'Selva', 'selva@gmail,com', '2025-05-02 09:59:32', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `person_department`
--

CREATE TABLE `person_department` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person_department`
--

INSERT INTO `person_department` (`id`, `person_id`, `department_id`, `created_at`, `status`) VALUES
(1, 5, 1, '2025-05-02 10:00:01', 'Active'),
(2, 4, 2, '2025-05-02 10:00:01', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `person_roles`
--

CREATE TABLE `person_roles` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person_roles`
--

INSERT INTO `person_roles` (`id`, `person_id`, `roles_id`, `created_at`, `status`) VALUES
(1, 1, 1, '2025-05-02 09:58:03', 'Active'),
(2, 3, 2, '2025-05-02 09:58:03', 'Active'),
(3, 2, 3, '2025-05-02 09:58:03', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `status`) VALUES
(1, 'Admin', '2025-05-02 09:43:22', 'Active'),
(2, 'Manager', '2025-05-02 09:43:22', 'Active'),
(3, 'Supervisor', '2025-05-02 09:43:22', 'Active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_participant`
-- (See below for the actual view)
--
CREATE TABLE `view_participant` (
`participant_id` int(11)
,`visitor_name` varchar(70)
,`visitor_type` varchar(50)
,`from_date` date
,`to_date` date
,`visitor_reason` varchar(50)
,`event_name` varchar(50)
,`activity_name` varchar(50)
,`game_name` varchar(50)
,`game_amount` decimal(10,2)
,`paid_amount` varchar(50)
,`received_by` varchar(15)
,`participant_status` enum('Active','Inactive')
,`participant_feedback` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `visitor_type_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `name`, `visitor_type_id`, `username`, `password`, `created_at`) VALUES
(1, 'VV', 2, 'vvuser', 'vvpass', '2025-05-02 07:56:32'),
(18, 'Anna Packiyam', 2, 'annauser', 'annapass', '2025-05-03 05:33:39'),
(19, 'Xavier', 2, 'xavieruser', 'xavierpass', '2025-05-03 05:33:39'),
(20, 'CAP', 2, 'capuser', 'cappass', '2025-05-03 05:33:39'),
(21, 'Arunachalam Art and Science', 2, 'arunauser', 'arunapass', '2025-05-03 06:24:51'),
(32, 'FX Polytechnic', 2, 'fxuser', 'fxpass', '2025-05-03 06:39:54'),
(33, 'Kamaraj', 2, 'kamarajuser', 'kamarajpass', '2025-05-03 06:39:54'),
(34, 'LOYALO Institute', 2, 'loyalouser', 'loyalopass', '2025-05-03 06:41:03'),
(35, 'TDMNS', 2, 'tdmnsuser', 'tdmnspass', '2025-05-03 06:41:03');

-- --------------------------------------------------------

--
-- Stand-in structure for view `visitor_details`
-- (See below for the actual view)
--
CREATE TABLE `visitor_details` (
`visitor_name` varchar(70)
,`visitor_type` varchar(50)
,`total_amount` varchar(50)
,`received_by` varchar(15)
,`visitor_reason` varchar(50)
,`booking_from` date
,`booking_to` date
,`status` enum('Active','Inactive')
);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_type`
--

CREATE TABLE `visitor_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitor_type`
--

INSERT INTO `visitor_type` (`id`, `name`, `description`, `created_at`, `status`) VALUES
(1, 'School', NULL, '2025-05-02 07:09:25', 'Active'),
(2, 'College', NULL, '2025-05-02 07:09:25', 'Active'),
(3, 'Corporate', NULL, '2025-05-02 07:09:44', 'Active'),
(4, 'Eco Tourism', NULL, '2025-05-02 07:09:44', 'Active'),
(5, 'Families', 'Common visit', '2025-05-03 05:06:38', 'Active');

-- --------------------------------------------------------

--
-- Structure for view `view_participant`
--
DROP TABLE IF EXISTS `view_participant`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_participant`  AS SELECT `p`.`id` AS `participant_id`, `v`.`name` AS `visitor_name`, `vt`.`name` AS `visitor_type`, `b`.`from_date` AS `from_date`, `b`.`to_date` AS `to_date`, `bd`.`visitor_reason` AS `visitor_reason`, `e`.`name` AS `event_name`, `a`.`name` AS `activity_name`, `g`.`name` AS `game_name`, `gp`.`total_amount` AS `game_amount`, `pay`.`paid_amount` AS `paid_amount`, `pay`.`received_by` AS `received_by`, `p`.`status` AS `participant_status`, `p`.`feedback` AS `participant_feedback` FROM ((((((((((`participants` `p` join `booking_details` `bd` on(`p`.`booking_details_id` = `bd`.`id`)) join `bookings` `b` on(`bd`.`bookings_id` = `b`.`id`)) join `visitor` `v` on(`b`.`visitor_id` = `v`.`id`)) join `visitor_type` `vt` on(`v`.`visitor_type_id` = `vt`.`id`)) left join `event_activities` `ea` on(`p`.`event_activities_id` = `ea`.`id`)) left join `events` `e` on(`ea`.`events_id` = `e`.`id`)) left join `activities` `a` on(`ea`.`activities_id` = `a`.`id`)) left join `game_package` `gp` on(`p`.`game_package_id` = `gp`.`id`)) left join `games` `g` on(`gp`.`games_id` = `g`.`id`)) left join `payment` `pay` on(`b`.`id` = `pay`.`bookings_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `visitor_details`
--
DROP TABLE IF EXISTS `visitor_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `visitor_details`  AS SELECT `v`.`name` AS `visitor_name`, `vt`.`name` AS `visitor_type`, `p`.`paid_amount` AS `total_amount`, `p`.`received_by` AS `received_by`, `bd`.`visitor_reason` AS `visitor_reason`, `b`.`from_date` AS `booking_from`, `b`.`to_date` AS `booking_to`, `b`.`status` AS `status` FROM ((((`bookings` `b` join `booking_details` `bd` on(`b`.`id` = `bd`.`bookings_id`)) join `visitor` `v` on(`b`.`visitor_id` = `v`.`id`)) join `visitor_type` `vt` on(`v`.`visitor_type_id` = `vt`.`id`)) join `payment` `p` on(`p`.`bookings_id` = `b`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_id` (`visitor_id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_id` (`bookings_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_activities`
--
ALTER TABLE `event_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_id` (`events_id`),
  ADD KEY `activities_id` (`activities_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_package`
--
ALTER TABLE `game_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_id` (`games_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_details_id` (`booking_details_id`),
  ADD KEY `event_activities_id` (`event_activities_id`),
  ADD KEY `game_package_id` (`game_package_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_id` (`bookings_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_department`
--
ALTER TABLE `person_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `person_roles`
--
ALTER TABLE `person_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `roles_id` (`roles_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_visitor_type` (`visitor_type_id`);

--
-- Indexes for table `visitor_type`
--
ALTER TABLE `visitor_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_activities`
--
ALTER TABLE `event_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `game_package`
--
ALTER TABLE `game_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `person_department`
--
ALTER TABLE `person_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `person_roles`
--
ALTER TABLE `person_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `visitor_type`
--
ALTER TABLE `visitor_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`visitor_id`) REFERENCES `visitor` (`id`);

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`bookings_id`) REFERENCES `bookings` (`id`);

--
-- Constraints for table `event_activities`
--
ALTER TABLE `event_activities`
  ADD CONSTRAINT `event_activities_ibfk_1` FOREIGN KEY (`events_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `event_activities_ibfk_2` FOREIGN KEY (`activities_id`) REFERENCES `activities` (`id`);

--
-- Constraints for table `game_package`
--
ALTER TABLE `game_package`
  ADD CONSTRAINT `game_package_ibfk_1` FOREIGN KEY (`games_id`) REFERENCES `games` (`id`);

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`booking_details_id`) REFERENCES `booking_details` (`id`),
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`event_activities_id`) REFERENCES `event_activities` (`id`),
  ADD CONSTRAINT `participants_ibfk_3` FOREIGN KEY (`game_package_id`) REFERENCES `game_package` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`bookings_id`) REFERENCES `bookings` (`id`);

--
-- Constraints for table `person_department`
--
ALTER TABLE `person_department`
  ADD CONSTRAINT `person_department_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `person_department_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `person_roles`
--
ALTER TABLE `person_roles`
  ADD CONSTRAINT `person_roles_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `person_roles_ibfk_2` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `visitor`
--
ALTER TABLE `visitor`
  ADD CONSTRAINT `fk_visitor_type` FOREIGN KEY (`visitor_type_id`) REFERENCES `visitor_type` (`id`),
  ADD CONSTRAINT `visitor_ibfk_1` FOREIGN KEY (`visitor_type_id`) REFERENCES `visitor_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
