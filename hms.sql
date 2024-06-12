-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 06:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'sarwar', '1234561', '14/05/2024 09:17 PM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Orthopedics', 5, 5, 1500, '2024-05-16', '10:00 AM', '2024-05-14 15:54:30', 1, 0, '2024-05-14 15:59:43'),
(5, 'ENT', 4, 5, 1200, '2024-05-26', '10:45 AM', '2024-05-29 14:25:15', 1, 1, NULL),
(6, 'Orthopedics', 21, 6, 600, '2024-06-08', '6:00 PM', '2024-06-11 11:53:30', 1, 1, NULL),
(7, 'ENT', 22, 6, 700, '2024-06-09', '1:00 PM', '2024-06-11 11:53:58', 1, 1, NULL),
(8, 'Internal Medicine', 6, 6, 1000, '2024-06-18', '8:00 AM', '2024-06-11 11:54:21', 1, 1, NULL),
(9, 'General Surgery', 11, 6, 1500, '2024-06-19', '3:00 PM', '2024-06-11 11:54:46', 1, 1, NULL),
(10, 'Orthopedics', 5, 7, 1500, '2024-06-14', '4:00 PM', '2024-06-11 11:56:59', 1, 1, NULL),
(11, 'Orthopedics', 21, 7, 600, '2024-06-09', '10:00 PM', '2024-06-11 11:57:15', 1, 1, NULL),
(12, 'ENT', 22, 7, 700, '2024-06-20', '8:00 AM', '2024-06-11 11:57:32', 1, 1, NULL),
(13, 'Orthopedics', 21, 8, 600, '2024-06-26', '9:00 PM', '2024-06-11 11:59:10', 1, 1, NULL),
(14, 'Neurologists', 20, 8, 700, '2024-07-03', '10:00 PM', '2024-06-11 11:59:26', 1, 1, NULL),
(15, 'Orthopedics', 5, 9, 1500, '2024-06-28', '2:00 PM', '2024-06-11 12:01:02', 1, 1, NULL),
(16, 'ENT', 4, 9, 1200, '2024-06-28', '3:15 PM', '2024-06-11 12:01:13', 1, 1, NULL),
(17, 'Orthopedics', 5, 5, 1500, '2024-06-28', '2:45 PM', '2024-06-11 12:01:59', 1, 1, NULL),
(18, 'Orthopedics', 21, 5, 600, '2024-06-19', '7:00 PM', '2024-06-11 12:02:10', 1, 1, NULL),
(19, 'Internal Medicine', 6, 5, 1000, '2024-06-27', '8:00 PM', '2024-06-11 12:02:20', 1, 1, NULL),
(20, 'General Surgery', 23, 5, 900, '2024-06-28', '2:15 PM', '2024-06-11 12:02:33', 1, 1, NULL),
(21, 'ENT', 15, 5, 1500, '2024-06-29', '5:30 PM', '2024-06-11 12:02:48', 1, 1, NULL),
(22, 'Dental Care', 16, 5, 800, '2024-06-29', '5:45 PM', '2024-06-11 12:03:01', 1, 1, NULL),
(23, 'Dermatology', 8, 5, 1300, '2024-07-06', '7:15 PM', '2024-06-11 12:03:21', 1, 1, NULL),
(24, 'Orthopedics', 5, 9, 1500, '2024-06-14', '7:00 PM', '2024-06-11 12:13:40', 1, 1, NULL),
(25, 'ENT', 4, 10, 1200, '2024-06-12', '9:45 PM', '2024-06-12 15:38:02', 1, 1, NULL),
(26, 'ENT', 22, 10, 700, '2024-06-17', '10:00 PM', '2024-06-12 15:38:21', 1, 1, NULL),
(27, 'Orthopedics', 21, 10, 600, '2024-06-21', '9:00 PM', '2024-06-12 15:38:43', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(4, 'ENT', 'Dr. Muntasir Mahbub', 'h: 45/c abc  dhaka', '1200', 154588154, 'Mahbub@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-05-14 15:44:53', NULL),
(5, 'Orthopedics', 'Dr. Md. Mizanur Rahman', 'H: 565/B abc dhaka', '1500', 1545543154, 'mr@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-05-14 15:47:08', NULL),
(6, 'Internal Medicine', 'Dr. S. M. Abu Zafar', 'dhaka', '1000', 123454565, 'zafar@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:24:49', NULL),
(7, 'Obstetrics and Gynecology', 'Dr. B. K. Das', 'dhaka', '1100', 154588156, 'das@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:26:48', NULL),
(8, 'Dermatology', 'Dr. Fahmida Zabeen', 'dhaka', '1300', 154588185, 'zabeen@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:28:11', NULL),
(9, 'Pediatrics', 'Dr. Md. Sadiqul Islam', 'dhaka', '1400', 154584568, 'sadiqul@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:29:12', NULL),
(10, 'Radiology', 'Dr. Borhan Uddin Ahmad', 'dhaka', '900', 154588778, 'borhan@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:30:20', NULL),
(11, 'General Surgery', 'Dr. Nikhat Shahla Afsar', 'dhaka', '1500', 154588777, 'afsar@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:31:20', NULL),
(12, 'Ophthalmology', 'Dr. Abdullah Al Mamun', 'Chapai Nawabganj', '800', 15458888888, 'mamun@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:32:37', NULL),
(13, 'Anesthesia', 'Dr. K.F.M. Ayaz', 'dhaka', '1000', 154587879, 'ayaz@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:33:35', NULL),
(14, 'Pathology', 'Dr. Anita Marium Islam', 'dhaka', '1200', 15458815861, 'anita@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:34:35', NULL),
(15, 'ENT', 'Dr. Md. Mukhlesur Rahman', 'dhaka', '1500', 154588123, 'm.rahman@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:35:58', NULL),
(16, 'Dental Care', 'Dr. Md. Sazedul Islam Sazed', 'dhaka', '800', 1723636610, 'sazed@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:37:03', NULL),
(17, 'Dermatologists', 'Dr. Md. Badruddoza', 'dhaka', '700', 154588888, 'badruddoza@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:37:56', NULL),
(18, 'Endocrinologists', 'Dr. Noor Uddin Zahed', 'dhaka', '700', 1723636888, 'noor@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:38:49', NULL),
(19, 'Endocrinologists', 'Dr. Tarit Kanti Ghosh', 'dhaka', '600', 1723636666, 'ghosh@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:39:52', NULL),
(20, 'Neurologists', 'Dr. Shihab Uzzaman', 'dhaka', '700', 17236367847, 'shihab@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:40:55', NULL),
(21, 'Orthopedics', 'Dr. Nadia Jannat', 'dhaka', '600', 1545845621, 'nadia@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:41:52', NULL),
(22, 'ENT', 'Dr. Pangkaj Paul', 'dhaka', '700', 172363685845, 'paul@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:42:51', NULL),
(23, 'General Surgery', 'Dr. Ashish Kumar Chowdhury', 'dhaka', '900', 1723636664, 'ashis@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:43:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 5, 'mr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-14 15:47:57', '14-05-2024 09:21:07 PM', 1),
(28, 5, 'mr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-14 15:55:37', '14-05-2024 09:27:21 PM', 1),
(29, 5, 'mr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-29 14:23:25', '29-05-2024 07:55:45 PM', 1),
(30, 4, 'Mahbub@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-29 14:26:20', NULL, 1),
(31, 5, 'mr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 11:45:38', '11-06-2024 05:22:15 PM', 1),
(32, NULL, 'mr', 0x3a3a3100000000000000000000000000, '2024-06-11 12:09:26', NULL, 0),
(33, 5, 'mr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 12:09:35', '11-06-2024 05:42:18 PM', 1),
(34, 5, 'mr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 12:13:58', '11-06-2024 05:44:20 PM', 1),
(35, 5, 'mr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-12 15:39:08', '12-06-2024 09:09:24 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2024-05-15 18:09:46', NULL),
(2, 'Internal Medicine', '2024-05-14 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2024-05-16 18:10:18', NULL),
(4, 'Dermatology', '2024-05-17 18:10:28', NULL),
(5, 'Pediatrics', '2024-05-18 18:10:37', NULL),
(6, 'Radiology', '2024-05-18 18:10:46', NULL),
(7, 'General Surgery', '2024-05-14 18:10:56', NULL),
(8, 'Ophthalmology', '2024-05-14 18:11:03', NULL),
(9, 'Anesthesia', '2024-05-16 18:11:15', NULL),
(10, 'Pathology', '2024-05-15 18:11:22', NULL),
(11, 'ENT', '2024-05-14 18:11:30', NULL),
(12, 'Dental Care', '2024-05-17 18:11:39', NULL),
(13, 'Dermatologists', '2024-05-18 18:12:02', NULL),
(14, 'Endocrinologists', '2024-05-15 18:12:10', NULL),
(15, 'Neurologists', '2024-05-15 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(3, 'sarwar.contact form', 'scf@gmail.com', 1545785246, 'Hi this is test massage', '2024-05-14 15:59:03', 'noted', '2024-05-14 16:00:54', 1),
(4, 'Me Test', 'test@gmail.com', 1767101801, 'Hello This is test Massage !', '2024-06-11 12:04:37', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2024-05-15 13:19:41'),
(2, 2, '80/120', 'normal', '95 kg', '98 F', 'Nothing ', '2024-05-14 15:50:02'),
(3, 3, '80/120', 'normal', '100 kg', '98 F', 'over Weight all good', '2024-06-11 12:10:45'),
(4, 4, '80/120', '10.5/21.3', '80kg', '98 F', 'Blood sugar high', '2024-06-11 12:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2024-05-14 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'H: 478/c South Pikepara, Kallaynput notun bazar,Mirpur-1,Dhaka-1216 Bangaldesh.<div><br></div>', 'infoHMS@gmail.com', 176710180, '2024-05-14 15:36:23', '8 Am To 10 Pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Sarwar Jahan', 1231231230, 'sj@gmail.com', 'male', 'Dhaka,Bangladesh', 25, 'NA', '2024-05-15 13:18:31', NULL),
(2, 5, 'sarwar', 153258974, 's@gmail.com', 'male', 'H:25/E abcd Dhaka', 25, 'no', '2024-05-14 15:49:06', NULL),
(3, 5, 'Marcus', 153258958, 'marcus@gmail.com', 'male', 'khulna', 25, 'no', '2024-06-11 11:51:13', NULL),
(4, 5, 'James', 153258778, 'james@gmail.com', 'male', 'dhaka', 60, 'ENT Problam', '2024-06-11 11:52:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(8, 5, 'sjm@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-14 15:53:51', '14-05-2024 09:24:59 PM', 1),
(9, 5, 'sjm@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-14 15:55:15', NULL, 1),
(10, NULL, 'sjm@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-29 14:24:18', NULL, 0),
(11, 5, 'sjm@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-29 14:24:26', NULL, 1),
(12, 6, 'lisa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 11:53:13', '11-06-2024 05:25:10 PM', 1),
(13, 7, 'juanita@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 11:56:45', '11-06-2024 05:27:36 PM', 1),
(14, 8, 'kara@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 11:58:58', '11-06-2024 05:29:33 PM', 1),
(15, 9, 'tomas@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 12:00:49', '11-06-2024 05:31:18 PM', 1),
(16, 5, 'sjm@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 12:01:48', '11-06-2024 05:33:39 PM', 1),
(17, 9, 'tomas@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 12:13:14', '11-06-2024 05:43:44 PM', 1),
(18, 9, 'tomas@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-11 12:14:31', '11-06-2024 05:44:50 PM', 1),
(19, NULL, 'mr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-12 15:36:12', NULL, 0),
(20, 10, 'sara@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-12 15:37:31', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(5, 'sarwar jahan moon', 'mirpur', 'dhaka', 'male', 'sjm@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-05-14 15:53:33', NULL),
(6, 'Lisa', 'mirpur', 'dhaka', 'female', 'lisa@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:52:57', NULL),
(7, 'Juanita', 'mohamodhpur', 'dhaka', 'female', 'juanita@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:56:07', NULL),
(8, 'Kara', 'savar', 'dhaka', 'female', 'kara@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 11:58:43', NULL),
(9, 'Tomas', 'Gazipur', 'dhaka', 'male', 'tomas@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-11 12:00:33', NULL),
(10, 'sara', 'Gazipur', 'dhaka', 'female', 'sara@gmail.com', 'aaa42296669b958c3cee6c0475c8093e', '2024-06-12 15:37:08', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
