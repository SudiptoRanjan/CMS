-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2018 at 06:48 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Javascript'),
(5, 'Angular'),
(6, 'React'),
(19, 'laravel'),
(20, 'vue js');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(4, 1, 'sudipto', 'www.sudiptoranjan@gmail.com', 'Post is too good', 'approved', '2018-08-05'),
(5, 1, 'Talha', 'Talha123@gmail.com', 'great', 'approved', '2018-08-05'),
(8, 1, 'anik', 'anik@gamil.com', 'Great', 'approved', '2018-08-06'),
(9, 1, 'anik', 'anik@gamil.com', 'Great', 'approved', '2018-08-06'),
(10, 1, 'Azam', 'azam@gamil.com', 'great', 'unapproved', '2018-08-06'),
(13, 1, 'Nazrin', 'nazrin@gmail.com', 'great', 'approved', '2018-08-09'),
(14, 13, 'Talha', 'talha@gmail.com', 'I want to learn angular', 'approved', '2018-08-11'),
(15, 13, 'Anik', 'anik@bokri.com', 'Angular is better than react', 'approved', '2018-08-11'),
(16, 14, 'Sudipto', 'sudipto@gmail.com', 'React is awesome . I love it', 'approved', '2018-08-11'),
(17, 15, 'saumitra ', 'saumitra@gmail.com', 'Vue js  is great', 'approved', '2018-08-11'),
(18, 16, 'Talha ', 'Talha@gmail.com', 'I love laravel ', 'approved', '2018-08-11'),
(19, 13, 'Nazrin', 'nazrin@gmail.com', 'Love angular', 'approved', '2018-08-11'),
(20, 13, 'Azam', 'azam@gmail.com', 'i want to learn angular', 'approved', '2018-08-14'),
(22, 16, 'sudipto', 'sudiptoranjan@gmail.com', 'laravel is a great framework ', 'approved', '2018-08-28'),
(23, 15, 'talha', 'talha@gmail.com', 'I want to learn vue  js ', 'approved', '2018-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(1, 2, 'Javascript', 'Sudipto', '2018-08-11', 'javascript.png', '\r\n  ES6 is short-hand for EcmaScript 6, which is a deprecated name for the EcmaScript 2015 language specification. ... EcmaScript is the \"official\" name for JavaScript. Now that ES2015 is finalised, it effectively just becomes JavaScript v6 to most people.\r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n         ', 'javascript,es6', 3, 'published'),
(13, 5, 'Angular 5', 'Sudipto Ranjan', '2018-08-11', 'angular.jpg', 'AngularJS is a JavaScript-based open-source front-end web application framework mainly maintained by Google and by a community of individuals and corporations to address many of the challenges encountered in developing single-page applications   \r\n                  \r\n                  \r\n                  \r\n         ', 'Angular', 4, 'published'),
(14, 6, 'React Js', 'Sanjay', '2018-08-11', 'react.png', 'In computing, React is a JavaScript library for building user interfaces. It is maintained by Facebook and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications', 'React,React native', 1, 'published'),
(15, 20, 'Vue js', 'Imam Azam', '2018-08-11', 'vue.png', 'Vue.js is an open-source JavaScript framework for building user interfaces. Integration into projects that use other JavaScript libraries is simplified with Vue because it is designed to be incrementally adoptable.', 'VueJs', 2, 'published'),
(16, 19, 'Laravel', 'Mushfiq', '2018-08-11', 'laravel-leader.png', 'Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the modelâ€“viewâ€“controller architectural pattern and based on Symfony.', 'laravel', 2, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystring22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'tomas', '123', 'tomas', 'muller', 'tomasmuller@gmail.com', '', 'admin', ''),
(3, 'mario', '567', 'mario', 'gomez', 'mario@gmail.com', '', 'subscriber', ''),
(35, 'Anik', '123', 'anik', 'sarkar', 'anik@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(36, 'Azam', '789', 'imam', 'azam', 'imam123@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(37, 'talha', '123', 'Talha', 'Chowdhury', 'talha123@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(38, 'zakiul', '123', 'zakiul', 'hasan', 'zakiul@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(39, 'test', 'test', 'test 1', 'test 1', 'test@test.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(40, 'test', 'test', 'test 1', 'test 1', 'test@test.com', '', 'admin', '$2y$10$iusesomecrazystring22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
