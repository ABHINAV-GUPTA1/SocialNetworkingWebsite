-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2017 at 05:43 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'commented', 'abhinav_gupta', 'amit_kk', '2017-11-16 12:42:32', 'no', 3);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(2, 'amit_kk', 1),
(4, 'abhinav_gupta', 1),
(6, 'abhinav_gupta', 5),
(7, 'abhinav_gupta', 9),
(8, 'amit_kk', 7);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'amit_kk', 'abhinav_gupta', 'kya hal hai\r\n', '2017-10-12 00:00:00', 'yes', 'yes', 'no'),
(2, 'amit_kk', 'abhinav_gupta', 'abe\r\n', '2017-10-12 00:00:00', 'yes', 'yes', 'no'),
(3, 'abhinav_gupta', 'amit_kk', 'abe\r\n', '2017-10-12 00:00:00', 'yes', 'yes', 'no'),
(4, 'amit_kk', 'abhinav_gupta', 'yoo\r\n', '2017-11-16 00:00:00', 'yes', 'yes', 'no'),
(5, 'amit_kk', 'abhinav_gupta', 'yoo\r\n', '2017-11-16 00:00:00', 'yes', 'yes', 'no'),
(6, 'amit_kk', 'abhinav_gupta', 'yoo\r\n', '2017-11-16 00:00:00', 'yes', 'yes', 'no'),
(7, 'amit_kk', 'abhinav_gupta', 'yoo\r\n', '2017-11-16 00:00:00', 'yes', 'yes', 'no'),
(8, 'amit_kk', 'abhinav_gupta', 'kya hua', '2017-11-16 00:00:00', 'yes', 'yes', 'no'),
(9, 'abhinav_gupta', 'amit_kk', 'hi', '2017-11-16 12:41:29', 'yes', 'yes', 'no'),
(10, 'abhinav_gupta', 'amit_kk', 'why are you sending !!!!!!!!!!!!11\r\n', '2017-11-16 12:43:39', 'yes', 'yes', 'no'),
(11, 'amit_kk', 'abhinav_gupta', 'just checkinh\r\n', '2017-11-16 12:44:06', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'abhinav_gupta', 'amit_kk', 'Amit Kk liked your post', 'post.php?id=7', '2017-11-16 12:33:31', 'yes', 'yes'),
(2, 'amit_kk', 'abhinav_gupta', 'Abhinav Gupta commented on your post', 'post.php?id=3', '2017-11-16 12:42:32', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'HIIIIIIIIII', 'abhinav_gupta', 'none', '2017-08-28 16:00:12', 'no', 'no', 2),
(2, 'sda', 'asdfsd', 'asdfsdaf', '2017-10-10 08:54:45', 'no', 'no', 0),
(3, 'hello', 'amit_kk', 'abhinav_gupta', '2017-10-10 08:54:45', 'no', 'no', 0),
(4, 'sda', 'asdfsd', 'asdfsdaf', '2017-10-12 17:22:09', 'no', 'no', 0),
(5, 'hello\r\n', 'abhinav_gupta', 'none', '2017-10-12 17:22:09', 'no', 'no', 1),
(6, 'sda', 'asdfsd', 'asdfsdaf', '2017-10-12 17:22:28', 'no', 'no', 0),
(7, 'kya baat\r\n', 'abhinav_gupta', 'amit_kk', '2017-10-12 17:22:28', 'no', 'no', 1),
(8, 'hello', 'abhinav_gupta', 'none', '2017-11-16 12:22:43', 'no', 'yes', 0),
(9, 'demo project file comment', 'abhinav_gupta', 'none', '2017-11-16 12:23:09', 'no', 'no', 1),
(10, 'hi to all!', 'abhinav_gupta', 'none', '2017-11-16 12:26:24', 'no', 'no', 0),
(11, 'hello!', 'abhinav_gupta', 'none', '2017-11-16 12:28:29', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 2),
('Demo', 1),
('Project', 1),
('File', 1),
('Comment', 1),
('Hi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Abhinav', 'Gupta', 'abhinav_gupta', 'abhig605@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-08-24', 'assets/images/profile_pics/abhinav_gupta40ecfee07f516ee2abb3bea17ec8f7bfn.jpeg', 7, 5, 'no', ',amit_kk,'),
(2, 'Amit', 'Kk', 'amit_kk', 'Akk@hm.com', '1e5c2776cf544e213c3d279c40719643', '2017-10-10', 'assets/images/profile_pics/defaults/head_emerald.png', 1, 0, 'no', ',abhinav_gupta,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
