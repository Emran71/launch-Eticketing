-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2019 at 06:53 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nticketing_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `launch_cat`
--

CREATE TABLE IF NOT EXISTS `launch_cat` (
  `launch_id` varchar(30) NOT NULL,
  `catagory_id` varchar(39) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `launch_cat`
--

INSERT INTO `launch_cat` (`launch_id`, `catagory_id`) VALUES
('MV_5d4545fc7d863', '5d455c59054c7'),
('MV_5d45ac621eb0b', '5d45acd5f03a8'),
('MV_5d45ac621eb0b', '5d45ad245a8e9'),
('MV_5d45ba5051b1a', '5d45bde8ed4eb'),
('MV_5d45ba5051b1a', '5d45be612f91b'),
('MV_5d45ba5051b1a', '5d5d5200ad5cd');

-- --------------------------------------------------------

--
-- Table structure for table `launch_category`
--

CREATE TABLE IF NOT EXISTS `launch_category` (
  `launch_id` varchar(30) NOT NULL DEFAULT '',
  `catagory_id` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `launch_category`
--

INSERT INTO `launch_category` (`launch_id`, `catagory_id`) VALUES
('MVDV-1', 'bali.ch'),
('MVDV-1', 'bali.de'),
('MVBRD-1', 'ban7.ch'),
('MVBRD-1', 'ban7.de'),
('MVBD-7', 'dip.ca'),
('MVBD-7', 'dip.ch'),
('MVBD-7', 'dip.de'),
('MVCD-3', 'ihasan.ch'),
('MVCD-3', 'ihasan.de'),
('MVBD-8', 'kal.ch'),
('MVBD-8', 'kal.de'),
('MVDV-2', 'kar4.ca'),
('MVDV-2', 'kar4.ch'),
('MVDV-2', 'kar4.de'),
('MVBD-3', 'kir1.ca'),
('MVBD-3', 'kir1.ch'),
('MVBD-3', 'kir1.de'),
('MVBD-5', 'kir2.ch'),
('MVBD-5', 'kir2.de'),
('MVDV-4', 'lali.ch'),
('MVDV-4', 'lali.de'),
('MVCD-2', 'mit2.ch'),
('MVCD-2', 'mit2.de'),
('MVBD-9', 'par2.ca'),
('MVBD-9', 'par2.ch'),
('MVBD-9', 'par2.de'),
('MVBD-2', 'par7.ch'),
('MVBD-2', 'par7.de'),
('MVBRD-3', 'pay3.ca'),
('MVBRD-3', 'pay3.ch'),
('MVBRD-3', 'pay3.de'),
('MVDV-5', 'sam.ch'),
('MVDV-5', 'sam.de'),
('MVBD-4', 'srv.ch'),
('MVBD-4', 'srv8.de'),
('MVCD-1', 'stori1.ca'),
('MVCD-1', 'stori1.ch'),
('MVCD-1', 'stori1.de'),
('MVBD-6', 'sunb7.ca'),
('MVBD-6', 'sunb7.ch'),
('MVBD-6', 'sunb7.de'),
('MVBD-1', 'sunb8.ca'),
('MVDB-1', 'sunb8.ca'),
('MVBD-1', 'sunb8.ch'),
('MVDB-1', 'sunb8.ch'),
('MVBD-1', 'sunb8.de'),
('MVDB-1', 'sunb8.de'),
('MVBD-10', 'sur7.ch'),
('MVBD-10', 'sur7.de'),
('MVBRD-2', 'tipu3.ca'),
('MVBRD-2', 'tipu3.ch'),
('MVBRD-2', 'tipu3.de'),
('MVDV-3', 'vola.ca'),
('MVDV-3', 'vola.ch'),
('MVDV-3', 'vola.de'),
('MVBRD-4', 'yub4.ch');

-- --------------------------------------------------------

--
-- Table structure for table `launch_info`
--

CREATE TABLE IF NOT EXISTS `launch_info` (
  `launch_id` varchar(30) NOT NULL,
  `launch_name` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `dept_time` varchar(30) NOT NULL,
  `deleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `launch_info`
--

INSERT INTO `launch_info` (`launch_id`, `launch_name`, `source`, `destination`, `dept_time`, `deleted`) VALUES
('MVBD-1', 'MV.Sundarban-8', 'BARISAL', 'DHAKA', '8.25pm', 1),
('MVBD-10', 'MV.Surovi-7', 'BARISAL', 'DHAKA', '8.15pm', 0),
('MVBD-2', 'MV.Parabot-7', 'BARISAL', 'DHAKA', '8.15pm', 0),
('MVBD-3', 'MV.Kirtonkhola-1', 'BARISAL', 'DHAKA', '8.45pm', 0),
('MVBD-4', 'MV.Surovi-8', 'BARISAL', 'DHAKA', '8.45pm', 0),
('MVBD-5', 'MV.Kirtonkhola-2', 'BARISAL', 'DHAKA', '9.00pm', 0),
('MVBD-6', 'MV.Sundarban-7', 'BARISAL', 'DHAKA', '9.00pm', 0),
('MVBD-7', 'MV.Dipraj', 'BARISAL', 'DHAKA', '8.15pm', 0),
('MVBD-8', 'MV.Kalamkhan', 'BARISAL', 'DHAKA', '8.30pm', 0),
('MVBD-9', 'MV.Parabot-2', 'BARISAL', 'DHAKA', '8.45pm', 0),
('MVBRD-1', 'MV.Bandhan-7', 'BARGUNA', 'DHAKA', '6.00pm', 0),
('MVBRD-2', 'MV.Tipu-3', 'BARGUNA', 'DHAKA', '5.00pm', 0),
('MVBRD-3', 'MV.Yubraj-4', 'BARGUNA', 'DHAKA', '6.00pm', 0),
('MVBRD-4', 'MV.Payra-3', 'BARGUNA', 'DHAKA', '5.00pm', 0),
('MVCD-1', 'MV.Sonartori-1', 'CHADPUR', 'DHAKA', '7.20pm', 0),
('MVCD-2', 'MV.Mitali-2', 'CHADPUR', 'DHAKA', '8.00pm', 0),
('MVCD-3', 'MV.Imam Hasan', 'CHADPUR', 'DHAKA', '11.45am', 0),
('MVDB-1', 'MV.Sundarban-8', 'DHAKA', 'BARISAL', '8.15pm', 1),
('MVDB-10', 'MV.Surovi-7', 'DHAKA', 'BARISAL', '8.15pm', 0),
('MVDB-2', 'MV.Parabot-7', 'DHAKA', 'BARISAL', '8.15pm', 0),
('MVDB-3', 'MV.Kirtonkhola-1', 'DHAKA', 'BARISAL', '8.45pm', 0),
('MVDB-4', 'MV.Surovi-8', 'DHAKA', 'BARISAL', '8.45pm', 0),
('MVDB-5', 'MV.Kirtonkhola-2', 'DHAKA', 'BARISAL', '9.00pm', 0),
('MVDB-6', 'MV.Sundarban-7', 'DHAKA', 'BARISAL', '9.00pm', 0),
('MVDB-7', 'MV.Dipraj', 'DHAKA', 'BARISAL', '8.15pm', 0),
('MVDB-8', 'MV.Kalamkhan', 'DHAKA', 'BARISAL', '8.30pm', 0),
('MVDB-9', 'MV.Parabot-2', 'DHAKA', 'BARISAL', '8.45pm', 0),
('MVDBR-1', 'MV.Bandhan-7', 'DHAKA', 'BARGUNA', '6.00pm', 0),
('MVDBR-2', 'MV.Tipu-3', 'DHAKA', 'BARGUNA', '5.00pm', 0),
('MVDBR-3', 'MV.Yubraj-4', 'DHAKA', 'BARGUNA', '6.00pm', 0),
('MVDBR-4', 'MV.Payra-3', 'DHAKA', 'BARGUNA', '5.00pm', 0),
('MVDC-1', 'MV.Sonartori-1', 'DHAKA', 'CHADPUR', '7.20pm', 0),
('MVDC-2', 'MV.Mitali-2', 'DHAKA', 'CHADPUR', '8.00pm', 1),
('MVDC-3', 'MV.Imam Hasan', 'DHAKA', 'CHADPUR', '11.45am', 0),
('MVDV-1', 'MV.Baliya', 'DHAKA', 'VOLA', '7.00pm', 0),
('MVDV-2', 'MV.Karnofuli-4', 'DHAKA', 'VOLA', '8.00pm', 0),
('MVDV-3', 'MV.Vola', 'DHAKA', 'VOLA', '8.00pm', 0),
('MVDV-4', 'MV.Lali', 'DHAKA', 'VOLA', '8.30pm', 0),
('MVDV-5', 'MV.Sampod', 'DHAKA', 'VOLA', '8.15pm', 0),
('MVVD-1', 'MV.Baliya', 'VOLA', 'DHAKA', '7.00pm', 0),
('MVVD-2', 'MV.Karnofuli-4', 'VOLA', 'DHAKA', '8.00pm', 0),
('MVVD-3', 'MV.Vola', 'VOLA', 'DHAKA', '8.00pm', 0),
('MVVD-4', 'MV.Lali', 'VOLA', 'DHAKA', '8.30pm', 1),
('MVVD-5', 'MV.Sampod', 'VOLA', 'DHAKA', '8.15pm', 0),
('MV_5d45ac621eb0b', 'Chandramukhi', 'dhaka', 'barisal', '2.00pm', 0),
('MV_5d45b972b8de1', 'VetX', 'D', 'B', '2.00', 0),
('MV_5d45ba5051b1a', 'jfa', 'fa', 'f', '2', 0),
('MV_5d6014d816ae5', 'jilsdaisfhi', 'sdjkfgal', 'dhjkasfgka', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `launch_station`
--

CREATE TABLE IF NOT EXISTS `launch_station` (
  `launch_id` varchar(30) NOT NULL,
  `station_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_info`
--

CREATE TABLE IF NOT EXISTS `purchase_info` (
  `purchase_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `journey_date` date NOT NULL,
  `dept_time` varchar(30) NOT NULL,
  `source` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `launch_name` varchar(30) DEFAULT NULL,
  `catagory` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `tnr` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_info`
--

INSERT INTO `purchase_info` (`purchase_id`, `user_id`, `purchase_date`, `journey_date`, `dept_time`, `source`, `destination`, `launch_name`, `catagory`, `amount`, `tnr`) VALUES
(5, 5, '2013-08-28', '2013-09-01', '8.15pm', 'DHAKA', 'BARISAL', 'MV.Sundarban-8', 'CABIN', 3, 563334),
(6, 5, '2013-08-28', '2013-09-04', '7.00pm', 'VOLA', 'DHAKA', 'MV.Baliya', 'CHAIR', 3, 774914),
(7, 4, '2016-11-13', '2016-11-15', '8.45pm', 'DHAKA', 'BARISAL', 'MV.Kirtonkhola-1', 'CABIN', 3, 749915),
(8, 4, '2019-08-03', '2019-08-04', '8.15pm', 'BARISAL', 'DHAKA', 'MV.Surovi-7', 'CHAIR', 2, 489830);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_info`
--

CREATE TABLE IF NOT EXISTS `schedule_info` (
  `launch_id` varchar(30) NOT NULL DEFAULT '',
  `dept_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule_info`
--

INSERT INTO `schedule_info` (`launch_id`, `dept_date`) VALUES
('MVBD-1', 2),
('MVBD-1', 5),
('MVBD-1', 8),
('MVBD-1', 11),
('MVBD-1', 14),
('MVBD-1', 17),
('MVBD-1', 20),
('MVBD-1', 23),
('MVBD-1', 26),
('MVBD-1', 29),
('MVBD-1', 31),
('MVBD-10', 2),
('MVBD-10', 4),
('MVBD-10', 6),
('MVBD-10', 8),
('MVBD-10', 10),
('MVBD-10', 12),
('MVBD-10', 14),
('MVBD-10', 16),
('MVBD-10', 18),
('MVBD-10', 20),
('MVBD-10', 22),
('MVBD-10', 24),
('MVBD-10', 26),
('MVBD-10', 28),
('MVBD-10', 30),
('MVBD-2', 2),
('MVBD-2', 5),
('MVBD-2', 8),
('MVBD-2', 11),
('MVBD-2', 14),
('MVBD-2', 17),
('MVBD-2', 20),
('MVBD-2', 23),
('MVBD-2', 26),
('MVBD-2', 29),
('MVBD-3', 2),
('MVBD-3', 4),
('MVBD-3', 6),
('MVBD-3', 8),
('MVBD-3', 10),
('MVBD-3', 12),
('MVBD-3', 14),
('MVBD-3', 16),
('MVBD-3', 18),
('MVBD-3', 20),
('MVBD-3', 22),
('MVBD-3', 24),
('MVBD-3', 26),
('MVBD-3', 28),
('MVBD-3', 30),
('MVBD-4', 1),
('MVBD-4', 3),
('MVBD-4', 5),
('MVBD-4', 7),
('MVBD-4', 9),
('MVBD-4', 11),
('MVBD-4', 13),
('MVBD-4', 15),
('MVBD-4', 17),
('MVBD-4', 19),
('MVBD-4', 21),
('MVBD-4', 23),
('MVBD-4', 25),
('MVBD-4', 27),
('MVBD-4', 29),
('MVBD-4', 31),
('MVBD-5', 2),
('MVBD-5', 6),
('MVBD-5', 10),
('MVBD-5', 14),
('MVBD-5', 18),
('MVBD-5', 22),
('MVBD-5', 26),
('MVBD-5', 30),
('MVBD-6', 3),
('MVBD-6', 7),
('MVBD-6', 11),
('MVBD-6', 15),
('MVBD-6', 19),
('MVBD-6', 23),
('MVBD-6', 27),
('MVBD-6', 31),
('MVBD-7', 1),
('MVBD-7', 3),
('MVBD-7', 5),
('MVBD-7', 7),
('MVBD-7', 9),
('MVBD-7', 11),
('MVBD-7', 13),
('MVBD-7', 15),
('MVBD-7', 17),
('MVBD-7', 19),
('MVBD-7', 21),
('MVBD-7', 23),
('MVBD-7', 25),
('MVBD-7', 27),
('MVBD-7', 29),
('MVBD-7', 31),
('MVBD-8', 1),
('MVBD-8', 3),
('MVBD-8', 5),
('MVBD-8', 7),
('MVBD-8', 9),
('MVBD-8', 11),
('MVBD-8', 13),
('MVBD-8', 15),
('MVBD-8', 17),
('MVBD-8', 19),
('MVBD-8', 21),
('MVBD-8', 23),
('MVBD-8', 25),
('MVBD-8', 27),
('MVBD-8', 29),
('MVBD-8', 31),
('MVBD-9', 2),
('MVBD-9', 4),
('MVBD-9', 6),
('MVBD-9', 8),
('MVBD-9', 10),
('MVBD-9', 12),
('MVBD-9', 14),
('MVBD-9', 16),
('MVBD-9', 18),
('MVBD-9', 20),
('MVBD-9', 22),
('MVBD-9', 24),
('MVBD-9', 26),
('MVBD-9', 28),
('MVBD-9', 30),
('MVBRD-1', 1),
('MVBRD-1', 3),
('MVBRD-1', 5),
('MVBRD-1', 7),
('MVBRD-1', 9),
('MVBRD-1', 11),
('MVBRD-1', 13),
('MVBRD-1', 15),
('MVBRD-1', 17),
('MVBRD-1', 19),
('MVBRD-1', 21),
('MVBRD-1', 23),
('MVBRD-1', 25),
('MVBRD-1', 27),
('MVBRD-1', 29),
('MVBRD-1', 31),
('MVBRD-2', 2),
('MVBRD-2', 4),
('MVBRD-2', 6),
('MVBRD-2', 8),
('MVBRD-2', 10),
('MVBRD-2', 12),
('MVBRD-2', 14),
('MVBRD-2', 16),
('MVBRD-2', 18),
('MVBRD-2', 20),
('MVBRD-2', 22),
('MVBRD-2', 24),
('MVBRD-2', 26),
('MVBRD-2', 28),
('MVBRD-2', 30),
('MVBRD-2', 31),
('MVBRD-3', 3),
('MVBRD-3', 7),
('MVBRD-3', 11),
('MVBRD-3', 15),
('MVBRD-3', 19),
('MVBRD-3', 23),
('MVBRD-3', 27),
('MVBRD-4', 2),
('MVBRD-4', 6),
('MVBRD-4', 10),
('MVBRD-4', 14),
('MVBRD-4', 18),
('MVBRD-4', 22),
('MVBRD-4', 26),
('MVBRD-4', 30),
('MVCD-1', 2),
('MVCD-1', 4),
('MVCD-1', 6),
('MVCD-1', 8),
('MVCD-1', 10),
('MVCD-1', 12),
('MVCD-1', 14),
('MVCD-1', 16),
('MVCD-1', 18),
('MVCD-1', 20),
('MVCD-1', 22),
('MVCD-1', 24),
('MVCD-1', 26),
('MVCD-1', 28),
('MVCD-1', 30),
('MVCD-2', 1),
('MVCD-2', 3),
('MVCD-2', 5),
('MVCD-2', 7),
('MVCD-2', 9),
('MVCD-2', 11),
('MVCD-2', 13),
('MVCD-2', 15),
('MVCD-2', 17),
('MVCD-2', 19),
('MVCD-2', 21),
('MVCD-2', 23),
('MVCD-2', 25),
('MVCD-2', 27),
('MVCD-2', 29),
('MVCD-2', 31),
('MVCD-3', 2),
('MVCD-3', 5),
('MVCD-3', 8),
('MVCD-3', 11),
('MVCD-3', 14),
('MVCD-3', 17),
('MVCD-3', 20),
('MVCD-3', 23),
('MVCD-3', 26),
('MVCD-3', 29),
('MVCD-3', 31),
('MVDB-1', 1),
('MVDB-1', 4),
('MVDB-1', 7),
('MVDB-1', 10),
('MVDB-1', 13),
('MVDB-1', 16),
('MVDB-1', 19),
('MVDB-1', 22),
('MVDB-1', 25),
('MVDB-1', 28),
('MVDB-10', 1),
('MVDB-10', 3),
('MVDB-10', 5),
('MVDB-10', 7),
('MVDB-10', 9),
('MVDB-10', 11),
('MVDB-10', 13),
('MVDB-10', 15),
('MVDB-10', 17),
('MVDB-10', 19),
('MVDB-10', 21),
('MVDB-10', 23),
('MVDB-10', 25),
('MVDB-10', 27),
('MVDB-10', 29),
('MVDB-10', 31),
('MVDB-2', 2),
('MVDB-2', 5),
('MVDB-2', 8),
('MVDB-2', 11),
('MVDB-2', 14),
('MVDB-2', 17),
('MVDB-2', 20),
('MVDB-2', 23),
('MVDB-2', 26),
('MVDB-2', 29),
('MVDB-2', 31),
('MVDB-3', 1),
('MVDB-3', 3),
('MVDB-3', 5),
('MVDB-3', 7),
('MVDB-3', 9),
('MVDB-3', 11),
('MVDB-3', 13),
('MVDB-3', 15),
('MVDB-3', 17),
('MVDB-3', 19),
('MVDB-3', 21),
('MVDB-3', 23),
('MVDB-3', 25),
('MVDB-3', 27),
('MVDB-3', 29),
('MVDB-3', 31),
('MVDB-4', 2),
('MVDB-4', 4),
('MVDB-4', 6),
('MVDB-4', 8),
('MVDB-4', 10),
('MVDB-4', 12),
('MVDB-4', 14),
('MVDB-4', 16),
('MVDB-4', 18),
('MVDB-4', 20),
('MVDB-4', 22),
('MVDB-4', 24),
('MVDB-4', 26),
('MVDB-4', 28),
('MVDB-4', 30),
('MVDB-5', 1),
('MVDB-5', 4),
('MVDB-5', 8),
('MVDB-5', 12),
('MVDB-5', 16),
('MVDB-5', 20),
('MVDB-5', 24),
('MVDB-5', 28),
('MVDB-5', 31),
('MVDB-6', 1),
('MVDB-6', 5),
('MVDB-6', 9),
('MVDB-6', 13),
('MVDB-6', 17),
('MVDB-6', 21),
('MVDB-6', 25),
('MVDB-6', 29),
('MVDB-7', 2),
('MVDB-7', 4),
('MVDB-7', 6),
('MVDB-7', 8),
('MVDB-7', 10),
('MVDB-7', 12),
('MVDB-7', 14),
('MVDB-7', 16),
('MVDB-7', 18),
('MVDB-7', 20),
('MVDB-7', 22),
('MVDB-7', 24),
('MVDB-7', 26),
('MVDB-7', 28),
('MVDB-7', 30),
('MVDB-8', 2),
('MVDB-8', 4),
('MVDB-8', 6),
('MVDB-8', 8),
('MVDB-8', 10),
('MVDB-8', 12),
('MVDB-8', 14),
('MVDB-8', 16),
('MVDB-8', 18),
('MVDB-8', 20),
('MVDB-8', 22),
('MVDB-8', 24),
('MVDB-8', 26),
('MVDB-8', 28),
('MVDB-8', 30),
('MVDB-9', 1),
('MVDB-9', 3),
('MVDB-9', 5),
('MVDB-9', 7),
('MVDB-9', 9),
('MVDB-9', 11),
('MVDB-9', 13),
('MVDB-9', 15),
('MVDB-9', 17),
('MVDB-9', 19),
('MVDB-9', 21),
('MVDB-9', 23),
('MVDB-9', 25),
('MVDB-9', 27),
('MVDB-9', 29),
('MVDB-9', 31),
('MVDBR-1', 2),
('MVDBR-1', 4),
('MVDBR-1', 6),
('MVDBR-1', 8),
('MVDBR-1', 10),
('MVDBR-1', 12),
('MVDBR-1', 14),
('MVDBR-1', 16),
('MVDBR-1', 18),
('MVDBR-1', 20),
('MVDBR-1', 22),
('MVDBR-1', 24),
('MVDBR-1', 26),
('MVDBR-1', 28),
('MVDBR-1', 30),
('MVDBR-2', 1),
('MVDBR-2', 3),
('MVDBR-2', 5),
('MVDBR-2', 7),
('MVDBR-2', 9),
('MVDBR-2', 11),
('MVDBR-2', 13),
('MVDBR-2', 15),
('MVDBR-2', 17),
('MVDBR-2', 19),
('MVDBR-2', 21),
('MVDBR-2', 23),
('MVDBR-2', 25),
('MVDBR-2', 27),
('MVDBR-2', 29),
('MVDBR-3', 1),
('MVDBR-3', 5),
('MVDBR-3', 9),
('MVDBR-3', 13),
('MVDBR-3', 17),
('MVDBR-3', 21),
('MVDBR-3', 25),
('MVDBR-3', 29),
('MVDBR-3', 31),
('MVDBR-4', 4),
('MVDBR-4', 8),
('MVDBR-4', 12),
('MVDBR-4', 16),
('MVDBR-4', 20),
('MVDBR-4', 24),
('MVDBR-4', 28),
('MVDBR-4', 31),
('MVDC-1', 1),
('MVDC-1', 3),
('MVDC-1', 5),
('MVDC-1', 7),
('MVDC-1', 9),
('MVDC-1', 11),
('MVDC-1', 13),
('MVDC-1', 15),
('MVDC-1', 17),
('MVDC-1', 19),
('MVDC-1', 21),
('MVDC-1', 23),
('MVDC-1', 25),
('MVDC-1', 27),
('MVDC-1', 29),
('MVDC-1', 31),
('MVDC-2', 2),
('MVDC-2', 4),
('MVDC-2', 6),
('MVDC-2', 8),
('MVDC-2', 10),
('MVDC-2', 12),
('MVDC-2', 14),
('MVDC-2', 16),
('MVDC-2', 18),
('MVDC-2', 20),
('MVDC-2', 22),
('MVDC-2', 24),
('MVDC-2', 26),
('MVDC-2', 28),
('MVDC-2', 30),
('MVDC-3', 1),
('MVDC-3', 4),
('MVDC-3', 7),
('MVDC-3', 10),
('MVDC-3', 13),
('MVDC-3', 16),
('MVDC-3', 19),
('MVDC-3', 22),
('MVDC-3', 25),
('MVDC-3', 28),
('MVDV-1', 1),
('MVDV-1', 3),
('MVDV-1', 5),
('MVDV-1', 7),
('MVDV-1', 9),
('MVDV-1', 11),
('MVDV-1', 13),
('MVDV-1', 15),
('MVDV-1', 17),
('MVDV-1', 19),
('MVDV-1', 21),
('MVDV-1', 23),
('MVDV-1', 25),
('MVDV-1', 27),
('MVDV-1', 29),
('MVDV-1', 31),
('MVDV-2', 2),
('MVDV-2', 4),
('MVDV-2', 6),
('MVDV-2', 8),
('MVDV-2', 10),
('MVDV-2', 12),
('MVDV-2', 14),
('MVDV-2', 16),
('MVDV-2', 18),
('MVDV-2', 20),
('MVDV-2', 22),
('MVDV-2', 24),
('MVDV-2', 26),
('MVDV-2', 28),
('MVDV-2', 30),
('MVDV-3', 4),
('MVDV-3', 8),
('MVDV-3', 12),
('MVDV-3', 16),
('MVDV-3', 20),
('MVDV-3', 24),
('MVDV-3', 28),
('MVDV-3', 31),
('MVDV-4', 1),
('MVDV-4', 5),
('MVDV-4', 9),
('MVDV-4', 13),
('MVDV-4', 17),
('MVDV-4', 21),
('MVDV-4', 25),
('MVDV-4', 29),
('MVDV-5', 2),
('MVDV-5', 4),
('MVDV-5', 6),
('MVDV-5', 8),
('MVDV-5', 10),
('MVDV-5', 12),
('MVDV-5', 14),
('MVDV-5', 16),
('MVDV-5', 18),
('MVDV-5', 20),
('MVDV-5', 22),
('MVDV-5', 24),
('MVDV-5', 26),
('MVDV-5', 28),
('MVDV-5', 30),
('MVVD-1', 2),
('MVVD-1', 4),
('MVVD-1', 6),
('MVVD-1', 8),
('MVVD-1', 10),
('MVVD-1', 12),
('MVVD-1', 14),
('MVVD-1', 16),
('MVVD-1', 18),
('MVVD-1', 20),
('MVVD-1', 22),
('MVVD-1', 24),
('MVVD-1', 26),
('MVVD-1', 28),
('MVVD-1', 30),
('MVVD-2', 1),
('MVVD-2', 3),
('MVVD-2', 5),
('MVVD-2', 7),
('MVVD-2', 9),
('MVVD-2', 11),
('MVVD-2', 13),
('MVVD-2', 15),
('MVVD-2', 17),
('MVVD-2', 19),
('MVVD-2', 21),
('MVVD-2', 23),
('MVVD-2', 25),
('MVVD-2', 27),
('MVVD-2', 29),
('MVVD-2', 31),
('MVVD-3', 2),
('MVVD-3', 6),
('MVVD-3', 10),
('MVVD-3', 14),
('MVVD-3', 18),
('MVVD-3', 22),
('MVVD-3', 26),
('MVVD-3', 30),
('MVVD-4', 3),
('MVVD-4', 7),
('MVVD-4', 11),
('MVVD-4', 15),
('MVVD-4', 19),
('MVVD-4', 23),
('MVVD-4', 27),
('MVVD-4', 31),
('MVVD-5', 1),
('MVVD-5', 3),
('MVVD-5', 5),
('MVVD-5', 7),
('MVVD-5', 9),
('MVVD-5', 11),
('MVVD-5', 13),
('MVVD-5', 15),
('MVVD-5', 17),
('MVVD-5', 19),
('MVVD-5', 21),
('MVVD-5', 23),
('MVVD-5', 25),
('MVVD-5', 27),
('MVVD-5', 29),
('MVVD-5', 31);

-- --------------------------------------------------------

--
-- Table structure for table `seat_catagory`
--

CREATE TABLE IF NOT EXISTS `seat_catagory` (
  `catagory_id` varchar(30) NOT NULL DEFAULT '',
  `launch_name` varchar(30) DEFAULT NULL,
  `catagory_name` varchar(30) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `capacity_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat_catagory`
--

INSERT INTO `seat_catagory` (`catagory_id`, `launch_name`, `catagory_name`, `price`, `capacity_amount`) VALUES
('5d455c59054c7', 'MV_5d4545fc7d863', 'cabin', 2, 2),
('5d45acd5f03a8', 'MV_5d45ac621eb0b', 'Deck', 200, 5),
('5d45ad245a8e9', 'MV_5d45ac621eb0b', 'Cabin', 500, 5),
('5d45bde8ed4eb', 'MV_5d45ba5051b1a', 'das', 11, 1),
('5d45be612f91b', 'MV_5d45ba5051b1a', 'ds', 0, 0),
('5d5d5200ad5cd', 'MV_5d45ba5051b1a', 'fasd', 11, 2),
('bali.ch', 'MV.Baliya', 'CHAIR', 500, 5),
('bali.de', 'MV.Baliya', 'DECK', 300, 40),
('ban7.ch', 'MV.Bandhan-7', 'CHAIR', 600, 32),
('ban7.de', 'MV.Bandhan-7', 'DECK', 350, 40),
('dip.ca', 'MV.Dipraj', 'CABIN', 1100, 15),
('dip.ch', 'MV.Dipraj', 'CHAIR', 800, 30),
('dip.de', 'MV.Dipraj', 'DECK', 400, 40),
('ihasan.ch', 'MV.Imam Hasan', 'CHAIR', 400, 25),
('ihasan.de', 'MV.Imam Hasan', 'DECK', 200, 35),
('kal.ch', 'MV.Kalamkhan', 'CHAIR', 700, 25),
('kal.de', 'MV.Kalamkhan', 'DECK', 400, 35),
('kar4.ca', 'MV.Karnofuli-4', 'CABIN', 1300, 20),
('kar4.ch', 'MV.Karnofuli-4', 'CHAIR', 650, 30),
('kar4.de', 'MV.Karnofuli-4', 'DECK', 250, 45),
('kir1.ca', 'MV.Kirtonkhola-1', 'CABIN', 1500, 20),
('kir1.ch', 'MV.Kirtonkhola-1', 'CHAIR', 800, 28),
('kir1.de', 'MV.Kirtonkhola-1', 'DECK', 450, 35),
('kir2.ch', 'MV.Kirtonkhola-2', 'CHAIR', 800, 35),
('kir2.de', 'MV.Kirtonkhola-2', 'DECK', 400, 32),
('lali.ch', 'MV.Lali', 'CHAIR', 500, 25),
('lali.de', 'MV.Lali', 'DECK', 200, 40),
('mit2.ch', 'MV.Mitali-2', 'CHAIR', 450, 45),
('mit2.de', 'MV.Mitali-2', 'DECK', 250, 35),
('par2.ca', 'MV.Parabot-2', 'CABIN', 800, 10),
('par2.ch', 'MV.Parabot-2', 'CHAIR', 800, 25),
('par2.de', 'MV.Parabot-2', 'DECK', 400, 40),
('par7.ch', 'MV.Parabot-7', 'CHAIR', 700, 30),
('par7.de', 'MV.Parabot-7', 'DECK', 400, 40),
('pay3.ca', 'MV.Payra-3', 'CABIN', 1700, 20),
('pay3.ch', 'MV.Payra-3', 'CHAIR', 1000, 25),
('pay3.de', 'MV.Payra-3', 'DECK', 400, 40),
('sam.ch', 'MV.Sampod', 'CHAIR', 500, 25),
('sam.de', 'MV.Sampod', 'DECK', 250, 45),
('srv.ch', 'MV.Surovi-8', 'CHAIR', 700, 28),
('srv8.de', 'MV.Surovi-8', 'DECK', 400, 35),
('stori1.ca', 'MV.Sonartori-1', 'CABIN', 1000, 25),
('stori1.ch', 'MV.Sonartori-1', 'CHAIR', 600, 35),
('stori1.de', 'MV.Sonartori-1', 'DECK', 250, 35),
('sunb7.ca', 'MV.Sundarban-7', 'CABIN', 1550, 30),
('sunb7.ch', 'MV.Sundarban-7', 'CHAIR', 850, 35),
('sunb7.de', 'MV.Sundarban-7', 'DECK', 500, 55),
('sunb8.ca', 'MV.Sundarban-8', 'CABIN', 1800, 25),
('sunb8.ch', 'MV.Sundarban-8', 'CHAIR', 800, 30),
('sunb8.de', 'MV.Sundarban-8', 'DECK', 500, 100),
('sur7.ch', 'MV.Surovi-7', 'CHAIR', 800, 15),
('sur7.de', 'MV.Surovi-7', 'DECK', 4000, 25),
('tipu3.ca', 'MV.Tipu-3', 'CABIN', 1700, 30),
('tipu3.ch', 'MV.Tipu-3', 'CHAIR', 900, 40),
('tipu3.de', 'MV.Tipu-3', 'DECK', 400, 45),
('tub4.de', 'MV.Yubraj-4', 'DECK', 350, 40),
('vola.ca', 'MV.Vola', 'CABIN', 1200, 15),
('vola.ch', 'MV.Vola', 'CHAIR', 550, 22),
('vola.de', 'MV.Vola', 'DECK', 250, 40),
('yub4.ch', 'MV.Yubraj-4', 'CHAIR', 900, 30);

-- --------------------------------------------------------

--
-- Table structure for table `station_info`
--

CREATE TABLE IF NOT EXISTS `station_info` (
  `station_id` varchar(60) NOT NULL,
  `poltun_no` int(11) NOT NULL,
  `gangway_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station_info`
--

INSERT INTO `station_info` (`station_id`, `poltun_no`, `gangway_no`) VALUES
('sat-2', 8, 5),
('sta-1', 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_phone` varchar(60) DEFAULT NULL,
  `user_address` text,
  `user_password` varchar(60) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `admin`) VALUES
(1, 'Hasan Hafiz Pasha', 'mac_pasha@ovi.com', '01737104224', '26 Nobodip Bosak Len,\r\nLakhiBazar, Dhaka, 1100', '123456', 0),
(4, 'Anwarul Islam Abir', 'abir@ovi.com', '01754817730', 'Laxmibazar', '1234', 1),
(5, 'Test', 'test@gmail.com', '01717000111', 'Test, Dhaka, Bangladesh', '123', 0),
(6, 'heme', 'he@gmail.com', 'dfasdf', 'jasdkfn', '1212', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `launch_category`
--
ALTER TABLE `launch_category`
  ADD PRIMARY KEY (`launch_id`,`catagory_id`),
  ADD KEY `catagory_id` (`catagory_id`);

--
-- Indexes for table `launch_info`
--
ALTER TABLE `launch_info`
  ADD PRIMARY KEY (`launch_id`);

--
-- Indexes for table `launch_station`
--
ALTER TABLE `launch_station`
  ADD PRIMARY KEY (`launch_id`,`station_id`);

--
-- Indexes for table `purchase_info`
--
ALTER TABLE `purchase_info`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `schedule_info`
--
ALTER TABLE `schedule_info`
  ADD PRIMARY KEY (`launch_id`,`dept_date`);

--
-- Indexes for table `seat_catagory`
--
ALTER TABLE `seat_catagory`
  ADD PRIMARY KEY (`catagory_id`);

--
-- Indexes for table `station_info`
--
ALTER TABLE `station_info`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_phone` (`user_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_info`
--
ALTER TABLE `purchase_info`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `launch_category`
--
ALTER TABLE `launch_category`
  ADD CONSTRAINT `launch_category_ibfk_1` FOREIGN KEY (`launch_id`) REFERENCES `launch_info` (`launch_id`),
  ADD CONSTRAINT `launch_category_ibfk_2` FOREIGN KEY (`catagory_id`) REFERENCES `seat_catagory` (`catagory_id`);

--
-- Constraints for table `purchase_info`
--
ALTER TABLE `purchase_info`
  ADD CONSTRAINT `purchase_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `schedule_info`
--
ALTER TABLE `schedule_info`
  ADD CONSTRAINT `schedule_info_ibfk_1` FOREIGN KEY (`launch_id`) REFERENCES `launch_info` (`launch_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
