-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 07:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(10) NOT NULL,
  `Adminpass` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Adminpass`) VALUES
(1, 'sdf231'),
(2, '12313DS'),
(3, 'qwe0000'),
(4, '6789ret'),
(5, 'wew234'),
(6, 'nfj541'),
(7, '12344321'),
(8, 'zxc123'),
(9, 'asa6767'),
(10, '1234sa');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `SerialNo` int(20) NOT NULL,
  `DocBill` int(10) NOT NULL,
  `MedBill` int(10) NOT NULL,
  `TestBill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`SerialNo`, `DocBill`, `MedBill`, `TestBill`) VALUES
(1231, 1500, 120, 3510),
(1904, 2200, 7833, 11070),
(2184, 1200, 4560, 1800),
(3283, 2000, 2156, 3240),
(4352, 1800, 3250, 2525),
(5642, 1500, 250, 1240),
(6341, 1000, 530, 2600),
(7433, 1100, 1123, 19495),
(8565, 1300, 3140, 4630),
(9956, 1600, 2356, 7557);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DocID` int(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `specilization` varchar(200) DEFAULT NULL,
  `DocPass` varchar(25) DEFAULT NULL,
  `AdminID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DocID`, `Name`, `specilization`, `DocPass`, `AdminID`) VALUES
(101, 'MD. Sharif', 'Physician', 'hysm993', 1),
(102, 'Nilufar Yasmin', 'Gynocologist', 'ghsy3400', 2),
(103, 'Ataur Rahman', 'Neurologist', '@ahdgkttp', 3),
(104, 'Humayra Chowdhury', 'Medicine', '3345ehey', 4),
(105, 'Kaniz Fathema', 'Skin Specialist', 'sshryb#56', 5),
(106, 'Shahriar Alom', 'General Physician', '**hydgjee', 6),
(107, 'Abdur Rauf', 'Gynocologist', '44570345', 7),
(108, 'Sadiya Yasmin', 'Cardiologist', 'ccdrg689', 8),
(109, 'Radiya Haque', 'Medicine', 'ppyhste&66', 9),
(110, 'Shahidul Haque', 'Child Specialist', 'ppodycbt456', 10);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_qualification`
--

CREATE TABLE `doctor_qualification` (
  `DocID` int(10) NOT NULL,
  `Qualification` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_qualification`
--

INSERT INTO `doctor_qualification` (`DocID`, `Qualification`) VALUES
(101, 'MBBS and MD From Avalon University'),
(102, 'P.G. Diploma in Gynaecology & Obstetrics From Stanlord University'),
(103, 'MBBS and MD in Neurology'),
(104, 'MBBS and FCPS in Med'),
(105, 'MBBS, DDV, FCPS in Dermatology'),
(106, 'SSMC. M.B.B.S. FCCPS in Medicine'),
(107, 'MBBS, MRCOG London'),
(108, 'MBBS,MRCP from UK, FCCP'),
(109, 'MBBS, MPH,DDV(BMMSU), FCPS in dermatology'),
(110, 'MBBS, FCPS in Paediatrics');

-- --------------------------------------------------------

--
-- Table structure for table `icu`
--

CREATE TABLE `icu` (
  `ID` int(11) NOT NULL,
  `HospitalName` varchar(50) NOT NULL,
  `ContactNo` int(11) NOT NULL,
  `Location` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icu`
--

INSERT INTO `icu` (`ID`, `HospitalName`, `ContactNo`, `Location`) VALUES
(101, 'United Hospital', 2147483647, 'plot-15,Road-71,Gulshan,Dhaka 1212,Bangladesh'),
(102, 'Evercare Hospital', 28431661, 'Block:E,Plot:81,Bashundhara R/A,Dhaka 1229'),
(103, 'Green Life Hospital', 1618800088, '32Bir Uttam K.M.Shafiullah Sarak,Green Road,Dhaka 1205'),
(104, 'Uttara Crescent Hospital', 1917704156, 'House-21,Road-15,Sector-03,Rabindra Sarani,Uttara,Dhaka 1230'),
(105, 'BRB Hospitals Limited', 1777764800, 'Panthapath, Dhaka 1215'),
(106, 'Labaid Specialized Hospital', 2147483647, 'House#06,Road#04,Dhanmondi,Dhaka-1205, Bangladesh'),
(107, 'IBN Sina', 9010396, 'House-48,Road-9/A,Dhanmondi,Dhaka-1209,Bangladesh'),
(108, 'Square Hospital Limited', 1713141447, '18/F,Bir Uttam Qazi Nuruzzaman Sarak West, Panthapath, Dhaka 1205'),
(109, 'Anwer Khan Modern Hospital Limited', 29670295, 'House No 17, Road no 08, Dhanmondi,Dhaka 1205'),
(110, 'Islami Bank Central Hospita', 29355801, 'VIP Road, Kakrail, Dhaka-1000');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatID` int(10) NOT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Age` int(10) NOT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `PatPassword` varchar(20) DEFAULT NULL,
  `AdminID` int(10) NOT NULL,
  `DocID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatID`, `Name`, `Address`, `Age`, `Gender`, `PatPassword`, `AdminID`, `DocID`) VALUES
