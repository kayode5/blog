-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2020 at 05:15 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olaitan_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `fullname`, `password`, `location`, `phone`, `bio`) VALUES
(6, 'okuweh6@gmail.com', 'okuweh wesley1', '$2y$10$j7FVSLs6OA3CMLzrXKFTIOVRSEyOXDEXNr4VvADVsve1cRVogrozK', 'Lagos', '09847563746', 'dsthrd6 sxtzh tdsh rth ed trh rdh try shd td h rsd th seh trs rhe ash trs h th ets htr h e5t 5h resh rt h rth rt h rt h dsthrd6 sxtzh tdsh rth ed trh rdh try shd td h rsd th seh trs rhe ash trs h th ets htr h e5t 5h resh rt h rth rt h rt h');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `bio` text NOT NULL,
  `status` enum('approve','disapprove','pending','') NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `email`, `username`, `password`, `location`, `phone`, `bio`, `status`, `date`) VALUES
(1, 'wesley@gmail.com', 'efe_10', '$2y$10$yHgQnpeUQoT7XX1omF2gquxyejyj8Wv/IncE4LGyMP27FG83lBUei', '', '', '', 'approve', '2020-10-12 02:08:06'),
(4, 'muvirahndi@gmail.com', 'bayo', '$2y$10$GWLc8Vkck3grKhSF.1mlGOnVT3NKIqFVzXajR6tpRpGuwQxEUApl2', '', '094856758675', 'About Me', 'approve', '2020-10-28 23:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `content`, `image`) VALUES
(1, 'Today Fashion', '<div><b>This is All About Today Fashion.....You need to know!!!!!!</b><br></div>', 'images/IMG-20180829-WA0016.jpg'),
(4, 'Hair', '<b>This is All About Hair.....You need to know</b>', 'images/pic3.jpg'),
(7, 'Nails', '<b>This is All About Nails.....You need to know</b>', 'images/pic2.jpg'),
(8, 'Makeup', '<b>This is All About Makeup.....You need to know</b>', 'images/pic1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `comment` varchar(10000) NOT NULL,
  `date` text NOT NULL,
  `postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `email`, `fullname`, `comment`, `date`, `postid`) VALUES
(1, 'muvirahndi@gmail.com', 'Rahndi efe', 'dxhffgc', '2020-11-01 18:42:30', 2),
(3, 'muvirahndi@gmail.com', 'Rahndi efe', 'Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. Sed maximus orci ac condi mentum efficitur. Suspendi potenti. Fusce diam felis, ullamcor aca felis sed, volutpat varius tortor. Ut eleifend justo sed quam blandit, vehicula ante hendrerit. Sed condimentum libero vel eros porta, eu malesuada nulla bibendum. Proin varius sollicitudin nulla quis fermentum. Nunc vitae arcu eget diam gravida ultrices finibus nec mi. Maecenas egestas libero.\r\n\r\nDonec ultricies convallis urna. Morbi consequat vestibulum nunc sed semper. Proin iaculis risus eleifend, efficitur eros et, tristique tortor. Integer nec lacinia augue. Curabitur mattis vel orci id mattis. Aliquam eu dignissim sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris vitae fermentum quam.', '2020-11-01 18:51:23', 8),
(4, 'niyi@gmail.com', 'olaniyi Niyi', 'nice', '2020-11-09 00:12:51', 12),
(5, 'niyi@gmail.com', 'olaniyi Niyi', 'nice', '2020-11-09 00:13:02', 12);

-- --------------------------------------------------------

--
-- Table structure for table `like_unlike`
--

CREATE TABLE `like_unlike` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `type` int(2) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `like_unlike`
--

INSERT INTO `like_unlike` (`id`, `userid`, `postid`, `type`, `timestamp`) VALUES
(1, 5, 14, 1, '2020-11-01 20:06:59'),
(2, 2, 14, 1, '2020-11-01 21:12:18'),
(3, 2, 15, 0, '2020-11-01 21:56:13'),
(4, 2, 12, 0, '2020-11-01 21:22:32'),
(5, 1, 15, 1, '2020-11-01 22:00:39'),
(6, 1, 8, 1, '2020-11-01 22:06:11'),
(7, 3, 11, 0, '2020-11-09 00:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `postid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `image`, `category`, `postid`, `date`) VALUES
(6, 'wrvfesdre', '<div>srgfvdrfgvdtf</div>', 'images/5381b6421c260993045fd15d4ae0f439.jpg', 'Today Fashion', 6, '2020-10-23 15:55:02'),
(7, 'wrvfesdre', '<div>srgfvdrfgvdtf</div>', 'images/5381b6421c260993045fd15d4ae0f439.jpg', 'Today Fashion', 6, '2020-10-23 15:56:00'),
(8, 'This is a Blog Title', '<div>retbrfydbndfyh</div>', 'images/IMG-20180829-WA0016.jpg', 'Hair', 6, '2020-10-29 20:46:00'),
(10, 'The Best Street Style Photos From Russia Fashion Week Fall 2020', '<div><div>Lorem ipsum dolor sit amet, conse ctetur dipiscing elit. Sed maximus condi mentum efficitur. Suspendi potenti. Fusce diam felis, ullamcor aca felis sed, volutpat varius tortor. Ut eleifend justo sed quam blandit vehicula ante hendrerit. Sed condimentum libero vel eros porta, eu malesuada nulla bibendum.</div><div>Proin varius sollicitudin nulla quis fermentum. Nunc vitae arcu eget diam gravida ultrices finibus nec mi. Maecenas egestas libero. Donec ultricies convallis urna. Morbi consequat stibulum nunc sed semper.</div><div>Aliquam laoreet fringilla velit, quis pulvinar ex bibendum vestibulum. Aenean vel dapibus ex. Curabitur sodales dui ut hendrerit volutpat. Phasellus fringilla semper urna, eu dapibus lacus porttitor at. Sed eget pellentes orci. Aliquam pulvinar augue sed molestie semper. Integer ullamcorper magna fringilla arcu rutrum, sed porttitor ex viverra.</div><h4 style=\"margin-bottom: 10px; font-family: Poppins, sans-serif; font-weight: 600; line-height: 32px; color: rgb(6, 4, 41); font-size: 24px;\">Curabitur elementum lobortis malesuada.</h4><div>Aliquam laoreet fringilla velit, quis pulvinar ex bibendum vestibulum. Aenean vel dapibus ex. Curabitur sodales dui ut hendrerit volutpat. Phasellus fringilla semper urna, eu dapibus lacus porttitor at. Sed eget pellentes orci. Aliquam pulvinar augue sed molestie semper. Integer ullamcorper magna ex viverra.</div><div><br></div><div class=\"wp-block-image\" style=\"color: rgb(80, 80, 80); font-family: &quot;PT Serif&quot;, serif; font-size: 19px;\"></div></div>', 'images/pic3.jpg', 'Hair', 4, '2020-10-30 11:43:00'),
(11, 'Lori Loughlin and May Finally Break Their Silence in Court Tomorrow', '<div><div>Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. Sed maximus orci ac condi mentum efficitur. Suspendi potenti. Fusce diam felis, ullamcor aca felis sed, volutpat varius tortor. Ut eleifend justo sed quam blandit, vehicula ante hendrerit. Sed condimentum libero vel eros porta, eu malesuada nulla bibendum. Proin varius sollicitudin nulla quis fermentum. Nunc vitae arcu eget diam gravida ultrices finibus nec mi. Maecenas egestas libero.</div><div>Donec ultricies convallis urna. Morbi consequat vestibulum nunc sed semper. Proin iaculis risus eleifend, efficitur eros et, tristique tortor. Integer nec lacinia augue. Curabitur mattis vel orci id mattis. Aliquam eu dignissim sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris vitae fermentum quam.</div><ul style=\"margin-top: 0px; margin-bottom: 30px; list-style-position: initial; list-style-image: initial; padding-left: 20px; color: rgb(80, 80, 80); font-family: &quot;PT Serif&quot;, serif; font-size: 19px;\"><li style=\"padding: 8px; position: relative; line-height: 1.5;\"><a style=\"color: rgb(86, 8, 224); outline: none 0px; transition: all 0.2s linear 0s; box-shadow: rgb(86, 8, 224) 0px -1px 0px 0px inset;\">Duis auctor sed elit quis consequat.</a>&nbsp;Fusce est quam, sodales vel eros vitae, dictum consectetur dolor. Fusce convallis mauris tellus, eu aliquet magna aliquet eget.</li><li style=\"padding: 8px; position: relative; line-height: 1.5;\">Nam iaculis,&nbsp;<a style=\"color: rgb(86, 8, 224); outline: none 0px; transition: all 0.2s linear 0s; box-shadow: rgb(86, 8, 224) 0px -1px 0px 0px inset;\">enim ut elementum maximus, quam lectus convallis metus,&nbsp;</a>id suscipit risus lectus id urna. Cras viverra consectetur diam. Morbi sed consequat tellus, in vehicula urna.</li><li style=\"padding: 8px; position: relative; line-height: 1.5;\"><a style=\"color: rgb(86, 8, 224); outline: none 0px; transition: all 0.2s linear 0s; box-shadow: rgb(86, 8, 224) 0px -1px 0px 0px inset;\">Morbi sit amet diam sodales, sodales purus quis,&nbsp;</a>feugiat turpis. Maecenas elementum mauris quis plac erat maximus.&nbsp;<a style=\"color: rgb(86, 8, 224); outline: none 0px; transition: all 0.2s linear 0s; box-shadow: rgb(86, 8, 224) 0px -1px 0px 0px inset;\">Curabitur elementum lobortis malesuada.</a></li></ul><div>Aliquam laoreet fringilla velit, quis pulvinar ex bibendum vestibulum. Aenean vel dapibus ex. Curabitur sodales dui ut hendrerit volutpat. Phasellus fringilla semper urna, eu dapibus lacus porttitor at. Sed eget pellentes orci. Aliquam pulvinar augue sed molestie semper. Integer ullamcorper magna fringilla arcu rutrum, sed porttitor ex viverra.</div></div>', 'images/pic1.jpg', 'Nail', 4, '2020-10-26 11:44:00'),
(12, 'New Subtly Subversive Power of Pink Lipstick', '<div><div>Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. Sed maximus orci ac condi mentum efficitur. Suspendi potenti. Fusce diam felis, ullamcor aca felis sed, volutpat varius tortor. Ut eleifend justo sed quam blandit, vehicula ante hendrerit. Sed condimentum libero vel eros porta, eu malesuada nulla bibendum. Proin varius sollicitudin nulla quis fermentum. Nunc vitae arcu eget diam gravida ultrices finibus nec mi. Maecenas egestas libero.</div><div>Donec ultricies convallis urna. Morbi consequat vestibulum nunc sed semper. Proin iaculis risus eleifend, efficitur eros et, tristique tortor. Integer nec lacinia augue. Curabitur mattis vel orci id mattis. Aliquam eu dignissim sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris vitae fermentum quam.</div></div>', 'images/pic6.jpg', 'Nail', 4, '2020-10-05 11:54:00'),
(13, 'Curabitur elementum lobortis malesuada.', '<div><span style=\"color: rgb(80, 80, 80); font-family: &quot;PT Serif&quot;, serif; font-size: 19px;\">Donec ultricies convallis urna. Morbi consequat vestibulum nunc sed semper. Proin iaculis risus eleifend, efficitur eros et, tristique tortor. Integer nec lacinia augue. Curabitur mattis vel orci id mattis. Aliquam eu dignissim sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris vitae fermentum quam</span><br></div>', 'images/pic2.jpg', 'Makeup', 4, '2020-10-26 11:56:00'),
(14, 'Blog Title', '<div><span style=\"color: rgb(80, 80, 80); font-family: &quot;PT Serif&quot;, serif; font-size: 19px;\">Lorem ipsum dolor sit amet, conse ctetur adipiscing elit. Sed maximus orci ac condi mentum efficitur. Suspendi potenti. Fusce diam felis, ullamcor aca felis sed, volutpat varius tortor. Ut eleifend justo sed quam blandit, vehicula ante hendrerit. Sed condimentum libero vel eros porta, eu malesuada nulla bibendum. Proin varius sollicitudin nulla quis fermentum. Nunc vitae arcu eget diam gravida ultrices finibus nec mi. Maecenas egestas libero. Donec ultricies convallis urna. Morbi consequat vestibulum nunc sed semper. Proin iaculis risus eleifend, efficitur cam.</span><br></div>', '../admin/images/pic4.jpg', 'Makeup', 4, '2020-10-21 00:00:00'),
(15, 'Blog Title1', '<div>Donec ultricies convallis urna. Morbi consequat vestibulum nunc sed semper. Proin iaculis risus eleifend, efficitur eros et, tristique tortor. Integer nec lacinia augue. Curabitur mattis vel orci id mattis. Aliquam eu dignissim sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris vitae fermentum quam.</div><ul style=\"margin-top: 0px; margin-bottom: 30px; list-style-position: initial; list-style-image: initial; padding-left: 20px; color: rgb(80, 80, 80); font-family: &quot;PT Serif&quot;, serif; font-size: 19px;\"><li style=\"padding: 8px; position: relative; line-height: 1.5;\"><a style=\"color: rgb(86, 8, 224); outline: none 0px; transition: all 0.2s linear 0s; box-shadow: rgb(86, 8, 224) 0px -1px 0px 0px inset;\">Duis auctor sed elit quis consequat.</a>&nbsp;Fusce est quam, sodales vel eros vitae, dictum consectetur dolor. Fusce convallis mauris tellus, eu aliquet magna aliquet eget.</li></ul>', '../admin/images/pic2.jpg', 'Tip Fash', 4, '2020-10-20 04:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `status` enum('pending','approve','disapprove','') NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `fullname`, `password`, `status`, `date`) VALUES
(4, 'olly@gmail.com', 'olly', '$2y$10$E8T6.pQJQeF.s8AlmOUKnOM42LqaQ59zSSp/NEBPREk4RQuNqYwza', 'approve', '2020-11-14 15:02:00'),
(5, 'bubbles45@gmail.com', 'Bubbles', '$2y$10$FlNi8K6v1ZKJwCH.aap7TuhUbYqtSMGXocq2PnIAtEWzJD4ogkjna', 'approve', '2020-11-14 15:06:00'),
(6, 'hikkysobayo@gmail.com', 'hikky', '$2y$10$QjwgU2aSpy9.hOskzJCR4OdDsnUv.X9T0G1sIixt.g.xO1Oabkbjm', 'approve', '2020-11-14 15:07:00'),
(7, 'penkolee@gmail.com', 'penko', '$2y$10$0XfsjWI36gmJHk5xKcgViOPV.5bPyIkFQfOdglsLEaG4.Pln7ryGW', 'approve', '2020-11-14 15:08:00'),
(8, 'kayode@gmail.com', 'kayode', '$2y$10$LAWF2G2kcQuXM3LwoB3yV.gaSA8yIx/8Ft8vSS/dN4LNz3DpteYuO', 'approve', '2020-11-14 15:12:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_unlike`
--
ALTER TABLE `like_unlike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `like_unlike`
--
ALTER TABLE `like_unlike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
