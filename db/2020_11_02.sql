-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2020 at 11:47 AM
-- Server version: 5.7.31-0ubuntu0.16.04.1
-- PHP Version: 7.2.34-4+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dimensions`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_account_name`
--

CREATE TABLE `acc_account_name` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_account_name`
--

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES
(1, 'Employee Salary', 0),
(3, 'Example', 1),
(4, 'Loan Expense', 0),
(5, 'Loan Income', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('502020100008', '10-Monisha-Cruse', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-30 23:19:25', '', '0000-00-00 00:00:00'),
('502020100009', '11-Bhanu-Priya', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-30 23:24:05', '', '0000-00-00 00:00:00'),
('502020100010', '12-Blessy-P', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-30 23:25:07', '', '0000-00-00 00:00:00'),
('502020100011', '13-Kalaivani-P', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-30 23:26:55', '', '0000-00-00 00:00:00'),
('502020100012', '14-Vijayalakshmi-P', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-30 23:28:14', '', '0000-00-00 00:00:00'),
('502020100001', '3-Demo-Doctor', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-08-20 10:27:35', '', '0000-00-00 00:00:00'),
('502020100002', '4-Shyama-K. M', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-17 11:03:41', '', '0000-00-00 00:00:00'),
('502020100003', '5-Nazeer-Shaik', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-17 11:15:31', '', '0000-00-00 00:00:00'),
('502020100004', '6-Ligin-John', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-29 14:26:16', '', '0000-00-00 00:00:00'),
('502020100005', '7-Emily-Lalan', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-30 23:13:22', '', '0000-00-00 00:00:00'),
('502020100006', '8-Lavanya-Kiruthika', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-30 23:16:04', '', '0000-00-00 00:00:00'),
('502020100007', '9-Saletha-Monica', 'Employee Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-30 23:17:34', '', '0000-00-00 00:00:00'),
('4021403', 'AC', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:55', '', '2020-02-02 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:43', '', '2020-02-02 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '2020-02-02 00:00:00', 'admin', '2013-09-18 15:29:35'),
('1020201', 'Advance', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, '0.00', 'Zoherul', '2015-05-31 13:29:12', 'admin', '2015-12-31 16:46:32'),
('102020103', 'Advance House Rent', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-10-02 16:55:38', 'admin', '2016-10-02 16:57:32'),
('10202', 'Advance, Deposit And Pre-payments', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '2020-02-02 00:00:00', 'admin', '2015-12-31 16:46:24'),
('4020602', 'Advertisement and Publicity', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:51:44', '', '2020-02-02 00:00:00'),
('1010410', 'Air Cooler', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-05-23 12:13:55', '', '2020-02-02 00:00:00'),
('4020603', 'AIT Against Advertisement', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:09', '', '2020-02-02 00:00:00'),
('1', 'Assets', 'Chart Of Accounts', 0, 1, 0, 0, 'A', 0, 0, '0.00', '', '2020-02-02 00:00:00', '', '2020-02-02 00:00:00'),
('1010204', 'Attendance Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:49:31', '', '2020-02-02 00:00:00'),
('40216', 'Audit Fee', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2017-07-18 12:54:30', '', '2020-02-02 00:00:00'),
('102010202', 'Bank Asia', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2019-01-26 08:50:05', '', '2020-02-02 00:00:00'),
('4021002', 'Bank Charge', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:21:03', '', '2020-02-02 00:00:00'),
('30203', 'Bank Interest', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'Obaidul', '2015-01-03 14:49:54', 'admin', '2016-09-25 11:04:19'),
('1010104', 'Book Shelf', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:11', '', '2020-02-02 00:00:00'),
('1010407', 'Books and Journal', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:45:37', '', '2020-02-02 00:00:00'),
('4020604', 'Business Development Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:29', '', '2020-02-02 00:00:00'),
('4020606', 'Campaign Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:57', 'admin', '2016-09-19 14:52:48'),
('4020502', 'Campus Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:46:53', 'admin', '2017-04-27 17:02:39'),
('40212', 'Car Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:28:43', '', '2020-02-02 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '2020-02-02 00:00:00', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-19 13:43:59', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 1, 'A', 0, 0, '0.00', '2', '2018-07-31 12:56:28', 'admin', '2016-05-23 12:05:43'),
('30101', 'Cash Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:26', '', '2020-02-02 00:00:00'),
('1010207', 'CCTV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:24', '', '2020-02-02 00:00:00'),
('102020102', 'CEO Current A/C', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-09-25 11:54:54', '', '2020-02-02 00:00:00'),
('1010101', 'Class Room Chair', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:45:29', '', '2020-02-02 00:00:00'),
('4021407', 'Close Circuit Cemera', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:35', '', '2020-02-02 00:00:00'),
('4020601', 'Commision on Admission', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:51:21', 'admin', '2016-09-19 14:42:54'),
('1010206', 'Computer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:09', '', '2020-02-02 00:00:00'),
('4021410', 'Computer (R)', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-03-24 12:38:52', 'Zoherul', '2016-03-24 12:41:40'),
('1010102', 'Computer Table', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:45:44', '', '2020-02-02 00:00:00'),
('301020401', 'Continuing Registration fee - UoL (Income)', 'Registration Fee (UOL) Income', 4, 1, 1, 0, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:40:40', '', '2020-02-02 00:00:00'),
('4020904', 'Contratuall Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:34', '', '2020-02-02 00:00:00'),
('403', 'Cost of Sale', 'Expence', 0, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-08 10:37:16', '', '2020-02-02 00:00:00'),
('30102', 'Credit Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:34', '', '2020-02-02 00:00:00'),
('4020709', 'Cultural Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'nasmud', '2017-04-29 12:45:10', '', '2020-02-02 00:00:00'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '', '2020-02-02 00:00:00', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('40100002', 'cw-Chichawatni', 'Store Expenses', 2, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-08-02 16:30:41', '', '2020-02-02 00:00:00'),
('102010204', 'Default Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2019-01-20 08:15:42', '', '2020-02-02 00:00:00'),
('1020202', 'Deposit', 'Advance, Deposit And Pre-payments', 3, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:40:42', '', '2020-02-02 00:00:00'),
('4020605', 'Design & Printing Expense', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:55:00', '', '2020-02-02 00:00:00'),
('4020404', 'Dish Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:21', '', '2020-02-02 00:00:00'),
('40215', 'Dividend', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2016-09-25 14:07:55', '', '2020-02-02 00:00:00'),
('4020403', 'Drinking Water Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:10', '', '2020-02-02 00:00:00'),
('1010211', 'DSLR Camera', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:53:17', 'admin', '2016-01-02 16:23:25'),
('4020908', 'Earned Leave', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:38', '', '2020-02-02 00:00:00'),
('4020607', 'Education Fair Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:53:42', '', '2020-02-02 00:00:00'),
('1010602', 'Electric Equipment', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:44:51', '', '2020-02-02 00:00:00'),
('1010203', 'Electric Kettle', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:49:07', '', '2020-02-02 00:00:00'),
('10106', 'Electrical Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:43:44', '', '2020-02-02 00:00:00'),
('4020407', 'Electricity Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:59:31', '', '2020-02-02 00:00:00'),
('10202010501', 'employ', 'Salary', 5, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:47:10', '', '2020-02-02 00:00:00'),
('5020201', 'Employee Payable', 'Account Payable', 3, 1, 0, 1, 'L', 0, 0, '0.00', '2', '2019-01-07 10:16:12', '', '2020-02-02 00:00:00'),
('1020301', 'Employee Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, '0.00', '2', '2018-10-17 11:13:45', 'admin', '2018-07-07 12:31:42'),
('40201', 'Entertainment', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2013-07-08 16:21:26', 'anwarul', '2013-07-17 14:21:47'),
('2', 'Equity', 'Chart Of Accounts', 0, 1, 0, 0, 'L', 0, 0, '0.00', '', '2020-02-02 00:00:00', '', '2020-02-02 00:00:00'),
('4', 'Expence', 'Chart Of Accounts', 0, 1, 0, 0, 'E', 0, 0, '0.00', '', '2020-02-02 00:00:00', '', '2020-02-02 00:00:00'),
('4020903', 'Faculty,Staff Salary & Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:21', '', '2020-02-02 00:00:00'),
('4021404', 'Fax Machine', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:34:15', '', '2020-02-02 00:00:00'),
('4020905', 'Festival & Incentive Bonus', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:48', '', '2020-02-02 00:00:00'),
('1010103', 'File Cabinet', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:02', '', '2020-02-02 00:00:00'),
('40210', 'Financial Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-08-20 12:24:31', 'admin', '2015-10-15 19:20:36'),
('1010403', 'Fire Extingushier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:39:32', '', '2020-02-02 00:00:00'),
('4021408', 'Furniture', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:47', '', '2020-02-02 00:00:00'),
('10101', 'Furniture & Fixturers', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'anwarul', '2013-08-20 16:18:15', 'anwarul', '2013-08-21 13:35:40'),
('4020406', 'Gas Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:59:20', '', '2020-02-02 00:00:00'),
('20201', 'General Reserve', 'Reserve & Surplus', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-25 14:07:12', 'admin', '2016-10-02 17:48:49'),
('10105', 'Generator', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, '0.00', 'Zoherul', '2016-02-27 16:02:35', 'admin', '2016-05-23 12:05:18'),
('4021414', 'Generator Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-06-16 10:21:05', '', '2020-02-02 00:00:00'),
('40213', 'Generator Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:29:29', '', '2020-02-02 00:00:00'),
('10103', 'Groceries and Cutleries', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, '0.00', '2', '2018-07-12 10:02:55', '', '2020-02-02 00:00:00'),
('1010408', 'Gym Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:46:03', '', '2020-02-02 00:00:00'),
('4020907', 'Honorarium', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:26', '', '2020-02-02 00:00:00'),
('40205', 'House Rent', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-08-24 10:26:56', '', '2020-02-02 00:00:00'),
('40100001', 'HP-Hasilpur', 'Academic Expenses', 2, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-29 03:44:23', '', '2020-02-02 00:00:00'),
('4020702', 'HR Recruitment Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:55:49', '', '2020-02-02 00:00:00'),
('4020703', 'Incentive on Admission', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:56:09', '', '2020-02-02 00:00:00'),
('3', 'Income', 'Chart Of Accounts', 0, 1, 0, 0, 'I', 0, 0, '0.00', '', '2020-02-02 00:00:00', '', '2020-02-02 00:00:00'),
('30204', 'Income from Photocopy & Printing', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'Zoherul', '2015-07-14 10:29:54', 'admin', '2016-09-25 11:04:28'),
('5020302', 'Income Tax Payable', 'Liabilities for Expenses', 3, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2016-09-19 11:18:17', 'admin', '2016-09-28 13:18:35'),
('102020302', 'Insurance Premium', 'Prepayment', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-09-19 13:10:57', '', '2020-02-02 00:00:00'),
('4021001', 'Interest on Loan', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:20:53', 'admin', '2016-09-19 14:53:34'),
('4020401', 'Internet Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:56:55', 'admin', '2015-10-15 18:57:32'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-07 15:21:58', '', '2020-02-02 00:00:00'),
('10205010101', 'Jahangir', 'Hasan', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-07 10:40:56', '', '2020-02-02 00:00:00'),
('1010210', 'LCD TV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:52:27', '', '2020-02-02 00:00:00'),
('30103', 'Lease Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:52', '', '2020-02-02 00:00:00'),
('5', 'Liabilities', 'Chart Of Accounts', 0, 1, 0, 0, 'L', 0, 0, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('50203', 'Liabilities for Expenses', 'Current Liabilities', 2, 1, 0, 0, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:59', '', '2020-02-02 00:00:00'),
('4020707', 'Library Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2017-01-10 15:34:54', '', '2020-02-02 00:00:00'),
('4021409', 'Lift', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:36:12', '', '2020-02-02 00:00:00'),
('50101', 'Long Term Borrowing', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2013-07-04 12:32:26', 'admin', '2015-10-15 19:47:40'),
('4020608', 'Marketing & Promotion Exp.', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:53:59', '', '2020-02-02 00:00:00'),
('4020901', 'Medical Allowance', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:11:33', '', '2020-02-02 00:00:00'),
('1010411', 'Metal Ditector', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'Zoherul', '2016-08-22 10:55:22', '', '2020-02-02 00:00:00'),
('4021413', 'Micro Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-05-12 14:53:51', '', '2020-02-02 00:00:00'),
('30202', 'Miscellaneous (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'anwarul', '2014-02-06 15:26:31', 'admin', '2016-09-25 11:04:35'),
('4020909', 'Miscellaneous Benifit', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:53', '', '2020-02-02 00:00:00'),
('4020701', 'Miscellaneous Exp', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:54:39', '', '2020-02-02 00:00:00'),
('40207', 'Miscellaneous Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2014-04-26 16:49:56', 'admin', '2016-09-25 12:54:19'),
('1010401', 'Mobile Phone', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-29 10:43:30', '', '2020-02-02 00:00:00'),
('1010212', 'Network Accessories', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-02 16:23:32', '', '2020-02-02 00:00:00'),
('4020408', 'News Paper Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-01-02 15:55:57', '', '2020-02-02 00:00:00'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '', '2020-02-02 00:00:00', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1010404', 'Office Decoration', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:40:02', '', '2020-02-02 00:00:00'),
('10102', 'Office Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'anwarul', '2013-12-06 18:08:00', 'admin', '2015-10-15 15:48:21'),
('4021401', 'Office Repair & Maintenance', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:15', '', '2020-02-02 00:00:00'),
('30201', 'Office Stationary (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'anwarul', '2013-07-17 15:21:06', 'admin', '2016-09-25 11:04:50'),
('402', 'Other Expenses', 'Expence', 1, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42'),
('302', 'Other Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, '0.00', '2', '2018-07-07 13:40:57', 'admin', '2016-09-25 11:04:09'),
('40211', 'Others (Non Academic Expenses)', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'Obaidul', '2014-12-03 16:05:42', 'admin', '2015-10-15 19:22:09'),
('30205', 'Others (Non-Academic Income)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:23:49', 'admin', '2015-10-15 17:57:52'),
('10104', 'Others Assets', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2016-01-29 10:43:16', '', '2020-02-02 00:00:00'),
('4020910', 'Outstanding Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 11:56:50', '', '2020-02-02 00:00:00'),
('4021405', 'Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:34:31', '', '2020-02-02 00:00:00'),
('102030200001', 'P6LFZXUZ-Test-Appointment', 'Patient Receivable', 4, 1, 1, 0, 'A', 0, 0, '0.00', '0', '2020-09-29 14:14:49', '', '0000-00-00 00:00:00'),
('4021412', 'PABX-Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 14:40:18', '', '2020-02-02 00:00:00'),
('4020902', 'Part-time Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:06', '', '2020-02-02 00:00:00'),
('1020302', 'Patient Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, '0.00', '2', '2019-01-07 10:00:42', '', '2020-02-02 00:00:00'),
('1010202', 'Photocopy & Fax Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:47:27', 'admin', '2016-05-23 12:14:40'),
('4021411', 'Photocopy Machine Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 12:40:02', 'admin', '2017-04-27 17:03:17'),
('3020503', 'Practical Fee', 'Others (Non-Academic Income)', 3, 1, 1, 1, 'I', 0, 0, '0.00', 'admin', '2017-07-22 18:00:37', '', '2020-02-02 00:00:00'),
('1020203', 'Prepayment', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:40:51', 'admin', '2015-12-31 16:49:58'),
('1010201', 'Printer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:47:15', '', '2020-02-02 00:00:00'),
('40202', 'Printing and Stationary', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2013-07-08 16:21:45', 'admin', '2016-09-19 14:39:32'),
('3020502', 'Professional Training Course(Oracal-1)', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, '0.00', 'nasim', '2017-06-22 13:28:05', '', '2020-02-02 00:00:00'),
('30207', 'Professional Training Course(Oracal)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, '0.00', 'nasim', '2017-06-22 13:24:16', 'nasim', '2017-06-22 13:25:56'),
('1010208', 'Projector', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:44', '', '2020-02-02 00:00:00'),
('40206', 'Promonational Expence', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-07-11 13:48:57', 'anwarul', '2013-07-17 14:23:03'),
('40214', 'Repair and Maintenance', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:32:46', '', '2020-02-02 00:00:00'),
('202', 'Reserve & Surplus', 'Equity', 1, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2016-09-25 14:06:34', 'admin', '2016-10-02 17:48:57'),
('20102', 'Retained Earnings', 'Share Holders Equity', 2, 1, 1, 1, 'L', 0, 0, '0.00', 'admin', '2016-05-23 11:20:40', 'admin', '2016-09-25 14:05:06'),
('4020708', 'River Cruse', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2017-04-24 15:35:25', '', '2020-02-02 00:00:00'),
('102020105', 'Salary', 'Advance', 4, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:46:44', '', '2020-02-02 00:00:00'),
('40209', 'Salary & Allowances', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-12-12 11:22:58', '', '2020-02-02 00:00:00'),
('404', 'Sale Discount', 'Expence', 1, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-19 10:15:11', '', '2020-02-02 00:00:00'),
('1010406', 'Security Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:41:30', '', '2020-02-02 00:00:00'),
('20101', 'Share Capital', 'Share Holders Equity', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'anwarul', '2013-12-08 19:37:32', 'admin', '2015-10-15 19:45:35'),
('201', 'Share Holders Equity', 'Equity', 1, 1, 0, 0, 'L', 0, 0, '0.00', '', '2020-02-02 00:00:00', 'admin', '2015-10-15 19:43:51'),
('50201', 'Short Term Borrowing', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:30', '', '2020-02-02 00:00:00'),
('40208', 'Software Development Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-11-21 14:13:01', 'admin', '2015-10-15 19:02:51'),
('4020906', 'Special Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:13', '', '2020-02-02 00:00:00'),
('50102', 'Sponsors Loan', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:48:02', '', '2020-02-02 00:00:00'),
('4020706', 'Sports Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'nasmud', '2016-11-09 13:16:53', '', '2020-02-02 00:00:00'),
('401', 'Store Expenses', 'Expence', 1, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2018-07-07 13:38:59', 'admin', '2015-10-15 17:58:46'),
('301', 'Store Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, '0.00', '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02'),
('3020501', 'Students Info. Correction Fee', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:24:45', '', '2020-02-02 00:00:00'),
('1010601', 'Sub Station', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:44:11', '', '2020-02-02 00:00:00'),
('4020704', 'TB Care Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-10-08 13:03:04', '', '2020-02-02 00:00:00'),
('30206', 'TB Care Income', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'admin', '2016-10-08 13:00:56', '', '2020-02-02 00:00:00'),
('4020501', 'TDS on House Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:44:07', 'admin', '2016-09-19 14:40:16'),
('502030201', 'TDS Payable House Rent', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-19 11:19:42', 'admin', '2016-09-28 13:19:37'),
('502030203', 'TDS Payable on Advertisement Bill', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-28 13:20:51', '', '2020-02-02 00:00:00'),
('502030202', 'TDS Payable on Salary', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-28 13:20:17', '', '2020-02-02 00:00:00'),
('4021402', 'Tea Kettle', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:45', '', '2020-02-02 00:00:00'),
('4020402', 'Telephone Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:57:59', '', '2020-02-02 00:00:00'),
('1010209', 'Telephone Set & PABX', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:57', 'admin', '2016-10-02 17:10:40'),
('102020104', 'Test', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:42:48', '', '2020-02-02 00:00:00'),
('40203', 'Travelling & Conveyance', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2013-07-08 16:22:06', 'admin', '2015-10-15 18:45:13'),
('4021406', 'TV', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:07', '', '2020-02-02 00:00:00'),
('1010205', 'UPS', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:50:38', '', '2020-02-02 00:00:00'),
('40204', 'Utility Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-07-11 16:20:24', 'admin', '2016-01-02 15:55:22'),
('4020503', 'VAT on House Rent Exp', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:49:22', 'admin', '2016-09-25 14:00:52'),
('5020301', 'VAT Payable', 'Liabilities for Expenses', 3, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:51:11', 'admin', '2016-09-28 13:23:53'),
('1010409', 'Vehicle A/C', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'Zoherul', '2016-05-12 12:13:21', '', '2020-02-02 00:00:00'),
('1010405', 'Voltage Stablizer', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:40:59', '', '2020-02-02 00:00:00'),
('1010105', 'Waiting Sofa - Steel', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:29', '', '2020-02-02 00:00:00'),
('4020405', 'WASA Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:51', '', '2020-02-02 00:00:00'),
('1010402', 'Water Purifier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-29 11:14:11', '', '2020-02-02 00:00:00'),
('4020705', 'Website Development Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-10-15 12:42:47', '', '2020-02-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acm_account`
--

CREATE TABLE `acm_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acm_invoice`
--

CREATE TABLE `acm_invoice` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `total` float NOT NULL,
  `vat` float NOT NULL,
  `discount` float NOT NULL,
  `grand_total` float NOT NULL,
  `paid` float NOT NULL,
  `due` float NOT NULL,
  `created_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acm_invoice_details`
--

