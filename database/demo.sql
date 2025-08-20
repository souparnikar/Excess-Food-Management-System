-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2025 at 04:37 PM
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
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stands`
--

CREATE TABLE `bus_stands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `district` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_stands`
--

INSERT INTO `bus_stands` (`id`, `name`, `address`, `district`) VALUES
(1, 'Kempegowda Bus Station', 'Subhashnagar, Bengaluru-09', 'Bangalore'),
(2, 'Shivajinagar Bus Station', 'Shivajinagar, Bengaluru-01', 'Bangalore'),
(3, 'Shanthinagar TTMC', 'Shanthinagar, Bengaluru', 'Bangalore'),
(4, 'Jayanagar TTMC', 'Jayanagar, Bengaluru', 'Bangalore'),
(5, 'Kengeri TTMC', 'Kengeri, Bengaluru', 'Bangalore'),
(6, 'Banashankari TTMC', 'Banashankari, Bengaluru', 'Bangalore'),
(7, 'Koramangala TTMC', 'Koramangala, Bengaluru', 'Bangalore'),
(8, 'Yeshwanthapura TTMC', 'Yeshwanthapura, Bengaluru', 'Bangalore'),
(9, 'Vijayanagar TTMC', 'Vijayanagar, Bengaluru', 'Bangalore'),
(10, 'Domlur TTMC', 'Domlur, Bengaluru', 'Bangalore'),
(11, 'Whitefield Bus Station', 'Whitefield, Bengaluru', 'Bangalore'),
(12, 'Bannerghatta Bus Station', 'Bannerghatta, Bengaluru', 'Bangalore'),
(13, 'Austin Town Bus Stop', 'Austin Town, Bengaluru', 'Bangalore'),
(14, 'Majestic Bus Stand', 'Majestic, Bengaluru', 'Bangalore'),
(15, 'Hebbal Bus Station', 'Hebbal, Bengaluru', 'Bangalore'),
(16, 'Electronic City Bus Station', 'Electronic City, Bengaluru', 'Bangalore'),
(17, 'Marathahalli Bus Station', 'Marathahalli, Bengaluru', 'Bangalore'),
(18, 'BTM Layout Bus Station', 'BTM Layout, Bengaluru', 'Bangalore'),
(19, 'Indiranagar Bus Station', 'Indiranagar, Bengaluru', 'Bangalore'),
(20, 'KR Market Bus Station', 'KR Market, Bengaluru', 'Bangalore'),
(21, 'Mysore KSRTC Bus Stand', 'Mofussil Bus Stand, Mysore', 'Mysore'),
(22, 'Mysore City Bus Stand', 'City Bus Stand, Mysore', 'Mysore'),
(23, 'Vontikoppal Bus Stand', '2nd Cross, Vontikoppal, Mysore', 'Mysore'),
(24, 'Chamundi Hill Bus Stand', 'Chamundi Hill, Mysore', 'Mysore'),
(25, 'Kuvempunagar Bus Stand', 'Kuvempunagar, Mysore', 'Mysore'),
(26, 'Saraswathipuram Bus Stand', 'Saraswathipuram, Mysore', 'Mysore'),
(27, 'Nanjangud Bus Stand', 'Nanjangud, Mysore', 'Mysore'),
(28, 'Hootagalli Bus Stand', 'Hootagalli, Mysore', 'Mysore'),
(29, 'Bogadi Bus Stand', 'Bogadi, Mysore', 'Mysore'),
(30, 'Hebbal Bus Stand', 'Hebbal, Mysore', 'Mysore'),
(31, 'Metagalli Bus Stand', 'Metagalli, Mysore', 'Mysore'),
(32, 'Jayalakshmipuram Bus Stand', 'Jayalakshmipuram, Mysore', 'Mysore'),
(33, 'Siddarthanagar Bus Stand', 'Siddarthanagar, Mysore', 'Mysore'),
(34, 'Lashkar Mohalla Bus Stand', 'Lashkar Mohalla, Mysore', 'Mysore'),
(35, 'Tilaknagar Bus Stand', 'Tilaknagar, Mysore', 'Mysore'),
(36, 'Vijayanagar Bus Stand', 'Vijayanagar, Mysore', 'Mysore'),
(37, 'Rajivnagar Bus Stand', 'Rajivnagar, Mysore', 'Mysore'),
(38, 'Kalyanagiri Bus Stand', 'Kalyanagiri, Mysore', 'Mysore'),
(39, 'Udayagiri Bus Stand', 'Udayagiri, Mysore', 'Mysore'),
(40, 'Mandi Mohalla Bus Stand', 'Mandi Mohalla, Mysore', 'Mysore'),
(41, 'Chamarajanagar KSRTC Bus Stand', 'NH948, Chamarajanagar', 'Chamarajanagar'),
(42, 'Kollegal Bus Stand', 'Kollegal, Chamarajanagar', 'Chamarajanagar'),
(43, 'Hanur Bus Stand', 'Hanur, Chamarajanagar', 'Chamarajanagar'),
(44, 'Yelandur Bus Stand', 'Yelandur, Chamarajanagar', 'Chamarajanagar'),
(45, 'Gundlupet Bus Stand', 'Gundlupet, Chamarajanagar', 'Chamarajanagar'),
(46, 'BR Hills Bus Stand', 'BR Hills, Chamarajanagar', 'Chamarajanagar'),
(47, 'Nagavalli Bus Stop', 'Chamarajanagara-BR Hills Rd, Nagavalli, Chamarajanagar', 'Chamarajanagar'),
(48, 'Santhemaralli Bus Stand', 'Santhemaralli, Chamarajanagar', 'Chamarajanagar'),
(49, 'Kagalavadi Bus Stand', 'Kagalavadi, Chamarajanagar', 'Chamarajanagar'),
(50, 'Kuderu Bus Stand', 'Kuderu, Chamarajanagar', 'Chamarajanagar'),
(51, 'Haradanahalli Bus Stand', 'Haradanahalli, Chamarajanagar', 'Chamarajanagar'),
(52, 'Chinnadagudihundi Bus Stand', 'Chinnadagudihundi, Chamarajanagar', 'Chamarajanagar'),
(53, 'Badanaguppe Bus Stand', 'Badanaguppe, Chamarajanagar', 'Chamarajanagar'),
(54, 'Kavalande Bus Stand', 'Kavalande, Chamarajanagar', 'Chamarajanagar'),
(55, 'Terakanambi Bus Stand', 'Terakanambi, Chamarajanagar', 'Chamarajanagar'),
(56, 'Mangala Bus Stand', 'Mangala, Chamarajanagar', 'Chamarajanagar'),
(57, 'Heggavadi Bus Stand', 'Heggavadi, Chamarajanagar', 'Chamarajanagar'),
(58, 'Kothanur Bus Stand', 'Kothanur, Chamarajanagar', 'Chamarajanagar'),
(59, 'Kuderu Bus Stand', 'Kuderu, Chamarajanagar', 'Chamarajanagar'),
(60, 'Kuderu Bus Stand', 'Kuderu, Chamarajanagar', 'Chamarajanagar'),
(61, 'Madikeri KSRTC Bus Stand', 'Near Fort Entrance, Main Road, Madikeri', 'Kodagu'),
(62, 'Virajpet KSRTC Bus Stand', 'Bus Stand Road, Virajpet Town, Kodagu', 'Kodagu'),
(63, 'Kushalnagar KSRTC Bus Stand', 'Opp. Govt Hospital, BM Road, Kushalnagar', 'Kodagu'),
(64, 'Somwarpet Bus Stand', 'Main Market Road, Somwarpet, Kodagu', 'Kodagu'),
(65, 'Gonikoppal Bus Stand', 'Ponnampet Road, Gonikoppal Town, Kodagu', 'Kodagu'),
(66, 'Ponnampet Bus Stand', 'Near College Road, Ponnampet, Kodagu', 'Kodagu'),
(67, 'Napoklu Bus Stand', 'Madikeri-Napoklu Road, Napoklu, Kodagu', 'Kodagu'),
(68, 'Siddapura Bus Stand', 'Gonikoppal Road, Siddapura Town, Kodagu', 'Kodagu'),
(69, 'Pollibetta Bus Stand', 'Pollibetta Road, Virajpet Taluk, Kodagu', 'Kodagu'),
(70, 'Chettalli Bus Stand', 'SH27, Chettalli Junction, Kodagu', 'Kodagu'),
(71, 'Bhagamandala Bus Stand', 'Bhagamandala Temple Road, Kodagu', 'Kodagu'),
(72, 'Kakkabe Bus Stand', 'Tadiandamol Base Road, Kakkabe Village, Kodagu', 'Kodagu'),
(73, 'Balele Bus Stand', 'Near Balele Market, Balele, Kodagu', 'Kodagu'),
(74, 'Kanoor Bus Stand', 'SH89, Kanoor Post, Virajpet Taluk, Kodagu', 'Kodagu'),
(75, 'Shanivarasanthe Bus Stand', 'Main Street, Shanivarasanthe, Kodagu', 'Kodagu'),
(76, 'Thithimathi Bus Stand', 'Thithimathi Circle, Kodagu', 'Kodagu'),
(77, 'Murnad Bus Stand', 'Madikeri-Murnad Road, Murnad Village, Kodagu', 'Kodagu'),
(78, 'Kundahalli Bus Stand', 'Kundahalli Junction, Kodagu', 'Kodagu'),
(79, 'Nalkeri Bus Stand', 'Nalkeri Elephant Camp Road, Kodagu', 'Kodagu'),
(80, 'Kutta Bus Stand', 'Kutta-Mallur Road, Kutta Village, Kodagu', 'Kodagu'),
(81, 'Hassan KSRTC Bus Stand', 'BM Road, Hemavathi Nagar, Hassan', 'Hassan'),
(82, 'Channarayapatna Bus Stand', 'MG Road, Channarayapatna Town, Hassan', 'Hassan'),
(83, 'Sakleshpur Bus Stand', 'Bus Depot Road, Sakleshpur, Hassan', 'Hassan'),
(84, 'Arasikere Bus Stand', 'B.H. Road, Near Railway Station, Arasikere, Hassan', 'Hassan'),
(85, 'Belur Bus Stand', 'Temple Road, Near Chennakeshava Temple, Belur, Hassan', 'Hassan'),
(86, 'Alur Bus Stand', 'Main Road, Opp. Police Station, Alur, Hassan', 'Hassan'),
(87, 'Holenarasipura Bus Stand', 'College Road, Holenarasipura, Hassan', 'Hassan'),
(88, 'Shantigrama Bus Stand', 'NH-75, Shantigrama, Hassan', 'Hassan'),
(89, 'Kattaya Bus Stand', 'Hassan-Arkalgud Road, Kattaya, Hassan', 'Hassan'),
(90, 'Arkalgud Bus Stand', 'Bus Stand Road, Arkalgud, Hassan', 'Hassan'),
(91, 'Halebidu Bus Stand', 'Near Hoysaleswara Temple, Halebidu, Hassan', 'Hassan'),
(92, 'Sathenahalli Bus Stand', 'Sathenahalli Village, Arsikere Taluk, Hassan', 'Hassan'),
(93, 'Belavadi Bus Stand', 'SH-7, Belavadi, Hassan', 'Hassan'),
(94, 'Gorur Bus Stand', 'Near Gorur Dam, Gorur, Hassan', 'Hassan'),
(95, 'Boovanahalli Bus Stand', 'Main Street, Boovanahalli, Hassan', 'Hassan'),
(96, 'Kaggalipura Bus Stand', 'Kaggalipura, Arasikere Taluk, Hassan', 'Hassan'),
(97, 'Kundur Bus Stand', 'Kundur Village, Holenarasipura Taluk, Hassan', 'Hassan'),
(98, 'Yaladahalli Bus Stand', 'Yaladahalli, Belur Taluk, Hassan', 'Hassan'),
(99, 'Mallipatna Bus Stand', 'Near Government School, Mallipatna, Hassan', 'Hassan'),
(100, 'Kikkeri Bus Stand', 'Kikkeri Road, Kikkeri Town, Hassan', 'Hassan');

-- --------------------------------------------------------

--
-- Table structure for table `deliverypersons`
--

CREATE TABLE `deliverypersons` (
  `deliveryPersonID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `District` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliverypersons`
--

INSERT INTO `deliverypersons` (`deliveryPersonID`, `Name`, `Email`, `Password`, `PhoneNumber`, `District`, `status`) VALUES
(1, 'Kiran', 'kiran461@gmail.com', 'kiran123', '8811096078', 'Bangalore', 'Inactive'),
(2, 'Aarav', 'aarav570@gmail.com', 'aarav123', '1837286449', 'Bangalore', 'Active'),
(3, 'Ayesha', 'ayesha392@gmail.com', 'ayesha123', '8509314015', 'Bangalore', 'Active'),
(4, 'Rohan', 'rohan416@gmail.com', 'rohan123', '6258857332', 'Bangalore', 'Active'),
(5, 'Amar', 'amar299@gmail.com', 'amar123', '5655011487', 'Bangalore', 'Inactive'),
(6, 'Ali', 'ali185@gmail.com', 'ali123', '7786021695', 'Bangalore', 'Inactive'),
(7, 'Simran', 'simran357@gmail.com', 'simran123', '1682508912', 'Bangalore', 'Active'),
(8, 'Samuel', 'samuel219@gmail.com', 'samuel123', '5972268944', 'Bangalore', 'Inactive'),
(9, 'Fatima', 'fatima745@gmail.com', 'fatima123', '8903641582', 'Bangalore', 'Active'),
(10, 'Zain', 'zain361@gmail.com', 'zain123', '9504832703', 'Bangalore', 'Inactive'),
(11, 'Roshan', 'roshan388@gmail.com', 'roshan123', '5098263417', 'Bangalore', 'Active'),
(12, 'Anjali', 'anjali616@gmail.com', 'anjali123', '4958213749', 'Bangalore', 'Active'),
(13, 'Rehman', 'rehman273@gmail.com', 'rehman123', '7983104526', 'Bangalore', 'Inactive'),
(14, 'Rahul', 'rahul684@gmail.com', 'rahul123', '4092153768', 'Bangalore', 'Active'),
(15, 'Deepak', 'deepak903@gmail.com', 'deepak123', '3182059842', 'Bangalore', 'Inactive'),
(16, 'Imran', 'imran460@gmail.com', 'imran123', '1630982457', 'Bangalore', 'Active'),
(17, 'Priya', 'priya794@gmail.com', 'priya123', '4521983406', 'Bangalore', 'Inactive'),
(18, 'Sai', 'sai321@gmail.com', 'sai123', '9021367481', 'Bangalore', 'Active'),
(19, 'Vivaan', 'vivaan587@gmail.com', 'vivaan123', '2761549032', 'Bangalore', 'Active'),
(20, 'Harpreet', 'harpreet312@gmail.com', 'harpreet123', '7021945360', 'Bangalore', 'Inactive'),
(21, 'Iqbal', 'iqbal255@gmail.com', 'iqbal123', '3419820756', 'Bangalore', 'Inactive'),
(22, 'Sarah', 'sarah793@gmail.com', 'sarah123', '1702968453', 'Bangalore', 'Active'),
(23, 'Noel', 'noel472@gmail.com', 'noel123', '9820137542', 'Bangalore', 'Inactive'),
(24, 'Abraham', '', 'abraham123', '5498036217', 'Bangalore', 'Active'),
(25, 'Yusuf', 'yusuf841@gmail.com', 'yusuf123', '7198432051', 'Bangalore', 'Inactive'),
(26, 'Meera', 'meera311@gmail.com', 'meera123', '2601984375', 'Bangalore', 'Active'),
(27, 'Aditya', 'aditya643@gmail.com', 'aditya123', '1783249650', 'Bangalore', 'Inactive'),
(28, 'Sundar', 'sundar909@gmail.com', 'sundar123', '8049327165', 'Bangalore', 'Active'),
(29, 'Nikhil', 'nikhil568@gmail.com', 'nikhil123', '3508194267', 'Bangalore', 'Inactive'),
(30, 'Javed', 'javed720@gmail.com', 'javed123', '9415028763', 'Bangalore', 'Active'),
(31, 'Roshan', 'roshan327@gmail.com', 'passroshan31', '8169273405', 'Mysore', 'Active'),
(32, 'Priya', 'priya463@gmail.com', 'passpriya32', '9218654037', 'Mysore', 'Inactive'),
(33, 'Rahul', 'rahul889@gmail.com', 'passrahul33', '5392486170', 'Mysore', 'Inactive'),
(34, 'Simran', 'simran290@gmail.com', 'passsimran34', '4732850916', 'Mysore', 'Active'),
(35, 'Ayesha', 'ayesha371@gmail.com', 'passayesha35', '6182047395', 'Mysore', 'Active'),
(36, 'Imran', 'imran120@gmail.com', 'passimran36', '3985724610', 'Mysore', 'Inactive'),
(37, 'Ali', 'ali475@gmail.com', 'passali37', '7864209531', 'Mysore', 'Active'),
(38, 'Meera', 'meera105@gmail.com', 'passmeera38', '6821357940', 'Mysore', 'Inactive'),
(39, 'Samuel', 'samuel793@gmail.com', 'passsamuel39', '9438057162', 'Mysore', 'Active'),
(40, 'Iqbal', 'iqbal622@gmail.com', 'passiqbal40', '2816734590', 'Mysore', 'Inactive'),
(41, 'Sundar', 'sundar306@gmail.com', 'passsundar41', '5179028361', 'Mysore', 'Active'),
(42, 'Anjali', 'anjali728@gmail.com', 'passanjali42', '7584906213', 'Mysore', 'Inactive'),
(43, 'Vivaan', 'vivaan189@gmail.com', 'passvivaan43', '9382046715', 'Mysore', 'Active'),
(44, 'Fatima', 'fatima457@gmail.com', 'passfatima44', '4793028610', 'Mysore', 'Inactive'),
(45, 'Abraham', 'abraham531@gmail.com', 'passabraham45', '2159678304', 'Mysore', 'Active'),
(46, 'Kiran', 'kiran848@gmail.com', 'passkiran46', '5904721683', 'Mysore', 'Active'),
(47, 'Noel', 'noel178@gmail.com', 'passnoel47', '7428150936', 'Mysore', 'Inactive'),
(48, 'Nikhil', 'nikhil784@gmail.com', 'passnikhil48', '3589461207', 'Mysore', 'Active'),
(49, 'Deepak', 'deepak219@gmail.com', 'passdeepak49', '6492807315', 'Mysore', 'Inactive'),
(50, 'Sai', 'sai900@gmail.com', 'passsai50', '9863271450', 'Mysore', 'Active'),
(51, 'Harpreet', 'harpreet602@gmail.com', 'passharpreet51', '5196843720', 'Mysore', 'Inactive'),
(52, 'Aarav', 'aarav740@gmail.com', 'passaarav52', '8741206953', 'Mysore', 'Active'),
(53, 'Javed', 'javed285@gmail.com', 'passjaved53', '2639741805', 'Mysore', 'Inactive'),
(54, 'Sarah', 'sarah958@gmail.com', 'passsarah54', '7529804163', 'Mysore', 'Active'),
(55, 'Aditya', 'aditya174@gmail.com', 'passaditya55', '1409836275', 'Mysore', 'Inactive'),
(56, 'Amar', 'amar649@gmail.com', 'passamar56', '8671549032', 'Mysore', 'Active'),
(57, 'Zain', 'zain523@gmail.com', 'passzain57', '2981465730', 'Mysore', 'Inactive'),
(58, 'Rehman', 'rehman312@gmail.com', 'passrehman58', '6104729581', 'Mysore', 'Active'),
(59, 'Yusuf', 'yusuf781@gmail.com', 'passyusuf59', '9812067345', 'Mysore', 'Inactive'),
(60, 'Sarah', 'sarah624@gmail.com', 'passsarah60', '4728150639', 'Mysore', 'Active'),
(61, 'Aarav', 'aarav237@gmail.com', 'passaarav61', '9845137206', 'Hassan', 'Active'),
(62, 'Fatima', 'fatima842@gmail.com', 'passfatima62', '9624073150', 'Hassan', 'Inactive'),
(63, 'Samuel', 'samuel194@gmail.com', 'passsamuel63', '7412063981', 'Hassan', 'Active'),
(64, 'Ali', 'ali689@gmail.com', 'passali64', '8904136720', 'Hassan', 'Inactive'),
(65, 'Meera', 'meera547@gmail.com', 'passmeera65', '7021986431', 'Hassan', 'Active'),
(66, 'Roshan', 'roshan815@gmail.com', 'passroshan66', '8194276053', 'Hassan', 'Inactive'),
(67, 'Kiran', 'kiran928@gmail.com', 'passkiran67', '9631278450', 'Hassan', 'Active'),
(68, 'Rahul', 'rahul319@gmail.com', 'passrahul68', '7401962385', 'Hassan', 'Inactive'),
(69, 'Simran', 'simran725@gmail.com', 'passsimran69', '9028146370', 'Hassan', 'Active'),
(70, 'Priya', 'priya192@gmail.com', 'passpriya70', '6179203846', 'Hassan', 'Inactive'),
(71, 'Rohan', 'rohan308@gmail.com', 'passrohan71', '7382019645', 'Hassan', 'Active'),
(72, 'Anjali', 'anjali836@gmail.com', 'passanjali72', '6283417905', 'Hassan', 'Inactive'),
(73, 'Sarah', 'sarah537@gmail.com', 'passsarah73', '7019624831', 'Hassan', 'Active'),
(74, 'Nikhil', 'nikhil723@gmail.com', 'passnikhil74', '5940217836', 'Hassan', 'Inactive'),
(75, 'Imran', 'imran312@gmail.com', 'passimran75', '8916423705', 'Hassan', 'Active'),
(76, 'Harpreet', 'harpreet213@gmail.com', 'passharpreet76', '8612074395', 'Hassan', 'Inactive'),
(77, 'Deepak', 'deepak728@gmail.com', 'passdeepak77', '7902468135', 'Hassan', 'Active'),
(78, 'Javed', 'javed693@gmail.com', 'passjaved78', '9412763082', 'Hassan', 'Inactive'),
(79, 'Yusuf', 'yusuf307@gmail.com', 'passyusuf79', '6902437815', 'Hassan', 'Active'),
(80, 'Zain', 'zain172@gmail.com', 'passzain80', '8504291763', 'Hassan', 'Inactive'),
(81, 'Iqbal', 'iqbal458@gmail.com', 'passiqbal81', '9028134760', 'Hassan', 'Active'),
(82, 'Aditya', 'aditya581@gmail.com', 'passaditya82', '6392841570', 'Hassan', 'Inactive'),
(83, 'Rehman', 'rehman129@gmail.com', 'passrehman83', '5102847369', 'Hassan', 'Active'),
(84, 'Amar', 'amar874@gmail.com', 'passamar84', '8937145026', 'Hassan', 'Inactive'),
(85, 'Vivaan', 'vivaan407@gmail.com', 'passvivaan85', '9784350216', 'Hassan', 'Active'),
(86, 'Sai', 'sai193@gmail.com', 'passsai86', '6749201583', 'Hassan', 'Inactive'),
(87, 'Abraham', 'abraham902@gmail.com', 'passabraham87', '9428163750', 'Hassan', 'Active'),
(88, 'Ayesha', 'ayesha645@gmail.com', 'passayesha88', '5912840736', 'Hassan', 'Inactive'),
(89, 'Noel', 'noel302@gmail.com', 'passnoel89', '7149203856', 'Hassan', 'Active'),
(90, 'Sundar', 'sundar186@gmail.com', 'passsundar90', '6102847935', 'Hassan', 'Inactive'),
(91, 'Kiran', 'kiran290@gmail.com', 'passkiran91', '7419263805', 'Chamarajanagar', 'Active'),
(92, 'Fatima', 'fatima134@gmail.com', 'passfatima92', '8903124765', 'Chamarajanagar', 'Inactive'),
(93, 'Rohan', 'rohan736@gmail.com', 'passrohan93', '9630271845', 'Chamarajanagar', 'Active'),
(94, 'Priya', 'priya801@gmail.com', 'passpriya94', '6709218432', 'Chamarajanagar', 'Inactive'),
(95, 'Aarav', 'aarav118@gmail.com', 'passaarav95', '7482910637', 'Chamarajanagar', 'Active'),
(96, 'Samuel', 'samuel780@gmail.com', 'passsamuel96', '9401862735', 'Chamarajanagar', 'Inactive'),
(97, 'Ali', 'ali659@gmail.com', 'passali97', '7890123640', 'Chamarajanagar', 'Active'),
(98, 'Simran', 'simran203@gmail.com', 'passsimran98', '8263940571', 'Chamarajanagar', 'Inactive'),
(99, 'Sarah', 'sarah902@gmail.com', 'passsarah99', '9843205761', 'Chamarajanagar', 'Active'),
(100, 'Noel', 'noel343@gmail.com', 'passnoel100', '7032186490', 'Chamarajanagar', 'Inactive'),
(101, 'Anjali', 'anjali102@gmail.com', 'passanjali101', '9021678345', 'Chamarajanagar', 'Active'),
(102, 'Meera', 'meera672@gmail.com', 'passmeera102', '7890432156', 'Chamarajanagar', 'Inactive'),
(103, 'Iqbal', 'iqbal902@gmail.com', 'passiqbal103', '6928471035', 'Chamarajanagar', 'Active'),
(104, 'Roshan', 'roshan195@gmail.com', 'passroshan104', '9842671350', 'Chamarajanagar', 'Inactive'),
(105, 'Sai', 'sai114@gmail.com', 'passsai105', '9318205746', 'Chamarajanagar', 'Active'),
(106, 'Zain', 'zain849@gmail.com', 'passzain106', '6582043719', 'Chamarajanagar', 'Inactive'),
(107, 'Deepak', 'deepak303@gmail.com', 'passdeepak107', '8216493057', 'Chamarajanagar', 'Active'),
(108, 'Javed', 'javed991@gmail.com', 'passjaved108', '5091328470', 'Chamarajanagar', 'Inactive'),
(109, 'Vivaan', 'vivaan766@gmail.com', 'passvivaan109', '9712840362', 'Chamarajanagar', 'Active'),
(110, 'Yusuf', 'yusuf584@gmail.com', 'passyusuf110', '6471823509', 'Chamarajanagar', 'Inactive'),
(111, 'Abraham', 'abraham726@gmail.com', 'passabraham111', '7049186235', 'Chamarajanagar', 'Active'),
(112, 'Nikhil', 'nikhil118@gmail.com', 'passnikhil112', '6183274095', 'Chamarajanagar', 'Inactive'),
(113, 'Rahul', 'rahul432@gmail.com', 'passrahul113', '9864132057', 'Chamarajanagar', 'Active'),
(114, 'Ayesha', 'ayesha911@gmail.com', 'passayesha114', '7814062395', 'Chamarajanagar', 'Inactive'),
(115, 'Imran', 'imran673@gmail.com', 'passimran115', '8236471059', 'Chamarajanagar', 'Active'),
(116, 'Harpreet', 'harpreet475@gmail.com', 'passharpreet116', '7384912056', 'Chamarajanagar', 'Inactive'),
(117, 'Sundar', 'sundar371@gmail.com', 'passsundar117', '9205143876', 'Chamarajanagar', 'Active'),
(118, 'Amar', 'amar521@gmail.com', 'passamar118', '8412906371', 'Chamarajanagar', 'Inactive'),
(119, 'Rehman', 'rehman489@gmail.com', 'passrehman119', '9021846375', 'Chamarajanagar', 'Active'),
(120, 'Aditya', 'aditya387@gmail.com', 'passaditya120', '6819427035', 'Chamarajanagar', 'Inactive'),
(151, 'Roshan', 'roshan243@gmail.com', 'passroshan121', '9842157309', 'Kodagu', 'Active'),
(152, 'Priya', 'priya364@gmail.com', 'passpriya122', '9032174860', 'Kodagu', 'Inactive'),
(153, 'Rahul', 'rahul891@gmail.com', 'passrahul123', '8742130965', 'Kodagu', 'Active'),
(154, 'Simran', 'simran704@gmail.com', 'passsimran124', '7029186340', 'Kodagu', 'Inactive'),
(155, 'Ayesha', 'ayesha998@gmail.com', 'passayesha125', '9416078235', 'Kodagu', 'Active'),
(156, 'Imran', 'imran664@gmail.com', 'passimran126', '8601234970', 'Kodagu', 'Inactive'),
(157, 'Ali', 'ali376@gmail.com', 'passali127', '7410936824', 'Kodagu', 'Active'),
(158, 'Meera', 'meera990@gmail.com', 'passmeera128', '6928410753', 'Kodagu', 'Inactive'),
(159, 'Samuel', 'samuel282@gmail.com', 'passsamuel129', '8126493057', 'Kodagu', 'Active'),
(160, 'Iqbal', 'iqbal582@gmail.com', 'passiqbal130', '5091736482', 'Kodagu', 'Inactive'),
(161, 'Sundar', 'sundar913@gmail.com', 'passsundar131', '7382054190', 'Kodagu', 'Active'),
(162, 'Anjali', 'anjali472@gmail.com', 'passanjali132', '9824710639', 'Kodagu', 'Inactive'),
(163, 'Vivaan', 'vivaan635@gmail.com', 'passvivaan133', '7204193682', 'Kodagu', 'Active'),
(164, 'Fatima', 'fatima811@gmail.com', 'passfatima134', '6819204371', 'Kodagu', 'Inactive'),
(165, 'Abraham', 'abraham376@gmail.com', 'passabraham135', '9302847156', 'Kodagu', 'Active'),
(166, 'Kiran', 'kiran191@gmail.com', 'passkiran136', '9746102834', 'Kodagu', 'Inactive'),
(167, 'Noel', 'noel561@gmail.com', 'passnoel137', '8471209653', 'Kodagu', 'Active'),
(168, 'Nikhil', 'nikhil736@gmail.com', 'passnikhil138', '6198403725', 'Kodagu', 'Inactive'),
(169, 'Deepak', 'deepak830@gmail.com', 'passdeepak139', '7039148620', 'Kodagu', 'Active'),
(170, 'Sai', 'sai207@gmail.com', 'passsai140', '9512840736', 'Kodagu', 'Inactive'),
(171, 'Harpreet', 'harpreet284@gmail.com', 'passharpreet141', '9817602943', 'Kodagu', 'Active'),
(172, 'Aarav', 'aarav723@gmail.com', 'passaarav142', '7482950637', 'Kodagu', 'Inactive'),
(173, 'Javed', 'javed502@gmail.com', 'passjaved143', '6920147836', 'Kodagu', 'Active'),
(174, 'Sarah', 'sarah629@gmail.com', 'passsarah144', '7826401935', 'Kodagu', 'Inactive'),
(175, 'Aditya', 'aditya295@gmail.com', 'passaditya145', '6703291458', 'Kodagu', 'Active'),
(176, 'Amar', 'amar584@gmail.com', 'passamar146', '7410936820', 'Kodagu', 'Inactive'),
(177, 'Zain', 'zain973@gmail.com', 'passzain147', '8910735264', 'Kodagu', 'Active'),
(178, 'Rehman', 'rehman432@gmail.com', 'passrehman148', '8102473956', 'Kodagu', 'Inactive'),
(179, 'Yusuf', 'yusuf328@gmail.com', 'passyusuf149', '9741032965', 'Kodagu', 'Active'),
(180, 'Sarah', 'sarah312@gmail.com', 'passsarah150', '9683274150', 'Kodagu', 'Inactive'),
(181, 'Siri', 'siri12@gmail.com', '1234siri', '7414215860', 'Mysore', 'Active'),
(182, 'Roshni', 'roshni@gmail.com', 'testuser', '9685412736', 'Mysore', 'Active'),
(183, 'd1', 'd1@example.com', '123d', NULL, 'Mysore', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `food_donations`
--

CREATE TABLE `food_donations` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `food` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `donor_name` varchar(100) NOT NULL,
  `donor_phone` varchar(15) NOT NULL,
  `donor_district` varchar(100) NOT NULL,
  `donor_address` varchar(255) NOT NULL,
  `recipient_type` varchar(50) NOT NULL,
  `recipient_name` varchar(100) NOT NULL,
  `delivery_person_name` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `donation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_donations`
--

INSERT INTO `food_donations` (`id`, `email`, `food`, `type`, `donor_name`, `donor_phone`, `donor_district`, `donor_address`, `recipient_type`, `recipient_name`, `delivery_person_name`, `payment_method`, `donation_date`) VALUES
(1, 'aarav1@example.com', 'Rice', 'Veg', 'Aarav', '9800000001', 'Bangalore', '123 MG Road, Bangalore', 'NGO', 'Helping Hands NGO', 'Aarav', '', '2025-01-15 06:00:00'),
(2, 'vihaan2@example.com', 'Chapati', 'Non-Veg', 'Vihaan', '9800000002', 'Bangalore', '456 Park Street, Bangalore', 'Orphanage', 'Ashraya', 'Rohan', '', '2025-01-20 08:00:00'),
(3, 'vivaan3@example.com', 'Dal', 'Veg', 'Vivaan', '9800000003', 'Bangalore', '789 Brigade Road, Bangalore', 'Railway', 'Bangalore City Railway Station', 'Ayesha', '', '2025-01-25 11:30:00'),
(4, 'aditya4@example.com', 'Biryani', 'Non-Veg', 'Aditya', '9800000004', 'Bangalore', '1010 BTM Layout, Bangalore', 'Bus Stand', 'Kempegowda Bus Station', 'Fatima', '', '2025-02-03 05:30:00'),
(5, 'arjun5@example.com', 'Rice and Curry', 'Veg', 'Arjun', '9800000005', 'Bangalore', '2020 Whitefield, Bangalore', 'NGO', 'Hope Foundation', 'Rohan', '', '2025-02-10 08:30:00'),
(6, 'sai6@example.com', 'Pasta', 'Non-Veg', 'Sai', '9800000006', 'Bangalore', '3030 Koramangala, Bangalore', 'Orphanage', 'Sneha Orphanage', 'Simran', '', '2025-02-18 07:30:00'),
(7, 'krishna7@example.com', 'Salad', 'Veg', 'Krishna', '9800000007', 'Bangalore', '4040 HSR Layout, Bangalore', 'NGO', 'Future Generations NGO', 'Roshan', '', '2025-03-01 06:30:00'),
(8, 'ishaan8@example.com', 'Vegetable Soup', 'Veg', 'Ishaan', '9800000008', 'Bangalore', '5050 Yelahanka, Bangalore', 'Orphanage', 'Mother Teresa Home', 'Imran', '', '2025-03-08 08:30:00'),
(9, 'shaurya9@example.com', 'Noodles', 'Non-Veg', 'Shaurya', '9800000009', 'Bangalore', '6060 Indiranagar, Bangalore', 'Bus Stand', 'Shivajinagar Bus Station', 'Zain', '', '2025-03-12 04:30:00'),
(10, 'atharv10@example.com', 'Fried Rice', 'Veg', 'Atharv', '9800000010', 'Bangalore', '7070 Jayanagar, Bangalore', 'Railway', 'Yeswanthpur Railway Station', 'Simran', '', '2025-03-19 09:30:00'),
(11, 'anaya11@example.com', 'Dosa', 'Veg', 'Anaya', '9800000011', 'Bangalore', '8080 Malleshwaram, Bangalore', 'NGO', 'Bright Future Foundation', 'Ayesha', '', '2025-03-25 10:30:00'),
(12, 'aadhya12@example.com', 'Puri', 'Non-Veg', 'Aadhya', '9800000012', 'Bangalore', '9090 Banashankari, Bangalore', 'Orphanage', 'St. Joseph\'s Home', 'Harpreet', '', '2025-04-02 12:30:00'),
(13, 'diya13@example.com', 'Sambar', 'Veg', 'Diya', '9800000013', 'Bangalore', '1111 Majestic, Bangalore', 'NGO', 'Care and Share NGO', 'Deepak', '', '2025-04-06 13:30:00'),
(14, 'myra14@example.com', 'Steamed Dumplings', 'Non-Veg', 'Myra', '9800000014', 'Bangalore', '1212 Frazer Town, Bangalore', 'Orphanage', 'Al-Falah Orphanage', 'Rahul', '', '2025-04-12 14:30:00'),
(15, 'ira15@example.com', 'Chapati with Gravy', 'Veg', 'Ira', '9800000015', 'Bangalore', '1313 Cooke Town, Bangalore', 'Railway', 'Yelahanka Railway Station', 'Zain', '', '2025-04-17 14:00:00'),
(16, 'anika16@example.com', 'Pav Bhaji', 'Non-Veg', 'Anika', '9800000016', 'Bangalore', '1414 Koramangala, Bangalore', 'Bus Stand', 'Bannerghatta Bus Station', 'Priya', '', '2025-05-02 14:56:57'),
(17, 'meera17@example.com', 'Biryani', 'Veg', 'Meera', '9800000017', 'Bangalore', '1515 Electronic City, Bangalore', 'NGO', 'New Dawn Foundation', 'Roshan', '', '2025-04-26 12:30:00'),
(18, 'sara18@example.com', 'Rice and Dal', 'Veg', 'Sara', '9800000018', 'Bangalore', '1616 Yeshwanthpur, Bangalore', 'Orphanage', 'Vatsalya Ashram', 'Simran', '', '2025-04-28 11:30:00'),
(19, 'saanvi19@example.com', 'Masala Dosa', 'Veg', 'Saanvi', '9800000019', 'Bangalore', '1717 Ulsoor, Bangalore', 'Railway', 'Banaswadi Railway Station', 'Imran', '', '2025-04-30 14:30:00'),
(20, 'kiara20@example.com', 'Cheese Sandwich', 'Non-Veg', 'Kiara', '9800000020', 'Bangalore', '1818 Whitefield, Bangalore', 'Bus Stand', 'KR Market Bus Station', 'Samuel', '', '2025-05-01 10:30:00'),
(21, 'roshan327@gmail.com', 'Rice', 'Veg', 'Roshan', '8169273405', 'Mysore', '123, Ashoka Road', 'NGO', 'Hope and Light Foundation', 'Ayesha', '', '2025-05-01 09:30:00'),
(22, 'fatima457@gmail.com', 'Pulses', 'Veg', 'Fatima', '4793028610', 'Mysore', '456, Krishnamurthy Puram', 'Orphanage', 'Namma Mane', 'Ali', '', '2025-05-01 14:00:00'),
(23, 'samuel793@gmail.com', 'Dal', 'Non-Veg', 'Samuel', '9438057162', 'Mysore', '789, Sayyaji Rao Road', 'Railway', 'Mysore Junction Railway Station', 'Imran', '', '2025-05-01 14:30:00'),
(24, 'noel178@gmail.com', 'Bread', 'Veg', 'Noel', '7428150936', 'Mysore', '34, Mandi Mohalla', 'Bus Stand', 'Mysore KSRTC Bus Stand', 'Kiran', '', '2025-05-01 08:30:00'),
(25, 'javed285@gmail.com', 'Chapati', 'Non-Veg', 'Javed', '2639741805', 'Mysore', '12, Hootagalli', 'Orphanage', 'Mother\'s Arms', 'Sundar', '', '2025-05-01 15:30:00'),
(26, 'sarah958@gmail.com', 'Fruits', 'Veg', 'Sarah', '7529804163', 'Mysore', '9, Chamundi Hill', 'NGO', 'True Hearts Trust', 'Vivaan', '', '2025-05-01 13:30:00'),
(27, 'zain523@gmail.com', 'Vegetables', 'Veg', 'Zain', '2981465730', 'Mysore', '58, Hebbal', 'Railway', 'Naganahalli Railway Station', 'Abraham', '', '2025-05-01 13:00:00'),
(28, 'harpreet602@gmail.com', 'Rice', 'Non-Veg', 'Harpreet', '5196843720', 'Mysore', '23, Siddarthanagar', 'Bus Stand', 'Saraswathipuram Bus Stand', 'Fatima', '', '2025-05-01 09:15:00'),
(29, 'rahul889@gmail.com', 'Pasta', 'Veg', 'Rahul', '5392486170', 'Mysore', '89, Rajivnagar', 'Orphanage', 'Grace Light Home', 'Ali', '', '2025-05-01 07:30:00'),
(30, 'iqbal622@gmail.com', 'Fruits', 'Non-Veg', 'Iqbal', '2816734590', 'Mysore', '101, Kuvempunagar', 'NGO', 'Hands of Compassion', 'Ayesha', '', '2025-05-01 05:30:00'),
(31, 'sai900@gmail.com', 'Rice', 'Veg', 'Sai', '9863271450', 'Mysore', '10, Mandi Mohalla', 'Orphanage', 'Helping Hands', 'Simran', '', '2025-05-01 14:30:00'),
(32, 'aditya174@gmail.com', 'Chapati', 'Veg', 'Aditya', '1409836275', 'Mysore', '54, Lashkar Mohalla', 'Railway', 'KRS Railway Station', 'Vivaan', '', '2025-05-01 13:30:00'),
(33, 'zain523@gmail.com', 'Vegetables', 'Non-Veg', 'Zain', '2981465730', 'Mysore', '80, Nanjangud', 'Bus Stand', 'Hootagalli Bus Stand', 'Samuel', '', '2025-05-02 14:57:15'),
(34, 'sundar306@gmail.com', 'Rice', 'Veg', 'Sundar', '5179028361', 'Mysore', '65, Bogadi', 'NGO', 'The Giving Tree NGO', 'Sarah', '', '2025-04-30 18:30:00'),
(35, 'rahul889@gmail.com', 'Pasta', 'Veg', 'Rahul', '5392486170', 'Mysore', '101, Rajivnagar', 'Orphanage', 'Hearts Together', 'Ayesha', '', '2025-04-30 18:30:00'),
(36, 'meera105@gmail.com', 'Chapati', 'Non-Veg', 'Meera', '6821357940', 'Mysore', '78, Jayalakshmipuram', 'NGO', 'Rise Above Foundation', 'Vivaan', '', '2025-04-30 18:30:00'),
(37, 'abraham531@gmail.com', 'Fruits', 'Veg', 'Abraham', '2159678304', 'Mysore', '100, Hootagalli', 'Orphanage', 'St. Theresa\'s Home', 'Fatima', '', '2025-04-30 18:30:00'),
(38, 'vivaan189@gmail.com', 'Rice', 'Veg', 'Vivaan', '9382046715', 'Mysore', '34, Metagalli', 'NGO', 'Hope Springs Eternal NGO', 'Noel', '', '2025-04-30 18:30:00'),
(39, 'kiran848@gmail.com', 'Dal', 'Non-Veg', 'Kiran', '5904721683', 'Mysore', '123, Tilaknagar', 'Railway', 'Srirangapatna Railway Station', 'Samuel', '', '2025-04-30 18:30:00'),
(40, 'sundar306@gmail.com', 'Fruits', 'Veg', 'Sundar', '5179028361', 'Mysore', '56, Vontikoppal', 'Bus Stand', 'Vontikoppal Bus Stand', 'Ayesha', '', '2025-04-30 18:30:00'),
(41, 'aarav61@example.com', 'Rice', 'Veg', 'Aarav', '9800000061', 'Hassan', '7th Cross, Near Bus Stand, Hassan', 'NGO', 'Horizon Foundation', 'Ali', '', '2025-04-30 18:30:00'),
(42, 'vihaan62@example.com', 'Pulses', 'Veg', 'Vihaan', '9800000062', 'Hassan', 'Near Government Hospital, Hassan', 'NGO', 'Hands Across the World', 'Sundar', '', '2025-04-30 18:30:00'),
(43, 'vivaan63@example.com', 'Dal', 'Non-Veg', 'Vivaan', '9800000063', 'Hassan', 'No. 34, Main Road, Hassan', 'NGO', 'Rise and Shine Foundation', 'Ravi', '', '2025-04-30 18:30:00'),
(44, 'aditya64@example.com', 'Bread', 'Veg', 'Aditya', '9800000064', 'Hassan', '20/1, Market Area, Hassan', 'NGO', 'Bridge of Hope', 'Kiran', '', '2025-04-30 18:30:00'),
(45, 'arjun65@example.com', 'Chapati', 'Non-Veg', 'Arjun', '9800000065', 'Hassan', 'Opposite KSRTC Bus Station, Hassan', 'NGO', 'Compassionate Care Trust', 'Ali', '', '2025-04-30 18:30:00'),
(46, 'sai66@example.com', 'Fruits', 'Veg', 'Sai', '9800000066', 'Hassan', 'Raja Market, Hassan', 'NGO', 'Lifeline NGO', 'Sundar', '', '2025-04-30 18:30:00'),
(47, 'krishna67@example.com', 'Vegetables', 'Veg', 'Krishna', '9800000067', 'Hassan', 'Vijayanagar, Hassan', 'NGO', 'New Horizons Foundation', 'Ali', '', '2025-04-30 18:30:00'),
(48, 'ishaan68@example.com', 'Rice', 'Non-Veg', 'Ishaan', '9800000068', 'Hassan', 'Mahatma Gandhi Road, Hassan', 'NGO', 'Pathfinders NGO', 'Fatima', '', '2025-04-30 18:30:00'),
(49, 'shaurya69@example.com', 'Pasta', 'Veg', 'Shaurya', '9800000069', 'Hassan', 'Near Railway Station, Hassan', 'NGO', 'Peace Builders Trust', 'Vivaan', '', '2025-04-30 18:30:00'),
(50, 'atharv70@example.com', 'Chapati', 'Non-Veg', 'Atharv', '9800000070', 'Hassan', 'Gandhi Bazaar, Hassan', 'NGO', 'Share the Love Foundation', 'Sundar', '', '2025-04-30 18:30:00'),
(51, 'anaya71@example.com', 'Rice', 'Veg', 'Anaya', '9800000071', 'Hassan', 'KR Nagar, Hassan', 'Orphanage', 'Hassan Shelter', 'Fatima', '', '2025-04-30 18:30:00'),
(52, 'aadhya72@example.com', 'Pulses', 'Veg', 'Aadhya', '9800000072', 'Hassan', 'Holenarasipura, Hassan', 'Orphanage', 'Hope House', 'Ali', '', '2025-04-30 18:30:00'),
(53, 'diya73@example.com', 'Dal', 'Non-Veg', 'Diya', '9800000073', 'Hassan', 'Sakleshpur, Hassan', 'Orphanage', 'Grace Valley', 'Kiran', '', '2025-04-30 18:30:00'),
(54, 'anaya71@example.com', 'Fruits', 'Veg', 'Anaya', '9800000071', 'Hassan', 'BM Road, Hassan City, Hassan', 'Railway', 'Hassan Junction Railway Station', 'Ayesha', '', '2025-04-30 18:30:00'),
(55, 'aarav61@example.com', 'Vegetables', 'Veg', 'Aarav', '9800000061', 'Hassan', 'BM Road, Hemavathi Nagar, Hassan', 'Bus Stand', 'Hassan KSRTC Bus Stand', 'Ravi', '', '2025-04-30 18:30:00'),
(56, 'aarav91@example.com', 'Vegetable Biryani', 'Veg', 'Aarav', '9800000091', 'Chamarajanagar', 'Main Street, Chamarajanagar', 'NGO', 'Shanti Foundation', 'Kiran', '', '2025-05-01 03:30:00'),
(57, 'vihaan92@example.com', 'Chicken Curry', 'Non-Veg', 'Vihaan', '9800000092', 'Chamarajanagar', 'Near Bus Stand, Chamarajanagar', 'NGO', 'Inspire Foundation', 'Rohan', '', '2025-05-01 04:30:00'),
(58, 'vivaan93@example.com', 'Paneer Butter Masala', 'Veg', 'Vivaan', '9800000093', 'Chamarajanagar', 'Opposite Hospital, Chamarajanagar', 'Orphanage', 'Ashakirana Home', 'Aarav', '', '2025-05-01 05:30:00'),
(59, 'aditya94@example.com', 'Mutton Biryani', 'Non-Veg', 'Aditya', '9800000094', 'Chamarajanagar', 'Chamarajanagar Road', 'NGO', 'Global Hearts Foundation', 'Ali', '', '2025-05-01 06:30:00'),
(60, 'arjun95@example.com', 'Vegetable Soup', 'Veg', 'Arjun', '9800000095', 'Chamarajanagar', 'Near Railway Station, Chamarajanagar', 'Orphanage', 'St. Jude Home', 'Samuel', '', '2025-05-01 07:30:00'),
(61, 'sai96@example.com', 'Fried Rice', 'Veg', 'Sai', '9800000096', 'Chamarajanagar', 'Brahmagiri, Chamarajanagar', 'NGO', 'Empowerment Trust', 'Sarah', '', '2025-05-01 08:30:00'),
(62, 'krishna97@example.com', 'Dal Tadka', 'Veg', 'Krishna', '9800000097', 'Chamarajanagar', 'Near KSRTC Bus Stand', 'NGO', 'Light of Hope NGO', 'Rohan', '', '2025-05-01 09:30:00'),
(63, 'ishaan98@example.com', 'Chole Bhature', 'Veg', 'Ishaan', '9800000098', 'Chamarajanagar', 'Boregowdanadoddi', 'Orphanage', 'Children Light', 'Imran', '', '2025-05-01 10:30:00'),
(64, 'shaurya99@example.com', 'Fish Curry', 'Non-Veg', 'Shaurya', '9800000099', 'Chamarajanagar', 'Near Main Market, Chamarajanagar', 'Orphanage', 'Grace Field Home', 'Ali', '', '2025-05-01 11:30:00'),
(65, 'atharv100@example.com', 'Mixed Vegetable Curry', 'Veg', 'Atharv', '9800000100', 'Chamarajanagar', 'Santhemaralli, Chamarajanagar', 'NGO', 'Visionary Hearts NGO', 'Kiran', '', '2025-05-01 12:30:00'),
(66, 'anaya101@example.com', 'Biryani', 'Non-Veg', 'Anaya', '9800000101', 'Chamarajanagar', 'Harave, Chamarajanagar', 'Orphanage', 'Faithful Hands', 'Samuel', '', '2025-05-01 13:30:00'),
(67, 'aadhya102@example.com', 'Rajma Chawal', 'Veg', 'Aadhya', '9800000102', 'Chamarajanagar', 'Nagavalli, Chamarajanagar', 'Orphanage', 'Blessed Shelter', 'Rohan', '', '2025-05-01 14:30:00'),
(68, 'diya103@example.com', 'Chapati and Sabzi', 'Veg', 'Diya', '9800000103', 'Chamarajanagar', 'Mangala, Chamarajanagar', 'NGO', 'Together for Change', 'Kiran', '', '2025-05-01 15:30:00'),
(69, 'myra104@example.com', 'Sambar Rice', 'Veg', 'Myra', '9800000104', 'Chamarajanagar', 'Santhemaralli, Chamarajanagar', 'Orphanage', 'Shanthi Home', 'Vivaan', '', '2025-05-01 16:30:00'),
(70, 'ira105@example.com', 'Butter Chicken', 'Non-Veg', 'Ira', '9800000105', 'Chamarajanagar', 'Yelandur, Chamarajanagar', 'NGO', 'Compassionate Voices', 'Rohan', '', '2025-05-02 03:30:00'),
(71, 'anika106@example.com', 'Vegetable Pulao', 'Veg', 'Anika', '9800000106', 'Chamarajanagar', 'BR Hills, Chamarajanagar', 'NGO', 'Heart to Heart Foundation', 'Kiran', '', '2025-05-02 04:30:00'),
(72, 'meera107@example.com', 'Vegetable Salad', 'Veg', 'Meera', '9800000107', 'Chamarajanagar', 'Kollegal, Chamarajanagar', 'Orphanage', 'New Mercy Home', 'Rohan', '', '2025-05-02 05:30:00'),
(73, 'sara108@example.com', 'Mushroom Curry', 'Non-Veg', 'Sara', '9800000108', 'Chamarajanagar', 'Hanur, Chamarajanagar', 'Orphanage', 'Zion Orphanage', 'Ali', '', '2025-05-02 06:30:00'),
(74, 'saanvi109@example.com', 'Rice and Dal', 'Veg', 'Saanvi', '9800000109', 'Chamarajanagar', 'Kuderu, Chamarajanagar', 'NGO', 'Divine Nest', 'Samuel', '', '2025-05-02 07:30:00'),
(75, 'kiara110@example.com', 'Vegetable Soup', 'Veg', 'Kiara', '9800000110', 'Chamarajanagar', 'Haradanahalli, Chamarajanagar', 'NGO', 'Life Springs Foundation', 'Aarav', '', '2025-05-02 08:30:00'),
(76, 'mohammed111@example.com', 'Chicken Biryani', 'Non-Veg', 'Mohammed', '9800000111', 'Chamarajanagar', 'Kagalavadi, Chamarajanagar', 'Orphanage', 'Children Peace', 'Rohan', '', '2025-05-02 09:30:00'),
(77, 'ahmed112@example.com', 'Pasta', 'Veg', 'Ahmed', '9800000112', 'Chamarajanagar', 'Muguru, Chamarajanagar', 'NGO', 'Al-Khair Trust', 'Kiran', '', '2025-05-02 10:30:00'),
(78, 'aarav121@example.com', 'Rice', 'Veg', 'Aarav', '9800000121', 'Kodagu', 'Madikeri, Kodagu', 'NGO', 'Seeds of Change', 'Roshan', '', '2025-05-01 04:30:00'),
(79, 'vihaan122@example.com', 'Chickpea Curry', 'Non-Veg', 'Vihaan', '9800000122', 'Kodagu', 'Virajpet, Kodagu', 'Orphanage', 'Coorg Shelter', 'Rahul', '', '2025-05-01 06:30:00'),
(80, 'vivaan123@example.com', 'Dal Tadka', 'Veg', 'Vivaan', '9800000123', 'Kodagu', 'Somwarpet, Kodagu', 'Orphanage', 'Green Valley Home', 'Ayesha', '', '2025-05-01 08:30:00'),
(81, 'aditya124@example.com', 'Butter Chicken', 'Non-Veg', 'Aditya', '9800000124', 'Kodagu', 'Rajendra Road, Madikeri, Kodagu', 'Orphanage', 'Hill Haven', 'Imran', '', '2025-05-01 10:30:00'),
(82, 'arjun125@example.com', 'Chapati & Vegetable Curry', 'Veg', 'Arjun', '9800000125', 'Kodagu', 'Gonikoppal, Kodagu', 'NGO', 'Reach Out NGO', 'Ali', '', '2025-05-01 12:30:00'),
(83, 'sai126@example.com', 'Fish Curry', 'Non-Veg', 'Sai', '9800000126', 'Kodagu', 'Madikeri, Kodagu', 'Orphanage', 'Mercy Hill Home', 'Samuel', '', '2025-05-01 14:30:00'),
(84, 'krishna127@example.com', 'Pasta', 'Veg', 'Krishna', '9800000127', 'Kodagu', 'Virajpet, Kodagu', 'NGO', 'Step by Step Foundation', 'Iqbal', '', '2025-05-02 03:30:00'),
(85, 'ishaan128@example.com', 'Mutton Curry', 'Non-Veg', 'Ishaan', '9800000128', 'Kodagu', 'Rajendra Road, Madikeri', 'Orphanage', 'Hope Cottage', 'Sundar', '', '2025-05-02 05:30:00'),
(86, 'shaurya129@example.com', 'Pulao', 'Veg', 'Shaurya', '9800000129', 'Kodagu', 'Somwarpet, Kodagu', 'NGO', 'Beyond Boundaries NGO', 'Vivaan', '', '2025-05-02 07:30:00'),
(87, 'atharv130@example.com', 'Grilled Chicken', 'Non-Veg', 'Atharv', '9800000130', 'Kodagu', 'Virajpet Town', 'Orphanage', 'Al-Badr Shelter', 'Fatima', '', '2025-05-02 09:30:00'),
(88, 'anaya131@example.com', 'Sambar Rice', 'Veg', 'Anaya', '9800000131', 'Kodagu', 'Kushalnagar, Kodagu', 'Orphanage', 'Blessed Hearts', 'Abraham', '', '2025-05-02 11:30:00'),
(89, 'aadhya132@example.com', 'Chicken Biryani', 'Non-Veg', 'Aadhya', '9800000132', 'Kodagu', 'Gonikoppal, Kodagu', 'Orphanage', 'St. Peter\'s Orphanage', 'Kiran', '', '2025-05-02 13:30:00'),
(90, 'diya133@example.com', 'Vegetable Stir Fry', 'Veg', 'Diya', '9800000133', 'Kodagu', 'Napoklu, Kodagu', 'NGO', 'Rays of Hope', 'Noel', '', '2025-05-02 15:30:00'),
(91, 'myra134@example.com', 'Prawn Curry', 'Non-Veg', 'Myra', '9800000134', 'Kodagu', 'Virajpet, Kodagu', 'Orphanage', 'Shalom Children Home', 'Deepak', '', '2025-05-03 03:30:00'),
(92, 'ira135@example.com', 'Mushroom Masala', 'Veg', 'Ira', '9800000135', 'Kodagu', 'Near Raja Seat, Kodagu', 'NGO', 'United We Stand Trust', 'Sai', '', '2025-05-03 05:30:00'),
(93, 'anika136@example.com', 'Beef Stew', 'Non-Veg', 'Anika', '9800000136', 'Kodagu', 'Madikeri, Kodagu', 'Orphanage', 'Divine Grace Home', 'Harpreet', '', '2025-05-03 07:30:00'),
(94, 'meera137@example.com', 'Aloo Gobi', 'Veg', 'Meera', '9800000137', 'Kodagu', 'Kushalnagar, Kodagu', 'NGO', 'Voices for the Voiceless', 'Javed', '', '2025-05-03 09:30:00'),
(95, 'sara138@example.com', 'Tandoori Chicken', 'Non-Veg', 'Sara', '9800000138', 'Kodagu', 'Kodagu District, Near Fort', 'Orphanage', 'Safe Hands Home', 'Zain', '', '2025-05-03 11:30:00'),
(96, 'saanvi139@example.com', 'Vegetable Pulao', 'Veg', 'Saanvi', '9800000139', 'Kodagu', 'Ponnampet, Kodagu', 'NGO', 'Caring Hearts Foundation', 'Rehman', '', '2025-05-03 13:30:00'),
(97, 'kiara140@example.com', 'Kabab', 'Non-Veg', 'Kiara', '9800000140', 'Kodagu', 'Madikeri, Kodagu', 'Orphanage', 'Healing Touch Shelter', 'Yusuf', '', '2025-05-03 15:30:00'),
(98, 'mohammed141@example.com', 'Dum Biryani', 'Non-Veg', 'Mohammed', '9800000141', 'Kodagu', 'Kodagu', 'NGO', 'New Hope House', 'Ali', '', '2025-05-04 03:30:00'),
(99, 'aarav1@example.com', 'Veg Pulao', 'veg', 'Aarav', '9800000001', 'Bangalore', '123 MG Road, Bangalore', 'Railway', 'Bangalore City Railway Station', 'Sai', '', '2025-05-02 15:03:37'),
(100, 'aarav1@example.com', 'Veg Pulao', 'veg', 'Aarav', '9800000001', 'Bangalore', '123 MG Road, Bangalore', 'Railway', 'Bangalore City Railway Station', 'Sai', '', '2025-05-02 15:05:00'),
(101, 'souparnika12@gmail.com', 'Rice', 'veg', 'Souparnika', '8745859652', 'Mysore', '1512, 2nd cross, Vivekananda Circle, Mysore', 'Orphanage', 'St. Joseph Shelter', 'Roshan', '', '2025-05-02 15:48:33'),
(102, 'souparnika12@gmail.com', 'Rice', 'veg', 'Souparnika', '8745859652', 'Mysore', '1512, 2nd cross, Vivekananda Circle, Mysore', 'Orphanage', 'Namma Mane', 'Ayesha', '', '2025-05-05 09:12:00'),
(103, 'souparnika12@gmail.com', 'Rice & Sambar', 'veg', 'Souparnika', '8745859652', 'Mysore', '1512, 2nd cross, Vivekananda Circle, Mysore', 'Railway', 'Mysore Junction Railway Station', 'Roshni', '', '2025-05-05 09:56:23'),
(104, 'user@example.com', 'veg pulao', 'veg', 'user', '6745812360', 'Bangalore', 'malleshwaram, bangalore', 'Orphanage', 'Navajeevana Home', 'Rahul', 'cod', '2025-05-15 17:40:51'),
(105, 'user@example.com', 'pongal', 'veg', 'user', '6745812360', 'Bangalore', 'malleshwaram, bangalore', 'NGO', 'Helping Hands Trust', 'Sundar', 'upi', '2025-05-16 06:00:07'),
(106, '', '', '', '', '', '', '', '', '', '', 'Unknown', '2025-05-16 15:07:46'),
(107, 'souparnika12@gmail.com', 'biriyani', 'veg', 'Souparnika', '8745859652', 'Mysore', 'Vivekananda nagar, Mysore', 'NGO', 'Together We Can Foundation', 'Nikhil', 'upi', '2025-05-16 15:56:51'),
(108, 'user@example.com', 'chapathi & curry', 'veg', 'user', '6745812360', 'Bangalore', 'malleshwaram, bangalore', 'Orphanage', 'Navajeevana Home', 'Rohan', 'upi', '2025-05-17 17:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `ngos`
--

CREATE TABLE `ngos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `district` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `timings` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngos`
--

INSERT INTO `ngos` (`id`, `name`, `address`, `district`, `phone_number`, `timings`) VALUES
(1, 'Helping Hands NGO', '2nd Floor, 12th Cross, Jayanagar 4th Block, Bangalore', 'Bangalore', '9876543210', '10:00 AM - 6:00 PM'),
(2, 'Hope Foundation', 'No. 24, 5th Main Road, Malleshwaram, Bangalore', 'Bangalore', '9345678901', '10:00 AM - 7:00 PM'),
(3, 'Future Generations NGO', '38, 2nd Stage, Banashankari, Bangalore', 'Bangalore', '9123456789', '11:00 AM - 8:00 PM'),
(4, 'Bright Future Foundation', '53/2, Shanthala Nagar, Ulsoor, Bangalore', 'Bangalore', '9678901234', '10:30 AM - 6:30 PM'),
(5, 'Care and Share NGO', 'No. 12, 1st Block, Koramangala, Bangalore', 'Bangalore', '9345789012', '10:00 AM - 5:00 PM'),
(6, 'New Dawn Foundation', '29/1, Marathahalli, Bangalore', 'Bangalore', '9876123456', '10:30 AM - 7:00 PM'),
(7, 'Life Foundation', '47, J.P. Nagar 3rd Phase, Bangalore', 'Bangalore', '9112345678', '10:00 AM - 8:00 PM'),
(8, 'Path of Hope', '8th Floor, Brigade Road, Bangalore', 'Bangalore', '9356789012', '11:00 AM - 8:00 PM'),
(9, 'Helping Hands Trust', '5, Hennur Road, Bangalore', 'Bangalore', '9234567890', '10:00 AM - 6:00 PM'),
(10, 'United for Change', 'Vijayanagar, Bangalore', 'Bangalore', '9012345678', '10:30 AM - 7:00 PM'),
(11, 'Shanti Foundation', 'Main Bazaar, Chamarajanagar', 'Chamarajanagar', '9056781234', '10:00 AM - 6:00 PM'),
(12, 'Inspire Foundation', 'Opposite Government Hospital, Chamarajanagar', 'Chamarajanagar', '9045678901', '10:00 AM - 7:00 PM'),
(13, 'Global Hearts Foundation', 'No. 21, Main Road, Chamarajanagar', 'Chamarajanagar', '9113456789', '11:00 AM - 8:00 PM'),
(14, 'Empowerment Trust', 'NR Colony, Chamarajanagar', 'Chamarajanagar', '9678012345', '10:30 AM - 6:30 PM'),
(15, 'Light of Hope NGO', 'Near KSRTC Bus Stand, Chamarajanagar', 'Chamarajanagar', '9346789012', '10:00 AM - 5:00 PM'),
(16, 'Visionary Hearts NGO', 'Chamarajanagar Main Market, Chamarajanagar', 'Chamarajanagar', '9816123456', '10:30 AM - 7:00 PM'),
(17, 'Together for Change', 'Near Railway Station, Chamarajanagar', 'Chamarajanagar', '9123456789', '10:00 AM - 8:00 PM'),
(18, 'Compassionate Voices', 'Opposite Chamarajanagar Government School, Chamarajanagar', 'Chamarajanagar', '9376578901', '11:00 AM - 8:00 PM'),
(19, 'Heart to Heart Foundation', 'Near Chamarajanagar Bus Stop, Chamarajanagar', 'Chamarajanagar', '9234567890', '10:00 AM - 6:00 PM'),
(20, 'Life Springs Foundation', 'Brahmagiri, Chamarajanagar', 'Chamarajanagar', '9012345678', '10:30 AM - 7:00 PM'),
(21, 'Horizon Foundation', '7th Cross, Near Bus Stand, Hassan', 'Hassan', '9876543210', '10:00 AM - 6:00 PM'),
(22, 'Hands Across the World', 'Near Government Hospital, Hassan', 'Hassan', '9345678901', '10:00 AM - 7:00 PM'),
(23, 'Rise and Shine Foundation', 'No. 34, Main Road, Hassan', 'Hassan', '9123456789', '11:00 AM - 8:00 PM'),
(24, 'Bridge of Hope', '20/1, Market Area, Hassan', 'Hassan', '9678901234', '10:30 AM - 6:30 PM'),
(25, 'Compassionate Care Trust', 'Opposite KSRTC Bus Station, Hassan', 'Hassan', '9345789012', '10:00 AM - 5:00 PM'),
(26, 'Lifeline NGO', 'Raja Market, Hassan', 'Hassan', '9876123456', '10:30 AM - 7:00 PM'),
(27, 'New Horizons Foundation', 'Vijayanagar, Hassan', 'Hassan', '9112345678', '10:00 AM - 8:00 PM'),
(28, 'Pathfinders NGO', 'Mahatma Gandhi Road, Hassan', 'Hassan', '9356789012', '11:00 AM - 8:00 PM'),
(29, 'Peace Builders Trust', 'Near Railway Station, Hassan', 'Hassan', '9234567890', '10:00 AM - 6:00 PM'),
(30, 'Share the Love Foundation', 'Gandhi Bazaar, Hassan', 'Hassan', '9012345678', '10:30 AM - 7:00 PM'),
(31, 'Seeds of Change', 'Madikeri, Kodagu', 'Kodagu', '9345678901', '10:00 AM - 7:00 PM'),
(32, 'Aashayein Foundation', 'Virajpet, Kodagu', 'Kodagu', '9123456789', '11:00 AM - 8:00 PM'),
(33, 'Light of Life NGO', 'Near Madikeri Fort, Kodagu', 'Kodagu', '9678901234', '10:30 AM - 6:30 PM'),
(34, 'Reach Out NGO', 'No. 12, Coffee Estate Road, Kodagu', 'Kodagu', '9345789012', '10:00 AM - 5:00 PM'),
(35, 'Step by Step Foundation', 'Rajendra Road, Madikeri, Kodagu', 'Kodagu', '9876123456', '10:30 AM - 7:00 PM'),
(36, 'Beyond Boundaries NGO', 'Gonicoppal, Kodagu', 'Kodagu', '9112345678', '10:00 AM - 8:00 PM'),
(37, 'Rays of Hope', 'Near Raja Seat, Kodagu', 'Kodagu', '9356789012', '11:00 AM - 8:00 PM'),
(38, 'United We Stand Trust', 'Madikeri Bus Stand, Kodagu', 'Kodagu', '9234567890', '10:00 AM - 6:00 PM'),
(39, 'Caring Hearts Foundation', 'Kodagu District, Near Fort, Kodagu', 'Kodagu', '9012345678', '10:30 AM - 7:00 PM'),
(40, 'Voices for the Voiceless', 'Ponnampet, Kodagu', 'Kodagu', '9056781234', '10:00 AM - 6:00 PM'),
(41, 'Hope and Light Foundation', '108, Ashoka Road, Mysore', 'Mysore', '9876543210', '10:00 AM - 6:00 PM'),
(42, 'The Giving Tree NGO', 'No. 34, Krishnamurthy Puram, Mysore', 'Mysore', '9345678901', '10:00 AM - 7:00 PM'),
(43, 'One World Foundation', '12, Chamundeshwari Temple Road, Mysore', 'Mysore', '9123456789', '11:00 AM - 8:00 PM'),
(44, 'Unity for Change', '123, KRS Road, Mysore', 'Mysore', '9678901234', '10:30 AM - 6:30 PM'),
(45, 'True Hearts Trust', 'Opposite Mysore Palace, Mysore', 'Mysore', '9345789012', '10:00 AM - 5:00 PM'),
(46, 'Hands of Compassion', 'Gokulam, Mysore', 'Mysore', '9876123456', '10:30 AM - 7:00 PM'),
(47, 'Together We Can Foundation', 'Near Railway Station, Mysore', 'Mysore', '9112345678', '10:00 AM - 8:00 PM'),
(48, 'Hope Springs Eternal NGO', 'Lalitha Mahal Palace Road, Mysore', 'Mysore', '9356789012', '11:00 AM - 8:00 PM'),
(49, 'Rise Above Foundation', 'Sayyaji Rao Road, Mysore', 'Mysore', '9234567890', '10:00 AM - 6:00 PM'),
(50, 'The Helping Hand Network', 'Saraswathipuram, Mysore', 'Mysore', '9012345678', '10:30 AM - 7:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orphanages`
--

