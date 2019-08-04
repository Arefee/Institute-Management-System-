-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2019 at 08:37 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `institute`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add classes', 1, 'add_classes'),
(2, 'Can change classes', 1, 'change_classes'),
(3, 'Can delete classes', 1, 'delete_classes'),
(4, 'Can view classes', 1, 'view_classes'),
(5, 'Can add insitute', 2, 'add_insitute'),
(6, 'Can change insitute', 2, 'change_insitute'),
(7, 'Can delete insitute', 2, 'delete_insitute'),
(8, 'Can view insitute', 2, 'view_insitute'),
(9, 'Can add teacher', 3, 'add_teacher'),
(10, 'Can change teacher', 3, 'change_teacher'),
(11, 'Can delete teacher', 3, 'delete_teacher'),
(12, 'Can view teacher', 3, 'view_teacher'),
(13, 'Can add student', 4, 'add_student'),
(14, 'Can change student', 4, 'change_student'),
(15, 'Can delete student', 4, 'delete_student'),
(16, 'Can view student', 4, 'view_student'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add permission', 6, 'add_permission'),
(22, 'Can change permission', 6, 'change_permission'),
(23, 'Can delete permission', 6, 'delete_permission'),
(24, 'Can view permission', 6, 'view_permission'),
(25, 'Can add group', 7, 'add_group'),
(26, 'Can change group', 7, 'change_group'),
(27, 'Can delete group', 7, 'delete_group'),
(28, 'Can view group', 7, 'view_group'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add content type', 9, 'add_contenttype'),
(34, 'Can change content type', 9, 'change_contenttype'),
(35, 'Can delete content type', 9, 'delete_contenttype'),
(36, 'Can view content type', 9, 'view_contenttype'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$KLzAuu90yPfw$a7jMbL9t7EJUExbhvT5cZwxa8g8TLMSgC8u3+E41P/0=', '2019-08-03 18:11:58.398320', 0, 'آموزشگاه', '', '', '', 0, 1, '2019-07-31 12:39:02.062310');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(5, 'admin', 'logentry'),
(7, 'auth', 'group'),
(6, 'auth', 'permission'),
(8, 'auth', 'user'),
(9, 'contenttypes', 'contenttype'),
(1, 'myInstitute', 'classes'),
(2, 'myInstitute', 'insitute'),
(4, 'myInstitute', 'student'),
(3, 'myInstitute', 'teacher'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-07-31 12:34:34.815514'),
(2, 'auth', '0001_initial', '2019-07-31 12:34:35.933338'),
(3, 'admin', '0001_initial', '2019-07-31 12:34:41.690257'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-07-31 12:34:42.854854'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-07-31 12:34:43.012946'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-07-31 12:34:43.843564'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-07-31 12:34:44.570136'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-07-31 12:34:45.264239'),
(9, 'auth', '0004_alter_user_username_opts', '2019-07-31 12:34:45.296576'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-07-31 12:34:45.551005'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-07-31 12:34:45.572955'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-07-31 12:34:45.604989'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-07-31 12:34:46.556852'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-07-31 12:34:47.174243'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-07-31 12:34:47.741146'),
(16, 'auth', '0011_update_proxy_permissions', '2019-07-31 12:34:47.889059'),
(17, 'myInstitute', '0001_initial', '2019-07-31 12:34:50.520055'),
(18, 'sessions', '0001_initial', '2019-07-31 12:34:51.596051');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ogi202qj04tb5ydezjab9p6x62vngy5y', 'ZTMxOTk4YjJlZmM4OWQ5YzllMDg3YmEzZmUxM2JlYTYxMTJlYjUyNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWY1YTY0MWY5ZjdjN2VlNTVkMDEzMzc4ZWUyNTA5ZTc0NTcxNWRlIn0=', '2019-08-17 18:11:58.447009');

-- --------------------------------------------------------

--
-- Table structure for table `myinstitute_classes`
--

CREATE TABLE `myinstitute_classes` (
  `term` varchar(20) NOT NULL,
  `classRoom` varchar(20) NOT NULL,
  `termNumber` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `finishDate` date NOT NULL,
  `days` varchar(100) NOT NULL,
  `startTime` time(6) NOT NULL,
  `finishTime` time(6) NOT NULL,
  `paymentTerm` int(11) NOT NULL,
  `paymentBook` bigint(20) NOT NULL,
  `teacherNumber_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myinstitute_classes`
--

INSERT INTO `myinstitute_classes` (`term`, `classRoom`, `termNumber`, `startDate`, `finishDate`, `days`, `startTime`, `finishTime`, `paymentTerm`, `paymentBook`, `teacherNumber_id`) VALUES
('R&R5', '302', 1, '1398-04-10', '1398-06-20', 'شنبه - چهارشنبه', '18:00:00.000000', '20:00:00.000000', 2000000, 680000, 1),
('SEC2', '103', 2, '1398-04-10', '1398-06-23', 'شنبه - چهارشنبه', '18:30:00.000000', '20:00:00.000000', 1800000, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `myinstitute_insitute`
--

CREATE TABLE `myinstitute_insitute` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `myinstitute_student`
--

CREATE TABLE `myinstitute_student` (
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `fatherName` varchar(20) NOT NULL,
  `nationalCode` bigint(20) NOT NULL,
  `studentNumber` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `homeNumber` bigint(20) NOT NULL,
  `cellphoneNumber` bigint(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `paymentTerm` int(11) NOT NULL,
  `paymentBook` bigint(20) NOT NULL,
  `paymentState` varchar(20) NOT NULL,
  `termNumber_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myinstitute_student`
--

INSERT INTO `myinstitute_student` (`firstName`, `lastName`, `fatherName`, `nationalCode`, `studentNumber`, `birthday`, `homeNumber`, `cellphoneNumber`, `address`, `email`, `image`, `paymentTerm`, `paymentBook`, `paymentState`, `termNumber_id`) VALUES
('عارفه', 'حمیدی', 'علیرضا', 2580975780, 1, '1375-12-08', 34553417, 9112333453, 'کوچصفهان', 'arefehamidi.guilan@gmail.com', 'image/IMG_20181025_210407_761.jpg', 2000000, 680000, 'نقدی', 1),
('هستی', 'حسنی مقدم', '---', 14654, 2, '1374-10-23', 1465, 488854, 'تهران', 'hasti@g.com', '', 150000, 0, 'اقساط', 1),
('راحله', 'دیانتی', 'گداعلی', 19, 3, '1353-06-04', 468474, 13524, 'کوچصفهان خیابان مطهری', 'r@gmail.com', 'image/20170825_222159_-_Copy.jpg', 2000000, 0, 'نقدی', 1),
('روح انگیز', 'دیانتی', 'گداعلی', 254, 4, '1353-06-04', 4856, 542, '46354', 'r@gmail.com', '', 1121, 13251, 'نقدی', 1),
('فاطمه', 'قربانعلی زاده محسنی', 'یونس', 2580988912, 5, '1376-02-10', 1334554170, 9117604576, 'کوچصفهان', 'f@gmail.com', 'image/20190130_001723.jpg', 20000000, 20000, 'نقدی', 1),
('هدیه', 'عابدی', 'هادی', 46584, 7, '1383-06-26', 46464, 87465, 'سنگر', 'h@gmail.com', '', 500000, 0, 'اقساط', 1),
('محدثه', 'گل پور', '---', 4136131, 8, '1376-04-26', 464131, 13514674, 'لاهیجان', 'm@gmail.com', 'image/IMG_20190503_153819_314.jpg', 500000, 0, 'اقساط', 1),
('آوا', 'فیاض ایزدی', '---', 4864, 9, '1376-05-21', 496413, 546879, 'لاهیجان', 'a_f@gmail.com', 'image/IMG_7116.JPG', 1000000, 0, 'اقساط', 2);

-- --------------------------------------------------------

--
-- Table structure for table `myinstitute_teacher`
--

CREATE TABLE `myinstitute_teacher` (
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `fatherName` varchar(20) NOT NULL,
  `nationalCode` bigint(20) NOT NULL,
  `teacherNumber` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `homeNumber` bigint(20) NOT NULL,
  `cellphoneNumber` bigint(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myinstitute_teacher`
--

INSERT INTO `myinstitute_teacher` (`firstName`, `lastName`, `fatherName`, `nationalCode`, `teacherNumber`, `birthday`, `homeNumber`, `cellphoneNumber`, `address`, `email`, `image`) VALUES
('نیما', 'شیرین زاده', 'فریدون', 8464541, 1, '1374-11-03', 65985514, 468454, 'رشت', 'nimashirinzade@gmail.com', 'image/IMG_20190522_145752_856.jpg'),
('یلدا', 'پروری مقدم', 'بهمن', 468794631131, 2, '1352-10-16', 568546, 74865476, 'رشت', 'yalda.guilan@gmail.com', 'image/IMG_20190515_215401_545_-_Copy_geXX8X8.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `myinstitute_classes`
--
ALTER TABLE `myinstitute_classes`
  ADD PRIMARY KEY (`termNumber`),
  ADD KEY `myInstitute_classes_teacherNumber_id_e03486c1_fk_myInstitu` (`teacherNumber_id`);

--
-- Indexes for table `myinstitute_insitute`
--
ALTER TABLE `myinstitute_insitute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myinstitute_student`
--
ALTER TABLE `myinstitute_student`
  ADD PRIMARY KEY (`studentNumber`),
  ADD UNIQUE KEY `nationalCode` (`nationalCode`),
  ADD KEY `myInstitute_student_termNumber_id_09e08945_fk_myInstitu` (`termNumber_id`);

--
-- Indexes for table `myinstitute_teacher`
--
ALTER TABLE `myinstitute_teacher`
  ADD PRIMARY KEY (`teacherNumber`),
  ADD UNIQUE KEY `nationalCode` (`nationalCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `myinstitute_classes`
--
ALTER TABLE `myinstitute_classes`
  MODIFY `termNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myinstitute_insitute`
--
ALTER TABLE `myinstitute_insitute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myinstitute_student`
--
ALTER TABLE `myinstitute_student`
  MODIFY `studentNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `myinstitute_teacher`
--
ALTER TABLE `myinstitute_teacher`
  MODIFY `teacherNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myinstitute_classes`
--
ALTER TABLE `myinstitute_classes`
  ADD CONSTRAINT `myInstitute_classes_teacherNumber_id_e03486c1_fk_myInstitu` FOREIGN KEY (`teacherNumber_id`) REFERENCES `myinstitute_teacher` (`teacherNumber`);

--
-- Constraints for table `myinstitute_student`
--
ALTER TABLE `myinstitute_student`
  ADD CONSTRAINT `myInstitute_student_termNumber_id_09e08945_fk_myInstitu` FOREIGN KEY (`termNumber_id`) REFERENCES `myinstitute_classes` (`termNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
