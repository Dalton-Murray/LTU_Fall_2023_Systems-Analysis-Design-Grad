-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.17.0.3
-- Generation Time: Nov 23, 2023 at 02:55 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MakarMotors`
--

-- --------------------------------------------------------

--
-- Table structure for table `billableActivities`
--

CREATE TABLE `billableActivities` (
  `recordID` int NOT NULL,
  `projectID` int NOT NULL,
  `employeeID` int NOT NULL,
  `activityName` varchar(32) NOT NULL,
  `activityDescription` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `billableActivities`
--

INSERT INTO `billableActivities` (`recordID`, `projectID`, `employeeID`, `activityName`, `activityDescription`) VALUES
(3, 1, 10, 'Design', 'Designing the 2024 SUV line.'),
(4, 2, 10, 'Design', 'Designing the 2024 EV line.');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `employeeID` int NOT NULL,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  `cityFrom` varchar(32) NOT NULL,
  `stateFrom` varchar(32) NOT NULL,
  `countryFrom` varchar(32) NOT NULL,
  `streetAddress` varchar(64) NOT NULL,
  `zipcode` int NOT NULL,
  `phoneNumber` varchar(18) NOT NULL,
  `emailAddress` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`employeeID`, `firstName`, `lastName`, `cityFrom`, `stateFrom`, `countryFrom`, `streetAddress`, `zipcode`, `phoneNumber`, `emailAddress`) VALUES
(1, 'Arioald', 'Bart', 'Phillips', 'Maine', 'United States of America', '1394 Bloomfield Way', 14966, '207-229-7223', 'abart@makarmotors.com'),
(2, 'Elisa', 'Paula', 'Alexandria', 'Louisiana', 'United States of America', '3202 Roguski Road', 71301, '318-359-7017', 'epaula@makarmotors.com'),
(3, 'Ashley', 'Jackson', 'Pasadena', 'California', 'United States of America', '4121 Middleville Road', 91101, '626-304-2979', 'ajackson@makarmotors.com'),
(4, 'John', 'Anderson', 'Hickory Hills', 'Illinois', 'United States of America', '3509 Cherry Camp Road', 60457, '773-515-5099', 'janderson@makarmotors.com'),
(5, 'Frank', 'Britton', 'Rochelle Park', 'New Jersey', 'United States of America', '4075 Central Avenue', 17762, '201-427-1854', 'fbritton@makarmotors.com'),
(6, 'Cameron', 'Davis', 'Mill Valley', 'California', 'United States of America', '519 Roosevelt Street', 94941, '415-381-8280', 'cdavis@makarmotors.com'),
(7, 'Ben', 'Gaba', 'Eagle', 'Idaho', 'United States of America', '4939 Maple Avenue', 83616, '208-939-1596', 'bgaba@makamotors.com'),
(8, 'Andrew', 'Harrison', 'Jackson', 'Mississippi', 'United States of America', '4558 Washington Avenue', 39211, '601-977-6073', 'aharrison@makarmotors.com'),
(9, 'Drew', 'McGee', 'Beelingham', 'Washington', 'United States of America', '3865 Mutton Town Road', 98225, '360-630-7147', 'dmcgee@makarmotors.com'),
(10, 'Eve', 'Rood', 'Auburn', 'Washington', 'United States of America', '4486 Horizon Circle', 98001, '253-569-7856', 'erood@makarmotors.com');

-- --------------------------------------------------------

--
-- Table structure for table `employeeDepartment`
--

CREATE TABLE `employeeDepartment` (
  `recordID` int NOT NULL,
  `employeeID` int NOT NULL,
  `department` varchar(32) NOT NULL,
  `position` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `startPosition` datetime NOT NULL,
  `endPosition` datetime DEFAULT NULL,
  `salaryOrHourly` varchar(6) NOT NULL,
  `employmentType` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employeeDepartment`
--

INSERT INTO `employeeDepartment` (`recordID`, `employeeID`, `department`, `position`, `startPosition`, `endPosition`, `salaryOrHourly`, `employmentType`) VALUES
(1, 1, 'Customer Service', 'Support T1', '2023-11-23 02:16:43', NULL, 'Hourly', 'Part-Time'),
(2, 2, 'Human Resources', 'Supervisor T2', '2023-11-23 02:17:41', NULL, 'Salary', 'Full-Time'),
(3, 3, 'Information Technology', 'Manager T3', '2023-11-23 02:18:08', NULL, 'Salary', 'Full-Time'),
(4, 4, 'Accounting', 'Financial Manager T3', '2023-11-23 02:18:37', NULL, 'Salary', 'Full-Time'),
(5, 5, 'TekSystems Contractor', 'Mechanic T1', '2023-11-23 02:19:29', NULL, 'Hourly', 'Contract'),
(6, 6, 'TekSystems Contractor', 'Information Technology T1', '2023-11-23 02:20:23', NULL, 'Hourly', 'Contract'),
(7, 7, 'Engineering', 'Mechanical Engineer T2', '2023-11-23 02:23:19', NULL, 'Salary', 'Full-Time'),
(8, 8, 'Marketing', 'Marketing Manager T3', '2023-11-23 02:23:51', NULL, 'Salary', 'Full-Time'),
(9, 9, 'Corporate Communications', 'Business Developer T1', '2023-11-23 02:24:11', NULL, 'Salary', 'Full-Time'),
(10, 10, 'Design', 'Product Designer T1', '2023-11-23 02:26:07', NULL, 'Salary', 'Full-Time');

