-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 02:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--
CREATE DATABASE IF NOT EXISTS `assignment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `assignment`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` varchar(255) NOT NULL,
  `tile` varchar(255) NOT NULL,
  `publisher_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);
--
-- Database: `blogdb`
--
CREATE DATABASE IF NOT EXISTS `blogdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blogdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pwd`) VALUES
(1, 'MCH', 'mch786');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postid` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postid`, `title`, `description`, `link`, `img`, `category`) VALUES
(11, 'Real Time Chat App', 'Basic Chat App for Beginner , first user will login through his unique mobile number and enter the chat room and can be able to communication with other members', 'https://youtu.be/xf7OKi9zZzc', 'images/mch1688198283Real Time Chat App (3).png', 'Project'),
(12, 'HTML Full Course', 'You will complete this course in 4 days. This course contains 4 videos only.', 'https://www.youtube.com/playlist?list=PLm_d1HzZbDKVte7iw1eG7BvcAydkvWndb', 'images/mch1688199138html.png', 'Course'),
(13, 'CSS Full Course', 'This is a 20 days Course but you can complete it in 10 days because in this playlist one video is lecture and next is project then lecture then project...', 'https://www.youtube.com/playlist?list=PLm_d1HzZbDKWBV8nIGQyLCWxPdOpIVRtq', 'images/mch1688199287css.png', 'Course'),
(15, 'CSS in one video', 'This video is very helpful for you if you are looking a complete tutorial about CSS.', 'https://www.youtube.com/watch?v=WBhF2wWKXhs', 'images/mch1688200266css in one.png', 'Video'),
(16, 'Weather App in JS', 'In this project , we will use a Weather api which contains all cities weather in the world and we just fetch data hiddenly and show it on our App.', 'https://youtu.be/Nqnz9gd7lGI', 'images/mch1688208632Weather App.png', 'Project'),
(17, 'JavaScript Course 2023', 'This is 40 days Course , it is for beginners in which i had completed all important front-end concepts of javascript in this course with projects...', 'https://www.youtube.com/playlist?list=PLm_d1HzZbDKX9TPRnUodPQyOArYx4wTzG', 'images/mch1688282323javascript.png', 'Course'),
(18, 'Javascript in one video', 'This video is for begginner. it cover all the basic concept of javascript . i hope , you will enjoy this.', 'https://youtu.be/xlqcKABk68E', 'images/mch1688282468js.png', 'Video'),
(20, 'khanqah Sarajea', 'This is project ', 'https:///www.google.com', 'images/mch1688816044_C__Users_Marhaba_Desktop_Dashboard_index.html.png', 'Project');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `carrecordsystem`
--
CREATE DATABASE IF NOT EXISTS `carrecordsystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `carrecordsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `pwd`) VALUES
('project', 'project');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `password` (`pwd`);
--
-- Database: `chatroom`
--
CREATE DATABASE IF NOT EXISTS `chatroom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chatroom`;

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `msg` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `phone`, `msg`) VALUES
(22, '11223344', 'hi freelancer'),
(23, '44332211', 'g youtuber'),
(24, '11223344', 'kitna earn ker rahy ho'),
(25, '44332211', '1000$ per month'),
(26, '44332211', 'and you?'),
(27, '11223344', 'i am not earning just making videos');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `phone`) VALUES
(1, 'laheef', '22222222'),
(2, 'yasir hussain', '03041771932'),
(3, 'youtuber', '11223344'),
(4, 'freelancer', '44332211');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
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
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `khanqahsirajia`
--
CREATE DATABASE IF NOT EXISTS `khanqahsirajia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `khanqahsirajia`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin`, `pwd`) VALUES
(1, 'yasir', 'yasir');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `img` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `img`, `title`) VALUES
(6, 'uploadImgs/mch1688924230003.jpg', 'Trainning Event for Umrah 2018'),
(7, 'uploadImgs/mch1688924367002.jpg', 'Tranning Event for Hajj 2018'),
(8, 'uploadImgs/mch1688924403004.jpg', 'Trainning Session 2019'),
(9, 'uploadImgs/mch1688924452008.jpg', 'Events for Hajj Guidance'),
(10, 'uploadImgs/mch1689067961008.jpg', 'Traning Session 2020'),
(11, 'uploadImgs/mch1689067997012.jpg', 'Event Before Going to hajj'),
(12, 'uploadImgs/mch1689068024006.jpg', '2023 event'),
(13, 'uploadImgs/mch1689068078002.jpg', 'Brilliant 2022 Event'),
(14, 'uploadImgs/mch1689078992003.jpg', '2028 event');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `mobile`, `msg`, `status`) VALUES
(14, 'fasal', 'fasal@gmail.com', '03041771999', 'i want to for hajj. plz contact me.', 'read'),
(15, 'Muhammad Yasir Hussain', 'mianwalicodehouse@gmail.com', '03041771932', 'I want to go for hajj . so plz contact us', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `msg` varchar(400) NOT NULL,
  `button` varchar(150) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `msg`, `button`, `link`) VALUES
(1, '*Registration Open*', 'Good News!!!<br>If you will registered , i will get a specials offer , it will only for first 50 customers. So plz contact us through our contact us page and there you will see a contact form or feedback form beause we will find first 50 application.', 'Quickly Contact', 'contact.php');

-- --------------------------------------------------------

--
-- Table structure for table `pakages`
--

CREATE TABLE `pakages` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `img` varchar(150) NOT NULL,
  `days` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pakages`
