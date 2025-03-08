-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2024 at 05:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `romy`
--

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `bed_number` varchar(20) NOT NULL,
  `status` enum('available','occupied') DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`id`, `ward_id`, `bed_number`, `status`) VALUES
(4, 3, '10', 'available'),
(8, 3, 'MSW1', 'available'),
(9, 3, 'MSW2', 'available'),
(10, 4, 'FWB1', 'available'),
(11, 4, 'FMB2', 'available'),
(12, 4, 'FWB3', 'available'),
(13, 3, 'MSW4', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complaint_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `complaint_text`, `created_at`) VALUES
(1, 'Headache', '2024-08-26 13:27:10'),
(2, 'Vomiting', '2024-08-26 13:27:19'),
(3, 'Joint Pain', '2024-08-26 13:27:29'),
(5, 'Sweating', '2024-08-26 13:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int(11) NOT NULL,
  `diagnosis_name` varchar(255) NOT NULL,
  `date_registered` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `diagnosis_name`, `date_registered`) VALUES
(1, 'Diarrhoea with no dehydration', '2024-08-31'),
(2, 'Diarrhoea with some dehydration', '2024-08-31'),
(3, 'Diarrhoea with severe dehydration', '2024-08-31'),
(4, 'Cholera', '2024-08-31'),
(5, 'Dysentery (Bloody diarrhoea)', '2024-08-31'),
(6, 'Gastroenteritis', '2024-08-31'),
(7, 'Pneumonia', '2024-08-31'),
(8, 'Severe pneumonia', '2024-08-31'),
(9, 'Upper Respiratory Tract Infections', '2024-08-31'),
(10, 'Lower Respiratory Tract Infections', '2024-08-31'),
(11, 'Asthma', '2024-08-31'),
(12, 'Presumed Tuberculosis', '2024-08-31'),
(13, 'Suspected/Tested Malaria', '2024-08-31'),
(14, 'Malaria', '2024-08-31'),
(15, 'Ear Infections', '2024-08-31'),
(16, 'Malnutrition', '2024-08-31'),
(17, 'Anaemia', '2024-08-31'),
(18, 'Meningococcal Meningitis', '2024-08-31'),
(19, 'Menigitis', '2024-08-31'),
(20, 'Neonatal Sepsis', '2024-08-31'),
(21, 'Neonatal Tetanus', '2024-08-31'),
(22, 'Poliomyelitis (AFP)', '2024-08-31'),
(23, 'Chicken Pox', '2024-08-31'),
(24, 'Measles', '2024-08-31'),
(25, 'Hepatitis', '2024-08-31'),
(26, 'Amoebiasis', '2024-08-31'),
(27, 'Mumps', '2024-08-31'),
(28, 'Typhoid fever', '2024-08-31'),
(29, 'Bilharzia (Schistosomiasis)', '2024-08-31'),
(30, 'Interstinal worms', '2024-08-31'),
(31, 'Eye Infections', '2024-08-31'),
(32, 'Tonsilities', '2024-08-31'),
(33, 'Urinary Tract Infection', '2024-08-31'),
(34, 'Mental Disorders', '2024-08-31'),
(35, 'Dental Disorders', '2024-08-31'),
(36, 'Jiggers Infestation', '2024-08-31'),
(37, 'Diseases of the skin', '2024-08-31'),
(38, 'Down’s syndrome', '2024-08-31'),
(39, 'Poisoning', '2024-08-31'),
(40, 'Road Traffic Injuries', '2024-08-31'),
(41, 'Deaths due to Road Trafic injuries', '2024-08-31'),
(42, 'Violence related  injuries', '2024-08-31'),
(43, 'Other Injuries', '2024-08-31'),
(44, 'Sexual Violence', '2024-08-31'),
(45, 'Burns', '2024-08-31'),
(46, 'Snake Bites', '2024-08-31'),
(47, 'Dog bites', '2024-08-31'),
(48, 'Other Bites', '2024-08-31'),
(49, 'Diabetes', '2024-08-31'),
(50, 'Neonatal Tetanus', '2024-08-31'),
(51, 'Neonatal Sepsis', '2024-08-31'),
(52, 'Violence related  injuries', '2024-08-31'),
(53, 'Epilepsy', '2024-08-31'),
(54, 'Convulsive Disorders', '2024-08-31'),
(55, 'Rheumatic Fever', '2024-08-31'),
(56, 'Brucellosis', '2024-08-31'),
(57, 'Rickets', '2024-08-31'),
(58, 'Cerebral Palsy', '2024-08-31'),
(59, 'Autism', '2024-08-31'),
(60, 'Tryponosomiasis', '2024-08-31'),
(61, 'Yellow Fever', '2024-08-31'),
(62, 'Viral Haemorrhagic Fever', '2024-08-31'),
(63, 'Viral Haemorrhagic Fever', '2024-08-31'),
(64, 'Hypoxaemia (Spo2<90%)', '2024-08-31'),
(65, 'Childhood Cancers', '2024-08-31'),
(66, 'Anthrax', '2024-08-31'),
(67, 'Cutaneous leishmaniasis', '2024-08-31'),
(68, 'Kalaar (Leishmaniaisis)', '2024-08-31'),
(69, 'Dengue fever', '2024-08-31'),
(70, 'Chikungunya', '2024-08-31'),
(71, 'Rift valley fever', '2024-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(6) UNSIGNED NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `drug_name`, `reg_date`, `quantity`) VALUES
(5, 'Paracetamol 500mg Tablet', '2024-08-27 12:41:05', 0),
(6, 'Amoxicillin 250mg Tablet', '2024-08-27 12:58:28', 0),
(7, 'Ciprofloxacin 500mg Tablet', '2024-08-27 14:12:53', 0),
(8, 'Ciprofloxacin 500mg Tablet', '2024-08-27 14:15:47', 0),
(9, 'Ciprofloxacin 500mg Tablet', '2024-08-27 14:18:12', 0),
(10, 'Ibuprofen', '2024-09-11 12:26:52', 0),
(11, 'Ibuprofen', '2024-09-11 12:29:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `drugs_inventory`
--

CREATE TABLE `drugs_inventory` (
  `drug_id` int(11) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost_to_patient` decimal(10,2) NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `date_of_manufacture` date NOT NULL,
  `date_of_expiry` date NOT NULL,
  `receipt_date` date NOT NULL,
  `receipt_from` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drugs_inventory`
--

INSERT INTO `drugs_inventory` (`drug_id`, `drug_name`, `quantity`, `cost_to_patient`, `batch_no`, `company_name`, `date_of_manufacture`, `date_of_expiry`, `receipt_date`, `receipt_from`) VALUES
(1, 'Paracetamol 500mg Tablet', 386, 5.00, 'MXRS12', 'Cosmos', '2024-04-09', '2025-08-19', '2024-08-27', 'Meds'),
(2, 'Paracetamol 500mg Tablet', 86, 5.00, 'mfsgd', 'Trumeds', '2024-01-09', '2026-03-11', '2024-07-27', 'Meds'),
(3, 'Paracetamol 500mg Tablet', 86, 5.00, 'mfsgd', 'Trumeds', '2024-01-09', '2026-03-11', '2024-07-27', 'Meds'),
(4, 'Amoxicillin 250mg Tablet', 1886, 5.00, 'btes', 'Comso', '2024-04-10', '2025-08-14', '2024-08-27', 'Meds'),
(5, 'Amoxicillin 250mg Tablet', 1886, 5.00, 'btes', 'Comso', '2024-04-10', '2025-08-14', '2024-08-27', 'Meds'),
(6, 'Ciprofloxacin 500mg Tablet', 3886, 10.00, 'gftr', 'cosmos', '2003-12-23', '2027-12-06', '2024-08-27', 'Meds'),
(7, 'Ciprofloxacin 500mg Tablet', 8886, 5.00, 'thrd', 'coms', '2024-05-08', '2025-06-27', '2024-08-27', 'junior');

-- --------------------------------------------------------

--
-- Table structure for table `drugs_processed`
--

CREATE TABLE `drugs_processed` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `visit_number` varchar(255) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `batch_no` varchar(255) NOT NULL,
  `cost_to_patient` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drugs_processed`
--

INSERT INTO `drugs_processed` (`id`, `registration_number`, `visit_number`, `drug_name`, `batch_no`, `cost_to_patient`, `quantity`, `amount`, `created_at`) VALUES
(8, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'Paracetamol 500mg Tablet', 'MXRS12', 5.00, 10, 50.00, '2024-10-16 04:29:14'),
(10, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Ciprofloxacin 500mg Tablet', 'gftr', 10.00, 14, 140.00, '2024-10-16 05:57:26'),
(11, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Paracetamol 500mg Tablet', 'MXRS12', 5.00, 9, 45.00, '2024-10-16 06:02:04'),
(12, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Paracetamol 500mg Tablet', 'MXRS12', 5.00, 10, 50.00, '2024-10-17 10:14:54'),
(13, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Amoxicillin 250mg Tablet', 'btes', 5.00, 10, 50.00, '2024-10-17 10:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `drugs_processed_to_bill`
--

CREATE TABLE `drugs_processed_to_bill` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `batch_number` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `processed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `registration_number` varchar(50) NOT NULL,
  `visit_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drugs_processed_to_bill`
--

INSERT INTO `drugs_processed_to_bill` (`id`, `prescription_id`, `drug_name`, `batch_number`, `quantity`, `amount`, `processed_at`, `registration_number`, `visit_number`) VALUES
(10, 5, 'Ciprofloxacin 500mg Tablet', 'on', 20, 200.00, '2024-10-12 14:51:48', 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc'),
(19, 3, 'Paracetamol 500mg Tablet', 'on', 6, 30.00, '2024-10-13 02:03:32', 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923'),
(20, 7, 'Amoxicillin 250mg Tablet', 'on', 7, 35.00, '2024-10-13 02:10:33', 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc'),
(21, 7, 'Amoxicillin 250mg Tablet', 'on', 10, 50.00, '2024-10-13 14:26:01', 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc');

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `visit_number` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructions`
--

INSERT INTO `instructions` (`id`, `registration_number`, `visit_number`, `timestamp`, `notes`) VALUES
(1, '', '', '0000-00-00 00:00:00', ''),
(2, '', '', '0000-00-00 00:00:00', ''),
(3, '', '', '0000-00-00 00:00:00', ''),
(4, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', '2024-10-10 18:49:14', 'This section will provide a preview of the data entered. The font size is reduced for better visibility of more data.'),
(5, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', '2024-10-17 13:14:13', 'bed rest as she recoveres'),
(6, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', '2024-10-27 21:56:39', 'take all medicines to inpatient');

-- --------------------------------------------------------

--
-- Table structure for table `investigations`
--

CREATE TABLE `investigations` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `visit_number` varchar(255) NOT NULL,
  `test_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investigations`
--

INSERT INTO `investigations` (`id`, `registration_number`, `visit_number`, `test_id`, `created_at`) VALUES
(1, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 4, '2024-10-05 15:07:17'),
(2, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 5, '2024-10-05 15:07:17'),
(3, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 5, '2024-10-17 10:13:15'),
(4, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 3, '2024-10-17 10:13:15'),
(5, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 3, '2024-10-21 19:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `opdservices`
--

CREATE TABLE `opdservices` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `type` enum('Nursing','Clinical') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opdservices`
--

INSERT INTO `opdservices` (`id`, `service_name`, `type`, `amount`, `created_at`) VALUES
(1, 'Dressing', 'Nursing', 300.00, '2024-09-05 13:50:30'),
(2, 'Foreign Body Removal', 'Nursing', 300.00, '2024-09-05 15:04:46'),
(3, 'Stitching', 'Nursing', 250.00, '2024-09-05 15:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `outcome`
--

CREATE TABLE `outcome` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(50) DEFAULT NULL,
  `visit_number` varchar(50) DEFAULT NULL,
  `outcome` varchar(50) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outcome`
--

INSERT INTO `outcome` (`id`, `registration_number`, `visit_number`, `outcome`, `additional_info`, `created_at`) VALUES
(5, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'Discharged', '', '2024-10-11 10:50:00'),
(6, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Discharged', '', '2024-10-17 10:14:22'),
(7, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', 'Admit', 'Maternity Ward', '2024-10-27 18:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE `parameters` (
  `parameter_id` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `parameter_name` varchar(255) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `reference_range` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parameters`
--

INSERT INTO `parameters` (`parameter_id`, `test_id`, `parameter_name`, `unit`, `reference_range`) VALUES
(1, 3, 'Postive', 'hey', NULL),
(2, 3, 'Negative', '', NULL),
(3, 5, 'Hemoglobin', 'g/dL', '13.5-17.5 (male), 12.0-15.5 (female)');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(20) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `national_id` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `kin_name` varchar(50) DEFAULT NULL,
  `kin_phone` varchar(20) DEFAULT NULL,
  `kin_relationship` varchar(20) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `registration_number`, `first_name`, `middle_name`, `last_name`, `age`, `dob`, `gender`, `national_id`, `address`, `landmark`, `phone`, `kin_name`, `kin_phone`, `kin_relationship`, `registration_date`) VALUES
(1, 'NSCH-2024-0001', 'Benedct', 'Shulas', 'Test', 3, '2021-08-16', 'female', '22523212', 'nasa', 'mega', '0721212176', 'Rayled Bska', '0754626261', 'Brother', '2024-08-17 06:37:25'),
(2, 'NSCH-2024-0002', 'feliscc', 'hgggsgsg', 'test', 3, '2021-08-16', 'male', '42323232', '14 Nasianda', 'Kewa Prmary School', '0763535355', 'juma denias', '0765544544', 'Brother', '2024-08-17 08:24:44'),
(3, 'NSCH-2024-0003', 'Julies', 'Nangoba', 'Prise', 3, '2021-08-16', 'female', '42323232', '14 Nasianda', 'Kewa Prmary School', '0763535355', 'juma denias', '0765544544', 'Brother', '2024-08-17 08:25:43'),
(4, 'NSCH-2024-0004', 'Matrine', 'Nanja', 'Wechuli', 14, '2010-08-16', 'female', '31212112', 'Mbakalo', 'Mbakalo Primary', '0743434323', 'Bilha Neksa', '0723322332', 'Sister', '2024-08-17 08:34:09'),
(5, 'NSCH-2024-0005', 'Matrine', 'Nanja', 'Wechuli', 2, '2022-08-16', 'female', '', 'nasa', 'mega', '', 'Rayled Bska', '', 'Brother', '2024-08-17 11:46:57'),
(6, 'NSCH-2024-0006', 'Kelvine', 'Wanjala', 'Sfuna', 22, '2002-08-16', 'female', '45433333', 'Nyange', 'Pefas Chuch', '0743434332', 'Pita Kns Wanjala', '0732322333', 'Brother', '2024-08-17 12:30:47'),
(7, 'NSCH-2024-0007', 'Luiz', 'Casper', 'Cheweya', 18, '2006-08-16', 'male', '42323232', '974 Naitiri', 'Sikulu ARea', '0735355353', 'Derick Cheyewa', '0743434343', 'Brother', '2024-08-17 12:56:59'),
(8, 'NSCH-2024-0008', 'Fredrick`', 'Muchimuti', 'Kacsd', 17, '2007-08-16', 'male', '21221212', 'Sirakaru', 'Sirakaru Primaey', '0732322332', 'abe Wafula', '0632325233', 'Brother', '2024-08-17 13:07:57'),
(9, 'NSCH-2024-0009', 'MOses', 'Wangila', 'Wafula', 22, '2002-08-22', 'male', '45654454', '200 Naitiri', 'Jeshi La wokovu', '', 'Sifuna Samuel', '0734232433', 'Uncle', '2024-08-23 10:55:53'),
(10, 'NSCH-2024-0010', 'David', 'SImiyu', 'Mucha', 22, '2002-10-22', 'female', '', 'Soteni', 'Msembe', '0721232322', 'Digital kenya', '0754234524', 'Brother', '2024-10-23 11:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `patientsymptoms`
--

CREATE TABLE `patientsymptoms` (
  `id` int(11) NOT NULL,
  `registration_number` text NOT NULL,
  `visit_number` text NOT NULL,
  `symptoms` text NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientsymptoms`
--

INSERT INTO `patientsymptoms` (`id`, `registration_number`, `visit_number`, `symptoms`, `date_time`) VALUES
(6, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'Joint Pain for 9 Hours', '2024-10-05 05:44:16'),
(7, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Headache for 2 Days', '2024-10-17 09:11:06'),
(8, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', 'Headache for 2 Days', '2024-10-27 16:53:40'),
(9, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', 'Joint Pain for 1 Days', '2024-10-27 16:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `patients_diagnosis`
--

CREATE TABLE `patients_diagnosis` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `visit_number` varchar(255) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `classification` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients_diagnosis`
--

INSERT INTO `patients_diagnosis` (`id`, `registration_number`, `visit_number`, `diagnosis_id`, `classification`, `created_at`) VALUES
(1, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 13, 'Provisional', '2024-10-05 14:06:48'),
(2, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 4, 'Final', '2024-10-05 14:06:48'),
(3, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 13, 'Provisional', '2024-10-17 10:12:41'),
(4, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 4, 'Provisional', '2024-10-17 10:12:41'),
(5, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 28, 'Final', '2024-10-17 10:12:41'),
(6, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', 14, 'Final', '2024-10-27 18:55:09'),
(7, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', 28, 'Final', '2024-10-27 18:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `patient_fees`
--

CREATE TABLE `patient_fees` (
  `id` int(11) NOT NULL,
  `category_type` varchar(50) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `sub_category_name` varchar(100) NOT NULL,
  `fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_fees`
--

INSERT INTO `patient_fees` (`id`, `category_type`, `category_name`, `sub_category_name`, `fee`) VALUES
(1, 'Paying', 'Special Clinic', 'Special Clinic', 150.00),
(2, 'Paying', 'Special Clinic', 'General Patient', 100.00),
(3, 'Paying', 'Special Clinic', 'Student Forms', 100.00),
(4, 'Paying', 'Special Clinic', 'Medical Documents', 100.00),
(5, 'Non Paying', 'Child Under 5', 'Child Under 5', 50.00),
(6, 'Non Paying', 'Currently Pregnant', 'Currently Pregnant', 100.00),
(7, 'Non Paying', 'TB Patients', 'TB Patients', 0.00),
(8, 'Non Paying', 'CCC Patients', 'CCC Patients', 0.00),
(9, 'Non Paying', 'In Prison', 'In Prison', 0.00),
(10, 'Non Paying', 'People with Disabilities', 'People with Disabilities', 0.00),
(11, 'Non Paying', 'Gender Based Violence (GBV) Patient', 'GBV Patient', 50.00),
(12, 'Non Paying', 'Vulnerable Case Patient', 'Vulnerable Case Patient', 50.00),
(13, 'Special Schemes', 'Hospital Waver', 'Hospital Waver', 0.00),
(14, 'Special Schemes', 'Student', 'Student', 100.00),
(15, 'Special Schemes', 'Delivery Case (Linda Mama)', 'Linda Mama', 50.00),
(16, 'Special Schemes', 'NHIF', 'NHIF', 0.00),
(17, 'Special Schemes', 'Britan', 'Britan', 0.00),
(18, 'Special Schemes', 'AON', 'AON', 0.00),
(19, 'Visit Type', 'Revist', 'Revist', 100.00),
(20, 'Visit Type', 'New Patient', 'New Patient', 100.00),
(21, 'Room to Visit', 'OPD', 'OPD', 50.00),
(22, 'Room to Visit', 'Dental Clinic', 'Dental Clinic', 100.00),
(23, 'Room to Visit', 'EYE Clinic', 'EYE Clinic', 100.00),
(24, 'Room to Visit', 'CCC', 'CCC', 0.00),
(25, 'Room to Visit', 'Radiology', 'Radiology', 100.00),
(26, 'Room to Visit', 'Theatre', 'Theatre', 100.00),
(27, 'Special Clinic', 'CCC', 'CCC', 0.00),
(28, 'Special Clinic', 'EYE Clinic', 'EYE Clinic', 150.00),
(29, 'Special Clinic', 'Dental Clinic', 'Dental Clinic', 100.00),
(30, 'Special Clinic', 'Surgical Clinic', 'Surgical Clinic', 150.00),
(31, 'Special Clinic', 'Physio Clinic', 'Physio Clinic', 100.00),
(32, 'Special Clinic', 'Hypertension', 'Hypertension', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `patient_history`
--

CREATE TABLE `patient_history` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `visit_number` varchar(255) NOT NULL,
  `onset_date` date NOT NULL,
  `details` text NOT NULL,
  `date_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`id`, `registration_number`, `visit_number`, `onset_date`, `details`, `date_time`) VALUES
(1, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', '2024-10-02', 'hdhfhd hdfhg sgdsgfdgs sgdfsgfd sgdvsgdvsgx sdbhsgdhsbc hjbdhg', '2024-10-05 14:51:54'),
(2, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', '2024-10-15', 'having a headache for the last three days ', '2024-10-17 12:11:33'),
(3, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', '2024-10-25', 'FGC', '2024-10-27 19:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `patient_procedure`
--

CREATE TABLE `patient_procedure` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `visit_number` varchar(255) NOT NULL,
  `service_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_procedure`
--

INSERT INTO `patient_procedure` (`id`, `registration_number`, `visit_number`, `service_id`, `created_at`) VALUES
(5, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 1, '2024-10-05 14:29:07'),
(6, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 2, '2024-10-17 10:12:57'),
(7, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 1, '2024-10-17 10:12:57'),
(8, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', 2, '2024-10-27 18:55:26'),
(9, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', 1, '2024-10-27 18:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `patient_visits`
--

CREATE TABLE `patient_visits` (
  `id` int(11) NOT NULL,
  `visit_number` varchar(50) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `payment_category` varchar(50) NOT NULL,
  `payment_option` varchar(50) NOT NULL,
  `registration_fee` decimal(10,2) NOT NULL,
  `consultation_fee` decimal(10,2) NOT NULL,
  `room` varchar(50) NOT NULL,
  `visit_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_visits`
--

INSERT INTO `patient_visits` (`id`, `visit_number`, `registration_number`, `payment_category`, `payment_option`, `registration_fee`, `consultation_fee`, `room`, `visit_date`) VALUES
(1, 'NSCH-2024-0005-66c72573e8b1b', 'NSCH-2024-0005', 'paying', 'Clinical Name', 50.00, 70.00, 'Clinical', '2024-08-22 11:48:03'),
(2, 'NSCH-2024-0003-66c726bb621c2', 'NSCH-2024-0003', 'paying', 'Clinical Name', 50.00, 70.00, 'Special Clinic', '2024-08-22 11:53:31'),
(3, 'NSCH-2024-0003-66c726cd8e7d4', 'NSCH-2024-0003', 'non-paying', 'Child Under 5', 50.00, 0.00, 'MCH', '2024-08-22 11:53:49'),
(4, 'NSCH-2024-0003-66c72813e276f', 'NSCH-2024-0003', 'non-paying', 'Child Under 5', 50.00, 0.00, 'MCH', '2024-08-22 11:59:15'),
(5, 'NSCH-2024-0003-66c72824062fe', 'NSCH-2024-0003', 'paying', 'Dental Name', 40.00, 80.00, 'Special Clinic', '2024-08-22 11:59:32'),
(6, 'NSCH-2024-0004-66c8144945923', 'NSCH-2024-0004', 'paying', 'Clinical Name', 50.00, 70.00, 'Clinical', '2024-08-23 04:47:05'),
(7, 'NSCH-2024-0008-66c8153680b40', 'NSCH-2024-0008', 'non-paying', 'Child Under 5', 50.00, 0.00, 'CCC', '2024-08-23 04:51:02'),
(8, 'NSCH-2024-0007-66c9ea2fba4bc', 'NSCH-2024-0007', 'paying', 'Clinical Name', 50.00, 70.00, 'Clinical', '2024-08-24 14:11:59'),
(9, 'NSCH-2024-0005-66db53fa09912', 'NSCH-2024-0005', 'paying', 'Eye Name', 100.00, 200.00, 'Special Clinic', '2024-09-06 19:11:54'),
(10, 'NSCH-2024-0004-66dc1e48e1837', 'NSCH-2024-0004', 'Non Paying', 'Child Under 5', 50.00, 0.00, 'Clinical', '2024-09-07 09:35:04'),
(11, 'NSCH-2024-0009DPLA', 'NSCH-2024-0009', 'Non Paying', 'Child Under 5', 50.00, 0.00, 'Clinical', '2024-09-08 15:09:44'),
(12, 'NSCH-2024-0007IRPC', 'NSCH-2024-0007', 'Paying', 'Special Clinic', 50.00, 100.00, 'Special Clinic', '2024-09-11 14:36:37'),
(13, 'NSCH-2024-0007SHVG', 'NSCH-2024-0007', 'Paying', 'Special Clinic', 50.00, 100.00, 'Special Clinic', '2024-09-11 14:40:08'),
(14, 'NSCH-2024-0003PSWM', 'NSCH-2024-0003', 'Paying', 'Special Clinic', 50.00, 100.00, '', '2024-09-12 13:33:04'),
(15, 'NSCH-2024-0002YQLJ', 'NSCH-2024-0002', 'Non Paying', 'Child Under 5', 50.00, 0.00, 'Clinical', '2024-09-13 11:42:36'),
(16, 'NSCH-2024-0007MDZU', 'NSCH-2024-0007', 'Paying', 'Special Clinic', 50.00, 100.00, 'Special Clinic', '2024-09-13 11:44:25'),
(17, 'NSCH-2024-0004KGAW', 'NSCH-2024-0004', 'Paying', 'Clinical', 50.00, 50.00, 'Clinical', '2024-10-04 09:42:44'),
(18, 'NSCH-2024-0010TNRB', 'NSCH-2024-0010', 'Paying', 'Clinical', 50.00, 50.00, 'Clinical', '2024-10-23 11:19:30'),
(19, 'NSCH-2024-0010QWED', 'NSCH-2024-0010', 'Paying', 'Special Clinic', 50.00, 100.00, 'Clinical', '2024-10-23 11:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `visit_number` varchar(50) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `batch_number` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `processed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `registration_number`, `visit_number`, `drug_name`, `batch_number`, `quantity`, `amount`, `processed_at`) VALUES
(1, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Paracetamol 500mg Tablet', 'mfsgd', 2, 10.00, '2024-10-14 07:30:01'),
(2, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'Paracetamol 500mg Tablet', 'mfsgd', 5, 25.00, '2024-10-14 08:59:58'),
(3, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'Paracetamol 500mg Tablet', 'mfsgd', 5, 25.00, '2024-10-14 09:00:26'),
(4, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'Paracetamol 500mg Tablet', 'mfsgd', 5, 25.00, '2024-10-14 09:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacypaid`
--

CREATE TABLE `pharmacypaid` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `visit_number` varchar(50) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `issued` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacypaid`
--

INSERT INTO `pharmacypaid` (`id`, `registration_number`, `visit_number`, `drug_name`, `quantity`, `amount`, `timestamp`, `issued`) VALUES
(1, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'Paracetamol 500mg Tablet', 10, 50.00, '2024-10-17 07:06:01', 1),
(2, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Ciprofloxacin 500mg Tablet', 14, 140.00, '2024-10-17 07:10:55', 0),
(3, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Paracetamol 500mg Tablet', 9, 45.00, '2024-10-17 07:10:55', 0),
(4, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Ciprofloxacin 500mg Tablet', 14, 140.00, '2024-10-17 07:23:26', 0),
(5, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Paracetamol 500mg Tablet', 9, 45.00, '2024-10-17 07:23:26', 0),
(6, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Ciprofloxacin 500mg Tablet', 14, 140.00, '2024-10-17 07:34:31', 0),
(7, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Paracetamol 500mg Tablet', 9, 45.00, '2024-10-17 07:34:31', 0),
(8, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Ciprofloxacin 500mg Tablet', 14, 140.00, '2024-10-17 07:52:17', 0),
(9, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Paracetamol 500mg Tablet', 9, 45.00, '2024-10-17 07:52:17', 0),
(10, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Ciprofloxacin 500mg Tablet', 14, 140.00, '2024-10-17 07:53:46', 1),
(11, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Paracetamol 500mg Tablet', 9, 45.00, '2024-10-17 07:53:46', 1),
(12, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Ciprofloxacin 500mg Tablet', 14, 140.00, '2024-10-17 07:54:27', 1),
(13, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Paracetamol 500mg Tablet', 9, 45.00, '2024-10-17 07:54:27', 1),
(14, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Amoxicillin 250mg Tablet', 10, 50.00, '2024-10-17 14:05:39', 1),
(15, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Paracetamol 500mg Tablet', 10, 50.00, '2024-10-17 14:05:39', 1),
(16, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Amoxicillin 250mg Tablet', 10, 50.00, '2024-10-17 14:07:51', 0),
(17, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Paracetamol 500mg Tablet', 10, 50.00, '2024-10-17 14:07:51', 0),
(18, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Paracetamol 500mg Tablet', 10, 50.00, '2024-10-17 14:12:49', 0),
(19, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Amoxicillin 250mg Tablet', 10, 50.00, '2024-10-17 14:12:49', 0),
(20, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Amoxicillin 250mg Tablet', 10, 50.00, '2024-10-17 14:23:31', 0),
(21, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Paracetamol 500mg Tablet', 10, 50.00, '2024-10-17 14:23:31', 0),
(22, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Amoxicillin 250mg Tablet', 10, 50.00, '2024-10-17 14:25:36', 1),
(23, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Paracetamol 500mg Tablet', 10, 50.00, '2024-10-17 14:25:36', 1),
(24, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Paracetamol 500mg Tablet', 10, 50.00, '2024-10-17 14:27:27', 1),
(25, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Amoxicillin 250mg Tablet', 10, 50.00, '2024-10-17 14:27:27', 1),
(26, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Amoxicillin 250mg Tablet', 10, 50.00, '2024-10-23 13:28:23', 0),
(27, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Paracetamol 500mg Tablet', 10, 50.00, '2024-10-23 13:28:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `physical_examination`
--

CREATE TABLE `physical_examination` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `visit_number` varchar(50) NOT NULL,
  `cardiovascular` text DEFAULT NULL,
  `respiratory` text DEFAULT NULL,
  `gastrointestinal` text DEFAULT NULL,
  `neurological` text DEFAULT NULL,
  `musculoskeletal` text DEFAULT NULL,
  `date_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `physical_examination`
--

INSERT INTO `physical_examination` (`id`, `registration_number`, `visit_number`, `cardiovascular`, `respiratory`, `gastrointestinal`, `neurological`, `musculoskeletal`, `date_time`) VALUES
(1, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'hhdhdh', 'hdhdh', 'hdhfh', 'hhdhd', 'jdjhf', '2024-10-05 15:04:39'),
(3, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'mains basg', 'chest pains', 'stocamas', 'with nerves', 'bonrs pai', '2024-10-17 12:12:16'),
(4, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', 'FGC', 'better', 'abdominal pain', 'good', 'joint pains', '2024-10-27 19:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `prescription_id` int(11) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `visit_number` varchar(255) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `dose` varchar(50) NOT NULL,
  `formulation` enum('Tablets','Syrup','Capsules','Vials','Spoons') NOT NULL,
  `frequency` enum('Twice a day','Thrice a day','Before meals','After meals') NOT NULL,
  `days` int(11) NOT NULL,
  `route` enum('Oral','Intravascular','Nose','Eye','Apply') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`prescription_id`, `registration_number`, `visit_number`, `drug_name`, `dose`, `formulation`, `frequency`, `days`, `route`) VALUES
(2, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'Paracetamol 500mg Tablet', '2', 'Tablets', 'Twice a day', 4, 'Oral'),
(3, 'NSCH-2024-0004', 'NSCH-2024-0004-66c8144945923', 'Paracetamol 500mg Tablet', '2', 'Tablets', 'Twice a day', 7, 'Oral'),
(4, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Amoxicillin 250mg Tablet', '3', 'Tablets', 'Twice a day', 5, 'Oral'),
(5, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Ciprofloxacin 500mg Tablet', '1', 'Tablets', 'Twice a day', 2, 'Oral'),
(6, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Paracetamol 500mg Tablet', '1', 'Tablets', 'Twice a day', 3, 'Oral'),
(7, 'NSCH-2024-0007', 'NSCH-2024-0007-66c9ea2fba4bc', 'Amoxicillin 250mg Tablet', '2', 'Tablets', 'Twice a day', 3, 'Oral'),
(8, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Paracetamol 500mg Tablet', '2', 'Tablets', 'Twice a day', 5, 'Oral'),
(9, 'NSCH-2024-0009', 'NSCH-2024-0009DPLA', 'Amoxicillin 250mg Tablet', '1', 'Tablets', 'Twice a day', 4, 'Oral'),
(10, 'NSCH-2024-0010', 'NSCH-2024-0010TNRB', 'Paracetamol 500mg Tablet', '2', 'Tablets', 'Twice a day', 4, 'Oral');

-- --------------------------------------------------------

--
-- Table structure for table `processed_drugs`
--

CREATE TABLE `processed_drugs` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `visit_number` varchar(50) NOT NULL,
  `drug_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_processed` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `processed_drugs`
--

INSERT INTO `processed_drugs` (`id`, `registration_number`, `visit_number`, `drug_name`, `quantity`, `date_processed`) VALUES
(1, 'NSCH-2024-0004', 'NSCH-2024-0004-66dc1e48e1837', 'Paracetamol 500mg Tablet - 2', 2, '2024-09-13 05:08:05'),
(2, 'NSCH-2024-0004', 'NSCH-2024-0004-66dc1e48e1837', 'Once daily', 1, '2024-09-13 05:08:05'),
(3, 'NSCH-2024-0004', 'NSCH-2024-0004-66dc1e48e1837', 'Oral', 1, '2024-09-13 05:08:05'),
(4, 'NSCH-2024-0004', 'NSCH-2024-0004-66dc1e48e1837', 'for 3 days \r\n    Remove', 1, '2024-09-13 05:08:05'),
(5, 'NSCH-2024-0004', 'NSCH-2024-0004-66dc1e48e1837', 'Amoxicillin 250mg Tablet - 2', 2, '2024-09-13 05:08:05'),
(6, 'NSCH-2024-0004', 'NSCH-2024-0004-66dc1e48e1837', 'Once daily', 1, '2024-09-13 05:08:05'),
(7, 'NSCH-2024-0004', 'NSCH-2024-0004-66dc1e48e1837', 'Oral', 1, '2024-09-13 05:08:05'),
(8, 'NSCH-2024-0004', 'NSCH-2024-0004-66dc1e48e1837', 'for 2 days \r\n    Remove', 1, '2024-09-13 05:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `queuepay`
--

CREATE TABLE `queuepay` (
  `id` int(11) NOT NULL,
  `paymentcategory` varchar(50) NOT NULL,
  `paymentoption` varchar(100) NOT NULL,
  `registrationfee` decimal(10,2) NOT NULL,
  `consultationfee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `queuepay`
--

INSERT INTO `queuepay` (`id`, `paymentcategory`, `paymentoption`, `registrationfee`, `consultationfee`) VALUES
(3, 'Non Paying', 'Child Under 5', 50.00, 0.00),
(4, 'Paying', 'Special Clinic', 50.00, 100.00),
(5, 'Paying', 'Clinical', 50.00, 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `parameter_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `result_value` varchar(255) DEFAULT NULL,
  `result_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `service_category` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_type`, `service_category`, `amount`) VALUES
(544, 'Paying', 'Special Clininic', 150.00),
(545, 'Paying', 'General Patient', 100.00),
(546, 'Paying', 'Student Medical Form', 400.00),
(547, 'Paying', 'Patient Medical From', 400.00),
(548, 'Non Paying ', 'Child Under 5', 50.00),
(549, 'Non Paying ', 'Currently Pregnant', 50.00),
(550, 'Non Paying ', 'TB Patient', 40.00),
(551, 'Non Paying ', 'CCC Patient', 100.00),
(552, 'Non Paying ', 'In Prison', 0.00),
(553, 'Special Schemes', 'NHIF', 0.00),
(554, 'Special Schemes', 'Delivery Case (Linda Mama)', 0.00),
(555, 'Special Schemes', 'Student', 0.00),
(556, 'Special Schemes', 'AON', 0.00),
(557, 'Special Schemes', 'Hospital Waiver', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `servicesopd`
--

CREATE TABLE `servicesopd` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `place_offered` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicesopd`
--

INSERT INTO `servicesopd` (`id`, `service_name`, `place_offered`, `amount`, `created_at`) VALUES
(1, 'Wound Dressing', 'Nursing', 300.00, '2024-08-31 07:52:47'),
(2, 'Stitching ', 'Nursing', 500.00, '2024-08-31 07:54:00'),
(3, 'Student Medical Form', 'Clinical', 400.00, '2024-08-31 08:04:23'),
(5, 'P3 Notes', 'Records', 500.00, '2024-08-31 08:17:43'),
(6, 'Patient Notes', 'Records', 400.00, '2024-08-31 08:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `symptoms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`symptoms`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `id_no` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `first_name`, `surname`, `username`, `phone`, `id_no`, `department`, `password`, `created_at`) VALUES
(1, 'Moses', 'Wangila', 'Wangila', '0725435487', '25435487', 'Nursing', '$2y$10$idp8H3MTMoxvZ/3aNfdTM.klTnM11oGbr032W0DuK9cfn/lrNWumu', '2024-08-16 07:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `test_id` int(11) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`test_id`, `test_name`, `description`, `amount`) VALUES
(3, 'Malaria', '', 100.00),
(4, 'Malaria', 'Test to detect the presence of malaria parasites in the blood.', 100.00),
(5, 'Complete Blood Count (CBC)', 'A comprehensive test to evaluate overall health and detect a wide range of disorders.', 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `symptoms` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `examination` text DEFAULT NULL,
  `prescribed_drugs` text DEFAULT NULL,
  `outcome` varchar(50) DEFAULT NULL,
  `ward` varchar(50) DEFAULT NULL,
  `next_appointment_date` date DEFAULT NULL,
  `clinical_comments` text DEFAULT NULL,
  `referral_reason` text DEFAULT NULL,
  `opd_clinic` varchar(50) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`id`, `registration_number`, `symptoms`, `diagnosis`, `examination`, `prescribed_drugs`, `outcome`, `ward`, `next_appointment_date`, `clinical_comments`, `referral_reason`, `opd_clinic`, `date_created`) VALUES
(1, 'NSCH-2024-0004', 'Vomiting for 3 hours, Vomiting for  minutes', '', 'great looks', 'Paracetamol 500mg Tablet - 2, Once daily, Oral, for 3 days \n    Remove, Amoxicillin 250mg Tablet - 2, Once daily, Oral, for 2 days \n    Remove', 'Discharged', 'Female Ward', '0000-00-00', '', '', '', '2024-09-07 16:23:53'),
(2, 'NSCH-2024-0007', 'Vomiting for 2 minutes, Vomiting for  minutes', '', 'that is where i was born', 'Paracetamol 500mg Tablet - 2, Once daily, Oral, for 3 days \n    Remove', 'Discharged', 'Female Ward', '0000-00-00', '', '', '', '2024-09-07 17:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `vitals`
--

CREATE TABLE `vitals` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `temperature` int(11) DEFAULT NULL,
  `blood_pressure_systolic` int(11) DEFAULT NULL,
  `blood_pressure_diastolic` int(11) DEFAULT NULL,
  `respiratory_rate` int(11) DEFAULT NULL,
  `pulse_rate` int(11) DEFAULT NULL,
  `oxygen_saturation` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `bmi` int(11) DEFAULT NULL,
  `muac` int(11) DEFAULT NULL,
  `chest` int(11) DEFAULT NULL,
  `abdominal` int(11) DEFAULT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vitals`
--

INSERT INTO `vitals` (`id`, `registration_number`, `temperature`, `blood_pressure_systolic`, `blood_pressure_diastolic`, `respiratory_rate`, `pulse_rate`, `oxygen_saturation`, `height`, `weight`, `bmi`, `muac`, `chest`, `abdominal`, `submission_date`) VALUES
(1, 'NSCH-2024-0007', 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-25 11:59:17'),
(2, 'NSCH-2024-0007', 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-25 11:59:23'),
(3, 'NSCH-2024-0003', 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-26 06:48:01'),
(0, 'NSCH-2024-0005', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-04 05:29:03'),
(0, 'NSCH-2024-0009', 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-08 15:27:13'),
(0, 'NSCH-2024-0002', 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-11 14:42:09'),
(0, 'NSCH-2024-0010', 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-10-23 11:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `name`) VALUES
(3, 'Male Surgical Ward'),
(4, 'Female Ward');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ward_id` (`ward_id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs_inventory`
--
ALTER TABLE `drugs_inventory`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `drugs_processed`
--
ALTER TABLE `drugs_processed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs_processed_to_bill`
--
ALTER TABLE `drugs_processed_to_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_id` (`prescription_id`);

--
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_patient_registration` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`);

--
-- Indexes for table `investigations`
--
ALTER TABLE `investigations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `idx_patient_registration` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`);

--
-- Indexes for table `opdservices`
--
ALTER TABLE `opdservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outcome`
--
ALTER TABLE `outcome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_patient_registration` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`),
  ADD KEY `idx_registration_number` (`registration_number`);

--
-- Indexes for table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`parameter_id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_number` (`registration_number`);

--
-- Indexes for table `patientsymptoms`
--
ALTER TABLE `patientsymptoms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_patient_registration` (`registration_number`(768)),
  ADD KEY `idx_visit_number` (`visit_number`(768));

--
-- Indexes for table `patients_diagnosis`
--
ALTER TABLE `patients_diagnosis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_registration_number` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`);

--
-- Indexes for table `patient_fees`
--
ALTER TABLE `patient_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_history`
--
ALTER TABLE `patient_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_registration_number` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`);

--
-- Indexes for table `patient_procedure`
--
ALTER TABLE `patient_procedure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `idx_registration_number` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`);

--
-- Indexes for table `patient_visits`
--
ALTER TABLE `patient_visits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visit_number` (`visit_number`),
  ADD KEY `registration_number` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacypaid`
--
ALTER TABLE `pharmacypaid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_number` (`registration_number`),
  ADD KEY `visit_number` (`visit_number`);

--
-- Indexes for table `physical_examination`
--
ALTER TABLE `physical_examination`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_number` (`registration_number`,`visit_number`),
  ADD KEY `idx_registration_number` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `idx_registration_number` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`);

--
-- Indexes for table `processed_drugs`
--
ALTER TABLE `processed_drugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_registration_number` (`registration_number`),
  ADD KEY `idx_visit_number` (`visit_number`);

--
-- Indexes for table `queuepay`
--
ALTER TABLE `queuepay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `parameter_id` (`parameter_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicesopd`
--
ALTER TABLE `servicesopd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `drugs_inventory`
--
ALTER TABLE `drugs_inventory`
  MODIFY `drug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `drugs_processed`
--
ALTER TABLE `drugs_processed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `drugs_processed_to_bill`
--
ALTER TABLE `drugs_processed_to_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `investigations`
--
ALTER TABLE `investigations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `opdservices`
--
ALTER TABLE `opdservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `outcome`
--
ALTER TABLE `outcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `parameters`
--
ALTER TABLE `parameters`
  MODIFY `parameter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patientsymptoms`
--
ALTER TABLE `patientsymptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patients_diagnosis`
--
ALTER TABLE `patients_diagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient_fees`
--
ALTER TABLE `patient_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `patient_history`
--
ALTER TABLE `patient_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_procedure`
--
ALTER TABLE `patient_procedure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patient_visits`
--
ALTER TABLE `patient_visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pharmacypaid`
--
ALTER TABLE `pharmacypaid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `physical_examination`
--
ALTER TABLE `physical_examination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `prescription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `processed_drugs`
--
ALTER TABLE `processed_drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `queuepay`
--
ALTER TABLE `queuepay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT for table `servicesopd`
--
ALTER TABLE `servicesopd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beds`
--
ALTER TABLE `beds`
  ADD CONSTRAINT `beds_ibfk_1` FOREIGN KEY (`ward_id`) REFERENCES `wards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drugs_processed_to_bill`
--
ALTER TABLE `drugs_processed_to_bill`
  ADD CONSTRAINT `drugs_processed_to_bill_ibfk_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`prescription_id`);

--
-- Constraints for table `investigations`
--
ALTER TABLE `investigations`
  ADD CONSTRAINT `investigations_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `tests` (`test_id`) ON DELETE CASCADE;

--
-- Constraints for table `outcome`
--
ALTER TABLE `outcome`
  ADD CONSTRAINT `fk_patient_outcome` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_visit_outcome` FOREIGN KEY (`visit_number`) REFERENCES `patient_visits` (`visit_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parameters`
--
ALTER TABLE `parameters`
  ADD CONSTRAINT `parameters_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `tests` (`test_id`);

--
-- Constraints for table `patients_diagnosis`
--
ALTER TABLE `patients_diagnosis`
  ADD CONSTRAINT `fk_patient_diagnosis` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_visit_diagnosis` FOREIGN KEY (`visit_number`) REFERENCES `patient_visits` (`visit_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_history`
--
ALTER TABLE `patient_history`
  ADD CONSTRAINT `fk_patient_history` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_visit_patient_history` FOREIGN KEY (`visit_number`) REFERENCES `patient_visits` (`visit_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_history_ibfk_1` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`),
  ADD CONSTRAINT `patient_history_ibfk_2` FOREIGN KEY (`visit_number`) REFERENCES `patient_visits` (`visit_number`);

--
-- Constraints for table `patient_procedure`
--
ALTER TABLE `patient_procedure`
  ADD CONSTRAINT `fk_patient_procedure` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_visit_procedure` FOREIGN KEY (`visit_number`) REFERENCES `patient_visits` (`visit_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_procedure_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `servicesopd` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_visits`
--
ALTER TABLE `patient_visits`
  ADD CONSTRAINT `patient_visits_ibfk_1` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`);

--
-- Constraints for table `pharmacypaid`
--
ALTER TABLE `pharmacypaid`
  ADD CONSTRAINT `pharmacypaid_ibfk_1` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`),
  ADD CONSTRAINT `pharmacypaid_ibfk_2` FOREIGN KEY (`visit_number`) REFERENCES `patient_visits` (`visit_number`);

--
-- Constraints for table `physical_examination`
--
ALTER TABLE `physical_examination`
  ADD CONSTRAINT `fk_patient_physical_examination` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_visit_physical_examination` FOREIGN KEY (`visit_number`) REFERENCES `patient_visits` (`visit_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `fk_patient_prescription` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_visit_prescription` FOREIGN KEY (`visit_number`) REFERENCES `patient_visits` (`visit_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `processed_drugs`
--
ALTER TABLE `processed_drugs`
  ADD CONSTRAINT `fk_patient_processed_drugs` FOREIGN KEY (`registration_number`) REFERENCES `patients` (`registration_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_visit_processed_drugs` FOREIGN KEY (`visit_number`) REFERENCES `patient_visits` (`visit_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `tests` (`test_id`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`parameter_id`) REFERENCES `parameters` (`parameter_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
