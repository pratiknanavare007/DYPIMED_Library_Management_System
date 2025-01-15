-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 07, 2024 at 04:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `lms_admin`
--

CREATE TABLE `lms_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_admin`
--

INSERT INTO `lms_admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@gmail.com', 'Admin007@');

-- --------------------------------------------------------

--
-- Table structure for table `lms_author`
--

CREATE TABLE `lms_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `author_status` enum('Enable','Disable') NOT NULL,
  `author_created_on` varchar(30) NOT NULL,
  `author_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_author`
--

INSERT INTO `lms_author` (`author_id`, `author_name`, `author_status`, `author_created_on`, `author_updated_on`) VALUES
(20, 'Rabia Mukhtar', 'Enable', '2024-11-28 15:43:30', ''),
(21, 'Sharad Kumar Verma', 'Enable', '2024-11-30 12:48:04', ''),
(22, 'Dr.C.Vethirajan', 'Enable', '2024-11-30 12:52:15', ''),
(23, 'BALAGURUSAMY', 'Enable', '2024-11-30 12:56:08', '');

-- --------------------------------------------------------

--
-- Table structure for table `lms_book`
--

CREATE TABLE `lms_book` (
  `book_id` int(11) NOT NULL,
  `book_category` varchar(200) NOT NULL,
  `book_author` varchar(200) NOT NULL,
  `book_location_rack` varchar(100) NOT NULL,
  `book_name` text NOT NULL,
  `book_isbn_number` varchar(30) NOT NULL,
  `book_no_of_copy` int(5) NOT NULL,
  `book_status` enum('Enable','Disable') NOT NULL,
  `book_added_on` varchar(30) NOT NULL,
  `book_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_book`
--

INSERT INTO `lms_book` (`book_id`, `book_category`, `book_author`, `book_location_rack`, `book_name`, `book_isbn_number`, `book_no_of_copy`, `book_status`, `book_added_on`, `book_updated_on`) VALUES
(18, 'Economics', 'Rabia Mukhtar', 'First', 'An Eco-Critical Appraisal of the Selected', '978-81-933904-9-8', 9, 'Enable', '2024-11-28 15:44:32', '2024-11-29 13:46:47'),
(19, 'MCA', 'Sharad Kumar Verma', 'Second', 'Data Structure Using C', '978-93-5163-389-1', 10, 'Enable', '2024-11-30 12:49:30', ''),
(20, 'MCA', 'Sharad Kumar Verma', 'Second', 'Computer Networks', '978-93-8067-432-2', 10, 'Enable', '2024-11-30 12:50:38', ''),
(21, 'MBA', 'Dr.C.Vethirajan', 'Third', 'Exploring the Other Half- Challenges faced by women in India, pp: 214-220', '979-88-8772-566-6', 10, 'Enable', '2024-11-30 12:53:16', ''),
(22, 'MBA', 'Dr.C.Vethirajan', 'Third', 'Emerging Management Practices and Challenges', '978-81-935783-6-0', 10, 'Enable', '2024-11-30 12:54:06', ''),
(23, 'ENGINEERING', 'BALAGURUSAMY', 'Fourth', 'PROGRAMMING IN ANSI – C', '978-93-5134-133-8', 10, 'Enable', '2024-11-30 12:57:06', ''),
(24, 'ENGINEERING', 'BALAGURUSAMY', 'Fourth', 'OBJECT ORIENTED PROGRAMMING C++', '978-93-3921-481-4', 10, 'Enable', '2024-11-30 12:57:56', '');

-- --------------------------------------------------------

--
-- Table structure for table `lms_category`
--

CREATE TABLE `lms_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_status` enum('Enable','Disable') NOT NULL,
  `category_created_on` varchar(30) NOT NULL,
  `category_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_category`
--

INSERT INTO `lms_category` (`category_id`, `category_name`, `category_status`, `category_created_on`, `category_updated_on`) VALUES
(5, 'Economics', 'Enable', '2024-11-28 15:43:11', ''),
(6, 'MCA', 'Enable', '2024-11-30 12:44:37', ''),
(7, 'MBA', 'Enable', '2024-11-30 12:44:45', ''),
(8, 'ENGINEERING', 'Enable', '2024-11-30 12:45:15', '');

-- --------------------------------------------------------

--
-- Table structure for table `lms_issue_book`
--

CREATE TABLE `lms_issue_book` (
  `issue_book_id` int(11) NOT NULL,
  `book_id` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `issue_date_time` varchar(30) NOT NULL,
  `expected_return_date` varchar(30) NOT NULL,
  `return_date_time` varchar(30) NOT NULL,
  `book_fines` varchar(30) NOT NULL,
  `book_issue_status` enum('Issue','Return','Not Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_issue_book`
--

INSERT INTO `lms_issue_book` (`issue_book_id`, `book_id`, `user_id`, `issue_date_time`, `expected_return_date`, `return_date_time`, `book_fines`, `book_issue_status`) VALUES
(10, '978-81-933904-9-8', 'UQ3242342', '2024-11-29 13:46:47', '2024-12-09 13:46:47', '', '0', 'Issue');

-- --------------------------------------------------------

--
-- Table structure for table `lms_location_rack`
--

CREATE TABLE `lms_location_rack` (
  `location_rack_id` int(11) NOT NULL,
  `location_rack_name` varchar(200) NOT NULL,
  `location_rack_status` enum('Enable','Disable') NOT NULL,
  `location_rack_created_on` varchar(30) NOT NULL,
  `location_rack_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_location_rack`
--

INSERT INTO `lms_location_rack` (`location_rack_id`, `location_rack_name`, `location_rack_status`, `location_rack_created_on`, `location_rack_updated_on`) VALUES
(12, 'First', 'Enable', '2024-11-28 15:43:49', ''),
(13, 'Second', 'Enable', '2024-11-30 12:45:32', ''),
(14, 'Third', 'Enable', '2024-11-30 12:45:39', ''),
(15, 'Fourth', 'Enable', '2024-11-30 12:45:46', '');

-- --------------------------------------------------------

--
-- Table structure for table `lms_setting`
--

CREATE TABLE `lms_setting` (
  `setting_id` int(11) NOT NULL,
  `library_name` varchar(200) NOT NULL,
  `library_address` text NOT NULL,
  `library_contact_number` varchar(30) NOT NULL,
  `library_email_address` varchar(100) NOT NULL,
  `library_total_book_issue_day` int(5) NOT NULL,
  `library_one_day_fine` decimal(4,2) NOT NULL,
  `library_issue_total_book_per_user` int(3) NOT NULL,
  `library_currency` varchar(30) NOT NULL,
  `library_timezone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_setting`
--

INSERT INTO `lms_setting` (`setting_id`, `library_name`, `library_address`, `library_contact_number`, `library_email_address`, `library_total_book_issue_day`, `library_one_day_fine`, `library_issue_total_book_per_user`, `library_currency`, `library_timezone`) VALUES
(1, 'DYPIMED Library', 'Flat No. 1005, Sadaphuli apartment, talegoan, varale - 410507', '8308890613', 'library@gmail.com', 10, 10.00, 2, 'INR', 'Asia/Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `lms_user`
--

CREATE TABLE `lms_user` (
  `user_id` int(11) NOT NULL,
  `user_unique_id` varchar(30) NOT NULL,
  `user_prn_no` varchar(30) DEFAULT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_course_name` varchar(30) DEFAULT NULL,
  `user_studying_year` varchar(30) DEFAULT NULL,
  `user_admission_year` varchar(30) DEFAULT NULL,
  `user_contact_no` varchar(30) NOT NULL,
  `user_address` text NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `user_email_address` varchar(200) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_verificaton_code` varchar(100) NOT NULL,
  `user_verification_status` enum('No','Yes') NOT NULL,
  `user_status` enum('Enable','Disable') NOT NULL,
  `user_created_on` varchar(30) NOT NULL,
  `user_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_user`
--

INSERT INTO `lms_user` (`user_id`, `user_unique_id`, `user_prn_no`, `user_name`, `user_course_name`, `user_studying_year`, `user_admission_year`, `user_contact_no`, `user_address`, `user_profile`, `user_email_address`, `user_password`, `user_verificaton_code`, `user_verification_status`, `user_status`, `user_created_on`, `user_updated_on`) VALUES
(1, 'UQ3242342', '2114650545', 'Shoyeb Mulani', 'MCA', '1st', '2024', '8097905879', 'Zolo Talegoan', '1654267156-413630167.png', 'shoyebmulani@gmail.com', 'Shoyeb007@', 'b190bcd6e3b29674db036670cf122724', 'Yes', 'Enable', '2022-06-01 12:21:40', '2024-11-28 15:33:46'),
(11, 'U65857233', '7656565697', 'Pratik Nanavare', 'MCA', '1', '2024', '8308890613', 'Varale', '1732953149-2121580478.jpg', 'pratiknanavare@gmail.com', 'Pratik007@', '27d066980fbd3c3c0de3b4dec418ecd0', 'No', 'Enable', '2024-11-30 13:22:29', ''),
(12, 'U68078063', '7656565698', 'Alif Shaikh', 'MBA', '1', '2024', '8308890614', 'Indori', '1732953367-1266494747.jpg', 'alifshaikh@gmail.com', 'Alif007@', '9d6434a23e1fd5abea05e9f40d95cac0', 'No', 'Enable', '2024-11-30 13:26:07', ''),
(13, 'U86162392', '7656565699', 'Shoyab Mulani', 'MCA', '1', '2024', '9579367009', 'Salse', '1732953519-185958670.jpg', 'shoyabmulani207@gmail.com', 'papya@1001', '61801baaef98bcc39072b2296b4dfebc', 'No', 'Enable', '2024-11-30 13:28:39', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lms_admin`
--
ALTER TABLE `lms_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `lms_author`
--
ALTER TABLE `lms_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `lms_book`
--
ALTER TABLE `lms_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `lms_category`
--
ALTER TABLE `lms_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `lms_issue_book`
--
ALTER TABLE `lms_issue_book`
  ADD PRIMARY KEY (`issue_book_id`);

--
-- Indexes for table `lms_location_rack`
--
ALTER TABLE `lms_location_rack`
  ADD PRIMARY KEY (`location_rack_id`);

--
-- Indexes for table `lms_setting`
--
ALTER TABLE `lms_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `lms_user`
--
ALTER TABLE `lms_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lms_admin`
--
ALTER TABLE `lms_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lms_author`
--
ALTER TABLE `lms_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `lms_book`
--
ALTER TABLE `lms_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `lms_category`
--
ALTER TABLE `lms_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lms_issue_book`
--
ALTER TABLE `lms_issue_book`
  MODIFY `issue_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lms_location_rack`
--
ALTER TABLE `lms_location_rack`
  MODIFY `location_rack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lms_setting`
--
ALTER TABLE `lms_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lms_user`
--
ALTER TABLE `lms_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
