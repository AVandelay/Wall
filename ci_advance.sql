-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2013 at 01:58 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ci_advanced`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sender_user_id` int(11) DEFAULT NULL,
  `parent_message_id` int(11) DEFAULT NULL,
  `message` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `sender_user_id`, `parent_message_id`, `message`, `created_at`, `updated_at`) VALUES
(2, 11, 11, 1, 'the jizz!', '2013-06-07 10:27:10', NULL),
(4, 11, 11, 3, 'sir noah\r\n', '2013-06-07 10:28:10', NULL),
(6, 11, 11, 3, 'a gay', '2013-06-07 10:28:28', NULL),
(8, 11, 11, 7, 'help me', '2013-06-07 10:30:02', NULL),
(9, 11, 11, 7, 'a gay!', '2013-06-07 10:39:21', NULL),
(11, 11, 11, 10, 'tests', '2013-06-07 10:42:22', NULL),
(12, 11, 11, 10, 'tests test test test!', '2013-06-07 10:42:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `description` text,
  `user_level` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `description`, `user_level`, `created_at`, `updated_at`) VALUES
(10, 'John', 'Supsupin', 'johnsupsupin@yahoo.com', '57425ac914693f34a3131bfcb22bc452', NULL, 1, '2013-06-03 08:52:35', NULL),
(11, 'John David', 'Abdullah', 'john@yahoo.com', 'dfc2bc4813cef66adb062c0567d11ff5', 'This is me.!', 9, '2013-06-03 08:55:04', NULL),
(12, 'Jadee', 'Ganggangan', 'mbuyco@yahoo.com', '57425ac914693f34a3131bfcb22bc452', 'Test!', 1, '2013-06-03 09:05:15', NULL);
