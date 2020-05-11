-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 08:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_me`
--

CREATE TABLE `about_me` (
  `id` int(11) NOT NULL,
  `sub_title` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `descp` text NOT NULL,
  `education` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_me`
--

INSERT INTO `about_me` (`id`, `sub_title`, `title`, `descp`, `education`) VALUES
(1, 'Introduction', 'about me', 'Please note that your employer or Internet service provider can still track the pages you visit.Please note that your employer or Internet service provider can still track the pages you visit.Please note that your employer or Internet service provider can still track the pages you visit.', '');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `banner` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner`) VALUES
(1, 'upload/banner/banner.png');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `image`, `date`) VALUES
(4, 'upload/brand/3c379334a1.png', '2020-03-08 02:02:11'),
(5, 'upload/brand/9cd99415d2.png', '2020-03-08 02:02:11'),
(6, 'upload/brand/682dd11f12.png', '2020-03-08 02:02:11'),
(7, 'upload/brand/c76064f187.png', '2020-03-08 02:02:11'),
(8, 'upload/brand/81b27840cd.png', '2020-03-08 02:02:11'),
(9, 'upload/brand/1ad9e80a0c.png', '2020-03-08 22:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `lives_in` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `lives_in`, `address`, `phone`, `email`) VALUES
(1, 'Living Address', 'Gaibandha,Dhaka,Bangladesh.', '01722260010', 'sarjid777@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `copyright`
--

CREATE TABLE `copyright` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `copyright`
--

INSERT INTO `copyright` (`id`, `name`) VALUES
(1, 'Sarjid islam Habil');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `skill` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `title`, `sub_title`, `skill`, `status`) VALUES
(3, '2015', 'Master of Database Administration', 100, 0),
(6, 'PHp', 'I Have strong Knowledge in Opp', 80, 1),
(8, 'Html', 'Better Knowlede in', 85, 1),
(9, 'Css', 'Better Knowlede in Css and Bootsrap', 75, 1),
(12, 'laravel', 'Better Knowlede in', 82, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

CREATE TABLE `facts` (
  `id` int(11) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `count` int(50) NOT NULL,
  `fact_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facts`
--

INSERT INTO `facts` (`id`, `icon`, `count`, `fact_name`, `status`) VALUES
(3, 'flaticon-like', 200, 'Active Product', 1),
(5, 'fa fa-user', 300, 'active now', 1),
(6, 'flaticon-award', 20, 'Feature Item', 1),
(7, 'flaticon-event', 5, 'year Experience', 1);

-- --------------------------------------------------------

--
-- Table structure for table `favicon`
--

CREATE TABLE `favicon` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favicon`
--

INSERT INTO `favicon` (`id`, `icon`) VALUES
(1, 'upload/favicon/favicon.png');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) NOT NULL,
  `logo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `logo`) VALUES
(1, 'upload/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `time` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `time`, `status`) VALUES
(9, 'roman ', 'sohidulislam@gmail.com', 'Thats a good website', '2020-03-08 21:53:36', 1),
(13, 'hasan', 'sarjid77@gmail.com', 'I\'m Will Smith, professional web developer with long time experience in this field​.', '2020-03-08 22:23:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `descp` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `descp`, `status`) VALUES
(1, 'fa fa-user', 'web Development', 'web Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Developmentweb Development', 1),
(2, 'fa fa-pencil', 'Image Editing', '  Please note that your employer or Internet service provider can still track the pages you visit.Please note that your employer or Internet service provider can still track the pages you visit.Please note that your employer or Internet service provider can still track the pages you visit.', 1),
(5, 'fab fa-free-code-camp', 'Unlimited Features', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 1),
(6, 'fal fa-desktop', 'Responsive', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 1),
(7, 'fal fa-headset', 'Supper Support', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 1),
(8, 'fab fa-react', 'Creative Design', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_self`
--

CREATE TABLE `tbl_self` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `descp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_self`
--