-- --------------------------------------------------------

--
-- Table structure for table `hourlyPay`
--

CREATE TABLE `hourlyPay` (
  `recordID` int NOT NULL,
  `employeeID` int NOT NULL,
  `hourlyRate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hourlyPay`
--

INSERT INTO `hourlyPay` (`recordID`, `employeeID`, `hourlyRate`) VALUES
(1, 1, 18),
(2, 5, 17.5),
(3, 6, 21);

-- --------------------------------------------------------

--
-- Table structure for table `nonbillableActivities`
--

CREATE TABLE `nonbillableActivities` (
  `recordID` int NOT NULL,
  `projectID` int NOT NULL,
  `employeeID` int NOT NULL,
  `activityName` varchar(32) NOT NULL,
  `activityDescription` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nonbillableActivities`
--

INSERT INTO `nonbillableActivities` (`recordID`, `projectID`, `employeeID`, `activityName`, `activityDescription`) VALUES
(2, 1, 10, 'Vacation', 'Going on vacation 11/27/2023 - 11/30/2023.'),
(3, 2, 10, 'Vacation', 'Going on vacation 11/27/2023 - 11/30/2023.');

-- --------------------------------------------------------

--
-- Table structure for table `projectActivities`
--

CREATE TABLE `projectActivities` (
  `recordID` int NOT NULL,
  `projectID` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(128) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime DEFAULT NULL,
  `activityLead` varchar(32) NOT NULL,
  `notes` varchar(1048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projectActivities`
--

INSERT INTO `projectActivities` (`recordID`, `projectID`, `title`, `description`, `startDate`, `endDate`, `activityLead`, `notes`) VALUES
(1, 1, 'Design', 'Designing the 2024 SUV', '2023-11-20 01:00:00', NULL, 'Eve Rood', 'Design the 2024 SUV in standard blueprint.'),
(2, 2, 'Design', 'Designing the 2024 EV', '2023-11-20 01:00:00', NULL, 'Eve Rood', 'Design the 2024 EV in standard blueprint.');

-- --------------------------------------------------------

--
-- Table structure for table `projectMembers`
--

CREATE TABLE `projectMembers` (
  `recordID` int NOT NULL,
  `projectID` int NOT NULL,
  `employeeID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projectMembers`
--

INSERT INTO `projectMembers` (`recordID`, `projectID`, `employeeID`) VALUES
(1, 1, 10),
(2, 2, 10),
(3, 1, 7),
(4, 2, 7),
(5, 1, 4),
(6, 2, 4),
(7, 1, 9),
(8, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `projectOverall`
--

CREATE TABLE `projectOverall` (
  `projectID` int NOT NULL,
  `projectName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime DEFAULT NULL,
  `description` varchar(256) NOT NULL,
  `budget` int NOT NULL,
  `sponsor` varchar(32) NOT NULL,
  `department` varchar(32) NOT NULL,
  `requirements` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projectOverall`
--

INSERT INTO `projectOverall` (`projectID`, `projectName`, `startDate`, `endDate`, `description`, `budget`, `sponsor`, `department`, `requirements`) VALUES
(1, '2024 SUV', '2023-11-20 01:00:00', NULL, 'Development of the 2024 SUV line.', 5000000, 'Eve Rood', 'Designing', 'Completed by the end of 2023.'),
(2, '2024 EV', '2023-11-20 01:00:00', NULL, 'Development of the 2024 EV line.', 10000000, 'Eve Rood', 'Designing', 'Completed by the end of 2023.');

-- --------------------------------------------------------

--
-- Table structure for table `salaryPay`
--

CREATE TABLE `salaryPay` (
  `recordID` int NOT NULL,
  `employeeID` int NOT NULL,
  `yearlyPay` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `salaryPay`
--

INSERT INTO `salaryPay` (`recordID`, `employeeID`, `yearlyPay`) VALUES
(1, 2, 67000),
(2, 3, 89000),
(3, 4, 100000),
(5, 7, 75000),
(6, 8, 85000),
(7, 9, 77000),
(8, 10, 120000);

-- --------------------------------------------------------

--
-- Table structure for table `timecard`
--

CREATE TABLE `timecard` (
  `recordID` int NOT NULL,
  `employeeID` int NOT NULL,
  `clockInTime` datetime NOT NULL,
  `clockOutTime` datetime NOT NULL,
  `startBreak` datetime NOT NULL,
  `endBreak` datetime NOT NULL,
  `calculatedHours` int NOT NULL,
  `payperiod` datetime NOT NULL,
  `billed` tinyint(1) NOT NULL,
  `invoiceNumber` mediumint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timecard`
--

INSERT INTO `timecard` (`recordID`, `employeeID`, `clockInTime`, `clockOutTime`, `startBreak`, `endBreak`, `calculatedHours`, `payperiod`, `billed`, `invoiceNumber`) VALUES
(1, 1, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1),
(2, 2, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1),
(3, 3, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1),
(4, 4, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1),
(5, 5, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1),
(6, 6, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1),
(7, 7, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1),
(8, 8, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1),
(9, 9, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1),
(10, 10, '2023-11-22 08:30:00', '2023-11-23 16:30:00', '2023-11-23 12:30:00', '2023-11-23 13:30:00', 8, '2023-11-20 01:00:00', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billableActivities`
--
ALTER TABLE `billableActivities`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `billableActivitiesProjectID` (`projectID`),
  ADD KEY `billableActivitiesEmployeeID` (`employeeID`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `employeeDepartment`
--
ALTER TABLE `employeeDepartment`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `employeeDepartmentEmployeeID` (`employeeID`);

--
-- Indexes for table `hourlyPay`
--
ALTER TABLE `hourlyPay`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `hourlyPayEmployeeID` (`employeeID`);

--
-- Indexes for table `nonbillableActivities`
--
ALTER TABLE `nonbillableActivities`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `billableActivitiesProjectID` (`projectID`),
  ADD KEY `nonbillableActivitiesEmployeeID` (`employeeID`);

--
-- Indexes for table `projectActivities`
--
ALTER TABLE `projectActivities`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `projectActivitiesProjectID` (`projectID`);

--
-- Indexes for table `projectMembers`
--
ALTER TABLE `projectMembers`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `projectMembersProjectID` (`projectID`),
  ADD KEY `projectMembersEmployeeID` (`employeeID`);

--
-- Indexes for table `projectOverall`
--
ALTER TABLE `projectOverall`
  ADD PRIMARY KEY (`projectID`);

--
-- Indexes for table `salaryPay`
--
ALTER TABLE `salaryPay`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `salaryPayEmployeeID` (`employeeID`);

--
-- Indexes for table `timecard`
--
ALTER TABLE `timecard`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `timecardEmployeeID` (`employeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billableActivities`
--
ALTER TABLE `billableActivities`
  MODIFY `recordID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `employeeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employeeDepartment`
--
ALTER TABLE `employeeDepartment`
  MODIFY `recordID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hourlyPay`
--
ALTER TABLE `hourlyPay`
  MODIFY `recordID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nonbillableActivities`
--
ALTER TABLE `nonbillableActivities`
  MODIFY `recordID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectActivities`
--
ALTER TABLE `projectActivities`
  MODIFY `recordID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projectMembers`
--
ALTER TABLE `projectMembers`
  MODIFY `recordID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projectOverall`
--
ALTER TABLE `projectOverall`
  MODIFY `projectID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salaryPay`
--
ALTER TABLE `salaryPay`
  MODIFY `recordID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `timecard`
--
ALTER TABLE `timecard`
  MODIFY `recordID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billableActivities`
--
ALTER TABLE `billableActivities`
  ADD CONSTRAINT `billableActivitiesEmployeeID` FOREIGN KEY (`employeeID`) REFERENCES `Employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billableActivitiesProjectID` FOREIGN KEY (`projectID`) REFERENCES `projectActivities` (`projectID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeDepartment`
--
ALTER TABLE `employeeDepartment`
  ADD CONSTRAINT `employeeDepartmentEmployeeID` FOREIGN KEY (`employeeID`) REFERENCES `Employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hourlyPay`
--
ALTER TABLE `hourlyPay`
  ADD CONSTRAINT `hourlyPayEmployeeID` FOREIGN KEY (`employeeID`) REFERENCES `Employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nonbillableActivities`
--
ALTER TABLE `nonbillableActivities`
  ADD CONSTRAINT `nonbillableActivitiesEmployeeID` FOREIGN KEY (`employeeID`) REFERENCES `Employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nonbillableActivitiesProjectID` FOREIGN KEY (`projectID`) REFERENCES `projectOverall` (`projectID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projectActivities`
--
ALTER TABLE `projectActivities`
  ADD CONSTRAINT `projectActivitiesProjectID` FOREIGN KEY (`projectID`) REFERENCES `projectOverall` (`projectID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projectMembers`
--
ALTER TABLE `projectMembers`
  ADD CONSTRAINT `projectMembersEmployeeID` FOREIGN KEY (`employeeID`) REFERENCES `Employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projectMembersProjectID` FOREIGN KEY (`projectID`) REFERENCES `projectOverall` (`projectID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salaryPay`
--
ALTER TABLE `salaryPay`
  ADD CONSTRAINT `salaryPayEmployeeID` FOREIGN KEY (`employeeID`) REFERENCES `Employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `timecard`
--
ALTER TABLE `timecard`
  ADD CONSTRAINT `timecardEmployeeID` FOREIGN KEY (`employeeID`) REFERENCES `Employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
