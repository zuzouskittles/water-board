-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2020 at 02:22 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `water-board`
--
CREATE DATABASE IF NOT EXISTS `water-board` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `water-board`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(4) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `admin_rank` varchar(255) NOT NULL,
  `admin_duty` varchar(255) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_picture` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_email` (`admin_email`,`admin_phone`,`admin_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_phone`, `admin_rank`, `admin_duty`, `admin_username`, `admin_password`, `admin_picture`) VALUES
(1, 'sooraj muhammd', 'raj@dsc.com', '09012345679', 'super_admin', 'whole', 'rajj', '12345', 'avarta.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE IF NOT EXISTS `feeds` (
  `feed_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(255) NOT NULL,
  `feed` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`feed_id`, `admin_id`, `feed`, `image`, `date_posted`) VALUES
(0001, '1', 'hello world how are you?', 'IMG-20200201-WA0009.jpg', '2020-04-26 10:05:27'),
(0003, '1', 'its our pleasure to remind you about your monthly bill, please we need any one of you to pay on time.', 'rajjjj.jpg', '2020-04-26 10:26:39'),
(0004, '1', 'hello we hope to serve better', 'rajj2.png', '2020-04-26 11:07:58'),
(0005, '1', 'thank you alll', 'MEDCARE.png', '2020-04-26 11:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `messeges`
--

CREATE TABLE IF NOT EXISTS `messeges` (
  `msg_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `messege` text NOT NULL,
  `msg_status` varchar(255) NOT NULL,
  `respond` varchar(255) NOT NULL,
  `sent_time` varchar(255) NOT NULL,
  `sent_date` varchar(255) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `messeges`
--

INSERT INTO `messeges` (`msg_id`, `user_id`, `messege`, `msg_status`, `respond`, `sent_time`, `sent_date`) VALUES
(0001, 1, 'hello', 'sent', '', '<br>the time is10:02:23am', ''),
(0002, 1, 'hello', 'sent', '', '<br>the time is10:04:38am', ''),
(0003, 1, 'hi', 'sent', 'reply', '', ''),
(0004, 1, 'hi', 'sent', 'reply', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `user_card_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_of_payment` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `user_card_no`, `status`, `date_of_payment`) VALUES
(1, 1, '2212232322', 'paid', '2020-04-26 01:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_full_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_occupation` varchar(255) NOT NULL,
  `house_f_number` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_pic` varchar(255) NOT NULL,
  `date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`,`user_phone`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_full_name`, `user_email`, `user_phone`, `user_occupation`, `house_f_number`, `user_gender`, `user_password`, `user_address`, `user_pic`, `date_reg`) VALUES
(0001, 'sooraj', 'raj@dsc.com', '09088776655', 'programmer ', 'muhaammad', 'male', '12345', 'fagge lg', 'rajjjj.jpg', '2020-04-26 01:42:29');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
