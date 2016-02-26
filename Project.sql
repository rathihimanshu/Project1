-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2015 at 09:49 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `HR_Admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `allottedleaves`
--

CREATE TABLE IF NOT EXISTS `allottedleaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeetype_id` int(11) NOT NULL,
  `leavetype_id` int(11) NOT NULL,
  `values` int(11) NOT NULL,
  `year` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employeetype_id` (`employeetype_id`,`leavetype_id`,`year`),
  KEY `leavetype_id` (`leavetype_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=284 ;

--
-- Dumping data for table `allottedleaves`
--

INSERT INTO `allottedleaves` (`id`, `employeetype_id`, `leavetype_id`, `values`, `year`) VALUES
(194, 1, 1, 12, '2014'),
(195, 2, 1, 12, '2014'),
(196, 3, 1, 12, '2014'),
(197, 1, 2, 18, '2014'),
(198, 2, 2, 0, '2014'),
(199, 3, 2, 18, '2014'),
(200, 1, 3, 0, '2014'),
(201, 2, 3, 0, '2014'),
(202, 3, 3, 0, '2014'),
(203, 1, 11, 0, '2014'),
(204, 2, 11, 0, '2014'),
(205, 3, 11, 0, '2014'),
(206, 1, 12, 0, '2014'),
(207, 2, 12, 0, '2014'),
(208, 3, 12, 0, '2014'),
(209, 1, 1, 12, '2013'),
(210, 2, 1, 12, '2013'),
(211, 3, 1, 12, '2013'),
(212, 1, 2, 18, '2013'),
(213, 2, 2, 0, '2013'),
(214, 3, 2, 18, '2013'),
(215, 1, 3, 0, '2013'),
(216, 2, 3, 0, '2013'),
(217, 3, 3, 0, '2013'),
(218, 1, 11, 0, '2013'),
(219, 2, 11, 0, '2013'),
(220, 3, 11, 0, '2013'),
(221, 1, 12, 0, '2013'),
(222, 2, 12, 0, '2013'),
(223, 3, 12, 0, '2013'),
(269, 1, 1, 12, '2015'),
(270, 2, 1, 12, '2015'),
(271, 3, 1, 12, '2015'),
(272, 1, 2, 18, '2015'),
(273, 2, 2, 0, '2015'),
(274, 3, 2, 18, '2015'),
(275, 1, 3, 0, '2015'),
(276, 2, 3, 0, '2015'),
(277, 3, 3, 0, '2015'),
(278, 1, 11, 0, '2015'),
(279, 2, 11, 0, '2015'),
(280, 3, 11, 0, '2015'),
(281, 1, 12, 0, '2015'),
(282, 2, 12, 0, '2015'),
(283, 3, 12, 0, '2015');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`) VALUES
(1, 'FMSF'),
(2, 'CPA'),
(3, 'CPA Services Pvt. Ltd.'),
(7, 'TCS'),
(8, 'Wipro');

-- --------------------------------------------------------

--
-- Table structure for table `companylocations`
--

