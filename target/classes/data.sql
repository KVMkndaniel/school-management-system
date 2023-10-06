-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2023 at 02:47 PM
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
-- Database: `scm_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL,
  `level` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `description` longtext NOT NULL,
  `author` longtext NOT NULL,
  `class_id` longtext NOT NULL,
  `status` longtext NOT NULL,
  `price` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `name_numeric` longtext NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `day` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `databasechangeloglock`
--

CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `number_of_room` longtext NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `date` longtext NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `grade_point` longtext NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `add_fee` int(11) NOT NULL,
  `security_fee` int(11) NOT NULL,
  `tuition_fee` int(11) NOT NULL,
  `annual_fee` int(11) NOT NULL,
  `stationary_fee` int(11) NOT NULL,
  `multimedia_fee` int(11) NOT NULL,
  `others` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `payment_timestamp` longtext NOT NULL,
  `payment_method` longtext NOT NULL,
  `payment_details` longtext NOT NULL,
  `status` longtext NOT NULL COMMENT 'paid or unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext NOT NULL,
  `english` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` int(11) NOT NULL DEFAULT 0,
  `mark_total` int(11) NOT NULL DEFAULT 100,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext NOT NULL,
  `notice` longtext NOT NULL,
  `create_timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL,
  `student_id` int(11) NOT NULL,
  `relation_with_student` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `address` longtext NOT NULL,
  `profession` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` longtext NOT NULL,
  `transaction_id` longtext NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext NOT NULL,
  `description` longtext NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_STAFFS'),
(3, 'ROLE_STUDENTS');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL,
  `father_name` longtext NOT NULL,
  `mother_name` longtext NOT NULL,
  `class_id` longtext NOT NULL,
  `roll` longtext NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_room_number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`) VALUES
(2, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(3, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(4, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(5, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(6, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(7, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(8, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(9, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(10, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(11, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(12, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01'),
(13, 'test_e75995a6b555', 'test_5a8c85405e27', 'test_ae48a607d038', 'test_13849f43738d', 'test_6c787f69b158', 'test_943eea37986f', 'test_fd453ea91ece', 'test_147634ddcf63', 'test_4c562fe4f5f6', 'test_3007db794177', 'test_ba06fe948094', 'test_a7f95bd9de0c', 'test_c1e4a131796e', 88, 20, 'test_5eedd49f1a01');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`) VALUES
(1, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(2, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(3, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(4, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(5, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(6, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(7, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(8, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(9, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(10, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(11, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(12, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(13, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(14, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987'),
(15, 'test_628e7e68167e', 'test_a86727a36b0c', 'test_365902260af9', 'test_72428235e36a', 'test_a34cb241fac6', 'test_1c1d99ef3675', 'test_14e8803ff5fa', 'test_f71f8c8622f8', 'test_23244c22d987');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `route_name` longtext NOT NULL,
  `number_of_vehicle` longtext NOT NULL,
  `description` longtext NOT NULL,
  `route_fare` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL,
  `username` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(18, 'student@gmail.com', '$2a$10$9hd6pTk.SETsYn/NyaapSO5ftzMK0zKisIp29JmtvLyw9fGDO0rCK', 'student'),
(19, 'admin@gmail.com', '$2a$10$rAdRSUwj.VlzeNnUeCRpBuMtYI1FKHfekmkAUkKEyZ2ASTM9pK32i', 'admin'),
(20, 'staffs@gmail.com', '$2a$10$uLmU7622MKDv6PcPsYzlsuGJhTzBIe2WpTZcCF4DjXuE3awYM4jsa', 'staffs'),
(21, 'studen1@gmail.com', '$2a$10$MPtPBlNaafqbTzAUvGmSxORkHJYqgAye8tWm73EoE0QOkO9HmNn9e', 'studen1');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `pk_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`pk_id`, `role_id`, `user_id`) VALUES
(1, 3, 18),
(2, 1, 19),
(3, 2, 20),
(4, 3, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `databasechangeloglock`
--
ALTER TABLE `databasechangeloglock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`pk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