INSERT INTO `tbl_self` (`id`, `title`, `name`, `descp`) VALUES
(1, 'Hello', 'iam Sarjid islam Habil', 'I\'m professional web developer with long time experience in this field​.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_socials`
--

CREATE TABLE `tbl_socials` (
  `id` int(11) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `pinterest` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_socials`
--

INSERT INTO `tbl_socials` (`id`, `facebook`, `twitter`, `instagram`, `pinterest`) VALUES
(1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `username`, `email`, `password`, `role`, `image`) VALUES
(2, 'Sarjid islam Habil', 'Admin', 'sarjid777@gmail.com', 'dd4b21e9ef71e1291183a46b913ae6f2', 0, 'upload/users/image.png'),
(3, '', 'Author', 'author@gmail.com', '29c3eea3f305d6b823f562ac4be35217', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `title`, `comment`, `image`) VALUES
(2, 'Sarjid islam Habil', 'javascript', 'MY RECENT BEST WORKSMY RECENT BEST WORKSMY RECENT BEST WORKSMY RECENT BEST WORKSMY RECENT BEST WORKS', 'upload/client/df8a9eb15e.png'),
(3, 'Active Product', 'laravel', 'MY RECENT BEST WORKSMY RECENT BEST WORKSMY RECENT BEST WORKS', 'upload/client/db2d2aff37.png'),
(5, 'Sarjid islam Habil', 'laravel', 'Hey You Are very good person', 'upload/client/ad8f61c188.png');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `name`) VALUES
(1, 'Habil-Personal Website');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `title` varchar(30) NOT NULL,
  `descp` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `cat_name`, `title`, `descp`, `image`, `date`) VALUES
(3, 'web design', 'Web Development', 'Graphic design is the process of visual communication and problem-solving through the use of typography, photography, and illustration. The field is considered a subset of visual communication and communication design, but sometimes the term \"graphic design\" is used synonymously', 'upload/post/67f4015b80.jpg', '2020-03-07 15:56:16'),
(6, 'web design', 'laravel', 'Graphic design is the process of visual communication and problem-solving through the use of typography, photography, and illustration. The field is considered a subset of visual communication and communication design, but sometimes the term \"graphic design\" is used synonymously', 'upload/post/c5a8da34ba.jpg', '2020-03-07 15:57:10'),
(8, 'web design', 'laravel', 'Graphic design is the process of visual communication and problem-solving through the use of typography, photography, and illustration. The field is considered a subset of visual communication and communication design, but sometimes the term \"graphic design\" is used synonymously', 'upload/post/a8e9eeae73.jpg', '2020-03-07 16:00:40'),
(9, 'web Design', 'CONSECTETUR NEQUE ELIT QUIS NU', 'Express dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus. Was popularised in the 1960s withs the release of Letraset sheets containing Lorem Ipsum passags, and more recently with desktop publishing software like Aldus PageMaker including versions.\r\n\r\nRxpress dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestlibers dolosr auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus.Express dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus. Was popularised in the 1960s withs the release of Letraset sheets containing Lorem Ipsum passags, and more recently with desktop publishing software like Aldus PageMaker including versions.\r\n\r\nRxpress dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestlibers dolosr auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus.', 'upload/post/2e9cf23576.jpg', '2020-03-07 17:16:02'),
(10, 'web design', 'work', 'I\'m Will Smith, professional web developer with long time experience in th', 'upload/post/417ab464cd.jpg', '2020-03-08 22:27:28'),
(12, 'Digital', 'hhhhhhhhhhhhhhhhhh', 'I\'m Will Smith, professional web developer with long time experience in th', 'upload/post/c8a9071b4a.jpg', '2020-03-08 22:28:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_me`
--
ALTER TABLE `about_me`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copyright`
--
ALTER TABLE `copyright`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favicon`
--
ALTER TABLE `favicon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_self`
--
ALTER TABLE `tbl_self`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_socials`
--
ALTER TABLE `tbl_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_me`
--
ALTER TABLE `about_me`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `copyright`
--
ALTER TABLE `copyright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `facts`
--
ALTER TABLE `facts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `favicon`
--
ALTER TABLE `favicon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_self`
--
ALTER TABLE `tbl_self`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_socials`
--
ALTER TABLE `tbl_socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