CREATE TABLE `orphanages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `district` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `visiting_hours` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orphanages`
--

INSERT INTO `orphanages` (`id`, `name`, `address`, `district`, `phone_number`, `visiting_hours`) VALUES
(1, 'Ashraya', 'Indiranagar', 'Bangalore', '9880456321', '10am - 5pm'),
(2, 'Sneha Orphanage', 'Jayanagar', 'Bangalore', '9845612345', '9:30am - 4:30pm'),
(3, 'Navajeevana Home', 'Malleshwaram', 'Bangalore', '9912345678', '10am - 6pm'),
(4, 'Bosco Shelter', 'Majestic', 'Bangalore', '9880765432', '10:30am - 5pm'),
(5, 'Mother Teresa Home', 'Richmond Town', 'Bangalore', '9845011122', '9am - 3pm'),
(6, 'St. Joseph\'s Home', 'Cooke Town', 'Bangalore', '9977889900', '10am - 4pm'),
(7, 'Al-Falah Orphanage', 'Frazer Town', 'Bangalore', '9765432109', '11am - 5pm'),
(8, 'Shanthi Nilaya', 'BTM Layout', 'Bangalore', '9123456780', '10am - 5pm'),
(9, 'Grace Shelter', 'Koramangala', 'Bangalore', '9812345678', '9am - 2pm'),
(10, 'Divine Mercy Home', 'Banashankari', 'Bangalore', '9345678901', '10am - 4pm'),
(11, 'Hope Foundation', 'KR Puram', 'Bangalore', '8888999911', '10:30am - 5:30pm'),
(12, 'Peace Children Home', 'Whitefield', 'Bangalore', '9000111222', '9:30am - 3:30pm'),
(13, 'Little Blessings', 'Hebbal', 'Bangalore', '9033445566', '10am - 6pm'),
(14, 'Sunrise Orphanage', 'Electronic City', 'Bangalore', '9988776655', '10am - 5pm'),
(15, 'Al-Noor Foundation', 'Shivajinagar', 'Bangalore', '9665544332', '10am - 3pm'),
(16, 'Vatsalya Ashram', 'Vijayanagar', 'Bangalore', '9777666555', '10am - 5pm'),
(17, 'Angel Care Home', 'Yeshwanthpur', 'Bangalore', '9223344556', '9am - 1pm'),
(18, 'St. Mary\'s Haven', 'Ulsoor', 'Bangalore', '9445566778', '10am - 4pm'),
(19, 'Al-Hikmah Shelter', 'RT Nagar', 'Bangalore', '9556677889', '10:30am - 5:30pm'),
(20, 'Anatha Ashram', 'Wilson Garden', 'Bangalore', '9334455667', '9:30am - 2:30pm'),
(21, 'Ashakirana Home', 'Biligiriranga Hills', 'Chamarajanagar', '9845098765', '10am - 5pm'),
(22, 'Care Shelter', 'Yelandur', 'Chamarajanagar', '9845011223', '9am - 3pm'),
(23, 'St. Jude Home', 'Kollegal', 'Chamarajanagar', '9876543210', '10am - 6pm'),
(24, 'Al-Hayat Orphanage', 'Hanur', 'Chamarajanagar', '9832109876', '10:30am - 5pm'),
(25, 'Grace Field Home', 'Gundlupet', 'Chamarajanagar', '9823456789', '9:30am - 4pm'),
(26, 'Children Light', 'Boregowdanadoddi', 'Chamarajanagar', '9812349087', '10am - 5pm'),
(27, 'Faithful Hands', 'Santhemaralli', 'Chamarajanagar', '9845678901', '9am - 2pm'),
(28, 'Blessed Shelter', 'Chamarajanagar South', 'Chamarajanagar', '9845043211', '10am - 4pm'),
(29, 'Al-Khair Trust', 'Harave', 'Chamarajanagar', '9887766554', '10:30am - 5:30pm'),
(30, 'St. Luke Center', 'Badanaguppe', 'Chamarajanagar', '9832112233', '9:30am - 3:30pm'),
(31, 'New Mercy Home', 'Doddarampura', 'Chamarajanagar', '9877654321', '10am - 6pm'),
(32, 'Angel Hearts', 'Terakanambi', 'Chamarajanagar', '9854321098', '9am - 3pm'),
(33, 'Zion Orphanage', 'Chinnada Halli', 'Chamarajanagar', '9845098761', '10am - 5pm'),
(34, 'Shanthi Home', 'Kagalavadi', 'Chamarajanagar', '9876543100', '10am - 4pm'),
(35, 'Al-Rashid Trust', 'Kuderu', 'Chamarajanagar', '9801234567', '10am - 5pm'),
(36, 'Compassion House', 'Muguru', 'Chamarajanagar', '9845091234', '10am - 4pm'),
(37, 'Healing Shelter', 'Kollappanahalli', 'Chamarajanagar', '9810098765', '9am - 1pm'),
(38, 'Children Peace', 'Akkur', 'Chamarajanagar', '9823451234', '10am - 5pm'),
(39, 'Divine Nest', 'Basapura', 'Chamarajanagar', '9801122334', '10:30am - 5pm'),
(40, 'Holy Path', 'Yelandur Main', 'Chamarajanagar', '9832112345', '9am - 3pm'),
(41, 'Hassan Shelter', 'KR Nagar', 'Hassan', '9898989898', '10am - 5pm'),
(42, 'Hope House', 'Holenarasipura', 'Hassan', '9812341234', '9am - 2pm'),
(43, 'Grace Valley', 'Sakleshpur', 'Hassan', '9800111222', '10am - 6pm'),
(44, 'Al-Madina Shelter', 'Arasikere', 'Hassan', '9897665544', '10:30am - 5pm'),
(45, 'Faith Nest', 'Belur', 'Hassan', '9881122334', '9:30am - 3:30pm'),
(46, 'St. Andrew\'s Home', 'Hassan City', 'Hassan', '9801122789', '10am - 4pm'),
(47, 'Mercy Children Center', 'Gorur', 'Hassan', '9856712345', '9am - 3pm'),
(48, 'Al-Rahma House', 'Alur', 'Hassan', '9811198765', '10am - 5pm'),
(49, 'Divine Kids Shelter', 'Arkalgud', 'Hassan', '9888789890', '10am - 4pm'),
(50, 'Blessing Center', 'Channarayapatna', 'Hassan', '9809988776', '10:30am - 5:30pm'),
(51, 'Zion Hope', 'Sakleshpur Rural', 'Hassan', '9871212121', '10am - 5pm'),
(52, 'Guardian Home', 'Halebidu', 'Hassan', '9831231234', '9am - 2pm'),
(53, 'Hearts United', 'Srinivaspura', 'Hassan', '9821456789', '10am - 6pm'),
(54, 'Angel’s Embrace', 'Shanthigrama', 'Hassan', '9845123765', '10am - 5pm'),
(55, 'Al-Zahra Center', 'Dudda', 'Hassan', '9812347654', '9am - 1pm'),
(56, 'Tranquil Home', 'Konanur', 'Hassan', '9880099009', '10am - 4pm'),
(57, 'Holy Shelter', 'Belur Taluk', 'Hassan', '9823456780', '9:30am - 3:30pm'),
(58, 'Faith Way Home', 'Salagame', 'Hassan', '9812789012', '10am - 4pm'),
(59, 'Compassionate Kids', 'Sathenahalli', 'Hassan', '9807654321', '9:30am - 2:30pm'),
(60, 'Little Stars', 'Chikkamagalur Road', 'Hassan', '9876543212', '10am - 5pm'),
(61, 'Coorg Shelter', 'Madikeri', 'Kodagu', '9845123456', '10am - 5pm'),
(62, 'Green Valley Home', 'Virajpet', 'Kodagu', '9876543213', '9:30am - 3:30pm'),
(63, 'Hill Haven', 'Somwarpet', 'Kodagu', '9881234567', '10am - 6pm'),
(64, 'Mercy Hill Home', 'Kushalnagar', 'Kodagu', '9845078912', '10am - 4pm'),
(65, 'Hope Cottage', 'Gonikoppal', 'Kodagu', '9823456781', '10:30am - 5pm'),
(66, 'Al-Badr Shelter', 'Pollibetta', 'Kodagu', '9812309876', '9am - 3pm'),
(67, 'Blessed Hearts', 'Napoklu', 'Kodagu', '9871122334', '10am - 5pm'),
(68, 'St. Peter\'s Orphanage', 'Virajpet Town', 'Kodagu', '9801122445', '10am - 4pm'),
(69, 'Shalom Children Home', 'Cherambane', 'Kodagu', '9811123344', '10:30am - 5:30pm'),
(70, 'Al-Mahdi House', 'Suntikoppa', 'Kodagu', '9876543101', '9am - 2pm'),
(71, 'Divine Grace Home', 'Madikeri South', 'Kodagu', '9809988771', '10am - 5pm'),
(72, 'Angels Refuge', 'Srimangala', 'Kodagu', '9831234567', '9:30am - 3:30pm'),
(73, 'Care & Cure Home', 'Somwarpet North', 'Kodagu', '9821567890', '10am - 6pm'),
(74, 'St. Clare Shelter', 'Kudige', 'Kodagu', '9845098123', '10am - 4pm'),
(75, 'Al-Firdous Center', 'Virajpet Rural', 'Kodagu', '9812123456', '10am - 5pm'),
(76, 'Safe Hands Home', 'Kushalnagar East', 'Kodagu', '9888771122', '10:30am - 5:30pm'),
(77, 'Peaceful Steps', 'Hudikeri', 'Kodagu', '9845609876', '10am - 4pm'),
(78, 'Healing Touch Shelter', 'Madapura', 'Kodagu', '9812233445', '9am - 3pm'),
(79, 'Shelter of Light', 'Thithimathi', 'Kodagu', '9821456123', '10am - 5pm'),
(80, 'New Hope House', 'Chettalli', 'Kodagu', '9801237890', '10:30am - 5pm'),
(81, 'Namma Mane', 'Vijayanagar', 'Mysore', '9845671234', '10am - 5pm'),
(82, 'Mother\'s Arms', 'Nanjangud', 'Mysore', '9812345671', '9:30am - 4pm'),
(83, 'Hearts Together', 'Jayalakshmipuram', 'Mysore', '9800111000', '10am - 6pm'),
(84, 'St. Theresa\'s Home', 'Chamundi Hill', 'Mysore', '9876543234', '10am - 5pm'),
(85, 'Al-Huda Orphanage', 'Rajivnagar', 'Mysore', '9823451234', '9am - 3pm'),
(86, 'Shelter of Love', 'Saraswathipuram', 'Mysore', '9845012345', '10am - 4pm'),
(87, 'Bright Future Home', 'Hebbal', 'Mysore', '9809988772', '10:30am - 5pm'),
(88, 'Helping Hands', 'Metagalli', 'Mysore', '9871122111', '10am - 5pm'),
(89, 'St. Joseph Shelter', 'Kuvempunagar', 'Mysore', '9845098124', '9:30am - 2:30pm'),
(90, 'Mercy Mission Home', 'Yadavagiri', 'Mysore', '9812233446', '10am - 6pm'),
(91, 'Blessing Home', 'JP Nagar', 'Mysore', '9845623456', '10am - 4pm'),
(92, 'Sunbeam Shelter', 'Ashokapuram', 'Mysore', '9832141234', '9am - 3pm'),
(93, 'Holy Family Home', 'Udayagiri', 'Mysore', '9812765432', '10am - 5pm'),
(94, 'Angel Shelter', 'Tilaknagar', 'Mysore', '9888776656', '10am - 4pm'),
(95, 'Peace Orphanage', 'Bogadi', 'Mysore', '9821345678', '9:30am - 3:30pm'),
(96, 'Al-Noor Haven', 'Lashkar Mohalla', 'Mysore', '9801234568', '10am - 5pm'),
(97, 'Faith Kids Home', 'Hootagalli', 'Mysore', '9845123000', '10am - 4pm'),
(98, 'Grace Light Home', 'Vijayanagar 3rd Stage', 'Mysore', '9812347600', '9am - 2pm'),
(99, 'Compassion Shelter', 'Mandi Mohalla', 'Mysore', '9845617890', '10:30am - 5:30pm'),
(100, 'Divine House', 'Chamundipuram', 'Mysore', '9832144567', '10am - 5pm');