(10324, 'Rofiqul Islam', '124/B,East Rampura,Dhaka', 32, 'Male', 'Rafiq428', 2, 104),
(20342, 'Ittefa Islam', 'Road-11/A,Sector-13, Uttara,Dhaka', 20, 'Female', 'Neb8300', 1, 103),
(33841, 'Fatema Banu', 'Avenue-1,Road-6,Mirpur DOHS,Dhaka', 18, 'Female', 'Fat1234', 2, 102),
(34821, 'Abrar Rahman', '24/B,Mirbag,Dhaka', 21, 'Male', 'Abrar69', 1, 101),
(53847, 'Yarana Hossain', 'House-48,School road,Shiddeshwari,Dhaka', 26, 'Female', 'Yara3838', 1, 110),
(53867, 'Bilkis Banu', '37/C, Mugda,Dhaka', 48, 'Female', 'Bilkis12', 7, 107),
(69234, 'Raiyan Hasan', 'House-32,Block-B,Baridhara,Dhaka', 28, 'Male', '12345678', 6, 106),
(71314, 'Anika Islam', 'House-483,East Rampura,Dhaka', 35, 'Female', 'Anika7', 8, 108),
(83242, 'Sakib Arafat', '11/B,AGB colony,Motijheel,Dhaka', 36, 'Male', 'Sakib86', 9, 109),
(93956, 'Ayesha Habib', 'Road-22,Block-G,Bashundhara R/A,Dhaka', 13, 'Female', 'habib163', 5, 105);

-- --------------------------------------------------------

--
-- Table structure for table `plasma_bank`
--

CREATE TABLE `plasma_bank` (
  `ID` int(11) DEFAULT NULL,
  `Hospital_name` varchar(100) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `Plasma_type` varchar(10) DEFAULT NULL,
  `Availability` int(11) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plasma_bank`
--

INSERT INTO `plasma_bank` (`ID`, `Hospital_name`, `location`, `Plasma_type`, `Availability`, `phone_number`) VALUES
(1011, 'Ibn Sina', 'DIT Road Near Malibagh Rail Gate,Dhak1217', 'A+ B+ O-', 100, 2147483647),
(1012, 'Ibn Sina', 'Zigatola Bus Stand, Dhaka 1209', 'B+ A- O+', 50, 2147483647),
(1013, 'Holy Family', 'Cha72-1 Progoti Soroni, Dhaka 1212', 'AB+ AB- B+', 20, 2147483647),
(1014, 'Shiraj Medical', '22 Siddeshwari, Dhaka 1212', 'O+ B+ A-', 60, 388456362),
(1015, 'United Hospital', 'Plot-15 Rd No 71, Dhaka 1212', 'B+ A+ O+ A', 160, 2147483647),
(1016, 'Monowara', '54 Siddheswari Rd, Dhaka 1217', 'AB- O-', 6, 2147483647),
(1019, 'Apollo Hospital', 'Plot: 81 Block: E, Dhaka 1229', 'A- B+ O+', 2, 485776845),
(1023, 'Green Life Hospital', 'Bir Uttam KM Shafiullah Sarak, Green Rd, Dhaka 120', 'A- O- AB- ', 40, 2147483647),
(1025, 'Square Hospital', 'West Panthapath,Dhaka 1205', 'O+ A+ B+ A', 90, 394556886);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_No` int(10) NOT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `PatID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_No`, `Type`, `Date`, `PatID`) VALUES
(1044, 'Consultancy Room', '0000-00-00', 69234),
(1045, 'ICU', '0000-00-00', 33841),
(2029, 'Nursery', '0000-00-00', 20342),
(2043, 'Maternity ward', '0000-00-00', 93956),
(3045, 'General ward', '0000-00-00', 34821),
(4028, 'VIP', '0000-00-00', 34821),
(4059, 'General ward', '0000-00-00', 10324),
(5038, 'Emergency', '0000-00-00', 53847),
(6053, 'NICU', '0000-00-00', 71314),
(7042, 'Semi Private', '0000-00-00', 83242);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`SerialNo`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DocID`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `doctor_qualification`
--
ALTER TABLE `doctor_qualification`
  ADD PRIMARY KEY (`DocID`,`Qualification`);

--
-- Indexes for table `icu`
--
ALTER TABLE `icu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatID`),
  ADD KEY `AdminID` (`AdminID`),
  ADD KEY `DocID` (`DocID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_No`),
  ADD KEY `PatID` (`PatID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `icu`
--
ALTER TABLE `icu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `doctor_qualification`
--
ALTER TABLE `doctor_qualification`
  ADD CONSTRAINT `doctor_qualification_ibfk_1` FOREIGN KEY (`DocID`) REFERENCES `doctor` (`DocID`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`),
  ADD CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`DocID`) REFERENCES `doctor` (`DocID`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`PatID`) REFERENCES `patient` (`PatID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