CREATE TABLE IF NOT EXISTS `companylocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `companylocations`
--

INSERT INTO `companylocations` (`id`, `location_id`, `company_id`) VALUES
(1, 6, 1),
(2, 6, 2),
(3, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE IF NOT EXISTS `designations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `status` smallint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `status`) VALUES
(9, 'Executive Director', 1),
(10, 'Head-Program Desk', 1),
(11, 'Head-Resource Desk', 1),
(12, 'Programme Manager', 1),
(13, 'Senior Project Monitoring Coordinator', 1),
(14, 'Project Monitoring Coordinator', 1),
(15, 'Programme Associate', 1),
(16, 'Senior IT & Admin Support Officer', 1),
(17, 'Finance  Manager', 1),
(18, 'Research Associate', 1),
(19, 'Capacity Building Associate', 1),
(20, 'Project Monitoring Associate', 1),
(21, 'Caretaker', 1),
(22, 'Driver', 1),
(24, 'Programme Coordinator', 1),
(25, 'Senior Programme Coordinator', 0),
(26, 'Finance Manager', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employeestatuses`
--

CREATE TABLE IF NOT EXISTS `employeestatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employeestatuses`
--

INSERT INTO `employeestatuses` (`id`, `name`) VALUES
(1, 'current'),
(2, 'Ex employee');

-- --------------------------------------------------------

--
-- Table structure for table `employeetypes`
--

CREATE TABLE IF NOT EXISTS `employeetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `carry_forward` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `employeetypes`
--

INSERT INTO `employeetypes` (`id`, `leave_type_id`, `name`, `carry_forward`) VALUES
(1, 2, 'contract', 5),
(2, 2, 'probation', 10),
(3, 2, 'permanent', 20);

-- --------------------------------------------------------

--
-- Table structure for table `excemptions`
--

CREATE TABLE IF NOT EXISTS `excemptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `leavetype_id` int(11) NOT NULL,
  `values` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_id` (`staff_id`,`leavetype_id`,`year`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=160 ;

--
-- Dumping data for table `excemptions`
--

INSERT INTO `excemptions` (`id`, `staff_id`, `leavetype_id`, `values`, `year`) VALUES
(1, 7, 2, 44, 2013),
(2, 7, 1, 2, 2013),
(3, 3, 1, 6, 2013),
(5, 3, 2, 61, 2013),
(6, 4, 1, 7, 2013),
(7, 4, 2, 16, 2013),
(8, 8, 1, 1, 2013),
(9, 8, 2, 55, 2013),
(12, 5, 2, 23, 2013),
(13, 5, 1, 6, 2013),
(14, 11, 1, 7, 2013),
(15, 11, 2, 9, 2013),
(16, 10, 2, 14, 2013),
(17, 10, 1, 6, 2013),
(18, 6, 1, 7, 2013),
(19, 6, 2, 27, 2013),
(20, 9, 1, 11, 2013),
(21, 9, 2, 54, 2013),
(22, 13, 1, 6, 2013),
(23, 13, 2, 16, 2013),
(24, 14, 2, 14, 2013),
(26, 15, 1, 6, 2013),
(27, 15, 2, 14, 2013),
(29, 1, 1, 5, 2013),
(30, 1, 2, 26, 2013),
(31, 16, 1, 7, 2013),
(32, 16, 2, 14, 2013),
(33, 12, 1, 5, 2013),
(34, 12, 2, 36, 2013),
(35, 2, 1, 7, 2013),
(36, 2, 2, 38, 2013),
(37, 21, 1, 5, 2013),
(38, 21, 2, 14, 2013),
(39, 20, 1, 4, 2013),
(40, 20, 2, 18, 2013),
(41, 18, 1, 5, 2013),
(42, 18, 2, 35, 2013),
(43, 19, 1, 7, 2013),
(44, 19, 2, 7, 2013),
(49, 17, 2, 9, 2013),
(50, 17, 1, 7, 2013),
(51, 1, 1, 12, 2014),
(52, 1, 2, 44, 2014),
(54, 2, 1, 12, 2014),
(55, 2, 2, 56, 2014),
(56, 7, 1, 12, 2014),
(57, 7, 2, 50, 2014),
(58, 5, 1, 12, 2014),
(59, 5, 2, 41, 2014),
(61, 4, 1, 12, 2014),
(62, 4, 2, 34, 2014),
(69, 8, 1, 12, 2014),
(70, 8, 2, 50, 2014),
(71, 9, 1, 12, 2014),
(72, 9, 2, 50, 2014),
(73, 28, 1, 12, 2014),
(74, 3, 1, 12, 2014),
(75, 3, 2, 62, 2014),
(76, 11, 1, 12, 2014),
(77, 11, 2, 27, 2014),
(78, 12, 1, 12, 2014),
(79, 12, 2, 50, 2014),
(80, 27, 1, 11, 2014),
(81, 14, 1, 12, 2014),
(82, 14, 2, 32, 2014),
(83, 16, 1, 12, 2014),
(84, 25, 1, 12, 2014),
(85, 21, 2, 32, 2014),
(86, 18, 1, 12, 2014),
(87, 21, 1, 12, 2014),
(88, 16, 2, 32, 2014),
(89, 18, 2, 34, 2014),
(90, 20, 2, 26, 2014),
(91, 20, 1, 12, 2014),
(92, 15, 1, 12, 2014),
(93, 15, 2, 32, 2014),
(94, 17, 1, 12, 2014),
(95, 17, 2, 27, 2014),
(96, 19, 1, 12, 2014),
(97, 19, 2, 25, 2014),
(98, 28, 2, 16, 2014),
(101, 25, 2, 9, 2014),
(102, 24, 1, 12, 2014),
(103, 24, 2, 9, 2014),
(107, 27, 2, 8, 2014),
(108, 26, 1, 1, 2014),
(109, 26, 2, 2, 2014),
(110, 21, 1, 12, 2015),
(111, 21, 2, 18, 2015),
(113, 24, 1, 12, 2015),
(114, 24, 2, 19, 2015),
(115, 20, 1, 12, 2015),
(116, 20, 2, 22, 2015),
(117, 19, 1, 12, 2015),
(118, 19, 2, 18, 2015),
(119, 18, 1, 12, 2015),
(120, 18, 2, 31, 2015),
(121, 29, 1, 12, 2015),
(122, 29, 2, 20, 2015),
(123, 28, 1, 12, 2015),
(124, 28, 2, 18, 2015),
(125, 26, 1, 12, 2015),
(126, 27, 1, 12, 2015),
(127, 27, 2, 21, 2015),
(128, 16, 1, 12, 2015),
(129, 7, 1, 12, 2015),
(130, 7, 2, 32, 2015),
(131, 11, 1, 12, 2015),
(132, 11, 2, 41, 2015),
(133, 3, 1, 12, 2015),
(134, 3, 2, 68, 2015),
(135, 13, 1, 12, 2015),
(136, 13, 2, 50, 2015),
(138, 30, 1, 12, 2015),
(139, 25, 1, 12, 2015),
(140, 25, 2, 25, 2015),
(141, 9, 2, 67, 2015),
(142, 9, 1, 12, 2015),
(143, 16, 2, 35, 2015),
(145, 15, 1, 12, 2015),
(146, 15, 2, 30, 2015),
(147, 5, 1, 12, 2015),
(148, 5, 2, 52, 2015),
(149, 4, 1, 12, 2015),
(150, 4, 2, 37, 2015),
(151, 8, 1, 12, 2015),
(152, 8, 2, 63, 2015),
(153, 14, 1, 12, 2015),
(154, 14, 2, 29, 2015),
(155, 17, 1, 12, 2015),
(156, 17, 2, 32, 2015),
(158, 2, 1, 12, 2015),
(159, 2, 2, 60, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE IF NOT EXISTS `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(3) NOT NULL,
  `absence_type` tinyint(3) NOT NULL,
  `travelpurpose_id` tinyint(3) NOT NULL,
  `travelmode_id` tinyint(3) NOT NULL,
  `travel_from_place` varchar(250) NOT NULL,
  `travel_to_place` varchar(250) NOT NULL,
  `reporting_date` date NOT NULL,
  `travel_advance_required` varchar(100) NOT NULL,
  `leave_year` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `from_time` varchar(100) NOT NULL,
  `to_date` date NOT NULL,
  `to_time` varchar(100) NOT NULL,
  `total_leaves` float NOT NULL,
  `leavetype_id` varchar(50) NOT NULL,
  `absence_request_by` varchar(200) NOT NULL,
  `absence_desc` text NOT NULL,
  `absence_status` varchar(100) NOT NULL,
  `supervisor_approval_required` smallint(3) NOT NULL,
  `supervisor_company_id` int(3) DEFAULT NULL,
  `supervisor_absence_status` varchar(50) NOT NULL,
  `supervisor_remarks` text NOT NULL,
  `hr_remarks` text NOT NULL,
  `travel_report_upload` varchar(250) NOT NULL,
  `leave_policy_status` smallint(3) NOT NULL,
  `leave_policy_message` text NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=528 ;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `staff_id`, `absence_type`, `travelpurpose_id`, `travelmode_id`, `travel_from_place`, `travel_to_place`, `reporting_date`, `travel_advance_required`, `leave_year`, `from_date`, `from_time`, `to_date`, `to_time`, `total_leaves`, `leavetype_id`, `absence_request_by`, `absence_desc`, `absence_status`, `supervisor_approval_required`, `supervisor_company_id`, `supervisor_absence_status`, `supervisor_remarks`, `hr_remarks`, `travel_report_upload`, `leave_policy_status`, `leave_policy_message`, `updated_by`, `created_date`, `updated_date`) VALUES
(1, 1, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-10', '', '2013-10-11', '', 2, '1', 'Prabhat Kumar', 'Durga puja', 'Approved', 1, NULL, 'Approved', 'ok', 'ok', '', 0, '', 'admin', '2013-09-05 14:57:34', '2013-09-06 12:02:28'),
(2, 4, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-11', '', '2013-10-18', '', 6, '2', 'Sandeep Sharma', 'Travel to Hometown', 'Cancel', 1, NULL, 'Approved', 'Enjoy !', '.', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2013-09-05 15:30:05', '2013-10-15 05:22:19'),
(3, 11, 2, 1, 1, 'Delhi', 'Chennai', '2013-09-25', 'Rs.5,000/-', '', '2013-09-22', '16:00:00', '2013-09-25', '12:00:00', 4, '', 'Hari Krishna Pasupuleti', 'For doing pre-funding assessment of Human Rights Advocacy and Research Foundation, Chennai. It is old BftW partner. Manish Jain will also join me.', 'Pending', 1, NULL, 'Cancel', 'Because of Abhishek''s Health Reasons it is not advised to travel. Thus, travel request is not approved. ', '', '', 0, '', 'Sandeep Sharma', '2013-09-17 04:47:11', '2014-01-23 14:11:53'),
(4, 1, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-01', '', '2013-11-13', '', 8, '2', 'Sandeep Sharma', 'Diwali and chatth puja', 'Approved', 1, NULL, 'Approved', 'Leave is approved', 'Leave is approved hope no new assignments are there at that time ', '', 0, '', 'admin', '2013-09-06 11:56:06', '2013-09-06 16:56:56'),
(5, 10, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-14', '', '2013-10-16', '', 3, '2', 'Hari Krishna Pasupuleti', 'Bakra Eid', 'Approved', 1, NULL, 'Approved', 'approved', 'approved', '', 0, '', 'admin', '2013-09-06 12:14:15', '2013-09-17 09:19:29'),
(6, 1, 2, 1, 1, 'New Delhi', 'Bangaluru', '2013-09-16', '7000', '', '2013-09-10', '00:00:00', '2013-09-13', '00:00:00', 4, '', 'Prabhat Kumar', 'Due Diligence of Fairtrade India, Bangalore\nContract with DFID', 'Approved', 1, NULL, 'Approved', 'approved', 'ok', '', 0, '', 'admin', '2013-09-06 16:47:29', '2013-09-06 16:57:42'),
(7, 12, 2, 1, 1, 'New Delhi', 'Chennai', '2013-09-26', '10000', '', '2013-09-22', '16:12:00', '2013-09-25', '13:19:00', 4, '', 'Maneesh Jain', 'Refunding assessment of "human rights advocacy & research foundation" for bftw.', 'Approved', 1, NULL, 'Approved', 'ok', '.', '', 0, '', 'admin', '2013-09-06 16:54:52', '2013-09-27 06:08:48'),
(8, 1, 2, 3, 1, 'New Delhi', 'Kolkata', '2013-09-17', '5000', '', '2013-09-15', '00:00:00', '2013-09-16', '00:00:00', 2, '', 'Prabhat Kumar', 'NETZ coordination meeting to be held on 16th September at Indian Institution of Training and Development Thakrpukur, Kolkata', 'Approved', 1, NULL, 'Approved', 'ok\n', '.', '', 0, '', 'admin', '2013-09-06 17:21:33', '2013-10-01 06:57:17'),
(9, 3, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-11', '', '2013-11-15', '', 4, '2', 'Anuradha Singh', 'Going to home town', 'Cancel', 1, NULL, 'Approved', 'Enjoy your holidays', '.', '', 0, '', 'admin', '2013-09-09 15:27:35', '2013-10-09 10:57:34'),
(10, 2, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-21', '', '2013-10-25', '', 5, '2', 'Sanjay Patra', 'Travelling to home town', 'Approved', 1, NULL, 'Approved', 'Enjoy your holidays Sir, u need a break', 'Approved', '', 0, '', 'admin', '2013-09-09 15:55:11', '2013-09-09 16:41:30'),
(11, 7, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-14', '', '2013-10-18', '', 5, '2', 'Hari Krishna Pasupuleti', 'Going outstation', 'Approved', 1, NULL, 'Approved', 'approved', 'Have a nice holidays!', '', 0, '', 'admin', '2013-09-13 11:07:51', '2013-09-30 10:42:13'),
(12, 6, 2, 1, 1, 'Delhi', 'Dhaka', '2013-10-14', 'USD 500', '', '2013-10-05', '09:00:00', '2013-10-11', '07:00:00', 7, '', 'Hari Krishna Pasupuleti', 'Pre Funding Assessment of 3 old  BftW partners in Dhaka.', 'Approved', 1, NULL, 'Approved', 'approved', '.', '', 0, '', 'admin', '2013-10-01 07:33:11', '2013-10-09 10:52:20'),
(13, 1, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-09-18', '', '2013-09-18', '', 1, '1', 'Prabhat Kumar', 'fever', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 1, 'Application has not applied as per the policy<br>Causal Leave type applied 5 working days in advance.Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-09-17 12:57:29', '2013-10-09 10:05:48'),
(14, 15, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-09-19', '', '2013-09-19', '', 1, '1', 'Rashmi Sharon', 'Personal (out of town) Applied for two days but availed only one day on Sep 19th', 'Approved', 1, NULL, 'Approved', 'applied as per the leave policy. Leave has been Approved. ', '.', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-09-18 11:52:31', '2013-10-22 11:20:28'),
(15, 1, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-09-17', '', '2013-09-17', '', 0.5, '1', 'Prabhat Kumar', 'viral fever', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 1, 'Application has not applied as per the policy<br>Causal Leave type applied 5 working days in advance.Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-09-19 05:45:37', '2013-10-09 10:05:29'),
(16, 11, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-09-10', '', '2013-09-13', '', 4, '1', 'Abhishek Chandra', 'Suffered from viral fever and infection.', 'Approved', 1, NULL, 'Approved', 'ok', '.', '', 1, 'Application has not applied as per the policy<br>Causal Leave type applied 5 working days in advance.Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-09-24 07:09:54', '2013-09-26 04:28:46'),
(17, 10, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-14', '', '2013-10-18', '', 5, '2', 'Bushra Khan', 'Bakra Eid', 'Approved', 1, NULL, 'Approved', 'OK', '.', '', 0, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-09-25 08:41:18', '2013-10-01 07:07:43'),
(18, 16, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-09-26', '', '2013-09-27', '', 2, '1', 'Prabhat Kumar', 'Personal - Traveling to Hyedrabad', 'Approved', 1, NULL, 'Approved', 'ok', '.', '', 1, 'Application has not applied as per the policy<br>Causal Leave type applied 5 working days in advance.Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-09-25 10:51:44', '2013-09-26 04:28:16'),
(19, 12, 2, 1, 1, 'New Delhi', 'Pune', '2013-10-08', '15000', '', '2013-09-29', '00:00:00', '2013-10-05', '00:00:00', 7, '', 'Maneesh Jain', 'This is our second phase visit to IDEA ( Pune) towards accompaniment process.', 'Pending', 1, NULL, 'Cancel', 'Duplicate application', '', '', 0, '', 'Prabhat Kumar', '2013-09-26 04:34:47', '2013-10-16 06:35:05'),
(20, 12, 2, 1, 1, 'New Delhi', 'Pune', '2013-10-08', '15000', '', '2013-09-29', '00:00:00', '2013-10-05', '00:00:00', 7, '', 'Maneesh Jain', 'Second visit of IDEA ( Pune) from 29 th September to 05 th October, 2013 towards financial accompaniment  process.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2013-09-26 04:41:00', '2013-09-30 10:42:47'),
(21, 8, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-05', '', '2013-11-08', '', 4, '2', 'Sapna Singh', 'Visiting to Home Town', 'Approved', 1, NULL, 'Approved', 'Approved', '.', '', 0, '', 'admin', '2013-09-26 11:13:10', '2013-10-01 07:08:17'),
(22, 17, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-17', '', '2013-10-18', '', 2, '1', 'Sujata Samal', 'personal work', 'Approved', 0, NULL, '', '', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-10-01 04:13:48', '2013-10-09 10:05:07'),
(23, 1, 2, 1, 1, 'New Delhi', 'Chennai', '2013-10-07', '5000', '', '2013-10-02', '18:00:00', '2013-10-04', '18:30:00', 3, '', 'Prabhat Kumar', 'Travelling with Bushra. Air ticket to be booked for 2nd evening so that to reach by around 9 PM and return journey on 4th to reach delhi by around 9.30', 'Approved', 1, NULL, 'Approved', 'ok', '.', '', 0, '', 'admin', '2013-10-01 06:43:19', '2013-10-01 06:56:56'),
(24, 10, 2, 1, 1, 'NOIDA', 'Chennai', '2013-10-07', '5000', '', '2013-10-02', '00:00:00', '2013-10-04', '00:00:00', 3, '', 'Bushra Khan', 'Pre funding due diligence of IFMR, Chennai', 'Approved', 1, NULL, 'Approved', 'Ok', '.', '', 0, '', 'admin', '2013-10-01 06:56:10', '2013-10-01 07:03:26'),
(25, 14, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-31', '', '2013-11-12', '', 8, '2', 'Sritika Singh', 'Going home on account of Diwali festival', 'Approved', 1, NULL, 'Approved', 'Approved. Please ensure that there is some one responsible for the two online programs during your absence. Also brief the person well.', 'Please inform  who will be responsible for your work in your absence', '', 0, '', 'admin', '2013-10-03 07:13:03', '2013-10-16 07:22:19'),
(26, 11, 2, 3, 1, 'Delhi', 'Dhaka', '2013-10-14', 'USD 500', '', '2013-10-05', '04:00:00', '2013-10-11', '12:20:00', 7, '', 'Abhishek Chandra', 'Pre-funding Assessment of three organizations in Bangladesh for BftW.', 'Approved', 1, NULL, 'Approved', 'ok. (visiting ASD, BPKS and RDRS in Dhaka). ', '.', '', 0, '', 'admin', '2013-10-04 08:13:02', '2013-10-04 08:17:35'),
(27, 8, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-14', '', '2013-10-14', '', 1, '2', 'Sapna Singh', 'Dussehra holiday', 'Approved', 1, NULL, 'Cancel', 'office was remain closed due to official Holiday declared for Dussehra. ', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2013-10-07 04:58:06', '2014-02-04 16:44:25'),
(28, 6, 2, 6, 1, 'Delhi', 'Chennai, Madurai, Yelagiri Hills, Hyderabd', '2013-12-04', '10000', '', '2013-11-24', '18:44:00', '2013-12-03', '17:48:00', 10, '', 'Hari Krishna Pasupuleti', 'Please book flowing flights for the BftW partner visit \n \n1. 24.11.2013 - Delhi to Chennai - 19:15- 21:55 SG 309\n2.26.11.2013 - Chennai to Madurai - 17:35 – 18:45  SG 303\n3.27.11.2013 - Madurai to Chennai 20:35 - 21:55 JentKonnect S2 -3724 \n4. 1.12.013 - Chennai to Hyderabad - 17:45 – 19:05 SG 1004\n5. 3.12.2013 - Hyderabad to Delhi Air India 541 16.15 pm\n\nwould like to allow me to book train tickets.', 'Approved', 1, NULL, 'Approved', 'Kindly coordinate with Hari directly for the flight tickets. ', '.', '', 0, '', 'admin', '2013-10-07 16:51:34', '2013-10-09 10:52:04'),
(29, 13, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-05', '', '2013-11-05', '', 1, '1', 'Deepanshu Srivastava', 'Going home for Diwali', 'Approved', 1, NULL, 'Approved', 'ok', 'Have a nice holidays !', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-10-09 05:17:11', '2013-10-15 05:21:59'),
(30, 13, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-15', '', '2013-11-15', '', 1, '1', 'Deepanshu Srivastava', 'Going home for a Family ritual.', 'Approved', 1, NULL, 'Approved', 'ok', 'Which ritual r u going', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-10-09 05:18:28', '2013-10-30 10:52:38'),
(31, 3, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-05', '', '2013-11-08', '', 4, '2', 'Anuradha Singh', 'Going to home town', 'Approved', 1, NULL, 'Approved', 'Please make arrangement for your work to be looked after during your leave period. Enjoy your holidays.....', 'Renu & Sujata will be incharge during my absence', '', 0, '', 'admin', '2013-10-09 10:56:39', '2013-10-30 11:52:42'),
(32, 13, 3, 2, 0, 'Mumbai', '', '0000-00-00', '', '', '2013-11-25', '06:00:00', '2013-11-29', '23:00:00', 5, '', 'Deepanshu Srivastava', 'BftW partner visit and Workshop along with Sandeep', 'Approved', 1, NULL, 'Approved', 'Approved. ', 'Please mention the advance for travel', '', 0, '', 'admin', '2013-10-15 09:04:12', '2013-10-16 06:52:47'),
(33, 13, 2, 2, 1, 'New Delhi', 'Mumbai', '2013-12-02', 'Rs. 3000', '', '2013-11-25', '06:00:00', '2013-11-29', '23:00:00', 5, '', 'Deepanshu Srivastava', 'BftW partner Visit and Workshop along with Sandeep', 'Approved', 1, NULL, 'Approved', 'ok', '.', '', 0, '', 'admin', '2013-10-15 09:17:28', '2013-10-29 08:16:10'),
(34, 12, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-18', '', '2013-10-21', '', 2, '1', 'Maneesh Jain', 'Personal', 'Pending', 1, NULL, 'Cancel', 'duplicate', '', '', 1, 'Application has not applied as per the policy<br>Causal Leave type applied 3 working days in advance.Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Prabhat Kumar', '2013-10-16 06:32:37', '2013-10-16 09:04:49'),
(35, 2, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-15', '', '2013-10-15', '', 1, '1', 'Sanjay Patra', 'Personal reason', 'Approved', 1, NULL, 'Approved', '.', '.', '', 1, 'Application has not applied as per the policy<br>Causal Leave type applied 3 working days in advance.Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-10-16 06:41:57', '2013-10-16 07:20:08'),
(36, 12, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-10-18', '', '2013-10-21', '', 2, '1', 'Prabhat Kumar', 'Personal', 'Approved', 1, NULL, 'Approved', 'OK', '.', '', 1, 'Application has not applied as per the policy<br>Causal Leave type applied 3 working days in advance.Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-10-16 08:38:55', '2013-10-16 09:45:29'),
(37, 7, 2, 6, 1, 'Hyderabad and Bhubaneswar ', 'Delhi', '2013-12-06', '8000', '', '2013-12-01', '16:10:00', '2013-12-05', '20:50:00', 5, '', 'Hari Krishna Pasupuleti', 'Please book my tickets for travel to Hyderabad (CWS & APMAS ) and Bhubaneswar (ODAF ).\n 1.12.13 ( Indigo : 6E-309 : 16.10  – 18.20 )	Delhi – Hyderabad \n 3.12.13  ( Indigo : 6E-264 : 17:05 – 18:35 )	Hyderabad - Bhubaneswar\n 5.12.13   ( Indigo : 6E-258 : 18:55  – 20:50 )	Bhubaneswar- Delhi\n\nPlease do the bookings for Gerlind & myself at Hotel Excellency during our stay in Bhubaneswar. \n\nArrival 3rd Dec 2013 evening \nfor Aarti  for two nights 3rd & 4th Dec \nfor Gerlind one night 3rd Dec', 'Approved', 1, NULL, 'Approved', 'Accepted. Please do the needful.', '.', '', 0, '', 'admin', '2013-10-21 10:24:57', '2013-10-21 11:09:09'),
(38, 4, 2, 1, 1, 'Noida', 'Mangalore to Nizamabad', '2013-11-05', '25000', '', '2013-10-27', '00:00:00', '2013-10-25', '00:00:00', -1, '', 'Sandeep Sharma', 'BftW partner pre-funding assessment', 'Approved', 1, NULL, 'Approved', 'Approved', '.', '', 0, '', 'admin', '2013-10-22 10:53:19', '2013-10-30 08:39:42'),
(39, 4, 2, 2, 1, 'Noida ', 'Bangalore', '2013-11-15', '5000', '', '2013-11-11', '00:00:00', '2013-11-13', '00:00:00', 3, '', 'Sandeep Sharma', 'BftW partner workshop', 'Approved', 1, NULL, 'Approved', 'Approved', '.', '', 0, '', 'admin', '2013-10-22 10:55:08', '2013-10-30 08:38:53'),
(40, 4, 2, 6, 1, 'Noida', 'Mumbai', '2013-12-04', '10000', '', '2013-11-25', '00:00:00', '2013-11-29', '00:00:00', 5, '', 'Sandeep Sharma', 'Former BftW partner visit and workshop for BftW partners', 'Approved', 1, NULL, 'Approved', 'Approved', '.', '', 0, '', 'admin', '2013-10-22 10:56:58', '2013-10-30 08:38:28'),
(41, 4, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-02', '', '2013-12-03', '', 2, '2', 'Sandeep Sharma', 'Personal commitments', 'Approved', 1, NULL, 'Approved', 'This is approved', 'Happy Anniversay in advance :)', '', 0, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-10-22 10:58:20', '2013-10-30 10:52:00'),
(42, 15, 2, 1, 1, 'New Delhi', 'Mangalore and Hyderabad', '2013-11-05', 'RS. 30,000', '', '2013-10-27', '00:00:00', '2013-11-01', '00:00:00', 6, '', 'Rashmi Sharon', 'Pre Funding Assessments for BMZ funding \nOrgnaisations - WORDI, Nizamabad and PADI, Mangalore\nTraveling with Mr. Sandeep Sharma', 'Approved', 1, NULL, 'Approved', '0k', 'Have a nice & safe journey', '', 0, '', 'admin', '2013-10-22 11:02:04', '2013-10-29 08:15:47'),
(43, 15, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-05', '', '2013-11-05', '', 1, '1', 'Rashmi Sharon', 'Out of town', 'Approved', 1, NULL, 'Approved', 'Leave applied as per policy. Approved.', 'Ok', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-10-22 11:04:14', '2013-10-30 10:51:13'),
(44, 6, 2, 6, 1, 'Delhi', 'Kolkata', '2013-12-08', '5000.00', '', '2013-12-05', '06:00:00', '2013-12-06', '19:00:00', 2, '', 'Hari Krishna Pasupuleti', 'LWSIT round table.\n\nPlease book tickets as per the details provided below\n\n1. 05.12.2013 Del to Kolkata - 6E 273\n2. 06.12.2013 Kolkata to Delhi 6 E 224', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2013-12-04 05:07:03', '2013-12-04 06:25:30'),
(45, 10, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-15', '', '2013-11-15', '', 1, '1', 'Bushra Khan', 'Personal Work', 'Approved', 1, NULL, 'Approved', 'ok', 'leave taken on 14/11/13 as 15th November was declared holiday', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-10-30 08:53:35', '2013-11-18 11:13:46'),
(46, 2, 2, 2, 1, 'Delhi', 'Bangalore', '2013-10-14', '10,000/-', '', '2013-11-11', '14:00:00', '2013-11-13', '22:00:00', 3, '', 'Sanjay Patra', 'BFTW workshop on Governance', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2013-10-30 10:16:04', '2013-10-30 10:51:10'),
(47, 2, 2, 3, 1, 'Delhi', 'Msdurai-Mumbai-Delhi', '2013-12-02', '10,000/-', '', '2013-11-26', '12:00:00', '2013-11-29', '22:00:00', 4, '', 'Sanjay Patra', 'Travel to PWDS and then to Mumbai for the BFTW workshop', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2013-10-30 11:23:08', '2014-02-04 12:50:34'),
(48, 7, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-27', '', '2013-11-27', '', 1, '1', 'Aarti Sharma', 'to attend a family function.', 'Approved', 1, NULL, 'Approved', 'On 27th Aarti has to attend a meeting with PFI. Aarti has already discussed with Sir.Hence,Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-10-31 09:30:03', '2013-11-18 11:13:01'),
(49, 17, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-15', '', '2013-11-15', '', 1, '1', 'Sujata Samal', 'personal', 'Approved', 1, NULL, 'Approved', 'Approved', 'leave taken on 14/11/13 as 15th was declared holiday', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-11-06 05:36:46', '2013-11-18 11:12:35'),
(50, 12, 2, 1, 1, 'New Delhi', 'meghalaya', '2013-11-29', '25000/-', '', '2013-11-17', '00:00:00', '2013-11-28', '00:00:00', 12, '', 'Maneesh Jain', 'Financial accompaniment of three organisations in Meghalaya on the behalf of CBM ( Germany) from 17 Nov to 28th November, 2013.', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 0, '', 'admin', '2013-11-11 05:19:02', '2013-11-18 10:35:41'),
(51, 1, 2, 1, 2, 'New Delhi', 'Allahabad', '2013-11-21', '5000', '', '2013-11-17', '21:15:00', '2013-11-21', '06:30:00', 5, '', 'Prabhat Kumar', 'This is CPA work. DDWS evaluation on behalf of Misereor\nTrain is needed on 17th night to reach in the morning of 18th and back on 20th night to reach back on 21st morning.\nStay is also required from 18th morning to 20th morning in hotel. One more person will accompany me, this needs to be confirmed', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2013-11-14 06:35:49', '2013-11-18 10:35:11'),
(52, 1, 2, 1, 1, 'New delhi', 'Chhindwara', '2013-12-12', '10000', '', '2013-12-08', '20:00:00', '2013-12-11', '19:00:00', 4, '', 'Prabhat Kumar', 'This CPA assignment of accompaniment for ECL, Chindwara being done under contract with CBM\nchindwara can be reached via betul which is 137 KM or via Nagpur which is 122 KM or bhopal which is around 280 KM. There is only one direct train which takes more than 20 hours. Stay arrangement too needed. Options need to be found', 'Approved', 1, NULL, 'Approved', 'Requesting HR&Admin dept. to arrange for necessary tickets. ', '..', '', 0, '', 'admin', '2013-11-17 11:17:18', '2013-11-18 10:34:43'),
(53, 5, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-19', '', '2013-11-19', '', 1, '1', 'Renu Arora', 'Son''s Bday', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-11-18 05:09:25', '2013-11-18 11:11:48'),
(54, 15, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-31', '', 5, '2', 'Rashmi Sharon', 'Going to Cuttack for Christmas Holidays', 'Approved', 1, NULL, 'Approved', 'Approved', 'Have a nice holidays', '', 0, '', 'admin', '2013-11-18 08:36:45', '2013-11-18 11:10:46'),
(55, 5, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-19', '', '2013-11-19', '', 1, '1', 'Renu Arora', 'son''s bday', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-11-18 09:21:12', '2013-12-11 11:30:45'),
(56, 8, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-20', '', '2013-11-20', '', 0.5, '1', 'Sapna Singh', 'Personal work', 'Approved', 1, NULL, 'Approved', 'Approved.', '.', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-11-19 05:53:13', '2013-12-04 06:27:13'),
(57, 3, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-31', '', 5, '2', 'Anuradha Singh', 'Annual holiday', 'Approved', 1, NULL, 'Approved', 'Please make arrangements for the office running in your absence', '..', '', 0, '', 'admin', '2013-11-20 03:48:57', '2013-11-21 05:13:09'),
(58, 14, 2, 3, 1, 'New Delhi', 'Mumbai', '2013-11-26', '3000', '', '2013-11-25', '17:45:00', '2013-11-26', '17:45:00', 2, '', 'Sritika Singh', 'Visit to TISS on account of DFMA Course', 'Approved', 1, NULL, 'Approved', 'This is approved', '..', '', 0, '', 'admin', '2013-11-20 12:07:56', '2013-11-21 05:13:44'),
(59, 2, 2, 3, 1, 'NOIDA', 'Madurai-Chennai-Mumbai-Bangalore-Delhi/NOIDA', '2013-12-02', '25,000/-', '', '2013-11-26', '10:00:00', '2013-11-30', '23:00:00', 5, '', 'Sanjay Patra', 'In Madurai, meeting with PWDS, enroute Chennai to Mumbai for the BFTW Partner workshop on Internal Controls and then to Bangalore for the EC meeting of FMSF', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2013-11-21 04:23:47', '2014-02-04 12:50:20'),
(60, 1, 2, 1, 1, 'New Delhi', 'Allahabad', '2013-12-12', '8000', '', '2013-12-09', '07:00:00', '2013-12-13', '12:00:00', 5, '', 'Prabhat Kumar', 'CPA Assignment; Evaluation of DDWS under the contract with Misereor\nSince there may be a chance of extension of date the flight booked should be refundable; Lalatendu would be accompanying for this assignment so the ticket should be booked for two', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2013-12-03 06:40:05', '2013-12-04 06:25:11'),
(61, 2, 2, 6, 1, 'Delhi', 'Bhubaneswar', '2013-12-07', '10,000/-', '', '2013-12-03', '14:00:00', '2013-12-06', '21:00:00', 4, '', 'Sanjay Patra', 'Visit to ODAF, meting with the team of ODAF and also the Auditor', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2013-11-21 05:08:25', '2014-02-04 12:50:09'),
(62, 2, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-31', '', 5, '2', 'Anuradha Singh', 'Visiting Home town for annual holidays', 'Approved', 1, NULL, '', '', '..', '', 0, '', 'admin', '2013-11-21 05:11:02', '2014-01-20 16:50:46'),
(63, 14, 2, 3, 1, 'NOIDA', 'Mumbai', '2013-11-26', '3000', '', '2013-11-26', '08:10:00', '2013-11-29', '00:00:00', 4, '', 'Sritika Singh', 'On account of visit to TISS for meeting and Internal Control Workshop', 'Approved', 1, NULL, 'Approved', 'Approved', '.', '', 0, '', 'admin', '2013-11-22 05:37:59', '2013-12-04 06:26:28'),
(64, 16, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-10', '', '2013-12-13', '', 4, '2', 'Puran Jha', 'Personal', 'Approved', 1, NULL, 'Approved', 'Please update about the pending work couple of days before going on leave', 'have a nice holiday', '', 0, '', 'admin', '2013-11-25 10:02:52', '2013-11-26 07:59:04'),
(65, 16, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-26', '', '2013-11-26', '', 0.5, '1', 'Puran Jha', 'Personal - Guest are coming at my place.', 'Approved', 1, NULL, 'Approved', 'Ok. the leave has been requested as per policy', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-11-26 06:33:59', '2013-11-26 06:40:36'),
(66, 12, 2, 1, 1, 'N.Delhi ', 'Chhindwara', '2013-11-12', '8000/-', '', '2013-12-08', '00:00:00', '2013-12-11', '00:00:00', 4, '', 'Maneesh Jain', 'Financial Accompaniment of ELC, Chhindwara on the behalf of CBM in M.P', 'Approved', 1, NULL, 'Approved', 'ok.', '..', '', 0, '', 'admin', '2013-11-29 05:27:42', '2013-12-04 06:26:10'),
(67, 10, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-11-28', '', '2013-11-29', '', 2, '1', 'Bushra Khan', 'To visit Doctor for Cyst on Forehead', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-02 05:32:59', '2013-12-11 11:30:23'),
(68, 3, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-06', '', '2013-12-06', '', 1, '1', 'Sanjay Patra', 'Seminar in son''s school', 'Cancel', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-02 06:41:42', '2013-12-13 08:54:47'),
(69, 1, 2, 1, 4, 'Greater Noida', 'Maduban, Haryana', '2013-12-16', '5000', '', '2013-12-05', '06:30:00', '2013-12-06', '21:30:00', 2, '', 'Prabhat Kumar', 'CPA work, Accompaniment of Arpana Research & Charitable Trust, under the contract with CBM.\nMaduban is between panipat and karnal, aroung 110 KM from Delhi ISBT so around 160 KM from Greater Noida\nStay arrangement would be done by the organisation being visited', 'Approved', 1, NULL, 'Approved', 'Lalatendu will accompany', '..', '', 0, '', 'admin', '2013-12-03 06:34:17', '2013-12-04 06:25:51'),
(70, 13, 2, 1, 5, 'New Delhi', 'Arpana Hospital, Madhuban, Haryana', '2013-12-09', 'No', '', '2013-12-05', '06:00:00', '2013-12-06', '23:00:00', 2, '', 'Deepanshu Srivastava', 'Travelling along with Prabhat ji.', 'Pending', 1, NULL, 'Cancel', 'As informed by Prabhat, team composition has been changed and Deepanshu is not travelling. Thus, request has been cancelled. ', '', '', 0, '', 'Sandeep Sharma', '2013-12-03 06:45:35', '2014-02-06 12:44:20'),
(71, 12, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-05', '', '2013-12-05', '', 1, '1', 'Maneesh Jain', 'Personal work', 'Approved', 1, NULL, '', '', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-03 10:51:18', '2013-12-12 08:48:45'),
(72, 5, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-06', '', '2013-12-06', '', 1, '1', 'Renu Arora', 'family function', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-05 06:15:17', '2013-12-11 11:29:59'),
(73, 6, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-09', '', '2013-12-09', '', 1, '1', 'Hari Krishna Pasupuleti', 'Personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-05 13:31:00', '2013-12-11 11:29:35'),
(74, 17, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-23', '', 1, '1', 'Sujata Samal', 'Personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-06 04:06:59', '2013-12-13 08:55:47'),
(75, 7, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-30', '', '2013-12-31', '', 2, '2', 'Aarti Sharma', 'Personal Reason', 'Approved', 1, NULL, 'Approved', 'Ok.', '..', '', 0, '', 'admin', '2013-12-10 09:49:20', '2013-12-11 11:29:14'),
(76, 7, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-06', '', '2013-12-06', '', 1, '1', 'Aarti Sharma', 'Personal reason', 'Approved', 1, NULL, 'Approved', 'Ok.', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-10 09:51:26', '2013-12-11 11:28:55'),
(77, 10, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-26', '', '2013-12-27', '', 2, '1', 'Bushra Khan', 'Going Home', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-10 10:51:16', '2013-12-11 11:28:32'),
(78, 8, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-27', '', '2013-12-27', '', 1, '1', 'Sapna Singh', 'personal reason', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-10 10:55:14', '2013-12-11 11:27:59'),
(79, 8, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-30', '', '2013-12-31', '', 2, '1', 'Sapna Singh', 'personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-10 10:55:48', '2013-12-11 11:27:12'),
(80, 10, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-23', '', 1, '1', 'Bushra Khan', 'Going Home', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-11 11:29:25', '2013-12-12 08:49:00'),
(81, 14, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-31', '', 5, '2', 'Sritika Singh', 'Holiday', 'Approved', 1, NULL, 'Approved', 'Approved', 'Have a nice holiday', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2013-12-13 08:21:33', '2013-12-13 08:55:20'),
(82, 4, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-27', '', 3, '2', 'Sandeep Sharma', 'Annual leave\n\n(It should be 3 days, as 24th and 25th is a office holiday).', 'Approved', 1, NULL, 'Approved', 'Approved', 'Have a nice holiday', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2013-12-13 09:51:19', '2013-12-13 10:33:30'),
(83, 12, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-31', '', 5, '2', 'Maneesh Jain', 'To celebrate festival of Christmas with friends, relatives & family.', 'Approved', 1, NULL, 'Approved', 'please try to complete the report for ELC, chhindwara before going on leave', 'Maneesh whom have you assigned your pending work please inform', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2013-12-16 08:10:09', '2013-12-17 04:55:39'),
(84, 1, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-23', '', 1, '1', 'Prabhat Kumar', 'personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-17 11:07:07', '2013-12-23 08:34:42'),
(85, 16, 1, 0, 0, '', '', '0000-00-00', '', '2013', '2013-12-23', '', '2013-12-23', '', 1, '1', 'Puran Jha', 'Christmas Program', 'Approved', 1, NULL, 'Approved', 'Ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2013-12-20 09:09:57', '2013-12-23 07:53:57'),
(86, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-20', '', '2014-01-20', '', 1, '1', 'Sapna Singh', 'Personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-01-15 11:28:09', '2014-01-23 14:16:43'),
(87, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-27', '', '2014-01-27', '', 1, '1', 'Prabhat Kumar', 'personal', 'Pending', 1, NULL, 'Rejected', 'CPA Board Meeting planned during the first half. ', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-01-20 12:19:13', '2014-02-07 17:18:27'),
(88, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-31', '', '2014-01-31', '', 1, '1', 'Aarti Sharma', 'Personal Reason', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-01-20 12:26:04', '2014-01-23 14:16:30'),
(89, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-20', '', '2014-01-20', '', 1, '1', 'Akrita Bharos', 'Not well.', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-01-23 14:07:47', '2014-02-04 11:03:04'),
(90, 25, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-17', '', '2014-02-21', '', 5, '3', 'Divyanshu Yadav', 'Appearing in 6th trimester examinations.', 'Approved', 1, NULL, 'Approved', 'Please check as it will not be casual leave', 'Best of Luck', '', 1, 'Application has not applied as per the policy<br>If leave type Loss Of Pay, Application has to be applied within 2 days of end date.', 'admin', '2014-01-23 15:43:00', '2014-02-04 11:08:34'),
(91, 2, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-02', '', '2014-01-03', '', 2, '2', 'Sanjay Patra', 'Visiting home town', 'Approved', 1, NULL, 'Approved', '..', '.', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-01-23 17:28:47', '2014-01-27 14:13:10'),
(92, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-24', '', '2014-01-24', '', 1, '1', 'Sanjay Patra', 'personal work', 'Approved', 1, NULL, 'Approved', 'N.A', '.', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-01-23 17:48:14', '2014-01-27 14:12:57'),
(93, 14, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-13', '', '2014-01-14', '', 2, '2', 'Sritika Singh', 'Personal', 'Approved', 1, NULL, 'Approved', 'Approved', '.', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-01-27 09:46:30', '2014-01-27 16:08:41'),
(94, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-29', '', '2014-01-29', '', 1, '1', 'Anuradha Singh', 'Medical check up', 'Approved', 1, NULL, 'Approved', 'Approved', '.', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-01-27 14:11:56', '2014-01-27 16:08:51'),
(95, 1, 2, 6, 1, 'New Delhi', 'Kolkata to Suri', '2014-02-07', '15000', '', '2014-01-29', '09:00:00', '2014-02-06', '23:59:00', 9, '', 'Prabhat Kumar', 'Step Up Project Finance Monitoring, DRCSC and TSRD, partner of NETZ.\nFlight Ticket already booked through email request, train ticket booked by self.  \nAccompanied by Lalatendu', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-01-28 09:36:03', '2014-01-28 11:55:34'),
(96, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-03', '', '2014-02-07', '', 5, '2', 'Dharmendra Singh Rawat', 'To attend a wedding', 'Approved', 1, NULL, 'Approved', 'k', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-01-31 14:46:03', '2014-02-04 11:02:42'),
(97, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-14', '', '2014-02-14', '', 1, '1', 'Anil Sharma', 'To attend a wedding', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-01-31 14:47:35', '2014-02-04 12:49:43'),
(98, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-17', '', '2014-02-21', '', 5, '3', 'Akrita Bharos', 'Examination', 'Approved', 1, NULL, 'Approved', 'Approved', 'Best of Luck', '', 1, 'Application has not applied as per the policy<br>If leave type Loss Of Pay, Application has to be applied within 2 days of end date.', 'admin', '2014-01-31 17:39:12', '2014-02-04 11:07:48'),
(99, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-06', '', '2014-02-06', '', 1, '1', 'Renu Arora', 'Personal Work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-02-03 09:45:09', '2014-02-03 16:04:07'),
(100, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-21', '', '2014-01-21', '', 1, '1', 'Sapna Singh', 'personal reason', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-03 13:56:44', '2014-02-05 15:33:42'),
(101, 2, 2, 3, 5, 'Noida ', 'Jaipur', '2014-02-05', '', '', '2014-02-03', '00:00:00', '2014-02-04', '00:00:00', 2, '', 'Sanjay Patra', 'CPA Charity', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-02-03 16:01:38', '2014-02-04 12:50:01'),
(102, 3, 2, 2, 1, 'Noida', 'Nepal', '2014-02-21', 'Rs.20,000', '', '2014-02-17', '00:00:00', '2014-02-20', '00:00:00', 4, '', 'Anuradha Singh', 'Nepal workshop', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-02-03 16:02:47', '2014-03-25 13:58:15'),
(103, 26, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-06', '', '2014-02-06', '', 1, '1', 'Itti Aggarwal', 'To go to passport office for verification of documents', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-02-05 12:01:39', '2014-02-07 17:15:08'),
(104, 15, 2, 6, 1, 'Delhi', 'Suri, West Bengal', '2014-02-25', '15000', '', '2014-02-16', '00:00:00', '2014-02-21', '00:00:00', 6, '', 'Rashmi Sharon', 'Programme Monitoring - NETZ, Bangladesh', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-02-05 13:41:52', '2014-02-05 15:34:06'),
(105, 13, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-06', '', '2014-02-07', '', 2, '2', 'Deepanshu Srivastava', 'Grandmother''s Accident.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-02-05 15:23:45', '2014-04-22 09:04:55'),
(106, 2, 2, 2, 1, 'New Delhi', 'Kathmandu', '2014-02-21', '', '', '2014-02-17', '00:00:00', '2014-02-20', '00:00:00', 4, '', 'Sanjay Patra', 'Auditors meet and Partners workshop on control systems for Nepal partners', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-02-06 09:34:20', '2014-02-06 10:42:37'),
(107, 3, 2, 2, 1, 'Noida', 'Nepal', '2014-02-17', '20,000', '', '2014-02-17', '00:00:00', '2014-02-20', '00:00:00', 4, '', 'Anuradha Singh', 'Auditors & Partners workshop', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-02-06 10:25:29', '2014-02-10 09:27:02'),
(108, 4, 2, 2, 1, 'Noida', 'Lucknow', '2014-02-13', '5000', '', '2014-02-10', '15:00:00', '2014-02-12', '23:00:00', 3, '', 'Sandeep Sharma', 'For facilitating workshop for Find your Feet, U.K.', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-02-06 12:51:00', '2014-02-06 16:10:22'),
(109, 4, 2, 2, 1, 'Noida', 'Kathmandu', '2014-02-24', '10000', '', '2014-02-17', '00:00:00', '2014-02-21', '00:00:00', 5, '', 'Sandeep Sharma', 'For facilitating BftW partner workshop', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-02-06 12:52:28', '2014-02-06 16:10:02'),
(110, 4, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-05', '', '2014-03-10', '', 4, '2', 'Sanjay Patra', 'Travel to hometown', 'Approved', 1, NULL, 'Approved', 'Please be in office on 10th March as we will have a meeting with Mr. Ulrich Gundart on that day. You are permitted to claim your return airfare from home town to Delhi from FMSF', '..', '', 0, '', 'admin', '2014-02-06 12:53:40', '2014-02-06 16:09:38'),
(111, 11, 2, 2, 1, 'Noida', 'Bengaluru', '2014-02-17', '4000', '', '2014-02-10', '05:30:00', '2014-02-15', '23:45:00', 6, '', 'Abhishek Chandra', 'To attend Workshop on Leadership for Transformation in Self, Groups and Systems from 10-15 February 2014.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-02-07 09:49:28', '2014-02-07 11:29:39'),
(112, 12, 2, 2, 1, 'Noida', 'Lucknow', '2014-02-14', '3,000', '', '2014-02-11', '00:00:00', '2014-02-13', '00:00:00', 3, '', 'Maneesh Jain', 'Advance request for workshop to be held at Lucknow on the behalf of FYF.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-02-07 16:47:44', '2014-02-07 16:56:58'),
(113, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-12', '', '2014-02-12', '', 1, '1', 'Prabhat Kumar', 'personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-02-07 17:11:30', '2014-02-07 17:14:59'),
(114, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-17', '', '2014-02-17', '', 1, '1', 'Dharmendra Singh Rawat', 'Father is not well', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-12 10:15:26', '2014-02-12 12:34:48'),
(115, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-24', '', '2014-02-24', '', 1, '1', 'Rashmi Sharon', 'Visiting cuttack from 22nd - 24th Feb 14', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-13 12:41:14', '2014-02-21 14:58:25'),
(116, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-07', '', '2014-02-07', '', 1, '1', 'Harpal Singh/Gopal', 'Personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-02-13 13:35:32', '2014-02-13 13:51:05'),
(117, 10, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-21', '', '2014-03-21', '', 19, '2', 'Bushra Khan', 'Marriage', 'Approved', 1, NULL, 'Approved', 'With best wishes', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-02-14 16:55:04', '2014-02-21 14:57:58'),
(118, 10, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-18', '', '2014-02-18', '', 1, '1', 'Bushra Khan', 'Got sprain in leg', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-19 12:34:23', '2014-02-21 14:42:22'),
(119, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-18', '', '2014-02-18', '', 1, '1', 'Dharmendra Singh Rawat', 'Father is not well', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-19 16:17:56', '2014-02-28 13:08:19'),
(120, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-19', '', '2014-02-19', '', 1, '1', 'Harpal Singh/Gopal', 'Father in law is not well', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-19 16:19:29', '2014-02-28 13:08:29'),
(121, 26, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-20', '', '2014-02-20', '', 1, '1', 'Itti Aggarwal', 'not well', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-21 14:27:52', '2014-02-21 14:42:02'),
(122, 12, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-28', '', '2014-02-28', '', 1, '1', 'Maneesh Jain', 'Personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-21 15:57:43', '2014-02-21 16:29:29'),
(123, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-24', '', '2014-02-24', '', 1, '1', 'Dharmendra Singh Rawat', 'personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-24 17:32:02', '2014-02-28 13:08:37'),
(124, 1, 2, 1, 1, 'New Delhi', 'Kolkata', '2014-03-06', '7000', '', '2014-03-04', '05:00:00', '2014-03-05', '23:00:00', 2, '', 'Prabhat Kumar', 'Review of Reach India in context of Income tax compliance.\nNeed early morning flight to reach kolkata by 9.00 AM on 4th and return on 5th evening by around 7.30 PM from kolkata\nNeed a stay for 4th night', 'Approved', 1, NULL, 'Approved', 'Kindly do the needful. ', '..', '', 0, '', 'admin', '2014-02-25 12:45:50', '2014-02-25 14:37:41'),
(125, 12, 2, 1, 1, 'New Delhi', 'Pune', '2014-03-06', '4000', '', '2014-03-03', '00:00:00', '2014-03-05', '00:00:00', 3, '', 'Maneesh Jain', 'Final visit of IDEA (PUNE) for accompaniment purpose', 'Approved', 1, NULL, 'Approved', 'in future, put time along with date', '..', '', 0, '', 'admin', '2014-02-26 13:03:49', '2014-02-26 14:02:35'),
(126, 15, 2, 6, 1, 'Noida ', 'Hyderabad - Vishakhapatnam-Rayagada', '2014-03-12', '20000', '', '2014-02-04', '00:00:00', '2014-02-11', '00:00:00', 8, '', 'Rashmi Sharon', 'Filed  visit with Gerlind to CPF and Living Farms', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-02-28 10:45:14', '2014-02-28 16:07:54'),
(128, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-26', '', '2014-03-11', '', 9, '2', 'Dharmendra Singh Rawat', 'Father expired', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-02-28 11:18:09', '2014-02-28 13:09:00'),
(129, 9, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-28', '', '2014-02-28', '', 0, '1', 'Lalatendu Samantasinghar', 'fever', 'Cancel', 1, NULL, 'Approved', 'Ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-02-28 12:54:25', '2014-04-17 13:46:44'),
(130, 9, 2, 6, 1, 'Noida', 'Kolkata', '2014-02-06', 'Nil', '', '2014-01-26', '00:00:00', '2014-02-05', '00:00:00', 11, '', 'Lalatendu Samantasinghar', 'NETZ Financial Monitoring of TSRD & DRCSC Kolkata', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-02-28 12:58:34', '2014-02-28 13:08:02'),
(131, 8, 2, 6, 1, 'NOIDA', 'UDAIPUR', '2014-02-06', '', '', '2014-02-03', '13:02:00', '2014-02-05', '23:30:00', 3, '', 'Sapna Singh', 'CASA Round Table Meeting', 'Approved', 1, NULL, 'Approved', 'ok', '..', 'b9c80-Minutes-of-the-Meeting-held-with-CASA-during-RTM---4.03.2014.docx', 0, '', 'admin', '2014-02-28 13:09:56', '2014-02-28 16:07:21');
INSERT INTO `leaves` (`id`, `staff_id`, `absence_type`, `travelpurpose_id`, `travelmode_id`, `travel_from_place`, `travel_to_place`, `reporting_date`, `travel_advance_required`, `leave_year`, `from_date`, `from_time`, `to_date`, `to_time`, `total_leaves`, `leavetype_id`, `absence_request_by`, `absence_desc`, `absence_status`, `supervisor_approval_required`, `supervisor_company_id`, `supervisor_absence_status`, `supervisor_remarks`, `hr_remarks`, `travel_report_upload`, `leave_policy_status`, `leave_policy_message`, `updated_by`, `created_date`, `updated_date`) VALUES
(132, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-27', '', '2014-04-17', '', 15, '3', 'S.Bhagyashree', 'For appearing the Final Semester Exams.', 'Approved', 1, NULL, 'Approved', 'Leave approved. All the best for your exams. ', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Loss Of Pay, Application has to be applied within 2 days of end date.', 'admin', '2014-03-03 11:49:57', '2014-03-03 15:44:57'),
(133, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-18', '', '2014-03-18', '', 1, '1', 'Sanjay Patra', 'personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-03 12:44:58', '2014-03-12 16:54:13'),
(134, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-21', '', '2014-02-21', '', 0.5, '1', 'Puran Jha', 'Personal', 'Approved', 1, NULL, 'Approved', 'delay in application', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-03 13:38:02', '2014-03-03 15:19:40'),
(135, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-03', '', '2014-03-03', '', 0.5, '1', 'Puran Jha', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-03-03 13:40:37', '2014-03-03 15:19:50'),
(136, 13, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-18', '', '2014-03-18', '', 1, '1', 'Deepanshu Srivastava', 'Holi', 'Approved', 1, NULL, 'Approved', 'Kindly ensure completion of all pending task.', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-03 14:13:38', '2014-03-04 13:05:58'),
(137, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-28', '', '2014-02-28', '', 1, '1', 'Harpal Singh/Gopal', 'Father-in-law expired', 'Approved', 1, NULL, 'Approved', ',,', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-03 17:24:32', '2014-03-21 15:36:43'),
(138, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-02-28', '', '2014-03-01', '', 1, '1', 'Anil Sharma', 'Uncle expired', 'Approved', 1, NULL, 'Approved', ',,', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-03 17:30:32', '2014-03-21 15:36:33'),
(139, 25, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-18', '', '2014-03-18', '', 1, '1', 'Divyanshu Yadav', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-04 14:29:46', '2014-03-13 13:34:00'),
(140, 1, 2, 1, 1, 'New Delhi', 'Patna', '2014-03-28', '15000', '', '2014-03-19', '12:00:00', '2014-03-28', '10:00:00', 10, '', 'Prabhat Kumar', 'CPA assignment; Review of Fund utilization of Geneva Global fund to its partner.\n20 - 21st Mar - one partner in Motihari and 24 - 27th Mar - two partner in Muzaffarpur\nstay arrangement at Motihari would be requested to the partner and for Muzaffarpur, no stay arrangement would be required. I''ll stay at my native place around 50 KMs far', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-03-10 14:16:00', '2014-03-13 13:33:31'),
(141, 12, 2, 1, 1, 'New Delhi', 'Bihar ( Purnia & Patna)', '2014-03-28', '10000', '', '2014-03-19', '00:00:00', '2014-03-27', '00:00:00', 9, '', 'Maneesh Jain', 'Fund utilisation of six partners in Bihar on the behalf of Geneva Global in the Month of March, 2014', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-03-10 15:40:12', '2014-03-10 16:10:05'),
(142, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-10', '', '2014-03-10', '', 1, '1', 'Akrita Bharos', 'Not well', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-03-11 11:48:29', '2014-03-13 13:34:08'),
(143, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-01', '', '2014-03-01', '', 0, '1', 'Anil Sharma', 'personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-11 14:30:26', '2014-03-21 15:36:22'),
(144, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-08', '', '2014-03-08', '', 0, '1', 'Anil Sharma', 'personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-03-11 14:33:58', '2014-03-21 15:36:11'),
(145, 12, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-10', '', '2014-03-10', '', 0.5, '1', 'Maneesh Jain', 'Personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-03-11 14:50:27', '2014-03-11 15:31:05'),
(146, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-24', '', '2014-03-24', '', 1, '1', 'Aarti Sharma', 'Personal reason', 'Rejected', 1, NULL, 'Rejected', 'Due to change of Plan', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-11 15:31:58', '2014-08-29 12:37:43'),
(147, 8, 2, 3, 1, 'NOIDA', 'UDAIPUR', '2014-03-06', '', '', '2014-03-03', '12:15:00', '2014-03-05', '23:00:00', 3, '', 'Sapna Singh', 'To Attend CASA Round Table Meeting', 'Approved', 1, NULL, 'Approved', 'ok', '..', 'b7b6f-Minutes-of-the-Meeting-held-with-CASA-during-RTM---4.03.2014.docx', 0, '', 'admin', '2014-03-11 15:41:51', '2014-03-13 13:33:22'),
(148, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-26', '', '2014-03-26', '', 0.5, '1', 'S.Bhagyashree', 'Personal work.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-12 09:43:09', '2014-03-13 13:34:22'),
(149, 15, 2, 6, 1, 'Noida', 'Hyderabad - Vishakhapatnam-Rayagada', '2014-03-12', 'Rs. 20000', '', '2014-03-04', '00:00:00', '2014-03-11', '00:00:00', 8, '', 'Rashmi Sharon', 'WIll be visiting the fields of CPF in Andhra Pradesh and Living Farms in Odisha along with Ms. Gerlind, BftW', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 0, '', 'admin', '2014-03-12 10:17:55', '2014-03-13 13:33:10'),
(150, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-18', '', '2014-03-18', '', 1, '1', 'Rashmi Sharon', 'Out of town', 'Approved', 1, NULL, 'Approved', 'Enjoy your holidays!!', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-12 10:18:58', '2014-03-13 13:34:40'),
(151, 14, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-10', '', '2014-04-21', '', 7, '2', 'Sritika Singh', 'Going home', 'Approved', 1, NULL, 'Approved', 'Approved', 'Have a nice holiday', '', 0, '', 'admin', '2014-03-12 16:58:48', '2014-03-12 17:03:24'),
(152, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-18', '', '2014-03-18', '', 1, '1', 'Renu Arora', 'personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-13 13:42:37', '2014-03-13 14:22:53'),
(153, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-12', '', '2014-03-13', '', 2, '2', 'Dharmendra Singh Rawat', 'Extended leave when father expired', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-03-14 09:51:55', '2014-03-21 15:35:55'),
(154, 11, 2, 2, 1, 'Delhi', 'Kathmandu', '2014-03-24', 'Rs.10,000/-', '', '2014-03-19', '10:00:00', '2014-03-22', '18:00:00', 4, '', 'Abhishek Chandra', 'To attend/participate in the Workshop on Control Systems conducted by FMSF.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'Sandeep Sharma', '2014-03-14 12:27:07', '2014-03-28 17:19:37'),
(155, 4, 2, 2, 1, 'Delhi', 'Kathmandu', '2014-03-24', '10000', '', '2014-03-19', '10:00:00', '2014-03-22', '18:00:00', 4, '', 'Sandeep Sharma', 'For facilitating workshop on Internal Controls for BftW partners', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-03-14 12:38:38', '2014-03-18 16:34:30'),
(156, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-13', '', '2014-03-13', '', 1, '1', 'Puran Jha', 'Sick', 'Approved', 1, NULL, 'Approved', '.', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-14 14:44:59', '2014-04-17 10:53:05'),
(157, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-25', '', '2014-03-25', '', 1, '1', 'Sapna Singh', 'Personal reason', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-18 10:03:38', '2014-03-19 09:06:06'),
(158, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-21', '', '2014-03-21', '', 1, '1', 'Aarti Sharma', 'didn''t took the leave', 'Cancel', 1, NULL, '', '', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-18 10:33:15', '2014-08-29 12:09:54'),
(159, 14, 2, 2, 1, 'FMSF, NOIDA, India', 'Nepal', '2014-03-20', '4000', '', '2014-03-19', '10:00:00', '2014-03-22', '20:00:00', 4, '', 'Sritika Singh', 'Attending Internal Control Workshop for Pakistan partners', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-03-18 16:07:09', '2014-03-18 16:34:19'),
(160, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-24', '', '2014-03-24', '', 1, '1', 'Renu Arora', 'Function at Sister in law''s place', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-19 13:40:54', '2014-03-31 10:05:30'),
(161, 25, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-24', '', '2014-03-24', '', 1, '1', 'Divyanshu Yadav', 'Will be visiting PSK Lucknow for Passport', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-19 13:59:46', '2014-03-31 10:05:21'),
(162, 9, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-03', '', '2014-03-03', '', 1, '1', 'Lalatendu Samantasinghar', 'Fever', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-21 15:29:43', '2014-03-21 15:35:32'),
(163, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-24', '', '2014-03-24', '', 0.5, '1', 'Sujata Samal', 'personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-24 12:23:11', '2014-03-25 13:56:47'),
(164, 9, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-24', '', '2014-03-24', '', 1, '1', 'Lalatendu Samantasinghar', 'fever', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-25 09:32:44', '2014-03-25 09:46:22'),
(166, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-26', '', '2014-03-26', '', 0.5, '1', 'Puran Jha', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-25 17:34:02', '2014-03-27 15:35:45'),
(167, 9, 2, 6, 1, 'Noida', 'Kolkata-Rajnagar-Suri', '2014-04-08', '', '', '2014-04-02', '00:00:00', '2014-04-07', '00:00:00', 6, '', 'Lalatendu Samantasinghar', 'Financial Monitoring of NTEZ Partner - TSRD & DRCSC', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-03-26 10:46:27', '2014-03-26 10:50:56'),
(168, 26, 2, 6, 1, 'New Delhi', 'Kolkata', '2014-04-08', '20,000', '', '2014-04-02', '12:00:00', '2014-04-07', '00:00:00', 6, '', 'Itti Aggarwal', 'Kindly pay cash of Rs. 20,000 as advance for myself and Lalatendu sir. However, hotel bills i can pay with my credit card.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-03-26 12:15:02', '2014-03-31 10:05:58'),
(169, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-17', '', '2014-04-17', '', 0.5, '1', 'Akrita Bharos', 'Going home.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-26 15:30:11', '2014-04-15 09:30:40'),
(170, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-21', '', '2014-04-22', '', 2, '3', 'Akrita Bharos', 'Going home', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Loss Of Pay, Application has to be applied within 2 days of end date.', 'admin', '2014-03-26 16:04:32', '2014-04-15 09:31:05'),
(171, 12, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-28', '', '2014-03-28', '', 0.5, '1', 'Maneesh Jain', 'Need half day casual leave for medical leave', 'Approved', 1, NULL, 'Approved', '.', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-27 11:30:52', '2014-04-17 10:53:14'),
(172, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-14', '', '2014-03-14', '', 1, '1', 'Harpal Singh/Gopal', 'Personal Work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-27 14:07:49', '2014-03-27 15:35:39'),
(173, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-15', '', '2014-03-15', '', 0, '1', 'Anil Sharma', 'personal', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-27 14:21:53', '2014-03-27 15:35:32'),
(174, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-18', '', '2014-03-18', '', 1, '1', 'Anil Sharma', 'Going to home town for Holi', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-27 14:24:07', '2014-03-27 15:35:25'),
(175, 2, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-14', '', '2014-03-14', '', 1, '1', 'Sanjay Patra', 'Not well', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-03-27 15:16:04', '2014-03-27 15:35:15'),
(176, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-19', '', '2014-03-20', '', 2, '2', 'Aarti Sharma', 'Personal Reason', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-03-27 15:24:14', '2014-06-18 14:26:54'),
(177, 4, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-11', '', '2014-03-12', '', 2, '2', 'Sandeep Sharma', 'Out of town', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-03-28 17:20:52', '2014-08-20 11:51:27'),
(178, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-01', '', '2014-04-01', '', 0.5, '1', 'Anuradha Singh', 'Personal', 'Approved', 1, NULL, 'Approved', 'Good to have you back in the office ', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-04-01 12:37:36', '2014-04-01 16:22:48'),
(179, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-07', '', '2014-04-07', '', 1, '1', 'Harpal Singh/Gopal', 'Was Not feeling well', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-04-09 11:39:56', '2014-04-09 12:02:58'),
(180, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-21', '', '2014-04-21', '', 1, '1', 'Anil Sharma', 'Personal Work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-04-11 10:02:55', '2014-04-11 11:40:02'),
(181, 15, 2, 6, 1, 'Noida', 'Nagpur', '2014-05-07', '15000', '', '2014-05-04', '00:00:00', '2014-05-06', '00:00:00', 3, '', 'Rashmi Sharon', 'Pre Funding Assessment of YUVA, Nagpur on behalf of BftW', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-04-14 10:01:04', '2014-04-14 10:17:39'),
(182, 15, 2, 6, 1, 'Noida', 'Mumbai', '2014-04-23', '10000', '', '2014-04-21', '00:00:00', '2014-04-22', '00:00:00', 2, '', 'Rashmi Sharon', 'Prefunding Assessment of BUILD on behalf of BftW along with Sandeep Sharma', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-04-14 10:58:35', '2014-04-16 16:38:49'),
(183, 19, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-01', '', '2014-01-17', '', 12, '2', 'Ram Bahadur', 'Went to home town', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-04-15 10:42:33', '2014-04-15 10:51:20'),
(184, 20, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-23', '', '2014-04-25', '', 3, '2', 'Rajman Yadav', 'Personal Work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-04-15 10:53:05', '2014-04-16 13:44:02'),
(185, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-12', '', '2014-06-13', '', 2, '2', 'Renu Arora', 'Daughters Bday', 'Pending', 1, NULL, 'Pending', 'Casual leave can only be applied within 2 days of the end date. Else it would be considered as a earned leave. Kindly follow the policy. ', '', '', 0, '', 'admin', '2014-04-15 10:56:05', '2014-04-22 09:06:15'),
(186, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-01', '', '2014-04-01', '', 0.5, '1', 'Sapna Singh', 'personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-04-15 12:22:30', '2014-04-16 16:38:25'),
(187, 11, 2, 3, 1, 'Delhi', 'Chennai', '2014-05-05', '5000', '', '2014-05-01', '15:00:00', '2014-05-03', '20:00:00', 3, '', 'Abhishek Chandra', 'Visit to Chennai for Prefunding Assessment of Society for Rural Education and Development (SRED).', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-04-15 12:23:09', '2014-04-16 16:39:24'),
(188, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-02', '', '2014-04-02', '', 0.5, '1', 'Sapna Singh', 'personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-04-15 12:23:40', '2014-04-16 16:38:09'),
(189, 12, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-09', '', '2014-04-09', '', 0.5, '1', 'Maneesh Jain', 'Personal work', 'Approved', 1, NULL, 'Approved', 'Please take care of your pending work', '..', '', 0, '', 'admin', '2014-04-15 12:26:43', '2014-04-16 13:44:15'),
(190, 25, 2, 3, 2, 'A-5, Sector 26 Noida', 'Suvidha, Haldwani, Uttarakhand', '2014-04-04', 'INR 10,000', '', '2014-04-02', '05:00:00', '2014-04-04', '04:30:00', 3, '', 'Divyanshu Yadav', 'Pre-Funding Assessment of Suvidha for Bftw', 'Approved', 1, NULL, 'Approved', 'ok', '..', 'cd259-SUVIDHA_Pre-Funding.pdf', 0, '', 'admin', '2014-04-15 12:28:08', '2014-04-16 16:39:34'),
(191, 17, 2, 3, 1, 'Noida', 'Chennai', '2014-05-05', '5000', '', '2014-05-01', '00:00:00', '2014-05-03', '00:00:00', 3, '', 'Sujata Samal', 'Prefunding Assessment of SRED on behalf of Bftw', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-04-15 13:43:41', '2014-04-17 15:45:42'),
(192, 9, 2, 1, 1, 'Noida', 'Kolkata', '2014-04-02', '', '', '2014-04-02', '00:00:00', '2014-04-03', '00:00:00', 2, '', 'Lalatendu Samantasinghar', 'NETZ - DRCSC Kolkata -Financial Monitoring', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-04-16 13:17:57', '2014-04-17 17:46:35'),
(193, 1, 2, 1, 1, 'New Delhi', 'Bangalore', '2014-04-25', '6000', '', '2014-04-21', '16:00:00', '2014-04-24', '19:00:00', 4, '', 'Prabhat Kumar', 'Pre-funding Assessment of SBGS Trust Foundation, Bangalore on behalf of Axis Bank Foundation. Accompanied by Divyanshu.\nHave to reach Bangalore on 21st evening. Divyanshu will return on 23rd evening. I''ll stay for half a day session at CBM Bangalore on 24th. Please book my ticket for return journey only after i give confirmation of the session. Please book the ticket to Bangalore at the soonest.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-04-16 16:15:21', '2014-04-16 16:40:01'),
(194, 25, 2, 3, 1, 'A-5, Sector 26 Noida', 'SGBS Unnati Foundation, Bangalore', '2014-04-23', 'INR 5,000', '', '2014-04-21', '14:30:00', '2014-04-23', '22:00:00', 3, '', 'Divyanshu Yadav', 'Pre-Funding of SGBS Unnati Foundation, Bangalore for Axis bank Foundation, On behalf of CPA', 'Approved', 1, NULL, 'Approved', 'ok', '..', '70581-SUF-PFA-Report-final.docx', 0, '', 'admin', '2014-04-16 16:50:29', '2014-04-17 11:56:18'),
(195, 4, 2, 1, 1, 'Noida', 'Mumbai', '2014-04-24', '10000', '', '2014-04-21', '07:00:00', '2014-04-23', '22:00:00', 3, '', 'Sandeep Sharma', 'For Pre-funding assessment of BUILD on behalf of BftW.', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-04-17 11:31:32', '2014-04-17 15:45:31'),
(196, 2, 2, 6, 1, 'Delhi/NOIDA', 'Mumbai', '2014-04-24', '10000/-', '', '2014-04-22', '00:00:00', '2014-04-23', '00:00:00', 2, '', 'Sanjay Patra', 'For the FCFC meeting', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-04-17 13:51:47', '2014-04-17 17:46:46'),
(197, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-23', '', '2014-04-23', '', 1, '1', 'Sapna Singh', 'Personal reason', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-04-21 09:54:37', '2014-04-25 14:24:32'),
(198, 1, 2, 1, 1, 'New Delhi', 'Nagpur', '2014-04-29', '6000', '', '2014-04-29', '17:00:00', '2014-05-02', '23:00:00', 4, '', 'Prabhat Kumar', 'CPA Assignment\nFormulation of NCCI Project Financial Manual\nTraveling for on site review at NCCI office Nagpur along with Itti\nStay arrangement done by the client at guest house\nAir travel booking to be done as per mail already sent.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-04-21 10:41:33', '2014-04-25 14:29:32'),
(199, 26, 2, 1, 1, 'Delhi', 'Nagpur', '2014-05-03', '5,000', '', '2014-04-29', '00:00:00', '2014-05-02', '00:00:00', 4, '', 'Itti Aggarwal', 'Going for NCCI Project.', 'Approved', 1, NULL, 'Approved', 'Travel reason should be more comprehensive. ', '..', '', 0, '', 'admin', '2014-04-21 11:15:57', '2014-04-21 12:01:12'),
(200, 19, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-05', '', '2014-05-16', '', 12, '2', 'Ram Bahadur', 'Visit to Nepal', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-04-21 14:45:46', '2014-04-21 14:49:27'),
(201, 12, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-01', '', '2014-05-02', '', 2, '1', 'Maneesh Jain', 'Induction in Child fund India, Bangalore', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-04-22 15:20:37', '2014-05-14 14:02:07'),
(203, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-26', '', '2014-05-27', '', 2, '2', 'Sapna Singh', 'Personal work', 'Rejected', 1, NULL, 'Approved', 'ok', 'should apply for earned leave from 23rd may', '', 0, '', 'admin', '2014-04-25 13:36:55', '2014-04-25 14:26:26'),
(205, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-01', '', '2014-05-01', '', 0.5, '1', 'S.Bhagyashree', 'Personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-04-29 10:30:52', '2014-05-02 09:40:10'),
(206, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-05', '', '2014-05-05', '', 1, '1', 'Prabhat Kumar', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-04-29 16:49:01', '2014-05-02 09:40:22'),
(207, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-29', '', '2014-04-29', '', 1, '1', 'Rashmi Sharon', 'Severe headache', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-04-30 09:27:53', '2014-05-02 09:40:41'),
(208, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-29', '', '2014-04-29', '', 1, '1', 'Aarti Sharma', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-05-01 14:49:53', '2014-05-02 09:40:30'),
(209, 4, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-01', '', '2014-05-01', '', 1, '1', 'Sandeep Sharma', 'Personal Work', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-05-02 09:34:23', '2014-05-02 09:46:31'),
(210, 16, 2, 1, 1, 'New Delhi ', 'Nagpur', '2014-05-04', '6000', '', '2014-05-04', '00:00:00', '2014-05-06', '00:00:00', 3, '', 'Puran Jha', 'Pre-funding of Yuva (Rural) Associations in Nagpur', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-02 14:16:40', '2014-05-15 12:10:54'),
(211, 25, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-16', '', '2014-05-16', '', 1, '1', 'Divyanshu Yadav', 'Personal', 'Pending', 1, NULL, 'Rejected', 'Leave not availed ', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Sandeep Sharma', '2014-05-02 15:11:25', '2014-05-16 13:44:26'),
(212, 27, 2, 3, 5, 'Noida', 'Delhi', '2014-05-06', '', '', '2014-05-06', '09:31:00', '2014-05-06', '04:15:00', 1, '', 'S.Bhagyashree', 'Partner visit to PWESCR', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-06 16:18:28', '2014-05-16 13:48:00'),
(213, 8, 2, 6, 5, 'NOIDA', 'New Delhi', '2014-05-06', '', '', '2014-05-06', '09:45:00', '2014-05-06', '16:10:00', 1, '', 'Sapna Singh', 'BftW Partner Visit to PWESCR', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-07 13:38:30', '2014-05-16 13:48:11'),
(214, 2, 2, 2, 5, 'NOIDA', 'Janakpuri', '2014-04-30', 'Nil', '', '2014-04-28', '00:00:00', '2014-04-29', '00:00:00', 2, '', 'Sanjay Patra', 'For SOLIDARIDAD workshop for CPA', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-05-07 14:02:17', '2014-05-16 13:46:12'),
(215, 11, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-07', '', '2014-05-07', '', 1, '1', 'Abhishek Chandra', 'Due to illness', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-08 10:09:23', '2014-05-16 13:49:57'),
(216, 14, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-28', '', '2014-05-29', '', 2, '2', 'Sritika Singh', 'Personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-05-08 10:58:24', '2014-05-12 13:53:13'),
(217, 26, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-23', '', '2014-06-07', '', 16, '3', 'Itti Aggarwal', 'I have to appear for CA final exams.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-09 11:10:54', '2014-05-14 14:01:50'),
(218, 15, 2, 6, 1, 'Nagpur', 'Mangalore', '2014-05-09', '', '', '2014-05-07', '00:00:00', '2014-05-08', '00:00:00', 2, '', 'Rashmi Sharon', 'Follow up with PADI, Manglaore on the recommendations of the Pre Funding Assessment conducted in October 2014', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-09 11:54:47', '2014-05-16 13:47:43'),
(219, 2, 2, 3, 1, 'Delhi/NOIDA', 'Hyderabad', '2014-05-02', 'Nil', '', '2014-04-30', '00:00:00', '2014-05-01', '00:00:00', 2, '', 'Sanjay Patra', 'To attend Bhavishya Bharat meeting', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-05-12 13:28:39', '2014-05-16 13:46:39'),
(220, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-19', '', '2014-05-23', '', 5, '2', 'Puran Jha', 'Examination', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-05-12 17:32:53', '2014-05-16 10:40:40'),
(221, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-26', '', '2014-05-26', '', 0.5, '1', 'Puran Jha', 'Examination', 'Rejected', 1, NULL, 'Cancel', 'it would be one day earned leave as confirmed by Anu', 'It would be one day earned leave as confirmed by Anu. Asked puran to apply again', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-05-12 17:33:47', '2014-08-29 12:35:47'),
(222, 17, 2, 1, 1, 'Noida', 'Odisha', '2014-07-01', '15000', '', '2014-06-18', '00:00:00', '2014-06-27', '00:00:00', 10, '', 'Sujata Samal', 'For financial accompaniment of SCD, Titlagarh,2. SCH, Gajapati, 3. ECOS eye hospital, Berhampur in Odisha\n\nOne way ticket booked by myself, kindly book return ticket on 29.06.14', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-05-13 10:08:17', '2014-05-15 12:11:04'),
(223, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-09', '', '2014-06-17', '', 7, '2', 'Sujata Samal', 'Going to Hometown Odisha', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-05-13 10:51:55', '2014-05-15 12:10:35'),
(224, 26, 2, 1, 1, 'Delhi', 'Bhuvneshwar, Titlagarh and Gajapati', '2014-06-30', '15000', '', '2014-06-18', '00:00:00', '2014-06-27', '00:00:00', 10, '', 'Itti Aggarwal', 'Me and Sujata will be going for a financial accompaniment of three different organisaiton i.e. SCD, ECOS and SCH.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-15 10:35:25', '2014-05-15 12:11:19'),
(225, 13, 2, 1, 1, 'Noida', 'Chindwada, M.P', '2014-06-09', '10,000', '', '2014-06-04', '00:00:00', '2014-06-07', '00:00:00', 4, '', 'Deepanshu Srivastava', 'ELC accompaniment 2nd visit for follow up, on behalf of CBM', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-16 12:22:50', '2014-05-16 13:47:12'),
(226, 15, 2, 3, 4, 'noida', 'timber trail heights', '2014-05-23', '', '', '2014-05-19', '00:00:00', '2014-05-22', '00:00:00', 4, '', 'Rashmi Sharon', 'Proposal planning meeting', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-16 13:27:42', '2014-05-16 13:46:57'),
(227, 8, 2, 3, 5, 'NOIDA', 'Timber Trail', '2014-05-22', '', '', '2014-05-19', '08:00:00', '2014-05-22', '14:00:00', 4, '', 'Sapna Singh', 'FMSF Meeting for Proposal', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 0, '', 'admin', '2014-05-16 13:29:00', '2014-05-16 13:47:25'),
(228, 24, 2, 3, 4, 'Noida Sector 26', 'Timber trail resort, parwanoo', '2014-05-22', 'no', '', '2014-05-19', '00:00:00', '2014-05-22', '00:00:00', 4, '', 'Akrita Bharos', 'nil', 'Approved', 1, NULL, 'Approved', 'For planning meet', '..', '', 0, '', 'admin', '2014-05-16 13:35:40', '2014-05-16 13:46:24'),
(229, 27, 2, 3, 4, 'Noida', 'Timber Trail Heights', '2014-05-23', '', '', '2014-05-19', '08:00:00', '2014-05-22', '16:08:00', 4, '', 'S.Bhagyashree', 'FMSF Proposal Meeting', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-16 13:37:32', '2014-05-16 13:48:23'),
(230, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-07', '', '2014-05-07', '', 1, '1', 'Aarti Sharma', 'Not well', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 0, '', 'admin', '2014-05-16 13:40:56', '2014-05-16 13:49:44'),
(231, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-29', '', '2014-05-30', '', 2, '2', 'Aarti Sharma', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-05-16 13:44:22', '2014-05-16 13:49:32'),
(232, 3, 2, 3, 5, 'Noida', 'Parwanoo', '2014-05-23', '20,000', '', '2014-05-19', '00:00:00', '2014-05-22', '00:00:00', 4, '', 'Anuradha Singh', 'FMSF Meeting', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-05-16 13:44:45', '2014-05-16 13:50:25'),
(234, 14, 2, 3, 4, 'A-5, Sector 26, NOIDA', 'Timber Trail, Parwanoo, Himachal Pradesh', '2014-05-19', '', '', '2014-05-19', '00:00:00', '2014-05-22', '00:00:00', 4, '', 'Sritika Singh', 'FMSF Team meeting', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-05-16 13:45:46', '2014-05-16 13:50:41'),
(235, 11, 2, 3, 4, 'Noida', 'Timber Trail', '2014-05-19', 'Nil', '', '2014-05-19', '08:00:00', '2014-05-22', '16:00:00', 4, '', 'Abhishek Chandra', 'To Attend FMSF proposal meeting.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-16 13:46:34', '2014-05-16 13:48:33'),
(236, 2, 2, 3, 5, 'Delhi/NOIDA', 'Timber Trail', '2014-05-23', '6000', '', '2014-05-19', '00:00:00', '2014-05-22', '00:00:00', 4, '', 'Sanjay Patra', 'For TOT and Proposal development', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-05-16 13:48:39', '2014-05-28 14:34:52'),
(237, 1, 2, 3, 4, 'Greater Noida', 'Timber Trail hights, Parwanoo, HP', '2014-05-22', '0', '', '2014-05-19', '07:30:00', '2014-05-21', '23:30:00', 3, '', 'Prabhat Kumar', 'Meeting on Proposal to BftW', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-16 13:54:04', '2014-05-26 17:26:11'),
(238, 4, 2, 3, 1, 'Noida', 'Timber Trail', '2014-05-23', '', '', '2014-05-19', '08:00:00', '2014-05-22', '15:00:00', 4, '', 'Sandeep Sharma', 'FMSF Project Proposal Meeting', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-05-16 13:56:54', '2014-05-26 17:26:26'),
(239, 25, 2, 3, 4, 'Greater Noida', 'Timber Trail ', '2014-05-22', '', '', '2014-05-19', '07:30:00', '2014-05-22', '15:30:00', 4, '', 'Divyanshu Yadav', 'FMSF Proposal Meeting', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-16 13:56:55', '2014-05-26 17:26:39'),
(240, 20, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-30', '', '2014-06-13', '', 11, '2', 'Anuradha Singh', 'Visit hometown', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-05-26 10:25:05', '2014-05-29 17:04:46'),
(241, 11, 2, 6, 1, 'Noida', 'Dhaka', '2014-06-09', '$ 600', '', '2014-05-31', '10:00:00', '2014-06-06', '14:30:00', 7, '', 'Abhishek Chandra', 'To meet BftW partners.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-26 11:14:54', '2014-06-03 13:53:21'),
(242, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-23', '', '2014-05-23', '', 0.5, '1', 'Renu Arora', 'Son was not well', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-05-26 12:05:26', '2014-05-26 17:25:29'),
(243, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-12', '', '2014-06-13', '', 2, '2', 'Renu Arora', 'Daughter''s Bday', 'Approved', 1, NULL, 'Approved', 'ok', ':)', '', 0, '', 'admin', '2014-05-26 12:06:37', '2014-05-26 17:25:46'),
(244, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-29', '', '2014-05-30', '', 2, '2', 'Anil Sharma', 'Visit hometown', 'Pending', 1, NULL, '', '', 'leave granted for one day on 30/5/14', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-05-27 11:23:05', '2014-05-30 09:21:12'),
(245, 2, 2, 3, 5, 'NOIDA', 'Timber Trail', '2014-05-23', '6,000', '', '2014-05-19', '00:00:00', '2014-05-22', '00:00:00', 4, '', 'Sanjay Patra', 'For Perspective planning workshop', 'Pending', 1, NULL, 'Rejected', 'Rejected', '', '', 0, '', 'Anuradha Singh', '2014-05-28 14:20:23', '2014-05-28 14:30:26'),
(246, 2, 2, 3, 1, 'Delhi', 'Bangalore', '2014-05-26', 'None', '', '2014-05-23', '00:00:00', '2014-05-25', '00:00:00', 3, '', 'Sanjay Patra', 'To speak at All India Christian CA conference', 'Approved', 1, NULL, 'Approved', 'CPA', '..', '', 0, '', 'admin', '2014-05-28 14:22:37', '2014-05-28 14:35:00'),
(247, 2, 2, 6, 1, 'Delhi ', 'Dhaka', '2014-06-05', '$400', '', '2014-06-01', '00:00:00', '2014-06-04', '00:00:00', 4, '', 'Sanjay Patra', 'For monitoring visit of BNPS, CHCP and ASD', 'Approved', 1, NULL, 'Approved', 'Sandeep will be the point of contact during Sanjay''s absence', '..', '', 0, '', 'admin', '2014-05-28 14:24:35', '2014-05-28 14:35:09'),
(248, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-22', '', '2014-05-22', '', 0.5, '1', 'Prabhat Kumar', 'Came to office at 11.45 due to personal reason', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-05-28 14:49:20', '2014-06-03 13:50:23'),
(249, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-30', '', '2014-05-30', '', 1, '1', 'Sapna Singh', 'Personal Work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-05-29 09:57:35', '2014-06-03 13:50:40'),
(250, 1, 2, 1, 5, 'Greater Noida', 'Arpana Research and Charitable Society, Maduban, Haryana', '2014-06-11', '5000', '', '2014-06-09', '06:00:00', '2014-06-10', '22:00:00', 2, '', 'Prabhat Kumar', 'CPA assignment, under contract with CBM\nSecond and Final Visit of Accompaniment process of Arpana\nwould use own car\nLalatendu would accompany', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-29 14:48:13', '2014-06-03 13:53:36'),
(251, 1, 2, 1, 5, 'Greater Noida', 'Mathura, UP', '2014-06-18', '3500', '', '2014-06-16', '07:00:00', '2014-06-17', '21:00:00', 2, '', 'Prabhat Kumar', 'CPA assignment; under contract with CBM\nFirst Visit to NIRPHAD, under Accompaniment Process\nRajesh (joining on 1st june would accompany)\nStay arrangement is done by NIRPHAD', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-05-29 14:55:50', '2014-06-03 13:53:45'),
(252, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-26', '', '2014-05-26', '', 1, '1', 'Akrita Bharos', 'Had to pick up mother from station.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-05-29 16:08:29', '2014-06-03 13:50:54'),
(253, 9, 2, 1, 4, 'Noida, Uttarpradesh-201301', 'Madhuban,Karnal,Haryana', '2014-06-09', 'Nil', '', '2014-06-09', '06:00:00', '2014-06-10', '21:00:00', 2, '', 'Lalatendu Samantasinghar', 'ARPANA Acompaniment visit', 'Approved', 1, NULL, 'Approved', 'please mention the name of the person who will look after your work', '..', '', 0, '', 'admin', '2014-05-29 16:57:57', '2014-05-29 17:05:04'),
(254, 16, 2, 1, 1, 'New Delhi', 'Meghalaya ( Ri-bhoi, Tura and Shillong) ', '2014-05-20', '25,000', '', '2014-06-09', '10:00:00', '2014-05-19', '20:00:00', -20, '', 'Puran Jha', 'Follow up visit of Accompaniment Process - CBM Bangalore', 'Approved', 1, NULL, 'Approved', 'ok', '..', 'cd730-Tour-Report-CPA.doc', 0, '', 'admin', '2014-05-29 17:55:45', '2014-05-30 09:27:01'),
(255, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-29', '', '2014-05-29', '', 1, '1', 'S.Bhagyashree', 'Not Well', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-05-30 11:18:07', '2014-06-03 13:51:04'),
(256, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-30', '', '2014-05-30', '', 1, '1', 'Sujata Samal', 'Due to illness', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-02 09:55:54', '2014-06-09 15:08:44'),
(257, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-28', '', '2014-03-28', '', 1, '3', 'Akrita Bharos', 'not well', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Loss Of Pay, Application has to be applied within 2 days of end date.', 'admin', '2014-06-02 14:00:43', '2014-06-03 13:51:16'),
(258, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-03', '', '2014-06-03', '', 0.5, '1', 'S.Bhagyashree', 'Visit Doctor', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-03 09:22:49', '2014-06-03 13:51:24'),
(259, 25, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-05', '', '2014-06-06', '', 2, '2', 'Divyanshu Yadav', 'Will be visiting a doctor in Lucknow.', 'Approved', 1, NULL, 'Approved', 'ok', 'Loss of pay', '', 0, '', 'admin', '2014-06-03 12:23:41', '2014-06-03 13:52:57'),
(260, 4, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-02', '', '2014-06-02', '', 1, '1', 'Sandeep Sharma', 'Personal work', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-03 12:47:39', '2014-06-09 15:08:33'),
(261, 1, 2, 1, 1, 'New Delhi', 'Hyderabad - Bidar - Hyderabad - Hubli - Sirsi - Hubli - New delhi', '2014-06-30', '10000', '', '2014-06-22', '16:00:00', '2014-06-28', '21:00:00', 7, '', 'Prabhat Kumar', 'CPA Assignment. Contract with CBM for Accompaniment of two of its partner in Karnataka. \nInformation about ticket bookings would be given seperately\nRajesh is accompanying', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 0, '', 'admin', '2014-06-04 12:45:46', '2014-06-05 10:40:02'),
(262, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-05', '', '2014-06-05', '', 1, '1', 'Renu Arora', 'Personal Work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-04 13:28:56', '2014-06-05 10:39:34'),
(263, 29, 2, 1, 1, 'New Delhi', 'Hyderabad, Bidar,Hubli, Sirsi,Delhi', '2014-06-30', '10000', '', '2014-06-22', '16:00:00', '2014-06-28', '21:00:00', 7, '', 'Rajesh Balani', 'CPA Assignment.\nAccompaniment of 2 partners of CBM in Karnataka\nAccompanied by Prabhat Kumar\nWe will give you seperate ticket bookings', 'Approved', 1, NULL, 'Approved', 'ok', '..', '32d6f-Karnataka-travel-report.doc', 0, '', 'admin', '2014-06-04 15:19:47', '2014-06-04 16:08:04'),
(265, 29, 2, 1, 5, 'New Delhi', 'Karnal', '2014-06-11', '0', '', '2014-06-09', '07:00:00', '2014-06-10', '20:00:00', 2, '', 'Rajesh Balani', 'Accompaniment. Final Visit.\nAccompanied by Prabhat Kumar', 'Approved', 1, NULL, 'Approved', 'ok', '..', 'bab27-Karnal-travel-report.doc', 0, '', 'admin', '2014-06-06 17:39:31', '2014-06-09 15:09:07'),
(266, 2, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-17', '', '2014-06-20', '', 4, '2', 'Sanjay Patra', 'Going to home town', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-06-09 09:14:11', '2014-06-09 15:08:14'),
(267, 2, 2, 2, 1, 'NOIDA', 'Bhopal', '2014-06-12', '5000', '', '2014-06-10', '00:00:00', '2014-06-11', '00:00:00', 2, '', 'Sanjay Patra', 'CASA workshop', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-06-09 09:15:33', '2014-06-09 15:09:34'),
(268, 2, 2, 3, 1, 'Bhubaneswar', 'Colombo', '2014-06-30', '$600', '', '2014-06-23', '00:00:00', '2014-06-27', '00:00:00', 5, '', 'Sanjay Patra', 'Auditors workshop', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-06-09 09:17:36', '2014-06-09 15:09:25'),
(269, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-13', '', '2014-06-13', '', 0.5, '1', 'Anuradha Singh', 'personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-09 15:12:58', '2014-06-10 13:35:48'),
(270, 13, 2, 1, 1, 'Noida', 'Chindwada, M.P', '2014-06-23', '15,000', '', '2014-06-18', '08:00:00', '2014-06-21', '17:00:00', 4, '', 'Deepanshu Srivastava', 'CBM Accompaniment Follow up of ELC, Chindwara, M.P', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-06-09 17:43:45', '2014-06-10 13:35:32'),
(271, 13, 2, 6, 1, 'Noida', 'Chaibasa & Hazaribagh, Jharkhand', '2014-07-07', '12000', '', '2014-06-30', '15:00:00', '2014-07-05', '20:00:00', 6, '', 'Deepanshu Srivastava', 'Old BftW Partner Visit, NBJK & BIRSA, Jharkhand', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-06-10 13:56:32', '2014-06-11 10:50:53'),
(272, 27, 2, 6, 1, 'Noida', 'Chaibasa and Hazaribagh,Jharkhand', '2014-07-07', '12000', '', '2014-06-30', '15:30:00', '2014-07-05', '20:12:00', 6, '', 'S.Bhagyashree', 'Old BftW Partner visit to BIRSA and NBJK', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-06-10 13:59:09', '2014-06-11 10:51:04'),
(273, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-11', '', '2014-06-11', '', 0.5, '2', 'Renu Arora', 'Personal Work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-06-11 13:31:12', '2014-06-20 13:47:49'),
(274, 29, 2, 1, 5, 'New Delhi', 'Mathura', '2014-06-18', '0', '', '2014-06-16', '07:00:00', '2014-06-17', '19:00:00', 2, '', 'Rajesh Balani', 'Accompaniment. Initial Visit\nCBM. Accompanied by Prabhat Kumar.', 'Approved', 1, NULL, 'Approved', 'Rajesh may need an advance of Rs.3000 which he may require in case I have to came back on 16th itself.', '..', 'b04bd-Mathura-Travel-report.doc', 0, '', 'admin', '2014-06-13 09:37:19', '2014-06-13 11:17:54'),
(275, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-25', '', '2014-06-25', '', 1, '1', 'Aarti Sharma', 'Personal reason', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-16 15:47:09', '2014-06-20 12:42:02'),
(276, 25, 2, 1, 4, 'A-5, Sector 26 Noida', 'Vrindavan', '2014-06-18', 'NIL', '', '2014-06-16', '06:30:00', '2014-06-17', '18:30:00', 2, '', 'Divyanshu', 'Accompaniment Process of NIRPHAD (CBM)', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-06-19 10:09:21', '2014-06-20 13:48:35');
INSERT INTO `leaves` (`id`, `staff_id`, `absence_type`, `travelpurpose_id`, `travelmode_id`, `travel_from_place`, `travel_to_place`, `reporting_date`, `travel_advance_required`, `leave_year`, `from_date`, `from_time`, `to_date`, `to_time`, `total_leaves`, `leavetype_id`, `absence_request_by`, `absence_desc`, `absence_status`, `supervisor_approval_required`, `supervisor_company_id`, `supervisor_absence_status`, `supervisor_remarks`, `hr_remarks`, `travel_report_upload`, `leave_policy_status`, `leave_policy_message`, `updated_by`, `created_date`, `updated_date`) VALUES
(277, 1, 2, 2, 1, 'New Delhi', 'Kathmandu, Nepal', '2014-07-23', 'would be informed later', '', '2014-07-20', '15:00:00', '2014-07-22', '23:00:00', 3, '', 'Prabhat Kumar', 'CPA assignment, contract with British Red Cross. Workshop on Internal control and Risk Management. Traveling with Sanjay Sir.\nAir tickets to be taken and stay arrangement to be done. We need to reach on July 20th evening and would fly back on July 22nd evening (by 8 PM around) Please confirm plan of Sir before booking tickets', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 0, '', 'admin', '2014-06-19 16:34:50', '2014-06-20 13:48:43'),
(278, 1, 2, 2, 1, 'New Delhi', 'Bangkok, Thailand', '2014-08-15', 'would be informed later', '', '2014-08-10', '13:00:00', '2014-08-14', '23:00:00', 5, '', 'Prabhat Kumar', 'As participant to Training of Trainers to be conducted by MANGO, at Bangkok. This is 4 day training.\nAir ticket and stay has to be booked for which details would be given soon', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-06-19 16:39:09', '2014-06-20 13:48:52'),
(279, 4, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-18', '', '2014-06-18', '', 1, '1', 'Sandeep Sharma', 'personal work', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-19 16:59:11', '2014-07-01 17:52:01'),
(280, 11, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-17', '', '2014-06-17', '', 1, '1', 'Abhishek Chandra', 'Had a minor accident. Doctor advised to take rest', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-20 12:10:35', '2014-06-20 12:41:45'),
(281, 11, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-03', '', '2014-07-04', '', 2, '2', 'Abhishek Chandra', 'Urgent work at Home.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-06-20 12:12:39', '2014-06-20 13:47:29'),
(282, 4, 2, 3, 1, 'NOIDA', 'Colombo, Srilanks', '2014-06-30', '727', '', '2014-06-22', '16:00:00', '2014-06-27', '23:00:00', 6, '', 'Sandeep Sharma', 'To attend Regional Auditors Meet of BftW partners', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-06-20 12:19:57', '2014-07-02 14:03:45'),
(283, 4, 2, 1, 1, 'NOIDA', 'Kathmandu, Nepal', '2014-07-20', '30000', '', '2014-07-14', '11:00:00', '2014-07-18', '19:00:00', 5, '', 'Sandeep Sharma', 'For accompaniment support to CDS on behalf of Kindermissionwerk, Germany. (CPA Assignment)', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-06-20 12:27:41', '2014-07-02 14:03:56'),
(284, 4, 2, 6, 1, 'NOIDA', 'Kathmandu, Nepal', '2014-08-04', '30000', '', '2014-07-27', '14:00:00', '2014-08-01', '01:00:00', 6, '', 'Sandeep Sharma', 'For project monitoring visit along with Divyanshu', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-06-20 12:31:56', '2014-07-02 14:04:05'),
(285, 4, 2, 2, 1, 'NOIDA', 'Bangkok', '2014-08-15', '700 USD', '', '2014-08-10', '19:00:00', '2014-08-14', '22:00:00', 5, '', 'Sandeep Sharma', 'For attending a workshop titled Training of Trainers organised by MANGO Bangkok', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-06-20 12:35:46', '2014-09-15 16:06:22'),
(286, 27, 2, 2, 1, 'Noida', 'Imphal,Manipur', '2014-07-21', '10000', '', '2014-07-13', '15:34:00', '2014-07-19', '19:42:00', 7, '', 'S.Bhagyashree', 'Workshop on Internal Control for North East Partners and Partner visit to CSD,RNBA,UNMM,VVD,PASDO & TTA', 'Approved', 1, NULL, '', '', '..', '', 0, '', 'admin', '2014-06-20 13:57:13', '2014-07-02 14:27:28'),
(287, 11, 2, 3, 1, 'Delhi ', 'Imphal', '2014-07-21', 'Rs.10,000/-', '', '2014-07-13', '13:00:00', '2014-07-19', '18:00:00', 7, '', 'Abhishek Chandra', 'To attend workshop on Internal Controls and monitoring visit of Northeast BftW partners in Manipur. (Imphal and Ukhrul)', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-02 15:30:47', '2014-07-04 10:26:23'),
(288, 13, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-28', '', '2014-07-28', '', 1, '1', 'Deepanshu Srivastava', 'Going home', 'Cancel', 1, NULL, 'Rejected', 'duplicate', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-30 10:57:10', '2014-08-29 15:26:53'),
(289, 13, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-28', '', '2014-07-28', '', 1, '1', 'Deepanshu Srivastava', 'Going home', 'Cancel', 1, NULL, 'Rejected', 'duplicate', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-30 10:58:11', '2014-08-29 15:25:22'),
(290, 13, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-28', '', '2014-07-28', '', 1, '1', 'Deepanshu Srivastava', 'Going home', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-06-30 10:58:32', '2014-07-25 17:23:59'),
(291, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-03', '', '2014-07-05', '', 2, '2', 'Anil Sharma', 'for admission of my kids', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-06-30 18:28:19', '2014-06-30 18:59:57'),
(292, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-02', '', '2014-07-02', '', 0.5, '2', 'Anil Sharma', 'for admission of my kids', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-06-30 18:28:52', '2014-06-30 19:00:06'),
(293, 16, 2, 1, 1, 'Delhi', 'Guwahati, Shillon & Tura', '2014-06-09', '25,000', '', '2014-06-09', '00:00:00', '2014-06-19', '00:00:00', 11, '', 'Puran Jha', 'Revised travel plan for CBM accompaniment process for north east partner (Final Visit)', 'Approved', 1, NULL, 'Approved', 'The earlier travel plan sent had mistake and so stand cancelled', '..', '', 0, '', 'admin', '2014-07-01 10:43:36', '2014-07-01 10:48:49'),
(294, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-03', '', '2014-07-03', '', 1, '1', 'Anuradha Singh', 'personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-07-01 10:50:13', '2014-07-01 17:52:12'),
(295, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-07', '', '2014-07-08', '', 2, '2', 'Anuradha Singh', 'Shifting of  home', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-07-01 10:50:52', '2014-07-01 17:52:24'),
(296, 20, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-14', '', '2014-06-21', '', 5, '2', 'Rajman Yadav', 'Extended visit to home town due to unavoidable reasons', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-07-01 13:07:58', '2014-07-01 14:03:47'),
(297, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-24', '', '2014-06-24', '', 1, '1', 'Harpal Singh/Gopal', 'Personal reason', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-07-01 13:10:09', '2014-07-01 14:03:59'),
(298, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-01', '', '2014-07-01', '', 0.5, '1', 'Anuradha Singh', 'Personal Work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-07-01 13:10:47', '2014-07-01 14:04:07'),
(299, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-03', '', '2014-07-03', '', 1, '1', 'Prabhat Kumar', 'personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-07-02 11:08:07', '2014-07-09 12:32:06'),
(300, 15, 2, 1, 1, 'Noida', 'Shillong', '2014-07-17', 'Rs 25,000', '', '2014-07-06', '00:00:00', '2014-07-16', '00:00:00', 11, '', 'Rashmi Sharon', 'Training Programme in Shillong on behalf of GIZ', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-02 12:19:44', '2014-07-02 16:44:56'),
(301, 11, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-01', '', '2014-07-01', '', 1, '1', 'Abhishek Chandra', 'Urgent work at home.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-07-02 18:11:40', '2014-07-10 14:52:54'),
(302, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-11', '', '2014-07-14', '', 2, '2', 'Renu Arora', 'testing', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-07-09 16:47:34', '2014-07-30 15:30:30'),
(303, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-09', '', '2014-07-09', '', 0.5, '1', 'Prabhat Kumar', 'personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-10 09:40:11', '2014-07-10 14:54:21'),
(304, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-30', '', '2014-07-04', '', 5, '2', 'Sujata Samal', 'Due to severe allergy & blood infection.\nKindly cancel my leave on 30.06.14 as Casual leave', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-07-10 11:30:08', '2014-07-10 14:54:33'),
(305, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-09', '', '2014-07-09', '', 1, '1', 'Sujata Samal', 'Due to illness', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-07-10 11:30:57', '2014-07-10 14:54:44'),
(306, 2, 2, 2, 1, 'Delhi/NOIDA', 'Manipur Via Bhubaneswar', '2014-07-17', '10,000/-', '', '2014-07-10', '00:00:00', '2014-07-16', '00:00:00', 7, '', 'Sanjay Patra', 'For Controls workshop', 'Approved', 1, NULL, '', '', '..', '', 0, '', 'admin', '2014-07-10 11:55:12', '2014-07-10 13:05:42'),
(307, 16, 2, 1, 1, 'New Delhi', 'Kathmandu, Nepal', '2014-07-14', '15,000', '', '2014-07-14', '00:00:00', '2014-07-18', '00:00:00', 5, '', 'Puran Jha', 'Hand holding Process for CDS on behalf of KWM.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-10 14:17:56', '2014-07-15 14:43:52'),
(308, 13, 2, 1, 1, 'Noida', 'Hyderabad', '2014-07-23', '8000', '', '2014-07-20', '13:00:00', '2014-07-22', '23:59:00', 3, '', 'Deepanshu Srivastava', 'Pre funding Assessment on behalf of Axis bank foundation', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-14 16:11:10', '2014-07-22 16:23:36'),
(309, 29, 2, 1, 1, 'Delhi', 'Hyderabad', '2014-07-23', '8000', '', '2014-07-20', '16:00:00', '2014-07-22', '23:00:00', 3, '', 'Rajesh Balani', 'Pre-funding assessement of Youth4jobs (Axis Bank)\nAccompanied by Deepanshu Srivastava', 'Approved', 1, NULL, 'Approved', 'ok', '..', 'ba651-Hyderabad-Report.doc', 0, '', 'admin', '2014-07-14 16:48:36', '2014-07-18 12:04:14'),
(310, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-11', '', '2014-07-11', '', 1, '1', 'Renu Arora', 'Had an Eye Injury on Thursday in Office', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-15 14:45:12', '2014-07-25 17:22:55'),
(311, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-10', '', '2014-07-11', '', 2, '1', 'Aarti Sharma', 'Fever', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-16 14:52:28', '2014-07-25 17:20:41'),
(312, 13, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-15', '', '2014-07-15', '', 1, '1', 'Deepanshu Srivastava', 'Not Well', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-07-17 11:10:25', '2014-07-25 17:20:24'),
(313, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-10', '', '2014-07-11', '', 2, '2', 'Aarti Sharma', 'fever', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-07-18 13:36:11', '2014-07-25 17:20:53'),
(314, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-17', '', '2014-07-17', '', 1, '1', 'Harpal Singh/Gopal', 'Wife was not well', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-07-18 15:19:19', '2014-07-18 16:09:25'),
(315, 2, 2, 2, 1, 'NOIDA/Delhi', 'Kathmandu, Nepal', '2014-07-23', '10,000/-', '', '2014-07-20', '00:00:00', '2014-07-22', '00:00:00', 3, '', 'Sanjay Patra', 'For workshop on Risk management for British Redcross', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-07-18 17:32:57', '2014-07-18 17:46:59'),
(316, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-06', '', '2014-10-10', '', 5, '3', 'S.Bhagyashree', 'Going home', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-22 14:05:39', '2014-07-25 17:22:05'),
(317, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-01', '', '2014-10-01', '', 0.5, '1', 'S.Bhagyashree', 'Personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-07-22 14:05:40', '2014-07-25 17:21:55'),
(318, 25, 2, 3, 1, 'A-5, sector 26 Noida', 'Kathmandu', '2014-08-02', 'Rs. 10,000', '', '2014-07-27', '13:00:00', '2014-08-02', '22:00:00', 7, '', 'Divyanshu', 'Nepal Partner Visit', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-22 15:59:06', '2014-07-22 16:23:47'),
(319, 9, 2, 6, 1, 'Noida ', 'Kolkata', '2014-08-13', 'NIL', '', '2014-08-02', '00:00:00', '2014-08-12', '00:00:00', 11, '', 'Lalatendu Samantasinghar', 'Financial Monitoring of NETZ - TSRD Tapan,Rajnagar,Kolkata & DRCSC kokata, Siuri,& Murshidabad', 'Approved', 1, NULL, 'Approved', '..', 'Please inform Sujata accordingly ', '', 0, '', 'admin', '2014-07-30 15:14:27', '2014-07-30 15:32:27'),
(320, 9, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-29', '', '2014-08-29', '', 1, '2', 'Lalatendu Samantasinghar', 'medical', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-07-30 15:22:01', '2014-07-30 15:30:16'),
(321, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-30', '', '2014-07-30', '', 1, '1', 'Rashmi Sharon', 'Out of station', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-07-31 14:15:08', '2014-08-08 13:59:02'),
(322, 15, 2, 6, 1, 'Noida', 'Kolkata', '2014-08-11', 'Rs 20,000', '', '2014-08-03', '00:00:00', '2014-07-09', '00:00:00', -24, '', 'Rashmi Sharon', 'Programme Monitoring of NETZ project to DRCSC and TSRD, West Bengal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-07-31 14:17:22', '2014-08-08 13:59:26'),
(323, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-05', '', '2014-08-05', '', 1, '1', 'Aarti Sharma', 'having cold & fever', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-04 13:45:12', '2014-08-28 15:42:12'),
(324, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-07-07', '', '2014-07-09', '', 3, '2', 'Anil Sharma', 'Visit Home town', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-05 11:18:46', '2014-08-05 11:54:35'),
(325, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-04', '', '2014-08-04', '', 0.5, '1', 'Sapna Singh', 'sick leave', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-06 10:25:03', '2014-08-28 15:42:31'),
(326, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-05', '', '2014-08-05', '', 1, '1', 'Sapna Singh', 'sick leave', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-06 10:26:04', '2014-08-28 15:42:48'),
(327, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-06', '', '2014-10-07', '', 2, '1', 'S.Bhagyashree', 'Going Home', 'Pending', 1, NULL, 'Rejected', 'Not applied as per policy', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Sandeep Sharma', '2014-08-06 12:48:02', '2014-09-18 18:01:41'),
(328, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-19', '', '2014-08-20', '', 2, '2', 'Anil Sharma', 'Puja on completion of 1 year of my father''s Death Anniversary', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-08 12:33:38', '2014-08-11 14:25:27'),
(329, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-06', '', '2014-08-07', '', 2, '2', 'Harpal Singh/Gopal', 'Wife was unwell', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-08 12:36:09', '2014-08-11 14:25:42'),
(330, 13, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-14', '', '2014-08-14', '', 0.5, '1', 'Deepanshu Srivastava', 'I have a flight to catch.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-08 12:37:25', '2014-08-11 14:25:54'),
(331, 4, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-29', '', '2014-09-02', '', 3, '2', 'Sandeep Sharma', 'Personal Work', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-08-08 13:42:24', '2014-09-01 11:30:07'),
(332, 1, 2, 3, 1, 'New Delhi', 'Berlin, Germany', '2014-08-25', '', '', '2014-08-17', '02:00:00', '2014-08-24', '23:59:00', 8, '', 'Prabhat Kumar', 'Meeting related to CSS with Bread for the World', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-08-08 14:27:04', '2014-09-10 11:27:28'),
(333, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-18', '', '2014-08-22', '', 5, '2', 'Puran Jha', 'Travelling to home town', 'Rejected', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-11 11:26:02', '2014-08-21 06:17:32'),
(334, 19, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-19', '', '2014-08-19', '', 1, '1', 'Ram Bahadur', 'Personal Work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-11 15:26:19', '2014-08-21 06:17:21'),
(335, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-13', '', '2014-08-13', '', 1, '1', 'Rashmi Sharon', 'Kindly grant me 1 days leave as my parents are in town', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-11 15:38:13', '2014-08-28 15:42:58'),
(336, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-11', '', '2014-08-11', '', 1, '1', 'Aarti Sharma', 'Not well', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-08-12 14:02:06', '2014-08-28 15:43:17'),
(337, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-22', '', '2014-12-21', '', 67, '11', 'Aarti Sharma', 'Tentative date for going on maternity leave, incase of any change, will inform accordingly.', 'Pending', 1, NULL, 'Rejected', 'Date change by admin. To be applied by Aarti again.', '..', '', 1, 'Application has not applied as per the policy<br>Maternity Leave type applied 30 working days in advance.', 'admin', '2014-08-12 14:20:31', '2014-10-27 11:53:49'),
(338, 11, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-19', '', '2014-08-19', '', 1, '1', 'Abhishek Chandra', 'Going Raebareli for an urgent work.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-12 16:09:39', '2014-08-28 15:44:11'),
(339, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-20', '', '2014-10-31', '', 10, '2', 'Rashmi Sharon', 'My engagement ceremony', 'Approved', 1, NULL, 'Approved', 'All the best!', '..', '', 0, '', 'admin', '2014-08-20 03:55:10', '2014-08-21 05:11:35'),
(340, 20, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-02', '', '2014-01-02', '', 0.5, '1', 'Rajman Yadav', 'Personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-20 11:27:01', '2014-08-21 06:17:07'),
(341, 20, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-29', '', '2014-05-29', '', 0.5, '1', 'Rajman Yadav', 'Personal Work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-20 11:38:49', '2014-08-21 06:17:01'),
(342, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-09', '', '2014-01-10', '', 2, '2', 'Anil Sharma', 'Visit hometown', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-20 11:43:20', '2014-08-21 06:16:55'),
(343, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-30', '', '2014-05-30', '', 1, '1', 'Anil Sharma', 'Personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-20 11:44:20', '2014-08-21 06:16:49'),
(344, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-16', '', '2014-06-16', '', 1, '1', 'Anil Sharma', 'Personal Work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-20 11:45:00', '2014-08-21 06:16:43'),
(345, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-03-01', '', '2014-03-01', '', 0, '1', 'Dharmendra Singh Rawat', 'Perosnal Work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-20 11:47:21', '2014-08-21 06:16:35'),
(346, 17, 2, 1, 1, 'Noida', 'Bhubaneswar', '2014-10-16', '25000', '', '2014-10-05', '00:00:00', '2014-10-15', '00:00:00', 11, '', 'Sujata Samal', 'Follow up visit of SCD,Titilagarh, 2. ECOS, Berhampur, 3.SCH, Serango along with Itti.', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-08-20 11:59:41', '2014-09-01 11:31:35'),
(347, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-14', '', '2014-04-14', '', 0.5, '1', 'Harpal Singh/Gopal', 'Met with an accident', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-21 05:03:05', '2014-08-21 06:16:28'),
(348, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-15', '', '2014-04-16', '', 2, '2', 'Harpal Singh/Gopal', 'Met with an accident. Not well', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-21 05:03:58', '2014-08-21 06:16:17'),
(349, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-17', '', '2014-04-17', '', 0.5, '1', 'Harpal Singh/Gopal', 'Not Well', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-21 05:04:38', '2014-08-21 06:16:08'),
(350, 28, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-04-26', '', '2014-04-29', '', 2, '2', 'Harpal Singh/Gopal', 'Father in law expired', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-21 05:05:49', '2014-08-21 06:16:01'),
(351, 14, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-30', '', '2014-05-30', '', 1, '2', 'Sritika Singh', 'Personal leave', 'Approved', 1, NULL, '', '', 'earned as clubbed with the earlier approved leave', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-21 07:22:55', '2014-08-29 12:30:37'),
(352, 29, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-22', '', '2014-08-22', '', 1, '1', 'Rajesh Balani', 'Have a Function to attend', 'Approved', 1, NULL, 'Approved', '.', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-21 16:46:00', '2014-08-28 09:27:44'),
(353, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-25', '', '2014-10-01', '', 5, '2', 'Puran Jha', 'Visit Hometown', 'Approved', 1, NULL, 'Approved', '.', 'Please mention who will be incharge of your work in your absence', '', 0, '', 'admin', '2014-08-22 11:37:41', '2014-08-28 15:44:37'),
(354, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-29', '', '2014-08-29', '', 0.5, '1', 'Aarti Sharma', 'Day care of my daughter is closed due to Ganesh Chaturthi', 'Approved', 1, NULL, 'Approved', 'ok', 'Please note that till Sept you have only 0.5 days as casual leave in your balance', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-28 13:48:27', '2014-08-28 15:45:44'),
(355, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-03', '', '2014-09-03', '', 1, '1', 'Aarti Sharma', 'Personal Reason', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-28 13:49:37', '2014-09-10 11:28:40'),
(356, 4, 2, 3, 1, 'Noida', 'Germany', '2014-08-28', 'Euro 500', '', '2014-08-16', '21:30:00', '2014-08-27', '10:30:00', 12, '', 'Sandeep Sharma', 'Travel for BftW for meeting and discussion on FMSF cooperation and project related discussions.', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-08-28 14:21:45', '2014-09-01 11:31:27'),
(357, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-18', '', '2014-06-18', '', 1, '1', 'Akrita Bharos', 'Not well', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-29 11:57:09', '2014-08-29 13:50:34'),
(358, 14, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-30', '', '2014-05-30', '', 1, '2', 'Sritika Singh', 'Personal  leave', 'Cancel', 1, NULL, '', '', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-29 12:03:42', '2014-08-29 12:26:56'),
(359, 25, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-05-30', '', '2014-05-30', '', 1, '1', 'Divyanshu', 'Personal', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-29 12:59:58', '2014-08-29 13:50:24'),
(360, 25, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-05', '', '2014-09-05', '', 1, '1', 'Divyanshu', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-29 13:03:32', '2014-09-05 13:29:02'),
(361, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-12', '', '2014-08-12', '', 1, '1', 'Akrita Bharos', 'unwell', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-08-29 15:21:27', '2014-09-05 13:29:11'),
(362, 2, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-28', '', '2014-01-28', '', 0.5, '1', 'Sanjay Patra', 'personal work', 'Approved', 1, NULL, 'Approved', '.', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-29 15:29:51', '2014-09-01 11:30:15'),
(363, 2, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-29', '', '2014-01-29', '', 1, '1', 'Sanjay Patra', 'Personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-29 15:30:31', '2014-09-01 11:30:24'),
(364, 2, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-16', '', '2014-06-16', '', 0.5, '1', 'Sanjay Patra', 'Personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-08-29 15:31:25', '2014-09-01 11:30:31'),
(365, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-01-02', '', '2014-01-03', '', 2, '2', 'Rashmi Sharon', 'I was not in cuttack for christamas holidays', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-08-29 15:44:43', '2014-09-05 13:29:23'),
(366, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-09', '', '2014-09-09', '', 1, '1', 'Anuradha Singh', 'Personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-09-01 10:53:16', '2014-09-01 11:30:39'),
(367, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-11', '', '2014-09-11', '', 1, '1', 'Anuradha Singh', 'Personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-09-01 10:53:46', '2014-09-01 11:30:47'),
(368, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-06-18', '', '2014-06-18', '', 0.5, '1', 'Anuradha Singh', '..', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-09-01 11:07:19', '2014-09-01 11:30:55'),
(369, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-01', '', '2014-09-01', '', 0.5, '2', 'Aarti Sharma', 'Not feeling well, as advised by doctor to take rest', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-09-01 11:33:43', '2014-09-10 11:29:08'),
(370, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-02', '', '2014-09-03', '', 2, '2', 'Aarti Sharma', 'Not feeling well, as advised by doctor to take rest', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-09-01 11:35:01', '2014-09-10 11:29:22'),
(371, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-08-12', '', '2014-08-12', '', 0.5, '1', 'Rashmi Sharon', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-02 15:03:47', '2014-09-05 13:29:44'),
(372, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-01', '', '2014-09-02', '', 2, '2', 'Dharmendra Singh Rawat', 'Shifting to a new house', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-09-03 10:03:02', '2014-11-07 13:45:54'),
(373, 21, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-01', '', '2014-09-01', '', 1, '1', 'Anil Sharma', 'personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-09-03 10:04:28', '2014-11-07 13:46:04'),
(374, 5, 2, 3, 4, 'delhi', 'delhi', '2014-09-05', '1000', '', '2014-09-12', '00:00:00', '2014-09-15', '00:00:00', 4, '', 'Renu Arora', 'test', 'Pending', 1, NULL, '', '', '', '', 0, '', 'Renu Arora', '2014-09-03 15:29:07', '0000-00-00 00:00:00'),
(375, 15, 2, 6, 2, 'noida', 'Haldwani', '2014-09-11', '5000', '', '2014-09-08', '20:00:00', '2014-09-10', '22:00:00', 3, '', 'Rashmi Sharon', 'Follow up visit to SUVIDHA, Haldwani', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 0, '', 'admin', '2014-09-04 09:39:31', '2014-09-10 11:27:37'),
(376, 29, 2, 1, 1, 'New Delhi', 'Purnea', '2014-09-15', '8000', '', '2014-09-11', '13:00:00', '2014-09-14', '14:00:00', 4, '', 'Rajesh Balani', 'Financial review of TSN.\nAssignment of Geneva Global.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-04 12:29:02', '2014-09-10 11:27:48'),
(377, 14, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-27', '', '2014-10-28', '', 2, '2', 'Sritika Singh', 'Personal leave', 'Approved', 1, NULL, 'Approved', 'Please explain the Online program follow up to Sujata during your absence', '..', '', 0, '', 'admin', '2014-09-04 15:30:28', '2014-09-10 11:29:39'),
(378, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-05', '', '2014-09-05', '', 0.5, '1', 'Prabhat Kumar', 'personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-09-05 10:17:55', '2014-09-05 13:30:08'),
(379, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-08', '', '2014-09-08', '', 1, '1', 'Prabhat Kumar', 'personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-09-05 10:19:04', '2014-09-05 13:30:19'),
(380, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-12', '', '2014-09-12', '', 1, '1', 'Sujata Samal', 'Personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-09-05 12:08:36', '2014-09-05 13:30:31'),
(381, 2, 2, 2, 1, 'Delhi/NOIDA', 'Bangalore', '2014-09-15', '5000', '', '2014-09-10', '15:00:00', '2014-09-12', '22:30:00', 3, '', 'Sanjay Patra', 'For CBM workshop', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-09-05 12:32:15', '2014-11-07 13:45:09'),
(382, 11, 2, 6, 1, 'Delhi', 'Udaipur', '2014-09-11', '5000', '', '2014-09-11', '04:00:00', '2014-09-12', '23:50:00', 2, '', 'Abhishek Chandra', 'BftW Monitoring Visit to (Astha & Seva Mandir)', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-09 11:05:08', '2014-09-10 11:28:14'),
(383, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-29', '', '2014-10-01', '', 3, '2', 'Akrita Bharos', 'Home visit', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-10 12:12:16', '2014-10-27 11:23:00'),
(384, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-06', '', '2014-10-06', '', 1, '2', 'Akrita Bharos', 'Home visit', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-10 12:12:56', '2014-10-27 11:23:12'),
(385, 2, 2, 2, 1, 'Delhi/NOIDA', 'NOIDA', '2014-09-15', '5,000/-', '', '2014-09-10', '14:30:00', '2014-09-12', '22:30:00', 3, '', 'Sanjay Patra', 'For CBM workshop', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-09-10 13:52:38', '2014-11-07 13:45:16'),
(386, 4, 2, 2, 1, 'Noida', 'Bangalore', '2014-09-15', '5000', '', '2014-09-10', '15:00:00', '2014-09-12', '23:00:00', 3, '', 'Sandeep Sharma', 'For CBM staff team workshop', 'Approved', 1, NULL, '', '', '..', '', 0, '', 'admin', '2014-09-10 14:08:34', '2014-09-15 16:05:51'),
(387, 13, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-11', '', '2014-09-11', '', 1, '1', 'Deepanshu Srivastava', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-10 16:22:37', '2014-09-15 16:02:18'),
(388, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-10', '', '2014-09-10', '', 1, '1', 'Dharmendra Singh Rawat', 'Personal work', 'Cancel', 1, NULL, '', '', '..', '', 0, '', 'admin', '2014-09-15 12:27:12', '2014-09-15 13:06:08'),
(389, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-12', '', '2014-09-12', '', 0.5, '1', 'Puran Jha', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-15 15:48:55', '2014-09-15 16:02:33'),
(390, 15, 2, 6, 1, 'noida', 'hyderabad-bangalore', '2014-10-02', '10000', '', '2014-09-28', '00:00:00', '2014-10-01', '00:00:00', 4, '', 'Rashmi Sharon', 'BFTW partner visit - WASSAN, AVAS and PIPAL TREE', 'Approved', 1, NULL, 'Approved', 'ok', 'Who will be luking after ur project', '', 0, '', 'admin', '2014-09-15 15:49:38', '2014-09-19 09:53:36'),
(391, 16, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-29', '', '2014-10-07', '', 5, '2', 'Puran Jha', 'Travelling to home town - kindly cancel my earlier request. (Current application is for 6 days)', 'Approved', 1, NULL, 'Approved', 'Renu will cancel the earlier applied leave from backend.', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-09-15 15:59:40', '2014-09-15 16:04:35'),
(392, 1, 2, 1, 1, 'New Delhi', 'Yangoon, Mandaley, Kaley, Myitkyina (all in Myanmar)', '2014-10-06', 'USD 1500', '', '2014-09-21', '19:00:00', '2014-10-02', '22:30:00', 12, '', 'Prabhat Kumar', 'Assignment of CPA services P Ltd. \nAccompanied by Deepanshu. \nThe assignment is about the need assessment of BftW partners and conducting workshop for them.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-18 11:35:12', '2014-09-19 10:31:55'),
(393, 29, 2, 1, 1, 'Delhi', 'Varanasi, Patna and Muzaffarpur', '2014-09-29', '12000', '', '2014-09-21', '13:00:00', '2014-09-27', '23:00:00', 7, '', 'Rajesh Balani', 'Geneva Global assignment.On-site support to partners in cluster. Accompanied by Puran Jha', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-18 11:50:01', '2014-09-18 15:07:20'),
(394, 13, 2, 1, 1, 'Noida', 'Yangon, Myanmar', '2014-09-29', '1000 ', '', '2014-09-21', '19:00:00', '2014-09-28', '23:30:00', 8, '', 'Deepanshu Srivastava', 'Amount of advance requested is in USD. Visiting for Capacity Needs Assessment of BftW partner''s in Myanmar.', 'Approved', 1, NULL, 'Approved', 'CPA services assignment.', '..', '', 0, '', 'admin', '2014-09-18 11:56:08', '2014-09-18 15:07:31'),
(395, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-06', '', '2014-10-07', '', 2, '2', 'S.Bhagyashree', 'Going home', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-18 18:03:21', '2014-09-19 09:52:19'),
(396, 4, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-20', '', '2014-10-22', '', 3, '2', 'Sandeep Sharma', 'Travelling to hometown', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-09-19 09:11:54', '2014-10-28 12:25:00'),
(397, 16, 2, 1, 1, 'Noida', 'Varanasi, Patna, Muzaffarpur', '2014-09-22', '10000', '', '2014-09-21', '04:00:00', '2014-10-08', '00:00:00', 18, '', 'Puran Jha', 'Geneva Global Assignment. Will join office on 9th Oct as i will be on leave from 29th Spt to 8th Oct 2014.', 'Approved', 1, NULL, 'Approved', 'He is travelling till 27th Sep. After that he is on leave', '..', '', 0, '', 'admin', '2014-09-19 10:32:03', '2014-10-27 11:24:10'),
(398, 19, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-22', '', '2014-09-22', '', 1, '1', 'Ram Bahadur', 'Personal work', 'Approved', 1, NULL, '', '', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-09-19 15:26:25', '2014-10-28 09:55:00'),
(399, 11, 2, 6, 1, 'Delhi', 'Dhaka', '2014-10-28', 'USD 1500', '', '2014-10-18', '10:15:00', '2014-10-27', '14:00:00', 10, '', 'Abhishek Chandra', 'To attend RDRS round table meeting in Rangpur and meet other BftW partners. My travel itinerary is as follows:-\n\n18.10.2014	Departure from Delhi to Dhaka	RDRS	RDRS Guest House, Dhaka\n19.10.2014	Departure for RDRS Rangpur by Hired Vehicle	RDRS	RDRS guest house, Rangpur\n20.10.2014-21.10.2014	Attend RDRS Round Table Meeting\nBi-lateral meeting with RDRS (Tuesday afternoon)	RDRS	RDRS Guest House, Rangpur\n22.10.2014 	Dep. for CDA morning:  Visit CDA program with CORA community	CDA 	CDA Training Centre\n23.10.2014 	Field visit  CDA SOLAR	CDA	CDA Training Centre\n24.10.2014	Return to Dhaka	 	RDRS Guest House\n25.10.2014	BPKS partner visit	BPKS	RDRS Guest House\n26.10.2014	ASD Partner Visit	ASD	RDRS Guest House\n27.10.2014	Departure from Dhaka to Delhi', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-23 11:50:22', '2014-10-27 11:24:19'),
(400, 11, 2, 6, 1, 'Delhi', 'Aurangabad-Mumbai', '2014-11-24', 'Rs. 7000', '', '2014-11-18', '07:45:00', '2014-11-22', '12:00:00', 5, '', 'Abhishek Chandra', 'BftW partner visit IIRD, Aurangabad, Maharashtra  and Path, Mumbai old BftW partner alongwith Franziska Hoffman.from 18th November to 22nd November 2014.  \n\nDelhi-Aurangabad-Mumbai-Delhi', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-09-24 10:07:25', '2014-10-27 11:24:30'),
(401, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-30', '', '2014-09-30', '', 0.5, '1', 'Sapna Singh', 'My daughter is not well', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-09-30 12:34:53', '2014-10-27 11:23:22'),
(402, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-06', '', '2014-10-06', '', 1, '1', 'Renu Arora', 'Personal work', 'Pending', 1, NULL, 'Cancel', 'Requested for cancellation', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Sandeep Sharma', '2014-10-01 10:06:20', '2014-10-27 10:26:25'),
(403, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-07', '', '2014-10-07', '', 0.5, '1', 'Renu Arora', 'Might be late to office therefore applied for a half day as planning for outstation visit for the long weekend', 'Pending', 1, NULL, 'Cancel', 'Requested for cancellation', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Sandeep Sharma', '2014-10-01 10:08:36', '2014-10-27 10:26:42'),
(404, 25, 2, 3, 1, 'A-5, Sector 26 Noida', 'SAMVADA, Bangalore', '2014-10-13', '10000', '', '2014-10-08', '14:00:00', '2014-10-10', '23:00:00', 3, '', 'Divyanshu', 'Pre-Funding Assessment of SAMVADA, Bangalore for BftW.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-10-06 16:17:03', '2014-10-27 11:24:38'),
(405, 25, 2, 3, 2, 'A-5, Sector 26 Noida', 'NIRPHAD, Vrindavan', '2014-10-27', '5000', '', '2014-10-19', '13:00:00', '2014-10-22', '18:00:00', 4, '', 'Divyanshu', 'Accompaniment of NIRPHAD, Vrindavan CBM Project (CPA)', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-10-06 16:20:23', '2014-10-27 11:24:49'),
(406, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-08', '', '2014-10-08', '', 0.5, '1', 'Prabhat Kumar', 'personal', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-10-07 11:31:56', '2014-10-27 11:23:36'),
(407, 13, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-09', '', '2014-10-09', '', 1, '1', 'Deepanshu Srivastava', 'Not Well', 'Approved', 1, NULL, 'Approved', '.', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-10-10 09:22:41', '2014-10-27 11:23:47'),
(408, 1, 2, 1, 1, 'New Delhi', 'Colombo', '2014-11-03', '$1000', '', '2014-10-26', '19:00:00', '2014-10-31', '19:00:00', 6, '', 'Prabhat Kumar', 'Special review of project (“Trauma Therapy training of trainers for the treatment of traumatized children in the North of Sri Lanka”). Contract with Kindermissionwerk, Germany. CPA services Assignment.\nIshani Skhanthakumar from Paltra would join in colombo and travel to Madhu.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-10-10 12:06:18', '2014-10-27 11:24:57'),
(409, 16, 2, 1, 1, 'New Delhi', 'Kathmandu, Nepal', '2014-10-13', '15000', '', '2014-10-12', '15:00:00', '2014-10-14', '00:00:00', 3, '', 'Puran Jha', 'Financial Review of CCC on behalf of "Kindermissionwerk)', 'Approved', 1, NULL, 'Approved', 'OK\n', '..', '', 0, '', 'admin', '2014-10-11 14:40:31', '2014-10-27 11:25:08'),
(410, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-10', '', '2014-10-10', '', 1, '1', 'Sujata Samal', 'Personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-10-13 10:02:09', '2014-10-28 12:25:10'),
(411, 29, 2, 1, 2, 'New Delhi', 'Vrindavan, Mathura', '2014-10-27', '10000', '', '2014-10-19', '13:00:00', '2014-10-22', '23:00:00', 4, '', 'Rajesh Balani', 'CBM Follow up visit of accompaniment of NIRPHAD.\nAccompanied by Divyanshu', 'Approved', 1, NULL, 'Approved', 'Ok', '..', '', 0, '', 'admin', '2014-10-14 09:47:47', '2014-10-27 11:25:17'),
(412, 13, 2, 6, 1, 'Noida', 'Chaibasa & Hazaribagh, Jharkhand', '2014-11-03', '20,000', '', '2014-10-28', '14:00:00', '2014-11-01', '23:00:00', 5, '', 'Deepanshu Srivastava', 'Traveling with Agung to Old BftW partners NBJK and BIRSA in Jharkhand', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-10-21 17:46:22', '2014-10-27 11:25:27'),
(413, 29, 2, 1, 1, 'New Delhi', 'Sirsi, Bidar', '2014-10-29', '15000', '', '2014-10-29', '04:00:00', '2014-11-06', '20:00:00', 9, '', 'Rajesh Balani', 'Accompaniment follow-up visit of CBM partners.\nAccompanied by Puran jha', 'Approved', 1, NULL, 'Approved', 'OK', '..', '', 0, '', 'admin', '2014-10-27 13:09:11', '2014-10-28 09:27:06'),
(414, 20, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-30', '', '2014-10-30', '', 1, '1', 'Rajman Yadav', 'Personal work', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-10-27 14:44:35', '2014-11-07 13:46:12'),
(415, 19, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-10-22', '', '2014-10-22', '', 1, '1', 'Ram Bahadur', 'Personal Work', 'Approved', 1, NULL, '', '', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-10-27 14:47:28', '2014-10-28 09:56:04');
INSERT INTO `leaves` (`id`, `staff_id`, `absence_type`, `travelpurpose_id`, `travelmode_id`, `travel_from_place`, `travel_to_place`, `reporting_date`, `travel_advance_required`, `leave_year`, `from_date`, `from_time`, `to_date`, `to_time`, `total_leaves`, `leavetype_id`, `absence_request_by`, `absence_desc`, `absence_status`, `supervisor_approval_required`, `supervisor_company_id`, `supervisor_absence_status`, `supervisor_remarks`, `hr_remarks`, `travel_report_upload`, `leave_policy_status`, `leave_policy_message`, `updated_by`, `created_date`, `updated_date`) VALUES
(416, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-09-09', '', '2014-12-08', '', 71, '11', 'Aarti Sharma', 'Maternity Leave\nChild born on 15th Sep,2014', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Maternity Leave type applied 30 working days in advance.', 'admin', '2014-10-28 09:48:30', '2014-10-28 11:16:52'),
(417, 2, 2, 2, 1, 'Delhi/NOIDA', 'Yangon/Myanmar', '2014-10-09', '500 Dollars', '', '2014-10-04', '00:00:00', '2014-10-08', '00:00:00', 5, '', 'Sanjay Patra', 'For CPA workshop', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-10-28 12:20:42', '2014-11-07 13:45:23'),
(418, 2, 2, 3, 1, 'Delhi/NOIDA', 'Bhubaneswar', '2014-10-27', '', '', '2014-10-22', '00:00:00', '2014-10-26', '00:00:00', 5, '', 'Sanjay Patra', 'For meeting with Dr. Manoj fogla about CSR book, research etc.', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-10-28 12:22:47', '2014-11-07 13:45:29'),
(419, 16, 2, 1, 1, 'New Delhi', 'Bidar & Sirsi', '2014-11-07', '10000', '', '2014-10-29', '04:00:00', '2014-11-06', '20:00:00', 9, '', 'Puran Jha', 'CBM Accompanimnet', 'Approved', 1, NULL, 'Approved', 'Ok', '..', '', 0, '', 'admin', '2014-10-28 15:48:37', '2014-11-03 13:55:47'),
(420, 5, 2, 3, 5, 'NOIDA', 'NOIDA', '2014-10-30', '', '', '2014-10-30', '12:45:00', '2014-10-30', '14:49:00', 1, '', 'Renu Arora', 'Testing for Online Report format', 'Pending', 1, NULL, 'Cancel', 'ok', '', '', 0, '', 'Sandeep Sharma', '2014-10-30 11:25:22', '2014-11-03 13:46:13'),
(421, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-07', '', '2014-11-07', '', 1, '1', 'Renu Arora', 'Mother in law is to go somewhere therefore need to take care of my daughter', 'Approved', 1, NULL, 'Approved', 'ok', ',,', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-10-30 16:03:12', '2014-11-03 13:55:08'),
(422, 11, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-24', '', '2014-11-25', '', 2, '1', 'Abhishek Chandra', 'Urgent work at home (Special Pooja)', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-10-31 16:22:06', '2014-11-03 13:54:52'),
(423, 24, 2, 6, 1, 'Delhi ', 'Bhawanipatna, Kalahandi Orissa', '2014-11-03', 'nil', '', '2014-10-27', '06:55:00', '2014-10-31', '09:00:00', 5, '', 'Akrita Bharos', 'CASA - core programme monitoring visit', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-03 11:12:54', '2014-11-03 13:55:59'),
(424, 27, 2, 6, 1, 'Noida', 'Vijayawada and Vishakhapatnam', '2014-12-01', '35000', '', '2014-11-23', '13:41:00', '2014-11-28', '20:47:00', 6, '', 'S.Bhagyashree', 'Pre-funding Assessment of BREDS and CRAF.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-03 13:57:41', '2014-11-07 13:41:48'),
(425, 2, 2, 3, 1, 'NOIDA/Delhi', 'Kathmandu, Nepal', '2014-11-12', '10,000/-', '', '2014-11-09', '00:00:00', '2014-11-11', '00:00:00', 3, '', 'Sanjay Patra', 'Visit for SADOM meetings', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-11-07 13:29:13', '2014-11-07 13:45:38'),
(426, 16, 2, 1, 1, 'New Delhi', 'Shillong', '2014-11-14', '15000', '', '2014-11-09', '00:00:00', '2014-11-13', '00:00:00', 5, '', 'Puran Jha', 'Accompaniment Process of Nesfas', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-07 14:03:23', '2014-11-10 14:11:41'),
(427, 27, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-22', '', '2014-12-24', '', 3, '2', 'S.Bhagyashree', 'Going home', 'Approved', 1, NULL, 'Approved', 'Ok', '..', '', 0, '', 'admin', '2014-11-07 14:28:29', '2014-11-10 14:11:01'),
(428, 17, 2, 1, 1, 'Noida', 'Odisha', '2014-11-21', '15000', '', '2014-11-13', '00:00:00', '2014-11-20', '00:00:00', 8, '', 'Sujata Samal', 'Follow up visit of ECOS, Berhampur and SCH, Gajapati under accompaniment process ( CBM Project)', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-11-07 16:33:49', '2014-11-17 11:46:48'),
(429, 4, 2, 6, 1, 'Noida', 'Kathmandu ', '2014-11-16', '10,000', '', '2014-11-11', '00:00:00', '2014-11-14', '00:00:00', 4, '', 'Sandeep Sharma', 'For Nepal partner visit.', 'Approved', 1, NULL, '', '', '..', '', 0, '', 'admin', '2014-11-07 18:36:57', '2014-11-17 11:32:54'),
(430, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-03', '', '2014-11-05', '', 3, '1', 'Prabhat Kumar', 'Daughter not well', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-11-10 13:02:26', '2014-11-10 14:11:14'),
(431, 1, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-14', '', '2014-11-21', '', 6, '2', 'Prabhat Kumar', 'personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-11-10 13:03:52', '2014-11-10 14:11:23'),
(432, 15, 2, 6, 1, 'Noida', 'Hyderabad-Anantpur-Ranchi', '2014-12-12', '25000', '', '2014-11-26', '15:00:00', '2014-12-11', '14:00:00', 16, '', 'Rashmi Sharon', 'Partner visit along with Gerlind to CPF, CWS, APMAS, Accion Fraterna, Timbaktu Collective, LEADS, SAMVAD and attend 20 years celebration of CWS.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-11 09:45:27', '2014-11-11 10:25:31'),
(433, 15, 2, 1, 1, 'Noida', 'Ahmedabad', '2014-12-19', '10000', '', '2014-12-13', '00:00:00', '2014-12-18', '00:00:00', 6, '', 'Rashmi Sharon', 'Financial Review of Aga Khan Rural Support Program (AKRSP)', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-11 09:47:31', '2014-11-11 10:25:43'),
(434, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-21', '', '2014-11-21', '', 1, '1', 'Rashmi Sharon', 'Personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-11-11 09:48:26', '2014-11-11 10:31:26'),
(435, 4, 2, 2, 1, 'Noida', 'Raipur', '2014-11-21', '5000', '', '2014-11-18', '15:00:00', '2014-11-20', '21:00:00', 3, '', 'Sandeep Sharma', 'Facilitating Workshop for Oxfam partners', 'Approved', 1, NULL, 'Approved', 'OK', '..', '', 0, '', 'admin', '2014-11-11 11:12:24', '2014-11-17 11:46:33'),
(436, 4, 2, 2, 1, 'Noida', 'Gauwhati', '2014-12-09', '10000', '', '2014-12-02', '14:00:00', '2014-12-05', '11:00:00', 4, '', 'Sandeep Sharma', 'Facilitating workshop for oxfam partners', 'Approved', 1, NULL, 'Approved', 'OK', '..', '', 0, '', 'admin', '2014-11-11 11:14:26', '2014-11-17 11:47:04'),
(437, 4, 2, 2, 1, 'Bagdogra', 'Patna', '2014-12-11', '5000', '', '2014-12-08', '10:00:00', '2014-12-11', '23:00:00', 4, '', 'Sandeep Sharma', 'Facilitating workshop for Oxfam Partners', 'Approved', 1, NULL, 'Approved', 'OK', '..', '', 0, '', 'admin', '2014-11-11 11:18:39', '2014-11-17 11:47:10'),
(438, 8, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-29', '', '2014-12-31', '', 3, '2', 'Sapna Singh', 'Personal work', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-11 11:43:32', '2014-11-11 11:55:16'),
(439, 25, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-28', '', '2014-11-28', '', 1, '1', 'Divyanshu', 'Personal', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-11-11 12:22:06', '2014-11-28 14:55:45'),
(440, 19, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-27', '', '2014-12-13', '', 12, '2', 'Ram Bahadur', 'Visit Home town', 'Approved', 1, NULL, 'Approved', 'loss of  pay for two days', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-11-13 10:49:39', '2014-12-01 14:06:48'),
(441, 29, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-14', '', '2014-11-14', '', 1, '1', 'Rajesh Balani', 'Visit to jaipur with family.', 'Approved', 1, NULL, 'Approved', 'Ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-11-13 18:24:02', '2014-11-14 04:39:11'),
(442, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-19', '', '2014-11-19', '', 1, '1', 'Renu Arora', 'Son''s Bday', 'Pending', 1, NULL, 'Rejected', 'Not taken leave', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-11-14 08:46:40', '2014-11-28 14:55:35'),
(443, 29, 2, 1, 1, 'New Delhi', 'Colombo', '2014-11-18', '54000', '', '2014-11-18', '13:00:00', '2014-11-22', '22:00:00', 5, '', 'Rajesh Balani', 'Pre-funding assessment on behalf of KMW.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-17 06:38:09', '2014-11-17 07:17:48'),
(444, 14, 2, 2, 1, 'A-5, Sector-26, Noida', 'Raipur', '2014-11-18', 'Rs. 5000', '', '2014-11-18', '15:00:00', '2014-11-20', '21:00:00', 3, '', 'Sritika Singh', 'OXFAM Workshop from 19th to 20th November, 2014', 'Approved', 1, NULL, 'Approved', 'OK', '..', '', 0, '', 'admin', '2014-11-17 06:53:43', '2014-11-17 11:47:20'),
(445, 2, 2, 2, 1, 'Delhi/NOIDA', 'Pune', '2014-11-21', '5000/-', '', '2014-11-19', '00:00:00', '2014-11-20', '23:00:00', 2, '', 'Sanjay Patra', 'For the workshop for Dristi Partners', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-11-19 12:27:45', '2014-12-01 14:07:06'),
(446, 15, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-22', '', '2014-12-31', '', 8, '2', 'Rashmi Sharon', 'Going home for Christmas', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-19 12:28:51', '2014-11-28 14:55:26'),
(447, 27, 2, 6, 1, 'Noida', 'Vijayawada and Vishakhapatnam', '2014-12-01', '25000', '', '2014-11-22', '13:00:00', '2014-11-28', '22:00:00', 7, '', 'S.Bhagyashree', 'Pre-funding Assessment of CRAF and BREDS.', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-21 16:43:45', '2014-12-01 14:07:21'),
(448, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-21', '', '2014-11-21', '', 1, '1', 'Sujata Samal', 'Personal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-11-24 11:41:34', '2014-12-03 11:08:20'),
(449, 13, 2, 1, 2, 'Noida', 'Betul, M.P', '2014-12-22', '10,000', '', '2014-12-15', '20:00:00', '2014-12-19', '20:00:00', 5, '', 'Deepanshu Srivastava', 'Travel for Prefunding Assessment of WESA, Padhar for CSS (CPA Services). Travelling with Mr. Lalatendu', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-24 12:26:39', '2014-12-01 14:07:37'),
(450, 1, 2, 2, 1, 'New Delhi', 'Bangalore', '2014-11-28', '5000', '', '2014-11-25', '16:30:00', '2014-11-27', '22:30:00', 3, '', 'Prabhat Kumar', 'Oxfam partner workshop at bhubaneshwar. This is FMSF assignment. Sanjay Sir will join at Bhubaneshwar', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 0, '', 'admin', '2014-11-24 15:41:53', '2014-12-01 14:07:45'),
(451, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-25', '', '2014-11-25', '', 1, '1', 'Sujata Samal', 'Fever', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-11-26 12:27:14', '2014-12-03 11:08:31'),
(452, 4, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-11-28', '', '2014-11-28', '', 1, '1', 'Sandeep Sharma', 'Personal Work', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-11-27 10:27:25', '2014-12-03 11:08:43'),
(453, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-23', '', '2014-12-31', '', 7, '2', 'Anuradha Singh', 'Going to Home Town', 'Approved', 1, NULL, 'Approved', 'Enjoy your holidays', '..', '', 0, '', 'admin', '2014-11-28 15:17:11', '2014-12-03 11:08:53'),
(454, 29, 2, 1, 5, 'New Delhi', 'New delhi', '2014-12-08', '0', '', '2014-12-01', '00:00:00', '2014-12-05', '00:00:00', 5, '', 'Sandeep Sharma', 'Financial review of Pradan. Axis bank foundation project.', 'Pending', 1, NULL, 'Pending', 'To be booked under CPA Services', '', '', 0, '', 'Sandeep Sharma', '2014-12-03 16:28:25', '2014-12-19 11:01:05'),
(455, 17, 2, 1, 3, 'Noida', 'Kailash Colony', '2014-12-08', '', '', '2014-12-01', '00:00:00', '2014-12-05', '00:00:00', 5, '', 'Sujata Samal', 'Project audit of PRADAN', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-11-28 16:51:04', '2014-12-03 11:09:35'),
(456, 14, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-23', '', '2014-12-31', '', 7, '2', 'Sritika Singh', 'Personal leave to go home', 'Approved', 1, NULL, 'Approved', 'Pl arrange your work status with Sujata ', '..', '', 0, '', 'admin', '2014-12-01 10:33:53', '2014-12-03 11:09:04'),
(457, 2, 2, 2, 1, 'Delhi/NOIDA', 'Bhubaneswar-Bangalore', '2014-12-01', '5000', '', '2014-11-26', '13:00:00', '2014-11-29', '23:00:00', 4, '', 'Sanjay Patra', 'OXFAM workshop and meeting at Bangalore', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-12-01 14:20:45', '2014-12-03 11:11:14'),
(458, 2, 2, 2, 1, 'Delhi/NOIDA', 'Guwahati', '2014-12-05', '5000', '', '2014-12-02', '08:00:00', '2014-12-04', '20:00:00', 3, '', 'Sanjay Patra', 'OXFAM workshop', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2014-12-01 14:23:12', '2014-12-03 11:11:23'),
(459, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-05', '', '2014-12-05', '', 1, '1', 'Renu Arora', 'Cousin''s Wedding', 'Approved', 1, NULL, 'Approved', 'Ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-12-02 11:53:50', '2014-12-03 11:09:12'),
(460, 3, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-02', '', '2014-12-02', '', 1, '1', 'Anuradha Singh', 'not well', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-12-03 11:12:47', '2014-12-16 17:34:10'),
(461, 13, 2, 1, 1, 'Noida', 'Mumbai', '2014-12-08', '4000', '', '2014-12-05', '05:30:00', '2014-12-06', '00:30:00', 2, '', 'Deepanshu Srivastava', 'NIL', 'Approved', 1, NULL, 'Approved', 'Visit to Axis Bank Foundation, to be booked under CPA Services', '..', '', 0, '', 'admin', '2014-12-03 16:02:15', '2015-01-02 12:11:32'),
(462, 16, 2, 1, 1, 'Noida', 'Patna, Bihar', '2014-12-11', '4000', '', '2014-12-08', '00:00:00', '2014-12-10', '00:00:00', 3, '', 'Puran Jha', 'Oxfam workshop', 'Approved', 1, NULL, 'Approved', 'To be booked under FMSF', '..', '', 0, '', 'admin', '2014-12-08 11:52:47', '2015-01-02 12:11:40'),
(463, 29, 2, 1, 2, 'New Delhi', 'Dang, Ahemdabad', '2014-12-19', '10000', '', '2014-12-13', '14:00:00', '2014-12-18', '22:00:00', 6, '', 'Rajesh Balani', 'Financial review of Aga khan foundation. Axis bank project.\nAccompanied by Rashmi Sharon', 'Approved', 1, NULL, 'Approved', 'To be booked under CPA Services', '..', '', 0, '', 'admin', '2014-12-09 09:55:15', '2015-01-02 12:11:47'),
(464, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-19', '', '2014-12-19', '', 0.5, '2', 'Akrita Bharos', 'home visit', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-12-09 12:40:25', '2015-01-02 12:10:42'),
(465, 24, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-22', '', '2014-12-24', '', 3, '2', 'Akrita Bharos', 'home visit', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-12-09 12:41:41', '2015-01-02 12:10:50'),
(466, 26, 2, 1, 1, 'Patel Nagar', 'Dhamtari and Raigarh', '2014-12-14', '10,000', '', '2014-12-09', '06:55:00', '2014-12-13', '21:00:00', 5, '', 'Itti Aggarwal', 'Ms. sujata and myself is going for a project audit of PRADAN on recommendation of ABF. we will be back on 13th Dec, as I am having a continuous journey to Hybd, I will resume to office on 21st Dec. only.', 'Approved', 1, NULL, 'Approved', 'To be booked under CPA Services', '..', '', 0, '', 'admin', '2014-12-09 15:17:43', '2015-01-02 12:11:55'),
(467, 26, 2, 1, 1, 'Patel Nagar', 'Hyderabad ', '2014-12-22', '10,000', '', '2014-12-14', '10:00:00', '2014-12-21', '20:00:00', 8, '', 'Itti Aggarwal', 'Travelling with divyanshu to Hyderabad.for Investigation on behalf of Kindermission', 'Approved', 1, NULL, 'Approved', 'To be booked under CPA Services ', '..', '', 0, '', 'admin', '2014-12-09 15:29:53', '2015-01-02 12:12:03'),
(468, 17, 2, 1, 1, 'Noida', 'Raipur', '2014-12-15', '10000', '', '2014-12-10', '00:00:00', '2014-12-13', '00:00:00', 4, '', 'Sujata Samal', 'Project audit of PRADAN under Axis Bank Foundation', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-12-09 15:45:25', '2014-12-16 17:35:24'),
(469, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-31', '', '2015-01-01', '', 2, '1', 'Renu Arora', 'test by vikram', 'Pending', 1, NULL, 'Rejected', 'test by vikram', '', '', 0, '', 'Renu Arora', '2014-12-09 22:41:52', '0000-00-00 00:00:00'),
(470, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-29', '', '2014-12-29', '', 1, '2', 'Renu Arora', 'test by vikram', 'Pending', 1, NULL, 'Rejected', 'test by vikram', '', '', 0, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Renu Arora', '2014-12-09 22:49:59', '0000-00-00 00:00:00'),
(471, 7, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-09', '', '2015-01-09', '', 26, '2', 'Aarti Sharma', 'Take care of my new born baby', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-12-10 11:35:15', '2015-01-02 12:10:59'),
(472, 29, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-11', '', '2014-12-11', '', 0.5, '1', 'Rajesh Balani', 'Attending a relatives funeral', 'Approved', 1, NULL, 'Approved', 'ok\n', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-12-12 18:18:52', '2015-01-02 12:11:09'),
(473, 13, 2, 1, 2, 'Noida', 'Betul, M.P', '2014-12-22', '14000', '', '2014-12-15', '20:00:00', '2014-12-19', '20:00:00', 5, '', 'Deepanshu Srivastava', 'Travel for Prefunding Assessment of WESA, Padhar', 'Approved', 1, NULL, 'Approved', 'To be booked under CPA Services(CSS)', '..', '', 0, '', 'admin', '2014-12-15 10:25:58', '2015-01-02 12:12:10'),
(474, 18, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-17', '', '2014-12-18', '', 2, '2', 'Dharmendra Singh Rawat', 'Having construction at Home', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-12-16 17:17:39', '2014-12-16 17:34:19'),
(475, 2, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-22', '', '2014-12-31', '', 8, '2', 'Sanjay Patra', 'Going to hometown', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-12-16 17:28:50', '2014-12-16 17:34:28'),
(476, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-24', '', '2014-12-24', '', 1, '1', 'Sujata Samal', 'Personal', 'Approved', 1, NULL, '', '', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-12-16 17:39:12', '2015-01-02 13:06:17'),
(477, 5, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-29', '', '2014-12-31', '', 3, '2', 'Renu Arora', 'Outstation Travel', 'Approved', 1, NULL, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-12-18 17:17:38', '2015-01-02 12:11:17'),
(478, 16, 2, 1, 1, 'Delhi ', 'Kathmandu, Nepal', '2014-12-27', '15000', '', '2014-12-20', '00:00:00', '2014-12-27', '00:00:00', 8, '', 'Puran Jha', 'CDS Accompaniment process', 'Approved', 1, NULL, 'Approved', 'To be booked under CPA Trust', '..', '', 0, '', 'admin', '2014-12-19 10:08:37', '2015-01-02 12:12:18'),
(479, 17, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-31', '', '2014-12-31', '', 1, '1', 'Sujata Samal', 'Kindly reject my leave on 24.12.14', 'Approved', 1, NULL, '', '', '..\n', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-12-19 10:53:13', '2015-01-02 13:06:56'),
(480, 20, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-29', '', '2014-12-31', '', 3, '2', 'Rajman Yadav', 'visit home town', 'Approved', 1, NULL, 'Approved', 'ok', 'His leave is extended till 9th Jan''2015', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2014-12-22 16:19:13', '2015-01-02 12:25:59'),
(481, 4, 1, 0, 0, '', '', '0000-00-00', '', '2014', '2014-12-24', '', '2014-12-24', '', 1, '1', 'Sandeep Sharma', 'Personal Work', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2014-12-23 14:56:47', '2015-01-14 11:40:43'),
(482, 17, 2, 1, 1, 'Noida', 'Ranchi', '2015-01-02', '10000', '', '2014-12-28', '00:00:00', '2014-12-30', '00:00:00', 3, '', 'Sujata Samal', 'Prefunding assessment of NBJK  alongwith Itti Aggarwal', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 0, '', 'admin', '2014-12-24 16:09:09', '2015-01-14 11:40:29'),
(483, 25, 2, 4, 1, 'A-5, Sector 26 Noida', 'Goa', '2015-01-12', 'Nil', '', '2015-01-06', '08:00:00', '2015-01-10', '23:00:00', 5, '', 'Divyanshu', 'Annual Planning 2015', 'Approved', 1, 1, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-02 15:45:49', '2015-01-16 16:19:30'),
(484, 25, 2, 1, 1, 'A-5, Sector 26 Noida', 'Hyderabad', '2015-01-02', 'Nil', '', '2014-12-14', '10:00:00', '2014-12-21', '23:00:00', 8, '', 'Divyanshu', 'KMW Project', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-02 15:49:12', '2015-01-16 16:19:42'),
(485, 29, 2, 1, 5, 'New Delhi', 'New delhi', '2015-01-02', '0', '', '2014-12-22', '00:00:00', '2014-12-24', '00:00:00', 3, '', 'Rajesh Balani', 'Compliance review of PSI', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-13 10:07:07', '2015-01-16 16:19:55'),
(486, 29, 2, 1, 5, 'New Delhi', 'New delhi', '2015-01-02', '0', '', '2014-12-30', '00:00:00', '2014-12-30', '00:00:00', 1, '', 'Rajesh Balani', 'Review of Pradan at Delhi office.', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-13 10:09:09', '2015-01-16 16:20:03'),
(487, 29, 2, 1, 5, 'New Delhi', 'New delhi', '2015-01-02', '0', '', '2015-01-02', '09:00:00', '2015-01-02', '14:00:00', 1, '', 'Rajesh Balani', 'Review of PRADAN (Axis bank foundation) at Delhi office.', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-13 10:11:22', '2015-01-16 16:20:12'),
(488, 29, 2, 1, 5, 'New Delhi', 'New delhi', '2015-01-12', '0', '', '2015-01-12', '09:00:00', '2015-01-12', '14:00:00', 1, '', 'Rajesh Balani', 'Compliance Review of PSI', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-13 10:13:00', '2015-01-16 16:20:19'),
(489, 15, 2, 1, 1, 'Noida', 'Chennai', '2015-01-21', '10000', '', '2015-01-18', '00:00:00', '2015-01-20', '00:00:00', 3, '', 'Rashmi Sharon', 'Pre Funding Assessment of Cornerstone, Chennai along with Itti (CSS Assignment)', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-16 15:55:29', '2015-01-16 16:21:42'),
(490, 15, 2, 1, 1, 'Noida', 'Imphal & Churachanpur - Manipur', '2015-02-23', '15000', '', '2015-02-15', '00:00:00', '2015-02-21', '00:00:00', 7, '', 'Rashmi Sharon', 'Programme Evaluation of 3 ICCO partners, along with Puran & Sandeep\n1. Shalom\n2. CMAI\n3. WAD', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-13 16:44:53', '2015-01-16 16:20:30'),
(491, 17, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-13', '', '2015-01-13', '', 1, '1', 'Sujata Samal', 'Due to fever', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2015-01-14 09:54:57', '2015-01-14 11:40:53'),
(492, 14, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-01', '', '2015-01-02', '', 2, '2', 'Sritika Singh', 'Personal Leave', 'Approved', 1, NULL, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2015-01-14 10:07:22', '2015-01-14 11:41:00'),
(493, 20, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-02', '', '2015-01-08', '', 5, '2', 'Rajman Yadav', 'Tauji expired', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2015-01-14 10:47:58', '2015-01-14 11:44:01'),
(494, 2, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-02', '', '2015-01-02', '', 1, '2', 'Sanjay Patra', 'Travelling to home town', 'Approved', 1, NULL, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2015-01-14 11:07:20', '2015-01-14 11:44:16'),
(495, 2, 2, 4, 1, 'Delhi/NOIDA', 'Goa', '2015-01-12', 'Nil', '', '2015-01-06', '00:00:00', '2015-01-10', '00:00:00', 5, '', 'Sanjay Patra', 'For annual planning meeting', 'Approved', 1, NULL, 'Approved', '..', 'Travel dates for Annual Planning was from 6th Jan to 9th Jan', '', 0, '', 'admin', '2015-01-14 11:09:22', '2015-01-14 11:44:59'),
(496, 2, 2, 2, 1, 'Delhi/NOIDA', 'Chennai', '2015-01-19', '5000', '', '2015-01-16', '16:00:00', '2015-01-17', '23:00:00', 2, '', 'Sanjay Patra', 'For CMAI FCRA Workshop', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2015-01-14 11:10:52', '2015-01-14 11:45:23'),
(497, 2, 2, 2, 1, 'Delhi/NOIDA', 'Chennai', '2015-01-30', '5000', '', '2015-01-28', '16:00:00', '2015-01-29', '23:00:00', 2, '', 'Sanjay Patra', 'CPA Services- ICCO Workshop', 'Approved', 1, NULL, 'Approved', '..', '..', '', 0, '', 'admin', '2015-01-14 11:12:29', '2015-01-14 11:45:31'),
(498, 3, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-27', '', '2015-01-28', '', 2, '2', 'Anuradha Singh', 'Travelling to Jamshedpur for Marriage', 'Approved', 1, 0, 'Approved', 'Approved', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2015-01-14 11:55:13', '2015-01-19 10:44:06'),
(499, 28, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-13', '', '2015-01-13', '', 0.5, '1', 'Harpal Singh/Gopal', 'Son is not well. Have to take him to the doctor', 'Approved', 1, 0, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2015-01-14 16:23:48', '2015-01-21 14:10:59'),
(500, 5, 2, 4, 1, 'Indirapuram', 'Goa', '2015-01-12', '', '', '2015-01-06', '00:00:00', '2015-01-10', '00:00:00', 5, '', 'Renu Arora', 'To attend Annual Planning Meeting', 'Approved', 1, NULL, 'Approved', 'k', '..', '', 0, '', 'admin', '2015-01-15 11:14:24', '2015-01-15 11:25:36'),
(501, 29, 2, 3, 5, 'New Delhi', 'New delhi', '2015-01-16', '0', '', '2015-01-15', '14:00:00', '2015-01-15', '18:00:00', 1, '', 'Rajesh Balani', 'Meeting at PSI office.', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-15 14:25:50', '2015-01-16 16:20:41'),
(502, 16, 2, 1, 2, 'New Delhi', 'Surat and Nanded via Mumabi and Hyderabad', '2015-01-28', '20,000', '', '2015-01-17', '00:00:00', '2015-01-27', '00:00:00', 11, '', 'Puran Jha', 'Accompaniment Process of Shantaba, Financial Review and Workshop  of SSM Nanded.\n\nTravel by Train & Air both', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-15 14:59:37', '2015-01-16 16:21:10'),
(503, 26, 2, 1, 1, 'Patel Nagar', 'Hazaribagh', '2015-01-02', '10,000', '', '2014-12-28', '00:00:00', '2014-12-30', '00:00:00', 3, '', 'Itti Aggarwal', 'Visited NBJK for pre-funding assessment along with Sujata. \n\nI have resumed office on 31.12.2014, since the 2014 section has been closed, that is why I have putted reported date 2.01.15.', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-15 16:35:32', '2015-01-16 16:21:28'),
(504, 26, 2, 1, 5, 'Patel Nagar', 'Kailash Colony', '2015-01-02', '', '', '2015-01-02', '00:00:00', '2015-01-02', '00:00:00', 1, '', 'Itti Aggarwal', 'I have visited the PRADAN for debriefing.', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-15 16:23:52', '2015-01-16 16:21:19'),
(505, 15, 2, 1, 1, 'Noida ', 'kolkata, Suri - West Bengal', '2015-02-09', '10000', '', '2015-02-01', '00:00:00', '2015-02-05', '00:00:00', 5, '', 'Rashmi Sharon', 'Programme Monitoring visit of STEP-UP project, NETZ - Bangladesh. (CPA Assignment)', 'Approved', 1, 2, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-16 16:19:26', '2015-01-23 17:12:02'),
(506, 26, 2, 1, 1, 'Patel Nagar', 'Chennai', '2015-01-21', '5000', '', '2015-01-18', '00:00:00', '2015-01-20', '00:00:00', 3, '', 'Itti Aggarwal', 'PFA of Cornerstone, Chennai (CSS assignment).', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-16 16:57:57', '2015-01-23 17:12:12'),
(507, 18, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-21', '', '2015-01-22', '', 2, '2', 'Dharmendra Singh Rawat', 'Personal Work', 'Approved', 1, 0, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2015-01-16 17:31:51', '2015-01-21 14:11:07'),
(508, 25, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-27', '', '2015-01-30', '', 4, '2', 'Divyanshu', 'Personal', 'Approved', 1, 0, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2015-01-19 14:03:36', '2015-01-23 17:05:03'),
(509, 28, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-19', '', '2015-01-19', '', 1, '2', 'Harpal Singh/Gopal', 'Was not feeling well', 'Approved', 1, 0, 'Approved', '..', '..', '', 1, 'Application has not applied as per the policy<br>Earned Leave type applied 15 working days in advance.', 'admin', '2015-01-21 12:30:39', '2015-01-21 14:11:15'),
(510, 11, 3, 1, 0, 'CMAI, Janakpuri (West), New Delhi', '', '0000-00-00', '', '', '2015-01-20', '08:00:00', '2015-01-20', '21:29:00', 1, '', 'Abhishek Chandra', 'To participate in the interview process of EFICOR.', 'Pending', 1, NULL, '', '', '', '', 0, '', 'Abhishek Chandra', '2015-01-21 14:14:16', '0000-00-00 00:00:00'),
(511, 29, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-27', '', '2015-01-27', '', 1, '1', 'Rajesh Balani', 'Out station with family', 'Approved', 1, 0, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2015-01-21 17:33:41', '2015-01-23 17:05:11'),
(512, 9, 2, 1, 1, 'Noida', 'Kolkata-Rajnagar-Suri', '2015-02-13', '', '', '2015-02-12', '00:00:00', '2015-02-20', '06:00:00', 9, '', 'Lalatendu Samantasinghar', 'Financial Monitoring of TSRD Tapan,Rajnagar,Kolkata & DRCSC,', 'Approved', 1, 3, 'Approved', 'Kindly mention the Co.and who would be responsible for your work kindly assign it', '..', '', 0, '', 'admin', '2015-01-21 17:34:51', '2015-01-21 17:47:49'),
(513, 29, 2, 1, 1, 'New Delhi', 'Nagpur', '2015-02-12', '12000', '', '2015-02-08', '08:00:00', '2015-02-11', '23:00:00', 4, '', 'Rajesh Balani', 'Finance Evaluation of NCCI/CSA. ICCo assignment.', 'Approved', 1, 3, 'Approved', 'ok', '..', '', 0, '', 'admin', '2015-01-22 11:00:02', '2015-01-23 17:12:25'),
(514, 7, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-30', '', '2015-01-30', '', 1, '1', 'Aarti Sharma', 'Personal Reason', 'Approved', 1, 0, 'Approved', 'ok', '..', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'admin', '2015-01-22 16:19:55', '2015-01-23 17:05:30'),
(515, 3, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-30', '', '2015-01-30', '', 0.5, '1', 'Anuradha Singh', 'Going out of  station', 'Pending', 1, NULL, '', '', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Anuradha Singh', '2015-01-23 17:01:25', '0000-00-00 00:00:00'),
(516, 5, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-29', '', '2015-01-29', '', 0.5, '1', 'Renu Arora', 'Have to go somewhere', 'Pending', 1, NULL, '', '', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Renu Arora', '2015-01-27 13:02:32', '0000-00-00 00:00:00'),
(517, 5, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-01-02', '', '2015-01-02', '', 1, '1', 'Renu Arora', 'testy', 'Pending', 1, NULL, '', '', '', '', 0, '', 'Renu Arora', '2015-01-29 04:25:35', '0000-00-00 00:00:00'),
(518, 30, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-03-06', '', '2015-03-09', '', 1, '1', 'Dheeraj Moulekhi', 'test', '0', 1, NULL, '', '', '', '', 0, '', 'admin', '2015-03-04 08:33:37', '0000-00-00 00:00:00'),
(519, 5, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-03-13', '', '2015-03-16', '', 2, '1', 'Renu Arora', '11111', 'Pending', 1, NULL, '', '', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Renu Arora', '2015-03-16 11:19:24', '0000-00-00 00:00:00'),
(520, 5, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-03-17', '', '2015-03-23', '', 7, '1', 'Renu Arora', '7 days leave', 'Pending', 1, NULL, '', '', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Renu Arora', '2015-03-17 14:24:26', '0000-00-00 00:00:00'),
(521, 5, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-03-27', '', '2015-03-27', '', 1, '11', 'Renu Arora', '1 day leave', 'Pending', 1, NULL, '', '', '', '', 1, 'Application has not applied as per the policy<br>Maternity Leave type applied 30 working days in advance.', 'Renu Arora', '2015-03-17 14:25:15', '0000-00-00 00:00:00'),
(522, 5, 1, 0, 0, '', '', '0000-00-00', '', '2015', '2015-04-16', '', '2015-04-22', '', 9, '1', 'Renu Arora', 'test', 'Pending', 1, NULL, '', '', '', '', 1, 'Application has not applied as per the policy<br>If leave type Causal Leave, Application has to be applied within 2 days of end date.', 'Renu Arora', '2015-04-12 12:00:55', '0000-00-00 00:00:00'),
(527, 7, 0, 0, 0, '', '', '0000-00-00', '', '2015', '2015-05-19', '', '2015-05-21', '', 9, '1', 'Aarti Sharma', 'ABC', 'Approved', 0, NULL, '', '', '', '', 0, '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leavetypes`
--

CREATE TABLE IF NOT EXISTS `leavetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `leavetypes`
--

INSERT INTO `leavetypes` (`id`, `leave_type`) VALUES
(1, 'Causal Leave'),
(2, 'Earned Leave'),
(3, 'Loss Of Pay'),
(11, 'Maternity Leave'),
(12, 'Paternity Leave');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`) VALUES
(6, 'NOIDA'),
(7, 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(24) NOT NULL,
  `menu_parent` tinyint(4) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `sequence` varchar(255) DEFAULT '',
  `icon` varchar(1024) DEFAULT NULL COMMENT 'For Menu Image.',
  `link` varchar(1024) DEFAULT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) DEFAULT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `menu_parent`, `alias`, `sequence`, `icon`, `link`, `type`, `published`, `status`) VALUES
(1, 'Home', 0, 'home', '', '', '', '', 1, 1),
(2, 'Address Book', 0, 'address_book', '', '', '', '', 1, 1),
(3, 'HR', 0, 'hr', '', '', '', '', 1, 1),
(4, 'Staff List', 3, 'staff_list', '', '', '', '', 1, 1),
(5, 'Add Staff', 3, 'staff_list', '', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `policyleaves`
--

CREATE TABLE IF NOT EXISTS `policyleaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leavetype_id` int(11) NOT NULL,
  `include_holidays` varchar(50) NOT NULL,
  `include_weekly_off` varchar(50) NOT NULL,
  `club_with_other_leave` varchar(50) NOT NULL,
  `no_of_days_to_apply_in_advance` varchar(50) NOT NULL,
  `no_of_days_after_end_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `policyleaves`
--

INSERT INTO `policyleaves` (`id`, `leavetype_id`, `include_holidays`, `include_weekly_off`, `club_with_other_leave`, `no_of_days_to_apply_in_advance`, `no_of_days_after_end_date`) VALUES
(3, 1, 'Y', 'Y', 'Y', 'N', '2'),
(4, 2, 'Y', 'Y', 'Y', '15', 'N'),
(5, 3, 'Y', 'Y', 'Y', 'N', '2'),
(6, 4, 'Y', 'Y', 'Y', '15', 'N'),
(7, 5, 'Y', 'Y', 'Y', '15', 'N'),
(8, 11, 'Y', 'Y', 'Y', '30', 'N'),
(9, 12, 'Y', 'Y', 'Y', '30', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `config_name`, `value`, `description`, `sort_order`, `status`) VALUES
(1, 'per_page', '25', 'Display number of records on a page.', 7, 1),
(4, 'cpa_invoice_prefix', 'CPA/2013-14/', 'cpa invoice prefix', 6, 1),
(5, 'fmsf_invoice_prefix', 'FMSF/2013-14/', 'Fmsf Invoice prefix', 5, 1),
(6, 'admin_email', 'anuradha.singh@fmsfindia.org', 'Email', 1, 1),
(8, 'library_admin_email', 'sujata.samal@fmsfindia.org', 'Library Email', 8, 1),
(9, 'library_books_reminder_msg', 'You have not yet returned the book, issued to you. Please return ASAP.\n', 'Book Reminder Message', 9, 1),
(10, 'equipment_admin_email', 'renu.arora@fmsfindia.org', 'Equipment Email', 10, 1),
(11, 'equipment_reminder_msg', 'You have not yet returned the following Equipment. Please return it ASAP.', 'Equipment reminder Message.', 11, 1),
(12, 'order_admin_email', 'sujata.samal@fmsfindia.org', 'order admin mail.', 12, 1),
(13, 'order_reminder_msg', 'The following clients have not paid for the publications yet.', 'Publication Payment Reminder Message.', 13, 1),
(16, 'equipment_request_msg', 'There is a request for equipment from an Employee. Please login and approve the request.', 'Message sent to Equipment Admin on request by staff', 16, 1),
(17, 'equipment_approved_msg', 'Your request for following equipment has been updated.', 'Message to Employee on approval / rejection by Admin.', 17, 1),
(18, 'hr_email', 'anuradha.singh@fmsfindia.org', '', 18, 1),
(19, 'staff_welcome_message', 'Your Login information is given below.\n<br><br>\n[>LOGIN INFO<]\n<br>\nSystem Administrator,', '', 19, 1),
(20, 'modification_order_days', '30', 'Allow modification of order for specified time', 20, 1),
(21, 'modification_payments_days', '20', 'Allow modification of payments for specified time.', 21, 1),
(22, 'hhjjkk', '67', '', 22, 1),
(23, 'New Settings Default', '345', 'Default setting', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staffdesignations`
--

CREATE TABLE IF NOT EXISTS `staffdesignations` (
  `growth_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `level_status` smallint(3) NOT NULL,
  `feedback` text NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`growth_id`),
  KEY `staff_id` (`staff_id`),
  KEY `designation_id` (`designation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `staffdesignations`
--

INSERT INTO `staffdesignations` (`growth_id`, `staff_id`, `designation_id`, `from_date`, `to_date`, `level_status`, `feedback`, `updated_by`, `created_date`, `updated_date`) VALUES
(1, 2, 9, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-08-29 15:10:17', '2013-08-29 15:10:51'),
(2, 4, 10, '0000-00-00', '0000-00-00', 1, '', 'admin', '2013-09-02 10:17:11', '2013-09-02 10:17:23'),
(3, 3, 11, '0000-00-00', '0000-00-00', 1, '', 'admin', '2013-09-02 10:18:25', '0000-00-00 00:00:00'),
(4, 1, 12, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 10:18:46', '0000-00-00 00:00:00'),
(5, 5, 16, '0000-00-00', '0000-00-00', 1, '', 'admin', '2013-09-02 10:23:50', '0000-00-00 00:00:00'),
(6, 6, 12, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 10:35:29', '0000-00-00 00:00:00'),
(7, 7, 13, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 10:56:57', '0000-00-00 00:00:00'),
(8, 8, 13, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 10:58:53', '0000-00-00 00:00:00'),
(9, 9, 17, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 11:11:54', '0000-00-00 00:00:00'),
(10, 17, 15, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 11:41:17', '0000-00-00 00:00:00'),
(11, 16, 18, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 11:41:34', '0000-00-00 00:00:00'),
(12, 15, 19, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 11:42:03', '0000-00-00 00:00:00'),
(13, 14, 19, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 11:42:23', '0000-00-00 00:00:00'),
(14, 13, 20, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 11:44:02', '0000-00-00 00:00:00'),
(15, 12, 24, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 11:44:36', '0000-00-00 00:00:00'),
(16, 11, 14, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 11:45:09', '0000-00-00 00:00:00'),
(17, 10, 14, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-02 11:45:28', '0000-00-00 00:00:00'),
(18, 18, 22, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-27 06:54:25', '0000-00-00 00:00:00'),
(19, 19, 21, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-09-27 08:17:55', '0000-00-00 00:00:00'),
(20, 20, 22, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-10-09 11:10:42', '0000-00-00 00:00:00'),
(21, 21, 21, '0000-00-00', '0000-00-00', 0, '', 'admin', '2013-10-15 05:32:00', '0000-00-00 00:00:00'),
(22, 24, 15, '0000-00-00', '0000-00-00', 3, '', 'admin', '2014-01-20 16:12:54', '0000-00-00 00:00:00'),
(23, 25, 15, '0000-00-00', '0000-00-00', 3, '', 'admin', '2014-01-20 16:34:19', '0000-00-00 00:00:00'),
(24, 26, 15, '0000-00-00', '0000-00-00', 0, '', 'admin', '2014-01-20 16:40:40', '0000-00-00 00:00:00'),
(25, 27, 15, '0000-00-00', '0000-00-00', 0, '', 'admin', '2014-02-03 15:33:30', '0000-00-00 00:00:00'),
(26, 28, 21, '0000-00-00', '0000-00-00', 3, '', 'admin', '2014-02-13 13:51:42', '0000-00-00 00:00:00'),
(27, 29, 24, '0000-00-00', '0000-00-00', 0, '', 'admin', '2014-06-03 16:53:05', '2014-06-03 16:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE IF NOT EXISTS `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(250) NOT NULL,
  `member_id` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `joing_date` date NOT NULL,
  `terminate_date` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `cv` varchar(50) NOT NULL,
  `staff_attach` varchar(250) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `brief_profile` text NOT NULL,
  `company_id` int(3) NOT NULL,
  `employee_status` int(11) NOT NULL,
  `employeetype_id` int(11) NOT NULL,
  `earned_leaves` int(11) NOT NULL,
  `casual_leaves` int(11) NOT NULL,
  `loss_of_pay` int(11) NOT NULL,
  `maternity_leave` int(11) NOT NULL,
  `paternity_leave` int(11) NOT NULL,
  `ppf_ac_no` varchar(250) NOT NULL,
  `ppf_post_off` varchar(250) NOT NULL,
  `location_id` int(11) NOT NULL,
  `approving_authority` tinyint(3) NOT NULL,
  `reporting_authority` tinyint(3) NOT NULL,
  `total_work_report` tinyint(3) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `employeetype_id` (`employeetype_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `staff_name`, `member_id`, `dob`, `joing_date`, `terminate_date`, `email`, `password`, `photo`, `cv`, `staff_attach`, `address`, `city`, `state`, `pincode`, `phone`, `brief_profile`, `company_id`, `employee_status`, `employeetype_id`, `earned_leaves`, `casual_leaves`, `loss_of_pay`, `maternity_leave`, `paternity_leave`, `ppf_ac_no`, `ppf_post_off`, `location_id`, `approving_authority`, `reporting_authority`, `total_work_report`, `updated_by`, `created_date`, `updated_date`) VALUES
(1, 'Prabhat Kumar', 'C012', '1977-04-12', '2009-06-22', '0000-00-00', 'prabhat.kumar@cpaindia.in', '12345', '', '', '', 'T1-703, Parsvnath Estate, Sector Omega 1', 'GREATER NOIDA', 'Uttar Pradesh', 201306, '9650106196', 'Master of Finance & Control with 9 years of experiance', 2, 1, 1, 0, 0, 0, 0, 0, '315254', '', 6, 4, 4, 2, 'admin', '2013-08-29 14:53:21', '2014-12-04 11:55:54'),
(2, 'Sanjay Patra', 'F001', '1965-12-23', '1999-02-01', '0000-00-00', 'sanjay.patra@fmsfindia.org', '12345', '1775971359.jpg', '', '77222571.doc', '804, Devika apartments, 16, Vaishali, Sector 4, Dist. Ghaziabad', 'Vaishali', 'UP', 201012, '9810286745', '', 1, 1, 3, 0, 0, 0, 0, 0, '307150', '', 6, 3, 3, 2, 'admin', '2013-08-29 15:08:13', '2013-10-16 09:41:00'),
(3, 'Anuradha Singh', 'F003', '1971-02-22', '1994-12-05', '0000-00-00', 'anuradha.singh@fmsfindia.org', '12345', '1362363416.jpg', '', '', '417, Tower 3, Ahinsa Khand, Aashiana Upvan,  Ghaziabad', 'Indirapuram,', 'UP', 0, '9910412676', '', 1, 1, 3, 0, 0, 0, 0, 0, '304900', '', 6, 2, 2, 2, 'admin', '2013-08-29 15:14:48', '2013-10-16 09:41:34'),
(4, 'Sandeep Sharma', 'F008', '1981-04-09', '2005-11-01', '0000-00-00', 'sandeep.sharma@fmsfindia.org', '12345', '1506233147.gif', '', '', 'Accountability House, A-5, Sector 26, NOIDA,', 'NOIDA', 'UP', 201301, '9999768355', '', 1, 1, 3, 0, 0, 0, 0, 0, '312575', '', 6, 2, 2, 2, 'admin', '2013-08-29 15:36:53', '2013-10-16 09:41:58'),
(5, 'Renu Arora', 'F005', '1978-09-07', '2002-05-15', '0000-00-00', 'renu.arora@fmsfindia.org', '12345', '1829685230.gif', '', '', 'T1-1207A, 13th Floor, Parsvnath Majestic, Indrapuram, Opp. Shipra Mall,', 'Ghaziabad', 'Uttar Pradesh', 201010, '9891652346', '', 1, 1, 3, 0, 0, 0, 0, 0, '310530', 'Sarojini nagar', 6, 4, 4, 4, 'admin', '2013-09-02 10:22:27', '2014-08-29 16:05:37'),
(6, 'Hari Krishna Pasupuleti', 'F011', '1976-03-25', '2009-06-22', '0000-00-00', 'hari.pasupuleti@fmsfindia.org', '12345', '601866562.jpg', '', '', '2nd Floor, B-41, Sector -20, NOIDA - 201301', 'NOIDA', 'Uttar Pradesh', 201301, '9716444774', '', 1, 2, 3, 0, 0, 0, 0, 0, '315253', 'Sarojini Nagar', 6, 4, 4, 2, 'admin', '2013-09-02 10:35:15', '2014-01-20 14:30:52'),
(7, 'Aarti Sharma', 'F010', '1978-09-02', '2006-03-01', '0000-00-00', 'aarti.sharma@fmsfindia.org', '12345', '1256023637.gif', '', '', 'C-59 D, Rajat Vihar, Sector-62, Noida-201301', 'NOIDA', 'Uttar Pradesh', 201301, '9871209022', '', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 4, 'admin', '2013-09-02 10:55:32', '2014-01-20 14:13:49'),
(8, 'Sapna Singh', 'F009', '1983-07-04', '2006-02-15', '0000-00-00', 'sapna.singh@fmsfindia.org', '12345', '867590744.gif', '', '', 'C-905, HOMES 121 Apartments Sector 121', 'NOIDA', 'Uttar Pradesh', 201119, '9818981574', '', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 4, 'admin', '2013-09-02 10:58:47', '2014-06-24 09:48:51'),
(9, 'Lalatendu Samantasinghar', 'F013', '1977-09-13', '2010-10-05', '0000-00-00', 'lalatendu.samanta@fmsfindia.org', '12345', '1840901183.gif', '', '', 'C/o A Chandra, B-102, Sector 26', 'NOIDA', 'Uttar Pradesh', 201301, '9716593455', '', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 3, 3, 4, 'admin', '2013-09-02 11:11:04', '2013-10-23 10:46:39'),
(10, 'Bushra Khan', 'F014', '1985-12-21', '2011-04-05', '0000-00-00', 'bushra.khan@fmsfindia.org', '12345', '317748714.jpg', '', '91588725.docx', 'B-106, Sector 26', 'NOIDA', 'Uttar Pradesh', 201301, '9990400137', '', 1, 2, 3, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 4, 'admin', '2013-09-02 11:20:30', '2014-05-23 12:49:53'),
(11, 'Abhishek Chandra', 'F016', '1981-10-03', '2011-06-01', '0000-00-00', 'abhishek.chandra@fmsfindia.org', '12345', '113961770.gif', '', '', 'E 166, 1st Floor, Sector 27', 'NOIDA', 'Uttar Pradesh', 201301, '9212384153', '', 1, 1, 1, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 4, 'admin', '2013-09-02 11:22:16', '2014-01-20 14:29:51'),
(12, 'Maneesh Jain', 'C015', '1976-11-11', '2011-09-15', '0000-00-00', 'maneesh.jain@cpaindia.in', '12345', '', '', '2108395418.docx', '2208, Kucha Alam Chand, Kinari Bazar, Chandni Chowk', 'New Delhi', 'New Delhi', 110006, '9873260695', '', 2, 2, 3, 0, 0, 0, 0, 0, '', '', 6, 1, 1, 4, 'admin', '2013-09-02 11:24:03', '2014-05-23 12:48:54'),
(13, 'Deepanshu Srivastava', 'F017', '1987-09-10', '2012-05-01', '0000-00-00', 'deepanshu.srivastava@cpaservices.in', '12345', '', '', '1186913274.doc', 'B283, Sector 20', 'NOIDA', 'Uttar Pradesh', 201301, '9953919903', '', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 12, 'admin', '2013-09-02 11:29:10', '2014-12-15 10:23:52'),
(14, 'Sritika Singh', 'F018', '1987-10-19', '2012-10-09', '0000-00-00', 'sritika.singh@fmsfindia.org', '12345', '1099034867.jpg', '', '650140430.pdf', 'E-38, Ground Floor, Sector 20', 'NOIDA', 'Uttar Pradesh', 201301, '8447767669', '', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 2, 2, 12, 'admin', '2013-09-02 11:31:11', '2014-02-13 15:26:09'),
(15, 'Rashmi Sharon', 'F019', '1990-08-12', '2012-10-17', '0000-00-00', 'rashmi.sharon@fmsfindia.org', '12345', '837406494.gif', '', '1503625751.pdf', 'E-38, Ground Floor, Sector 20', 'NOIDA', 'Uttar Pradesh', 201301, '8802591953', '', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 12, 'admin', '2013-09-02 11:33:35', '2014-01-20 14:15:37'),
(16, 'Puran Jha', 'C020', '1987-01-07', '2012-10-17', '0000-00-00', 'puran.jha@cpaservices.in', '12345', '1329397185.jpg', '', '', '24-A, Pocket C, Mayur Vihar, Phase – II', 'New Delhi', 'New Delhi', 110091, '9582096120', '', 2, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 12, 'admin', '2013-09-02 11:35:31', '2014-12-15 10:24:44'),
(17, 'Sujata Samal', 'F021', '1975-07-07', '2013-04-01', '0000-00-00', 'sujata.samal@fmsfindia.org', '12345', '', '', '1161555425.doc', 'C-21, Kakateeya Apartment, Plot No-86, I.P Extension, Patparganj,', 'New Delhi', 'New Delhi', 110092, '9891203490 / 011-22234247', '', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 2, 2, 12, 'admin', '2013-09-02 11:37:46', '2013-10-17 04:38:44'),
(18, 'Dharmendra Singh Rawat', 'F006', '1969-12-25', '0003-09-15', '0000-00-00', 'dharmendra.rawat@fmsfindia.org', '12345', '', '', '', 'Sardarpur colony, B-224 Sector 44', 'Noida', 'Uttar Pradesh', 0, '9818428971', 'Office Assistant', 1, 1, 1, 0, 0, 0, 0, 0, '', 'Sarojini Nagar', 6, 3, 3, 0, 'admin', '2013-09-27 06:38:53', '2014-01-31 14:42:52'),
(19, 'Ram Bahadur', 'F002', '1962-02-02', '0004-03-02', '0000-00-00', 'Ram.Bahadur@fmsfindia.org', '12345', '1763624576.gif', '', '', 'A-5, Sector 26', 'Noida', 'Uttar Pradesh', 201301, '9871835240', '', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 3, 3, 0, 'admin', '2013-09-27 07:22:08', '2014-02-03 16:00:13'),
(20, 'Rajman Yadav', 'F004', '0003-05-03', '0999-02-08', '0000-00-00', 'rajman.yadav@fmsfindia.org', '12345', '1158527591.gif', '', '', 'G.F.113,Indirapuram, Naya Khand G-B', 'Indirapuram', 'Uttar Pradesh', 0, '9818894533, 8802026208', '', 1, 1, 3, 0, 0, 0, 0, 0, '307173', 'Sarojini Nagar', 6, 3, 3, 12, 'admin', '2013-10-09 11:10:20', '2014-12-24 12:15:22'),
(21, 'Anil Sharma', 'F007', '2069-03-15', '2004-01-22', '0000-00-00', 'anil.sharma@fmsfindia.org', '12345', '', '', '', 'Gali no. 13, Sangam Vihar, Ambedkar Nagar', 'New Delhi', 'Delhi', 110062, '9654562899', 'Care Taker', 1, 1, 1, 0, 0, 0, 0, 0, '312430', 'Sarojini Nagar', 6, 3, 3, 12, 'admin', '2013-10-09 11:24:42', '2013-10-16 09:42:52'),
(22, 'Office Premise CPA', '', '1994-01-01', '1994-01-01', '0000-00-00', 'cpa@cpaindia.in', '12345', '', '', '', 'A-5, Sector 26', 'Noida', 'Uttar Pradesh', 201301, '0120-4773200', 'dummy staff created for location of asset', 2, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 0, 0, 0, 'admin', '2013-10-25 10:21:18', '0000-00-00 00:00:00'),
(23, 'Office Premise FMSF', '', '1994-01-01', '1994-01-01', '0000-00-00', 'fmsf@fmsfindia.org', '12345', '', '', '', 'A-5, Sector 26', 'NOIDA', 'Uttar Pradesh', 201301, '0120-4773200', 'dummy staff entry of location of assets', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 0, 0, 0, 'admin', '2013-10-25 10:23:37', '0000-00-00 00:00:00'),
(24, 'Akrita Bharos', 'F022', '1990-08-28', '2014-01-02', '0000-00-00', 'akrita.bharos@fmsfindia.org', '12345', '', '', '', 'Plot no. 5, Knowledge Park-2,', 'Greater Noida', 'U.P.', 201306, '8826077704', '', 1, 1, 2, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 12, 'admin', '2014-01-20 16:11:45', '2014-02-05 15:37:08'),
(25, 'Divyanshu', 'F023', '1991-05-28', '2014-01-02', '0000-00-00', 'Divyanshu.yadav@fmsfindia.org', '12345', '', '', '', 'House no. 7117,Sector 13, Raja ji Puram', 'Lucknow', 'Uttar Pradesh', 0, '7838131461', '', 1, 1, 2, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 12, 'admin', '2014-01-20 16:33:31', '2014-06-12 14:12:18'),
(26, 'Itti Aggarwal', 'C016', '1985-09-22', '2014-01-20', '0000-00-00', 'itti.aggarwal@cpaservices.in', '12345', '', '', '', '50, Baljeet Nagar,', 'New Delhi', 'New Delhi', 1100008, '9811751671', '', 3, 1, 1, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 12, 'admin', '2014-01-20 16:40:20', '2014-12-15 11:17:46'),
(27, 'S.Bhagyashree', 'F24', '1992-02-11', '2014-02-03', '0000-00-00', 'S.Bhagyashree@fmsfindia.org', '12345', '', '', '', 'LIG 220 Brit Colony Nayapalli', 'Bhubaneswar', 'Odisha', 751012, '8718044306', 'Bhagyashree has completed her MBA (Finance) from XIMJ Jablapur and she has done her B.Com from Daulat Ram College', 1, 1, 2, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 12, 'admin', '2014-02-03 15:32:58', '2014-03-20 11:26:49'),
(28, 'Harpal Singh/Gopal', '', '1979-10-10', '2009-04-12', '0000-00-00', 'gopal@fmsfindia.org', '12345', '', '', '', 'A-35, Sector 8', 'Noida', 'Uttar Pradesh', 0, '9560337238', '', 1, 1, 1, 0, 0, 0, 0, 0, '', '', 6, 3, 3, 0, 'admin', '2014-02-06 14:06:09', '2014-02-13 14:19:42'),
(29, 'Rajesh Balani', '31', '1989-09-06', '2014-06-01', '0000-00-00', 'rajesh.balani@cpaservices.in', '12345', '', '', '', '42/1, 1st Floor, East Patel Nagar', 'New Delhi', 'New Delhi', 110008, '9873240682', '', 2, 1, 2, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 4, 'admin', '2014-06-03 16:52:38', '2014-12-15 10:24:26'),
(30, 'Dheeraj Moulekhi', '', '1988-07-11', '2014-12-01', '0000-00-00', 'dheeraj.moulekhi@cpaservices.in', '12345', '', '', '', 'H.No.108, Sarpanch Ka Wada, Near Lucky Public School', 'West Vinod Nagar, Delhi - 110092', 'Delhi', 0, '8750105409', '', 2, 1, 2, 0, 0, 0, 0, 0, '', '', 6, 4, 4, 12, 'admin', '2014-12-04 10:19:02', '0000-00-00 00:00:00'),
(31, 'Rohit Mehrotra', 'RTY456', '1999-06-07', '2015-04-13', '0000-00-00', 'rohit@gmail.com', '12345', 'staff_ind3_1431780062.jpg', 'staffdoc_Rohit_MehrotraResume_1431780062.docx', '', 'Abc', 'gurgaon', 'haryana', 0, '82850866', '', 1, 1, 3, 0, 0, 0, 0, 0, '', '', 6, 1, 1, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `travelmodes`
--

CREATE TABLE IF NOT EXISTS `travelmodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `travelmodes`
--

INSERT INTO `travelmodes` (`id`, `name`) VALUES
(1, 'Air'),
(2, 'Train'),
(3, 'Bus'),
(4, 'Hired Vehicle'),
(5, 'Own Vehicle');

-- --------------------------------------------------------

--
-- Table structure for table `travelpurposes`
--

CREATE TABLE IF NOT EXISTS `travelpurposes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `travelpurposes`
--

INSERT INTO `travelpurposes` (`id`, `name`) VALUES
(1, 'Consultancy'),
(2, 'Workshop'),
(3, 'Meeting'),
(4, 'Annual Planning'),
(6, 'Project Monitoring');

-- --------------------------------------------------------

--
-- Table structure for table `travelreports`
--

CREATE TABLE IF NOT EXISTS `travelreports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `objective` blob,
  `work_accomplish` blob,
  `additional_info` blob NOT NULL,
  `updated_by` int(4) NOT NULL,
  `created_by` int(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `leave_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `travelreports`
--

INSERT INTO `travelreports` (`id`, `staff_id`, `objective`, `work_accomplish`, `additional_info`, `updated_by`, `created_by`, `created_date`, `leave_id`) VALUES
(1, 5, 0x74657374696e67, 0x6a686a686868686868686868686868686868686868686868686868686868686868686868686868686868686868686868686868686868680a6b6b6a686a6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6868680a686a67676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767686868, 0x6667676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767, 5, 5, '2014-10-30 11:26:47', 420);

-- --------------------------------------------------------

--
-- Table structure for table `userrights`
--

CREATE TABLE IF NOT EXISTS `userrights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(24) NOT NULL,
  `user_id` tinyint(4) NOT NULL COMMENT 'The display title of the menu item.',
  `status` tinyint(4) NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `userrights`
--

INSERT INTO `userrights` (`id`, `menu_id`, `user_id`, `status`, `modified`) VALUES
(1, '2', 2, 1, '0000-00-00 00:00:00'),
(2, '2,3', 3, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `address_book` smallint(3) NOT NULL,
  `publication` smallint(3) NOT NULL,
  `hr` smallint(3) NOT NULL,
  `books` smallint(3) NOT NULL,
  `equipment` smallint(3) NOT NULL,
  `files` smallint(3) NOT NULL,
  `setting` smallint(3) NOT NULL,
  `hr_setting` smallint(3) NOT NULL,
  `role_id` smallint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `admin_email`, `status`, `address_book`, `publication`, `hr`, `books`, `equipment`, `files`, `setting`, `hr_setting`, `role_id`) VALUES
(1, 'admin', '12345', 'anuradha.singh@fmsfindia.org', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'address', '12345', 'Sritika.singh@fmsfindia.org', 1, 1, 0, 0, 0, 0, 0, 0, 0, 2),
(3, 'publication', '12345', 'sujata.samal@fmsfindia.org', 1, 1, 1, 0, 1, 0, 0, 0, 0, 3),
(4, 'library', '12345', 'renu.arora@fmsfindia.org', 1, 0, 0, 0, 1, 0, 0, 0, 0, 4),
(5, 'equipment', '12345', 'renu.arora@fmsfindia.org', 1, 0, 0, 0, 0, 1, 0, 0, 0, 5),
(6, 'hr', '12345', 'anuradha.singh@fmsfindia.org', 1, 0, 0, 1, 0, 0, 0, 0, 0, 6),
(7, 'file', '12345', 'sapna.singh@fmsfindia.org', 1, 1, 0, 0, 0, 0, 1, 0, 0, 7),
(8, 'addressbook', '12345', 'anuradha.singh@fmsfindia.org', 1, 1, 0, 0, 0, 0, 0, 0, 0, 8);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