--

INSERT INTO `pakages` (`id`, `title`, `img`, `days`, `category`) VALUES
(7, 'Basic Package', 'uploadImgs/mch1688922274p3.jpeg', '20', 'hajj'),
(8, 'Medium Package', 'uploadImgs/mch1688922331p4.jpeg', '24-25', 'hajj'),
(9, 'Premium Package', 'uploadImgs/mch1688922374p1.jpeg', '38', 'hajj'),
(11, 'Basic Package', 'uploadImgs/mch1689067647p4.jpeg', '20 days', 'umrah'),
(12, 'Medium Package', 'uploadImgs/mch1689067681p2.jpeg', '17 days', 'umrah'),
(13, 'Premium Package', 'uploadImgs/mch1689067706p5.jpeg', '38 days', 'umrah'),
(16, 'New Package', 'uploadImgs/mch1689078945p1.jpeg', '40', 'umrah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`email`),
  ADD UNIQUE KEY `id_2` (`id`,`mobile`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakages`
--
ALTER TABLE `pakages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pakages`
--
ALTER TABLE `pakages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `message`
--
CREATE DATABASE IF NOT EXISTS `message` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `message`;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `msg`, `time`) VALUES
(97, 'farhan', 'hi ahsan kasay ho', '2023-06-30 04:56:48'),
(98, 'ahsan', 'main teek hon tm kasay ho', '2023-06-30 04:57:10'),
(99, 'farhan', 'main bhi tek hon', '2023-06-30 04:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `phone`, `status`) VALUES
(6, 'farhan', '03417171920', 0),
(7, 'ahsan', '030415151920', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `oas`
--
CREATE DATABASE IF NOT EXISTS `oas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oas`;

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `ad_id` varchar(10) NOT NULL,
  `ad_name` varchar(50) NOT NULL,
  `ad_pswd` varchar(50) NOT NULL,
  `ad_eml` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`ad_id`, `ad_name`, `ad_pswd`, `ad_eml`) VALUES
('AD00000001', 'admin', 'admin', 'admin@gmail.com'),
('AD00002', 'Dilraj', 'QCoxFrwx', 'dilrajkaur18@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `t_status`
--

CREATE TABLE `t_status` (
  `s_id` varchar(50) NOT NULL,
  `s_stat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_status`
--

INSERT INTO `t_status` (`s_id`, `s_stat`) VALUES
('CUTM00008', 'Applied');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `s_detid` varchar(15) NOT NULL,
  `s_id` varchar(15) NOT NULL,
  `s_phn1` int(10) NOT NULL,
  `s_phn2` int(10) NOT NULL,
  `f_name` varchar(45) NOT NULL,
  `f_occ` varchar(45) NOT NULL,
  `f_phn` int(10) NOT NULL,
  `m_name` varchar(45) NOT NULL,
  `m_occ` varchar(45) NOT NULL,
  `m_phn` int(10) NOT NULL,
  `s_iop` int(10) NOT NULL,
  `s_sex` varchar(6) NOT NULL,
  `s_cadr` varchar(50) NOT NULL,
  `s_cst` varchar(20) NOT NULL,
  `s_cpin` int(6) NOT NULL,
  `s_cmob` int(10) NOT NULL,
  `s_padr` varchar(50) NOT NULL,
  `s_pst` varchar(20) NOT NULL,
  `s_ppin` int(6) NOT NULL,
  `s_pmob` int(10) NOT NULL,
  `s_ruc` varchar(10) NOT NULL,
  `s_natn` varchar(10) NOT NULL,
  `s_relg` varchar(10) DEFAULT NULL,
  `s_catg` varchar(3) NOT NULL,
  `s_mainsxam` varchar(20) NOT NULL,
  `s_mainsrank` varchar(10) NOT NULL,
  `s_mainsroll` varchar(20) NOT NULL,
  `s_mainsbrnch` varchar(45) NOT NULL,
  `s_branch` varchar(60) NOT NULL,
  `s_college` varchar(6) NOT NULL,
  `s_center` varchar(20) NOT NULL,
  `s_crtype` varchar(10) NOT NULL,
  `s_pcm` varchar(10) NOT NULL,
  `s_tenbrd` varchar(7) NOT NULL,
  `s_tenyop` varchar(4) NOT NULL,
  `s_tentotmark` varchar(4) NOT NULL,
  `s_tenmarkob` varchar(4) NOT NULL,
  `s_tendiv` varchar(4) NOT NULL,
  `s_tenprcmark` varchar(4) NOT NULL,
  `s_twlbrd` varchar(7) NOT NULL,
  `s_twlyop` varchar(4) NOT NULL,
  `s_twltotmark` varchar(4) NOT NULL,
  `s_twlmarkob` varchar(4) NOT NULL,
  `s_twldiv` varchar(4) NOT NULL,
  `s_twlprcmark` varchar(4) NOT NULL,
  `s_moi` varchar(8) NOT NULL,
  `s_pay` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`s_detid`, `s_id`, `s_phn1`, `s_phn2`, `f_name`, `f_occ`, `f_phn`, `m_name`, `m_occ`, `m_phn`, `s_iop`, `s_sex`, `s_cadr`, `s_cst`, `s_cpin`, `s_cmob`, `s_padr`, `s_pst`, `s_ppin`, `s_pmob`, `s_ruc`, `s_natn`, `s_relg`, `s_catg`, `s_mainsxam`, `s_mainsrank`, `s_mainsroll`, `s_mainsbrnch`, `s_branch`, `s_college`, `s_center`, `s_crtype`, `s_pcm`, `s_tenbrd`, `s_tenyop`, `s_tentotmark`, `s_tenmarkob`, `s_tendiv`, `s_tenprcmark`, `s_twlbrd`, `s_twlyop`, `s_twltotmark`, `s_twlmarkob`, `s_twldiv`, `s_twlprcmark`, `s_moi`, `s_pay`) VALUES
('DE00000003', 'CUTM00003', 1234567890, 1234567890, 'Madhusudan Mahato', 'Employee', 1234567890, 'Sheela Mahato', 'Housemaker', 1234567890, 400000, 'Female', 'Jamshedpur', 'Jharkhand', 831004, 1234567890, 'Jamshedpur', 'Jharkhand', 831004, 1234567890, 'City', 'Indian', 'Sikh', 'GEN', 'JEE MAIN', '723', '71', 'Jamshedpur', 'COMPUTER SCIENCE AND ENG', 'CIT', 'Bhubaneshwar', 'Regular', '80', 'ICSE', '2011', '100', '80', '1', '80', '     Ot', '2014', '100', '66', '1', '79', 'English', 'Self'),
('DE00000004', 'CUTM00008', 2147483647, 2147483647, 'Rakesh Saigal', 'Journalist', 2147483647, 'Nisha Saigal', 'Homemaker', 2147483647, 200000, 'Female', 'Near Meera Hotel', 'Odisha', 768028, 2147483647, 'Near Meera Hotel', 'Odisha', 768028, 2147483647, 'City', 'Indian', 'Hindu', 'GEN', 'OJEE', '177', '3456278', 'Bhubaneshwar', 'ELECTRICAL AND ELECTRONICS ENG', 'CIT', 'Bhubaneshwar', 'Regular', '89', 'CBSE', '2011', '500', '483', '1', '89', 'chse', '2013', '600', '512', '1', '75', 'English', 'Loan');

-- --------------------------------------------------------

--
-- Table structure for table `t_userdoc`
--

CREATE TABLE `t_userdoc` (
  `s_id` varchar(10) NOT NULL,
  `s_pic` varchar(200) NOT NULL,
  `s_tenmarkpic` varchar(200) NOT NULL,
  `s_tencerpic` varchar(200) NOT NULL,
  `s_twdmarkpic` varchar(200) NOT NULL,
  `s_twdcerpic` varchar(200) NOT NULL,
  `s_idprfpic` varchar(200) NOT NULL,
  `s_sigpic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_userdoc`
--

INSERT INTO `t_userdoc` (`s_id`, `s_pic`, `s_tenmarkpic`, `s_tencerpic`, `s_twdmarkpic`, `s_twdcerpic`, `s_idprfpic`, `s_sigpic`) VALUES
('CUTM00003', 'B612-2015-04-06-14-19-16.jpg', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', 'Signature.png'),
('CUTM00008', 'IMG_20150301_235958.JPG', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', 'Signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `t_usermark`
--

CREATE TABLE `t_usermark` (
  `s_id` varchar(50) NOT NULL,
  `s_omr` varchar(50) NOT NULL,
  `s_mark` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_usermark`
--

INSERT INTO `t_usermark` (`s_id`, `s_omr`, `s_mark`) VALUES
('CUTM00003', '123', 345);

-- --------------------------------------------------------

--
-- Table structure for table `t_user_data`
--

CREATE TABLE `t_user_data` (
  `s_id` varchar(10) NOT NULL,
  `s_pwd` varchar(15) NOT NULL,
  `s_dob` date DEFAULT NULL,
  `s_name` varchar(45) NOT NULL,
  `s_email` varchar(45) NOT NULL,
  `s_mob` varchar(10) DEFAULT NULL,
  `s_signupdate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_user_data`
--

INSERT INTO `t_user_data` (`s_id`, `s_pwd`, `s_dob`, `s_name`, `s_email`, `s_mob`, `s_signupdate`) VALUES
('CUTM00003', 'QBAfi0Wy', '2015-09-08', 'Archana Kumari', 'archanajsr2310@gmail.com', '1234567890', '2015-09-30 14:43:31.000000'),
('CUTM00004', 'MNexGlM2', '2015-10-14', 'Arti', 'artijha15@gmail.com', '1234567890', '2015-10-01 11:30:33.000000'),
('CUTM00006', 'DBwdVb88', '2015-10-05', 'Arti', 'artijha16@gmail.com', '1234567890', '2015-10-07 15:27:32.000000'),
('CUTM00007', 'CmjAQZGw', '2015-10-19', 'Dilraj', 'dilrajkaur18@gmail.com', '1234567890', '2015-10-08 14:39:52.000000'),
('CUTM00008', 'X3PXhxEV', '2015-10-15', 'Ankita Saigal', 'ankitabargarh@gmail.com', '6884280078', '2015-10-08 19:15:11.000000'),
('CUTM00009', 'qcowa7pC', '2015-10-20', 'Ansh', 'anshsinha0309@gmail.com', '1234567890', '2015-10-08 20:25:35.000000'),
('CUTM00010', '0pzGI4Bf', '2015-10-07', 'Sweety', 'abc@gmai.com', '1234567890', '2015-10-09 23:01:06.000000'),
('CUTM00011', 'NC3Ro5KU', '2015-10-06', 'abc', '130301csl062@cutm.ac.in', '1234567890', '2015-10-10 13:48:10.000000'),
('CUTM00012', 'ONOEc7iY', '0000-00-00', 'kjasdlkf', 'yasir@gmail.com', '123123', '2023-07-06 15:58:46.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `t_status`
--
ALTER TABLE `t_status`
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`s_detid`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `t_userdoc`
--
ALTER TABLE `t_userdoc`
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `t_usermark`
--
ALTER TABLE `t_usermark`
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `t_user_data`
--
ALTER TABLE `t_user_data`
  ADD PRIMARY KEY (`s_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_status`
--
ALTER TABLE `t_status`
  ADD CONSTRAINT `t_status_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `t_user_data` (`s_id`);

--
-- Constraints for table `t_user`
--
ALTER TABLE `t_user`
  ADD CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `t_user_data` (`s_id`);

--
-- Constraints for table `t_userdoc`
--
ALTER TABLE `t_userdoc`
  ADD CONSTRAINT `t_userdoc_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `t_user_data` (`s_id`);

--
-- Constraints for table `t_usermark`
--
ALTER TABLE `t_usermark`
  ADD CONSTRAINT `t_usermark_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `t_user_data` (`s_id`);
--
-- Database: `onlinepharmacy`
--
CREATE DATABASE IF NOT EXISTS `onlinepharmacy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlinepharmacy`;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `FULL_NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(50) DEFAULT NULL,
  `MEDICAL_ID` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`FULL_NAME`, `EMAIL`, `PHONE_NUMBER`, `MEDICAL_ID`, `PASSWORD`) VALUES
(' 1', '2', '3', '4', '5'),
(' sa', 'sa', 'sa', 'sa', 'sa'),
(' ad', 'd', 'dx', 'dx', 'DX');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `FULL_NAME` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`FULL_NAME`, `EMAIL`, `PHONE_NUMBER`, `PASSWORD`) VALUES
('e45678', '678', 'ghj', '678'),
('cw', 'cwe', 'we', 'ew'),
(' sxwdq', 'qwe3', 'qwfc', 'QWF'),
(' we', 'w', 'w', 'd'),
(' XW', 'WE', 'EW', 'CEW'),
(' xas', 'caq', 'cq', 'xqw'),
(' s', 's', 'xcs', 's'),
(' A`', 'ax', 'd', 'd');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"khanqahsirajia\",\"table\":\"notification\"},{\"db\":\"khanqahsirajia\",\"table\":\"pakages\"},{\"db\":\"khanqahsirajia\",\"table\":\"events\"},{\"db\":\"khanqahsirajia\",\"table\":\"feedbacks\"},{\"db\":\"khanqahsirajia\",\"table\":\"admin\"},{\"db\":\"blogdb\",\"table\":\"admin\"},{\"db\":\"blogdb\",\"table\":\"posts\"},{\"db\":\"message\",\"table\":\"message\"},{\"db\":\"todo_db\",\"table\":\"todos\"},{\"db\":\"chatroom\",\"table\":\"msg\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-07-11 12:41:19', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `todo_db`
--
CREATE DATABASE IF NOT EXISTS `todo_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todo_db`;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `todo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `todo`) VALUES
(48, '1) Aj main ny 2 bjy dokan per jana hy'),
(49, 'phir main dood lany jaon ga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