-- --------------------------------------------------------

--
-- Table structure for table `railway_systems`
--

CREATE TABLE `railway_systems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `district` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `railway_systems`
--

INSERT INTO `railway_systems` (`id`, `name`, `address`, `district`) VALUES
(1, 'Bangalore City Railway Station', 'Station Road, Majestic, Bangalore', 'Bangalore'),
(2, 'Kengeri Railway Station', 'Kengeri, Bangalore', 'Bangalore'),
(3, 'Yeswanthpur Railway Station', 'Yeswanthpur, Bangalore', 'Bangalore'),
(4, 'Yelahanka Railway Station', 'Yelahanka, Bangalore', 'Bangalore'),
(5, 'Banaswadi Railway Station', 'Banaswadi, Bangalore', 'Bangalore'),
(6, 'Mysore Junction Railway Station', 'Station Road, Mysore', 'Mysore'),
(7, 'Naganahalli Railway Station', 'Naganahalli, Mysore', 'Mysore'),
(8, 'KRS Railway Station', 'KRS, Mysore', 'Mysore'),
(9, 'Srirangapatna Railway Station', 'Srirangapatna, Mysore', 'Mysore'),
(10, 'Hebbal Railway Station', 'Hebbal, Mysore', 'Mysore'),
(11, 'Hassan Junction Railway Station', 'BM Road, Hassan City, Hassan', 'Hassan'),
(12, 'Arsikere Junction Railway Station', 'Railway Station Road, Arsikere, Hassan', 'Hassan'),
(13, 'Sakleshpur Railway Station', 'Station Road, Sakleshpur, Hassan', 'Hassan'),
(14, 'Hole Narsipur Railway Station', 'Station Road, Holenarasipura, Hassan', 'Hassan'),
(15, 'Channarayapatna Railway Station', 'Railway Station Area, Channarayapatna, Hassan', 'Hassan'),
(16, 'Madikeri Railway Station', 'Madikeri, Kodagu', 'Kodagu'),
(17, 'Virajpet Railway Station', 'Virajpet, Kodagu', 'Kodagu'),
(18, 'Kushalnagar Railway Station', 'Kushalnagar, Kodagu', 'Kodagu'),
(19, 'Suntikoppa Railway Station', 'Suntikoppa, Kodagu', 'Kodagu'),
(20, 'Bhagamandala Railway Station', 'Bhagamandala, Kodagu', 'Kodagu'),
(21, 'Chamarajanagar Railway Station', 'Station Road, Chamarajanagar', 'Chamarajanagar'),
(22, 'Nanjangud Town Railway Station', 'Nanjangud, Chamarajanagar', 'Chamarajanagar'),
(23, 'Badanaguppe Railway Station', 'Badanaguppe, Chamarajanagar', 'Chamarajanagar'),
(24, 'Kavalande Railway Station', 'Kavalande, Chamarajanagar', 'Chamarajanagar'),
(25, 'Konanur Railway Station', 'Konanur, Chamarajanagar', 'Chamarajanagar');

-- --------------------------------------------------------

--
-- Table structure for table `recipients`
--

CREATE TABLE `recipients` (
  `id` int(11) NOT NULL,
  `recipient_type` enum('NGO','Orphanage','Railway','Bus Stand') NOT NULL,
  `source_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipients`
--

INSERT INTO `recipients` (`id`, `recipient_type`, `source_id`, `name`, `address`, `district`, `phone_number`, `amount`) VALUES
(1, 'NGO', 1, 'Helping Hands NGO', '2nd Floor, 12th Cross, Jayanagar 4th Block, Bangalore', 'Bangalore', '9876543210', 350),
(2, 'NGO', 2, 'Hope Foundation', 'No. 24, 5th Main Road, Malleshwaram, Bangalore', 'Bangalore', '9345678901', 353),
(3, 'NGO', 3, 'Future Generations NGO', '38, 2nd Stage, Banashankari, Bangalore', 'Bangalore', '9123456789', 357),
(4, 'NGO', 4, 'Bright Future Foundation', '53/2, Shanthala Nagar, Ulsoor, Bangalore', 'Bangalore', '9678901234', 361),
(5, 'NGO', 5, 'Care and Share NGO', 'No. 12, 1st Block, Koramangala, Bangalore', 'Bangalore', '9345789012', 364),
(6, 'NGO', 6, 'New Dawn Foundation', '29/1, Marathahalli, Bangalore', 'Bangalore', '9876123456', 368),
(7, 'NGO', 7, 'Life Foundation', '47, J.P. Nagar 3rd Phase, Bangalore', 'Bangalore', '9112345678', 371),
(8, 'NGO', 8, 'Path of Hope', '8th Floor, Brigade Road, Bangalore', 'Bangalore', '9356789012', 375),
(9, 'NGO', 9, 'Helping Hands Trust', '5, Hennur Road, Bangalore', 'Bangalore', '9234567890', 378),
(10, 'NGO', 10, 'United for Change', 'Vijayanagar, Bangalore', 'Bangalore', '9012345678', 382),
(11, 'NGO', 11, 'Shanti Foundation', 'Main Bazaar, Chamarajanagar', 'Chamarajanagar', '9056781234', 385),
(12, 'NGO', 12, 'Inspire Foundation', 'Opposite Government Hospital, Chamarajanagar', 'Chamarajanagar', '9045678901', 388),
(13, 'NGO', 13, 'Global Hearts Foundation', 'No. 21, Main Road, Chamarajanagar', 'Chamarajanagar', '9113456789', 352),
(14, 'NGO', 14, 'Empowerment Trust', 'NR Colony, Chamarajanagar', 'Chamarajanagar', '9678012345', 356),
(15, 'NGO', 15, 'Light of Hope NGO', 'Near KSRTC Bus Stand, Chamarajanagar', 'Chamarajanagar', '9346789012', 360),
(16, 'NGO', 0, 'Visionary Hearts NGO', 'Chamarajnagar Main Market, Chamarajanagar', 'Chamarajanagar', '9816123456', 365),
(17, 'NGO', 17, 'Together for Change', 'Near Railway Station, Chamarajanagar', 'Chamarajanagar', '9123456789', 370),
(18, 'NGO', 18, 'Compassionate Voices', 'Opposite Chamarajanagar Government School, Chamarajanagar', 'Chamarajanagar', '9376578901', 374),
(19, 'NGO', 19, 'Heart to Heart Foundation', 'Near Chamarajanagar Bus Stop, Chamarajanagar', 'Chamarajanagar', '9234567890', 379),
(20, 'NGO', 20, 'Life Springs Foundation', 'Brahmagiri, Chamarajanagar', 'Chamarajanagar', '9012345678', 383),
(21, 'NGO', 21, 'Horizon Foundation', '7th Cross, Near Bus Stand, Hassan', 'Hassan', '9876543210', 386),
(22, 'NGO', 22, 'Hands Across the World', 'Near Government Hospital, Hassan', 'Hassan', '9345678901', 389),
(23, 'NGO', 23, 'Rise and Shine Foundation', 'No. 34, Main Road, Hassan', 'Hassan', '9123456789', 351),
(24, 'NGO', 24, 'Bridge of Hope', '20/1, Market Area, Hassan', 'Hassan', '9678901234', 355),
(25, 'NGO', 25, 'Compassionate Care Trust', 'Opposite KSRTC Bus Station, Hassan', 'Hassan', '9345789012', 359),
(26, 'NGO', 26, 'Lifeline NGO', 'Raja Market, Hassan', 'Hassan', '9876123456', 363),
(27, 'NGO', 27, 'New Horizons Foundation', 'Vijayanagar, Hassan', 'Hassan', '9112345678', 367),
(28, 'NGO', 28, 'Pathfinders NGO', 'Mahatma Gandhi Road, Hassan', 'Hassan', '9356789012', 372),
(29, 'NGO', 29, 'Peace Builders Trust', 'Near Railway Station, Hassan', 'Hassan', '9234567890', 376),
(30, 'NGO', 30, 'Share the Love Foundation', 'Gandhi Bazaar, Hassan', 'Hassan', '9012345678', 380),
(31, 'NGO', 31, 'Seeds of Change', 'Madikeri, Kodagu', 'Kodagu', '9345678901', 384),
(32, 'NGO', 32, 'Aashayein Foundation', 'Virajpet, Kodagu', 'Kodagu', '9123456789', 387),
(33, 'NGO', 33, 'Light of Life NGO', 'Near Madikeri Fort, Kodagu', 'Kodagu', '9678901234', 354),
(34, 'NGO', 34, 'Reach Out NGO', 'No. 12, Coffee Estate Road, Kodagu', 'Kodagu', '9345789012', 358),
(35, 'NGO', 35, 'Step by Step Foundation', 'Rajendra Road, Madikeri, Kodagu', 'Kodagu', '9876123456', 362),
(36, 'NGO', 36, 'Beyond Boundaries NGO', 'Gonicoppal, Kodagu', 'Kodagu', '9112345678', 366),
(37, 'NGO', 37, 'Rays of Hope', 'Near Raja Seat, Kodagu', 'Kodagu', '9356789012', 373),
(38, 'NGO', 38, 'United We Stand Trust', 'Madikeri Bus Stand, Kodagu', 'Kodagu', '9234567890', 377),
(39, 'NGO', 39, 'Caring Hearts Foundation', 'Kodagu District, Near Fort, Kodagu', 'Kodagu', '9012345678', 381),
(40, 'NGO', 40, 'Voices for the Voiceless', 'Ponnampet, Kodagu', 'Kodagu', '9056781234', 387),
(41, 'NGO', 41, 'Hope and Light Foundation', '108, Ashoka Road, Mysore', 'Mysore', '9876543210', 353),
(42, 'NGO', 42, 'The Giving Tree NGO', 'No. 34, Krishnamurthy Puram, Mysore', 'Mysore', '9345678901', 361),
(43, 'NGO', 43, 'One World Foundation', '12, Chamundeshwari Temple Road, Mysore', 'Mysore', '9123456789', 369),
(44, 'NGO', 44, 'Unity for Change', '123, KRS Road, Mysore', 'Mysore', '9678901234', 377),
(45, 'NGO', 45, 'True Hearts Trust', 'Opposite Mysore Palace, Mysore', 'Mysore', '9345789012', 385),
(46, 'NGO', 46, 'Hands of Compassion', 'Gokulam, Mysore', 'Mysore', '9876123456', 350),
(47, 'NGO', 47, 'Together We Can Foundation', 'Near Railway Station, Mysore', 'Mysore', '9112345678', 359),
(48, 'NGO', 48, 'Hope Springs Eternal NGO', 'Lalitha Mahal Palace Road, Mysore', 'Mysore', '9356789012', 368),
(49, 'NGO', 49, 'Rise Above Foundation', 'Sayyaji Rao Road, Mysore', 'Mysore', '9234567890', 376),
(50, 'NGO', 50, 'The Helping Hand Network', 'Saraswathipuram, Mysore', 'Mysore', '9012345678', 384),
(64, 'Orphanage', 1, 'Ashraya', 'Indiranagar', 'Bangalore', '9880456321', 280),
(65, 'Orphanage', 2, 'Sneha Orphanage', 'Jayanagar', 'Bangalore', '9845612345', 283),
(66, 'Orphanage', 3, 'Navajeevana Home', 'Malleshwaram', 'Bangalore', '9912345678', 286),
(67, 'Orphanage', 4, 'Bosco Shelter', 'Majestic', 'Bangalore', '9880765432', 289),
(68, 'Orphanage', 5, 'Mother Teresa Home', 'Richmond Town', 'Bangalore', '9845011122', 292),
(69, 'Orphanage', 6, 'St. Joseph\'s Home', 'Cooke Town', 'Bangalore', '9977889900', 295),
(70, 'Orphanage', 7, 'Al-Falah Orphanage', 'Frazer Town', 'Bangalore', '9765432109', 298),
(71, 'Orphanage', 8, 'Shanthi Nilaya', 'BTM Layout', 'Bangalore', '9123456780', 301),
(72, 'Orphanage', 9, 'Grace Shelter', 'Koramangala', 'Bangalore', '9812345678', 304),
(73, 'Orphanage', 10, 'Divine Mercy Home', 'Banashankari', 'Bangalore', '9345678901', 307),
(74, 'Orphanage', 11, 'Hope Foundation', 'KR Puram', 'Bangalore', '8888999911', 310),
(75, 'Orphanage', 12, 'Peace Children Home', 'Whitefield', 'Bangalore', '9000111222', 313),
(76, 'Orphanage', 13, 'Little Blessings', 'Hebbal', 'Bangalore', '9033445566', 316),
(77, 'Orphanage', 14, 'Sunrise Orphanage', 'Electronic City', 'Bangalore', '9988776655', 319),
(78, 'Orphanage', 15, 'Al-Noor Foundation', 'Shivajinagar', 'Bangalore', '9665544332', 322),
(79, 'Orphanage', 16, 'Vatsalya Ashram', 'Vijayanagar', 'Bangalore', '9777666555', 325),
(80, 'Orphanage', 17, 'Angel Care Home', 'Yeshwanthpur', 'Bangalore', '9223344556', 328),
(81, 'Orphanage', 18, 'St. Mary\'s Haven', 'Ulsoor', 'Bangalore', '9445566778', 331),
(82, 'Orphanage', 19, 'Al-Hikmah Shelter', 'RT Nagar', 'Bangalore', '9556677889', 334),
(83, 'Orphanage', 20, 'Anatha Ashram', 'Wilson Garden', 'Bangalore', '9334455667', 337),
(84, 'Orphanage', 21, 'Ashakirana Home', 'Biligiriranga Hills', 'Chamarajanagar', '9845098765', 340),
(85, 'Orphanage', 22, 'Care Shelter', 'Yelandur', 'Chamarajanagar', '9845011223', 282),
(86, 'Orphanage', 23, 'St. Jude Home', 'Kollegal', 'Chamarajanagar', '9876543210', 285),
(87, 'Orphanage', 24, 'Al-Hayat Orphanage', 'Hanur', 'Chamarajanagar', '9832109876', 288),
(88, 'Orphanage', 25, 'Grace Field Home', 'Gundlupet', 'Chamarajanagar', '9823456789', 291),
(89, 'Orphanage', 26, 'Children Light', 'Boregowdanadoddi', 'Chamarajanagar', '9812349087', 294),
(90, 'Orphanage', 27, 'Faithful Hands', 'Santhemaralli', 'Chamarajanagar', '9845678901', 297),
(91, 'Orphanage', 28, 'Blessed Shelter', 'Chamarajanagar South', 'Chamarajanagar', '9845043211', 300),
(92, 'Orphanage', 29, 'Al-Khair Trust', 'Harave', 'Chamarajanagar', '9887766554', 303),
(93, 'Orphanage', 30, 'St. Luke Center', 'Badanaguppe', 'Chamarajanagar', '9832112233', 306),
(94, 'Orphanage', 31, 'New Mercy Home', 'Doddarampura', 'Chamarajanagar', '9877654321', 309),
(95, 'Orphanage', 32, 'Angel Hearts', 'Terakanambi', 'Chamarajanagar', '9854321098', 312),
(96, 'Orphanage', 33, 'Zion Orphanage', 'Chinnada Halli', 'Chamarajanagar', '9845098761', 315),
(97, 'Orphanage', 34, 'Shanthi Home', 'Kagalavadi', 'Chamarajanagar', '9876543100', 318),
(98, 'Orphanage', 35, 'Al-Rashid Trust', 'Kuderu', 'Chamarajanagar', '9801234567', 321),
(99, 'Orphanage', 36, 'Compassion House', 'Muguru', 'Chamarajanagar', '9845091234', 324),
(100, 'Orphanage', 37, 'Healing Shelter', 'Kollappanahalli', 'Chamarajanagar', '9810098765', 327),
(101, 'Orphanage', 38, 'Children Peace', 'Akkur', 'Chamarajanagar', '9823451234', 330),
(102, 'Orphanage', 39, 'Divine Nest', 'Basapura', 'Chamarajanagar', '9801122334', 333),
(103, 'Orphanage', 40, 'Holy Path', 'Yelandur Main', 'Chamarajanagar', '9832112345', 336),
(104, 'Orphanage', 41, 'Hassan Shelter', 'KR Nagar', 'Hassan', '9898989898', 339),
(105, 'Orphanage', 42, 'Hope House', 'Holenarasipura', 'Hassan', '9812341234', 281),
(106, 'Orphanage', 43, 'Grace Valley', 'Sakleshpur', 'Hassan', '9800111222', 284),
(107, 'Orphanage', 44, 'Al-Madina Shelter', 'Arasikere', 'Hassan', '9897665544', 287),
(108, 'Orphanage', 45, 'Faith Nest', 'Belur', 'Hassan', '9881122334', 290),
(109, 'Orphanage', 46, 'St. Andrew\'s Home', 'Hassan City', 'Hassan', '9801122789', 293),
(110, 'Orphanage', 47, 'Mercy Children Center', 'Gorur', 'Hassan', '9856712345', 296),
(111, 'Orphanage', 48, 'Al-Rahma House', 'Alur', 'Hassan', '9811198765', 299),
(112, 'Orphanage', 49, 'Divine Kids Shelter', 'Arkalgud', 'Hassan', '9888789890', 302),
(113, 'Orphanage', 50, 'Blessing Center', 'Channarayapatna', 'Hassan', '9809988776', 305),
(114, 'Orphanage', 51, 'Zion Hope', 'Sakleshpur Rural', 'Hassan', '9871212121', 308),
(115, 'Orphanage', 52, 'Guardian Home', 'Halebidu', 'Hassan', '9831231234', 311),
(116, 'Orphanage', 53, 'Hearts United', 'Srinivaspura', 'Hassan', '9821456789', 314),
(117, 'Orphanage', 54, 'Angel’s Embrace', 'Shanthigrama', 'Hassan', '9845123765', 317),
(118, 'Orphanage', 55, 'Al-Zahra Center', 'Dudda', 'Hassan', '9812347654', 320),
(119, 'Orphanage', 56, 'Tranquil Home', 'Konanur', 'Hassan', '9880099009', 323),
(120, 'Orphanage', 57, 'Holy Shelter', 'Belur Taluk', 'Hassan', '9823456780', 326),
(121, 'Orphanage', 58, 'Faith Way Home', 'Salagame', 'Hassan', '9812789012', 329),
(122, 'Orphanage', 59, 'Compassionate Kids', 'Sathenahalli', 'Hassan', '9807654321', 332),
(123, 'Orphanage', 60, 'Little Stars', 'Chikkamagalur Road', 'Hassan', '9876543212', 335),
(124, 'Orphanage', 61, 'Coorg Shelter', 'Madikeri', 'Kodagu', '9845123456', 338),
(125, 'Orphanage', 62, 'Green Valley Home', 'Virajpet', 'Kodagu', '9876543213', 340),
(126, 'Orphanage', 63, 'Hill Haven', 'Somwarpet', 'Kodagu', '9881234567', 283),
(127, 'Orphanage', 64, 'Mercy Hill Home', 'Kushalnagar', 'Kodagu', '9845078912', 286),
(128, 'Orphanage', 65, 'Hope Cottage', 'Gonikoppal', 'Kodagu', '9823456781', 289),
(129, 'Orphanage', 66, 'Al-Badr Shelter', 'Pollibetta', 'Kodagu', '9812309876', 292),
(130, 'Orphanage', 67, 'Blessed Hearts', 'Napoklu', 'Kodagu', '9871122334', 295),
(131, 'Orphanage', 68, 'St. Peter\'s Orphanage', 'Virajpet Town', 'Kodagu', '9801122445', 298),
(132, 'Orphanage', 69, 'Shalom Children Home', 'Cherambane', 'Kodagu', '9811123344', 301),
(133, 'Orphanage', 70, 'Al-Mahdi House', 'Suntikoppa', 'Kodagu', '9876543101', 304),
(134, 'Orphanage', 71, 'Divine Grace Home', 'Madikeri South', 'Kodagu', '9809988771', 307),
(135, 'Orphanage', 72, 'Angels Refuge', 'Srimangala', 'Kodagu', '9831234567', 310),
(136, 'Orphanage', 73, 'Care & Cure Home', 'Somwarpet North', 'Kodagu', '9821567890', 313),
(137, 'Orphanage', 74, 'St. Clare Shelter', 'Kudige', 'Kodagu', '9845098123', 316),
(138, 'Orphanage', 75, 'Al-Firdous Center', 'Virajpet Rural', 'Kodagu', '9812123456', 319),
(139, 'Orphanage', 76, 'Safe Hands Home', 'Kushalnagar East', 'Kodagu', '9888771122', 322),
(140, 'Orphanage', 77, 'Peaceful Steps', 'Hudikeri', 'Kodagu', '9845609876', 325),
(141, 'Orphanage', 78, 'Healing Touch Shelter', 'Madapura', 'Kodagu', '9812233445', 328),
(142, 'Orphanage', 79, 'Shelter of Light', 'Thithimathi', 'Kodagu', '9821456123', 331),
(143, 'Orphanage', 80, 'New Hope House', 'Chettalli', 'Kodagu', '9801237890', 334),
(144, 'Orphanage', 81, 'Namma Mane', 'Vijayanagar', 'Mysore', '9845671234', 337),
(145, 'Orphanage', 82, 'Mother\'s Arms', 'Nanjangud', 'Mysore', '9812345671', 340),
(146, 'Orphanage', 83, 'Hearts Together', 'Jayalakshmipuram', 'Mysore', '9800111000', 280),
(147, 'Orphanage', 84, 'St. Theresa\'s Home', 'Chamundi Hill', 'Mysore', '9876543234', 283),
(148, 'Orphanage', 85, 'Al-Huda Orphanage', 'Rajivnagar', 'Mysore', '9823451234', 286),
(149, 'Orphanage', 86, 'Shelter of Love', 'Saraswathipuram', 'Mysore', '9845012345', 289),
(150, 'Orphanage', 87, 'Bright Future Home', 'Hebbal', 'Mysore', '9809988772', 292),
(151, 'Orphanage', 88, 'Helping Hands', 'Metagalli', 'Mysore', '9871122111', 295),
(152, 'Orphanage', 89, 'St. Joseph Shelter', 'Kuvempunagar', 'Mysore', '9845098124', 298),
(153, 'Orphanage', 90, 'Mercy Mission Home', 'Yadavagiri', 'Mysore', '9812233446', 301),
(154, 'Orphanage', 91, 'Blessing Home', 'JP Nagar', 'Mysore', '9845623456', 304),
(155, 'Orphanage', 92, 'Sunbeam Shelter', 'Ashokapuram', 'Mysore', '9832141234', 307),
(156, 'Orphanage', 93, 'Holy Family Home', 'Udayagiri', 'Mysore', '9812765432', 310),
(157, 'Orphanage', 94, 'Angel Shelter', 'Tilaknagar', 'Mysore', '9888776656', 313),
(158, 'Orphanage', 95, 'Peace Orphanage', 'Bogadi', 'Mysore', '9821345678', 316),
(159, 'Orphanage', 96, 'Al-Noor Haven', 'Lashkar Mohalla', 'Mysore', '9801234568', 319),
(160, 'Orphanage', 97, 'Faith Kids Home', 'Hootagalli', 'Mysore', '9845123000', 322),
(161, 'Orphanage', 98, 'Grace Light Home', 'Vijayanagar 3rd Stage', 'Mysore', '9812347600', 325),
(162, 'Orphanage', 99, 'Compassion Shelter', 'Mandi Mohalla', 'Mysore', '9845617890', 328),
(163, 'Orphanage', 100, 'Divine House', 'Chamundipuram', 'Mysore', '9832144567', 331),
(191, 'Railway', 1, 'Bangalore City Railway Station', 'Station Road, Majestic, Bangalore', 'Bangalore', NULL, 220),
(192, 'Railway', 2, 'Kengeri Railway Station', 'Kengeri, Bangalore', 'Bangalore', NULL, 223),
(193, 'Railway', 3, 'Yeswanthpur Railway Station', 'Yeswanthpur, Bangalore', 'Bangalore', NULL, 226),
(194, 'Railway', 4, 'Yelahanka Railway Station', 'Yelahanka, Bangalore', 'Bangalore', NULL, 229),
(195, 'Railway', 5, 'Banaswadi Railway Station', 'Banaswadi, Bangalore', 'Bangalore', NULL, 232),
(196, 'Railway', 6, 'Mysore Junction Railway Station', 'Station Road, Mysore', 'Mysore', NULL, 235),
(197, 'Railway', 7, 'Naganahalli Railway Station', 'Naganahalli, Mysore', 'Mysore', NULL, 238),
(198, 'Railway', 8, 'KRS Railway Station', 'KRS, Mysore', 'Mysore', NULL, 241),
(199, 'Railway', 9, 'Srirangapatna Railway Station', 'Srirangapatna, Mysore', 'Mysore', NULL, 244),
(200, 'Railway', 10, 'Hebbal Railway Station', 'Hebbal, Mysore', 'Mysore', NULL, 247),
(201, 'Railway', 11, 'Hassan Junction Railway Station', 'BM Road, Hassan City, Hassan', 'Hassan', NULL, 250),
(202, 'Railway', 12, 'Arsikere Junction Railway Station', 'Railway Station Road, Arsikere, Hassan', 'Hassan', NULL, 253),
(203, 'Railway', 13, 'Sakleshpur Railway Station', 'Station Road, Sakleshpur, Hassan', 'Hassan', NULL, 256),
(204, 'Railway', 14, 'Hole Narsipur Railway Station', 'Station Road, Holenarasipura, Hassan', 'Hassan', NULL, 259),
(205, 'Railway', 15, 'Channarayapatna Railway Station', 'Railway Station Area, Channarayapatna, Hassan', 'Hassan', NULL, 260),
(206, 'Railway', 16, 'Madikeri Railway Station', 'Madikeri, Kodagu', 'Kodagu', NULL, 222),
(207, 'Railway', 17, 'Virajpet Railway Station', 'Virajpet, Kodagu', 'Kodagu', NULL, 225),
(208, 'Railway', 18, 'Kushalnagar Railway Station', 'Kushalnagar, Kodagu', 'Kodagu', NULL, 228),
(209, 'Railway', 19, 'Suntikoppa Railway Station', 'Suntikoppa, Kodagu', 'Kodagu', NULL, 231),
(210, 'Railway', 20, 'Bhagamandala Railway Station', 'Bhagamandala, Kodagu', 'Kodagu', NULL, 234),
(211, 'Railway', 21, 'Chamarajanagar Railway Station', 'Station Road, Chamarajanagar', 'Chamarajanagar', NULL, 237),
(212, 'Railway', 22, 'Nanjangud Town Railway Station', 'Nanjangud, Chamarajanagar', 'Chamarajanagar', NULL, 240),
(213, 'Railway', 23, 'Badanaguppe Railway Station', 'Badanaguppe, Chamarajanagar', 'Chamarajanagar', NULL, 243),
(214, 'Railway', 24, 'Kavalande Railway Station', 'Kavalande, Chamarajanagar', 'Chamarajanagar', NULL, 246),
(215, 'Railway', 25, 'Konanur Railway Station', 'Konanur, Chamarajanagar', 'Chamarajanagar', NULL, 249),
(222, 'Bus Stand', 1, 'Kempegowda Bus Station', 'Subhashnagar, Bengaluru-09', 'Bangalore', NULL, 150),
(223, 'Bus Stand', 2, 'Shivajinagar Bus Station', 'Shivajinagar, Bengaluru-01', 'Bangalore', NULL, 153),
(224, 'Bus Stand', 3, 'Shanthinagar TTMC', 'Shanthinagar, Bengaluru', 'Bangalore', NULL, 156),
(225, 'Bus Stand', 4, 'Jayanagar TTMC', 'Jayanagar, Bengaluru', 'Bangalore', NULL, 159),
(226, 'Bus Stand', 5, 'Kengeri TTMC', 'Kengeri, Bengaluru', 'Bangalore', NULL, 162),
(227, 'Bus Stand', 6, 'Banashankari TTMC', 'Banashankari, Bengaluru', 'Bangalore', NULL, 165),
(228, 'Bus Stand', 7, 'Koramangala TTMC', 'Koramangala, Bengaluru', 'Bangalore', NULL, 168),
(229, 'Bus Stand', 8, 'Yeshwanthapura TTMC', 'Yeshwanthapura, Bengaluru', 'Bangalore', NULL, 171),
(230, 'Bus Stand', 9, 'Vijayanagar TTMC', 'Vijayanagar, Bengaluru', 'Bangalore', NULL, 174),
(231, 'Bus Stand', 10, 'Domlur TTMC', 'Domlur, Bengaluru', 'Bangalore', NULL, 177),
(232, 'Bus Stand', 11, 'Whitefield Bus Station', 'Whitefield, Bengaluru', 'Bangalore', NULL, 180),
(233, 'Bus Stand', 12, 'Bannerghatta Bus Station', 'Bannerghatta, Bengaluru', 'Bangalore', NULL, 183),
(234, 'Bus Stand', 13, 'Austin Town Bus Stop', 'Austin Town, Bengaluru', 'Bangalore', NULL, 186),
(235, 'Bus Stand', 14, 'Majestic Bus Stand', 'Majestic, Bengaluru', 'Bangalore', NULL, 189),
(236, 'Bus Stand', 15, 'Hebbal Bus Station', 'Hebbal, Bengaluru', 'Bangalore', NULL, 192),
(237, 'Bus Stand', 16, 'Electronic City Bus Station', 'Electronic City, Bengaluru', 'Bangalore', NULL, 195),
(238, 'Bus Stand', 17, 'Marathahalli Bus Station', 'Marathahalli, Bengaluru', 'Bangalore', NULL, 198),
(239, 'Bus Stand', 18, 'BTM Layout Bus Station', 'BTM Layout, Bengaluru', 'Bangalore', NULL, 151),
(240, 'Bus Stand', 19, 'Indiranagar Bus Station', 'Indiranagar, Bengaluru', 'Bangalore', NULL, 154),
(241, 'Bus Stand', 20, 'KR Market Bus Station', 'KR Market, Bengaluru', 'Bangalore', NULL, 157),
(242, 'Bus Stand', 21, 'Mysore KSRTC Bus Stand', 'Mofussil Bus Stand, Mysore', 'Mysore', NULL, 160),
(243, 'Bus Stand', 22, 'Mysore City Bus Stand', 'City Bus Stand, Mysore', 'Mysore', NULL, 163),
(244, 'Bus Stand', 23, 'Vontikoppal Bus Stand', '2nd Cross, Vontikoppal, Mysore', 'Mysore', NULL, 166),
(245, 'Bus Stand', 24, 'Chamundi Hill Bus Stand', 'Chamundi Hill, Mysore', 'Mysore', NULL, 169),
(246, 'Bus Stand', 25, 'Kuvempunagar Bus Stand', 'Kuvempunagar, Mysore', 'Mysore', NULL, 172),
(247, 'Bus Stand', 26, 'Saraswathipuram Bus Stand', 'Saraswathipuram, Mysore', 'Mysore', NULL, 175),
(248, 'Bus Stand', 27, 'Nanjangud Bus Stand', 'Nanjangud, Mysore', 'Mysore', NULL, 178),
(249, 'Bus Stand', 28, 'Hootagalli Bus Stand', 'Hootagalli, Mysore', 'Mysore', NULL, 181),
(250, 'Bus Stand', 29, 'Bogadi Bus Stand', 'Bogadi, Mysore', 'Mysore', NULL, 184),
(251, 'Bus Stand', 30, 'Hebbal Bus Stand', 'Hebbal, Mysore', 'Mysore', NULL, 187),
(252, 'Bus Stand', 31, 'Metagalli Bus Stand', 'Metagalli, Mysore', 'Mysore', NULL, 190),
(253, 'Bus Stand', 32, 'Jayalakshmipuram Bus Stand', 'Jayalakshmipuram, Mysore', 'Mysore', NULL, 193),
(254, 'Bus Stand', 33, 'Siddarthanagar Bus Stand', 'Siddarthanagar, Mysore', 'Mysore', NULL, 196),
(255, 'Bus Stand', 34, 'Lashkar Mohalla Bus Stand', 'Lashkar Mohalla, Mysore', 'Mysore', NULL, 199),
(256, 'Bus Stand', 35, 'Tilaknagar Bus Stand', 'Tilaknagar, Mysore', 'Mysore', NULL, 152),
(257, 'Bus Stand', 36, 'Vijayanagar Bus Stand', 'Vijayanagar, Mysore', 'Mysore', NULL, 155),
(258, 'Bus Stand', 37, 'Rajivnagar Bus Stand', 'Rajivnagar, Mysore', 'Mysore', NULL, 158),
(259, 'Bus Stand', 38, 'Kalyanagiri Bus Stand', 'Kalyanagiri, Mysore', 'Mysore', NULL, 161),
(260, 'Bus Stand', 39, 'Udayagiri Bus Stand', 'Udayagiri, Mysore', 'Mysore', NULL, 164),
(261, 'Bus Stand', 40, 'Mandi Mohalla Bus Stand', 'Mandi Mohalla, Mysore', 'Mysore', NULL, 167),
(262, 'Bus Stand', 41, 'Chamarajanagar KSRTC Bus Stand', 'NH948, Chamarajanagar', 'Chamarajanagar', NULL, 170),
(263, 'Bus Stand', 42, 'Kollegal Bus Stand', 'Kollegal, Chamarajanagar', 'Chamarajanagar', NULL, 173),
(264, 'Bus Stand', 43, 'Hanur Bus Stand', 'Hanur, Chamarajanagar', 'Chamarajanagar', NULL, 176),
(265, 'Bus Stand', 44, 'Yelandur Bus Stand', 'Yelandur, Chamarajanagar', 'Chamarajanagar', NULL, 179),
(266, 'Bus Stand', 45, 'Gundlupet Bus Stand', 'Gundlupet, Chamarajanagar', 'Chamarajanagar', NULL, 182),
(267, 'Bus Stand', 46, 'BR Hills Bus Stand', 'BR Hills, Chamarajanagar', 'Chamarajanagar', NULL, 185),
(268, 'Bus Stand', 47, 'Nagavalli Bus Stop', 'Chamarajanagara-BR Hills Rd, Nagavalli, Chamarajanagar', 'Chamarajanagar', NULL, 188),
(269, 'Bus Stand', 48, 'Santhemaralli Bus Stand', 'Santhemaralli, Chamarajanagar', 'Chamarajanagar', NULL, 191),
(270, 'Bus Stand', 49, 'Kagalavadi Bus Stand', 'Kagalavadi, Chamarajanagar', 'Chamarajanagar', NULL, 194),
(271, 'Bus Stand', 50, 'Kuderu Bus Stand', 'Kuderu, Chamarajanagar', 'Chamarajanagar', NULL, 197),
(272, 'Bus Stand', 51, 'Haradanahalli Bus Stand', 'Haradanahalli, Chamarajanagar', 'Chamarajanagar', NULL, 150),
(273, 'Bus Stand', 52, 'Chinnadagudihundi Bus Stand', 'Chinnadagudihundi, Chamarajanagar', 'Chamarajanagar', NULL, 153),
(274, 'Bus Stand', 53, 'Badanaguppe Bus Stand', 'Badanaguppe, Chamarajanagar', 'Chamarajanagar', NULL, 156),
(275, 'Bus Stand', 54, 'Kavalande Bus Stand', 'Kavalande, Chamarajanagar', 'Chamarajanagar', NULL, 159),
(276, 'Bus Stand', 55, 'Terakanambi Bus Stand', 'Terakanambi, Chamarajanagar', 'Chamarajanagar', NULL, 162),
(277, 'Bus Stand', 56, 'Mangala Bus Stand', 'Mangala, Chamarajanagar', 'Chamarajanagar', NULL, 165),
(278, 'Bus Stand', 57, 'Heggavadi Bus Stand', 'Heggavadi, Chamarajanagar', 'Chamarajanagar', NULL, 168),
(279, 'Bus Stand', 58, 'Kothanur Bus Stand', 'Kothanur, Chamarajanagar', 'Chamarajanagar', NULL, 171),
(280, 'Bus Stand', 59, 'Kuderu Bus Stand', 'Kuderu, Chamarajanagar', 'Chamarajanagar', NULL, 174),
(281, 'Bus Stand', 60, 'Kuderu Bus Stand', 'Kuderu, Chamarajanagar', 'Chamarajanagar', NULL, 177),
(282, 'Bus Stand', 61, 'Madikeri KSRTC Bus Stand', 'Near Fort Entrance, Main Road, Madikeri', 'Kodagu', NULL, 180),
(283, 'Bus Stand', 62, 'Virajpet KSRTC Bus Stand', 'Bus Stand Road, Virajpet Town, Kodagu', 'Kodagu', NULL, 183),
(284, 'Bus Stand', 63, 'Kushalnagar KSRTC Bus Stand', 'Opp. Govt Hospital, BM Road, Kushalnagar', 'Kodagu', NULL, 186),
(285, 'Bus Stand', 64, 'Somwarpet Bus Stand', 'Main Market Road, Somwarpet, Kodagu', 'Kodagu', NULL, 189),
(286, 'Bus Stand', 65, 'Gonikoppal Bus Stand', 'Ponnampet Road, Gonikoppal Town, Kodagu', 'Kodagu', NULL, 192),
(287, 'Bus Stand', 66, 'Ponnampet Bus Stand', 'Near College Road, Ponnampet, Kodagu', 'Kodagu', NULL, 195),
(288, 'Bus Stand', 67, 'Napoklu Bus Stand', 'Madikeri-Napoklu Road, Napoklu, Kodagu', 'Kodagu', NULL, 198),
(289, 'Bus Stand', 68, 'Siddapura Bus Stand', 'Gonikoppal Road, Siddapura Town, Kodagu', 'Kodagu', NULL, 151),
(290, 'Bus Stand', 69, 'Pollibetta Bus Stand', 'Pollibetta Road, Virajpet Taluk, Kodagu', 'Kodagu', NULL, 154),
(291, 'Bus Stand', 70, 'Chettalli Bus Stand', 'SH27, Chettalli Junction, Kodagu', 'Kodagu', NULL, 157),
(292, 'Bus Stand', 71, 'Bhagamandala Bus Stand', 'Bhagamandala Temple Road, Kodagu', 'Kodagu', NULL, 160),
(293, 'Bus Stand', 72, 'Kakkabe Bus Stand', 'Tadiandamol Base Road, Kakkabe Village, Kodagu', 'Kodagu', NULL, 163),
(294, 'Bus Stand', 73, 'Balele Bus Stand', 'Near Balele Market, Balele, Kodagu', 'Kodagu', NULL, 166),
(295, 'Bus Stand', 74, 'Kanoor Bus Stand', 'SH89, Kanoor Post, Virajpet Taluk, Kodagu', 'Kodagu', NULL, 169),
(296, 'Bus Stand', 75, 'Shanivarasanthe Bus Stand', 'Main Street, Shanivarasanthe, Kodagu', 'Kodagu', NULL, 172),
(297, 'Bus Stand', 76, 'Thithimathi Bus Stand', 'Thithimathi Circle, Kodagu', 'Kodagu', NULL, 175),
(298, 'Bus Stand', 77, 'Murnad Bus Stand', 'Madikeri-Murnad Road, Murnad Village, Kodagu', 'Kodagu', NULL, 178),
(299, 'Bus Stand', 78, 'Kundahalli Bus Stand', 'Kundahalli Junction, Kodagu', 'Kodagu', NULL, 181),
(300, 'Bus Stand', 79, 'Nalkeri Bus Stand', 'Nalkeri Elephant Camp Road, Kodagu', 'Kodagu', NULL, 184),
(301, 'Bus Stand', 80, 'Kutta Bus Stand', 'Kutta-Mallur Road, Kutta Village, Kodagu', 'Kodagu', NULL, 187),
(302, 'Bus Stand', 81, 'Hassan KSRTC Bus Stand', 'BM Road, Hemavathi Nagar, Hassan', 'Hassan', NULL, 190),
(303, 'Bus Stand', 82, 'Channarayapatna Bus Stand', 'MG Road, Channarayapatna Town, Hassan', 'Hassan', NULL, 193),
(304, 'Bus Stand', 83, 'Sakleshpur Bus Stand', 'Bus Depot Road, Sakleshpur, Hassan', 'Hassan', NULL, 196),
(305, 'Bus Stand', 84, 'Arasikere Bus Stand', 'B.H. Road, Near Railway Station, Arasikere, Hassan', 'Hassan', NULL, 199),
(306, 'Bus Stand', 85, 'Belur Bus Stand', 'Temple Road, Near Chennakeshava Temple, Belur, Hassan', 'Hassan', NULL, 152),
(307, 'Bus Stand', 86, 'Alur Bus Stand', 'Main Road, Opp. Police Station, Alur, Hassan', 'Hassan', NULL, 155),
(308, 'Bus Stand', 87, 'Holenarasipura Bus Stand', 'College Road, Holenarasipura, Hassan', 'Hassan', NULL, 158),
(309, 'Bus Stand', 88, 'Shantigrama Bus Stand', 'NH-75, Shantigrama, Hassan', 'Hassan', NULL, 161),
(310, 'Bus Stand', 89, 'Kattaya Bus Stand', 'Hassan-Arkalgud Road, Kattaya, Hassan', 'Hassan', NULL, 164),
(311, 'Bus Stand', 90, 'Arkalgud Bus Stand', 'Bus Stand Road, Arkalgud, Hassan', 'Hassan', NULL, 167),
(312, 'Bus Stand', 91, 'Halebidu Bus Stand', 'Near Hoysaleswara Temple, Halebidu, Hassan', 'Hassan', NULL, 170),
(313, 'Bus Stand', 92, 'Sathenahalli Bus Stand', 'Sathenahalli Village, Arsikere Taluk, Hassan', 'Hassan', NULL, 173),
(314, 'Bus Stand', 93, 'Belavadi Bus Stand', 'SH-7, Belavadi, Hassan', 'Hassan', NULL, 176),
(315, 'Bus Stand', 94, 'Gorur Bus Stand', 'Near Gorur Dam, Gorur, Hassan', 'Hassan', NULL, 179),
(316, 'Bus Stand', 95, 'Boovanahalli Bus Stand', 'Main Street, Boovanahalli, Hassan', 'Hassan', NULL, 182),
(317, 'Bus Stand', 96, 'Kaggalipura Bus Stand', 'Kaggalipura, Arasikere Taluk, Hassan', 'Hassan', NULL, 185),
(318, 'Bus Stand', 97, 'Kundur Bus Stand', 'Kundur Village, Holenarasipura Taluk, Hassan', 'Hassan', NULL, 188),
(319, 'Bus Stand', 98, 'Yaladahalli Bus Stand', 'Yaladahalli, Belur Taluk, Hassan', 'Hassan', NULL, 191),
(320, 'Bus Stand', 99, 'Mallipatna Bus Stand', 'Near Government School, Mallipatna, Hassan', 'Hassan', NULL, 194),
(321, 'Bus Stand', 100, 'Kikkeri Bus Stand', 'Kikkeri Road, Kikkeri Town, Hassan', 'Hassan', NULL, 197);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `district` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `phone`, `district`) VALUES
(1, 'aarav1', 'aarav1@example.com', 'aarav1pass', '9800000001', 'Bangalore'),
(2, 'vihaan2', 'vihaan2@example.com', 'vihaan2pass', '9800000002', 'Bangalore'),
(3, 'vivaan3', 'vivaan3@example.com', 'vivaan3pass', '9800000003', 'Bangalore'),
(4, 'aditya4', 'aditya4@example.com', 'aditya4pass', '9800000004', 'Bangalore'),
(5, 'arjun5', 'arjun5@example.com', 'arjun5pass', '9800000005', 'Bangalore'),
(6, 'sai6', 'sai6@example.com', 'sai6pass', '9800000006', 'Bangalore'),
(7, 'krishna7', 'krishna7@example.com', 'krishna7pass', '9800000007', 'Bangalore'),
(8, 'ishaan8', 'ishaan8@example.com', 'ishaan8pass', '9800000008', 'Bangalore'),
(9, 'shaurya9', 'shaurya9@example.com', 'shaurya9pass', '9800000009', 'Bangalore'),
(10, 'atharv10', 'atharv10@example.com', 'atharv10pass', '9800000010', 'Bangalore'),
(11, 'anaya11', 'anaya11@example.com', 'anaya11pass', '9800000011', 'Bangalore'),
(12, 'aadhya12', 'aadhya12@example.com', 'aadhya12pass', '9800000012', 'Bangalore'),
(13, 'diya13', 'diya13@example.com', 'diya13pass', '9800000013', 'Bangalore'),
(14, 'myra14', 'myra14@example.com', 'myra14pass', '9800000014', 'Bangalore'),
(15, 'ira15', 'ira15@example.com', 'ira15pass', '9800000015', 'Bangalore'),
(16, 'anika16', 'anika16@example.com', 'anika16pass', '9800000016', 'Bangalore'),
(17, 'meera17', 'meera17@example.com', 'meera17pass', '9800000017', 'Bangalore'),
(18, 'sara18', 'sara18@example.com', 'sara18pass', '9800000018', 'Bangalore'),
(19, 'saanvi19', 'saanvi19@example.com', 'saanvi19pass', '9800000019', 'Bangalore'),
(20, 'kiara20', 'kiara20@example.com', 'kiara20pass', '9800000020', 'Bangalore'),
(21, 'mohammed21', 'mohammed21@example.com', 'mohammed21pass', '9800000021', 'Bangalore'),
(22, 'ahmed22', 'ahmed22@example.com', 'ahmed22pass', '9800000022', 'Bangalore'),
(23, 'ali23', 'ali23@example.com', 'ali23pass', '9800000023', 'Bangalore'),
(24, 'hussain24', 'hussain24@example.com', 'hussain24pass', '9800000024', 'Bangalore'),
(25, 'omar25', 'omar25@example.com', 'omar25pass', '9800000025', 'Bangalore'),
(26, 'yusuf26', 'yusuf26@example.com', 'yusuf26pass', '9800000026', 'Bangalore'),
(27, 'rehan27', 'rehan27@example.com', 'rehan27pass', '9800000027', 'Bangalore'),
(28, 'zaid28', 'zaid28@example.com', 'zaid28pass', '9800000028', 'Bangalore'),
(29, 'imran29', 'imran29@example.com', 'imran29pass', '9800000029', 'Bangalore'),
(30, 'sameer30', 'sameer30@example.com', 'sameer30pass', '9800000030', 'Bangalore'),
(31, 'aarav31', 'aarav31@example.com', 'aarav31pass', '9800000031', 'Mysore'),
(32, 'vihaan32', 'vihaan32@example.com', 'vihaan32pass', '9800000032', 'Mysore'),
(33, 'vivaan33', 'vivaan33@example.com', 'vivaan33pass', '9800000033', 'Mysore'),
(34, 'aditya34', 'aditya34@example.com', 'aditya34pass', '9800000034', 'Mysore'),
(35, 'arjun35', 'arjun35@example.com', 'arjun35pass', '9800000035', 'Mysore'),
(36, 'sai36', 'sai36@example.com', 'sai36pass', '9800000036', 'Mysore'),
(37, 'krishna37', 'krishna37@example.com', 'krishna37pass', '9800000037', 'Mysore'),
(38, 'ishaan38', 'ishaan38@example.com', 'ishaan38pass', '9800000038', 'Mysore'),
(39, 'shaurya39', 'shaurya39@example.com', 'shaurya39pass', '9800000039', 'Mysore'),
(40, 'atharv40', 'atharv40@example.com', 'atharv40pass', '9800000040', 'Mysore'),
(41, 'anaya41', 'anaya41@example.com', 'anaya41pass', '9800000041', 'Mysore'),
(42, 'aadhya42', 'aadhya42@example.com', 'aadhya42pass', '9800000042', 'Mysore'),
(43, 'diya43', 'diya43@example.com', 'diya43pass', '9800000043', 'Mysore'),
(44, 'myra44', 'myra44@example.com', 'myra44pass', '9800000044', 'Mysore'),
(45, 'ira45', 'ira45@example.com', 'ira45pass', '9800000045', 'Mysore'),
(46, 'anika46', 'anika46@example.com', 'anika46pass', '9800000046', 'Mysore'),
(47, 'meera47', 'meera47@example.com', 'meera47pass', '9800000047', 'Mysore'),
(48, 'sara48', 'sara48@example.com', 'sara48pass', '9800000048', 'Mysore'),
(49, 'saanvi49', 'saanvi49@example.com', 'saanvi49pass', '9800000049', 'Mysore'),
(50, 'kiara50', 'kiara50@example.com', 'kiara50pass', '9800000050', 'Mysore'),
(51, 'mohammed51', 'mohammed51@example.com', 'mohammed51pass', '9800000051', 'Mysore'),
(52, 'ahmed52', 'ahmed52@example.com', 'ahmed52pass', '9800000052', 'Mysore'),
(53, 'ali53', 'ali53@example.com', 'ali53pass', '9800000053', 'Mysore'),
(54, 'hussain54', 'hussain54@example.com', 'hussain54pass', '9800000054', 'Mysore'),
(55, 'omar55', 'omar55@example.com', 'omar55pass', '9800000055', 'Mysore'),
(56, 'yusuf56', 'yusuf56@example.com', 'yusuf56pass', '9800000056', 'Mysore'),
(57, 'rehan57', 'rehan57@example.com', 'rehan57pass', '9800000057', 'Mysore'),
(58, 'zaid58', 'zaid58@example.com', 'zaid58pass', '9800000058', 'Mysore'),
(59, 'imran59', 'imran59@example.com', 'imran59pass', '9800000059', 'Mysore'),
(60, 'sameer60', 'sameer60@example.com', 'sameer60pass', '9800000060', 'Mysore'),
(61, 'aarav61', 'aarav61@example.com', 'aarav61pass', '9800000061', 'Hassan'),
(62, 'vihaan62', 'vihaan62@example.com', 'vihaan62pass', '9800000062', 'Hassan'),
(63, 'vivaan63', 'vivaan63@example.com', 'vivaan63pass', '9800000063', 'Hassan'),
(64, 'aditya64', 'aditya64@example.com', 'aditya64pass', '9800000064', 'Hassan'),
(65, 'arjun65', 'arjun65@example.com', 'arjun65pass', '9800000065', 'Hassan'),
(66, 'sai66', 'sai66@example.com', 'sai66pass', '9800000066', 'Hassan'),
(67, 'krishna67', 'krishna67@example.com', 'krishna67pass', '9800000067', 'Hassan'),
(68, 'ishaan68', 'ishaan68@example.com', 'ishaan68pass', '9800000068', 'Hassan'),
(69, 'shaurya69', 'shaurya69@example.com', 'shaurya69pass', '9800000069', 'Hassan'),
(70, 'atharv70', 'atharv70@example.com', 'atharv70pass', '9800000070', 'Hassan'),
(71, 'anaya71', 'anaya71@example.com', 'anaya71pass', '9800000071', 'Hassan'),
(72, 'aadhya72', 'aadhya72@example.com', 'aadhya72pass', '9800000072', 'Hassan'),
(73, 'diya73', 'diya73@example.com', 'diya73pass', '9800000073', 'Hassan'),
(74, 'myra74', 'myra74@example.com', 'myra74pass', '9800000074', 'Hassan'),
(75, 'ira75', 'ira75@example.com', 'ira75pass', '9800000075', 'Hassan'),
(76, 'anika76', 'anika76@example.com', 'anika76pass', '9800000076', 'Hassan'),
(77, 'meera77', 'meera77@example.com', 'meera77pass', '9800000077', 'Hassan'),
(78, 'sara78', 'sara78@example.com', 'sara78pass', '9800000078', 'Hassan'),
(79, 'saanvi79', 'saanvi79@example.com', 'saanvi79pass', '9800000079', 'Hassan'),
(80, 'kiara80', 'kiara80@example.com', 'kiara80pass', '9800000080', 'Hassan'),
(81, 'mohammed81', 'mohammed81@example.com', 'mohammed81pass', '9800000081', 'Hassan'),
(82, 'ahmed82', 'ahmed82@example.com', 'ahmed82pass', '9800000082', 'Hassan'),
(83, 'ali83', 'ali83@example.com', 'ali83pass', '9800000083', 'Hassan'),
(84, 'hussain84', 'hussain84@example.com', 'hussain84pass', '9800000084', 'Hassan'),
(85, 'omar85', 'omar85@example.com', 'omar85pass', '9800000085', 'Hassan'),
(86, 'yusuf86', 'yusuf86@example.com', 'yusuf86pass', '9800000086', 'Hassan'),
(87, 'rehan87', 'rehan87@example.com', 'rehan87pass', '9800000087', 'Hassan'),
(88, 'zaid88', 'zaid88@example.com', 'zaid88pass', '9800000088', 'Hassan'),
(89, 'imran89', 'imran89@example.com', 'imran89pass', '9800000089', 'Hassan'),
(90, 'sameer90', 'sameer90@example.com', 'sameer90pass', '9800000090', 'Hassan'),
(91, 'aarav91', 'aarav91@example.com', 'aarav91pass', '9800000091', 'Chamarajanagar'),
(92, 'vihaan92', 'vihaan92@example.com', 'vihaan92pass', '9800000092', 'Chamarajanagar'),
(93, 'vivaan93', 'vivaan93@example.com', 'vivaan93pass', '9800000093', 'Chamarajanagar'),
(94, 'aditya94', 'aditya94@example.com', 'aditya94pass', '9800000094', 'Chamarajanagar'),
(95, 'arjun95', 'arjun95@example.com', 'arjun95pass', '9800000095', 'Chamarajanagar'),
(96, 'sai96', 'sai96@example.com', 'sai96pass', '9800000096', 'Chamarajanagar'),
(97, 'krishna97', 'krishna97@example.com', 'krishna97pass', '9800000097', 'Chamarajanagar'),
(98, 'ishaan98', 'ishaan98@example.com', 'ishaan98pass', '9800000098', 'Chamarajanagar'),
(99, 'shaurya99', 'shaurya99@example.com', 'shaurya99pass', '9800000099', 'Chamarajanagar'),
(100, 'atharv100', 'atharv100@example.com', 'atharv100pass', '9800000100', 'Chamarajanagar'),
(101, 'anaya101', 'anaya101@example.com', 'anaya101pass', '9800000101', 'Chamarajanagar'),
(102, 'aadhya102', 'aadhya102@example.com', 'aadhya102pass', '9800000102', 'Chamarajanagar'),
(103, 'diya103', 'diya103@example.com', 'diya103pass', '9800000103', 'Chamarajanagar'),
(104, 'myra104', 'myra104@example.com', 'myra104pass', '9800000104', 'Chamarajanagar'),
(105, 'ira105', 'ira105@example.com', 'ira105pass', '9800000105', 'Chamarajanagar'),
(106, 'anika106', 'anika106@example.com', 'anika106pass', '9800000106', 'Chamarajanagar'),
(107, 'meera107', 'meera107@example.com', 'meera107pass', '9800000107', 'Chamarajanagar'),
(108, 'sara108', 'sara108@example.com', 'sara108pass', '9800000108', 'Chamarajanagar'),
(109, 'saanvi109', 'saanvi109@example.com', 'saanvi109pass', '9800000109', 'Chamarajanagar'),
(110, 'kiara110', 'kiara110@example.com', 'kiara110pass', '9800000110', 'Chamarajanagar'),
(111, 'mohammed111', 'mohammed111@example.com', 'mohammed111pass', '9800000111', 'Chamarajanagar'),
(112, 'ahmed112', 'ahmed112@example.com', 'ahmed112pass', '9800000112', 'Chamarajanagar'),
(113, 'ali113', 'ali113@example.com', 'ali113pass', '9800000113', 'Chamarajanagar'),
(114, 'hussain114', 'hussain114@example.com', 'hussain114pass', '9800000114', 'Chamarajanagar'),
(115, 'omar115', 'omar115@example.com', 'omar115pass', '9800000115', 'Chamarajanagar'),
(116, 'yusuf116', 'yusuf116@example.com', 'yusuf116pass', '9800000116', 'Chamarajanagar'),
(117, 'rehan117', 'rehan117@example.com', 'rehan117pass', '9800000117', 'Chamarajanagar'),
(118, 'zaid118', 'zaid118@example.com', 'zaid118pass', '9800000118', 'Chamarajanagar'),
(119, 'imran119', 'imran119@example.com', 'imran119pass', '9800000119', 'Chamarajanagar'),
(120, 'sameer120', 'sameer120@example.com', 'sameer120pass', '9800000120', 'Chamarajanagar'),
(121, 'aarav121', 'aarav121@example.com', 'aarav121pass', '9800000121', 'Kodagu'),
(122, 'vihaan122', 'vihaan122@example.com', 'vihaan122pass', '9800000122', 'Kodagu'),
(123, 'vivaan123', 'vivaan123@example.com', 'vivaan123pass', '9800000123', 'Kodagu'),
(124, 'aditya124', 'aditya124@example.com', 'aditya124pass', '9800000124', 'Kodagu'),
(125, 'arjun125', 'arjun125@example.com', 'arjun125pass', '9800000125', 'Kodagu'),
(126, 'sai126', 'sai126@example.com', 'sai126pass', '9800000126', 'Kodagu'),
(127, 'krishna127', 'krishna127@example.com', 'krishna127pass', '9800000127', 'Kodagu'),
(128, 'ishaan128', 'ishaan128@example.com', 'ishaan128pass', '9800000128', 'Kodagu'),
(129, 'shaurya129', 'shaurya129@example.com', 'shaurya129pass', '9800000129', 'Kodagu'),
(130, 'atharv130', 'atharv130@example.com', 'atharv130pass', '9800000130', 'Kodagu'),
(131, 'anaya131', 'anaya131@example.com', 'anaya131pass', '9800000131', 'Kodagu'),
(132, 'aadhya132', 'aadhya132@example.com', 'aadhya132pass', '9800000132', 'Kodagu'),
(133, 'diya133', 'diya133@example.com', 'diya133pass', '9800000133', 'Kodagu'),
(134, 'myra134', 'myra134@example.com', 'myra134pass', '9800000134', 'Kodagu'),
(135, 'ira135', 'ira135@example.com', 'ira135pass', '9800000135', 'Kodagu'),
(136, 'anika136', 'anika136@example.com', 'anika136pass', '9800000136', 'Kodagu'),
(137, 'meera137', 'meera137@example.com', 'meera137pass', '9800000137', 'Kodagu'),
(138, 'sara138', 'sara138@example.com', 'sara138pass', '9800000138', 'Kodagu'),
(139, 'saanvi139', 'saanvi139@example.com', 'saanvi139pass', '9800000139', 'Kodagu'),
(140, 'kiara140', 'kiara140@example.com', 'kiara140pass', '9800000140', 'Kodagu'),
(141, 'mohammed141', 'mohammed141@example.com', 'mohammed141pass', '9800000141', 'Kodagu'),
(142, 'ahmed142', 'ahmed142@example.com', 'ahmed142pass', '9800000142', 'Kodagu'),
(143, 'ali143', 'ali143@example.com', 'ali143pass', '9800000143', 'Kodagu'),
(144, 'hussain144', 'hussain144@example.com', 'hussain144pass', '9800000144', 'Kodagu'),
(145, 'omar145', 'omar145@example.com', 'omar145pass', '9800000145', 'Kodagu'),
(146, 'yusuf146', 'yusuf146@example.com', 'yusuf146pass', '9800000146', 'Kodagu'),
(147, 'rehan147', 'rehan147@example.com', 'rehan147pass', '9800000147', 'Kodagu'),
(148, 'zaid148', 'zaid148@example.com', 'zaid148pass', '9800000148', 'Kodagu'),
(149, 'imran149', 'imran149@example.com', 'imran149pass', '9800000149', 'Kodagu'),
(150, 'sameer150', 'sameer150@example.com', 'sameer150pass', '9800000150', 'Kodagu'),
(151, 'Souparnika', 'souparnika12@gmail.com', '12soup!', '8745859652', 'Mysore'),
(152, 'vignesh', 'vignesh1234@gmail.com', 'vignesh123', '6364675868', 'Mysore'),
(153, 'user', 'user@example.com', 'user4321', '6745812360', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`id`, `name`, `email`, `message`) VALUES
(1, 'Gloria Fernandes', 'gloria.fernandes@example.com', 'Very heartwarming experience.'),
(2, 'Samuel George', 'samuel.george@example.com', 'Excellent service to society.'),
(3, 'Divya Rao', 'divya.rao@example.com', 'Wonderful initiative.'),
(4, 'Fatima Begum', 'fatima.begum@example.com', 'Very heartwarming experience.'),
(5, 'Rakesh Gowda', 'rakesh.gowda@example.com', 'Looking forward to donating again.'),
(6, 'Aarav Kumar', 'aarav.kumar@example.com', 'I had a great time volunteering.'),
(7, 'Rahim Shaikh', 'rahim.shaikh@example.com', 'Happy to be part of this.'),
(8, 'Rajiv Menon', 'rajiv.menon@example.com', 'Keep up the good work!'),
(9, 'Sandra D\'Costa', 'sandra.dcosta@example.com', 'I felt truly welcomed.'),
(10, 'Sana Mirza', 'sana.mirza@example.com', 'Happy to be part of this.'),
(11, 'Meena Kumari', 'meena.kumari@example.com', 'Very organized and clean.'),
(12, 'Rekha Nair', 'rekha.nair@example.com', 'Wonderful initiative.'),
(13, 'Nisha Thomas', 'nisha.thomas@example.com', 'I felt truly welcomed.'),
(14, 'Anil Patil', 'anil.patil@example.com', 'Looking forward to donating again.'),
(15, 'Ali Pasha', 'ali.pasha@example.com', 'Excellent service to society.'),
(16, 'Joseph Raj', 'joseph.raj@example.com', 'Excellent service to society.'),
(17, 'Pooja Jain', 'pooja.jain@example.com', 'Looking forward to donating again.'),
(18, 'Sneha Reddy', 'sneha.reddy@example.com', 'Happy to be part of this.'),
(19, 'Yusuf Khan', 'yusuf.khan@example.com', 'Keep up the good work!'),
(20, 'John Dsouza', 'john.dsouza@example.com', 'Happy to be part of this.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `bus_stands`
--
ALTER TABLE `bus_stands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverypersons`
--
ALTER TABLE `deliverypersons`
  ADD PRIMARY KEY (`deliveryPersonID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `PhoneNumber` (`PhoneNumber`);

--
-- Indexes for table `food_donations`
--
ALTER TABLE `food_donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngos`
--
ALTER TABLE `ngos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orphanages`
--
ALTER TABLE `orphanages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `railway_systems`
--
ALTER TABLE `railway_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipients`
--
ALTER TABLE `recipients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bus_stands`
--
ALTER TABLE `bus_stands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `deliverypersons`
--
ALTER TABLE `deliverypersons`
  MODIFY `deliveryPersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `food_donations`
--
ALTER TABLE `food_donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `ngos`
--
ALTER TABLE `ngos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orphanages`
--
ALTER TABLE `orphanages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `railway_systems`
--
ALTER TABLE `railway_systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `recipients`
--
ALTER TABLE `recipients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