CREATE TABLE `acm_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `quantity` float NOT NULL,
  `price` float NOT NULL,
  `subtotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acm_payment`
--

CREATE TABLE `acm_payment` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `pay_to` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL,
  `created_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acn_account_transaction`
--

CREATE TABLE `acn_account_transaction` (
  `account_tran_id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `tran_date` date NOT NULL,
  `payment_id` int(11) NOT NULL,
  `create_by_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `appointment_id` varchar(20) DEFAULT NULL,
  `patient_id` varchar(20) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `payment_mode` enum('Cash','Online') NOT NULL DEFAULT 'Cash',
  `payment_id` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `problem`, `payment_mode`, `payment_id`, `created_by`, `create_date`, `status`) VALUES
(113, 'ACUP6UZ0', 'PELWQ10H', 18, 3, 25, 1, '2020-11-02', 'test', 'Cash', 'order_123445', 0, '2020-11-02', 2),
(114, 'A3LM5I0X', 'PELWQ10H', 16, 4, 61, 1, '2020-11-03', 'test', 'Cash', 'order_msk6wso', 3, '2020-11-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` varchar(20) DEFAULT NULL,
  `bill_type` varchar(20) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `admission_id` varchar(20) DEFAULT NULL,
  `discount` float DEFAULT '0',
  `tax` float DEFAULT '0',
  `total` float DEFAULT '0',
  `payment_method` varchar(10) DEFAULT NULL,
  `card_cheque_no` varchar(100) DEFAULT NULL,
  `receipt_no` varchar(100) DEFAULT NULL,
  `note` text,
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `bill_id`, `bill_type`, `bill_date`, `admission_id`, `discount`, `tax`, `total`, `payment_method`, `card_cheque_no`, `receipt_no`, `note`, `date`, `status`) VALUES
(1, 'BLF9NHKUR', 'ipd', '2020-10-10', 'UBWG8XDW', 50, 0, 350, 'Cash', '', 'RE123456', '', '2020-10-10 10:38:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bill_admission`
--

CREATE TABLE `bill_admission` (
  `id` int(11) UNSIGNED NOT NULL,
  `admission_id` varchar(20) DEFAULT NULL,
  `patient_id` varchar(20) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `policy_no` varchar(100) DEFAULT NULL,
  `agent_name` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_relation` varchar(255) DEFAULT NULL,
  `guardian_contact` varchar(255) DEFAULT NULL,
  `guardian_address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `isComplete` tinyint(4) NOT NULL COMMENT '1=Complete and 0=Not Complete',
  `assign_by` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_admission`
--

INSERT INTO `bill_admission` (`id`, `admission_id`, `patient_id`, `doctor_id`, `package_id`, `admission_date`, `discharge_date`, `insurance_id`, `policy_no`, `agent_name`, `guardian_name`, `guardian_relation`, `guardian_contact`, `guardian_address`, `status`, `isComplete`, `assign_by`) VALUES
(1, 'UBWG8XDW', 'PY4FETFA', 3, 1, '2020-10-10', '0000-00-00', 0, '', 'Test', 'Guardian test', 'Guardian test', '1234567890', 'Guardian Address', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bill_advanced`
--

CREATE TABLE `bill_advanced` (
  `id` int(11) UNSIGNED NOT NULL,
  `admission_id` varchar(20) DEFAULT NULL,
  `patient_id` varchar(30) DEFAULT NULL,
  `amount` float DEFAULT '0',
  `payment_method` varchar(255) DEFAULT NULL,
  `cash_card_or_cheque` varchar(10) DEFAULT NULL COMMENT '1 cash, 2 card, 3 cheque',
  `receipt_no` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_advanced`
--

INSERT INTO `bill_advanced` (`id`, `admission_id`, `patient_id`, `amount`, `payment_method`, `cash_card_or_cheque`, `receipt_no`, `date`) VALUES
(1, 'UBWG8XDW', 'PY4FETFA', 200, 'Cash', 'Cash', 'RE12345', '2020-10-10 10:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` varchar(20) DEFAULT NULL,
  `admission_id` varchar(20) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `quantity` float DEFAULT '0',
  `amount` float DEFAULT '0',
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`id`, `bill_id`, `admission_id`, `package_id`, `service_id`, `quantity`, `amount`, `date`) VALUES
(1, 'BLF9NHKUR', 'UBWG8XDW', 1, 1, 1, 300, '2020-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `bill_package`
--

CREATE TABLE `bill_package` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `services` text,
  `discount` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_package`
--

INSERT INTO `bill_package` (`id`, `name`, `description`, `services`, `discount`, `status`) VALUES
(1, 'Sliver', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '[{\"id\":\"1\",\"name\":\"Speech Language Therapy\",\"quantity\":\"1\",\"amount\":\"300\"}]', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bill_service`
--

CREATE TABLE `bill_service` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT '0',
  `amount` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_service`
--

INSERT INTO `bill_service` (`id`, `name`, `description`, `quantity`, `amount`, `status`) VALUES
(1, 'Speech Language Therapy', 'Oral Sensory issues related to speech and feeding skills, improving receptive and expressive communication, speech clarity and the use socially acceptable ways to communicate (Pragmatics).', 1, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bm_bed`
--

CREATE TABLE `bm_bed` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `bed_number` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bm_bed`
--

INSERT INTO `bm_bed` (`id`, `room_id`, `description`, `bed_number`, `status`) VALUES
(1, 1, 'Bed number 1', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bm_bed_assign`
--

CREATE TABLE `bm_bed_assign` (
  `id` int(11) NOT NULL,
  `serial` varchar(20) DEFAULT NULL,
  `patient_id` varchar(20) NOT NULL,
  `room_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `assign_date` date NOT NULL,
  `discharge_date` date DEFAULT NULL,
  `assign_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bm_bed_assign`
--

INSERT INTO `bm_bed_assign` (`id`, `serial`, `patient_id`, `room_id`, `bed_id`, `description`, `assign_date`, `discharge_date`, `assign_by`, `status`, `update_by`) VALUES
(1, 'H8JHNA', 'PY4FETFA', 1, 1, '', '2020-10-10', '0000-00-00', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bm_bed_transfer`
--

CREATE TABLE `bm_bed_transfer` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `room_id` int(11) NOT NULL,
  `form_bed_id` int(11) NOT NULL,
  `to_bed_id` int(11) NOT NULL,
  `assign_date` date NOT NULL,
  `discharge_date` date DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `assign_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bm_room`
--

CREATE TABLE `bm_room` (
  `id` int(11) NOT NULL,
  `room_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `limit` int(3) NOT NULL,
  `charge` float NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bm_room`
--

INSERT INTO `bm_room` (`id`, `room_name`, `description`, `limit`, `charge`, `status`) VALUES
(1, 'Room No 1', 'Room No 1', 1, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cm_patient`
--

CREATE TABLE `cm_patient` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `case_manager_id` int(11) NOT NULL,
  `ref_doctor_id` int(11) DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `hospital_address` text,
  `doctor_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cm_status`
--

CREATE TABLE `cm_status` (
  `id` int(11) NOT NULL,
  `critical_status` varchar(255) NOT NULL DEFAULT '1',
  `cm_patient_id` int(11) NOT NULL,
  `description` text,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_sms_info`
--

CREATE TABLE `custom_sms_info` (
  `custom_sms_id` int(11) NOT NULL,
  `reciver` varchar(100) NOT NULL,
  `gateway` text NOT NULL,
  `message` text NOT NULL,
  `sms_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dprt_id` int(11) NOT NULL,
  `main_id` int(6) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `flaticon` varchar(30) NOT NULL,
  `description` text,
  `image` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `price` float NOT NULL,
  `price_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dprt_id`, `main_id`, `name`, `flaticon`, `description`, `image`, `status`, `price`, `price_code`) VALUES
(16, 2, 'Occupational Therapy', 'herbal', 'Occupational Therapy facilitates people with a physical, sensory, or cognitive disability, be as independent as possible in all areas of their lives. OT can help children with various developmental delays improve their cognitive, physical, sensory, and motor skills.\r\n\r\nOur Occupational Therapist can help children improve \r\n\r\nBody Awareness and proprioceptive sense\r\n\r\nMovement coordination between the two sides of the body\r\n\r\nMotor control and organization, planning and coordination\r\n\r\nGross motor coordination and strengthening skills\r\n\r\nFine motor including handwriting, cutting and colouring\r\n\r\nSelf regulation and activities of daily living', 'assets_web/img/department/40c2613eacfe22e58d61e8f611a1a794.jpeg', 1, 350.55, 'pl_FnAPjRCdMSFBJG'),
(18, 2, 'Speech Language Therapy', 'herbal', 'Oral Sensory issues related to speech and feeding skills, improving receptive and expressive communication, speech clarity and the use socially acceptable ways to communicate (Pragmatics) are a few areas that will be targeted in our speech therapy sessions.\r\n\r\nOur Speech-Language Pathologist can help children\r\n\r\nImprove oral motor skills\r\n\r\nImprove speech clarity\r\n\r\nImprove feeding skills\r\n\r\nImprove comprehension of spoken words\r\n\r\nIncrease mean length of utterances (length of sentences)\r\n\r\nReduce/ eliminate echolalia by replacing meaningless utterances with meaningful words\r\n\r\nUse grammatically appropriate sentences \r\n\r\nProgress in social use of language (Pragmatics)', 'assets_web/img/department/492e8b388705e91f65a7f62e7de1e87c.jpeg', 1, 300, 'pl_Fo4L9HkiAPlQ5j'),
(19, 2, 'Handwriting Program', 'herbal', 'We conduct regular handwriting programs for Speech Therapists, School Teachers, Occupational Therapists, and Parents who can help and aid the children with learning to teach handwriting\r\n\r\nOur Handwriting Specialist can help children\r\n\r\nImprove body awareness and posture for writing\r\n\r\nImprove pencil grip\r\n\r\nWrite upper case, lower case, and numbers with proper spacing and size\r\n\r\nBe able to copy words and sentences from the board\r\n\r\nImprove speed of writing', 'assets_web/img/department/36d51d9d519ba9f6d4ad1ec0a20c1d68.jpg', 1, 325, 'pl_Fo4TL2qPTwKRmM'),
(20, 2, 'Social Skills Training', 'herbal', 'A persistent problem of children with autistic spectrum disorders is inappropriate social behavior. Often inappropriate behaviors are preceded by inability to communicate ones needs.\r\n\r\nOur Speech Language Pathologist can help children\r\n\r\nApproach others in socially acceptable ways\r\n\r\nAsk for permission rather than acting impulsively\r\n\r\nFacilitate children to make and keep friends\r\n\r\nShare toys/materials\r\n\r\nListen to instructions given to a  group\r\n\r\nAttend to task at hand\r\n\r\nFollow directions in a small group setting\r\n\r\nSeek attention appropriately and more', 'assets_web/img/department/3d085263b48e42ce1f8f46b10482ee24.jpg', 1, 310, 'pl_Fo4UcKJV20S1Tf'),
(21, 3, 'Occupational Therapy', 'herbal', 'Occupational Therapy facilitates people with a physical, sensory, or cognitive disability, be as independent as possible in all areas of their lives. OT can help children with various developmental delays improve their cognitive, physical, sensory, and motor skills.\r\n\r\nOur Occupational Therapist can help children improve \r\n\r\nBody Awareness and proprioceptive sense\r\n\r\nMovement coordination between the two sides of the body\r\n\r\nMotor control and organization, planning and coordination\r\n\r\nGross motor coordination and strengthening skills\r\n\r\nFine motor including handwriting, cutting and colouring\r\n\r\nSelf regulation and activities of daily living', 'assets_web/img/department/40c2613eacfe22e58d61e8f611a1a794.jpeg', 1, 350.55, 'pl_FnAPjRCdMSFBJG'),
(22, 3, 'Speech Language Therapy', 'herbal', 'Oral Sensory issues related to speech and feeding skills, improving receptive and expressive communication, speech clarity and the use socially acceptable ways to communicate (Pragmatics) are a few areas that will be targeted in our speech therapy sessions.\r\n\r\nOur Speech-Language Pathologist can help children\r\n\r\nImprove oral motor skills\r\n\r\nImprove speech clarity\r\n\r\nImprove feeding skills\r\n\r\nImprove comprehension of spoken words\r\n\r\nIncrease mean length of utterances (length of sentences)\r\n\r\nReduce/ eliminate echolalia by replacing meaningless utterances with meaningful words\r\n\r\nUse grammatically appropriate sentences \r\n\r\nProgress in social use of language (Pragmatics)', 'assets_web/img/department/492e8b388705e91f65a7f62e7de1e87c.jpeg', 1, 300, 'pl_Fo4L9HkiAPlQ5j'),
(23, 3, 'Handwriting Program', 'herbal', 'We conduct regular handwriting programs for Speech Therapists, School Teachers, Occupational Therapists, and Parents who can help and aid the children with learning to teach handwriting\r\n\r\nOur Handwriting Specialist can help children\r\n\r\nImprove body awareness and posture for writing\r\n\r\nImprove pencil grip\r\n\r\nWrite upper case, lower case, and numbers with proper spacing and size\r\n\r\nBe able to copy words and sentences from the board\r\n\r\nImprove speed of writing', 'assets_web/img/department/36d51d9d519ba9f6d4ad1ec0a20c1d68.jpg', 1, 325, 'pl_Fo4TL2qPTwKRmM'),
(24, 3, 'Social Skills Training', 'herbal', 'A persistent problem of children with autistic spectrum disorders is inappropriate social behavior. Often inappropriate behaviors are preceded by inability to communicate ones needs.\r\n\r\nOur Speech Language Pathologist can help children\r\n\r\nApproach others in socially acceptable ways\r\n\r\nAsk for permission rather than acting impulsively\r\n\r\nFacilitate children to make and keep friends\r\n\r\nShare toys/materials\r\n\r\nListen to instructions given to a  group\r\n\r\nAttend to task at hand\r\n\r\nFollow directions in a small group setting\r\n\r\nSeek attention appropriately and more', 'assets_web/img/department/3d085263b48e42ce1f8f46b10482ee24.jpg', 1, 310, 'pl_Fo4UcKJV20S1Tf');

-- --------------------------------------------------------

--
-- Table structure for table `department_lang`
--

CREATE TABLE `department_lang` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `language` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department_lang`
--

INSERT INTO `department_lang` (`id`, `department_id`, `language`, `name`, `description`, `status`) VALUES
(34, 18, 'english', 'Speech Language Therapy', 'Oral Sensory issues related to speech and feeding skills, improving receptive and expressive communication, speech clarity and the use socially acceptable ways to communicate (Pragmatics) are a few areas that will be targeted in our speech therapy se', 1),
(41, 16, 'english', 'Occupational Therapy', 'Occupational Therapy facilitates people with a physical, sensory, or cognitive disability, be as independent as possible in all areas of their lives. OT can help children with various developmental delays improve their cognitive, physical, sensory, a', 1),
(42, 19, 'english', 'Handwriting Program', 'We conduct regular handwriting programs for Speech Therapists, School Teachers, Occupational Therapists, and Parents who can help and aid the children with learning to teach handwriting\r\n\r\nOur Handwriting Specialist can help children\r\n\r\nImprove body ', 1),
(43, 20, 'english', 'Social Skills Training', 'A persistent problem of children with autistic spectrum disorders is inappropriate social behavior. Often inappropriate behaviors are preceded by inability to communicate ones needs.\r\n\r\nOur Speech Language Pathologist can help children\r\n\r\nApproach ot', 1),
(44, 21, 'english', 'Occupational Therapy', 'Occupational Therapy facilitates people with a physical, sensory, or cognitive disability, be as independent as possible in all areas of their lives. OT can help children with various developmental delays improve their cognitive, physical, sensory, a', 1),
(45, 22, 'english', 'Speech Language Therapy', 'Oral Sensory issues related to speech and feeding skills, improving receptive and expressive communication, speech clarity and the use socially acceptable ways to communicate (Pragmatics) are a few areas that will be targeted in our speech therapy se', 1),
(46, 23, 'english', 'Handwriting Program', 'We conduct regular handwriting programs for Speech Therapists, School Teachers, Occupational Therapists, and Parents who can help and aid the children with learning to teach handwriting\r\n\r\nOur Handwriting Specialist can help children\r\n\r\nImprove body ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `hidden_attach_file` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `upload_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `patient_id`, `doctor_id`, `description`, `hidden_attach_file`, `date`, `upload_by`) VALUES
(1, 'PELWQ10H', 3, 'demo', './assets/attachments/1e66e75c816473de4ed8fd55f445b8a8.jpg', '2020-09-30', 2),
(2, 'PELWQ10H', 3, 'test document', './assets/attachments/cf5013ccfc4c29e5f71a2171a62ba50f.png', '2020-10-27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(100) NOT NULL,
  `enquiry` text,
  `checked` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `subject`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES
(1, 'testform@yopmail.com', NULL, 'Test contact Form', 'test', 'test', NULL, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', NULL, '2020-09-30 22:37:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ha_birth`
--

CREATE TABLE `ha_birth` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ha_category`
--

CREATE TABLE `ha_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ha_death`
--

CREATE TABLE `ha_death` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ha_investigation`
--

CREATE TABLE `ha_investigation` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ha_medicine`
--

CREATE TABLE `ha_medicine` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(6) NOT NULL,
  `price` float NOT NULL,
  `manufactured_by` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ha_operation`
--

CREATE TABLE `ha_operation` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inc_insurance`
--

CREATE TABLE `inc_insurance` (
  `id` int(11) NOT NULL,
  `insurance_name` varchar(255) DEFAULT NULL,
  `service_tax` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `remark` text,
  `insurance_no` varchar(50) DEFAULT NULL,
  `insurance_code` varchar(50) DEFAULT NULL,
  `disease_charge` text COMMENT 'array(name, charge)',
  `hospital_rate` varchar(50) DEFAULT NULL,
  `insurance_rate` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inc_limit_approval`
--

CREATE TABLE `inc_limit_approval` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(30) DEFAULT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `disease_details` text COMMENT 'name, description',
  `consultant_id` int(11) DEFAULT NULL COMMENT 'doctor list',
  `policy_name` varchar(255) DEFAULT NULL,
  `policy_no` varchar(100) DEFAULT NULL,
  `policy_holder_name` varchar(255) DEFAULT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `approval_breakup` text COMMENT 'name, charge',
  `total` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text,
  `arabic` text,
  `bangla` text,
  `french` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `bangla`, `french`) VALUES
(1, 'email', 'Email Address', 'البريد الإلكتروني', 'ই-মেইল', NULL),
(2, 'password', 'Password', 'كلمه السر', 'পাসওয়ার্ড', NULL),
(3, 'login', 'Log In', 'تسجيل الدخول', 'লগইন', NULL),
(4, 'incorrect_email_password', 'Incorrect Email/Password!', 'كلمة مرور غير صحيحة', 'ভুল ইমেইল পাসওয়ার্ড', NULL),
(5, 'user_role', 'User Role', 'دور المستخدم', 'ব্যবহারকারীর নিয়ম', NULL),
(6, 'please_login', 'Please Log In', 'الرجاء تسجيل الدخول', 'দয়া করে লগইন করুন', NULL),
(7, 'setting', 'Setting', 'ضبط', 'সেটিং', NULL),
(8, 'profile', 'Profile', 'الملف الشخصي', 'প্রোফাইল', NULL),
(9, 'logout', 'Log Out', 'الخروج', 'প্রস্থান', NULL),
(10, 'please_try_again', 'Please Try Again', 'حاول مرة اخرى', 'অনুগ্রহপূর্বক আবার চেষ্টা করুন', NULL),
(11, 'admin', 'Admin', 'مشرف', 'অ্যাডমিন', 'admin'),
(12, 'doctor', 'Pathologist', 'طبيب', 'ডাক্তার', NULL),
(13, 'representative', 'Representative', 'وكيل', 'প্রতিনিধি', NULL),
(14, 'dashboard', 'Dashboard', 'لوحة القيادة', 'ড্যাশবোর্ড', NULL),
(15, 'department', 'Service', ' قسم، أقسام', 'বিভাগ', NULL),
(16, 'add_department', 'Add Service', 'أضف إلى القسم', 'বিভাগ যোগ করুন', 'Ajouter un département'),
(17, 'department_list', 'Service List', 'قائمة القسم', 'বিভাগ তালিকা', NULL),
(18, 'add_doctor', 'Add Pathologist', 'اضافة طبيب', 'ডাক্তার যোগ করুন', 'Ajouter un docteur'),
(19, 'doctor_list', 'Pathologist List', 'قائمة الطبيب', 'ডাক্তার তালিকা', NULL),
(20, 'add_representative', 'Add Representative', 'إضافة ممثل', 'প্রতিনিধি যোগ করুন', 'Ajouter un représentant'),
(21, 'representative_list', 'Representative List', 'قائمة تمثيلية', 'প্রতিনিধি তালিকা', NULL),
(22, 'patient', 'Parent', 'صبور', 'রোগী', NULL),
(23, 'add_patient', 'Add Parent', 'يضيف المريض', 'রোগী যোগ করুন', 'Ajouter un patient'),
(24, 'patient_list', 'Parent List', 'قائمة المريض', 'রোগীর তালিকা', NULL),
(25, 'schedule', 'Schedule', 'جدول', 'সময়সূচী ', NULL),
(26, 'add_schedule', 'Add Schedule', 'إضافة جدول', 'সময়সূচী যোগ করুন', 'ajouter un horaire'),
(27, 'schedule_list', 'Schedule List', 'قائمة الجدول الزمني', 'সময়সূচীর তালিকা', NULL),
(28, 'appointment', 'Appointment', 'موعد', 'এপয়েন্টমেন্ট', 'rendez-vous'),
(29, 'add_appointment', 'Add Appointment', 'إضافة موعد', 'অ্যাপয়েন্টমেন্ট যোগ করুন', 'Ajouter un rendez-vous'),
(30, 'appointment_list', 'Appointment List', 'قائمة التعيين', 'অ্যাপয়েন্টমেন্ট তালিকা', 'liste de rendez-vous'),
(31, 'enquiry', 'Enquiry', 'تحقيق', 'অনুসন্ধান', NULL),
(32, 'language_setting', 'Language Setting', 'إعدادات اللغة', 'ভাষা সেটিং', NULL),
(33, 'appointment_report', 'Appointment Report', 'تقرير موعد', 'অ্যাপয়েন্টমেন্ট রিপোর্ট', 'rapport de rendez-vous'),
(34, 'assign_by_all', 'Assign by All', 'تعيين من قبل الجميع', 'সবার দ্বারা  বরাদ্দ', 'assigner par tous'),
(35, 'assign_by_doctor', 'Assign by Pathologist', 'تعيين من قبل الطبيب', 'ডাক্তার দ্বারা বরাদ্দ', 'assigner par le docteur'),
(36, 'assign_to_doctor', 'Assign to Pathologist', 'تخصيص للطبيب', 'ডাক্তারকে  বরাদ্দ করা', ''),
(37, 'assign_by_representative', 'Assign by Representative', 'يعين من قبل ممثل', 'প্রতিনিধি দ্বারা বরাদ্দ', 'assigner par représentant'),
(38, 'report', 'Report', 'أبلغ عن', 'প্রতিবেদন', NULL),
(39, 'assign_by_me', 'Assign by Me', 'يعينني', 'আমার দ্বারা বরাদ্দ', 'assigner par moi'),
(40, 'assign_to_me', 'Assign to Me', 'يعين لي', 'আমাকে বরাদ্দ করুন', ''),
(41, 'website', 'Website', 'موقع الكتروني', 'ওয়েবসাইট', NULL),
(42, 'slider', 'Slider', 'المنزلق', 'স্লাইডার', NULL),
(43, 'section', 'Section', 'الجزء', 'অধ্যায়', NULL),
(44, 'section_item', 'Section Item', 'بند القسم', 'অধ্যায় আইটেম', NULL),
(45, 'comments', 'Comment', 'تعليقات', 'মন্তব্য', NULL),
(46, 'latest_enquiry', 'Latest Enquiry', 'آخر استفسار', 'সর্বশেষ তদন্ত', NULL),
(47, 'total_progress', 'Total Progress', 'التقدم الكلي', 'মোট অগ্রগতি', NULL),
(48, 'last_year_status', 'Showing status from the last year', 'حالة العام الماضي', 'গত বছরের অবস্থা', NULL),
(49, 'department_name', 'Service Name', 'اسم القسم', 'বিভাগের নাম', NULL),
(50, 'description', 'Description', 'وصف', 'বিবরণ', NULL),
(51, 'status', 'Status', 'الحالة', 'অবস্থা', NULL),
(52, 'active', 'Active', 'نشيط', 'সক্রিয়', 'Actif'),
(53, 'inactive', 'Inactive', 'غير نشط', 'নিষ্ক্রিয়', NULL),
(54, 'cancel', 'Cancel', 'إلغاء', 'বাতিল', ''),
(55, 'save', 'Save', 'حفظ', 'সংরক্ষণ করুন ', NULL),
(56, 'serial', 'SL', 'مسلسل', 'ক্রমিক', NULL),
(57, 'action', 'Action', 'عمل', 'কার্যকলাপ', 'Action'),
(58, 'edit', 'Edit ', 'تصحيح', 'সম্পাদন করা', NULL),
(59, 'delete', 'Delete', 'حذف', 'মুছে ফেলা', NULL),
(60, 'save_successfully', 'Save Successfully!', 'حفظ بنجاح', 'সফলভাবে সংরক্ষণ হয়েছে ', NULL),
(61, 'update_successfully', 'Update Successfully!', 'التحديث بنجاح', 'সফলভাবে আপডেট হয়েছে ', NULL),
(62, 'department_edit', 'Service Edit', 'تحرير القسم', 'বিভাগ সম্পাদনা', NULL),
(63, 'delete_successfully', 'Delete successfully!', 'حذف بنجاح', 'সফলভাবে মুছে ফেলা হয়েছে', NULL),
(64, 'are_you_sure', 'Are You Sure ? ', 'هل أنت واثق؟', 'তুমি কি নিশ্চিত?', 'êtes-vous sûr?'),
(65, 'first_name', 'First Name', 'الاسم الاول', 'নামের প্রথম অংশ', NULL),
(66, 'last_name', 'Last Name', 'الكنية', 'নামের শেষাংশ', NULL),
(67, 'phone', 'Phone No', 'هاتف', 'ফোন', NULL),
(68, 'mobile', 'Mobile No', 'التليفون المحمول', 'মোবাইল', NULL),
(69, 'blood_group', 'Blood Group', 'فصيلة الدم', 'রক্তের গ্রুপ', ''),
(70, 'gender', 'Gender', 'جنس', 'লিঙ্গ', NULL),
(71, 'date_of_birth', 'Date of Birth', 'تاريخ الولادة', 'জন্ম তারিখ', NULL),
(72, 'address', 'Address', 'عنوان', 'ঠিকানা', 'Adresse'),
(73, 'invalid_picture', 'Invalid Picture', 'الصورة غير صالحة', 'অবৈধ ছবি', NULL),
(74, 'doctor_profile', 'Pathologist Profile', 'الملف الشخصي الطبيب', 'ডাক্তার প্রোফাইল', NULL),
(75, 'edit_profile', 'Edit Profile', 'تعديل الملف الشخصي', 'জীবন বৃত্তান্ত সম্পাদনা', NULL),
(76, 'edit_doctor', 'Edit Pathologist', 'تحرير الطبيب', 'ডাক্তার সম্পাদনা করুন', NULL),
(77, 'designation', 'Designation', 'تعيين', 'উপাধি', NULL),
(78, 'short_biography', 'Short Biography', 'سيرة ذاتية قصيرة', 'সংক্ষিপ্ত জীবনী', NULL),
(79, 'picture', 'Picture', 'صورة', 'ছবি', NULL),
(80, 'specialist', 'Specialist', 'متخصص', 'বিশেষজ্ঞ', NULL),
(81, 'male', 'Male', 'الذكر', 'পুরুষ', NULL),
(82, 'female', 'Female', 'إناثا', 'মহিলা ', NULL),
(83, 'education_degree', 'Education/Degree', 'درجة التعليم', 'শীক্ষাগত ডিগ্রি', NULL),
(84, 'create_date', 'Create Date', 'تاريخ الإنشاء', 'তারিখ তৈরি করুন', NULL),
(85, 'view', 'View', 'رأي', 'দেখা', NULL),
(86, 'doctor_information', 'Pathologist Information', 'معلومات الطبيب', 'ডাক্তার তথ্য', NULL),
(87, 'update_date', 'Update Date', 'تاريخ التحديث', 'আপডেট তারিখ', NULL),
(88, 'print', 'Print', 'طباعة', 'ছাপা', NULL),
(89, 'representative_edit', 'Representative Edit', 'تحرير ممثل', 'প্রতিনিধি সম্পাদনা', NULL),
(90, 'patient_information', 'Parent Information', 'معلومات المريض', 'রোগীর তথ্য', NULL),
(91, 'other', 'Other', 'آخر', 'অন্যান্য', NULL),
(92, 'patient_id', 'Parent ID', 'رقم المريض', 'রোগী আইডি', NULL),
(93, 'age', 'Age', 'عمر', 'বয়স', 'âge'),
(94, 'patient_edit', 'Parent Edit', 'تعديل المريض', 'রোগী সম্পাদনা', NULL),
(95, 'id_no', 'ID No.', 'رقم بطاقة الهوية', 'আইডি নাম্বার', NULL),
(96, 'select_option', 'Select Option', 'حدد الخيار', 'বিকল্প নির্বাচন', NULL),
(97, 'doctor_name', 'Pathologist Name', 'اسم الطبيب', 'ডাক্তার নাম', NULL),
(98, 'day', 'Day', 'يوم', 'দিন', NULL),
(99, 'start_time', 'Start Time', 'وقت البدء', 'সময় শুরু', NULL),
(100, 'end_time', 'End Time', 'وقت النهاية', 'শেষ সময়', NULL),
(101, 'per_patient_time', 'Per Parent Time', 'لكل مريض', 'প্রতি রোগীর সময়', NULL),
(102, 'serial_visibility_type', 'Serial Visibility', 'نوع الرؤية التسلسلية', 'সিরিয়াল দৃশ্যমানতা টাইপ', NULL),
(103, 'sequential', 'Sequential', 'تسلسلي', 'ক্রমানুসারে', NULL),
(104, 'timestamp', 'Timestamp', 'الطابع الزمني', 'টাইমস্ট্যাম্প', NULL),
(105, 'available_days', 'Available Days', 'أيام المتاحة', 'সহজলভ্য দিন', ''),
(106, 'schedule_edit', 'Schedule Edit', 'تحرير الجدول الزمني', 'সময়সূচী সম্পাদনা', NULL),
(107, 'available_time', 'Available Time', 'الوقت المتاح', 'সহজলভ্য সময়', ''),
(108, 'serial_no', 'Serial No', 'الرقم التسلسلي', 'ক্রমিক নং', NULL),
(109, 'problem', 'Problem', 'مشكلة', 'সমস্যা', NULL),
(110, 'appointment_date', 'Appointment Date', 'موعد الموعد', 'সাক্ষাৎকারের তারিখ', 'date de rendez-vous'),
(111, 'you_are_already_registered', 'You are already registered!', 'انت مسجل مسبقا', 'আপনি ইতোমধ্যে নিবন্ধিত', NULL),
(112, 'invalid_patient_id', 'Invalid parent ID', 'معرف المريض غير صالح', 'অবৈধ রোগী আইডি', NULL),
(113, 'invalid_input', 'Invalid Input', 'مدخل غير صالح', 'ভুল ইনপুট', NULL),
(114, 'no_doctor_available', 'No Pathologist Available', 'لا يوجد طبيب متاح', 'কোন ডাক্তার পাওয়া যায় না', NULL),
(115, 'invalid_department', 'Invalid Department!', 'قسم غير صالح', 'অবৈধ বিভাগ', NULL),
(116, 'no_schedule_available', 'No Schedule Available', 'لا يوجد جدول متاح', 'কোন সময়সূচী পাওয়া যায় নাই ', NULL),
(117, 'please_fillup_all_required_fields', 'Please fillup all required filelds', 'رجاءا، إملأ جميع الحقول المطلوبة', 'সব প্রয়োজনীয় ফিল্ডগুলি পূরণ করুন', NULL),
(118, 'appointment_id', 'Appointment ID', 'معرف الموعد', 'অ্যাপয়েন্টমেন্ট আইডি', 'identifiant de rendez-vous'),
(119, 'schedule_time', 'Schedule Time', 'جدول الوقت', 'তফসিল সময়', NULL),
(120, 'appointment_information', 'Appointment Information', 'معلومات التعيين', 'অ্যাপয়েন্টমেন্ট তথ্য', 'informations de rendez-vous'),
(121, 'full_name', 'Full Name', 'الاسم الكامل', 'পুরো নাম', NULL),
(122, 'read_unread', 'Read / Unread', 'قراءة غير مقروءة', 'অপঠিত পড়া', NULL),
(123, 'date', 'Date', 'تاريخ', 'তারিখ', NULL),
(124, 'ip_address', 'IP Address', 'عنوان IP', 'আইপি ঠিকানা', NULL),
(125, 'user_agent', 'User Agent', 'وكيل المستخدم', 'ব্যবহারকারী এজেন্ট ', NULL),
(126, 'checked_by', 'Checked By', 'فحص بواسطة', 'চেক', NULL),
(127, 'enquiry_date', 'Enquirey Date', 'تاريخ الاستفسار', 'তদন্ত তারিখ', NULL),
(128, 'enquiry_list', 'Enquiry List', 'قائمة استفسار', 'তদন্ত তালিকা', NULL),
(129, 'filter', 'Filter', 'منقي', 'ফিল্টার', NULL),
(130, 'start_date', 'Start Date', 'تاريخ البدء', 'শুরুর তারিখ', NULL),
(131, 'end_date', 'End Date', 'تاريخ الانتهاء', 'শেষ তারিখ', NULL),
(132, 'application_title', 'Application Title', 'عنوان التطبيق', 'আবেদনের শিরোনাম', 'Titre de l\'application'),
(133, 'favicon', 'Favicon', 'فافيكون', 'ফেভিকন', NULL),
(134, 'logo', 'Logo', 'شعار', 'লোগো', NULL),
(135, 'footer_text', 'Footer Text', 'نص التذييل', 'ফুটার টেক্সট ', NULL),
(136, 'language', 'Language', 'لغة', 'ভাষা', NULL),
(137, 'appointment_assign_by_all', 'Appointment Assign by All', 'تعيين موعد من قبل الجميع', 'অ্যাপয়েন্টমেন্ট সকলের দ্বারা বরাদ্দ', 'rendez-vous assigner par tous'),
(138, 'appointment_assign_by_doctor', 'Appointment Assign by Pathologist', 'تعيين موعد من قبل الطبيب', 'অ্যাপয়েন্টমেন্ট ডাক্তার দ্বারা বরাদ্দ', 'rendez-vous assigner par le docteur'),
(139, 'appointment_assign_by_representative', 'Appointment Assign by Representative', 'تعيين موعد من قبل ممثل', 'অ্যাপয়েন্টমেন্ট প্রতিনিধি দ্বারা বরাদ্দ', 'rendez-vous assigner par le représentant'),
(140, 'appointment_assign_to_all_doctor', 'Appointment Assign to All Pathologist', 'تعيين موعد لجميع الأطباء', 'ডাক্তারদের সকল বরাদ্দ অ্যাপয়েন্টমেন্ট  ', 'rendez-vous assigner à tout le docteur'),
(141, 'appointment_assign_to_me', 'Appointment Assign to Me', 'تعيين موعد لي', 'আমার বরাদ্দ অ্যাপয়েন্টমেন্ট ', 'rendez-vous me assigner'),
(142, 'appointment_assign_by_me', 'Appointment Assign by Me', 'تعيين موعد من قبلي', 'অ্যাপয়েন্টমেন্ট আমার দ্বারা বরাদ্দ', 'rendez-vous assigner par moi'),
(143, 'type', 'Type', 'نوع', 'টাইপ', NULL),
(144, 'website_title', 'Website Title', 'عنوان الموقع', 'ওয়েবসাইট শিরোনাম', NULL),
(145, 'invalid_logo', 'Invalid Logo', 'شعار غير صالح', 'অবৈধ লোগো', NULL),
(146, 'details', 'Details', 'تفاصيل', 'বিস্তারিত', NULL),
(147, 'website_setting', 'Website Setting', 'إعداد موقع الويب', 'ওয়েবসাইট সেটিং', NULL),
(148, 'submit_successfully', 'Submit Successfully!', 'تقديم بنجاح', 'সফলভাবে জমা হয়েছে ', NULL),
(149, 'application_setting', 'Application Setting', 'اعدادات التطبيق', 'অ্যাপ্লিকেশন সেটিং', 'réglage de l\'application'),
(150, 'invalid_favicon', 'Invalid Favicon', 'رمز غير صالح', 'অবৈধ ফেভিকন', NULL),
(151, 'new_enquiry', 'New Enquiry', 'تحقيق جديد', 'নতুন তদন্ত', NULL),
(152, 'information', 'Information', 'معلومات', 'তথ্য', NULL),
(153, 'home', 'Home', 'الصفحة الرئيسية', 'হোম', NULL),
(154, 'select_department', 'Select Service', 'اختر القسم', 'বিভাগ নির্বাচন করুন', NULL),
(155, 'select_doctor', 'Select Pathologist', 'اختر الطبيب', 'ডাক্তার নির্বাচন করুন', NULL),
(156, 'select_representative', 'Select Representative', 'اختر ممثل', 'প্রতিনিধি নির্বাচন করুন', NULL),
(157, 'post_id', 'Post ID', 'بعد معرف', 'পোস্ট আইডি', NULL),
(158, 'thank_you_for_your_comment', 'Thank you for your comment!', 'شكرا لك على تعليقك', 'আপনার মন্তব্যের জন্য ধন্যবাদ', NULL),
(159, 'comment_id', 'Comment ID', 'معرف التعليق', 'মন্তব্য আইডি', NULL),
(160, 'comment_status', 'Comment Status', 'حالة التعليق', 'মন্তব্যের অবস্থা', NULL),
(161, 'comment_added_successfully', 'Comment Added Successfully', 'تمت إضافة تعليق بنجاح', 'মন্তব্য সফলভাবে যোগ করা হয়েছে', NULL),
(162, 'comment_remove_successfully', 'Comment Remove Successfully', 'تعليق إزالة بنجاح', 'মন্তব্য সফলভাবে মুছে ফেলা হয়েছে', NULL),
(163, 'select_item', 'Section Item', 'اختر البند', 'আইটেম নির্বাচন করুন', NULL),
(164, 'add_item', 'Add Item', 'اضافة عنصر', 'আইটেম যোগ করুন', 'Ajouter des objets'),
(165, 'menu_name', 'Menu Name', 'اسم القائمة', 'মেনু নাম', NULL),
(166, 'title', 'Title', 'عنوان', 'খেতাব', NULL),
(167, 'position', 'Position', 'موضع', 'অবস্থান', NULL),
(168, 'invalid_icon_image', 'Invalid Icon Image!', 'صورة رمز غير صالح', 'অবৈধ আইকন ছবি', NULL),
(169, 'about', 'About', 'حول', 'সম্পর্কে', 'À propos de'),
(170, 'blog', 'Blog', 'مدونة', 'ব্লগ', ''),
(171, 'service', 'Service', 'الخدمات', 'সেবা', NULL),
(172, 'item_edit', 'Item Edit', 'تحرير العنصر', 'আইটেম সম্পাদনা', NULL),
(173, 'registration_successfully', 'Registration Successfully', 'التسجيل بنجاح', 'নিবন্ধন সফল', NULL),
(174, 'add_section', 'Add Section', 'إضافة قسم', 'বিভাগ যোগ করুন', 'ajouter une section'),
(175, 'section_name', 'Section Name', 'اسم القسم', 'বিভাগের নাম', NULL),
(176, 'invalid_featured_image', 'Invalid Featured Image!', 'صورة مميزة غير صالحة', 'অবৈধ বৈশিষ্ট্যযুক্ত ইমেজ', NULL),
(177, 'section_edit', 'Section Edit', 'تحرير القسم', 'অধ্যায় সম্পাদনা ', NULL),
(178, 'meta_description', 'Meta Description', 'ميتا الوصف', 'মেটা বর্ণনা', NULL),
(179, 'twitter_api', 'Twitter Api', 'تويتر api', 'টুইটার এপিই ', NULL),
(180, 'google_map', 'Google Map', 'خرائط جوجل', 'গুগল মানচিত্র', NULL),
(181, 'copyright_text', 'Copyright Text', 'نص حقوق النشر', 'কপিরাইট টেক্সট', NULL),
(182, 'facebook_url', 'Facebook URL', 'URL الفيسبوك', 'ফেসবুক ইউআরএল', NULL),
(183, 'twitter_url', 'Twitter URL', 'تغريد رابط', 'টুইটার ইউআরএল', NULL),
(184, 'vimeo_url', NULL, 'Vimeo url', 'Vimeo ইউআরএল', NULL),
(185, 'instagram_url', 'Instagram Url', 'انستغرام رابط', 'Instagram ইউআরএল', NULL),
(186, 'dribbble_url', 'Dribbble URL', 'رابط dribbble', 'ড্রিবল ইউআরএল', NULL),
(187, 'skype_url', 'Skype URL', 'سكايب رابط', 'স্কাইপ ইউআরএল', NULL),
(188, 'add_slider', 'Add Slider', 'أضف شريط التمرير', 'স্লাইডার যোগ করুন', 'ajouter un curseur'),
(189, 'subtitle', 'Sub Title', 'عنوان فرعي', 'বিকল্প নাম', NULL),
(190, 'slide_position', 'Slide Position', 'موقف المنزلق', 'স্লাইড অবস্থান', NULL),
(191, 'invalid_image', 'Invalid Image', 'صورة غير صالحة', 'অবৈধ ছবি', NULL),
(192, 'image_is_required', 'Image is required', 'الصورة مطلوبة', 'ছবি প্রয়োজন', NULL),
(193, 'slider_edit', 'Slider Edit', 'تحرير المنزلق', 'স্লাইডার সম্পাদনা', NULL),
(194, 'meta_keyword', 'Meta Keyword', 'الكلمة الفوقية', 'মেটা শব্দ', NULL),
(195, 'year', 'Year', 'عام', 'বছর', NULL),
(196, 'month', 'Month', 'شهر', 'মাস', NULL),
(197, 'recent_post', 'Recent Post', 'المنشور الاخير', 'সাম্প্রতিক পোস্ট', NULL),
(198, 'leave_a_comment', 'Leave a Comment', 'اترك تعليقا', 'মতামত দিন', NULL),
(199, 'submit', 'Submit', 'خضع', 'জমা দিন', NULL),
(200, 'google_plus_url', 'Google Plus URL', 'جوجل بلس رابط', 'গুগল প্লাস ইউআরএল', NULL),
(201, 'website_status', 'Website Status', 'حالة موقع الويب', 'ওয়েবসাইট অবস্থা', NULL),
(202, 'new_slide', 'New Slide', 'شريحة جديدة', 'নতুন স্লাইড', NULL),
(203, 'new_section', 'New Section', 'قسم جديد', 'নতুন অধ্যায়', NULL),
(204, 'subtitle_description', 'Sub Title / Description', 'وصف العنوان الفرعي', 'সাবটাইটেল বিবরণ', NULL),
(205, 'featured_image', 'Featured Image', 'صورة مميزة', 'বৈশিষ্ট্যযুক্ত ইমেজ', NULL),
(206, 'new_item', 'New Item', 'عنصر جديد', 'নতুন আইটেম ', NULL),
(207, 'item_position', 'Item Position', 'موقف البند', 'position', NULL),
(208, 'icon_image', 'Icon Image', 'صورة الرمز', 'আইকন ছবি', NULL),
(209, 'post_title', 'Post Title', 'عنوان المشاركة', 'পোস্ট শিরোনাম', NULL),
(210, 'add_to_website', 'Add to Website', 'أضف إلى الموقع', 'ওয়েবসাইট এ যোগ করুন', 'ajouter au site'),
(211, 'read_more', 'Read More', 'قراءة المزيد', 'আরো পড়ুন', NULL),
(212, 'registration', 'Registration', 'التسجيل', 'নিবন্ধন', NULL),
(213, 'appointment_form', 'Appointment Form', 'نموذج التعيين', 'অ্যাপয়েন্টমেন্ট ফর্ম', 'formulaire de rendez-vous'),
(214, 'contact', 'Contact', 'اتصل', 'যোগাযোগ', NULL),
(215, 'optional', 'Optional', 'اختياري', 'ঐচ্ছিক', NULL),
(216, 'customer_comments', 'Parent Comments', 'تعليقات العملاء', 'গ্রাহক মন্তব্য', NULL),
(217, 'need_a_doctor_for_checkup', 'Need a Pathologist for Check-up?', 'بحاجة الى طبيب للفحص', 'চেকআপ জন্য একটি ডাক্তার প্রয়োজন', NULL),
(218, 'just_make_an_appointment_and_you_are_done', 'JUST MAKE AN APPOINTMENT & YOU\'RE DONE ! ', 'مجرد تحديد موعد وانتهيت', 'শুধু একটি অ্যাপয়েন্টমেন্ট করুন এবং আপনার সম্পন্ন হবে ', NULL),
(219, 'get_an_appointment', 'Get an appointment', 'الحصول على موعد', 'একটি অ্যাপয়েন্টমেন্ট পেতে', NULL),
(220, 'latest_news', 'Latest News', 'أحدث الأخبار', 'সর্বশেষ সংবাদ', NULL),
(221, 'latest_tweet', 'Latest Tweet', 'أحدث تغريدة', 'সর্বশেষ টুইট', NULL),
(222, 'menu', 'Menu', 'قائمة طعام', 'মেনু', NULL),
(223, 'administrative_user', 'Administrative User', 'مستخدم إداري', 'প্রশাসনিক ব্যবহারকারী', 'utilisateur administratif'),
(224, 'site_align', 'Website Align', 'محاذاة الموقع', 'সাইট সারিবদ্ধ', NULL),
(225, 'right_to_left', 'Right to Left', 'من اليمين الى اليسار', 'ডান থেকে বাম', NULL),
(226, 'left_to_right', 'Left to Right', 'من اليسار إلى اليمين', 'বাম থেকে ডান', NULL),
(227, 'account_manager', 'Account Manager', 'إدارة حساب المستخدم', 'একাউন্ট ম্যানেজার', 'Directeur de compte'),
(228, 'add_invoice', 'Add Invoice', 'أضف فاتورة', 'চালান যোগ করুন', 'Ajouter une facture'),
(229, 'invoice_list', 'Invoice List', 'قائمة الفاتورة', 'চালান তালিকা', NULL),
(230, 'account_list', 'Account List', 'قائمة الحسابات', 'অ্যাকাউন্ট তালিকা', 'Liste de compte'),
(231, 'add_account', 'Add Account', 'إضافة حساب', 'অ্যাকাউন্ট যোগ করা', 'Ajouter un compte'),
(232, 'account_name', 'Account Name', 'أسم الحساب', 'অ্যাকাউন্ট নাম', 'Nom du compte'),
(233, 'credit', 'Credit', 'ائتمان', 'ক্রেডিট', NULL),
(234, 'debit', 'Debit', 'مدين', 'ডেবিট', NULL),
(235, 'account_edit', 'Account Edit', 'تحرير الحساب', 'অ্যাকাউন্ট সম্পাদনা', 'Compte modifier'),
(236, 'quantity', 'Quantity', 'كمية', 'পরিমাণ', NULL),
(237, 'price', 'Price', 'السعر', 'মূল্য', NULL),
(238, 'total', 'Total', 'مجموع', 'মোট', NULL),
(239, 'remove', 'Remove', 'إزالة', 'অপসারণ', NULL),
(240, 'add', 'Add', 'إضافة', 'যোগ করা', 'Ajouter'),
(241, 'subtotal', 'Sub Total', 'حاصل الجمع', 'উপসমষ্টি', NULL),
(242, 'vat', 'Vat', 'برميل', 'ভ্যাট', NULL),
(243, 'grand_total', 'Grand Total', 'المجموع الكلي', 'সর্বমোট', NULL),
(244, 'discount', 'Discount', 'خصم', 'ডিসকাউন্ট', NULL),
(245, 'paid', 'Paid', 'دفع', 'অর্থ প্রদান', NULL),
(246, 'due', 'Due', 'بسبب', 'বাকি', NULL),
(247, 'reset', 'Reset', 'إعادة تعيين', 'রিসেট', NULL),
(248, 'add_or_remove', 'Add / Remove', 'أضف أو أزل', 'যোগ অথবা অপসারণ', 'Ajouter votre suppression'),
(249, 'invoice', 'Invoice', 'فاتورة', 'চালান', NULL),
(250, 'invoice_information', 'Invoice Information', 'معلومات الفاتورة', 'চালান তথ্য', NULL),
(251, 'invoice_edit', 'Invoice Edit', 'تحرير الفاتورة', 'চালান সম্পাদনা', NULL),
(252, 'update', 'Update', 'تحديث', 'হালনাগাদ', NULL),
(253, 'all', 'All', 'الكل', 'সব', 'toutes'),
(254, 'patient_wise', 'Parent Wise', 'مريض حكيم', 'রোগী অনুযায়ী', NULL),
(255, 'account_wise', 'Account Wise', 'حساب حكيم', 'অ্যাকাউন্ট অনুযায়ী', 'Âge du compte'),
(256, 'debit_report', 'Debit Report', 'تقرير الخصم', 'ডেবিট রিপোর্ট', NULL),
(257, 'credit_report', 'Credit Report', 'تقرير الائتمان', 'ক্রেডিট রিপোর্ট', NULL),
(258, 'payment_list', 'Payment List', 'قائمة الدفع', 'পেমেন্ট তালিকা', NULL),
(259, 'add_payment', 'Add Payment', 'إضافة الدفع', 'পেমেন্ট যোগ করুন', 'Ajouter un paiement'),
(260, 'payment_edit', 'Payment Edit', 'تحرير الدفع', 'পেমেন্ট সম্পাদনা', NULL),
(261, 'pay_to', 'Pay To', 'دفع ل', 'পরিশোধ', NULL),
(262, 'amount', 'Amount', 'كمية', 'পরিমাণ', 'montante'),
(263, 'bed_type', 'Bed Type', 'نوع السرير', 'বিছানা টাইপ', ''),
(264, 'bed_limit', 'Bed Capacity', 'الحد من السرير', 'বিছানা সীমা', ''),
(265, 'charge', 'Charge', 'الشحنة', 'মূল্য', NULL),
(266, 'bed_list', 'Bed List', 'قائمة السرير', 'বিছানা তালিকা', ''),
(267, 'add_bed', 'Add Bed', 'أضف السرير', 'বিছানা যোগ করুন', 'Ajouter un lit'),
(268, 'bed_manager', 'Bed Manager', 'مدير السرير', 'বিছানা ম্যানেজার', ''),
(269, 'bed_edit', 'Bed Edit', 'تحرير السرير', 'বিছানা সম্পাদনা', ''),
(270, 'bed_assign', 'Bed Assign', 'تخصيص السرير', 'বিছানা বরাদ্দ', ''),
(271, 'assign_date', 'Assign Date', 'تاريخ التعيين', 'তারিখ নির্ধারণ করুন', ''),
(272, 'discharge_date', 'Discharge Date', 'تاريخ التفريغ', 'নির্গমন তারিখ', NULL),
(273, 'bed_assign_list', 'Bed Assign List', 'قائمة تخصيص السرير', 'বিছানা বরাদ্দ তালিকা', ''),
(274, 'assign_by', 'Assign By', 'تعيين بواسطة', 'দ্বারা বরাদ্দ করা', 'assigner par'),
(275, 'bed_available', 'Bed is Available', 'سرير المتاحة', 'বিছানা সহজলভ্য ', ''),
(276, 'bed_not_available', 'Bed is Not Available', 'السرير غير متوفر', 'বিছানা খালি নাই ', ''),
(277, 'invlid_input', 'Invalid Input', 'مدخل غير صالح', 'ভুল ইনপুট', NULL),
(278, 'allocated', 'Allocated', 'تخصيص', 'বরাদ্দ', 'alloué'),
(279, 'free_now', 'Free', 'حر الآن', 'বিনামূল্যে এখন', NULL),
(280, 'select_only_avaiable_days', 'Select Only Avaiable Days', 'اختر الأيام المتاحة فقط', 'শুধুমাত্র ফ্রী  দিন নির্বাচন করুন', NULL),
(281, 'human_resources', 'Human Resources', 'الموارد البشرية', 'মানব সম্পদ', NULL),
(282, 'nurse_list', 'Nurse List', 'قائمة الممرضات', 'নার্স তালিকা', NULL),
(283, 'add_employee', 'Add Employee', 'إضافة موظف', 'কর্মচারী যোগ করুন', 'Ajouter un employé'),
(284, 'user_type', 'User Type', 'نوع المستخدم', 'ব্যবহারকারীর ধরন', NULL),
(285, 'employee_information', 'Employee Information', 'معلومات الموظف', 'কর্মীদের তথ্য', NULL),
(286, 'employee_edit', 'Edit Employee', 'تعديل الموظف', 'কর্মচারী সম্পাদনা', NULL),
(287, 'laboratorist_list', 'Laboratorist List', 'قائمة المختبرين', 'পরীক্ষাগার তালিকা', NULL),
(288, 'employee_list', 'Employee List', 'قائمة موظف', 'কর্মচারী তালিকা', NULL),
(289, 'receptionist_list', 'Receptionist List', 'قائمة استقبال', 'অভ্যর্থনাকারী তালিকা', NULL),
(290, 'pharmacist_list', 'Pharmacist List', 'قائمة الصيدلي', 'ফার্মাসিস্ট তালিকা', NULL),
(291, 'nurse', 'Nurse', 'ممرضة', 'নার্স', NULL),
(292, 'laboratorist', 'Laboratorist', 'قائمة', 'পরীক্ষাগার', NULL),
(293, 'pharmacist', 'Pharmacist', 'صيدلاني', 'কম্পউণ্ডার', NULL),
(294, 'accountant', 'Accountant', 'محاسب', 'হিসাবরক্ষক', 'Comptable'),
(295, 'receptionist', 'Receptionist', 'موظف الإستقبال', 'অভ্যর্থনাকারী ', NULL),
(296, 'noticeboard', 'Noticeboard', 'لوح الإعلانات', 'নোটিশ বোর্ড', NULL),
(297, 'notice_list', 'Notice List', 'قائمة إشعار', 'নোটিশ তালিকা', NULL),
(298, 'add_notice', 'Add Notice', 'إضافة إشعار', 'নোটিশ যোগ করুন', 'Ajouter un avis'),
(299, 'hospital_activities', 'Hospital Activities', 'أنشطة المستشفى', 'হাসপাতাল কার্যক্রম', NULL),
(300, 'death_report', 'Death Report', 'تقرير الموت', 'মৃত্যুর রিপোর্ট', NULL),
(301, 'add_death_report', 'Add Death Report', 'إضافة تقرير الموت', 'মৃত্যু রিপোর্ট যোগ করুন', 'Ajouter un rapport de décès'),
(302, 'death_report_edit', 'Death Report Edit', 'تقرير الموت تحرير', 'মৃত্যু রিপোর্ট সম্পাদনা', NULL),
(303, 'birth_report', 'Birth Report', 'تقرير الولادة', 'জন্ম রিপোর্ট', ''),
(304, 'birth_report_edit', 'Birth Report Edit', 'تحرير تقرير الميلاد', 'জন্ম রিপোর্ট সম্পাদনা', ''),
(305, 'add_birth_report', 'Add Birth Report', 'أضف تقرير الولادة', 'জন্ম রিপোর্ট যোগ করুন', 'Ajouter un rapport d\'ami'),
(306, 'add_operation_report', 'Add Operation Report', 'إضافة تقرير العملية', 'অপারেশন রিপোর্ট যুক্ত করুন', 'Ajouter un rapport d\'opération'),
(307, 'operation_report', 'Operation Report', 'تقرير التشغيل', 'অপারেশন রিপোর্ট', NULL),
(308, 'investigation_report', 'Investigation Report', 'تقرير التحقيق', 'তদন্ত রিপোর্ট', NULL),
(309, 'add_investigation_report', 'Add Investigation Report', 'إضافة تقرير التحقيق', 'তদন্ত রিপোর্ট যোগ করুন', 'Ajouter un rapport d\'enquête'),
(310, 'add_medicine_category', 'Add Medicine Category', 'إضافة فئة الدواء', 'ঔষধ বিভাগ যোগ করুন', 'Ajouter une catégorie de médicament'),
(311, 'medicine_category_list', 'Medicine Category List', 'قائمة فئة الطب', 'ঔষধ বিভাগ তালিকা', NULL),
(312, 'category_name', 'Category Name', 'اسم التصنيف', 'বিভাগ নাম', NULL),
(313, 'medicine_category_edit', 'Medicine Category Edit', 'تحرير فئة الطب', 'ঔষধ বিভাগ সম্পাদনা', NULL),
(314, 'add_medicine', 'Add Medicine', 'إضافة دواء', 'ঔষধ যোগ করুন', 'Ajouter un médicament'),
(315, 'medicine_list', 'Medicine List', 'قائمة الأدوية', 'ঔষধ তালিকা', NULL),
(316, 'medicine_edit', 'Medicine Edit', 'تحرير الدواء', 'ঔষধ সম্পাদনা', NULL),
(317, 'manufactured_by', 'Manufactured By', 'صنع بواسطة', 'নির্মিত', NULL),
(318, 'medicine_name', 'Medicine Name', 'اسم الدواء', 'ঔষধ নাম', NULL),
(319, 'messages', 'Messages', 'رسائل', 'বার্তা', NULL),
(320, 'inbox', 'Inbox', 'صندوق الوارد', 'ইনবক্স', NULL),
(321, 'sent', 'Sent', 'أرسلت', 'প্রেরিত', NULL),
(322, 'new_message', 'New Message', 'رسالة جديدة', 'নতুন বার্তা', NULL),
(323, 'sender', 'Sender Name', 'مرسل', 'প্রেরক', NULL),
(324, 'message', 'Message', 'رسالة', 'বার্তা', NULL),
(325, 'subject', 'Subject', 'موضوع', 'বিষয়', NULL),
(326, 'receiver_name', 'Send To', 'اسم المتلقي', 'প্রাপকের নাম', NULL),
(327, 'select_user', 'Select User', 'اختر المستخدم', 'ব্যবহারকারী নির্বাচন করুন', NULL),
(328, 'message_sent', 'Messages Sent', 'تم الارسال', 'বার্তা পাঠানো', NULL),
(329, 'mail', 'Mail', 'بريد', 'মেইল', NULL),
(330, 'send_mail', 'Send Mail', 'ارسل بريد', 'মেইল পাঠাও', NULL),
(331, 'mail_setting', 'Mail Setting', 'إعداد البريد', 'মেইল সেটিং', NULL),
(332, 'protocol', 'Protocol', 'بروتوكول', 'প্রোটোকল', NULL),
(333, 'mailpath', 'Mail Path', 'مسار البريد', 'মেইল পথ', NULL),
(334, 'mailtype', 'Mail Type', 'نوع البريد', 'মেইল টাইপ', NULL),
(335, 'validate_email', NULL, 'التحقق من صحة البريد الإلكتروني', 'ইমেল যাচাই', NULL),
(336, 'true', 'True', 'صحيح', 'সত্য', NULL),
(337, 'false', 'False', 'خاطئة', 'ভুল', NULL),
(338, 'attach_file', 'Attach File', 'أرفق ملف', 'ফাইল সংযুক্ত', ''),
(339, 'wordwrap', '', 'رجوع الى السطر', 'শব্দ মোড়ানো', NULL),
(340, 'send', 'Send', 'إرسال', 'পাঠান', NULL),
(341, 'upload_successfully', 'Upload Successfully!', 'تحميل بنجاح', 'সফলভাবে আপলোড করা হয়েছে', NULL),
(342, 'app_setting', 'App Setting', 'إعداد التطبيق', 'অ্যাপ্লিকেশন সেটিং', 'réglage de l\'application'),
(343, 'case_manager', 'Case Manager', 'مدير الحالة', 'মামলা ব্যাবস্থাপক', ''),
(344, 'patient_status', 'Parent Status', 'حالة المريض', 'রোগীর অবস্থা', NULL),
(345, 'patient_status_edit', 'Edit Parent Status', 'تعديل حالة المريض', 'রোগীর অবস্থা সম্পাদনা', NULL),
(346, 'add_patient_status', 'Add Parent Status', 'إضافة حالة المريض', 'রোগীর অবস্থা যোগ করুন', 'Ajouter le statut du patient'),
(347, 'add_new_status', 'Add New Status', 'إضافة حالة جديدة', 'খবরের  অবস্থা যোগ করুন', 'Ajouter un nouveau statut'),
(348, 'case_manager_list', 'Case Manager List', 'قائمة مدير الحالة', 'কেস ম্যানেজার তালিকা', ''),
(349, 'hospital_address', 'Hospital Address', 'عنوان المستشفى', 'হাসপাতাল ঠিকানা', NULL),
(350, 'ref_doctor_name', 'Ref. Pathologist Name', 'اسم الطبيب المرجعي', 'রেফারেন্স ডাক্তারের নাম', NULL),
(351, 'hospital_name', 'Hospital Name', 'اسم المستشفى', 'হাসপাতালের  নাম', NULL),
(352, 'patient_name', 'Parent  Name', 'اسم المريض', 'রোগীর নাম', NULL),
(353, 'document_list', 'Document List', 'قائمة المستندات', 'নথি তালিকা', NULL),
(354, 'add_document', 'Add Document', 'إضافة وثيقة', 'নথি যোগ করুন', 'Ajouter un document'),
(355, 'upload_by', 'Update by', 'تحميل بواسطة', 'হালনাগাদ', NULL),
(356, 'documents', 'Documents', 'مستندات', 'কাগজপত্র', NULL),
(357, 'prescription', 'Prescription', 'وصفة طبية', 'প্রেসক্রিপশন', NULL),
(358, 'add_prescription', 'Add Prescription', 'إضافة وصفة طبية', 'প্রেসক্রিপশন যোগ করুন', 'Ajouter une ordonnance'),
(359, 'prescription_list', 'Prescription List', 'قائمة وصفة طبية', 'প্রেসক্রিপশন তালিকা', NULL),
(360, 'add_insurance', 'Add Insurance', 'إضافة التأمين', 'বীমা যোগ করুন', 'Ajouter une assurance'),
(361, 'insurance_list', 'Insurance List', 'قائمة التأمين', 'বীমা তালিকা', NULL),
(362, 'insurance_name', 'Insurance Name', 'اسم التأمين', 'বীমা নাম', NULL),
(366, 'add_patient_case_study', 'Add Parent Case Study', 'إضافة دراسة حالة المريض', 'রোগীর ক্ষেত্রে অধ্যয়ন যোগ করুন', 'Ajouter une étude de cas à un patient'),
(367, 'patient_case_study_list', 'Parent Case Study List', 'قائمة دراسة حالة المريض', 'রোগীর ক্ষেত্রে অধ্যয়ন তালিকা', NULL),
(368, 'food_allergies', 'Food Allergies', 'حساسية الطعام', 'খাবারে এ্যালার্জী', NULL),
(369, 'tendency_bleed', 'Tendency Bleed', 'نزف الميل', 'প্রবণতা রক্তপাত', NULL),
(370, 'heart_disease', 'Heart Disease', 'مرض القلب', 'হৃদরোগ', NULL),
(371, 'high_blood_pressure', 'High Blood Pressure', 'ضغط دم مرتفع', 'উচ্চ রক্তচাপ', NULL),
(372, 'diabetic', 'Diabetic', 'مريض بالسكر', 'বহুমূত্ররোগগ্রস্ত', NULL),
(373, 'surgery', 'Surgery', 'العملية الجراحية', 'সার্জারি', NULL),
(374, 'accident', 'Accident', 'حادث', 'দুর্ঘটনা', 'Accident'),
(375, 'others', 'Others', 'الآخرين', 'অন্যান্য', NULL),
(376, 'family_medical_history', 'Family Medical History', 'التاريخ الطبي للعائلة', 'পারিবারিক চিকিৎসা ইতিহাস', NULL),
(377, 'current_medication', 'Current Medication', 'الدواء الحالي', 'বর্তমান ঔষধ', NULL),
(378, 'female_pregnancy', 'Female Pregnancy', 'الحمل الأنثوي', 'মহিলা গর্ভাবস্থা', NULL),
(379, 'breast_feeding', 'Breast Feeding', 'الرضاعة الطبيعية', 'স্তন খাওয়ানো', ''),
(380, 'health_insurance', 'Health Insurance', 'تأمين صحي', 'স্বাস্থ্য বীমা', NULL),
(381, 'low_income', 'Low Income', 'دخل منخفض', 'কম আয়', NULL),
(382, 'reference', 'Reference', 'مرجع', 'রেফারেন্স ', NULL),
(385, 'instruction', 'Instruction', 'تعليمات', 'নির্দেশ', NULL),
(386, 'medicine_type', 'Medicine Type', 'نوع الدواء', 'ঔষধ টাইপ', NULL),
(387, 'days', 'Days', 'أيام', 'দিন', NULL),
(388, 'weight', 'Weight', 'وزن', 'ওজন', NULL),
(389, 'blood_pressure', 'Blood Pressure', 'ضغط الدم', 'রক্তচাপ', ''),
(390, 'old', 'Old', 'قديم', 'পুরাতন', NULL),
(391, 'new', 'New', 'الجديد', 'নতুন', NULL),
(392, 'case_study', 'Case Study', 'دراسة الحالة', 'কেস স্টাডি', NULL),
(393, 'chief_complain', 'Chief Complain', 'الشكوى الرئيسية', 'প্রধান অভিযোগ', NULL),
(394, 'patient_notes', 'Parent Notes', 'ملاحظات المريض', 'রোগীর নোট', NULL),
(395, 'visiting_fees', 'Visiting Fees', 'رسوم الزيارة', 'ভিসিটিং ফি', 'frais de visite'),
(396, 'diagnosis', 'Diagnosis', 'التشخيص', 'রোগ নির্ণয়', NULL),
(397, 'prescription_id', 'Prescription ID', 'معرف وصفة طبية', 'প্রেসক্রিপশন আইডি', NULL),
(398, 'name', 'Name', 'اسم', 'নাম', NULL),
(399, 'prescription_information', 'Prescription Information', 'معلومات وصفة طبية', 'প্রেসক্রিপশন তথ্য', NULL),
(400, 'sms', 'SMS', 'رسالة قصيرة', 'এসএমএস ', NULL),
(401, 'gateway_setting', 'Gateway Setting', 'إعداد البوابة', 'গেটওয়ে সেটিং', NULL),
(402, 'time_zone', 'Time Zone', 'وحدة زمنية', 'সময় জোন ', NULL),
(403, 'username', 'User Name', 'اسم المستخدم', 'ব্যবহারকারীর নাম', NULL),
(404, 'provider', 'Provider', 'مزود', 'প্রদানকারী', NULL),
(405, 'sms_template', 'SMS Template', 'قالب الرسائل القصيرة', 'এসএমএস টেমপ্লেট', NULL),
(406, 'template_name', 'Template Name', 'اسم القالب', 'টেম্পলেট নাম', NULL),
(407, 'sms_schedule', 'SMS Schedule', 'جدول الرسائل القصيرة', 'এসএমএস সময়সূচী', NULL),
(408, 'schedule_name', 'Schedule Name', 'اسم الجدول الزمني', 'সময়সূচী নাম', NULL),
(409, 'time', 'Time', 'زمن', 'সময়', NULL),
(410, 'already_exists', 'Already Exists', 'موجود مسبقا', 'আগে থেকেই আছে', 'existe déjà'),
(411, 'send_custom_sms', 'Send Custom SMS', 'ارسال الرسائل القصيرة المخصصة', 'কাস্টম এসএমএস পাঠান', NULL),
(412, 'sms_sent', 'SMS Sent!', 'أرسلت الرسائل القصيرة', 'এসএমএস পাঠানো হয়েছে', NULL),
(413, 'custom_sms_list', 'Custom SMS List', 'قائمة الرسائل القصيرة المخصصة', 'কাস্টম এসএমএস তালিকা', NULL),
(414, 'reciver', 'Reciver', 'المتلقي', 'গ্রাহক', NULL),
(415, 'auto_sms_report', 'Auto SMS Report', 'تقرير السيارات sms', 'অটো এসএমএস রিপোর্ট', ''),
(417, 'user_sms_list', 'User SMS List', 'قائمة الرسائل القصيرة للمستخدم', 'ব্যবহারকারী এসএমএস তালিকা', NULL),
(418, 'send_sms', 'Send SMS', 'أرسل رسالة نصية قصيرة', 'বার্তা পাঠান', NULL),
(419, 'new_sms', 'New SMS', 'الرسائل القصيرة الجديدة', 'নতুন এসএমএস', NULL),
(420, 'sms_list', 'SMS List', 'قائمة الرسائل القصيرة', 'এসএমএস তালিকা', NULL),
(421, 'insurance', 'Insurance', 'تأمين', 'বীমা', NULL),
(422, 'add_limit_approval', 'Add Limit Approval', 'إضافة موافقة الحد', 'সীমা অনুমোদন যোগ করুন', 'Ajouter une approbation de limite'),
(423, 'limit_approval_list', 'Limit Approval List', 'قائمة القبول', 'অনুমোদন তালিকা সীমাবদ্ধ', NULL),
(424, 'service_tax', 'Service Tax', 'ضريبة الخدمة', 'সেবা কর', NULL),
(425, 'remark', 'Remark', 'تعليق', 'মন্তব্য', NULL),
(426, 'insurance_no', 'Insurance No.', 'التأمين لا', 'বীমা নম্বর', NULL),
(427, 'insurance_code', 'Insurance Code', 'رمز التأمين', 'বীমা কোড', NULL),
(428, 'hospital_rate', 'Hospital Rate', 'معدل المستشفى', 'হাসপাতালের  হার', NULL),
(429, 'insurance_rate', 'Insurance Rate', 'سعر التأمين', 'বীমা হার', NULL),
(430, 'disease_charge', 'Disease Charge', 'تهمة المرض', 'রোগ চার্জ', NULL),
(431, 'disease_name', 'Disease Name', 'اسم المرض', 'রোগ নাম', NULL),
(432, 'room_no', 'Room No', 'غرفة لا', 'কক্ষ নম্বর', NULL),
(433, 'disease_details', 'Disease Details', 'تفاصيل المرض', 'রোগ বিবরণ', NULL),
(434, 'consultant_name', 'Consultant Name', 'اسم استشاري', 'পরামর্শদাতা নাম', NULL),
(435, 'policy_name', 'Policy Name', 'اسم السياسة', 'পলিসি নাম', NULL),
(436, 'policy_no', 'Policy No.', 'لا توجد سياسة', 'পলিসি নাম্বার', NULL),
(437, 'policy_holder_name', 'Policy Holder Name', 'إسم صاحب الوثيقة', 'নীতি ধারক নাম', NULL),
(438, 'approval_breakup', ' Approval Charge Break up', 'تفكك الموافقة', 'অনুমোদন বিরতি', 'rupture d\'approbation'),
(439, 'limit_approval', 'Limit Approval', 'موافقة الحد', 'অনুমোদন সীমিত', NULL),
(440, 'insurance_limit_approval', 'Insurance Limit Approval', 'موافقة حد التأمين', 'বীমা সীমা অনুমোদন', NULL),
(441, 'billing', 'Billing', 'الفواتير', 'বিলিং', ''),
(442, 'add_admission', 'Add Parent Admission', 'اضف القبول', 'ভর্তি যোগ করুন', 'Ajouter des admissions'),
(443, 'add_service', 'Add Service', 'أضف الخدمة', 'সেবা যোগ করুন', 'ajouter un service'),
(444, 'service_list', 'Service List', 'قائمة الخدمات', 'সেবা তালিকা', NULL),
(445, 'service_name', 'Service Name', 'اسم الخدمة', 'সেবার নাম', NULL),
(446, 'add_package', 'Add Package', 'إضافة حزمة', 'প্যাকেজ যোগ করুন', 'Ajouter un paquet'),
(447, 'package_list', 'Package List', 'قائمة الحزمة', 'প্যাকেজ তালিকা', NULL),
(448, 'package_name', 'Package Name', 'اسم الحزمة', 'প্যাকেজ নাম', NULL),
(449, 'package_details', 'Package Details', 'حزمة من التفاصيل', 'প্যাকেজ বিবরণ', NULL),
(450, 'edit_package', 'Edit Package', 'تحرير الحزمة', 'প্যাকেজ সম্পাদনা করুন', NULL),
(451, 'admission_date', 'Admission Date', 'تاريخ القبول', 'ভর্তির তারিখ', 'date d\'admission'),
(452, 'guardian_name', 'Guardian Name', 'اسم الوصي', 'অভিভাবকের নাম', NULL),
(453, 'agent_name', 'Agent Name', 'اسم العميل', 'এজেন্ট নাম', 'nom d\'agent'),
(454, 'guardian_relation', 'Guardian Relation', 'علاقة الولي', 'অভিভাবক সম্পর্ক', NULL),
(455, 'guardian_contact', 'Guardian Contact', 'الاتصال الوصي', 'অভিভাবক যোগাযোগ', NULL),
(456, 'guardian_address', 'Guardian Address', 'عنوان الوصي', 'অভিভাবক ঠিকানা', NULL),
(457, 'admission_list', 'Parent Admission List', 'قائمة القبول', 'ভর্তি তালিকা', 'list'),
(458, 'admission_id', 'Admission ID', 'معرف القبول', 'ভর্তি আইডি', 'identifiant d\'admission'),
(459, 'edit_admission', 'Edit Admission', 'تحرير القبول', 'ভর্তি সম্পাদনা করুন', NULL),
(460, 'add_advance', 'Add Advance Payment', 'إضافة مسبقا', 'আগাম যোগ করুন', 'Ajouter une avance'),
(461, 'advance_list', 'Advance Payment List', 'قائمة مسبقا', 'অগ্রিম তালিকা', 'liste avance'),
(462, 'receipt_no', 'Receipt No', 'رقم الإيصال', 'রশীদ নং', NULL),
(463, 'cash_card_or_cheque', 'Cash / Card / Cheque', 'بطاقة نقدية أو شيك', 'নগদ কার্ড বা চেক', NULL),
(464, 'payment_method', 'Payment Method', 'طريقة الدفع او السداد', 'মূল্যপরিশোধ পদ্ধতি', NULL),
(465, 'add_bill', 'Add Bill', 'إضافة فاتورة', 'বিল যোগ করুন', 'Ajouter une facture'),
(466, 'bill_list', 'Bill List', 'قائمة الفاتورة', 'বিল তালিকা', ''),
(467, 'bill_date', 'Bill Date', 'تاريخ الفاتورة', 'বিলের তারিখ', ''),
(468, 'total_days', 'Total Days', 'مجموع الأيام', 'মোট দিন', NULL),
(469, 'advance_payment', 'Advance Payment', 'دفعه مقدمه', 'অগ্রিম পেমেন্ট', 'acompte'),
(470, 'cash', 'Cash', 'السيولة النقدية', 'নগদ', NULL),
(471, 'card', 'Card', 'بطاقة', 'কার্ড', ''),
(472, 'cheque', 'Cheque', 'التحقق من', 'চেক', NULL),
(473, 'card_cheque_no', 'Card / Cheque No.', 'بطاقة لا تحقق', 'কার্ড চেক সংখ্যা', ''),
(474, 'receipt', 'Receipt', 'إيصال', 'প্রাপ্তি', NULL),
(475, 'tax', 'Tax', 'ضريبة', 'কর', NULL),
(476, 'pay_advance', 'Advance Paid', 'دفع مقدما', 'অ্যাডভান্স  পরিশোধ', NULL),
(477, 'payable', 'Payable', 'تدفع', 'প্রদেয়', NULL),
(478, 'notes', 'Notes', 'ملاحظات', 'নোট', NULL),
(479, 'rate', 'Rate', 'معدل', 'দর', NULL),
(480, 'bill_id', 'Bill ID.', 'معرف الفاتورة', 'বিল আইডি', ''),
(482, 'unpaid', 'Unpaid', 'غير مدفوع', 'অপরিশোধিত', NULL),
(483, 'bill_details', 'Bill Details', 'تفاصيل الفاتورة', 'বিল বিবরণ', ''),
(484, 'signature', 'Signature', 'التوقيع', 'স্বাক্ষর', NULL),
(485, 'update_bill', 'Update Bill', 'فاتورة التحديث', 'বিল আপডেট করুন', NULL),
(486, 'role_permission', 'Role Permission', 'إذن الدور', 'ভূমিকা অনুমতি', NULL),
(487, 'add_role', 'Add Role', 'إضافة دور', 'ভূমিকা যোগ করুন', 'ajouter une règle'),
(488, 'role_list', 'Role List', 'قائمة الأدوار', 'ভূমিকা তালিকা', NULL),
(489, 'role_name', 'Role Name', 'اسم الدور', 'ভূমিকা নাম', NULL),
(490, 'assign_role_to_user', 'Assign Role To User', 'تعيين دور للمستخدم', 'ব্যবহারকারী বিধি বরাদ্দ', ''),
(491, 'you_do_not_have_permission_to_access_please_contact_with_administrator', 'You do not have permission to access please contact with administrator', 'ليس لديك إذن للوصول يرجى الاتصال بالمسؤول', 'আপনার অ্যাক্সেস করার অনুমতি নেই প্রশাসকের সাথে যোগাযোগ করুন', NULL),
(492, 'language_list', 'Language List', 'قائمة اللغات', 'ভাষা তালিকা', NULL),
(493, 'add_phrase', 'Add Phrase', 'إضافة عبارة', 'বাক্য যোগ করুন', 'Ajouter Fraser'),
(494, 'sms_setting', 'SMS Setting', 'إعداد الرسائل القصيرة', 'এসএমএস সেটিং', NULL),
(495, 'create', 'Create', 'خلق', 'সৃষ্টি করা', NULL),
(496, 'read', 'Read', 'اقرأ', 'পড়া', NULL),
(497, 'system_user', 'System User', 'مستخدم النظام', 'সিস্টেম ব্যবহারকারী', NULL),
(498, 'permission', 'Permission', 'الإذن', 'অনুমতি', NULL),
(499, 'employees_list', 'Employees List', 'قائمة الموظفين', 'কর্মচারী তালিকা', NULL),
(500, 'not_role_select', 'Not Role Select', 'لا اختيار دور', 'আইন নিৰ্বাচন করা না ', NULL),
(504, 'email_password', 'Email & Password', 'كلمة مرور البريد الإلكتروني', 'ই - মেইলের পাসওয়ার্ড', NULL),
(505, 'user', 'User', 'المستعمل', 'ব্যবহারকারী', NULL),
(506, 'add_room', 'Add Room', 'إضافة غرفة', 'রুম যোগ করুন', 'ajouter de la place'),
(507, 'room_name', 'Room Name', 'اسم الغرفة', 'রুমের নাম', NULL),
(508, 'room_list', 'Room List', 'قائمة غرفة', 'রুম তালিকা', NULL),
(509, 'room_edit', 'Room Edit', 'تحرير الغرفة', 'রুম সম্পাদনা', NULL),
(510, 'bed_number', 'Bed Number', 'رقم السرير', 'বিছানা সংখ্যা', ''),
(511, 'bed_transfer', 'Bed Transfer', 'نقل السرير', 'বিছানা স্থানান্তর', ''),
(512, 'bed_transfer_list', 'Bed Transfer List', 'قائمة نقل السرير', 'বিছানা স্থানান্তর তালিকা', ''),
(513, 'booked', 'Booked', 'حجز', 'বরাদ্দ ', ''),
(514, 'available', 'Available ', 'متاح', 'সহজলভ্য', ''),
(515, 'sex', 'Sex', 'جنس', 'লিঙ্গ', NULL),
(516, 'medications_and_visits', 'Medications and Visits', 'الأدوية والزيارات', 'ঔষধ এবং ভিজিট', NULL),
(517, 'add_medication', 'Add Parent Medication', 'إضافة الدواء', 'ঔষধ যোগ করুন', 'Ajouter un médicament'),
(518, 'medication_list', 'Parent Medication List', 'قائمة الأدوية', 'ঔষধ তালিকা', NULL),
(519, 'add_visit', 'Add Parent Visit', 'أضف زيارة', 'পরিদর্শন যোগ করুন', 'ajouter visite'),
(520, 'visit_list', 'Parent Visit List', 'قائمة الزيارة', 'ভিসিট তালিকা', NULL),
(521, 'dosage', 'Dosage', 'جرعة', 'ডোজ', NULL),
(522, 'per_day_intake', 'Per Day Intake', 'في اليوم الواحد', 'প্রতি দিন ভোজন', NULL),
(523, 'full_stomach', 'Full Stomach', 'معدة ممتلئة', 'ভরা পেটে', NULL),
(524, 'other_instruction', 'Others Instruction', 'تعليمات أخرى', 'অন্যান্য নির্দেশনা', NULL),
(525, 'from_date', 'From Date', 'من التاريخ', 'তারিখ হইতে', NULL),
(526, 'to_date', 'To Date', 'حتى الآن', 'তারিখ ', NULL),
(527, 'prescribe_by', 'Prescribe By', 'يصف', 'প্রেসক্রিব ', NULL),
(528, 'intake_time', 'Intake Time', 'وقت الاستلام', 'ভোজনের সময়', NULL),
(529, 'medication_edit', 'Parent Medication Edit', 'تحرير الدواء', 'ঔষধ সম্পাদনা', NULL),
(530, 'visit_date', 'Visit Date', 'تاريخ الزيارة', 'ভিসিট তারিখ', NULL),
(531, 'visit_time', 'Visit Time', 'وقت الزيارة', 'ভিসিট টাইম ', NULL),
(532, 'finding', 'Finding', 'العثور على', 'খোঁজা ', NULL),
(533, 'instructions', 'Instructions', 'تعليمات', 'নির্দেশাবলী', NULL),
(534, 'fees', 'Fees', 'رسوم', 'ফি', NULL),
(535, 'visit_by', 'Visit By', 'زيارة من قبل', 'ভিসিট', NULL),
(536, 'visit_edit', 'Visit Edit', 'زيارة تحرير', 'ভিসিট সম্পাদনা', NULL),
(537, 'visit_type', 'Visit Type', 'نوع الزيارة', 'ভিসিট ধরণ ', NULL),
(538, 'visit_report', 'Visiting Reports', 'تقرير زيارة', 'ভিসিট রিপোর্ট', NULL),
(539, 'medication_report', 'Medication Reports', 'تقرير الدواء', 'ঔষধ রিপোর্ট', NULL),
(540, 'url', 'Url', 'رابط', 'ইউআরএল', NULL),
(541, 'image_dimension_require', 'Image Dimension Required', 'البعد الصورة تتطلب', 'ইমেজ মাত্রা প্রয়োজন', NULL),
(542, 'download_now', 'Download Now', 'التحميل الان', 'এখন ডাউনলোড করুন', NULL),
(543, 'start_now', 'Start Now', 'ابدأ الآن', 'এখুনি শুরু করুন', NULL),
(544, 'author_name', 'Author Name', 'اسم المؤلف', 'লেখকের নাম', ''),
(545, 'quotation', 'Quotation', 'اقتباس', 'উদ্ধৃতি', NULL),
(546, 'about_edit', 'About Edit', 'حول تحرير', 'সম্পাদনা সম্পর্কে', 'A propos de Edit'),
(547, 'testimonial_list', 'Testimonial List', 'قائمة الشهادات', 'প্রশংসাপত্র তালিকা', NULL),
(548, 'add_testimonial', 'Add Testimonial', 'أضف شهادة', 'প্রশংসাপত্র যোগ করুন', 'ajouter un témoignage'),
(549, 'testimonial', 'Testimonial', 'شهادة', 'প্রশংসাপত্র', NULL),
(550, 'testimonial_edit', 'Testimonial Edit', 'تحرير الشهادة', 'প্রশংসাপত্র সম্পাদনা', NULL),
(551, 'write_us', 'Write Us', 'اكتب لنا', 'আমাদের লিখুন', NULL),
(552, 'call_us', 'Call Us', 'اتصل بنا', 'আমাদের কল করুন', ''),
(553, 'add_instruction', 'Add Instruction', 'اضف التعليمات', 'নির্দেশ যোগ করুন', 'Instruction publicitaire'),
(554, 'instruction_edit', 'Instruction Edit', 'تحرير التعليمات', 'নির্দেশ সম্পাদনা', NULL),
(555, 'short_instruction', 'Short Instruction', 'تعليمات قصيرة', 'সংক্ষিপ্ত নির্দেশনা', NULL),
(556, 'add_partner', 'Add Partner', 'أضف شريك', 'অংশীদার যোগ করুন', 'Partenaire complémentaire'),
(557, 'partner_list', 'Partner List', 'قائمة الشركاء', 'অংশীদার তালিকা', NULL),
(558, 'partner_edit', 'Partner Edit', 'تعديل الشريك', 'অংশীদার সম্পাদনা', NULL),
(559, 'instruction_list', 'Instruction List', 'قائمة التعليمات', 'নির্দেশাবলী তালিকা', NULL),
(560, 'appoint_instruction', 'Appointment Instruction', 'يعين التعليمات', 'অ্যাপয়েন্টমেন্ট নির্দেশনা', 'instruction de rendez-vous'),
(561, 'institute_name', 'Institute Name', 'اسم المعهد', 'প্রতিষ্ঠানের নাম', NULL),
(564, 'add_portfolio', 'Add Portfolio', 'إضافة محفظة', 'পোর্টফোলিও যোগ করুন', 'Ajouter des portefeuilles'),
(565, 'portfolio_list', 'Portfolio List', 'قائمة المحافظ', 'পোর্টফোলিও তালিকা', NULL),
(566, 'portfolio_edit', 'Portfolio Edit', 'تحرير المحفظة', 'পোর্টফোলিও সম্পাদনা', NULL),
(567, 'flaticon', 'Flaticon', 'رمز مسطح', 'ফ্লাটআইকন ', NULL),
(568, 'add_time_slot', 'Add Time Slot', 'إضافة فتحة الوقت', 'সময় স্লট যোগ করুন', 'ajouter un créneau horaire'),
(569, 'slot', 'Slot', 'فتحة', 'স্লট', NULL),
(570, 'slot_name', 'Slot Name', 'اسم الفتحة', 'স্লট নাম', NULL),
(571, 'slot_list', 'Slot List', 'قائمة الفتحة', 'স্লট তালিকা', NULL),
(572, 'slot_edit', 'Slot Edit', 'تحرير فتحة', 'স্লট সম্পাদনা', NULL),
(573, 'add_main_department', 'Add Main Department', 'إضافة القسم الرئيسي', 'প্রধান বিভাগ যোগ করুন', 'Ajouter une section de menu'),
(574, 'main_department_list', 'Main Branch List', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(575, 'main_department', 'Main Branches', 'القسم الرئيسي', 'প্রধান বিভাগ', NULL),
(576, 'about_us', 'About Us', 'معلومات عنا', 'আমাদের সম্পর্কে', 'À propos de nous'),
(577, 'doctors', 'Therapist\'s', 'الأطباء', 'ডাক্তার', NULL),
(578, 'nurses', 'Nurse\'s', 'الممرضات', 'নার্স', NULL),
(579, 'working_hours', 'Working Hours', 'ساعات العمل', 'কর্মঘন্টা', NULL),
(580, 'closed', 'Closed', 'مغلق', 'বন্ধ', NULL),
(581, 'are_you_human', 'Are you human?', 'هل انت انسان؟', 'তুমি কি মানুষ?', 'es-tu humain?'),
(582, 'add_news', 'Add News', 'أضف الأخبار', 'খবর যোগ করুন', 'Ajouter des nouvelles'),
(583, 'news', 'News', 'أخبار', 'খবর', NULL),
(584, 'news_list', 'News List', 'قائمة الأخبار', 'খবর তালিকা', NULL),
(585, 'added_to_website_successfully', 'Added to website successfully', 'تمت إضافته إلى موقع الويب بنجاح', 'সফলভাবে ওয়েবসাইট এ যোগ করা হয়েছে', 'Site Web d\'Aadhaa avec succès'),
(586, 'removed_form_website_successfully', 'Removed form website successfully', 'إزالة نموذج الموقع بنجاح', 'সফলভাবে ওয়েবসাইট হতে মুছে ফেলা হয়েছে', NULL),
(587, 'related_article', 'Related article', 'مقالات لها صلة', 'সম্পর্কিত নিবন্ধ', NULL),
(588, 'share_this', 'Share this', 'شارك هذا', 'এটি শেয়ার করুন', NULL),
(593, 'menu_list', 'Menu List', 'قائمة القائمة', 'মেনু তালিকা', NULL),
(596, 'add_menu', 'Add Menu', 'إضافة القائمة', 'মেনু যোগ করুন', 'Ajouter un menu'),
(597, 'parent_menu', 'Parent Menu', 'القائمة الأم', 'অভিভাবক মেনু', NULL),
(598, 'menu_edit', 'Menu Edit', 'تحرير القائمة', 'মেনু সম্পাদনা', NULL),
(599, 'template_assign', 'Template Assign', 'تعيين قالب', 'টেম্পলেট বরাদ্দ', NULL),
(600, 'add_template', 'Add Template', 'إضافة قالب', 'টেমপ্লেট যোগ করুন', 'ajouter un modèle'),
(601, 'contents', 'Contents', 'محتويات', 'বিষয়বস্তু', NULL),
(602, 'make_an_appointment', 'Make an appointment!', 'إحجز موعد', 'একটি অ্যাপয়েন্টমেন্ট করা', NULL),
(603, 'go_there', 'Go there', 'اذهب الى هناك', 'সেখানে যাও', NULL),
(604, 'view_our_team_of_surgeons', 'View our team of pathologist', 'عرض فريقنا من الجراحين', 'আমাদের টীম সার্জনদের দেখুন', NULL),
(605, 'timetable', 'Timetable', 'الجدول الزمني', 'সময়সূচি', NULL),
(606, 'benefits', 'Benefits', 'فوائد', 'সুবিধা', ''),
(607, 'common_template', 'Common Template', 'قالب مشترك', 'সাধারণ টেমপ্লেট', NULL),
(608, 'you_need_help', 'You need help?', 'أنت بحاجة للمساعدة؟', 'তোমার সাহায্য দরকার?', NULL),
(609, 'our_team', 'Our Team', 'فريقنا', 'আমাদের টিম', NULL),
(610, 'what_client_say', 'What Client Say', 'ما يقوله العميل', 'ক্লায়েন্ট কি বলে?', NULL),
(611, 'contact_us', 'Contact Us', 'اتصل بنا', 'আমাদের সাথে যোগাযোগ করুন', NULL),
(612, 'departments', 'Branches', 'الإدارات', 'বিভাগ', NULL),
(613, 'quick_links', 'Quick Links', 'روابط سريعة', 'দ্রুত লিঙ্ক', NULL),
(614, 'contact_details', 'Contact Details', 'بيانات المتصل', 'যোগাযোগের ঠিকানা', NULL),
(615, 'get_directions', 'Get Directions', 'احصل على الاتجاهات', 'দিকনির্দেশ পেতে', NULL),
(616, 'data_not_available', 'Data not available!', 'البيانات غير متوفرة', 'তথ্য পাওয়া যায় নাই ', NULL),
(617, 'lets_talk', 'Let\'s Talk!', 'يتيح لك التحدث', 'চল কথা বলি', NULL),
(618, 'my_schedule_for_this_week', 'My schedule for this week', 'جدول أعمالي لهذا الأسبوع', 'এই সপ্তাহের জন্য আমার সময়সূচী', NULL),
(619, 'old_patient', 'Existing Parent', 'مريض قديم', 'পুরাতন রোগী', NULL),
(620, 'new_patient', 'New Parent', 'مريض جديد', 'নতুন রোগী', NULL),
(621, '1', '1', '1', '১', '1'),
(622, '2', '2', '2', '২ ', '2'),
(623, 'book_appointment', 'Book Appointment', 'موعد الكتاب', 'অ্যাপয়েন্টমেন্ট বরাদ্দ করুন', ''),
(624, 'notes_submitted_to_the_attendance_office_must_include_following', 'Notes submitted to the Attendance Office must include following', 'يجب أن تتضمن الملاحظات المقدمة إلى مكتب الحضور ما يلي', 'উপস্থিতি অফিসে নিম্নলিখিত নোট অন্তর্ভুক্ত করা আবশ্যক', NULL),
(625, 'provide_your_primary_information_about_the_following_details', 'Provide your primary information about the following details.', 'تقديم معلوماتك الأساسية حول التفاصيل التالية', 'নিম্নলিখিত বিবরণ সম্পর্কে আপনার প্রাথমিক তথ্য প্রদান করুন', NULL),
(626, 'please_provide_a_valid_email', 'Please provide a valid email.', 'يرجى تقديم عنوان بريد إلكتروني صالح', 'বৈধ ইমেইল প্রদান করুন', NULL),
(627, 'help_us_with_accurate_information_about_the_following_details', 'Help us with accurate information about the following details', 'ساعدنا بمعلومات دقيقة حول التفاصيل التالية', 'নিম্নলিখিত বিবরণ সম্পর্কে সঠিক তথ্য দিয়ে  আমাদের সাহায্য করুন', NULL),
(628, 'i_consent_to_having_this_website_store_my_submitted_information_so_they_can_respond_to_my_inquiry', 'I consent to having this website store my submitted information so they can respond to my inquiry.', 'أوافق على تخزين موقع الويب هذا المعلومات التي أرسلتها حتى يتمكنوا من الرد على استفساري', 'আমি এই ওয়েবসাইট এ আমার তথ্য জমা থাকার অনুমতি দিচ্ছি যাতে তারা আমার তদন্তের সাড়া দিতে পারেন', NULL),
(629, 'please_provide_a_valid_id', 'Please provide a valid ID.', 'يرجى تقديم معرف صالح', 'বৈধ আইডি প্রদান করুন', NULL),
(630, 'if_forgot_patient_id_please_selected_the_checkbox', 'If Forgot Parent ID Please Selected The CheckBox', 'إذا نسيت   معرف المريض يرجى تحديد خانة الاختيار', 'রোগীর আইডি ভুলে গেলে চেকবক্স নির্বাচন করুন', NULL),
(631, 'fax', 'Fax', 'الفاكس', 'ফ্যাক্স', NULL),
(632, 'text', 'Text', 'نص', 'পাঠ', NULL),
(633, 'map_longitude', 'Map Longitude', 'خريطة الطول', 'মানচিত্র দ্রাঘিমাংশ', NULL),
(634, 'map_latitude', 'Map Latitude', 'خريطة خط العرض', 'মানচিত্র অক্ষাংশ', NULL),
(635, 'personal_information', 'Personal information', 'معلومات شخصية', 'ব্যক্তিগত তথ্য', NULL),
(636, 'practicing', 'Practicing', 'ممارسة', 'অনুশীলন', NULL),
(637, 'vacation', 'Vacation', 'عطلة', 'ছুটি', NULL),
(638, 'languages', 'languages', 'اللغات', 'ভাষা', NULL),
(639, 'portfolio', 'Portfolio', 'محفظة', 'পোর্টফোলিও', NULL),
(640, 'career_title', 'Career Title', 'اللقب الوظيفي', 'পেশা শিরোনাম', ''),
(641, 'behance_url', 'Behance Url', 'behance url', 'বেহ্যান্স ইউআরএল', ''),
(642, 'sign_up_with_linkedin', 'Sign up with LinkedIn', 'قم بالتسجيل مع linkedin', 'লিংকডইন দিয়ে সাইন আপ করুন', NULL),
(643, 'sign_up_with_google', 'Sign up with Google', 'اشترك مع جوجل', 'গুগল দিয়ে সাইন আপ করুন', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `bangla`, `french`) VALUES
(644, 'related_departments', 'Related Servicess', 'الإدارات ذات الصلة', 'সম্পর্কিত বিভাগ', NULL),
(645, 'sign_in', 'Sign In', 'تسجيل الدخول', 'প্রবেশ কর', NULL),
(646, 'sign_up', 'Sign Up', 'سجل', 'নিবন্ধন করুন', NULL),
(647, 'remind', 'Remind', 'تذكير', 'মনে করা ', NULL),
(648, 'do_not_have_an_account', 'Don\'t have an account?', 'لا تملك حساب', 'একাউন্ট আছে কিনা?', NULL),
(649, 'remember_me_next_time', 'Remember me next time', 'تذكرني في المرة القادمة', 'আমার পরবর্তী সময় মনে রাখবেন', NULL),
(650, 'or', 'Or', 'أو', 'অথবা', NULL),
(651, 'thank_you_for_registration', 'Thank you for registration', 'شكرا للتسجيل', 'নিবন্ধনের জন্য আপনাকে ধন্যবাদ', NULL),
(652, 'all_addresses_and_support_hotlines', 'All addresses and Support Hotlines', 'جميع العناوين ودعم الخطوط الساخنة', 'সব ঠিকানা এবং সাপোর্ট হটলাইন', 'toutes les adresses et lignes d\'assistance'),
(653, 'thank_you_for_contacting_with_us', 'Thank you for contacting with us.', 'شكرا على اتصالك بنا', 'আমাদের সাথে যোগাযোগ করার জন্য আপনাকে ধন্যবাদ', NULL),
(654, 'invalid_captcha', 'Invalid Captcha', 'كلمة التحقق غير صالحة', 'অবৈধ ছাপা', NULL),
(655, 'service_position', 'Service Position', 'موقف الخدمة', 'সেবা অবস্থান', NULL),
(656, 'view_all', 'View all', 'عرض الكل', 'সব দেখা', NULL),
(657, 'contact_us_for_help', 'Contact Us For Help', 'اتصل بنا للحصول على المساعدة', 'সাহায্যের জন্য আমাদের সাথে যোগাযোগ করুন', NULL),
(658, 'rating', 'Rating', 'تقييم', 'গুণমান নির্দেশ', 'évaluation'),
(659, 'native', 'Native', 'محلي', 'স্থানীয়', 'originaire de'),
(660, 'beginner', 'Beginner', 'مبتدئ', 'শিক্ষানবিস', 'débutante'),
(661, 'fluent', 'Fluent', 'بطلاقة', 'অনর্গল', 'Courant'),
(662, 'rating_out_of_10', 'Rating Out Of 10', 'تصنيف من 10', 'রেটিং আউট অফ ১০', 'note sur 10'),
(663, 'years', 'Years', 'سنوات', 'বছর', 'années'),
(664, 'template_edit', 'Template edit', 'تحرير قالب', 'টেমপ্লেট সম্পাদনা', 'modification du modèle'),
(665, 'map_directions', 'Map Directions', 'خريطة الاتجاهات', 'মানচিত্র নির্দেশাবলী', 'Plan d\'accès'),
(666, 'role_aready_exists', 'Role already exists', 'الدور موجود بالفعل', 'ভূমিকা ইতিমধ্যে বিদ্যমান', 'Le rôle existe déjà'),
(667, 'support', 'Support?', 'الدعم؟', 'সাপোর্ট?', 'Soutien?'),
(668, 'language_data_not_inserted_yet', 'Language data not inserted yet!', 'بيانات اللغة لم يتم إدخالها بعد!', 'ভাষা তথ্য এখনো সন্নিবেশ করা হয় নি!', 'les données linguistiques ne sont pas encore insérées!'),
(669, 'youtube_url', 'Youtube URL', 'يوتيوب رابط', 'ইউটিউব ইউআরএল', 'URL youtube'),
(670, 'document_title', 'Document Title', 'عنوان الوثيقة', 'নথির শিরোনাম', 'Titre du document'),
(671, 'free_bed_list', 'Free bed list', 'قائمة سرير مجاني', 'মুক্ত বিছানা তালিকা', 'Liste de lit gratuit'),
(672, 'discharged', 'Discharged', 'تفريغها', 'কর্মচ্যুত', 'déchargée'),
(673, 'welcome_back', 'Welcome back!', '!مرحبا بعودتك', 'ফিরে আসার জন্য স্বাগতম!', 'Nous saluons le retour!'),
(674, 'today_patient_list', 'Today Parent list', 'اليوم قائمة المرضى', 'আজ রোগীর তালিকা', 'Liste de patients aujourd\'hui'),
(675, 'chart_of_account', 'Chart Of Account', NULL, NULL, NULL),
(676, 'debit_voucher', 'Debit Voucher', NULL, NULL, NULL),
(677, 'credit_voucher', 'Credit Voucher', NULL, NULL, NULL),
(678, 'contra_voucher', 'Contra Voucher', NULL, NULL, NULL),
(679, 'journal_voucher', 'Journal Voucher', NULL, NULL, NULL),
(680, 'voucher_approval', 'Voucher Approval', NULL, NULL, NULL),
(681, 'account_report', 'Account Report', NULL, NULL, NULL),
(682, 'voucher_report', 'Voucher Report', NULL, NULL, NULL),
(683, 'cash_book', 'Cash Book', NULL, NULL, NULL),
(684, 'bank_book', 'Bank Book', NULL, NULL, NULL),
(685, 'general_ledger', 'General Ledger', NULL, NULL, NULL),
(686, 'trial_balance', 'Trial Balance', NULL, NULL, NULL),
(687, 'profit_loss', 'Profit Loss', NULL, NULL, NULL),
(688, 'voucher_no', 'Voucher No', NULL, NULL, NULL),
(689, 'credit_account_head', 'Credit Account Head', NULL, NULL, NULL),
(690, 'cash_in_hand', 'Cash In Hand', NULL, NULL, NULL),
(691, 'add_more', 'Add More', NULL, NULL, NULL),
(692, 'code', 'Code', NULL, NULL, NULL),
(693, 'debit_account_head', 'Debit Account Head', NULL, NULL, NULL),
(694, 'approved', 'Approved', NULL, NULL, NULL),
(695, 'successfully_approved', 'Successfully Approved', NULL, NULL, NULL),
(696, 'update_debit_voucher', 'Update Debit Voucher', NULL, NULL, NULL),
(697, 'update_credit_voucher', 'Update Credit Voucher', NULL, NULL, NULL),
(698, 'update_contra_voucher', 'Update Contra Voucher', NULL, NULL, NULL),
(699, 'find', 'Find', NULL, NULL, NULL),
(700, 'balance', 'Balance', NULL, NULL, NULL),
(701, 'particulars', 'Particulars', NULL, NULL, NULL),
(702, 'voucher_type', 'Voucher Type', NULL, NULL, NULL),
(703, 'transaction_date', 'Transaction Date', NULL, NULL, NULL),
(704, 'opening_balance', 'Opening Balance', NULL, NULL, NULL),
(705, 'cash_book_report_on', 'Cash Book Report On', NULL, NULL, NULL),
(706, 'cash_book_voucher', 'Cash Book Voucher', NULL, NULL, NULL),
(707, 'to', 'To', NULL, NULL, NULL),
(708, 'head_of_account', 'Head Of Account', NULL, NULL, NULL),
(709, 'bank_book_report_of', 'Bank Book Report Of', NULL, NULL, NULL),
(710, 'on', 'On', NULL, NULL, NULL),
(711, 'bank_book_voucher', 'Bank Book Voucher', NULL, NULL, NULL),
(712, 'account_code', 'Account Code', NULL, NULL, NULL),
(713, 'gl_head', 'GL Head', NULL, NULL, NULL),
(714, 'transaction_head', 'Transaction Head', NULL, NULL, NULL),
(715, 'with_details', 'With Details', NULL, NULL, NULL),
(716, 'pre_balance', 'Pre Balance', NULL, NULL, NULL),
(717, 'current_balance', 'Current Balance', NULL, NULL, NULL),
(718, 'general_ledger_report', 'General Ledger Report', NULL, NULL, NULL),
(719, 'trial_balance_report', 'Trail Balance Report', NULL, NULL, NULL),
(720, 'prepared_by', 'Prepared By', NULL, NULL, NULL),
(721, 'accounts', 'Accounts', NULL, NULL, NULL),
(722, 'chairman', 'Chairman', NULL, NULL, NULL),
(723, 'authorized_signature', 'Authorized Signature', NULL, NULL, NULL),
(724, 'cash_flow', 'Cash Flow', NULL, NULL, NULL),
(725, 'cash_flow_statement', 'Cash Flow Statement', NULL, NULL, NULL),
(726, 'amount_in_dollar', 'Amount In Dollar', NULL, NULL, NULL),
(727, 'opening_cash_and_equivalent', 'Opening Cash && Equivalent', NULL, NULL, NULL),
(728, 'profit_loss_report', 'Profit Loss Report', NULL, NULL, NULL),
(729, 'statement_of_comprehensive_income', 'Statement Of Comprehensive Income', 'كشف الحساب الشامل', 'ব্যাপক আয় বিবৃতি', 'État du résultat étendu'),
(730, 'bed_bill', 'Bed Bill', 'بيل السرير', 'বিছানা বিল', 'Bed Bill'),
(731, 'bed_payment', 'Bed Payment', 'دفع السرير', 'বিছানা পেমেন্ট', 'Paiement du lit'),
(732, 'pharmacy', 'Pharmacy', 'مقابل', 'ঔষধালয়', 'Pharmacie'),
(733, 'stock_quantity', 'Stock Quantity', 'كمية المخزون', 'স্টক পরিমাণ', 'Quantité en stock'),
(734, 'add_stock', 'Add Stock', 'أضف سهم', 'স্টক যোগ করুন', 'Ajouter un stock'),
(735, 'app_qr_code', 'App QR Code', 'التطبيق QR Code', 'অ্যাপ QR কোড', 'Code QR de l\'application'),
(736, 'show_qr_code', 'Show QR Code', 'إظهار رمز الاستجابة السريعة', 'QR কোড দেখান', 'Afficher le code QR'),
(737, 'language_proficiency', 'Language Proficiency', NULL, NULL, NULL),
(738, 'your_appointment_already_taken', 'Your appointment already taken!', NULL, NULL, NULL),
(739, 'content_language', 'Content Language', NULL, NULL, NULL),
(740, 'admission', 'Admission', NULL, NULL, NULL),
(741, 'yes', 'Yes', NULL, NULL, NULL),
(742, 'no', 'No', NULL, NULL, NULL),
(743, 'patient_visit', 'Parent Visit', NULL, NULL, NULL),
(744, 'complete_bill_list', 'Complete Bill List', NULL, NULL, NULL),
(745, 'trial_balance_with_opening', 'Trail Balance With Opening', NULL, NULL, NULL),
(746, 'as_on', 'As On', NULL, NULL, NULL),
(747, 'add_banner_slider', 'Add Banner Slider', NULL, NULL, NULL),
(748, 'banner_list', 'Banner List', NULL, NULL, NULL),
(749, 'edit_banner', 'Edit Banner', NULL, NULL, NULL),
(750, 'search', 'Search', NULL, NULL, NULL),
(751, 'common_settings', 'Common settings', NULL, NULL, NULL),
(752, 'map_show_by', 'Map Show By', NULL, NULL, NULL),
(753, 'embed', 'Embed', NULL, NULL, NULL),
(754, 'api', 'API', NULL, NULL, NULL),
(755, 'google_map_api', 'Google Map API', NULL, NULL, NULL),
(756, 'google_map_embed', 'Google Map Embed', NULL, NULL, NULL),
(757, 'import_csv_data', 'Import CSV Data', NULL, NULL, NULL),
(758, 'sample_csv', 'Sample CSV', NULL, NULL, NULL),
(759, 'edit_prescription', 'Edit Prescription', NULL, NULL, NULL),
(760, 'add_new_patient', 'Add New Parent', NULL, NULL, NULL),
(761, 'create_setting', 'Create Setting', NULL, NULL, NULL),
(762, 'common_setting', 'Common Settings', NULL, NULL, NULL),
(763, 'auto_update', 'Auto Update', NULL, NULL, NULL),
(764, 'closed_day', 'Closed Day', NULL, NULL, NULL),
(765, 'open_day', 'Open Day', NULL, NULL, NULL),
(766, 'app_store', 'Apps Store', NULL, NULL, NULL),
(767, 'forgot', 'Forgot', NULL, NULL, NULL),
(768, 'email_is_not_existed', 'Email is not existed!', NULL, NULL, NULL),
(769, 'packages', 'Packages', 'الإدارات', 'বিভাগ', NULL),
(770, 'packages_list', 'Packages List', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(771, 'package_title', 'Package Title', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(772, 'package_code', 'Package Code', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(773, 'package_status', 'Package Status', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(774, 'package_short_description', 'Package Short Description', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(775, 'package_sort_order', 'Sort Order', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(776, 'package_price', 'Package Price (INR)', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(777, 'special_price', 'Special Price (INR)', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(778, 'package_slots', 'Package Slots', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(779, 'package_special_price', 'Package Special Price (INR)', 'البريد الإلكتروني', 'ই-মেইল', NULL),
(780, 'package_description', 'Package Description', 'البريد الإلكتروني', 'ই-মেইল', NULL),
(781, 'packages_list', 'Package List', 'البريد الإلكتروني', 'ই-মেইল', NULL),
(782, 'checkout', 'Checkout', 'البريد الإلكتروني', 'ই-মেইল', NULL),
(783, 'thank_you', 'Thank You!', 'البريد الإلكتروني', 'ই-মেইল', NULL),
(784, 'order_placed', 'You have successfully purchased package. Please visit the parent dashboard to select the appointment.', 'البريد الإلكتروني', 'ই-মেইল', NULL),
(785, 'package_order', 'Package Orders', 'الإدارات', 'বিভাগ', NULL),
(786, 'packages_order_list', 'Orders', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(787, 'add_package_order', 'Create Order', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(788, 'order_total', 'Order Total (INR)', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(789, 'order_date', 'Order Date', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(790, 'order_information', 'Order Information', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(791, 'order_id', 'Order Id', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(792, 'discount_price', 'Discount (INR)', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(793, 'other_charges', 'Other Charges (INR)', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(794, 'patient_code', 'Parent Code', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(795, 'package_id', 'Package ID', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(796, 'offline', 'Offline', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(797, 'online', 'Online', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(798, 'schedule_type', 'Schedule Type', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(799, 'leaves', 'Leaves', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(800, 'add_leave', 'Apply Leave', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(801, 'leave_list', 'List of Leaves', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(802, 'managers', 'Leave Managers', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(803, 'renewals', 'Package renewals', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(804, 'renewals_status', 'Package renewals status', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(805, 'renewals_date', 'Package renewals date', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(806, 'renewals_flag', 'Renewals email', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(807, 'branch_name', 'Branch Name', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(808, 'select_main_department', 'Select Branch', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(809, 'no_department_available', 'Department not available', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(810, 'invalid_main_department', 'Invalid Main Department', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(811, 'appointment_type', 'Appointment Type', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(812, 'payment_type', 'Payment Type', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(813, 'no_servicess_available', 'no servicess available', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(814, 'department_price', 'Service Price (INR)', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(815, 'department_price_code', 'Service Price Code', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(816, 'payment_code', 'Service Payment Code', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(817, 'meeting_url', 'Meeting URL', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(818, 'meeting_user_id', 'Meeting User ID', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(819, 'meeting_password', 'Meeting Password', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(820, 'receipt_id', 'Receipt ID', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(821, 'receipt', 'Payment Receipt', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(822, 'cancell_successfully', 'Cancelled successfully!', 'حذف بنجاح', 'সফলভাবে মুছে ফেলা হয়েছে', NULL),
(823, 'confirm_successfully', 'Confirmed successfully!', 'حذف بنجاح', 'সফলভাবে মুছে ফেলা হয়েছে', NULL),
(824, 'order_status', 'Order Status', 'قائمة الإدارة الرئيسية', 'প্রধান বিভাগ তালিকা', NULL),
(825, 'leave_type', 'Leave Type', 'دور المستخدم', 'ব্যবহারকারীর নিয়ম', NULL),
(826, 'leave_description', 'Leave Description', 'دور المستخدم', 'ব্যবহারকারীর নিয়ম', NULL),
(827, 'leave_information', 'Leave Information', 'دور المستخدم', 'ব্যবহারকারীর নিয়ম', NULL),
(828, 'applied_date', 'Leave Applied On', 'دور المستخدم', 'ব্যবহারকারীর নিয়ম', NULL),
(829, 'leave_status', 'Leave Status', 'دور المستخدم', 'ব্যবহারকারীর নিয়ম', NULL),
(830, 'approved_successfully', 'Approved successfully!', 'حذف بنجاح', 'সফলভাবে মুছে ফেলা হয়েছে', NULL),
(831, 'rejected_successfully', 'Rejected successfully!', 'حذف بنجاح', 'সফলভাবে মুছে ফেলা হয়েছে', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mail_setting`
--

CREATE TABLE `mail_setting` (
  `id` int(11) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `mailpath` varchar(255) NOT NULL,
  `mailtype` varchar(20) NOT NULL,
  `validate_email` varchar(20) NOT NULL,
  `wordwrap` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mail_setting`
--

INSERT INTO `mail_setting` (`id`, `protocol`, `mailpath`, `mailtype`, `validate_email`, `wordwrap`) VALUES
(5, 'mail', '/usr/sbin/sendmail', 'text', 'false', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `main_department`
--

CREATE TABLE `main_department` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_department`
--

INSERT INTO `main_department` (`id`, `name`, `description`, `status`) VALUES
(2, ' Kalyani Nagar Branch', '1336, 2nd Cross, Nanjappa Layout, Babusapalya, Banswadi Extn, Bangalore 560043', 1),
(3, 'Kothanur Branch', 'Saikrupa, No 31/255, Sangam Enclave, K Narayanapura, Kothanur, Bangalore 560077', 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_department_lang`
--

CREATE TABLE `main_department_lang` (
  `id` int(11) NOT NULL,
  `main_id` int(11) NOT NULL,
  `language` varchar(15) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_department_lang`
--

INSERT INTO `main_department_lang` (`id`, `main_id`, `language`, `name`, `description`, `status`) VALUES
(9, 2, 'english', ' Kalyani Nagar Branch', '1336, 2nd Cross, Nanjappa Layout, Babusapalya, Banswadi Extn, Bangalore 560043', 1),
(17, 3, 'english', 'Kothanur Branch', 'Saikrupa, No 31/255, Sangam Enclave, K Narayanapura, Kothanur, Bangalore 560077', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `medicine_id` int(11) NOT NULL,
  `dosage` int(3) NOT NULL,
  `per_day_intake` int(1) NOT NULL,
  `full_stomach` tinyint(1) DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `other_instruction` text COLLATE utf8_unicode_ci NOT NULL,
  `prescribe_by` int(11) NOT NULL,
  `intake_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES
(1, 3, 2, 'demo', '<p>demo</p>', '2020-08-20 11:05:05', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', '', 'dashboard', 1),
(3, 'Department', 'department System', 'application/modules/store/assets/images/thumbnail.jpg', 'department', 1),
(4, 'Doctor', 'Doctor', 'application/modules/user_role/assets/images/thumbnail.jpg', 'doctor', 1),
(5, 'Patient', 'Patient', 'application/modules/employee/assets/images/thumbnail.jpg', 'patient', 1),
(6, 'Schedule', 'Schedule', 'application/modules/customer/assets/images/thumbnail.jpg', 'schedule', 1),
(7, 'Appointment', 'Appointment', 'application/modules/product/assets/images/thumbnail.jpg', 'appointment', 1),
(8, 'Prescription', 'Prescription', 'application/modules/category/assets/images/thumbnail.jpg', 'prescription', 1),
(9, 'Account Manager', 'Account Manager', 'application/modules/supplier/assets/images/thumbnail.jpg', 'account_manager', 1),
(11, 'Insurance', 'Insurance', 'application/modules/warehouse/assets/images/thumbnail.jpg', 'insurance', 1),
(12, 'Billing', 'Billing', 'application/modules/sale/assets/images/thumbnail.jpg', 'billing', 1),
(13, 'Human Resources', 'Human Resources', 'application/modules/lease/assets/images/thumbnail.jpg', 'human_resources', 1),
(14, 'Bed Manager', 'Bed Manager', 'application/modules/payment/assets/images/thumbnail.jpg', 'bed_manager', 1),
(15, 'Noticeboard', 'Noticeboard', 'application/modules/stockmovment/assets/images/thumbnail.jpg', 'noticeboard', 1),
(16, 'Case Manager', 'Case Manager', 'application/modules/store/assets/images/thumbnail.jpg', 'case_manager', 1),
(17, 'Hospital Activities', 'Hospital Activities', 'application/modules/store/assets/images/thumbnail.jpg', 'hospital_activities', 1),
(18, 'Enquiry', 'Enquiry', 'application/modules/store/assets/images/thumbnail.jpg', 'enquiry', 1),
(19, 'Setting', 'Setting', 'application/modules/store/assets/images/thumbnail.jpg', 'setting', 1),
(20, 'SMS', 'SMS', 'application/modules/store/assets/images/thumbnail.jpg', 'sms', 1),
(21, 'Messages', 'Messages', 'application/modules/store/assets/images/thumbnail.jpg', 'messages', 1),
(22, 'Mail', 'Mail', 'application/modules/store/assets/images/thumbnail.jpg', 'mail', 1),
(23, 'Website', 'Website', 'application/modules/store/assets/images/thumbnail.jpg', 'website', 1),
(24, 'Permission', 'Permission', 'application/modules/store/assets/images/thumbnail.jpg', 'permission', 1),
(25, 'Medications and Visits', 'Medications and Visits', '', 'medication_visit', 1),
(26, 'Pharmacy', 'Hospital Pharmacy', '', 'pharmacy', 1),
(27, 'Packages', 'packages System', 'application/modules/store/assets/images/thumbnail.jpg', 'packages', 1),
(28, 'Leaves', 'Employee Leaves', 'application/modules/store/assets/images/thumbnail.jpg', 'leaves', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `assign_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `package_title` varchar(250) NOT NULL,
  `package_code` varchar(250) NOT NULL,
  `package_image` varchar(250) DEFAULT NULL,
  `package_price` float NOT NULL DEFAULT '0',
  `package_special_price` float NOT NULL DEFAULT '0',
  `package_slots` int(3) DEFAULT NULL,
  `package_short_description` tinytext,
  `package_description` text,
  `package_status` int(11) NOT NULL,
  `package_sort_order` int(2) NOT NULL,
  `payment_code` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `package_title`, `package_code`, `package_image`, `package_price`, `package_special_price`, `package_slots`, `package_short_description`, `package_description`, `package_status`, `package_sort_order`, `payment_code`, `created_by`, `updated_by`, `created_date`, `updated_date`) VALUES
(4, 'Demo Package Silver', 'PACK01', NULL, 65.4, 54.5, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 'pl_FomEPvlmMEdvKy', 2, 2, '2020-10-14 05:43:15', '2020-10-14 05:43:15'),
(5, 'Demo Package Gold', 'PACK02', NULL, 105.43, 85.6, 12, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1, 2, 'pl_FomGlAkCPpepf0', 2, 2, '2020-10-14 05:45:19', '2020-10-14 05:45:19'),
(6, 'Demo Package Platinum', 'PACK03', NULL, 165.3, 145.3, 20, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 3, 'pl_FomIe66P3jrLGF', 2, 2, '2020-10-14 05:47:13', '2020-10-14 05:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `package_orders`
--

CREATE TABLE `package_orders` (
  `order_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `quantity` int(2) NOT NULL,
  `package_price` float NOT NULL,
  `package_slots` int(11) NOT NULL,
  `discount_price` float NOT NULL,
  `other` float NOT NULL,
  `total_price` float NOT NULL,
  `order_status` enum('Ordered','Cancelled','Closed') NOT NULL DEFAULT 'Ordered',
  `payment_id` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package_orders`
--

INSERT INTO `package_orders` (`order_id`, `patient_id`, `package_id`, `quantity`, `package_price`, `package_slots`, `discount_price`, `other`, `total_price`, `order_status`, `payment_id`, `created_by`, `updated_by`, `created_date`, `updated_date`) VALUES
(18, 3, 4, 1, 54.5, 5, 0, 0, 54.5, 'Ordered', 'pay_FwBTMRQXT3PPuY', 3, 3, '2020-11-02 10:57:12', '2020-11-02 10:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `package_orders_appointments`
--

CREATE TABLE `package_orders_appointments` (
  `package_order_appoinment_id` int(11) NOT NULL,
  `package_order_id` int(11) NOT NULL,
  `package_appointment_id` int(11) NOT NULL,
  `package_appoinment_status` enum('Active','Closed') NOT NULL DEFAULT 'Active',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Package order appointment schedule';

--
-- Dumping data for table `package_orders_appointments`
--

INSERT INTO `package_orders_appointments` (`package_order_appoinment_id`, `package_order_id`, `package_appointment_id`, `package_appoinment_status`, `created_by`, `updated_by`, `created_date`, `updated_date`) VALUES
(24, 18, 112, 'Active', 3, 3, '2020-11-02 11:00:22', '2020-11-02 11:00:22'),
(25, 18, 114, 'Active', 3, 3, '2020-11-02 11:47:00', '2020-11-02 11:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `package_prices`
--

CREATE TABLE `package_prices` (
  `package_price_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `special_price` float NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `package_renewals`
--

CREATE TABLE `package_renewals` (
  `package_renewal_id` int(11) NOT NULL,
  `package_order_id` int(11) NOT NULL,
  `package_renewal_order_id` int(11) NOT NULL,
  `renewal_status` enum('Pending','Processed') NOT NULL DEFAULT 'Pending',
  `renewal_email_flag` enum('Sent','Pending') NOT NULL DEFAULT 'Pending',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='package renewals data';

-- --------------------------------------------------------

--
-- Table structure for table `package_slots`
--

CREATE TABLE `package_slots` (
  `package_slot_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_slots` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `affliate` varchar(50) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user_role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `phone`, `mobile`, `address`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `user_role`) VALUES
(1, 'P6953OWI', 'asdas', 'asd', 'admin@demo.com', 'e10adc3949ba59abbe56e057f20f883e', '0987', '09876543', 'sdfsd dsdf', 'Male', 'A+', '2019-02-08', NULL, '', 1, '2020-05-23', 1, ''),
(3, 'PELWQ10H', 'Demo', 'Patient', 'demopatient@yopmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '1234567889', 'asda', 'Male', '', '2020-09-24', NULL, '', 2, '2020-08-20', 1, ''),
(13, 'PGSM0JU0', 'Sonali', 'Nalawade', 'sonali.n@yopmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '1234567890', 'Banglore', 'Female', 'O-', '1990-01-27', NULL, 'assets/images/patient/0ab57dde63a96e7ac9d509b9a76a5d6a.jpg', 13, '2020-10-30', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `pa_visit`
--

CREATE TABLE `pa_visit` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_type` int(2) NOT NULL COMMENT '2=doctor and 5=nurse',
  `user_id` int(11) NOT NULL,
  `visit_date` date NOT NULL,
  `visit_time` time NOT NULL,
  `finding` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `instructions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fees` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `language` varchar(15) NOT NULL,
  `title` varchar(60) NOT NULL,
  `institute` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pr_case_study`
--

CREATE TABLE `pr_case_study` (
  `id` int(11) UNSIGNED NOT NULL,
  `patient_id` varchar(30) DEFAULT NULL,
  `food_allergies` varchar(255) DEFAULT NULL,
  `tendency_bleed` varchar(255) DEFAULT NULL,
  `heart_disease` varchar(255) DEFAULT NULL,
  `high_blood_pressure` varchar(255) DEFAULT NULL,
  `diabetic` varchar(255) DEFAULT NULL,
  `surgery` varchar(255) DEFAULT NULL,
  `accident` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `family_medical_history` varchar(255) DEFAULT NULL,
  `current_medication` varchar(255) DEFAULT NULL,
  `female_pregnancy` varchar(255) DEFAULT NULL,
  `breast_feeding` varchar(255) DEFAULT NULL,
  `health_insurance` varchar(255) DEFAULT NULL,
  `low_income` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pr_prescription`
--

CREATE TABLE `pr_prescription` (
  `id` int(11) UNSIGNED NOT NULL,
  `appointment_id` varchar(30) DEFAULT NULL,
  `patient_id` varchar(30) NOT NULL,
  `patient_type` varchar(50) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `chief_complain` text,
  `insurance_id` int(11) DEFAULT NULL,
  `policy_no` varchar(255) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `blood_pressure` varchar(255) DEFAULT NULL,
  `medicine` text,
  `diagnosis` text,
  `visiting_fees` float DEFAULT NULL,
  `patient_notes` text,
  `reference_by` varchar(50) DEFAULT NULL,
  `reference_to` varchar(50) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(1052, 127, 4, 0, 0, 0, 0),
(1053, 128, 4, 0, 0, 0, 0),
(1054, 129, 4, 0, 1, 0, 0),
(1055, 130, 4, 0, 1, 0, 0),
(1056, 3, 4, 0, 0, 0, 0),
(1057, 4, 4, 0, 0, 0, 0),
(1058, 121, 4, 0, 0, 0, 0),
(1059, 122, 4, 0, 0, 0, 0),
(1060, 6, 4, 0, 0, 0, 0),
(1061, 7, 4, 0, 0, 0, 0),
(1062, 8, 4, 0, 0, 0, 0),
(1063, 9, 4, 0, 0, 0, 0),
(1064, 10, 4, 0, 0, 0, 0),
(1065, 11, 4, 0, 0, 0, 0),
(1066, 12, 4, 0, 0, 0, 0),
(1067, 13, 4, 0, 0, 0, 0),
(1068, 126, 4, 0, 0, 0, 0),
(1069, 14, 4, 0, 0, 0, 0),
(1070, 15, 4, 0, 0, 0, 0),
(1071, 16, 4, 0, 0, 0, 0),
(1072, 17, 4, 0, 0, 0, 0),
(1073, 18, 4, 0, 0, 0, 0),
(1074, 19, 4, 0, 0, 0, 0),
(1075, 96, 4, 0, 0, 0, 0),
(1076, 97, 4, 0, 0, 0, 0),
(1077, 20, 4, 0, 0, 0, 0),
(1078, 21, 4, 0, 0, 0, 0),
(1079, 22, 4, 0, 0, 0, 0),
(1080, 95, 4, 0, 0, 0, 0),
(1081, 23, 4, 0, 0, 0, 0),
(1082, 24, 4, 0, 0, 0, 0),
(1083, 25, 4, 0, 0, 0, 0),
(1084, 26, 4, 0, 0, 0, 0),
(1085, 27, 4, 0, 0, 0, 0),
(1086, 28, 4, 0, 0, 0, 0),
(1087, 29, 4, 0, 0, 0, 0),
(1088, 30, 4, 0, 0, 0, 0),
(1089, 31, 4, 0, 0, 0, 0),
(1090, 123, 4, 0, 0, 0, 0),
(1091, 124, 4, 0, 0, 0, 0),
(1092, 125, 4, 0, 0, 0, 0),
(1093, 32, 4, 0, 0, 0, 0),
(1094, 33, 4, 0, 0, 0, 0),
(1095, 34, 4, 0, 0, 0, 0),
(1096, 35, 4, 0, 0, 0, 0),
(1097, 36, 4, 0, 0, 0, 0),
(1098, 37, 4, 0, 0, 0, 0),
(1099, 38, 4, 0, 0, 0, 0),
(1100, 39, 4, 0, 0, 0, 0),
(1101, 40, 4, 0, 0, 0, 0),
(1102, 41, 4, 0, 0, 0, 0),
(1103, 42, 4, 0, 0, 0, 0),
(1104, 43, 4, 0, 0, 0, 0),
(1105, 44, 4, 0, 0, 0, 0),
(1106, 45, 4, 0, 0, 0, 0),
(1107, 46, 4, 0, 0, 0, 0),
(1108, 47, 4, 0, 0, 0, 0),
(1109, 54, 4, 0, 0, 0, 0),
(1110, 55, 4, 0, 0, 0, 0),
(1111, 56, 4, 0, 0, 0, 0),
(1112, 57, 4, 0, 0, 0, 0),
(1113, 58, 4, 0, 0, 0, 0),
(1114, 59, 4, 0, 0, 0, 0),
(1115, 60, 4, 0, 1, 0, 0),
(1116, 61, 4, 0, 0, 0, 0),
(1117, 62, 4, 0, 0, 0, 0),
(1118, 63, 4, 0, 0, 0, 0),
(1119, 64, 4, 0, 0, 0, 0),
(1120, 65, 4, 0, 0, 0, 0),
(1121, 66, 4, 0, 0, 0, 0),
(1122, 67, 4, 0, 0, 0, 0),
(1123, 68, 4, 0, 0, 0, 0),
(1124, 69, 4, 0, 0, 0, 0),
(1125, 70, 4, 0, 0, 0, 0),
(1126, 75, 4, 0, 0, 0, 0),
(1127, 76, 4, 0, 0, 0, 0),
(1128, 77, 4, 0, 0, 0, 0),
(1129, 98, 4, 0, 0, 0, 0),
(1130, 103, 4, 0, 0, 0, 0),
(1131, 104, 4, 0, 0, 0, 0),
(1132, 78, 4, 0, 0, 0, 0),
(1133, 79, 4, 0, 0, 0, 0),
(1134, 80, 4, 0, 0, 0, 0),
(1135, 81, 4, 0, 0, 0, 0),
(1136, 82, 4, 0, 0, 0, 0),
(1137, 83, 4, 0, 0, 0, 0),
(1138, 84, 4, 0, 0, 0, 0),
(1139, 85, 4, 1, 1, 1, 0),
(1140, 86, 4, 1, 1, 1, 0),
(1141, 87, 4, 1, 1, 1, 0),
(1142, 88, 4, 0, 0, 0, 0),
(1143, 89, 4, 0, 0, 0, 0),
(1144, 90, 4, 0, 0, 0, 0),
(1145, 91, 4, 0, 0, 0, 0),
(1146, 92, 4, 0, 0, 0, 0),
(1147, 93, 4, 0, 0, 0, 0),
(1148, 94, 4, 0, 0, 0, 0),
(1149, 111, 4, 0, 0, 0, 0),
(1150, 112, 4, 0, 0, 0, 0),
(1151, 113, 4, 0, 0, 0, 0),
(1152, 114, 4, 0, 0, 0, 0),
(1153, 115, 4, 0, 0, 0, 0),
(1154, 116, 4, 0, 0, 0, 0),
(1155, 117, 4, 0, 0, 0, 0),
(1156, 118, 4, 0, 0, 0, 0),
(1157, 119, 4, 0, 0, 0, 0),
(1158, 120, 4, 0, 0, 0, 0),
(1159, 99, 4, 0, 0, 0, 0),
(1160, 101, 4, 0, 0, 0, 0),
(1161, 102, 4, 0, 0, 0, 0),
(1162, 105, 4, 0, 0, 0, 0),
(1163, 106, 4, 0, 0, 0, 0),
(1164, 107, 4, 0, 0, 0, 0),
(1165, 108, 4, 0, 0, 0, 0),
(1166, 109, 4, 0, 0, 0, 0),
(1167, 110, 4, 0, 0, 0, 0),
(1168, 71, 4, 0, 0, 0, 0),
(1169, 72, 4, 0, 0, 0, 0),
(1170, 73, 4, 0, 0, 0, 0),
(1171, 74, 4, 0, 0, 0, 0),
(2014, 127, 9, 0, 0, 0, 0),
(2015, 128, 9, 0, 0, 0, 0),
(2016, 129, 9, 0, 0, 0, 0),
(2017, 130, 9, 0, 0, 0, 0),
(2018, 3, 9, 0, 0, 0, 0),
(2019, 4, 9, 0, 0, 0, 0),
(2020, 121, 9, 0, 0, 0, 0),
(2021, 122, 9, 0, 0, 0, 0),
(2022, 6, 9, 0, 0, 0, 0),
(2023, 7, 9, 0, 0, 0, 0),
(2024, 8, 9, 0, 0, 0, 0),
(2025, 9, 9, 0, 0, 0, 0),
(2026, 10, 9, 0, 0, 0, 0),
(2027, 11, 9, 0, 0, 0, 0),
(2028, 12, 9, 0, 0, 0, 0),
(2029, 13, 9, 0, 0, 0, 0),
(2030, 126, 9, 0, 0, 0, 0),
(2031, 14, 9, 0, 0, 0, 0),
(2032, 15, 9, 0, 0, 0, 0),
(2033, 16, 9, 0, 0, 0, 0),
(2034, 17, 9, 0, 0, 0, 0),
(2035, 18, 9, 0, 0, 0, 0),
(2036, 19, 9, 0, 0, 0, 0),
(2037, 96, 9, 0, 0, 0, 0),
(2038, 97, 9, 0, 0, 0, 0),
(2039, 20, 9, 0, 0, 0, 0),
(2040, 21, 9, 0, 0, 0, 0),
(2041, 22, 9, 0, 0, 0, 0),
(2042, 95, 9, 0, 0, 0, 0),
(2043, 23, 9, 0, 0, 0, 0),
(2044, 24, 9, 0, 0, 0, 0),
(2045, 25, 9, 0, 0, 0, 0),
(2046, 26, 9, 0, 0, 0, 0),
(2047, 27, 9, 0, 0, 0, 0),
(2048, 28, 9, 0, 0, 0, 0),
(2049, 29, 9, 0, 0, 0, 0),
(2050, 30, 9, 0, 0, 0, 0),
(2051, 31, 9, 0, 0, 0, 0),
(2052, 123, 9, 0, 0, 0, 0),
(2053, 124, 9, 0, 0, 0, 0),
(2054, 125, 9, 0, 0, 0, 0),
(2055, 32, 9, 0, 0, 0, 0),
(2056, 33, 9, 0, 0, 0, 0),
(2057, 34, 9, 0, 0, 0, 0),
(2058, 35, 9, 0, 0, 0, 0),
(2059, 36, 9, 0, 0, 0, 0),
(2060, 37, 9, 0, 0, 0, 0),
(2061, 38, 9, 0, 0, 0, 0),
(2062, 39, 9, 0, 0, 0, 0),
(2063, 40, 9, 0, 0, 0, 0),
(2064, 41, 9, 0, 0, 0, 0),
(2065, 42, 9, 0, 0, 0, 0),
(2066, 43, 9, 0, 0, 0, 0),
(2067, 44, 9, 0, 0, 0, 0),
(2068, 45, 9, 0, 0, 0, 0),
(2069, 46, 9, 0, 0, 0, 0),
(2070, 47, 9, 0, 0, 0, 0),
(2071, 54, 9, 0, 0, 0, 0),
(2072, 55, 9, 0, 0, 0, 0),
(2073, 56, 9, 0, 0, 0, 0),
(2074, 57, 9, 0, 0, 0, 0),
(2075, 58, 9, 0, 0, 0, 0),
(2076, 59, 9, 0, 0, 0, 0),
(2077, 60, 9, 0, 0, 0, 0),
(2078, 61, 9, 0, 0, 0, 0),
(2079, 62, 9, 0, 0, 0, 0),
(2080, 63, 9, 0, 0, 0, 0),
(2081, 64, 9, 0, 0, 0, 0),
(2082, 65, 9, 0, 0, 0, 0),
(2083, 66, 9, 0, 0, 0, 0),
(2084, 67, 9, 0, 0, 0, 0),
(2085, 68, 9, 0, 0, 0, 0),
(2086, 69, 9, 0, 0, 0, 0),
(2087, 70, 9, 0, 0, 0, 0),
(2088, 75, 9, 0, 0, 0, 0),
(2089, 76, 9, 0, 0, 0, 0),
(2090, 77, 9, 0, 0, 0, 0),
(2091, 98, 9, 0, 0, 0, 0),
(2092, 103, 9, 0, 0, 0, 0),
(2093, 104, 9, 0, 0, 0, 0),
(2094, 78, 9, 0, 0, 0, 0),
(2095, 79, 9, 0, 0, 0, 0),
(2096, 80, 9, 0, 0, 0, 0),
(2097, 81, 9, 0, 0, 0, 0),
(2098, 82, 9, 0, 0, 0, 0),
(2099, 83, 9, 0, 0, 0, 0),
(2100, 84, 9, 0, 0, 0, 0),
(2101, 85, 9, 0, 0, 0, 0),
(2102, 86, 9, 0, 0, 0, 0),
(2103, 87, 9, 0, 0, 0, 0),
(2104, 88, 9, 0, 0, 0, 0),
(2105, 89, 9, 0, 0, 0, 0),
(2106, 90, 9, 0, 0, 0, 0),
(2107, 91, 9, 0, 0, 0, 0),
(2108, 92, 9, 0, 0, 0, 0),
(2109, 93, 9, 0, 0, 0, 0),
(2110, 94, 9, 0, 0, 0, 0),
(2111, 111, 9, 0, 0, 0, 0),
(2112, 112, 9, 0, 0, 0, 0),
(2113, 113, 9, 0, 0, 0, 0),
(2114, 114, 9, 0, 0, 0, 0),
(2115, 115, 9, 0, 0, 0, 0),
(2116, 116, 9, 0, 0, 0, 0),
(2117, 117, 9, 0, 0, 0, 0),
(2118, 118, 9, 0, 0, 0, 0),
(2119, 119, 9, 0, 0, 0, 0),
(2120, 120, 9, 0, 0, 0, 0),
(2121, 99, 9, 0, 0, 0, 0),
(2122, 101, 9, 0, 0, 0, 0),
(2123, 102, 9, 0, 0, 0, 0),
(2124, 105, 9, 0, 0, 0, 0),
(2125, 106, 9, 0, 0, 0, 0),
(2126, 107, 9, 0, 0, 0, 0),
(2127, 108, 9, 0, 0, 0, 0),
(2128, 109, 9, 0, 0, 0, 0),
(2129, 110, 9, 0, 0, 0, 0),
(2130, 71, 9, 0, 0, 0, 0),
(2131, 72, 9, 0, 0, 0, 0),
(2132, 73, 9, 0, 0, 0, 0),
(2133, 74, 9, 0, 0, 0, 0),
(2134, 131, 9, 0, 1, 0, 0),
(2135, 132, 9, 0, 1, 0, 0),
(3482, 133, 10, 1, 1, 1, 1),
(3483, 127, 1, 0, 0, 0, 0),
(3484, 128, 1, 0, 0, 0, 0),
(3485, 129, 1, 0, 0, 0, 0),
(3486, 130, 1, 0, 0, 0, 0),
(3487, 3, 1, 0, 0, 0, 0),
(3488, 4, 1, 0, 0, 0, 0),
(3489, 121, 1, 0, 0, 0, 0),
(3490, 122, 1, 0, 0, 0, 0),
(3491, 6, 1, 0, 0, 0, 0),
(3492, 7, 1, 0, 0, 0, 0),
(3493, 8, 1, 0, 0, 0, 0),
(3494, 9, 1, 0, 0, 0, 0),
(3495, 10, 1, 0, 0, 0, 0),
(3496, 11, 1, 0, 0, 0, 0),
(3497, 12, 1, 0, 0, 0, 0),
(3498, 13, 1, 0, 0, 0, 0),
(3499, 126, 1, 0, 0, 0, 0),
(3500, 14, 1, 0, 0, 0, 0),
(3501, 15, 1, 0, 0, 0, 0),
(3502, 16, 1, 0, 0, 0, 0),
(3503, 17, 1, 0, 0, 0, 0),
(3504, 18, 1, 0, 0, 0, 0),
(3505, 19, 1, 0, 0, 0, 0),
(3506, 96, 1, 0, 0, 0, 0),
(3507, 97, 1, 0, 0, 0, 0),
(3508, 20, 1, 0, 0, 0, 0),
(3509, 21, 1, 0, 0, 0, 0),
(3510, 22, 1, 0, 0, 0, 0),
(3511, 95, 1, 0, 0, 0, 0),
(3512, 23, 1, 0, 0, 0, 0),
(3513, 24, 1, 0, 0, 0, 0),
(3514, 25, 1, 0, 0, 0, 0),
(3515, 26, 1, 0, 0, 0, 0),
(3516, 27, 1, 0, 0, 0, 0),
(3517, 28, 1, 0, 0, 0, 0),
(3518, 29, 1, 0, 0, 0, 0),
(3519, 30, 1, 0, 0, 0, 0),
(3520, 31, 1, 0, 0, 0, 0),
(3521, 123, 1, 0, 0, 0, 0),
(3522, 124, 1, 0, 0, 0, 0),
(3523, 125, 1, 0, 0, 0, 0),
(3524, 32, 1, 0, 0, 0, 0),
(3525, 33, 1, 0, 0, 0, 0),
(3526, 34, 1, 0, 0, 0, 0),
(3527, 35, 1, 0, 0, 0, 0),
(3528, 36, 1, 0, 0, 0, 0),
(3529, 37, 1, 0, 0, 0, 0),
(3530, 38, 1, 0, 0, 0, 0),
(3531, 39, 1, 0, 0, 0, 0),
(3532, 40, 1, 0, 0, 0, 0),
(3533, 41, 1, 0, 0, 0, 0),
(3534, 42, 1, 0, 0, 0, 0),
(3535, 43, 1, 0, 0, 0, 0),
(3536, 44, 1, 0, 0, 0, 0),
(3537, 45, 1, 0, 0, 0, 0),
(3538, 46, 1, 0, 0, 0, 0),
(3539, 47, 1, 0, 0, 0, 0),
(3540, 54, 1, 0, 0, 0, 0),
(3541, 55, 1, 0, 0, 0, 0),
(3542, 56, 1, 0, 0, 0, 0),
(3543, 57, 1, 0, 0, 0, 0),
(3544, 58, 1, 0, 0, 0, 0),
(3545, 59, 1, 0, 0, 0, 0),
(3546, 60, 1, 0, 0, 0, 0),
(3547, 61, 1, 0, 0, 0, 0),
(3548, 62, 1, 0, 0, 0, 0),
(3549, 63, 1, 0, 0, 0, 0),
(3550, 64, 1, 0, 0, 0, 0),
(3551, 65, 1, 0, 0, 0, 0),
(3552, 66, 1, 0, 0, 0, 0),
(3553, 67, 1, 0, 0, 0, 0),
(3554, 68, 1, 0, 0, 0, 0),
(3555, 69, 1, 0, 0, 0, 0),
(3556, 70, 1, 0, 0, 0, 0),
(3557, 75, 1, 0, 0, 0, 0),
(3558, 76, 1, 0, 0, 0, 0),
(3559, 77, 1, 0, 0, 0, 0),
(3560, 98, 1, 0, 0, 0, 0),
(3561, 103, 1, 0, 0, 0, 0),
(3562, 104, 1, 0, 0, 0, 0),
(3563, 78, 1, 0, 0, 0, 0),
(3564, 79, 1, 0, 0, 0, 0),
(3565, 80, 1, 0, 0, 0, 0),
(3566, 81, 1, 0, 0, 0, 0),
(3567, 82, 1, 0, 0, 0, 0),
(3568, 83, 1, 0, 0, 0, 0),
(3569, 84, 1, 0, 0, 0, 0),
(3570, 85, 1, 0, 0, 0, 0),
(3571, 86, 1, 0, 0, 0, 0),
(3572, 87, 1, 0, 0, 0, 0),
(3573, 88, 1, 0, 0, 0, 0),
(3574, 89, 1, 0, 0, 0, 0),
(3575, 90, 1, 0, 0, 0, 0),
(3576, 91, 1, 0, 0, 0, 0),
(3577, 92, 1, 0, 0, 0, 0),
(3578, 93, 1, 0, 0, 0, 0),
(3579, 94, 1, 0, 0, 0, 0),
(3580, 111, 1, 0, 0, 0, 0),
(3581, 112, 1, 0, 0, 0, 0),
(3582, 113, 1, 0, 0, 0, 0),
(3583, 114, 1, 0, 0, 0, 0),
(3584, 115, 1, 0, 0, 0, 0),
(3585, 116, 1, 0, 0, 0, 0),
(3586, 117, 1, 0, 0, 0, 0),
(3587, 118, 1, 0, 0, 0, 0),
(3588, 119, 1, 0, 0, 0, 0),
(3589, 120, 1, 0, 0, 0, 0),
(3590, 99, 1, 0, 0, 0, 0),
(3591, 101, 1, 0, 0, 0, 0),
(3592, 102, 1, 0, 0, 0, 0),
(3593, 105, 1, 0, 0, 0, 0),
(3594, 106, 1, 0, 0, 0, 0),
(3595, 107, 1, 0, 0, 0, 0),
(3596, 108, 1, 0, 0, 0, 0),
(3597, 109, 1, 0, 0, 0, 0),
(3598, 110, 1, 0, 0, 0, 0),
(3599, 71, 1, 0, 0, 0, 0),
(3600, 72, 1, 0, 0, 0, 0),
(3601, 73, 1, 0, 0, 0, 0),
(3602, 74, 1, 0, 0, 0, 0),
(3603, 131, 1, 1, 1, 1, 1),
(3604, 132, 1, 1, 1, 1, 1),
(3605, 133, 1, 1, 1, 1, 1),
(3606, 134, 1, 1, 1, 1, 1),
(3607, 139, 1, 1, 1, 1, 1),
(3735, 127, 11, 1, 1, 1, 0),
(3736, 128, 11, 0, 0, 0, 0),
(3737, 129, 11, 0, 0, 0, 0),
(3738, 130, 11, 0, 0, 0, 0),
(3739, 3, 11, 1, 1, 1, 1),
(3740, 4, 11, 1, 1, 1, 1),
(3741, 121, 11, 0, 0, 0, 0),
(3742, 122, 11, 0, 0, 0, 0),
(3743, 6, 11, 1, 1, 1, 1),
(3744, 7, 11, 1, 1, 1, 1),
(3745, 8, 11, 1, 1, 1, 1),
(3746, 9, 11, 1, 1, 1, 1),
(3747, 10, 11, 0, 0, 0, 0),
(3748, 11, 11, 0, 0, 0, 0),
(3749, 12, 11, 1, 1, 1, 1),
(3750, 13, 11, 1, 1, 1, 1),
(3751, 126, 11, 1, 1, 1, 1),
(3752, 14, 11, 1, 1, 1, 1),
(3753, 15, 11, 1, 1, 1, 1),
(3754, 16, 11, 0, 0, 0, 0),
(3755, 17, 11, 0, 0, 0, 0),
(3756, 18, 11, 0, 0, 0, 0),
(3757, 19, 11, 0, 0, 0, 0),
(3758, 96, 11, 0, 0, 0, 0),
(3759, 97, 11, 0, 0, 0, 0),
(3760, 20, 11, 0, 0, 0, 0),
(3761, 21, 11, 0, 0, 0, 0),
(3762, 22, 11, 0, 0, 0, 0),
(3763, 95, 11, 0, 0, 0, 0),
(3764, 23, 11, 0, 0, 0, 0),
(3765, 24, 11, 0, 0, 0, 0),
(3766, 25, 11, 0, 0, 0, 0),
(3767, 26, 11, 0, 0, 0, 0),
(3768, 27, 11, 0, 0, 0, 0),
(3769, 28, 11, 0, 0, 0, 0),
(3770, 29, 11, 0, 0, 0, 0),
(3771, 30, 11, 0, 0, 0, 0),
(3772, 31, 11, 0, 0, 0, 0),
(3773, 123, 11, 0, 0, 0, 0),
(3774, 124, 11, 0, 0, 0, 0),
(3775, 125, 11, 0, 0, 0, 0),
(3776, 32, 11, 0, 0, 0, 0),
(3777, 33, 11, 0, 0, 0, 0),
(3778, 34, 11, 0, 0, 0, 0),
(3779, 35, 11, 0, 0, 0, 0),
(3780, 36, 11, 0, 0, 0, 0),
(3781, 37, 11, 0, 0, 0, 0),
(3782, 38, 11, 0, 0, 0, 0),
(3783, 39, 11, 0, 0, 0, 0),
(3784, 40, 11, 0, 0, 0, 0),
(3785, 41, 11, 0, 0, 0, 0),
(3786, 42, 11, 0, 0, 0, 0),
(3787, 43, 11, 0, 0, 0, 0),
(3788, 44, 11, 0, 0, 0, 0),
(3789, 45, 11, 0, 0, 0, 0),
(3790, 46, 11, 1, 1, 1, 1),
(3791, 47, 11, 1, 1, 1, 1),
(3792, 54, 11, 0, 0, 0, 0),
(3793, 55, 11, 0, 0, 0, 0),
(3794, 56, 11, 0, 0, 0, 0),
(3795, 57, 11, 0, 0, 0, 0),
(3796, 58, 11, 0, 0, 0, 0),
(3797, 59, 11, 0, 0, 0, 0),
(3798, 60, 11, 0, 0, 0, 0),
(3799, 61, 11, 0, 0, 0, 0),
(3800, 62, 11, 0, 0, 0, 0),
(3801, 63, 11, 0, 0, 0, 0),
(3802, 64, 11, 0, 0, 0, 0),
(3803, 65, 11, 0, 0, 0, 0),
(3804, 66, 11, 0, 0, 0, 0),
(3805, 67, 11, 0, 0, 0, 0),
(3806, 68, 11, 0, 0, 0, 0),
(3807, 69, 11, 0, 0, 0, 0),
(3808, 70, 11, 0, 0, 0, 0),
(3809, 75, 11, 1, 1, 1, 1),
(3810, 76, 11, 0, 0, 0, 0),
(3811, 77, 11, 0, 0, 0, 0),
(3812, 98, 11, 0, 0, 0, 0),
(3813, 103, 11, 0, 1, 1, 0),
(3814, 104, 11, 0, 1, 1, 0),
(3815, 78, 11, 0, 0, 0, 0),
(3816, 79, 11, 0, 0, 0, 0),
(3817, 80, 11, 0, 0, 0, 0),
(3818, 81, 11, 0, 0, 0, 0),
(3819, 82, 11, 0, 0, 0, 0),
(3820, 83, 11, 0, 0, 0, 0),
(3821, 84, 11, 0, 0, 0, 0),
(3822, 85, 11, 0, 0, 0, 0),
(3823, 86, 11, 0, 0, 0, 0),
(3824, 87, 11, 0, 0, 0, 0),
(3825, 88, 11, 0, 0, 0, 0),
(3826, 89, 11, 0, 0, 0, 0),
(3827, 90, 11, 0, 0, 0, 0),
(3828, 91, 11, 0, 0, 0, 0),
(3829, 92, 11, 0, 0, 0, 0),
(3830, 93, 11, 0, 0, 0, 0),
(3831, 94, 11, 0, 0, 0, 0),
(3832, 111, 11, 0, 0, 0, 0),
(3833, 112, 11, 0, 0, 0, 0),
(3834, 113, 11, 0, 0, 0, 0),
(3835, 114, 11, 0, 0, 0, 0),
(3836, 115, 11, 0, 0, 0, 0),
(3837, 116, 11, 0, 0, 0, 0),
(3838, 117, 11, 0, 0, 0, 0),
(3839, 118, 11, 0, 0, 0, 0),
(3840, 119, 11, 0, 0, 0, 0),
(3841, 120, 11, 0, 0, 0, 0),
(3842, 99, 11, 0, 0, 0, 0),
(3843, 101, 11, 0, 0, 0, 0),
(3844, 102, 11, 0, 0, 0, 0),
(3845, 105, 11, 0, 0, 0, 0),
(3846, 106, 11, 0, 0, 0, 0),
(3847, 107, 11, 0, 0, 0, 0),
(3848, 108, 11, 0, 0, 0, 0),
(3849, 109, 11, 0, 0, 0, 0),
(3850, 110, 11, 0, 0, 0, 0),
(3851, 71, 11, 0, 0, 0, 0),
(3852, 72, 11, 0, 0, 0, 0),
(3853, 73, 11, 0, 0, 0, 0),
(3854, 74, 11, 0, 0, 0, 0),
(3855, 131, 11, 1, 1, 1, 1),
(3856, 132, 11, 1, 1, 1, 1),
(3857, 133, 11, 1, 1, 1, 1),
(3858, 134, 11, 1, 1, 1, 0),
(3859, 140, 11, 1, 1, 1, 1),
(3860, 139, 11, 1, 1, 1, 1),
(3861, 141, 11, 1, 1, 1, 1),
(3862, 127, 2, 0, 1, 0, 0),
(3863, 128, 2, 0, 0, 0, 0),
(3864, 129, 2, 0, 0, 0, 0),
(3865, 130, 2, 0, 0, 0, 0),
(3866, 3, 2, 0, 0, 0, 0),
(3867, 4, 2, 0, 0, 0, 0),
(3868, 121, 2, 0, 0, 0, 0),
(3869, 122, 2, 0, 0, 0, 0),
(3870, 6, 2, 0, 0, 0, 0),
(3871, 7, 2, 0, 0, 0, 0),
(3872, 8, 2, 0, 1, 1, 0),
(3873, 9, 2, 0, 1, 0, 0),
(3874, 10, 2, 0, 0, 0, 0),
(3875, 11, 2, 0, 0, 0, 0),
(3876, 12, 2, 1, 1, 1, 1),
(3877, 13, 2, 0, 1, 0, 0),
(3878, 126, 2, 1, 1, 1, 1),
(3879, 14, 2, 1, 1, 0, 0),
(3880, 15, 2, 0, 1, 0, 0),
(3881, 16, 2, 0, 0, 0, 0),
(3882, 17, 2, 0, 0, 0, 0),
(3883, 18, 2, 0, 0, 0, 0),
(3884, 19, 2, 0, 0, 0, 0),
(3885, 96, 2, 0, 0, 0, 0),
(3886, 97, 2, 0, 0, 0, 0),
(3887, 20, 2, 0, 0, 0, 0),
(3888, 21, 2, 0, 0, 0, 0),
(3889, 22, 2, 0, 0, 0, 0),
(3890, 95, 2, 0, 0, 0, 0),
(3891, 23, 2, 0, 0, 0, 0),
(3892, 24, 2, 0, 0, 0, 0),
(3893, 25, 2, 0, 0, 0, 0),
(3894, 26, 2, 0, 0, 0, 0),
(3895, 27, 2, 0, 0, 0, 0),
(3896, 28, 2, 0, 0, 0, 0),
(3897, 29, 2, 0, 0, 0, 0),
(3898, 30, 2, 0, 0, 0, 0),
(3899, 31, 2, 0, 0, 0, 0),
(3900, 123, 2, 0, 0, 0, 0),
(3901, 124, 2, 0, 0, 0, 0),
(3902, 125, 2, 0, 0, 0, 0),
(3903, 32, 2, 0, 0, 0, 0),
(3904, 33, 2, 0, 0, 0, 0),
(3905, 34, 2, 0, 0, 0, 0),
(3906, 35, 2, 0, 0, 0, 0),
(3907, 36, 2, 0, 0, 0, 0),
(3908, 37, 2, 0, 0, 0, 0),
(3909, 38, 2, 0, 0, 0, 0),
(3910, 39, 2, 0, 0, 0, 0),
(3911, 40, 2, 0, 0, 0, 0),
(3912, 41, 2, 0, 0, 0, 0),
(3913, 42, 2, 0, 0, 0, 0),
(3914, 43, 2, 0, 0, 0, 0),
(3915, 44, 2, 0, 0, 0, 0),
(3916, 45, 2, 0, 0, 0, 0),
(3917, 46, 2, 0, 0, 0, 0),
(3918, 47, 2, 0, 0, 0, 0),
(3919, 54, 2, 0, 0, 0, 0),
(3920, 55, 2, 0, 0, 0, 0),
(3921, 56, 2, 0, 0, 0, 0),
(3922, 57, 2, 0, 0, 0, 0),
(3923, 58, 2, 0, 0, 0, 0),
(3924, 59, 2, 0, 0, 0, 0),
(3925, 60, 2, 0, 1, 0, 0),
(3926, 61, 2, 0, 0, 0, 0),
(3927, 62, 2, 0, 0, 0, 0),
(3928, 63, 2, 0, 0, 0, 0),
(3929, 64, 2, 0, 0, 0, 0),
(3930, 65, 2, 0, 0, 0, 0),
(3931, 66, 2, 0, 0, 0, 0),
(3932, 67, 2, 0, 0, 0, 0),
(3933, 68, 2, 0, 0, 0, 0),
(3934, 69, 2, 0, 0, 0, 0),
(3935, 70, 2, 0, 0, 0, 0),
(3936, 75, 2, 0, 0, 0, 0),
(3937, 76, 2, 0, 0, 0, 0),
(3938, 77, 2, 0, 0, 0, 0),
(3939, 98, 2, 0, 0, 0, 0),
(3940, 103, 2, 1, 1, 1, 0),
(3941, 104, 2, 1, 1, 1, 0),
(3942, 78, 2, 0, 0, 0, 0),
(3943, 79, 2, 0, 0, 0, 0),
(3944, 80, 2, 0, 0, 0, 0),
(3945, 81, 2, 0, 0, 0, 0),
(3946, 82, 2, 0, 0, 0, 0),
(3947, 83, 2, 0, 0, 0, 0),
(3948, 84, 2, 0, 0, 0, 0),
(3949, 85, 2, 0, 0, 0, 0),
(3950, 86, 2, 0, 0, 0, 0),
(3951, 87, 2, 0, 0, 0, 0),
(3952, 88, 2, 0, 0, 0, 0),
(3953, 89, 2, 0, 0, 0, 0),
(3954, 90, 2, 0, 0, 0, 0),
(3955, 91, 2, 0, 0, 0, 0),
(3956, 92, 2, 0, 0, 0, 0),
(3957, 93, 2, 0, 0, 0, 0),
(3958, 94, 2, 0, 0, 0, 0),
(3959, 111, 2, 0, 0, 0, 0),
(3960, 112, 2, 0, 0, 0, 0),
(3961, 113, 2, 0, 0, 0, 0),
(3962, 114, 2, 0, 0, 0, 0),
(3963, 115, 2, 0, 0, 0, 0),
(3964, 116, 2, 0, 0, 0, 0),
(3965, 117, 2, 0, 0, 0, 0),
(3966, 118, 2, 0, 0, 0, 0),
(3967, 119, 2, 0, 0, 0, 0),
(3968, 120, 2, 0, 0, 0, 0),
(3969, 99, 2, 0, 0, 0, 0),
(3970, 101, 2, 0, 0, 0, 0),
(3971, 102, 2, 0, 0, 0, 0),
(3972, 105, 2, 0, 0, 0, 0),
(3973, 106, 2, 0, 0, 0, 0),
(3974, 107, 2, 0, 0, 0, 0),
(3975, 108, 2, 0, 0, 0, 0),
(3976, 109, 2, 0, 0, 0, 0),
(3977, 110, 2, 0, 0, 0, 0),
(3978, 71, 2, 0, 0, 0, 0),
(3979, 72, 2, 0, 0, 0, 0),
(3980, 73, 2, 0, 0, 0, 0),
(3981, 74, 2, 0, 0, 0, 0),
(3982, 131, 2, 0, 0, 0, 0),
(3983, 132, 2, 0, 0, 0, 0),
(3984, 133, 2, 0, 0, 0, 0),
(3985, 134, 2, 0, 0, 0, 0),
(3986, 140, 2, 0, 0, 0, 0),
(3987, 139, 2, 1, 1, 1, 0),
(3988, 141, 2, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `available_days` varchar(50) DEFAULT NULL,
  `per_patient_time` time DEFAULT NULL,
  `schedule_type` tinyint(4) NOT NULL,
  `serial_visibility_type` tinyint(4) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `slot_id`, `doctor_id`, `start_time`, `end_time`, `available_days`, `per_patient_time`, `schedule_type`, `serial_visibility_type`, `status`) VALUES
(25, 4, 3, '09:00:00', '10:00:00', 'Monday', '01:00:00', 1, 2, 1),
(26, 9, 3, '10:00:00', '11:00:00', 'Monday', '01:00:00', 1, 2, 1),
(27, 10, 3, '11:00:00', '12:00:00', 'Monday', '01:00:00', 1, 2, 1),
(28, 11, 3, '12:00:00', '13:00:00', 'Monday', '01:00:00', 2, 2, 1),
(29, 12, 3, '14:00:00', '15:00:00', 'Monday', '01:00:00', 2, 2, 1),
(30, 13, 3, '15:00:00', '16:00:00', 'Monday', '01:00:00', 2, 2, 1),
(31, 2, 3, '13:00:00', '14:00:00', 'Monday', '01:00:00', 2, 2, 1),
(32, 14, 3, '16:00:00', '17:00:00', 'Monday', '01:00:00', 2, 2, 1),
(33, 5, 3, '17:00:00', '18:00:00', 'Monday', '01:00:00', 1, 2, 1),
(34, 15, 3, '18:00:00', '19:00:00', 'Monday', '01:00:00', 1, 2, 1),
(35, 16, 3, '19:00:00', '20:00:00', 'Monday', '01:00:00', 1, 2, 1),
(36, 4, 3, '09:00:00', '10:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(37, 9, 3, '10:00:00', '11:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(38, 10, 3, '11:00:00', '12:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(39, 11, 3, '12:00:00', '13:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(40, 12, 3, '14:00:00', '15:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(41, 13, 3, '15:00:00', '16:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(42, 2, 3, '13:00:00', '14:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(43, 14, 3, '16:00:00', '17:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(44, 5, 3, '17:00:00', '18:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(45, 15, 3, '18:00:00', '19:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(46, 16, 3, '19:00:00', '20:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(47, 4, 3, '09:00:00', '10:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(48, 9, 3, '10:00:00', '11:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(49, 10, 3, '11:00:00', '12:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(50, 11, 3, '12:00:00', '13:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(51, 12, 3, '14:00:00', '15:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(52, 13, 3, '15:00:00', '16:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(53, 2, 3, '13:00:00', '14:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(54, 14, 3, '16:00:00', '17:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(55, 5, 3, '17:00:00', '18:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(56, 15, 3, '18:00:00', '19:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(57, 16, 3, '19:00:00', '20:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(58, 4, 4, '09:00:00', '10:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(59, 9, 4, '10:00:00', '11:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(60, 10, 4, '11:00:00', '12:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(61, 11, 4, '12:00:00', '13:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(62, 12, 4, '14:00:00', '15:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(63, 13, 4, '15:00:00', '16:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(64, 2, 4, '13:00:00', '14:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(65, 14, 4, '16:00:00', '17:00:00', 'Tuesday', '01:00:00', 2, 2, 1),
(66, 5, 4, '17:00:00', '18:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(67, 15, 4, '18:00:00', '19:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(68, 16, 4, '19:00:00', '20:00:00', 'Tuesday', '01:00:00', 1, 2, 1),
(69, 4, 4, '09:00:00', '10:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(70, 9, 4, '10:00:00', '11:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(71, 10, 4, '11:00:00', '12:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(72, 11, 4, '12:00:00', '13:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(73, 12, 4, '14:00:00', '15:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(74, 13, 4, '15:00:00', '16:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(75, 2, 4, '13:00:00', '14:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(76, 14, 4, '16:00:00', '17:00:00', 'Wednesday', '01:00:00', 2, 2, 1),
(77, 5, 4, '17:00:00', '18:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(78, 15, 4, '18:00:00', '19:00:00', 'Wednesday', '01:00:00', 1, 2, 1),
(79, 16, 4, '19:00:00', '20:00:00', 'Wednesday', '01:00:00', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sec_role`
--

INSERT INTO `sec_role` (`id`, `type`) VALUES
(1, 'Admin'),
(2, 'Pathologist'),
(3, 'Accountant'),
(4, 'Laboratorist'),
(5, 'Support Staff'),
(6, 'Pharmacist'),
(7, 'Receptionist'),
(8, 'Representative'),
(9, 'Case Manager'),
(10, 'Duty Office'),
(11, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_userrole`
--

INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES
(1, '1', 1, '1', '2019-09-29 00:00:00'),
(2, '2', 1, '1', '2020-06-11 06:23:24'),
(3, '3', 2, '2', '2020-08-20 11:00:03'),
(4, '5', 11, '2', '2020-09-17 00:00:00'),
(5, '6', 2, '2', '2020-09-29 00:00:00'),
(6, '7', 2, '2', '2020-09-30 00:00:00'),
(7, '8', 2, '2', '2020-09-30 00:00:00'),
(8, '9', 11, '2', '2020-09-30 00:00:00'),
(9, '10', 2, '2', '2020-09-30 00:00:00'),
(10, '11', 7, '2', '2020-09-30 00:00:00'),
(11, '12', 7, '2', '2020-09-30 00:00:00'),
(12, '13', 5, '2', '2020-09-30 00:00:00'),
(13, '14', 5, '2', '2020-09-30 00:00:00'),
(14, '4', 2, '2', '2020-08-20 11:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `title`, `description`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`, `time_zone`) VALUES
(2, 'Dimensions Therapy', '1336, 2nd Cross, Nanjappa Layout, Babusapalya, Banswadi Extn, Bangalore 560043', 'info@dimensionstherapy.org', '9880146677', 'assets/images/apps/0a427b33bf7347480f1ffabbe8826386.png', 'assets/images/icons/78fa13b84ddf75d1d3c2d8175561224e.jpeg', 'english', 'LTR', '2020©Copyright', 'Asia/Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `sms_delivery`
--

CREATE TABLE `sms_delivery` (
  `sms_delivery_id` int(11) NOT NULL,
  `ss_id` int(11) NOT NULL,
  `delivery_date_time` datetime NOT NULL,
  `sms_info_id` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateway`
--

CREATE TABLE `sms_gateway` (
  `gateway_id` int(11) NOT NULL,
  `provider_name` text NOT NULL,
  `user` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `authentication` text NOT NULL,
  `link` text NOT NULL,
  `default_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_gateway`
--

INSERT INTO `sms_gateway` (`gateway_id`, `provider_name`, `user`, `password`, `authentication`, `link`, `default_status`, `status`) VALUES
(1, 'nexmo', '1d286ff1', '11a8b67955d4482f', 'Hospital', 'https://www.nexmo.com/', 0, 1),
(2, 'clickatell', 'clickatell', '9d2e2d3aa558ddcb', 'Hospital', 'https://www.clickatell.com/', 0, 1),
(3, 'bdtask', 'test', '161QLtkk1I', '8801847169884', 'ms.bdtask.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_info`
--

CREATE TABLE `sms_info` (
  `sms_info_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `appointment_id` varchar(30) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sms_counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_schedule`
--

CREATE TABLE `sms_schedule` (
  `ss_id` int(11) NOT NULL,
  `ss_teamplate_id` int(11) NOT NULL,
  `ss_name` text NOT NULL,
  `ss_schedule` varchar(100) NOT NULL,
  `ss_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_schedule`
--

INSERT INTO `sms_schedule` (`ss_id`, `ss_teamplate_id`, `ss_name`, `ss_schedule`, `ss_status`) VALUES
(1, 2, 'One', '1:1:1', 1),
(2, 9, 'Summer offer', '10:3:0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_setting`
--

CREATE TABLE `sms_setting` (
  `id` int(11) UNSIGNED NOT NULL,
  `appointment` tinyint(1) DEFAULT NULL,
  `registration` tinyint(1) DEFAULT NULL,
  `schedule` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_setting`
--

INSERT INTO `sms_setting` (`id`, `appointment`, `registration`, `schedule`) VALUES
(2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_teamplate`
--

CREATE TABLE `sms_teamplate` (
  `teamplate_id` int(11) NOT NULL,
  `teamplate_name` text,
  `teamplate` text,
  `type` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `default_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_teamplate`
--

INSERT INTO `sms_teamplate` (`teamplate_id`, `teamplate_name`, `teamplate`, `type`, `status`, `default_status`) VALUES
(1, 'Appointment Template', 'Doctor, %doctor_name%. \r\nHello, %patient_name%. \r\nYour ID: %patient_id%, Appointment ID: %appointment_id%, Serial: %sequence% and Appointment Date: %appointment_date%. \r\nThank you for the Appointment.', 'Appointment', 1, 1),
(2, 'Schedule', 'Doctor, %doctor_name%. \r\nHello, %patient_name%. \r\nYour ID: %patient_id%, Appointment ID: %appointment_id%, Serial: %sequence% and Appointment Date: %appointment_date%. \r\nThank you for the Appointment.', 'Schedule', 1, 1),
(3, 'Registration', 'Hello, %patient_name%. \r\nYour ID: %patient_id%,  \r\nThank you for the registration.', 'Registration', 1, 1),
(4, 'Summer Offer', 'Hello, %patient_name%. Your ID: %patient_id%,\r\nYour promo code is 1010101.\r\nContact with us.\r\nThanks', 'Schedule', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_users`
--

CREATE TABLE `sms_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `receiver` varchar(20) DEFAULT NULL,
  `message` text,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_type` varchar(250) NOT NULL,
  `status_title` varchar(250) NOT NULL,
  `status_code` varchar(250) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_type`, `status_title`, `status_code`, `sort_order`, `created_by`, `updated_by`, `created_date`, `updated_date`) VALUES
(1, 'package', 'Active', 'active', 0, 2, 2, '2020-09-11 00:00:00', '2020-09-11 00:00:00'),
(2, 'package', 'In-active', 'in-active', 1, 2, 2, '2020-09-11 00:00:00', '2020-09-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_module`
--

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `directory` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(3, 3, 'Add Department', 'Add Department', 'application/modules/store/assets/images/thumbnail.jpg', 'add_department', 1),
(4, 3, 'Department List', 'Department List', 'application/modules/store/assets/images/thumbnail.jpg', 'department_list', 1),
(6, 4, 'Add Doctor', 'Add Doctor', 'application/modules/store/assets/images/thumbnail.jpg', 'add_doctor', 1),
(7, 4, 'Doctor List', 'Doctor List', 'application/modules/store/assets/images/thumbnail.jpg', 'doctor_list', 1),
(8, 5, 'Add Patient', 'Add Patient', 'application/modules/store/assets/images/thumbnail.jpg', 'add_patient', 1),
(9, 5, 'Patient List', 'Patient List', 'application/modules/store/assets/images/thumbnail.jpg', 'patient_list', 1),
(10, 5, 'Add Document', 'Add Document', 'application/modules/store/assets/images/thumbnail.jpg', 'add_document', 1),
(11, 5, 'Document List', 'Document List', 'application/modules/store/assets/images/thumbnail.jpg', 'document_list', 1),
(12, 6, 'Add Schedule', 'Manage Customer', 'application/modules/store/assets/images/thumbnail.jpg', 'add_schedule', 1),
(13, 6, 'Schedule List', 'Credit Customer', 'application/modules/store/assets/images/thumbnail.jpg', 'schedule_list', 1),
(14, 7, 'Add Appointment', 'Add Appointment', 'application/modules/store/assets/images/thumbnail.jpg', 'add_appointment', 1),
(15, 7, 'Appointment List', 'Appointment List', 'application/modules/store/assets/images/thumbnail.jpg', 'appointment_list', 1),
(16, 7, 'Assign By All', 'Assign By All', 'application/modules/store/assets/images/thumbnail.jpg', 'assign_by_all', 1),
(17, 7, 'Assign By Doctor', 'Assign By Doctor', 'application/modules/store/assets/images/thumbnail.jpg', 'assign_by_doctor', 1),
(18, 7, 'Assign By Representative', 'Assign By Representative', 'application/modules/store/assets/images/thumbnail.jpg', 'assign_by_representative', 1),
(19, 7, 'Assign To Doctor', 'Assign To Doctor', 'application/modules/store/assets/images/thumbnail.jpg', 'assign_to_doctor', 1),
(20, 8, 'Add Patient Case Study', 'Add Patient Case Study', 'application/modules/store/assets/images/thumbnail.jpg', 'add_patient_case_study', 1),
(21, 8, 'Patient Case Study List', 'Patient Case Study List', 'application/modules/store/assets/images/thumbnail.jpg', 'patient_case_study_list', 1),
(22, 8, 'Prescription List', '	\r\nPrescription List', 'application/modules/store/assets/images/thumbnail.jpg', 'prescription_list', 1),
(23, 9, 'Debit Voucher', 'Debit Vouche', 'application/modules/store/assets/images/thumbnail.jpg', 'debit_voucher', 1),
(24, 9, 'Account List', 'Account List', 'application/modules/store/assets/images/thumbnail.jpg', 'account_list', 1),
(25, 9, 'Credit Voucher', 'Credit Voucher', 'application/modules/store/assets/images/thumbnail.jpg', 'credit_voucher', 1),
(26, 9, 'Contra Voucher', 'Contra Voucher', 'application/modules/store/assets/images/thumbnail.jpg', 'contra_voucher', 1),
(27, 9, 'Journal Voucher', 'Journal Voucher', 'application/modules/store/assets/images/thumbnail.jpg', 'journal_voucher', 1),
(28, 9, 'Voucher Approval', 'Voucher Approval', 'application/modules/store/assets/images/thumbnail.jpg', 'voucher_approval', 1),
(29, 9, 'Account Report', 'Account Report', 'application/modules/store/assets/images/thumbnail.jpg', 'account_report', 1),
(30, 9, 'Voucher Report', 'Voucher Report', 'application/modules/store/assets/images/thumbnail.jpg', 'voucher_report', 1),
(31, 9, 'Cash Book', 'Cash Book', 'application/modules/store/assets/images/thumbnail.jpg', 'cash_book', 1),
(32, 11, 'Add Insurance', 'Add Insurance', 'application/modules/store/assets/images/thumbnail.jpg', 'add_insurance', 1),
(33, 11, 'Insurance List', 'Insurance List', 'application/modules/store/assets/images/thumbnail.jpg', 'insurance_list', 1),
(34, 11, 'Add Limit Approval', 'Add Limit Approval', 'application/modules/store/assets/images/thumbnail.jpg', 'add_limit_approval', 1),
(35, 11, 'Limit Approval List', 'Limit Approval List', 'application/modules/store/assets/images/thumbnail.jpg', 'limit_approval_list', 1),
(36, 12, 'Add Service', 'Add Service', 'application/modules/store/assets/images/thumbnail.jpg', 'add_service', 1),
(37, 12, 'Service List', 'Service List', 'application/modules/store/assets/images/thumbnail.jpg', 'service_list', 1),
(38, 12, 'Add Package', 'Add Package', 'application/modules/store/assets/images/thumbnail.jpg', 'add_package', 1),
(39, 12, 'Package List', 'Package List', 'application/modules/store/assets/images/thumbnail.jpg', 'package_list', 1),
(40, 12, 'Add Admission', 'Add Admission', 'application/modules/store/assets/images/thumbnail.jpg', 'add_admission', 1),
(41, 12, 'Admission List', 'Admission List', 'application/modules/store/assets/images/thumbnail.jpg', 'admission_list', 1),
(42, 12, 'Add Advance', 'Add Advance', 'application/modules/store/assets/images/thumbnail.jpg', 'add_advance', 1),
(43, 12, 'Advance List', 'Advance List', 'application/modules/store/assets/images/thumbnail.jpg', 'advance_list', 1),
(44, 12, 'Add Bill', 'Add Bill', 'application/modules/store/assets/images/thumbnail.jpg', 'add_bill', 1),
(45, 12, 'Bill List', 'Bill List', 'application/modules/store/assets/images/thumbnail.jpg', 'bill_list', 1),
(46, 13, 'Add Employee', 'Add Employee', 'application/modules/store/assets/images/thumbnail.jpg', 'add_employee', 1),
(47, 13, 'Employee List', 'Employee List', 'application/modules/store/assets/images/thumbnail.jpg', 'employee_list', 1),
(54, 14, 'Add Bed', 'Add Bed', 'application/modules/store/assets/images/thumbnail.jpg', 'add_bed', 1),
(55, 14, 'Bed List', 'Bed List', 'application/modules/store/assets/images/thumbnail.jpg', 'bed_list', 1),
(56, 14, 'Bed Assign', 'Bed Assign', 'application/modules/store/assets/images/thumbnail.jpg', 'bed_assign', 1),
(57, 14, 'Bed Assign List', 'Bed Assign List', 'application/modules/store/assets/images/thumbnail.jpg', 'bed_assign_list', 1),
(58, 14, 'Report', 'Report', 'application/modules/store/assets/images/thumbnail.jpg', 'bed_report', 1),
(59, 15, 'Add Notice', 'Add Notice', 'application/modules/stockmovment/assets/images/thumbnail.jpg', 'add_notice', 1),
(60, 15, 'Notice List', 'Notice List', 'application/modules/stockmovment/assets/images/thumbnail.jpg', 'notice_list', 1),
(61, 16, 'Add Patient', 'Add Patient', 'application/modules/store/assets/images/thumbnail.jpg', 'case_add_patient', 1),
(62, 16, 'Patient List', 'Patient List', 'application/modules/store/assets/images/thumbnail.jpg', 'case_patient_list', 1),
(63, 17, 'Add Birth Report', 'Add Birth Report', 'application/modules/store/assets/images/thumbnail.jpg', 'add_birth_report', 1),
(64, 17, 'Birth Report', 'Birth Report', 'application/modules/store/assets/images/thumbnail.jpg', 'birth_report', 1),
(65, 17, 'Add Death Report', 'Add Death Report', 'application/modules/store/assets/images/thumbnail.jpg', 'add_death_report', 1),
(66, 17, 'Death Report', 'Death Report', 'application/modules/store/assets/images/thumbnail.jpg', 'death_report', 1),
(67, 17, 'Add Operation Report', 'Add Operation Report', 'application/modules/store/assets/images/thumbnail.jpg', 'add_operation_report', 1),
(68, 17, 'Operation Report', 'Operation Report', 'application/modules/store/assets/images/thumbnail.jpg', 'operation_report', 1),
(69, 17, 'Add Investigation Report', 'Add Investigation Report', 'application/modules/store/assets/images/thumbnail.jpg', 'add_investigation_report', 1),
(70, 17, 'Investigation Report', 'Investigation Report', 'application/modules/store/assets/images/thumbnail.jpg', 'investigation_report', 1),
(71, 26, 'Add Medicine Category', 'Add Medicine Category', 'application/modules/store/assets/images/thumbnail.jpg', 'add_medicine_category', 1),
(72, 26, 'medicine_category_list', 'Medicine Category List', 'application/modules/store/assets/images/thumbnail.jpg', 'medicine_category_list', 1),
(73, 26, 'add_medicine', 'Add Medicine', 'application/modules/store/assets/images/thumbnail.jpg', 'add_medicine', 1),
(74, 26, 'Medicine List', 'Medicine List', 'application/modules/store/assets/images/thumbnail.jpg', 'medicine_list', 1),
(75, 18, 'Enquiry', 'Enquiry', 'application/modules/store/assets/images/thumbnail.jpg', 'enquiry', 1),
(76, 19, 'App Setting', 'App Setting', 'application/modules/store/assets/images/thumbnail.jpg', 'app_setting', 1),
(77, 19, 'Language Setting', 'Language Setting', 'application/modules/store/assets/images/thumbnail.jpg', 'language_setting', 1),
(78, 20, 'Gateway Setting', 'Gateway Setting', 'application/modules/store/assets/images/thumbnail.jpg', 'gateway_setting', 1),
(79, 20, 'SMS Template', 'SMS Template', 'application/modules/store/assets/images/thumbnail.jpg', 'sms_template', 1),
(80, 20, 'SMS Schedule', 'SMS Schedule', 'application/modules/store/assets/images/thumbnail.jpg', 'sms_schedule', 1),
(81, 20, 'send_custom_sms', 'Send Custom SMS', 'application/modules/store/assets/images/thumbnail.jpg', 'send_custom_sms', 1),
(82, 20, 'Custom SMS List', 'Custom SMS List', 'application/modules/store/assets/images/thumbnail.jpg', 'custom_sms_list', 1),
(83, 20, 'Auto SMS Report', 'Auto SMS Report', 'application/modules/store/assets/images/thumbnail.jpg', 'auto_sms_report', 1),
(84, 20, 'User SMS List', 'User SMS List', 'application/modules/store/assets/images/thumbnail.jpg', 'user_sms_list', 1),
(85, 21, 'New Message', 'New Message', 'application/modules/store/assets/images/thumbnail.jpg', 'new_message', 1),
(86, 21, 'Inbox', 'Inbox', 'application/modules/store/assets/images/thumbnail.jpg', 'inbox', 1),
(87, 21, 'Sent', 'Sent', 'application/modules/store/assets/images/thumbnail.jpg', 'sent', 1),
(88, 22, 'Send Mail', 'Send Mail', 'application/modules/store/assets/images/thumbnail.jpg', 'send_mail', 1),
(89, 22, 'Mail Setting', 'Mail Setting', 'application/modules/store/assets/images/thumbnail.jpg', 'mail_setting', 1),
(90, 23, 'Setting', 'Setting', 'application/modules/store/assets/images/thumbnail.jpg', 'web_setting', 1),
(91, 23, 'Slider', 'Slider', 'application/modules/store/assets/images/thumbnail.jpg', 'slider', 1),
(92, 23, 'Section', 'Section', 'application/modules/store/assets/images/thumbnail.jpg', 'section', 1),
(93, 23, 'Section Item', 'Section Item', 'application/modules/store/assets/images/thumbnail.jpg', 'section_item', 1),
(94, 23, 'Comments', 'Comments', 'application/modules/store/assets/images/thumbnail.jpg', 'comments', 1),
(95, 8, 'Create Prescription', 'Create Prescription', 'application/modules/store/assets/images/thumbnail.jpg', 'create_prescription', 1),
(96, 7, 'Assign To Me', 'Assign To Me', 'application/modules/store/assets/images/thumbnail.jpg', 'assign_to_me', 1),
(97, 7, 'Assign By Me', 'Assign By Me', 'application/modules/store/assets/images/thumbnail.jpg', 'assign_by_me', 1),
(98, 19, 'Add Phrase', 'Add Phrase', 'application/modules/store/assets/images/thumbnail.jpg', 'add_phrase', 1),
(99, 24, 'Add Role', 'Add Role', 'application/modules/store/assets/images/thumbnail.jpg', 'add_role', 1),
(101, 24, 'Assign Role To USer', 'Assign Role To USer', 'application/modules/store/assets/images/thumbnail.jpg', 'assign_role_to_user', 1),
(102, 24, 'Role Permission', 'Role Permission', 'application/modules/store/assets/images/thumbnail.jpg', 'role_permission', 1),
(103, 19, 'Profile', 'Profile', 'application/modules/store/assets/images/thumbnail.jpg', 'profile', 1),
(104, 19, 'Edit Profile', 'Edit Profile', 'application/modules/store/assets/images/thumbnail.jpg', 'edit_profile', 1),
(105, 25, 'Add Medication', 'Add Medication', '', 'add_medication', 1),
(106, 25, 'Medication List', 'Medication List', '', 'medication_list', 1),
(107, 25, 'Add Visit', 'Add Visit', '', 'add_visit', 1),
(108, 25, 'Visit List', 'Visit List', '', 'visit_list', 1),
(109, 25, 'Medication Report', 'Medication Report', '', 'medication_report', 1),
(110, 25, 'Patient Visit Report', 'Patient Visit Report', '', 'visit_report', 1),
(111, 23, 'Add Menu', 'Add Menu', '', 'add_menu', 1),
(112, 23, 'Menu List', 'Menu List', '', 'menu', 1),
(113, 23, 'Add Template', 'Add Template', '', 'add_template', 1),
(114, 23, 'Template List', 'Template List, Edit and Delete', '', 'template', 1),
(115, 23, 'About Us', 'About Us', '', 'about', 1),
(116, 23, 'Testimonial', 'Testimonial, Edit, Add and Delete', '', 'testimonial', 1),
(117, 23, 'Appointment Instructions', 'Appointment Instructions add, edit and delete', '', 'appoint_instruction', 1),
(118, 23, 'Partner', 'partner add, edit and delete', '', 'partner', 1),
(119, 23, 'News', 'News Add, Edit and Delete', '', 'news', 1),
(120, 23, 'Services', 'Service Add, Edit and Delete', '', 'service', 1),
(121, 3, 'Add Main Department', 'Add Main Department', '', 'add_main_department', 1),
(122, 3, 'Main Department List', 'Main Department edit and delete', '', 'main_department', 1),
(123, 9, 'Bank Book', 'Bank Book', '', 'bank_book', 1),
(124, 9, 'General Ledger', 'General Ledger', '', 'general_ledger', 1),
(125, 9, 'Profit Loss', 'Profit Loss', '', 'profit_loss', 1),
(126, 6, 'Add Time Slot', 'Doctor time slot', '', 'add_time_slot', 1),
(127, 1, 'Graph', 'Graph', '', 'graph', 1),
(128, 1, 'Quick Menu', 'Quick Menu', '', 'quick_menu', 1),
(129, 1, 'Noticeboard', 'Noticeboard', '', 'noticeboard', 1),
(130, 1, 'Messages', 'Messages', '', 'messages', 1),
(131, 27, 'Add Package', 'Add Package', 'application/modules/store/assets/images/thumbnail.jpg', 'add_package', 1),
(132, 27, 'Package List', 'package List', 'application/modules/store/assets/images/thumbnail.jpg', 'package_list', 1),
(133, 27, 'Order List', 'Package Order List', 'application/modules/store/assets/images/thumbnail.jpg', 'package_order_list', 1),
(134, 27, 'Package Order Add', 'Package Order Add', 'application/modules/store/assets/images/thumbnail.jpg', 'package_order_add', 1),
(139, 28, 'Manage Leaves', 'Manage Leaves', '', 'leaves', 1),
(140, 27, 'Package Renewals', 'Package Renewals', 'application/modules/store/assets/images/thumbnail.jpg', 'package_renewals', 1),
(141, 28, 'Leave Managers', 'Leave Managers', '', 'leave_managers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `id` int(11) NOT NULL,
  `slot_name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `slot` varchar(15) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`id`, `slot_name`, `slot`, `status`) VALUES
(2, 'Afternoon 13-14', '13:00 - 14:00', 1),
(4, 'Morning 9-10', '09:00-10:00', 1),
(5, 'Evening 17-18', '17:00 - 18:00', 1),
(9, 'Morning 10-11', '10:00 - 11:00', 1),
(10, 'Morning 11-12', '11:00 - 12:00', 1),
(11, 'Afternoon 12-13', '12:00 -13:00', 1),
(12, 'Afternoon 14-15', '14:00 -15:00', 1),
(13, 'Afternoon 15-16', '15:00 -16:00', 1),
(14, 'Afternoon 16-17', '16:00 -17:00', 1),
(15, 'Evening 18-19', '18:00 - 19:00', 1),
(16, 'Evening 19-20', '19:00 - 20:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `refund_id` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `speed_processed` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Refund transactions';

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `payment_id`, `refund_id`, `amount`, `receipt`, `status`, `speed_processed`, `created_date`) VALUES
(1, 'pay_FtLgQDzAJw22DM', 'rfnd_FtMRoLr81LQrXE', 300, NULL, 'processed', 'normal', '2020-10-26 07:44:19'),
(2, 'pay_FtPeTFEtaSxXcg', 'rfnd_FtPeqP1OCEPKwK', 54.5, NULL, 'processed', 'normal', '2020-10-26 10:52:44'),
(3, 'pay_FtPh8Y2OG5Nv1k', 'rfnd_FtPiW8nLucJukZ', 54.5, NULL, 'processed', 'normal', '2020-10-26 10:56:13'),
(4, 'pay_Fv6QJmU9Bc5rfi', 'rfnd_Fv6be7jtL7AOk0', 300, NULL, 'processed', 'normal', '2020-10-30 17:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_role` tinyint(1) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `vacation` varchar(40) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `youtube` varchar(150) DEFAULT NULL,
  `dribbble` varchar(150) DEFAULT NULL,
  `behance` varchar(150) DEFAULT NULL,
  `meeting_url` varchar(255) NOT NULL,
  `meeting_user_id` varchar(255) NOT NULL,
  `meeting_password` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `department_id`, `picture`, `date_of_birth`, `sex`, `blood_group`, `vacation`, `facebook`, `twitter`, `youtube`, `dribbble`, `behance`, `meeting_url`, `meeting_user_id`, `meeting_password`, `created_by`, `create_date`, `update_date`, `status`) VALUES
(2, 'Sunil', 'Nalawade', 'sunilnalawade15@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1, NULL, 'assets/images/doctor/2eb3514b4a53df74226e744ef901eef3.jpg', '1970-01-01', 'Male', NULL, '', '', '', '', '', '', '', '', '', 2, '2020-10-30', NULL, 1),
(3, 'Chitra', 'Thadathil', 'ChitraThadathil@yopmail.coom', 'b3666d14ca079417ba6c2a99f079b2ac', 2, 18, 'assets/images/doctor/1404a5d127eb3ef3a008e5500bf52b0e.jpg', '1970-01-01', 'Male', 'A+', '', '', '', '', '', '', 'https://meet.google.com/gju-bsoj-uex', 'root', 'root123', 2, '2020-10-29', NULL, 1),
(4, 'Shyama', 'K. M', 'Shyamakm@yopmail.com', 'b3666d14ca079417ba6c2a99f079b2ac', 2, 16, 'assets/images/doctor/4ab7c8309e8d124ed87b7dc9bf13d493.jpg', '2020-09-17', 'Male', 'A+', NULL, NULL, NULL, NULL, NULL, NULL, '', 'root', '', 2, '2020-10-30', NULL, 1),
(5, 'Nazeer', 'Shaik', 'nazeer@yopmail.com', 'd3c7bcf4f2343a1bf8de53c3f235cf14', 11, NULL, 'assets/images/human_resources/f9ccbeda1c7cc2e69e24e4a373e86fbb.png', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-09-17', NULL, 1),
(6, 'Ligin', 'John', 'liginjohn@yopmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2, 19, 'assets/images/doctor/fa2f8fbfe6a18efe3b376f6f2ab2d724.png', '1989-10-11', 'Female', 'B+', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-10-08', NULL, 1),
(7, 'Emily', 'Lalan', 'emily@yopmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2, 22, 'assets/images/human_resources/b93eac4237f4aad9e14c5ebf2b936cec.jpg', '2020-09-30', 'Male', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-10-08', NULL, 1),
(8, 'Lavanya', 'Kiruthika', 'lavanya@yopmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2, 22, 'assets/images/human_resources/abf1fa742bbc76890150da1bd42cb7ec.jpg', '2020-09-30', 'Male', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-10-08', NULL, 1),
(9, 'Saletha', 'Monica', 'saleth@yopmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2, 16, 'assets/images/human_resources/94436c0cadf45174586eb00473559d5c.jpg', '2020-09-30', 'Male', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-09-30', NULL, 1),
(10, 'Monisha', 'Cruse', 'monisha@yopmailc.om', 'd41d8cd98f00b204e9800998ecf8427e', 2, 16, 'assets/images/human_resources/f1edcbb99da588326ea6a3ac5088587a.jpg', '2020-09-30', 'Male', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-09-30', NULL, 1),
(11, 'Bhanu', 'Priya', 'bhanu@yopmail.com', 'b3666d14ca079417ba6c2a99f079b2ac', 7, NULL, 'assets/images/human_resources/676cd7b5d98aff930c6b9c669ccd5651.jpg', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-09-30', NULL, 1),
(12, 'Blessy', 'P', 'blessy@yopmail.com', 'b3666d14ca079417ba6c2a99f079b2ac', 7, NULL, 'assets/images/human_resources/53e7b7e941388039ceea5925df6704b7.jpg', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-09-30', NULL, 1),
(13, 'Kalaivani', 'P', 'kalaivani@yopmail.com', 'e164b198055c439b7e341521213a6826', 5, NULL, 'assets/images/human_resources/b56539df458d249582710b4d6c0e0779.jpg', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-09-30', NULL, 1),
(14, 'Vijayalakshmi', 'P', 'vijayalakshmi@yopmail.com', 'b3666d14ca079417ba6c2a99f079b2ac', 5, NULL, 'assets/images/human_resources/d88acf281b80f35833a04c112db6074d.jpg', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 2, '2020-09-30', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_lang`
--

CREATE TABLE `user_lang` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `language` varchar(15) NOT NULL,
  `designation` varchar(120) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `career_title` varchar(200) DEFAULT NULL,
  `short_biography` text,
  `specialist` varchar(200) DEFAULT NULL,
  `degree` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_lang`
--

INSERT INTO `user_lang` (`id`, `user_id`, `firstname`, `lastname`, `language`, `designation`, `address`, `phone`, `mobile`, `career_title`, `short_biography`, `specialist`, `degree`) VALUES
(1, 3, 'Chitra ', 'Thadathil', 'english', 'Director', '1336, 2nd Cross, Nanjappa Layout, Babusapalya, Banswadi Extn, Bangalore 560043', '', '1234567890', 'Director', '<p>Director</p>', 'Director', '<p>MSc (Speech and Hearing)</p>'),
(2, 4, 'Shyama', 'K. M', 'english', 'Pathologist', 'DCCD, SaiKrupa, No 31/255, Sangam Enclave, K Narayanapura, Kothanur,  Bangalore - 560077', '1234567890', '1234567890', 'Pathologist', '', 'Pathologist', ''),
(3, 5, 'Nazeer', 'Shaik', 'english', 'Manager', 'DIMENSIONS CENTRE FOR CHILD DEVELOPMENT 2nd Cross, Nanjappa Garden, Babusapalya, Bangalore - 560043', '', '1234567890', 'Manager', '', 'Manager', ''),
(4, 6, 'Ligin', 'John', 'english', 'Speech-Language Pathologist', 'DIMENSIONS CENTRE FOR CHILD DEVELOPMENT 2nd Cross, Nanjappa Garden, Babusapalya, Bangalore - 560043', '1234567890', '1234567890', 'Speech-Language Pathologist', '', 'Speech-Language Pathologist', '<p>Speech-Language Pathologist</p>'),
(5, 7, 'Emily', 'Lalan', 'english', 'Speech-Language Pathologist', 'Dimensions Centre for Child Development - Kalyanagar', '', '1234567890', 'Speech-Language Pathologist', '<p>Speech-Language Pathologist</p>', 'Speech-Language Pathologist', '<p>Speech-Language Pathologist</p>'),
(6, 8, 'Lavanya', 'Kiruthika', 'english', 'Speech-Language Pathologist', 'Dimensions Centre for Child Development - Kalyanagar', '', '1234567890', 'Speech-Language Pathologist', '<p>Speech-Language Pathologist</p>', 'Speech-Language Pathologist', '<p>Speech-Language Pathologist</p>'),
(7, 9, 'Saletha', 'Monica', 'english', 'Speech-Language Pathologist', 'Speech-Language Pathologist', '', '1234567890', 'Speech-Language Pathologist', '<p>Speech-Language Pathologist</p>', 'Speech-Language Pathologist', '<p>Speech-Language Pathologist</p>'),
(8, 10, 'Monisha', 'Cruse', 'english', 'Speech-Language Pathologist', 'Speech-Language Pathologist', '', '1234567890', 'Speech-Language Pathologist', '<p>Speech-Language Pathologist</p>', 'Speech-Language Pathologist', '<p>Speech-Language Pathologist</p>'),
(9, 11, 'Bhanu', 'Priya', 'english', 'Administrative Staff', 'Administrative Staff', '', '1234567890', 'Administrative Staff', '<p>Administrative Staff</p>', 'Administrative Staff', '<p>Administrative Staff</p>'),
(10, 12, 'Blessy', 'P', 'english', 'Administrative Staff', 'Administrative Staff', '', '1234567890', 'Administrative Staff', '<p>Administrative Staff</p>', 'Administrative Staff', '<p>Administrative Staff</p>'),
(11, 13, 'Kalaivani', 'P', 'english', 'Support Staff', 'Support Staff', '', '1234567890', 'Support Staff', '<p>Support Staff</p>', 'Support Staff', '<p>Support Staff</p>'),
(12, 14, 'Vijayalakshmi', 'P', 'english', 'Support Staff', 'Support Staff', '', '1234567890', 'Support Staff', '<p>Support Staff</p>', 'Support Staff', '<p>Support Staff</p>');

-- --------------------------------------------------------

--
-- Table structure for table `user_language`
--

CREATE TABLE `user_language` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 NOT NULL,
  `rating` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_language`
--

INSERT INTO `user_language` (`id`, `user_id`, `name`, `type`, `rating`) VALUES
(1, 3, 'English', 'Fluent', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user_leaves`
--

CREATE TABLE `user_leaves` (
  `leave_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `leave_type` tinyint(4) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `leave_description` text,
  `manager_description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Leaves table';

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_balance`
--

CREATE TABLE `user_leave_balance` (
  `leave_balance_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `leave_type` varchar(65) DEFAULT NULL,
  `total_leaves` float NOT NULL DEFAULT '0',
  `leave_balance` float NOT NULL DEFAULT '0',
  `leave_taken` float NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Leave Balance Table';

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_manager`
--

CREATE TABLE `user_leave_manager` (
  `leave_manager_mapping_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `assigned_date` date NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Manager Mapping Table';

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1=active and 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `user_id`, `in_time`, `out_time`, `date`, `status`) VALUES
(1, 1, '06:54:43', '06:55:24', '2020-06-15', 0),
(2, 2, '09:49:44', '15:30:48', '2020-08-20', 1),
(3, 3, '10:56:08', '11:03:40', '2020-08-20', 1),
(4, 2, '11:49:47', '11:50:07', '2020-08-21', 1),
(5, 2, '09:09:46', '00:00:00', '2020-08-25', 1),
(6, 2, '10:35:46', '00:00:00', '2020-08-27', 1),
(7, 2, '09:24:53', '00:00:00', '2020-08-29', 1),
(8, 2, '11:06:44', '00:00:00', '2020-09-01', 1),
(9, 2, '17:15:07', '00:00:00', '2020-09-05', 1),
(10, 2, '07:26:18', '00:00:00', '2020-09-11', 1),
(11, 2, '08:43:40', '10:03:34', '2020-09-14', 1),
(12, 2, '08:39:52', '00:00:00', '2020-09-15', 1),
(13, 2, '10:51:13', '00:00:00', '2020-09-17', 1),
(14, 5, '11:16:22', '11:52:42', '2020-09-17', 1),
(15, 3, '11:42:54', '11:54:55', '2020-09-17', 1),
(16, 2, '14:53:18', '00:00:00', '2020-09-20', 1),
(17, 2, '09:21:10', '00:00:00', '2020-09-24', 1),
(18, 2, '08:47:48', '00:00:00', '2020-09-25', 1),
(19, 2, '08:32:02', '09:50:15', '2020-09-26', 1),
(20, 2, '14:10:15', '00:00:00', '2020-09-27', 1),
(21, 2, '07:42:20', '00:00:00', '2020-09-28', 1),
(22, 2, '07:19:13', '00:00:00', '2020-09-29', 1),
(23, 3, '09:01:37', '10:09:20', '2020-09-29', 0),
(24, 5, '09:18:25', '11:36:09', '2020-09-29', 0),
(25, 2, '15:19:52', '00:00:00', '2020-09-30', 1),
(26, 2, '09:28:53', '00:00:00', '2020-10-01', 1),
(27, 2, '08:21:49', '00:00:00', '2020-10-02', 1),
(28, 2, '11:05:51', '00:00:00', '2020-10-05', 1),
(29, 2, '12:42:59', '00:00:00', '2020-10-06', 1),
(30, 2, '09:27:29', '00:00:00', '2020-10-07', 1),
(31, 2, '09:32:10', '00:00:00', '2020-10-08', 1),
(32, 2, '14:14:57', '00:00:00', '2020-10-09', 1),
(33, 2, '08:34:18', '00:00:00', '2020-10-10', 1),
(34, 2, '23:16:44', '00:00:00', '2020-10-11', 1),
(35, 2, '11:33:17', '00:00:00', '2020-10-12', 1),
(36, 2, '07:16:37', '00:00:00', '2020-10-13', 1),
(37, 2, '10:08:39', '00:00:00', '2020-10-14', 1),
(38, 2, '11:14:08', '00:00:00', '2020-10-16', 1),
(39, 2, '12:49:23', '00:00:00', '2020-10-19', 1),
(40, 2, '06:34:23', '00:00:00', '2020-10-20', 1),
(41, 2, '10:55:52', '00:00:00', '2020-10-21', 1),
(42, 2, '10:53:26', '00:00:00', '2020-10-22', 1),
(43, 2, '00:16:36', '00:00:00', '2020-10-24', 1),
(44, 2, '23:16:21', '00:00:00', '2020-10-25', 1),
(45, 2, '06:52:44', '00:00:00', '2020-10-26', 1),
(46, 2, '06:41:03', '00:00:00', '2020-10-27', 1),
(47, 5, '07:06:55', '07:48:59', '2020-10-27', 1),
(48, 2, '09:15:25', '00:00:00', '2020-10-28', 1),
(49, 2, '08:42:15', '15:31:22', '2020-10-29', 1),
(50, 3, '14:38:53', '15:42:02', '2020-10-29', 0),
(51, 2, '14:16:47', '00:00:00', '2020-10-30', 1),
(52, 3, '18:22:57', '00:00:00', '2020-10-30', 1),
(53, 4, '18:44:18', '18:59:23', '2020-10-30', 1),
(54, 2, '09:08:44', '00:00:00', '2020-11-01', 1),
(55, 3, '09:35:37', '00:00:00', '2020-11-01', 1),
(56, 2, '08:37:56', '00:00:00', '2020-11-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_about`
--

CREATE TABLE `ws_about` (
  `id` int(2) NOT NULL,
  `language` varchar(15) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `quotation` varchar(150) CHARACTER SET utf8 NOT NULL,
  `author_name` varchar(35) CHARACTER SET utf8 NOT NULL,
  `signature` varchar(200) CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ws_about`
--

INSERT INTO `ws_about` (`id`, `language`, `title`, `description`, `quotation`, `author_name`, `signature`, `image`, `status`) VALUES
(1, 'english', 'Director', '<p class=\"\">Ms. Chitra Thadathil, MSc (Speech and Hearing), is a speech-language pathologist, renowned expert in Oral Sensory Motor Therapy, and the owner and director of Dimensions Centre for Child Development.</p>', 'Once open, paste the appropriate Python code for your version of Sublime Text into the console.', 'Ms. Chitra Thadathil', 'assets_web/img/3b3558b78a0d79c08309f6959c3a3ada.jpg', 'assets_web/img/16c80202998d98a89066664c36be77a2.jpg', 1),
(2, 'bangla', 'হাসপাতাল সংক্ষিপ্তসার', '<p>ইনস্টলেশনের সবচেয়ে সরল পদ্ধতি হলো স্লাইবমে টেক্সট কনসো</p>\r\n<p>ইনস্টলেশনের সবচেয়ে সরল পদ্ধতি হলো স্লাইবমে টেক্সট কনসো</p>\r\n<p>ইনস্টলেশনের সবচেয়ে সরল পদ্ধতিটি সুবাইল টেক্সট কনস</p>\r\n<p>ইনস্টলেশনের সবচেয়ে সরল পদ্ধতিটি সুবাইল টেক্সট কনস</p>', 'একবার খোলা হলে কনসোলের আপনার সংস্করণের সংস্করণটির জন্য যথাযথ পাইথন কোডটি আটকান।', 'মাইকেল স্মিথ', '', '', 1),
(3, 'arabic', 'ملخص المستشفى', '<p> أبسط طريقة للتثبيت هي من خلال النص السامي</p>\r\n<p>أبسط طريقة للتثبيت هي من خلال النص السامي</p>\r\n<p>أبسط طريقة للتثبيت هي من خلال النص السامي</p>\r\n<p>أبسط طريقة للتثبيت هي من خلال النص السامي</p>', 'بمجرد فتح ، قم بلصق رمز  المناسب لإصدارك من  في وحدة التحكم.', 'مايكل سميث', '', '', 1),
(4, 'french', 'Résumé de l\'hôpital', '<p>La méthode d’installation la plus simple consiste à utiliser Conso Text Sublime</p>\r\n<p>La méthode d’installation la plus simple consiste à utiliser Conso Text Sublime</p>\r\n<p>La méthode d\'installation la plus simple consiste à utiliser les consoles Sublime Text.</p>\r\n<p>La méthode d\'installation la plus simple consiste à utiliser les consoles Sublime Text.</p>\r\n<p> </p>\r\n<p> </p>', 'Une fois ouvert, collez le code Python approprié à votre version de Sublime Text dans la console.', 'Michael Smith', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_appoint_instruction`
--

CREATE TABLE `ws_appoint_instruction` (
  `id` int(5) NOT NULL,
  `language` varchar(15) NOT NULL,
  `title` varchar(30) NOT NULL,
  `short_instruction` varchar(150) NOT NULL,
  `instruction` text NOT NULL,
  `note` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_appoint_instruction`
--

INSERT INTO `ws_appoint_instruction` (`id`, `language`, `title`, `short_instruction`, `instruction`, `note`, `status`) VALUES
(1, 'english', 'Book with your pathologist', 'Some up and coming trends are healthcare consolidation for independent healthcare centers that see a cut in unforeseen payouts.', 'Praesent pellentesque nunc vel velit varius feugiat.\r\nSuspendisse vel ex vitae velit dignissim faucibus.\r\nInteger congue erat vel bibendum volutpat.\r\nNunc nec quam dapibus, placerat est in, tincidunt nibh.\r\nSed facilisis velit sit amet purus mattis, id rutrum leo scelerisque.\r\ntesting......', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1),
(2, 'arabic', 'احجز مع طبيبك', 'بعض الاتجاهات القادمة والقادمة هي تعزيز الرعاية الصحية لمراكز الرعاية الصحية المستقلة التي ترى خفضا في المدفوعات غير المتوقعة.', 'وأفضل أنواع المستشفيات المعروفة هو المستشفى العام \r\n، الذي يوجد به عادة قسم للطوارئ لمعالجة المشاكل \r\nالصحية العاجلة التي تتراوح بين\r\n ضحايا الحريق والحوادث إلى نوبة قلبية.', 'إنها حقيقة راسخة أن القارئ سوف يصرفه محتوى مقروء للصفحة عندما ينظر إلى تخطيطه.', 1),
(3, 'bangla', 'আপনার ডাক্তারকে  বুক করুন', 'কিছু আপ এবং আসন্ন প্রবণতা স্বাধীন স্বাস্থ্যসেবা কেন্দ্রগুলির জন্য স্বাস্থ্যসেবা একীকরণ যা অপ্রত্যাশিত অর্থ প্রদানের মধ্যে একটি কাট দেখতে পায়।', 'একটি হাসপাতাল একটি স্বাস্থ্য সেবা প্রতিষ্ঠান যা বিশেষ চিকিৎসা ও নার্সিং কর্মীদের এবং চিকিৎসা সরঞ্জামগুলির সাথে রোগীর চিকিৎসা প্রদান করে। \r\nহাসপাতালের সবচেয়ে সুপরিচিত প্রকার হল সাধারণ হাসপাতাল,\r\n যা সাধারণত আগুন এবং দুর্ঘটনার শিকার হওয়া হৃদরোগে ক্ষতিকারক স্বাস্থ্য \r\nসমস্যাগুলির মোকাবিলা করার জন্য একটি জরুরি বিভাগ রয়েছে।', 'এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যা একটি পাঠক তার লেআউটটি দেখতে যখন পৃষ্ঠাটির পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে।', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_banner`
--

CREATE TABLE `ws_banner` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ws_banner`
--

INSERT INTO `ws_banner` (`id`, `image`, `status`) VALUES
(1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_basic`
--

CREATE TABLE `ws_basic` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `AppStoreUrl` varchar(255) NOT NULL,
  `twitter_api` text,
  `google_map` text,
  `google_map_api` text NOT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `vimeo` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `dribbble` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `google_plus` varchar(100) DEFAULT NULL,
  `direction` varchar(255) NOT NULL,
  `latitude` float(10,8) NOT NULL,
  `longitude` float(10,8) NOT NULL,
  `map_active` tinyint(4) NOT NULL COMMENT '1=embed, 0=api',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_basic`
--

INSERT INTO `ws_basic` (`id`, `logo`, `favicon`, `email`, `AppStoreUrl`, `twitter_api`, `google_map`, `google_map_api`, `facebook`, `twitter`, `vimeo`, `instagram`, `dribbble`, `skype`, `google_plus`, `direction`, `latitude`, `longitude`, `map_active`, `status`) VALUES
(1, 'assets_web/images/icons/dc08c03bd84445787458c9b5cd8e932b.png', 'assets_web/images/icons/cea89bb004a4ceb09ff61af3e6ac8d54.png', 'info@dimensionstherapy.org', 'https://play.google.com/store/apps/details?id=com.bdtask.bdtaskhms', '<a class=\"twitter-timeline\" data-lang=\"en\" data-dnt=\"true\" data-link-color=\"#207FDD\" href=\"https://twitter.com/taylorswift13\">Tweets by taylorswift13</a> <script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"100%\" height=\"500\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=House%2025%2C%20mannan%20plaza%2C%20khilkhet%2C%20dhaka%2C%20bangladesh&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe>Werbung: <a href=\"https://www.jetzt-drucken-lassen.de\">jetzt-drucken-lassen.de</a></div><style>.mapouter{position:relative;text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>', 'AIzaSyBDHeh9zEbXo-YCWJcicXH2VRwVwAf_tq0', 'https://www.facebook.com/dimensionsbangalore/', 'http://', 'http://', 'http://', 'http://', 'http://', 'http://', 'https://www.google.com/maps/dir//Dimensions+Centre+for+Child+Development+-+Kalyanagar,+1336,+2nd+Cross+Rd,+P&T+Layout,+Babusapalya,+Nanjappa+Garden,+Horamavu,+Bengaluru,+Karnataka+560043/@13.0242324,77.6473472,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3bae1728d5d', 13.02258968, 77.65566254, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_menu`
--

CREATE TABLE `ws_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `parent_id` int(5) NOT NULL,
  `position` int(2) NOT NULL,
  `fixed` tinyint(1) NOT NULL COMMENT '1=fixed and 0=Not fixed',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active and 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_menu`
--

INSERT INTO `ws_menu` (`id`, `name`, `parent_id`, `position`, `fixed`, `status`) VALUES
(1, 'Home', 0, 1, 1, 1),
(2, 'Service', 0, 2, 1, 1),
(3, 'About', 0, 4, 1, 1),
(4, 'Staff', 0, 5, 1, 1),
(5, 'Branches', 0, 6, 1, 1),
(6, 'Contact', 0, 7, 1, 1),
(7, 'Help', 2, 3, 0, 0),
(8, 'Condition & Policy', 2, 2, 0, 1),
(9, 'Parent Login', 0, 8, 1, 1),
(12, 'Support', 14, 1, 0, 1),
(13, 'Patient Role', 2, 1, 0, 1),
(14, 'Others', 0, 9, 0, 1),
(16, 'Packages', 0, 3, 0, 1),
(18, 'Mission', 14, 3, 0, 1),
(19, 'Staff Login', 0, 10, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_menu_lang`
--

CREATE TABLE `ws_menu_lang` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `language` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_menu_lang`
--

INSERT INTO `ws_menu_lang` (`id`, `menu_id`, `title`, `language`) VALUES
(1, 1, 'হোম', 'bangla'),
(2, 1, 'Home', 'english'),
(3, 1, 'الصفحة الرئيسية', 'arabic'),
(4, 1, 'Accueil', 'french'),
(5, 2, 'Services', 'english'),
(6, 2, 'Prestations de service', 'french'),
(7, 2, 'সার্ভিসেস', 'bangla'),
(8, 2, 'خدمات', 'arabic'),
(9, 3, 'About Us', 'english'),
(10, 3, 'معلومات عنا', 'arabic'),
(11, 3, 'À propos de nous', 'french'),
(12, 3, 'আমাদের সম্পর্কে', 'bangla'),
(13, 4, 'Staff', 'english'),
(14, 4, 'ডাক্তার', 'bangla'),
(15, 4, 'الأطباء', 'arabic'),
(16, 4, 'Médecins', 'french'),
(17, 5, 'Branches', 'english'),
(18, 5, 'Départements', 'french'),
(19, 5, 'الإدارات', 'arabic'),
(20, 5, 'বিভাগ', 'bangla'),
(21, 6, 'Contact Us', 'english'),
(22, 6, 'যোগাযোগ', 'bangla'),
(23, 6, 'اتصل بنا', 'arabic'),
(24, 6, 'Contactez nous', 'french'),
(25, 7, 'Help Center', 'english'),
(26, 7, 'সাহায্য কেন্দ্র', 'bangla'),
(27, 7, 'مركز المساعدة', 'arabic'),
(28, 7, 'Centre d\'aide', 'french'),
(29, 8, 'Condition & Policy', 'english'),
(30, 8, 'Condition et politique', 'french'),
(31, 8, 'الشرط والسياسة', 'arabic'),
(32, 8, 'শর্ত ও নীতি', 'bangla'),
(33, 9, 'Parent Login', 'english'),
(34, 9, 'ইউজার লগইন', 'bangla'),
(35, 9, 'تسجيل دخول المريض', 'arabic'),
(36, 9, 'Connexion du patient', 'french'),
(37, 12, 'Supports', 'english'),
(38, 12, 'Les soutiens', 'french'),
(39, 12, 'الدعم', 'arabic'),
(40, 12, 'সাপোর্ট সেবা', 'bangla'),
(41, 14, 'Others', 'english'),
(42, 14, 'অন্যান্য', 'bangla'),
(43, 14, 'الآخرين', 'arabic'),
(44, 14, 'autres', 'french'),
(45, 16, 'Packages', 'english'),
(46, 16, 'Packages', 'arabic'),
(48, 18, 'Mission', 'english'),
(49, 19, 'Satff Login', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `ws_news`
--

CREATE TABLE `ws_news` (
  `id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `featured_image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `create_date` date NOT NULL,
  `create_by` int(5) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1=active and 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ws_news`
--

INSERT INTO `ws_news` (`id`, `dept_id`, `title`, `featured_image`, `create_date`, `create_by`, `status`) VALUES
(6, 32, 'Pie Chart Example', '', '2019-01-23', 2, 1),
(7, 26, 'Pregnancy, also known as gestation', '', '2019-01-24', 2, 1),
(8, 31, 'What is cardiology?', '', '2019-01-24', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_news_language`
--

CREATE TABLE `ws_news_language` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `language` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_news_language`
--

INSERT INTO `ws_news_language` (`id`, `news_id`, `title`, `description`, `language`) VALUES
(5, 6, 'Pie Chart Example', '<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'english'),
(6, 6, 'Le morceau standard de Lorem Ipsum utilisé depuis', '<p>D\'où est ce que ça vient?<br>Contrairement à la croyance populaire, Lorem Ipsum n’est pas simplement un texte aléatoire. Il a ses racines dans un morceau de littérature latine classique datant de 45 ans av. Richard McClintock, professeur de latin au Hampden-Sydney College, en Virginie, a examiné l\'un des mots latins les plus obscurs, consectetur, tiré d\'un passage de Lorem Ipsum. Lorem Ipsum provient des sections 1.10.32 et 1.10.33 de \"De Finibus Bonorum et Malorum\" de Cicéron, écrit en 45 av. Ce livre est un traité sur la théorie de l\'éthique, très populaire à la Renaissance. La première ligne de Lorem Ipsum, \"Lorem ipsum dolor sit amet ..\", provient d\'une ligne de la section 1.10.32.</p>\r\n<p>Le morceau standard de Lorem Ipsum utilisé depuis les années 1500 est reproduit ci-dessous pour les personnes intéressées. Les sections 1.10.32 et 1.10.33 de \"de Finibus Bonorum et Malorum\" de Cicéron sont également reproduites dans leur forme originale, accompagnées des versions anglaises de la traduction de 1914 par H. Rackham.</p>', 'french'),
(7, 6, 'مستشفى Bdtask المحدودة', '<p>حيث أنها لا تأتي من؟<br>خلافا للاعتقاد الشائع ، لوريم إيبسوم ليس مجرد نص عشوائي. له جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن سيدني في ولاية فرجينيا ، بحث عن واحدة من أكثر الكلمات اللاتينية الغامضة ، consectetur ، من ممر لوريم إيبسوم ، وتمر عبر أقوال الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا يمكن نفيه. يأتي لوريم إيبسوم من القسمين 1.10.32 و 1.10.33 من \"دي فينيبس بونوروم إيه مالوروم\" (The Extremes of Good and Evil) بواسطة شيشرون Cicero ، وكتب في عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، تحظى بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>\r\n<p>الجزء المعياري من لوريم إيبسوم المستخدم منذ القرن السادس عشر مذكور أدناه للمهتمين. كما يتم إعادة إنتاج القسمين 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" بواسطة Cicero في شكلها الأصلي الدقيق ، مصحوبًا بنسخ إنجليزية من ترجمة 1945 التي كتبها H. Rackham.</p>', 'arabic'),
(8, 6, 'জনপ্রিয় বিশ্বাসের বিপরীতে', '<p>এটা কোথা থেকে এসেছে?<br>জনপ্রিয় বিশ্বাসের বিপরীতে, Lorem Ipsum কেবল র্যান্ডম পাঠ্য নয়। এটি 45 বিসি থেকে শাস্ত্রীয় ল্যাটিন সাহিত্যের একটি অংশে শিকড় রয়েছে, এটি 2000 বছরেরও বেশি সময় ধরে তৈরি করেছে। ভার্জিনিয়া হ্যাম্পডেন-সিডনি কলেজের ল্যাটিন প্রফেসর রিচার্ড ম্যাক ক্লিনটক লোরেম ইপ্সামের উত্তরণ থেকে লক্ষণীয় ল্যাটিন শব্দের একটিকে দেখেছিলেন এবং শাস্ত্রীয় সাহিত্যে শব্দটির পাতায় গিয়েছিলেন। লোরম ইম্পসাম 45 খ্রিস্টপূর্বাব্দে লিখিত লিখিত সিসেরোর \"দ্য ফিনিবাস বনোরুম এট মালোরুম\" (দ্য এক্সট্রিমস অব গুড অ্যান্ড ইভিল) এর 1.10.3২ এবং 1.10.33 বিভাগ থেকে এসেছে। এই বইটি নৈতিকতা তত্ত্বের উপর একটি গ্রন্থ, যা রেনেসাঁর সময় খুব জনপ্রিয়। লোরম ইম্পসামের প্রথম লাইন, \"লোরেম ipsum dolor sit amet ..\", ধারা 1.10.32 এর একটি লাইন থেকে এসেছে।</p>\r\n<p>1500 সাল থেকে ব্যবহৃত লোরেম ইম্পসামের স্ট্যান্ডার্ড খণ্ডটি আগ্রহী ব্যক্তিদের জন্য নীচের পুনরুত্পাদন করা হয়। সিসেরোর \"ডি ফিনিবাস বনোরাম এ মালোররম\" থেকে 1.10.3২ এবং 1.10.33 অনুচ্ছেদগুলিকে তাদের সঠিক মূল রূপে পুনঃপ্রবর্তিত করা হয়েছে, যার সাহায্যে 1914 সালের অনুবাদ থেকে এইচ।</p>', 'bangla'),
(9, 7, 'Pregnancy, also known as gestation, is the time during which one or more offspring develops inside a woman.', '<p>professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'english'),
(10, 7, 'গর্ভধারণ, গর্ভধারণের নামেও পরিচিত, সেই সময়ের মধ্যে একটি বা একাধিক বাচ্চা একজন মহিলার ভিতরে বিকাশ হয়।', '<p>ভার্জিনিয়ায় হ্যাম্পডেন-সিডনি কলেজের অধ্যাপক, লোরেম ইপ্সামের উত্তরণ থেকে ল্যাটিন শব্দগুলির আরো একটি অস্পষ্ট ল্যাটিন শব্দের দিকে তাকালেন, এবং শাস্ত্রীয় সাহিত্যে শব্দটির কিতাবগুলির মধ্য দিয়ে যাচ্ছিলেন, সন্দেহভাজন সূত্র আবিষ্কার করেছিলেন। লোরম ইম্পসাম 45 খ্রিস্টপূর্বাব্দে লিখিত লিখিত সিসেরোর \"দ্য ফিনিবাস বনোরুম এট মালোরুম\" (দ্য এক্সট্রিমস অব গুড অ্যান্ড ইভিল) এর 1.10.3২ এবং 1.10.33 বিভাগ থেকে এসেছে। এই বইটি নৈতিকতা তত্ত্বের উপর একটি গ্রন্থ, যা রেনেসাঁর সময় খুব জনপ্রিয়। লোরম ইম্পসামের প্রথম লাইন, \"লোরেম ipsum dolor sit amet ..\", ধারা 1.10.32 এর একটি লাইন থেকে এসেছে।</p>\r\n<p>1500 সাল থেকে ব্যবহৃত লোরেম ইম্পসামের স্ট্যান্ডার্ড খণ্ডটি আগ্রহী ব্যক্তিদের জন্য নীচের পুনরুত্পাদন করা হয়। সিসেরোর \"ডি ফিনিবাস বনোরাম এ মালোররম\" থেকে 1.10.3২ এবং 1.10.33 অনুচ্ছেদগুলিকে তাদের সঠিক মূল রূপে পুনঃপ্রবর্তিত করা হয়েছে, যার সাহায্যে 1914 সালের অনুবাদ থেকে এইচ।</p>', 'bangla'),
(11, 7, 'La grossesse, également appelée gestation, est la période au cours de laquelle un ou plusieurs enfants se développent à l\'intérieur d\'une femme.', '<p>Un professeur du Hampden-Sydney College, en Virginie, a recherché l\'un des mots latins les plus obscurs, consectetur, tiré d\'un passage de Lorem Ipsum. Lorem Ipsum provient des sections 1.10.32 et 1.10.33 de \"De Finibus Bonorum et Malorum\" de Cicéron, écrit en 45 av. Ce livre est un traité sur la théorie de l\'éthique, très populaire à la Renaissance. La première ligne de Lorem Ipsum, \"Lorem ipsum dolor sit amet ..\", provient d\'une ligne de la section 1.10.32.</p>\r\n<p>Le morceau standard de Lorem Ipsum utilisé depuis les années 1500 est reproduit ci-dessous pour les personnes intéressées. Les sections 1.10.32 et 1.10.33 de \"de Finibus Bonorum et Malorum\" de Cicero sont également reproduites dans leur forme originale, accompagnées des versions anglaises de la traduction de 1914 par H. Rackham.</p>', 'french'),
(12, 7, 'الحمل ، المعروف أيضا باسم الحمل ، هو الوقت الذي يتطور فيه ذرية أو أكثر داخل المرأة.', '<p><br>أستاذ في كلية هامبدن سيدني في ولاية فرجينيا ، نظرت واحدة من الكلمات اللاتينية أكثر غموضا ، consectetur ، من مرور لوريم إيبسوم ، والذهاب من خلال الاستشهادات من الكلمة في الأدب الكلاسيكي ، واكتشفت مصدر لا يمكن الاستغناء عنه. يأتي لوريم إيبسوم من القسمين 1.10.32 و 1.10.33 من \"دي فينيبس بونوروم إيه مالوروم\" (The Extremes of Good and Evil) بواسطة شيشرون Cicero ، وكتب في عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، تحظى بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، \"Lorem ipsum dolor sit amet ..\" ، يأتي من سطر في القسم 1.10.32.</p>\r\n<p>الجزء المعياري من لوريم إيبسوم المستخدم منذ القرن السادس عشر مذكور أدناه للمهتمين. كما يتم إعادة إنتاج القسمين 1.10.32 و 1.10.33 من \"de Finibus Bonorum et Malorum\" بواسطة Cicero في شكلها الأصلي الدقيق ، مصحوبًا بنسخ إنجليزية من ترجمة 1945 التي كتبها H. Rackham.</p>', 'arabic'),
(13, 8, 'What is cardiology?', '<p>Cardiologists are doctors who specialize in diagnosing and treating diseases or conditions of the heart and blood vessels—the cardiovascular system. You might also visit a cardiologist so you can learn about your risk factors for heart disease and find out what measures you can take for better heart health. Texas Heart Institute cardiologists are listed in the professional staff directory.</p>\r\n<p>When you are dealing with a complex health condition like heart disease, it is important that you find the right match between you and your specialist. A diagnosis of heart or vascular disease often begins with your primary care doctor, who then refers you to a cardiologist. The cardiologist evaluates your symptoms and your medical history and may recommend tests for a more definite diagnosis. Then, your cardiologist decides if your condition can be managed under his or her care using medicines or other available treatments. If your cardiologist decides that you need surgery, he or she refers you to a cardiovascular surgeon, who specializes in operations on the heart, lungs, and blood vessels. You remain under the care of your cardiologist even when you are referred to other specialists.</p>', 'english'),
(14, 8, 'ما هو أمراض القلب؟', '<p>أطباء القلب هم أطباء متخصصون في تشخيص ومعالجة الأمراض أو أمراض القلب والأوعية الدموية - نظام القلب والأوعية الدموية. يمكنك أيضا زيارة طبيب القلب حتى تتمكن من معرفة عوامل الخطر الخاصة بك لأمراض القلب ومعرفة التدابير التي يمكن اتخاذها لتحسين صحة القلب. يتم سرد أمراض القلب معهد القلب تكساس في دليل الموظفين الفنيين.</p>\r\n<p>عندما تتعامل مع حالة صحية معقدة مثل أمراض القلب ، من المهم أن تجد المطابقة الصحيحة بينك وبين أخصائيك. غالبًا ما يبدأ تشخيص أمراض القلب أو الأوعية الدموية بطبيب الرعاية الأولية الذي يحيلك إلى طبيب القلب. يقوم طبيب القلب بتقييم الأعراض والتاريخ الطبي الخاص بك وقد يوصي بإجراء اختبارات للتشخيص أكثر تحديدًا. بعد ذلك ، يقرر طبيب القلب إذا كان من الممكن إدارة حالتك تحت رعايته باستخدام الأدوية أو العلاجات الأخرى المتاحة. إذا قرر طبيب القلب الخاص بك أنك بحاجة لعملية جراحية ، فإنه يحيلك إلى جراح القلب والأوعية الدموية ، الذي يتخصص في العمليات على القلب والرئتين والأوعية الدموية. تظل تحت رعاية طبيب القلب حتى عندما تتم إحالتك إلى أخصائيين آخرين.</p>', 'arabic'),
(15, 8, 'কার্ডিওলজি কি?', '<p>কার্ডিওলোজিস্টরা হ\'ল হৃদরোগ ও রক্তবাহী জাহাজের রোগ বা অবস্থার নির্ণয় ও চিকিত্সার ক্ষেত্রে বিশেষজ্ঞ যারা কার্ডিওভাসকুলার সিস্টেম। আপনি কার্ডিওলজিস্টেরও পরিদর্শন করতে পারেন যাতে হৃদরোগের জন্য আপনার ঝুঁকির কারণগুলি জানতে পারেন এবং হৃদরোগের জন্য আপনি কোন পদক্ষেপ গ্রহণ করতে পারেন তা জানতে পারেন। টেক্সাস হার্ট ইনস্টিটিউট কার্ডিওলজিস্ট পেশাদার কর্মীদের ডিরেক্টরি তালিকাভুক্ত করা হয়।</p>\r\n<p>আপনি যখন হৃদরোগের মতো জটিল স্বাস্থ্যের অবস্থা নিয়ে কাজ করছেন তখন আপনার এবং আপনার বিশেষজ্ঞের মধ্যে সঠিক মিল খুঁজে পাওয়া গুরুত্বপূর্ণ। হার্ট বা ভাস্কুলার রোগের নির্ণয় প্রায়ই আপনার প্রাথমিক যত্ন ডাক্তারের সাথে শুরু হয়, যিনি তখন আপনাকে কার্ডিওলোজিস্ট বলে উল্লেখ করেন। কার্ডিওলজিস্ট আপনার লক্ষণগুলি এবং আপনার চিকিৎসা ইতিহাস মূল্যায়ন করে এবং আরও নির্দিষ্ট নির্ণয়ের জন্য পরীক্ষাগুলি সুপারিশ করতে পারে। তারপরে, আপনার কার্ডিওলোজিস্ট সিদ্ধান্ত নেয় যে ওষুধগুলি বা অন্যান্য উপলব্ধ চিকিত্সাগুলি ব্যবহার করে আপনার অবস্থা তার যত্নের অধীনে পরিচালিত হতে পারে কিনা। আপনার হৃদরোগ বিশেষজ্ঞ যদি সিদ্ধান্ত নেয় যে অস্ত্রোপচারের প্রয়োজন হয় তবে সে আপনাকে কার্ডিওভাসকুলার সার্জনকে নির্দেশ করে, যিনি হৃদয়, ফুসফুস এবং রক্তবাহী পদার্থের অপারেশনের জন্য বিশেষজ্ঞ। আপনি অন্যান্য বিশেষজ্ঞদের উল্লেখ করা হয়, এমনকি যখন আপনি আপনার হৃদরোগ বিশেষজ্ঞের তত্ত্বাবধানে থাকা।</p>', 'bangla'),
(16, 8, 'Qu\'est ce que la cardiologie?', '<p>Les cardiologues sont des médecins spécialisés dans le diagnostic et le traitement de maladies ou d\'affections du cœur et des vaisseaux sanguins - le système cardiovasculaire. Vous pouvez également consulter un cardiologue afin de connaître vos facteurs de risque de maladie cardiaque et de savoir quelles mesures vous pouvez prendre pour améliorer votre santé cardiaque. Les cardiologues du Texas Heart Institute figurent dans le répertoire du personnel professionnel.</p>\r\n<p>Lorsque vous traitez avec un problème de santé complexe comme une maladie cardiaque, il est important que vous trouviez le partenaire idéal entre vous et votre spécialiste. Un diagnostic de maladie cardiaque ou vasculaire commence souvent par votre médecin de famille, qui vous oriente ensuite vers un cardiologue. Le cardiologue évalue vos symptômes et vos antécédents médicaux et peut vous recommander des tests pour un diagnostic plus précis. Ensuite, votre cardiologue décide si votre état peut être soigné sous ses soins à l\'aide de médicaments ou d\'autres traitements disponibles. Si votre cardiologue décide que vous avez besoin d\'une intervention chirurgicale, il vous dirigera vers un chirurgien cardiovasculaire spécialisé dans les opérations du cœur, des poumons et des vaisseaux sanguins. Vous restez sous les soins de votre cardiologue même lorsque vous êtes dirigé vers d\'autres spécialistes.</p>', 'french');

-- --------------------------------------------------------

--
-- Table structure for table `ws_page_content`
--

CREATE TABLE `ws_page_content` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `url` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `featured_image` varchar(250) NOT NULL,
  `create_date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_page_content`
--

INSERT INTO `ws_page_content` (`id`, `menu_id`, `url`, `title`, `description`, `featured_image`, `create_date`, `status`) VALUES
(1, 1, 'home', '', '', '', '2018-11-27', 1),
(2, 2, 'services', '', '', '', '2018-11-27', 1),
(3, 3, 'about', '', '', '', '2018-11-27', 1),
(4, 4, 'doctors', '', '', '', '2018-11-27', 1),
(5, 5, 'departments', '', '', '', '2018-11-27', 1),
(6, 6, 'contact', '', '', '', '2018-11-27', 1),
(8, 9, 'parent_login', 'Patient Login', '<p>fdgdg</p>', '', '2018-11-28', 1),
(34, 14, 'page', '', '', '', '2018-12-20', 1),
(35, 12, 'page', 'We are supported our clients 24 Hours', '<p>We are supported our clients 24 Hours</p>\r\n<p>We are supported our clients 24 Hours</p>\r\n<p>We are supported our clients 24 Hours</p>\r\n<p>We are supported our clients 24 Hours</p>\r\n<p>We are supported our clients 24 Hours</p>\r\n<p> </p>', '', '2018-12-20', 1),
(36, 16, 'packages_list', '', '', '', '2018-11-27', 1),
(37, 19, 'login', 'Staff Login', '<p>fdgdg</p>', '', '2018-11-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_partner`
--

CREATE TABLE `ws_partner` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `url` varchar(120) CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ws_partner`
--

INSERT INTO `ws_partner` (`id`, `name`, `url`, `image`, `status`) VALUES
(1, 'Apollo Hospital', 'https://apollo.com/', '', 1),
(2, 'BDTask Limited', 'https://bdtask.com/', '', 1),
(3, 'Dhaka Medical College', 'www.dhakamedical.com', '', 1),
(4, 'Test', 'https://testing.com/', '', 1),
(5, 'Medicine', 'www.Medicine.com', '', 1),
(6, 'Pharmacy', 'www.Pharmacy.com', 'assets_web/img/client-logo/10e5e812b4479d9528a671dcc30dda25.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_section`
--

CREATE TABLE `ws_section` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `featured_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_section`
--

INSERT INTO `ws_section` (`id`, `name`, `title`, `description`, `featured_image`) VALUES
(1, 'about', 'About Us', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', ''),
(2, 'contact', 'Contact Us', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', ''),
(3, 'department', 'Branch List', '', ''),
(4, 'doctor', 'Doctor List', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', ''),
(5, 'timetable', 'Doctors Timetable', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley', ''),
(6, 'news', 'Latest News', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', ''),
(7, 'benefits', 'Our Benefits', 'Qualified Staff of therapist\r\nSave Your Money and Time with us\r\nFeel Like you are at Home Services\r\n', ''),
(8, 'service', 'Our Services', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', ''),
(9, 'team', 'Meet our (awesome) team', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', ''),
(10, 'portfolio', 'Jobs & Education', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', NULL),
(11, 'working_hours', 'Our Working Hours', 'It is a long established fact that a reader will.', NULL),
(12, 'signin', 'Try Hospital+ for free', 'We won\'t post anything without your permission and your personal details are kept private', NULL),
(13, 'packages', 'Packages', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ws_section_lang`
--

CREATE TABLE `ws_section_lang` (
  `id` int(11) NOT NULL,
  `language` varchar(15) NOT NULL,
  `section_id` int(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_section_lang`
--

INSERT INTO `ws_section_lang` (`id`, `language`, `section_id`, `title`, `description`) VALUES
(1, 'english', 1, 'About Us', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(2, 'bangla', 1, 'আমাদের সম্পর্কে', 'এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যা একটি পাঠক তার লেআউটটি দেখতে যখন পৃষ্ঠাটির পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে।'),
(3, 'arabic', 1, 'معلومات عنا', 'إنها حقيقة راسخة أن القارئ سوف يصرفه محتوى مقروء للصفحة عندما ينظر إلى تخطيطه.'),
(4, 'french', 1, 'À propos de nous', 'C\'est un fait établi depuis longtemps qu\'un lecteur sera distrait par le contenu lisible d\'une page lorsqu\'il examinera sa mise en page.'),
(5, 'english', 7, 'Our Benefits', 'Qualified Staff of Therapist\r\nSave Your Money and Time with us\r\nFeel Like you are at Home Services\r\n'),
(6, 'bangla', 7, 'আমাদের উপকারিতা', 'ডাক্তারের যোগ্য স্টাফ\r\nআমাদের সাথে আপনার টাকা এবং সময় সংরক্ষণ করুন\r\n24x7 জরুরী সেবা\r\nমনে হচ্ছে আপনি হোম সার্ভিসেসে আছেন\r\nমনে হচ্ছে আপনি হোম সার্ভিসেসে আছেন'),
(7, 'arabic', 7, 'فوائدنا', 'طاقم مؤهل من الأطباء\r\nحفظ أموالك والوقت معنا\r\nخدمة الطوارئ على مدار الساعة\r\nأشعر وكأنك في الخدمات المنزلية\r\nأشعر وكأنك في الخدمات المنزلية'),
(8, 'french', 7, 'Nos avantages', 'Personnel qualifié de médecins\r\nÉconomisez votre argent et votre temps avec nous\r\nService d\'urgence 24x7\r\nSentez-vous comme chez vous\r\nSentez-vous comme chez vous'),
(9, 'english', 2, 'Contact Us', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(10, 'french', 2, 'Contactez nous', 'C\'est un fait établi depuis longtemps qu\'un lecteur sera distrait par le contenu lisible d\'une page lorsqu\'il examinera sa mise en page.'),
(11, 'arabic', 2, 'اتصل بنا', 'إنها حقيقة راسخة أن القارئ سوف يصرفه محتوى مقروء للصفحة عندما ينظر إلى تخطيطه.'),
(12, 'bangla', 2, 'আমাদের সাথে যোগাযোগ করুন', 'এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যা একটি পাঠক তার লেআউটটি দেখতে যখন পৃষ্ঠাটির পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে।'),
(13, 'french', 3, 'Liste des départements', 'C\'est un fait établi depuis longtemps qu\'un lecteur sera distrait par le contenu lisible d\'une page lorsqu\'il examinera sa mise en page.'),
(14, 'arabic', 3, 'قائمة الإدارات', 'إنها حقيقة راسخة أن القارئ سوف يصرفه محتوى مقروء للصفحة عندما ينظر إلى تخطيطه.'),
(15, 'bangla', 3, 'বিভাগ তালিকা', 'এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যা একটি পাঠক তার লেআউটটি দেখতে যখন পৃষ্ঠাটির পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে।'),
(16, 'english', 3, 'Branch List', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(17, 'english', 4, 'Staff List', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(18, 'french', 4, 'liste de docteur', 'C\'est un fait établi depuis longtemps qu\'un lecteur sera distrait par le contenu lisible d\'une page lorsqu\'il examinera sa mise en page.'),
(19, 'bangla', 4, 'ডাক্তার তালিকা', 'এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যা একটি পাঠক তার লেআউটটি দেখতে যখন পৃষ্ঠাটির পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে।'),
(20, 'arabic', 4, 'قائمة الطبيب', 'إنها حقيقة راسخة أن القارئ سوف يصرفه محتوى مقروء للصفحة عندما ينظر إلى تخطيطه.'),
(21, 'english', 6, 'Latest News', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(22, 'bangla', 6, 'সর্বশেষ সংবাদ', 'এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যা একটি পাঠক তার লেআউটটি দেখতে যখন পৃষ্ঠাটির পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে।'),
(23, 'arabic', 6, 'أحدث الأخبار', 'إنها حقيقة راسخة أن القارئ سوف يصرفه محتوى مقروء للصفحة عندما ينظر إلى تخطيطه.'),
(24, 'french', 6, 'Dernières nouvelles', 'C\'est un fait établi depuis longtemps qu\'un lecteur sera distrait par le contenu lisible d\'une page lorsqu\'il examinera sa mise en page.'),
(25, 'english', 10, 'Jobs & Education', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(26, 'bangla', 10, 'চাকরি ও শিক্ষা', 'এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যা একটি পাঠক তার লেআউটটি দেখতে যখন পৃষ্ঠাটির পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে।'),
(27, 'arabic', 10, 'الوظائف والتعليم', 'إنها حقيقة راسخة أن القارئ سوف يصرفه محتوى مقروء للصفحة عندما ينظر إلى تخطيطه.'),
(28, 'french', 10, 'Emplois & Education', 'C\'est un fait établi depuis longtemps qu\'un lecteur sera distrait par le contenu lisible d\'une page lorsqu\'il examinera sa mise en page.'),
(29, 'english', 8, 'Our Services', 'The NWT Health Care Plan covers the cost of medically necessary hospital services, provided at a hospital, on an inpatient or outpatient basis within Canada. '),
(30, 'bangla', 8, 'আমাদের সেবাসমূহ', 'এনডব্লিউটিএ হেলথ কেয়ার প্ল্যানটি কানাডার অভ্যন্তরে একটি ইনসেন্টেন্ট বা আউটপেইটিভ ভিত্তিতে হাসপাতালে দেওয়া ঔষধগত প্রয়োজনীয় হাসপাতালের খরচগুলি জুড়ে দেয়।'),
(31, 'arabic', 8, 'خدماتنا', 'تغطي خطة الرعاية الصحية بشبكة NWT تكلفة خدمات المستشفيات الضرورية طبياً ، والتي يتم توفيرها في المستشفى ، على أساس المرضى الداخليين أو خارج المستشفى داخل كندا.'),
(32, 'french', 8, 'Nos services', 'Le régime de soins de santé des Territoires du Nord-Ouest couvre le coût des services hospitaliers médicalement nécessaires, en milieu hospitalier ou en consultation externe au Canada.'),
(33, 'english', 9, 'Meet our (awesome) team', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(34, 'french', 9, 'Rencontrez notre (génial) équipe', 'C\'est un fait établi depuis longtemps qu\'un lecteur sera distrait par le contenu lisible d\'une page lorsqu\'il examinera sa mise en page.'),
(35, 'arabic', 9, 'تعرف على فريقنا (الرائع)', 'إنها حقيقة راسخة أن القارئ سوف يصرفه محتوى مقروء للصفحة عندما ينظر إلى تخطيطه.'),
(36, 'bangla', 9, 'আমাদের এক্সপার্টদের সাথে দেখা করুন ', 'এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যা একটি পাঠক তার লেআউটটি দেখতে যখন পৃষ্ঠাটির পাঠযোগ্য সামগ্রী দ্বারা বিভ্রান্ত হবে।'),
(37, 'french', 5, 'Horaires des médecins', 'Vous trouverez ci-dessous des conseils qui vous aideront à planifier votre rendez-vous avec un médecin ou une infirmière de votre choix.'),
(38, 'english', 5, 'Pathologist Timetable', 'The following is for guidance only to help you plan your appointment with a preferred pathologist or Therapist.'),
(39, 'arabic', 5, 'جدول الأطباء', 'ما يلي هو للإرشاد فقط لمساعدتك في تخطيط موعدك مع طبيب أو ممرضة مفضلة.'),
(40, 'bangla', 5, 'ডাক্তারের সময়সীমা', 'নিচের দিক নির্দেশনা শুধুমাত্র আপনাকে পছন্দসই ডাক্তার বা নার্সের সাথে আপনার অ্যাপয়েন্টমেন্ট পরিকল্পনা করতে সহায়তা করার জন্য।'),
(41, 'english', 11, 'Our Working Hours', 'It is a long established fact that a reader will.'),
(42, 'french', 11, 'Nos heures de travail', 'C\'est un fait établi depuis longtemps qu\'un lecteur le fera.'),
(43, 'arabic', 11, 'ساعات العمل لدينا', 'إنها حقيقة ثابتة منذ زمن طويل أن القارئ سوف.'),
(44, 'bangla', 11, 'আমাদের কাজের ঘন্টা', 'এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক হবে।'),
(45, 'english', 13, 'Packages', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');

-- --------------------------------------------------------

--
-- Table structure for table `ws_service`
--

CREATE TABLE `ws_service` (
  `id` int(11) NOT NULL,
  `language` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon_image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text,
  `position` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date` date DEFAULT NULL,
  `is_parent` int(11) NOT NULL COMMENT '0=Parent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_service`
--

INSERT INTO `ws_service` (`id`, `language`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `date`, `is_parent`) VALUES
(1, 'english', 'SPEECH LANGUAGE', 'assets_web/img/service/c744ccbc652ba7703b4decd7535af979.jpeg', 'SPEECH LANGUAGE THERAPY', '<p>Oral Sensory issues related to speech and feeding skills, improving receptive and expressive communication, speech clarity and the use socially acceptable ways to communicate (Pragmatics) are a few areas that will be targeted in our speech therapy sessions.</p>\r\n<p class=\"\"><strong>Our Speech-Language Pathologist can help children</strong></p>\r\n<ul data-rte-list=\"default\">\r\n<li>\r\n<p class=\"\">Improve oral motor skills</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Improve speech clarity</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Improve feeding skills</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Improve comprehension of spoken words</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Increase mean length of utterances (length of sentences)</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Reduce/ eliminate echolalia by replacing meaningless utterances with meaningful words</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Use grammatically appropriate sentences </p>\r\n</li>\r\n<li>\r\n<p class=\"\">Progress in social use of language (Pragmatics)</p>\r\n</li>\r\n</ul>', 1, 1, '2020-09-17', 0),
(2, 'english', 'OCCUPATIONAL', 'assets_web/img/service/0976e06e539c54f5d2f0df1c60177dd6.jpeg', 'OCCUPATIONAL THERAPY', '<p class=\"\">Occupational Therapy facilitates people with a physical, sensory, or cognitive disability, be as independent as possible in all areas of their lives. OT can help children with various developmental delays improve their cognitive, physical, sensory, and motor skills.</p>\r\n<p class=\"\"><strong>Our Occupational Therapist can help children improve</strong> </p>\r\n<ul data-rte-list=\"default\">\r\n<li>\r\n<p class=\"\">Body Awareness and proprioceptive sense</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Movement coordination between the two sides of the body</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Motor control and organization, planning and coordination</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Gross motor coordination and strengthening skills</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Fine motor including handwriting, cutting and colouring</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Self regulation and activities of daily living</p>\r\n</li>\r\n</ul>', 2, 1, '2020-09-17', 0),
(3, 'english', 'HANDWRITING PROGRAM', 'assets_web/img/service/5e0520014f6ad7c8de6307c788877a4c.jpg', 'HANDWRITING PROGRAM', '<p class=\"\">We conduct regular handwriting programs for Speech Therapists, School Teachers, Occupational Therapists, and Parents who can help and aid the children with learning to teach handwriting</p>\r\n<p class=\"\"><strong>Our Handwriting Specialist can help children</strong></p>\r\n<ul data-rte-list=\"default\">\r\n<li>\r\n<p class=\"\">Improve body awareness and posture for writing</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Improve pencil grip</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Write upper case, lower case, and numbers with proper spacing and size</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Be able to copy words and sentences from the board</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Improve speed of writing</p>\r\n</li>\r\n</ul>', 3, 1, '2020-09-30', 0),
(4, 'english', 'SOCIAL SKILLS TRAINI', 'assets_web/img/service/0aca3816cba8012e6fde07706c1e2fbb.jpg', 'SOCIAL SKILLS TRAINING', '<p class=\"\">A persistent problem of children with autistic spectrum disorders is inappropriate social behavior. Often inappropriate behaviors are preceded by inability to communicate ones needs.</p>\r\n<p class=\"\"><strong>Our Speech Language Pathologist can help children</strong></p>\r\n<ul data-rte-list=\"default\">\r\n<li>\r\n<p class=\"\">Approach others in socially acceptable ways</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Ask for permission rather than acting impulsively</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Facilitate children to make and keep friends</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Share toys/materials</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Listen to instructions given to a  group</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Attend to task at hand</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Follow directions in a small group setting</p>\r\n</li>\r\n<li>\r\n<p class=\"\">Seek attention appropriately and more</p>\r\n</li>\r\n</ul>', 4, 1, '2020-09-30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ws_setting`
--

CREATE TABLE `ws_setting` (
  `id` int(11) NOT NULL,
  `language` varchar(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `text` varchar(25) NOT NULL,
  `fax` varchar(25) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `closed_day` varchar(30) NOT NULL,
  `open_day` varchar(60) NOT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `working_hour` text NOT NULL,
  `isQRCode` tinyint(1) NOT NULL COMMENT '1=active and 0=inactive',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_setting`
--

INSERT INTO `ws_setting` (`id`, `language`, `title`, `description`, `meta_tag`, `meta_keyword`, `phone`, `text`, `fax`, `address`, `closed_day`, `open_day`, `copyright_text`, `working_hour`, `isQRCode`, `status`) VALUES
(1, 'english', 'DCCD', 'Evidence-based scientific method in treating children with communication needs.', 'Evidence based scientific method in treating children with communication needs.', '         Hospital, Appointment, System, \r\nHospital Appointment,Demo, Appointment', '(+91) 9880146677', '(+91) 9880146677', '(+91) 9880146677', 'DIMENSIONS CENTRE FOR CHILD DEVELOPMENT 2nd Cross, Nanjappa Garden, Babusapalya, Bangalore - 560043', 'Sunday ', 'Mon - Fri: 09:00AM - 08:00PM, Sat: 09:00AM - 01:30PM', '<p>Copyright &copy; 2020- DCCD&nbsp;.&nbsp;All rights reserved.</p>', '<table class=\"table\">\r\n                        <tbody>\r\n                            <tr>\r\n                                <td>Monday-Friday</td>\r\n                                <td class=\"text-right\">09:00AM-08:00PM</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>Saturday</td>\r\n                                <td class=\"text-right\">09.00AM-01.30PM</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>Sunday</td>\r\n                                <td class=\"text-right\">Closed</td>\r\n                            </tr>\r\n                        </tbody>\r\n                    </table>', 1, 1),
(2, 'bangla', 'বিডি টাস্ক হাসপাতাল লি :', '', '', '      ', '৫৭৪৫৭৪৫৭, ৫৬৭৫৬৭৫৬,  ৫৭৬৬৭৫৬৫', '৫৭৬৬৭৫৬৫', '৫৬৭৫৬৭৫৬', 'Uttara, Dhaka-1230', '', '', '<p>কপিরাইট &copy; ২০১৬ - <a href=\"http://www.bdtask.com\" target=\"_blank\">বিডিস্ক</a>। সর্বস্বত্ব সংরক্ষিত.</p>', '<table class=\"table\">\r\n                        <tbody>\r\n                            <tr>\r\n                                <td>সোমবার - বুধবার</td>\r\n                                <td class=\"text-right\">০৮.০০-১৮.০০</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>বৃহস্পতিবার - শুক্রবার</td>\r\n                                <td class=\"text-right\">০৮.০০-১৮.০০</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>শনিবার</td>\r\n                                <td class=\"text-right\">০৮.০০-১৮.০০</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>রবিবার</td>\r\n                                <td class=\"text-right\">বন্ধ</td>\r\n                            </tr>\r\n                        </tbody>\r\n                    </table>', 1, 1),
(3, 'arabic', 'مستشفى Bdtask المحدودة', 'xc', 'vx', '  xcz', '(012)-345-6788, (022)-143-545-45, (011)-122-244-45', '(123) 456-7890', '(123) 456-7890', '123 / A، Street، State-12345، Demo', '', '', '<p>Copyright &copy; 2016-&nbsp;<a title=\"BDtask\" href=\"http://www.bdtask.com\" target=\"_blank\">BDtask</a>&nbsp;.&nbsp;All rights reserved.</p>', '<table class=\"table\">\r\n                        <tbody>\r\n                            <tr>\r\n                                <td>Monday-Wednesday</td>\r\n                                <td class=\"text-right\">08.00-18.00</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>Thursday -Friday</td>\r\n                                <td class=\"text-right\">08.00-18.00</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>Saturday</td>\r\n                                <td class=\"text-right\">08.00-18.00</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>Sunday</td>\r\n                                <td class=\"text-right\">Closed</td>\r\n                            </tr>\r\n                        </tbody>\r\n                    </table>', 1, 1),
(4, 'french', 'Bdtask Hospital Limited', 'b', 'bvc', '   vbc', '(012)-345-6788, (022)-143-545-45, (011)-122-244-45', '(123) 456-7890', '(123) 456-7890', 'vxcv', '', '', '<p>Copyright &copy; 2016-&nbsp;<a title=\"BDtask\" href=\"http://www.bdtask.com\" target=\"_blank\">BDtask</a>&nbsp;.&nbsp;All rights reserved.</p>', '<table class=\"table\">\r\n                        <tbody>\r\n                            <tr>\r\n                                <td>Monday-Wednesday</td>\r\n                                <td class=\"text-right\">08.00-18.00</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>Thursday -Friday</td>\r\n                                <td class=\"text-right\">08.00-18.00</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>Saturday</td>\r\n                                <td class=\"text-right\">08.00-18.00</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>Sunday</td>\r\n                                <td class=\"text-right\">Closed</td>\r\n                            </tr>\r\n                        </tbody>\r\n                    </table>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_slider`
--

CREATE TABLE `ws_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(120) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_slider`
--

INSERT INTO `ws_slider` (`id`, `title`, `url`, `image`, `position`, `status`) VALUES
(1, 'Four Sensory Motor Aspects To Consider in Pediatric Feeding Therapy', 'https://www.dimensionstherapy.org/resources/four-sensory-motor-aspects-to-consider-in-pediatric-feeding-therapy', 'assets_web/img/slider/0428475db53a9411523b2607c891e3d2.jpeg', 3, 1),
(2, 'Benefits of Pediatric Teletherapy', 'https://www.dimensionstherapy.org/resources/benefits-of-pediatric-teletherapy', 'assets_web/img/slider/285918de00131b91e12fcac3058db8d1.jpg', 2, 1),
(5, 'How to effectively treat Childhood Apraxia of speech', 'https://www.dimensionstherapy.org/resources/how-to-effectively-treat-childhood-apraxia-of-speech', 'assets_web/img/slider/49a48e1c19f50d8f74b668dc2c0b35ef.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ws_slider_lang`
--

CREATE TABLE `ws_slider_lang` (
  `id` int(11) NOT NULL,
  `slider_id` int(5) NOT NULL,
  `language` varchar(15) NOT NULL,
  `title` varchar(120) NOT NULL,
  `subtitle` varchar(150) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_slider_lang`
--

INSERT INTO `ws_slider_lang` (`id`, `slider_id`, `language`, `title`, `subtitle`, `description`) VALUES
(1, 1, 'english', 'Four Sensory Motor Aspects To Consider in Pediatric Feeding Therapy', 'Children first learn to eat before they talk. Feeding takes a course from liquids, to purees and finally solids.', '<p>Children first learn to eat before they talk. Feeding takes a course from liquids, to purees and finally solids. During the first year, infants learn to sit, crawl, stand and walk, a process that grades their motor coordination and postural stability. This process is interlinked with oral motor development required for talking and feeding, which is why babies start with fluids and progress to solid foods.&nbsp;</p>'),
(2, 1, 'bangla', 'একটি হাসপাতাল ইনফরমেশন সিস্টেম (এইচআইএস) মূলত হাসপাতালের ব্যবহারের তথ্য তথ্য সিস্টেমের সমার্থক। ', 'একটি হাসপাতাল ইনফরমেশন সিস্টেম (এইচআইএস) মূলত হাসপাতালের ব্যবহারের তথ্য তথ্য সিস্টেমের সমার্থক। ', '<p>একটি হাসপাতাল ইনফরমেশন সিস্টেম (এইচআইএস) মূলত হাসপাতালের ব্যবহারের তথ্য তথ্য সিস্টেমের সমার্থক। হাসপাতাল ঘড়ি ঘন ঘন তথ্য, একটি বছরে 365 দিন উত্পাদন করে, যা সব দক্ষ কার্যকারিতা নিশ্চিত করতে ভাল পরিচালিত করা প্রয়োজন। রোগীরা আউটসেন্টেন্টের যত্নের জন্য জরুরি অবস্থার জন্য এই ধরনের সংস্থান পরিদর্শন করে, অথবা একটি সংক্ষিপ্ত থাকার (কয়েক ঘন্টা) বা দীর্ঘ সময়কালের জন্য ভর্তি হয় (যা কখনও কখনও অনির্দিষ্ট হতে পারে)। অতীতের সময়ে, একটি এইচআইএসের গুরুত্বপূর্ণ মডিউলগুলি তাদের উপার্জন পরিচালনার দিকগুলির সাথে মোকাবিলা করেছিল বলে মনে করা হয়, সাম্প্রতিক প্রবণতা সামগ্রিক দক্ষতা এবং ক্লিনিকাল পরিচালনার উন্নতিতে ক্রমবর্ধমান জোর দেয়। এখানে অবশ্যই উল্লেখ করা উচিত যে কিছু ক্লিনিকাল সংস্থার দ্বারা কিছু মডিউল প্রয়োজন হলে, অন্যের জন্য প্রয়োজনীয় একটি বিশেষ সংস্থার আওতায় থাকা এবং বিশেষত্বের উপর নির্ভর করে।</p>'),
(3, 1, 'arabic', ' هو في الأساس مرادف لنظام إدارة المعلومات المستخدم في المستشفيات. تولد المستشفيات ثروة من البيانات ع', ' هو في الأساس مرادف لنظام إدارة المعلومات المستخدم في المستشفيات. تولد المستشفيات ثروة من البيانات ع', '<p>نظام معلومات المستشفى (HIS) هو في الأساس مرادف لنظام إدارة المعلومات المستخدم في المستشفيات. تولد المستشفيات ثروة من البيانات على مدار الساعة ، 365 يومًا في السنة ، وكلها بحاجة إلى إدارة جيدة لضمان الأداء الفعال. ﯾزور اﻟﻣرﺿﯽ ھذه اﻟﻣؤﺳﺳﺎت ﻟﻟرﻋﺎﯾﺔ اﻟﺧﺎرﺟﯾﺔ ، أو ﻓﻲ ﺣﺎﻟﺔ اﻟطوارئ ، أو ﯾﺟب أن ﯾﺣﺻﻟوا ﻋﻟﯽ إﻗﺎﻣﺔ ﻗﺻﯾرة (ﺳﺎﻋﺎت ﻗﻟﯾﻟﺔ) أو طوﯾﻟﺔ اﻟﻣدة (اﻟﺗﻲ ﻗد ﺗﮐون ﻓﻲ ﺑﻌض اﻷﺣﯾﺎن ﻏﯾر ﻣﺣددة). بينما في الماضي ، كانت الوحدات الهامة في نظام HIS هي تلك التي تعاملت مع جوانب إدارة الإيرادات ، إلا أن الاتجاه الأخير يرى تركيزًا متزايدًا على تحسين الكفاءة الكلية والإدارة السريرية. وتجدر الإشارة هنا إلى أنه في حين أن بعض الوحدات الطبية مطلوبة من قبل جميع المؤسسات ، فإن متطلبات الآخرين تعتمد على حجم وتخصصات مؤسسة معينة.</p>'),
(4, 1, 'french', 'Un système d\'information hospitalier (HIS) est fondamentalement synonyme de système de', 'Un système d\'information hospitalier (HIS) est fondamentalement synonyme de système de', '<p>Un syst&egrave;me d\'information hospitalier (HIS) est fondamentalement synonyme de syst&egrave;me de gestion de l\'information utilis&eacute; dans les h&ocirc;pitaux. Les h&ocirc;pitaux g&eacute;n&egrave;rent une multitude de donn&eacute;es 24 heures sur 24, 365 jours par an, qui doivent tous &ecirc;tre bien g&eacute;r&eacute;s pour assurer un fonctionnement efficace. Les patients se rendent dans ces &eacute;tablissements pour des soins ambulatoires, en cas d\'urgence ou sont admis pour un s&eacute;jour de courte dur&eacute;e (quelques heures) ou de longue dur&eacute;e (parfois avec une dur&eacute;e ind&eacute;termin&eacute;e). Alors que par le pass&eacute;, les modules importants d\'un syst&egrave;me d\'information de sant&eacute; &eacute;taient g&eacute;n&eacute;ralement ceux qui traitaient de la gestion des revenus, la tendance r&eacute;cente met de plus en plus l\'accent sur l\'am&eacute;lioration de l\'efficacit&eacute; globale et de la gestion clinique. Il convient de noter ici que, si certains modules sont requis par tous les &eacute;tablissements cliniques, ceux-ci d&eacute;pendent de la taille et des sp&eacute;cialit&eacute;s couvertes par un &eacute;tablissement donn&eacute;.</p>'),
(5, 2, 'english', 'Benefits of Pediatric Teletherapy', 'therapist provides assessment, lesson plan, and treatment to various disorders using online platforms. ', '<p class=\"\">Teletherapy is a method of service delivery where a therapist provides assessment, lesson plan, and treatment to various disorders using online platforms.&nbsp;</p>\r\n<p class=\"\">Some of the benefits of pediatric teletherapy are:&nbsp;</p>\r\n<p class=\"\">1)&nbsp;&nbsp;&nbsp;&nbsp;Enables parent and child to take therapy sessions from the comfort of their home.</p>\r\n<p class=\"\">2)&nbsp;&nbsp;&nbsp;&nbsp;If your child&rsquo;s favorite therapists live in a different city, they can still connect with them through online platforms.</p>'),
(6, 2, 'french', 'Exigences générales - Un aperçu', 'En règle générale, le système doit être sûr et sécurisé du point de vue de la gestion des données.', '<p>Exigences g&eacute;n&eacute;rales - Un aper&ccedil;u<br />En r&egrave;gle g&eacute;n&eacute;rale, le syst&egrave;me doit &ecirc;tre s&ucirc;r et s&eacute;curis&eacute; du point de vue de la gestion des donn&eacute;es. Les donn&eacute;es hautement sensibles sont trait&eacute;es par de tels syst&egrave;mes et par cons&eacute;quent, le niveau de confort li&eacute; aux questions de confidentialit&eacute; et de s&eacute;curit&eacute; doit &ecirc;tre trait&eacute; de mani&egrave;re agressive. Le syst&egrave;me doit assurer une circulation efficace de l&rsquo;information qui assure un soutien interminist&eacute;riel &agrave; l&rsquo;&eacute;tablissement, une int&eacute;gration fonctionnelle et des processus, &ecirc;tre adaptable et flexible du point de vue de l&rsquo;utilisateur, et enfin et surtout, &ecirc;tre fond&eacute; sur des normes garantissant l&rsquo;interop&eacute;rabilit&eacute; en termes s&eacute;mantique et processus.</p>'),
(7, 2, 'arabic', 'المتطلبات العامة - نظرة عامة', 'بشكل عام ، يجب أن يكون النظام آمنًا ومأمونًا من وجهة نظر إدارة البيانات.', '<p>المتطلبات العامة - نظرة عامة<br />بشكل عام ، يجب أن يكون النظام آمنًا ومأمونًا من وجهة نظر إدارة البيانات. يتم التعامل مع البيانات الحساسة للغاية من قبل هذه الأنظمة ومن ثم يجب التعامل مع مستوى الراحة المتعلق بقضايا الخصوصية والسلامة بشكل مكثف. ينبغي أن يضمن النظام التدفق الفعال للمعلومات التي توفر الدعم المشترك بين الإدارات للتأسيس ، والتكامل الوظيفي والعملي ، وتكون قابلة للتكيف ومرنة من وجهة نظر المستخدم ، وأخيراً ، وليس أقلها ، تعتمد على المعايير لضمان قابلية التشغيل البيني من حيث التركيب النحوي ، الدلالي وعملية.</p>'),
(8, 2, 'bangla', 'সাধারণ প্রয়োজন - একটি সংক্ষিপ্ত বিবরণ', 'সাধারণত, সিস্টেমটি ডেটা ম্যানেজমেন্ট পয়েন্ট অফ ভিউ থেকে নিরাপদ এবং সুরক্ষিত হওয়া উচিত।', '<p>সাধারণ প্রয়োজন - একটি সংক্ষিপ্ত বিবরণ<br />সাধারণত, সিস্টেমটি ডেটা ম্যানেজমেন্ট পয়েন্ট অফ ভিউ থেকে নিরাপদ এবং সুরক্ষিত হওয়া উচিত। অত্যন্ত সংবেদনশীল তথ্য যেমন সিস্টেম দ্বারা পরিচালিত হয় এবং অতএব গোপনীয়তা এবং নিরাপত্তা বিষয়গুলির সাথে সান্ত্বনা স্তরের আক্রমণাত্মকভাবে মোকাবেলা করা প্রয়োজন। সিস্টেমটি কার্যকর দক্ষতা প্রবাহ নিশ্চিত করবে যা সংস্থান, কার্যকরী এবং প্রক্রিয়া ইন্টিগ্রেশনকে আন্তঃবিভাগীয় সহায়তা প্রদান করে, ব্যবহারকারীর দৃষ্টিকোণ থেকে অভিযোজিত এবং নমনীয় হতে পারে এবং অন্তত নয়, অন্তত, সিন্ট্যাকটিকের ক্ষেত্রে আন্তঃব্যবস্থা নিশ্চিত করার জন্য মান-ভিত্তিক হতে পারে। শব্দার্থিক এবং প্রক্রিয়া।</p>'),
(9, 5, 'bangla', 'একটি নতুন তথ্য সিস্টেম চালু করা হচ্ছে', 'যেখানে একটি ইতিমধ্যেই রয়েছে এবং সক্রিয়ভাবে ব্যবহৃত হচ্ছে', '<p>একটি নতুন তথ্য সিস্টেম চালু করা হচ্ছে, যেখানে একটি ইতিমধ্যেই রয়েছে এবং সক্রিয়ভাবে ব্যবহৃত হচ্ছে, পরিবর্তন ব্যবস্থার একটি নির্দিষ্ট ডিগ্রী প্রয়োজন কারণ এই নতুন সিস্টেমটি কাজ করার একটি \'নতুন উপায়\' প্রতিফলিত করে।</p>'),
(10, 5, 'english', 'How to effectively treat Childhood Apraxia of speech', 'Evidence based approaches in treating CAS', '<p class=\"\">This blog aims to help SLP&rsquo;s who work with children with childhood apraxia of speech. To make it simple and easy to understand I have divided this article into two parts.</p>\r\n<p class=\"\"><strong>PART - I: Evidence based approaches in treating CAS</strong></p>\r\n<p class=\"\"><strong>PART - II: Five steps to make treating CAS easy, predictable and more successful</strong>.&nbsp;</p>'),
(11, 5, 'arabic', 'يتطلب تقديم نظام معلومات جديد ', 'حيث يوجد بالفعل موضع التطبيق ويستخدم بنشاط', '<p>يتطلب تقديم نظام معلومات جديد ، حيث يوجد بالفعل موضع التطبيق ويستخدم بنشاط ، درجة معينة من إدارة التغيير حيث يعكس هذا النظام الجديد \"طريقة جديدة\" للعمل.</p>'),
(12, 5, 'french', 'L’introduction d’un nouveau système d’information', ' là où un système existe déjà et est activement utilisé', '<p>L&rsquo;introduction d&rsquo;un nouveau syst&egrave;me d&rsquo;information, l&agrave; o&ugrave; un syst&egrave;me existe d&eacute;j&agrave; et est activement utilis&eacute;, n&eacute;cessite un certain degr&eacute; de gestion du changement, car ce nouveau syst&egrave;me refl&egrave;te une &laquo;nouvelle fa&ccedil;on de travailler&raquo;.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `ws_testimonial`
--

CREATE TABLE `ws_testimonial` (
  `id` int(6) NOT NULL,
  `author_name` varchar(35) NOT NULL,
  `url` varchar(120) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_testimonial`
--

INSERT INTO `ws_testimonial` (`id`, `author_name`, `url`, `image`, `status`) VALUES
(1, 'Ms. Chitra Thadathil', 'http://localhost/dimensions/about', 'assets_web/img/testimonial/19c710f60c6ed2d7ed84b00d22b4c7af.jpg', 1),
(2, 'Ashraf Rahman', 'www.bdtask.com', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ws_testimonial_lang`
--

CREATE TABLE `ws_testimonial_lang` (
  `id` int(11) NOT NULL,
  `tstml_id` int(11) NOT NULL,
  `language` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `quotation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_testimonial_lang`
--

INSERT INTO `ws_testimonial_lang` (`id`, `tstml_id`, `language`, `title`, `author_name`, `quotation`) VALUES
(1, 2, 'english', '`BDtask@CEO`', 'Ashraf Rahman', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever'),
(2, 2, 'arabic', 'BDtask@CEO', 'Ashraf Rahman', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s'),
(3, 1, 'english', 'Director@DCCD', 'Ms. Chitra Thadathil', 'Ms. Chitra Thadathil, MSc (Speech and Hearing), is a speech-language pathologist, renowned expert in Oral Sensory Motor Therapy, and the owner and director of Dimensions Centre for Child Development.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `acm_account`
--
ALTER TABLE `acm_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acm_invoice`
--
ALTER TABLE `acm_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acm_invoice_details`
--
ALTER TABLE `acm_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acm_payment`
--
ALTER TABLE `acm_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  ADD PRIMARY KEY (`account_tran_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Index 3` (`bill_id`),
  ADD KEY `Index 2` (`admission_id`);

--
-- Indexes for table `bill_admission`
--
ALTER TABLE `bill_admission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Index 2` (`admission_id`);

--
-- Indexes for table `bill_advanced`
--
ALTER TABLE `bill_advanced`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ipd_bill_advanced_ipd_admission` (`admission_id`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Key As Bill_ID` (`bill_id`),
  ADD KEY `Admission ID` (`admission_id`);

--
-- Indexes for table `bill_package`
--
ALTER TABLE `bill_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_service`
--
ALTER TABLE `bill_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bm_bed`
--
ALTER TABLE `bm_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bm_bed_assign`
--
ALTER TABLE `bm_bed_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bm_bed_transfer`
--
ALTER TABLE `bm_bed_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bm_room`
--
ALTER TABLE `bm_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cm_patient`
--
ALTER TABLE `cm_patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cm_status`
--
ALTER TABLE `cm_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_sms_info`
--
ALTER TABLE `custom_sms_info`
  ADD PRIMARY KEY (`custom_sms_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dprt_id`);

--
-- Indexes for table `department_lang`
--
ALTER TABLE `department_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `ha_birth`
--
ALTER TABLE `ha_birth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ha_category`
--
ALTER TABLE `ha_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ha_death`
--
ALTER TABLE `ha_death`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ha_investigation`
--
ALTER TABLE `ha_investigation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ha_medicine`
--
ALTER TABLE `ha_medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ha_operation`
--
ALTER TABLE `ha_operation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inc_insurance`
--
ALTER TABLE `inc_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inc_limit_approval`
--
ALTER TABLE `inc_limit_approval`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_setting`
--
ALTER TABLE `mail_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_department`
--
ALTER TABLE `main_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_department_lang`
--
ALTER TABLE `main_department_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `package_fk0` (`package_status`);

--
-- Indexes for table `package_orders`
--
ALTER TABLE `package_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `package_orders_appointments`
--
ALTER TABLE `package_orders_appointments`
  ADD PRIMARY KEY (`package_order_appoinment_id`);

--
-- Indexes for table `package_prices`
--
ALTER TABLE `package_prices`
  ADD PRIMARY KEY (`package_price_id`),
  ADD KEY `package_prices_fk0` (`package_id`),
  ADD KEY `package_prices_fk1` (`status`);

--
-- Indexes for table `package_renewals`
--
ALTER TABLE `package_renewals`
  ADD PRIMARY KEY (`package_renewal_id`);

--
-- Indexes for table `package_slots`
--
ALTER TABLE `package_slots`
  ADD PRIMARY KEY (`package_slot_id`),
  ADD KEY `package_slots_fk0` (`package_id`),
  ADD KEY `package_slots_fk1` (`status`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pa_visit`
--
ALTER TABLE `pa_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pr_case_study`
--
ALTER TABLE `pr_case_study`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pr_prescription`
--
ALTER TABLE `pr_prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `sec_role`
--
ALTER TABLE `sec_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sms_delivery`
--
ALTER TABLE `sms_delivery`
  ADD PRIMARY KEY (`sms_delivery_id`);

--
-- Indexes for table `sms_gateway`
--
ALTER TABLE `sms_gateway`
  ADD PRIMARY KEY (`gateway_id`);

--
-- Indexes for table `sms_info`
--
ALTER TABLE `sms_info`
  ADD PRIMARY KEY (`sms_info_id`);

--
-- Indexes for table `sms_schedule`
--
ALTER TABLE `sms_schedule`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `sms_setting`
--
ALTER TABLE `sms_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_teamplate`
--
ALTER TABLE `sms_teamplate`
  ADD PRIMARY KEY (`teamplate_id`);

--
-- Indexes for table `sms_users`
--
ALTER TABLE `sms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `sub_module`
--
ALTER TABLE `sub_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_lang`
--
ALTER TABLE `user_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_language`
--
ALTER TABLE `user_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_leaves`
--
ALTER TABLE `user_leaves`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `user_leave_balance`
--
ALTER TABLE `user_leave_balance`
  ADD PRIMARY KEY (`leave_balance_id`);

--
-- Indexes for table `user_leave_manager`
--
ALTER TABLE `user_leave_manager`
  ADD PRIMARY KEY (`leave_manager_mapping_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_about`
--
ALTER TABLE `ws_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_appoint_instruction`
--
ALTER TABLE `ws_appoint_instruction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_banner`
--
ALTER TABLE `ws_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_basic`
--
ALTER TABLE `ws_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_menu`
--
ALTER TABLE `ws_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_menu_lang`
--
ALTER TABLE `ws_menu_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_news`
--
ALTER TABLE `ws_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_news_language`
--
ALTER TABLE `ws_news_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_page_content`
--
ALTER TABLE `ws_page_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_partner`
--
ALTER TABLE `ws_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_section`
--
ALTER TABLE `ws_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_section_lang`
--
ALTER TABLE `ws_section_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_service`
--
ALTER TABLE `ws_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_setting`
--
ALTER TABLE `ws_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_slider`
--
ALTER TABLE `ws_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_slider_lang`
--
ALTER TABLE `ws_slider_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_testimonial`
--
ALTER TABLE `ws_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_testimonial_lang`
--
ALTER TABLE `ws_testimonial_lang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acm_account`
--
ALTER TABLE `acm_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acm_invoice`
--
ALTER TABLE `acm_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acm_invoice_details`
--
ALTER TABLE `acm_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acm_payment`
--
ALTER TABLE `acm_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  MODIFY `account_tran_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_admission`
--
ALTER TABLE `bill_admission`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_advanced`
--
ALTER TABLE `bill_advanced`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_package`
--
ALTER TABLE `bill_package`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_service`
--
ALTER TABLE `bill_service`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bm_bed`
--
ALTER TABLE `bm_bed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bm_bed_assign`
--
ALTER TABLE `bm_bed_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bm_bed_transfer`
--
ALTER TABLE `bm_bed_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bm_room`
--
ALTER TABLE `bm_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cm_patient`
--
ALTER TABLE `cm_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cm_status`
--
ALTER TABLE `cm_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_sms_info`
--
ALTER TABLE `custom_sms_info`
  MODIFY `custom_sms_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dprt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `department_lang`
--
ALTER TABLE `department_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ha_birth`
--
ALTER TABLE `ha_birth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ha_category`
--
ALTER TABLE `ha_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ha_death`
--
ALTER TABLE `ha_death`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ha_investigation`
--
ALTER TABLE `ha_investigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ha_medicine`
--
ALTER TABLE `ha_medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ha_operation`
--
ALTER TABLE `ha_operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inc_insurance`
--
ALTER TABLE `inc_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inc_limit_approval`
--
ALTER TABLE `inc_limit_approval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=832;

--
-- AUTO_INCREMENT for table `mail_setting`
--
ALTER TABLE `mail_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_department`
--
ALTER TABLE `main_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_department_lang`
--
ALTER TABLE `main_department_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package_orders`
--
ALTER TABLE `package_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `package_orders_appointments`
--
ALTER TABLE `package_orders_appointments`
  MODIFY `package_order_appoinment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `package_prices`
--
ALTER TABLE `package_prices`
  MODIFY `package_price_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_renewals`
--
ALTER TABLE `package_renewals`
  MODIFY `package_renewal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_slots`
--
ALTER TABLE `package_slots`
  MODIFY `package_slot_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pa_visit`
--
ALTER TABLE `pa_visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pr_case_study`
--
ALTER TABLE `pr_case_study`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pr_prescription`
--
ALTER TABLE `pr_prescription`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3989;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `sec_role`
--
ALTER TABLE `sec_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_delivery`
--
ALTER TABLE `sms_delivery`
  MODIFY `sms_delivery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_gateway`
--
ALTER TABLE `sms_gateway`
  MODIFY `gateway_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_info`
--
ALTER TABLE `sms_info`
  MODIFY `sms_info_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_schedule`
--
ALTER TABLE `sms_schedule`
  MODIFY `ss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_setting`
--
ALTER TABLE `sms_setting`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_teamplate`
--
ALTER TABLE `sms_teamplate`
  MODIFY `teamplate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_users`
--
ALTER TABLE `sms_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_lang`
--
ALTER TABLE `user_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_language`
--
ALTER TABLE `user_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_leaves`
--
ALTER TABLE `user_leaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_leave_balance`
--
ALTER TABLE `user_leave_balance`
  MODIFY `leave_balance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_leave_manager`
--
ALTER TABLE `user_leave_manager`
  MODIFY `leave_manager_mapping_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `ws_about`
--
ALTER TABLE `ws_about`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ws_appoint_instruction`
--
ALTER TABLE `ws_appoint_instruction`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ws_banner`
--
ALTER TABLE `ws_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ws_basic`
--
ALTER TABLE `ws_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ws_menu`
--
ALTER TABLE `ws_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ws_menu_lang`
--
ALTER TABLE `ws_menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `ws_news`
--
ALTER TABLE `ws_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ws_news_language`
--
ALTER TABLE `ws_news_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ws_page_content`
--
ALTER TABLE `ws_page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ws_partner`
--
ALTER TABLE `ws_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ws_section`
--
ALTER TABLE `ws_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ws_section_lang`
--
ALTER TABLE `ws_section_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ws_service`
--
ALTER TABLE `ws_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ws_setting`
--
ALTER TABLE `ws_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ws_slider`
--
ALTER TABLE `ws_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ws_slider_lang`
--
ALTER TABLE `ws_slider_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ws_testimonial`
--
ALTER TABLE `ws_testimonial`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ws_testimonial_lang`
--
ALTER TABLE `ws_testimonial_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `FK_ipd_bill_ipd_admission` FOREIGN KEY (`admission_id`) REFERENCES `bill_admission` (`admission_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `bill_advanced`
--
ALTER TABLE `bill_advanced`
  ADD CONSTRAINT `FK_ipd_bill_advanced_ipd_admission` FOREIGN KEY (`admission_id`) REFERENCES `bill_admission` (`admission_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `fk_ipd_bill_details_ipd_admission` FOREIGN KEY (`admission_id`) REFERENCES `bill_admission` (`admission_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ipd_bill_details_ipd_bill` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_fk0` FOREIGN KEY (`package_status`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `package_prices`
--
ALTER TABLE `package_prices`
  ADD CONSTRAINT `package_prices_fk0` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  ADD CONSTRAINT `package_prices_fk1` FOREIGN KEY (`status`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `package_slots`
--
ALTER TABLE `package_slots`
  ADD CONSTRAINT `package_slots_fk0` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  ADD CONSTRAINT `package_slots_fk1` FOREIGN KEY (`status`) REFERENCES `status` (`status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
