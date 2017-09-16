-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-15 10:01:48
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teamdb`
--

-- --------------------------------------------------------

--
-- 表的结构 `team`
--

CREATE TABLE `team` (
  `id` varchar(11) NOT NULL COMMENT '学号',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `gender` varchar(255) NOT NULL COMMENT '性别'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `team`
--

INSERT INTO `team` (`id`, `name`, `gender`) VALUES
('14111202055', '李厚峰', '男'),
('14111202065', '杜云章', '男'),
('14111202050', '徐雷', '男'),
('14111202066', '杨浩', '男'),
('14121202043', '殷蓓', '女'),
('14121202038', '雷永秀', '女');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
