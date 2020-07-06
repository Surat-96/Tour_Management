-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2018 at 02:55 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '237514b682c1483d57c76d01751a069b', '2018-11-01 15:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, 1, 'banmou@gmail.com', '2018-09-05', '2018-09-18', 'Need ac hotel with minimum cost & well fooding system.', '2018-09-27 16:31:50', 1, '', '2018-10-21 13:58:46'),
(13, 4, 'bansur@gmail.com', '2018-11-08', '2018-11-20', 'Need ac hotel with minimum cost & well fooding system.', '2018-10-23 16:18:04', 1, NULL, '2018-10-23 16:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Surat', 'demo@demo.com', '3326224305', 'booking', 'how to booking in this site.', '2018-10-21 14:09:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Issue` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, 'bansur@gmail.com', 'Refund', 'refund money as soon as possible..', '2018-10-21 14:01:48', 'received..', '2018-10-21 14:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																														<h4><div style=\"text-align: center;\"><strong style=\"font-family: &quot;times new roman&quot;; color: inherit; font-size: x-large;\"><font color=\"#990000\" style=\"text-decoration-line: underline;\">ACCEPTANCE OF TERMS</font></strong></div><div style=\"text-align: center;\"><strong style=\"font-family: &quot;times new roman&quot;; color: inherit; font-size: x-large;\"><font color=\"#990000\" style=\"text-decoration-line: underline;\"><br></font></strong></div><span style=\"font-family: &quot;times new roman&quot;;\"><div style=\"text-align: center;\"><span style=\"font-size: x-large; color: inherit;\">Your access to and use of the Service is conditioned on your&nbsp;acceptance of and compliance with these Terms.&nbsp;</span></div><span style=\"font-size: x-large;\"><div style=\"text-align: center;\"><span style=\"color: inherit;\">These Terms apply&nbsp;to all visitors, users and others who access or use the Service.</span></div></span><span style=\"font-size: x-large;\"><div style=\"text-align: center;\"><span style=\"color: inherit;\">By accessing or using the Service you agree to be bound by these&nbsp;Terms.&nbsp;</span></div></span><span style=\"font-size: x-large;\"><div style=\"text-align: center;\"><span style=\"color: inherit;\">If you disagree with any part of the terms then you may not&nbsp;access the Service.</span></div></span></span></h4>\r\n										\r\n										\r\n										'),
(2, 'Privacy', '										<h4></h4><h4 style=\"text-align: center;\"><span style=\"font-family: &quot;times new roman&quot;;\"><span style=\"font-size: x-large;\"><span style=\"color: inherit;\"><span style=\"text-decoration-line: underline; font-weight: bold;\">Governing Law</span></span></span></span></h4><h4 style=\"text-align: center;\"><span style=\"font-family: &quot;times new roman&quot;;\"><span style=\"font-size: x-large;\"><span style=\"color: inherit;\"><br></span></span><span style=\"font-size: x-large;\"><span style=\"color: inherit;\">These Terms shall be governed and construed in accordance with the laws of India without regard to its conflict of law provisions.<br></span></span><span style=\"font-size: x-large;\"><span style=\"color: inherit;\">Our failure to enforce any right or provision of these Terms will not be considered a waiver of those rights.&nbsp;<br></span></span><span style=\"font-size: x-large;\"><span style=\"color: inherit;\">If any provision of these Terms is held to be invalid or unenforceable by a court, the remaining<br></span></span><span style=\"font-size: x-large;\"><span style=\"color: inherit;\">provisions of these Terms will remain in effect.&nbsp;<br></span></span><span style=\"font-size: x-large;\"><span style=\"color: inherit;\">These Terms constitute the entire agreement between us regarding our Service, &amp; supersede &amp; replace any prior agreements we might have between us regarding the Service.</span></span></span></h4><div style=\"text-align: center; \"><br></div>\r\n										\r\n										'),
(3, 'aboutus', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">This is the online tourism information system which is travel for recreational,leisure,family purpose,usually of a limited duration. Tourism is commonly associated with trans-national travel, but may also refer to travel to another location within the same country or internationally. Tourism has numerous tangible and intangible elements. Major tangible elements include transportation, accommodation and other components of a hospitality industry. Major intangible elements relate to the purpose or motivation for becoming a tourist, such as rest, relaxation, the opportunity to meet new people and experience other cultures, or simply to do something different and have an adventure.</span></div>'),
(11, 'contact', '																				<h4 style=\"text-align: center;\"><span style=\"font-size: x-large; font-family: &quot;times new roman&quot;;\"><span style=\"color: rgb(0, 0, 0); text-decoration-line: underline; font-weight: bold;\">Contact Us</span></span></h4><h4 style=\"text-align: justify;\"><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;times new roman&quot;; font-size: x-large;\">If you have any questions about these Terms, please contact us.</span></div><div style=\"text-align: center;\"><span style=\"color: inherit; font-family: &quot;times new roman&quot;; font-size: x-large;\">We reserve the right, at our sole discretion, to modify or replace these Terms at any time.&nbsp;</span></div></h4><h4><span style=\"font-family: &quot;times new roman&quot;;\"><div style=\"text-align: center;\"><span style=\"font-size: x-large; color: inherit;\">If a revision is material we will try to provide at least 30 days notice prior to any new terms taking effect.&nbsp;</span></div><span style=\"font-size: x-large;\"><div style=\"text-align: center;\"><span style=\"color: inherit;\">What constitutes a material change will be determined at our sole discretion.</span></div></span></span></h4>\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Kashmir Circuit', 'Family / Couple Package', 'Pahalgam, Sonmarg, Gulmarg, and Srinagar', 3500, 'Free pickup-drop, Ac hotel, Free wifi', 'Kashmir is a heaven on Earth. Known for its surreal topography, stunning views, colourful culture, and cheerful people, Kashmir is definitely one of the most awe-inspiring places to visit in north India. The stunning Dal Lake in Srinagar, the gorgeous valleys of Sonmarg, the thrilling adventures of skiing at Gulmarg, and the perfect serenity of Pahalgam make a trip to Kashmir replete with happiness.\r\nKey attractions: Dal Lake, Nagin Lake, Mughal Garden, Betab Valley, Strawberry Field, and Apharwat Peak\r\n', 'Kashmir.jpg', '2018-09-27 14:43:48', '2018-10-23 16:03:24'),
(2, 'Dalhousie- A peaceful getaway', 'Family / Couple Package', 'Khajjiar, Dainkund Peak, Kalatop Wildlife Reserve, Panchpula', 2000, 'Free pickup-drop, Ac hotel, Free wifi', 'Dalhousie is a picturesque hill station, nestled in the Himalayas. One of the most invigorating tourist places in north India, it is characterized by lofty mountains, sparkling river, luxuriant valleys, and colonial houses. Its serenity makes it a perfect choice for honeymooners, solo travelers, and photographers.\r\nKey attractions: Chamba, Khajjiar, Dainkund Peak, Kalatop Wild Reserve, Panchpula, and St. Francis Catholic Church\r\n', 'Dalhousie.jpg', '2018-09-27 14:50:07', '2018-10-23 15:35:44'),
(3, 'Kullu and Manali- Hub of adventure', 'Family / Couple Package', 'Hadimba Temple, Maa Sharvari Temple, Nehru Kund, Jogini Falls', 3000, 'Free pickup-drop, Ac hotel, Free wifi', 'Kullu and Manali are the twin tourist places in north India, popular for their luxuriant greenery, surreal topography, invigorating climate, and super thrilling adventure sports. Kullu, located at a distance of 40 km from Manali, is a stunning valley by the Beas whereas Manali is an amazing retreat, immensely popular especially among adventure freaks and honeymoon couples.', 'KuluMnanali.jpg', '2018-10-23 15:40:35', '0000-00-00 00:00:00'),
(4, 'Nainital- A mesmerizing hill station', 'Family / Couple Package', 'Naini Lake, Bhimtal Lake, Snow View Point, Nainital Zoo, Naini Peak ', 4000, 'Free pickup-drop, Ac hotel, Free wifi', 'Nainital is a mesmerising hill station and one of the most popular places to see in north India. This charming destination has developed around a splendid lake. Boating, trekking, and shopping at the Tibetan market of Mall Road are some of the must-do things here.', 'Nainital.jpg', '2018-10-23 15:56:53', '0000-00-00 00:00:00'),
(5, 'Mussoorie- A popular tourist destination', 'Family / Couple Package', 'Jharipani Falls, Mossy Falls, Bhatta Falls, Mussoorie Lake, Lal Tibba, Benog Wildlife Sanctuary', 5000, 'Free pickup-drop, Ac hotel, Free wifi', 'Mussoorie is one of the most visited hill stations of north India, snuggled at the Himalayas. Scenic waterfalls and lofty ranges form the backdrop for some of the most amazing things to do in Mussoorie, such as boating, skating, and horse riding.', 'Mussoorie.jpg', '2018-10-23 16:00:43', '0000-00-00 00:00:00'),
(6, 'Chandigarh- Gateway to the hills', 'Family / Couple Package', 'Golden Tulip, Morni Hills, Kasauli Resort, Solan, Mohali, Moksha Himalaya Spa Resort', 2500, 'Free pickup-drop, Ac hotel, Free wifi', 'Chandigarh is popular amongst all. The city’s charming cityscape, fascinating parks, and amazing museums have, for years, attracted tourists from all over. And being the gateway to the hills of Himachal, it is one of the most preferred tourist places in north India.', 'Chandigarh.jpg', '2018-10-23 16:05:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Moumita Banerjee', '3326224305', 'banmou@gmail.com', 'ec053060d484db930cf6d7d52563b4f8', '2018-09-26 05:40:29', '2018-09-27 14:57:49'),
(2, 'Surat', '3326224305', 'bansur@gmail.com', '4568a803478957719bf3ca27b73ca0cd', '2018-10-21 14:00:27', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
