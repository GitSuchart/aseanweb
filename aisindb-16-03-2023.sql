-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2023 at 08:06 AM
-- Server version: 5.7.33-0ubuntu0.16.04.1-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aisindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutColumns`
--

CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AreaLayoutColumns`
--

INSERT INTO `AreaLayoutColumns` (`arLayoutColumnID`, `arLayoutID`, `arLayoutColumnIndex`, `arID`, `arLayoutColumnDisplayID`) VALUES
(1, 1, 0, 2, 1),
(2, 1, 1, 3, 2),
(3, 1, 2, 4, 3),
(4, 2, 0, 5, 4),
(5, 2, 1, 6, 5),
(6, 3, 0, 7, 6),
(7, 3, 1, 8, 7),
(8, 3, 2, 9, 8),
(9, 4, 0, 11, 9),
(10, 5, 0, 12, 10),
(11, 6, 0, 14, 11),
(12, 7, 0, 15, 12);

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutCustomColumns`
--

CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutPresets`
--

CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayouts`
--

CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `arLayoutSpacing` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AreaLayouts`
--

INSERT INTO `AreaLayouts` (`arLayoutID`, `arLayoutSpacing`, `arLayoutIsCustom`, `arLayoutIsPreset`, `arLayoutMaxColumns`, `arLayoutUsesThemeGridFramework`) VALUES
(1, 0, 0, 0, 12, 1),
(2, 0, 0, 0, 12, 1),
(3, 0, 0, 0, 12, 1),
(4, 0, 0, 0, 12, 1),
(5, 0, 0, 0, 12, 1),
(6, 0, 0, 0, 12, 1),
(7, 0, 0, 0, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutsUsingPresets`
--

CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnSpan` int(10) UNSIGNED DEFAULT '0',
  `arLayoutColumnOffset` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AreaLayoutThemeGridColumns`
--

INSERT INTO `AreaLayoutThemeGridColumns` (`arLayoutColumnID`, `arLayoutColumnSpan`, `arLayoutColumnOffset`) VALUES
(1, 4, 0),
(2, 4, 0),
(3, 4, 0),
(4, 4, 0),
(5, 8, 0),
(6, 4, 0),
(7, 4, 0),
(8, 4, 0),
(9, 12, 0),
(10, 12, 0),
(11, 12, 0),
(12, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionAssignments`
--

CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Areas`
--

CREATE TABLE `Areas` (
  `arID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Areas`
--

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1, 170, 'Main', 0, 0, 0, 0),
(2, 170, 'Main : 1', 0, 0, 0, 1),
(3, 170, 'Main : 2', 0, 0, 0, 1),
(4, 170, 'Main : 3', 0, 0, 0, 1),
(5, 170, 'Main : 4', 0, 0, 0, 1),
(6, 170, 'Main : 5', 0, 0, 0, 1),
(7, 170, 'Main : 6', 0, 0, 0, 1),
(8, 170, 'Main : 7', 0, 0, 0, 1),
(9, 170, 'Main : 8', 0, 0, 0, 1),
(10, 171, 'Main', 0, 0, 0, 0),
(11, 171, 'Main : 9', 0, 0, 0, 10),
(12, 171, 'Main : 10', 0, 0, 0, 10),
(13, 184, 'Main', 0, 0, 0, 0),
(14, 184, 'Main : 11', 0, 0, 0, 13),
(15, 184, 'Main : 12', 0, 0, 0, 13),
(16, 185, 'Main', 0, 0, 0, 0),
(21, 1, 'Main', 0, 0, 0, 0),
(22, 1, 'Page Footer', 0, 0, 0, 0),
(39, 175, 'Disclaimer', 0, 0, 0, 0),
(55, 246, 'Main', 0, 0, 0, 0),
(56, 1, 'Header Site Title', 0, 0, 1, 0),
(57, 247, 'Main', 0, 0, 0, 0),
(58, 1, 'Header Navigation', 0, 0, 1, 0),
(59, 248, 'Main', 0, 0, 0, 0),
(60, 1, 'Footer Legal', 0, 0, 1, 0),
(61, 249, 'Main', 0, 0, 0, 0),
(62, 1, 'Footer Navigation', 0, 0, 1, 0),
(63, 250, 'Main', 0, 0, 0, 0),
(64, 1, 'Footer Contact', 0, 0, 1, 0),
(65, 173, 'Header Site Title', 0, 0, 1, 0),
(66, 173, 'Header Navigation', 0, 0, 1, 0),
(67, 173, 'Footer Legal', 0, 0, 1, 0),
(68, 173, 'Footer Navigation', 0, 0, 1, 0),
(69, 173, 'Footer Contact', 0, 0, 1, 0),
(70, 251, 'Main', 0, 0, 0, 0),
(71, 1, 'Header: Navigation TH', 0, 0, 1, 0),
(72, 252, 'Main', 0, 0, 0, 0),
(73, 1, 'Header: Search TH', 0, 0, 1, 0),
(74, 253, 'Main', 0, 0, 0, 0),
(75, 1, 'Header: Navigation OtherTH', 0, 0, 1, 0),
(76, 1, 'content', 0, 0, 0, 0),
(77, 1, 'content grid', 0, 0, 0, 0),
(78, 254, 'Main', 0, 0, 0, 0),
(79, 1, 'Footer: Social TH', 0, 0, 1, 0),
(80, 255, 'Main', 0, 0, 0, 0),
(81, 1, 'Footer: Navigation TH', 0, 0, 1, 0),
(82, 256, 'Main', 0, 0, 0, 0),
(83, 1, 'Footer: Copyright TH', 0, 0, 1, 0),
(84, 1, 'Home Page: Highlight - Video', 0, 0, 0, 0),
(85, 1, 'Home Page: Highlight - Content', 0, 0, 0, 0),
(86, 257, 'Main', 0, 0, 0, 0),
(87, 258, 'Main', 0, 0, 0, 0),
(88, 259, 'Main', 0, 0, 0, 0),
(89, 260, 'Main', 0, 0, 0, 0),
(90, 261, 'Main', 0, 0, 0, 0),
(91, 262, 'Main', 0, 0, 0, 0),
(92, 263, 'Main', 0, 0, 0, 0),
(93, 264, 'Main', 0, 0, 0, 0),
(94, 265, 'Main', 0, 0, 0, 0),
(95, 266, 'Main', 0, 0, 0, 0),
(96, 267, 'Main', 0, 0, 0, 0),
(97, 268, 'Main', 0, 0, 0, 0),
(98, 269, 'Main', 0, 0, 0, 0),
(99, 270, 'Main', 0, 0, 0, 0),
(100, 271, 'Main', 0, 0, 0, 0),
(101, 272, 'Main', 0, 0, 0, 0),
(102, 273, 'Main', 0, 0, 0, 0),
(103, 274, 'Main', 0, 0, 0, 0),
(104, 275, 'Main', 0, 0, 0, 0),
(105, 276, 'Main', 0, 0, 0, 0),
(106, 277, 'Main', 0, 0, 0, 0),
(107, 278, 'Main', 0, 0, 0, 0),
(108, 279, 'Main', 0, 0, 0, 0),
(109, 280, 'Main', 0, 0, 0, 0),
(110, 281, 'Main', 0, 0, 0, 0),
(111, 282, 'Main', 0, 0, 0, 0),
(112, 283, 'Main', 0, 0, 0, 0),
(113, 284, 'Main', 0, 0, 0, 0),
(114, 285, 'Main', 0, 0, 0, 0),
(115, 286, 'Main', 0, 0, 0, 0),
(116, 287, 'Main', 0, 0, 0, 0),
(117, 288, 'Main', 0, 0, 0, 0),
(118, 260, 'Header: Navigation TH', 0, 0, 1, 0),
(119, 260, 'Header: Search TH', 0, 0, 1, 0),
(120, 260, 'Header: Navigation OtherTH', 0, 0, 1, 0),
(121, 260, 'content', 0, 0, 0, 0),
(122, 260, 'content grid', 0, 0, 0, 0),
(123, 260, 'Footer: Social TH', 0, 0, 1, 0),
(124, 260, 'Footer: Navigation TH', 0, 0, 1, 0),
(125, 260, 'Footer: Copyright TH', 0, 0, 1, 0),
(126, 258, 'Header: Navigation TH', 0, 0, 1, 0),
(127, 258, 'Header: Search TH', 0, 0, 1, 0),
(128, 258, 'Header: Navigation OtherTH', 0, 0, 1, 0),
(129, 258, 'content', 0, 0, 0, 0),
(130, 258, 'content grid', 0, 0, 0, 0),
(131, 258, 'Footer: Social TH', 0, 0, 1, 0),
(132, 258, 'Footer: Navigation TH', 0, 0, 1, 0),
(133, 258, 'Footer: Copyright TH', 0, 0, 1, 0),
(134, 296, 'Main', 0, 0, 0, 0),
(135, 297, 'Main', 0, 0, 0, 0),
(136, 298, 'Main', 0, 0, 0, 0),
(137, 299, 'Main', 0, 0, 0, 0),
(138, 1, 'Home Page: Intro - Video', 0, 0, 0, 0),
(139, 1, 'Home Page: Intro - Content 1', 0, 0, 0, 0),
(140, 1, 'Home Page: Intro - Content 2', 0, 0, 0, 0),
(141, 1, 'Home Page: Newsroom - List', 0, 0, 0, 0),
(142, 1, 'Home Page: Newsroom - Content', 0, 0, 0, 0),
(143, 1, 'Home Page: About Us - Background', 0, 0, 0, 0),
(144, 1, 'Home Page: About Us - Content', 0, 0, 0, 0),
(145, 1, 'Home Page: Products & Services - Background', 0, 0, 0, 0),
(146, 1, 'Home Page: Products & Services - Content', 0, 0, 0, 0),
(147, 1, 'Home Page: Sustainability - Video', 0, 0, 0, 0),
(148, 1, 'Home Page: Sustainability - Content', 0, 0, 0, 0),
(149, 1, 'Home Page: Career - Content', 0, 0, 0, 0),
(150, 1, 'Home Page: Career - Image', 0, 0, 0, 0),
(151, 1, 'Home Page: Contact - video', 0, 0, 0, 0),
(152, 1, 'Home Page: Contact - Content', 0, 0, 0, 0),
(153, 1, 'Home Page: Products & Services - Video', 0, 0, 0, 0),
(154, 1, 'Home Page: Career - Title', 0, 0, 0, 0),
(155, 261, 'Header: Navigation TH', 0, 0, 1, 0),
(156, 261, 'Header: Search TH', 0, 0, 1, 0),
(157, 261, 'Header: Navigation OtherTH', 0, 0, 1, 0),
(158, 261, 'content', 0, 0, 0, 0),
(159, 261, 'content grid', 0, 0, 0, 0),
(160, 261, 'Footer: Social TH', 0, 0, 1, 0),
(161, 261, 'Footer: Navigation TH', 0, 0, 1, 0),
(162, 261, 'Footer: Copyright TH', 0, 0, 1, 0),
(163, 265, 'Header: Navigation TH', 0, 0, 1, 0),
(164, 265, 'Header: Search TH', 0, 0, 1, 0),
(165, 265, 'Header: Navigation OtherTH', 0, 0, 1, 0),
(166, 265, 'content', 0, 0, 0, 0),
(167, 265, 'content grid', 0, 0, 0, 0),
(168, 265, 'Footer: Social TH', 0, 0, 1, 0),
(169, 265, 'Footer: Navigation TH', 0, 0, 1, 0),
(170, 265, 'Footer: Copyright TH', 0, 0, 1, 0),
(171, 264, 'Header: Navigation TH', 0, 0, 1, 0),
(172, 264, 'Header: Search TH', 0, 0, 1, 0),
(173, 264, 'Header: Navigation OtherTH', 0, 0, 1, 0),
(174, 264, 'content', 0, 0, 0, 0),
(175, 264, 'content grid', 0, 0, 0, 0),
(176, 264, 'Footer: Social TH', 0, 0, 1, 0),
(177, 264, 'Footer: Navigation TH', 0, 0, 1, 0),
(178, 264, 'Footer: Copyright TH', 0, 0, 1, 0),
(179, 263, 'Header: Navigation TH', 0, 0, 1, 0),
(180, 263, 'Header: Search TH', 0, 0, 1, 0),
(181, 263, 'Header: Navigation OtherTH', 0, 0, 1, 0),
(182, 263, 'content', 0, 0, 0, 0),
(183, 263, 'content grid', 0, 0, 0, 0),
(184, 263, 'Footer: Social TH', 0, 0, 1, 0),
(185, 263, 'Footer: Navigation TH', 0, 0, 1, 0),
(186, 263, 'Footer: Copyright TH', 0, 0, 1, 0),
(187, 262, 'Header: Navigation TH', 0, 0, 1, 0),
(188, 262, 'Header: Search TH', 0, 0, 1, 0),
(189, 262, 'Header: Navigation OtherTH', 0, 0, 1, 0),
(190, 262, 'content', 0, 0, 0, 0),
(191, 262, 'content grid', 0, 0, 0, 0),
(192, 262, 'Footer: Social TH', 0, 0, 1, 0),
(193, 262, 'Footer: Navigation TH', 0, 0, 1, 0),
(194, 262, 'Footer: Copyright TH', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `atAddress`
--

CREATE TABLE `atAddress` (
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atAddressSettings`
--

CREATE TABLE `atAddressSettings` (
  `akDefaultCountry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akHasCustomCountries` tinyint(1) NOT NULL,
  `customCountries` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `akGeolocateCountry` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atBoolean`
--

CREATE TABLE `atBoolean` (
  `value` tinyint(1) NOT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atBoolean`
--

INSERT INTO `atBoolean` (`value`, `avID`) VALUES
(1, 9),
(1, 17),
(1, 19),
(1, 25),
(1, 26),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 49),
(1, 50),
(1, 67),
(1, 70),
(1, 71),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 92),
(1, 130),
(1, 143),
(0, 144),
(1, 147),
(1, 151),
(1, 152),
(1, 153),
(1, 154),
(1, 155),
(1, 156),
(1, 157),
(1, 158),
(1, 159),
(1, 160),
(1, 161),
(1, 162),
(1, 163),
(1, 164),
(1, 165),
(1, 166),
(1, 167),
(1, 168),
(1, 169),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 184),
(1, 185),
(0, 187),
(0, 188),
(1, 194),
(1, 211),
(1, 214),
(1, 217),
(1, 220),
(1, 223),
(1, 226),
(1, 229),
(1, 232),
(1, 233),
(1, 234),
(1, 235),
(1, 236),
(1, 259),
(1, 263),
(1, 266),
(1, 270),
(1, 274),
(1, 278),
(1, 282),
(1, 286),
(1, 290);

-- --------------------------------------------------------

--
-- Table structure for table `atBooleanSettings`
--

CREATE TABLE `atBooleanSettings` (
  `akCheckedByDefault` tinyint(1) NOT NULL,
  `checkboxLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atBooleanSettings`
--

INSERT INTO `atBooleanSettings` (`akCheckedByDefault`, `checkboxLabel`, `akID`) VALUES
(0, NULL, 5),
(1, 'Exclude Page from Navigation', 7),
(0, 'Exclude Page from Page List Blocks', 8),
(0, 'Feature this Page', 11),
(0, NULL, 12),
(0, NULL, 13),
(1, NULL, 14),
(1, NULL, 15),
(0, NULL, 20),
(1, 'Child Page Navigation Column', 22);

-- --------------------------------------------------------

--
-- Table structure for table `atDateTime`
--

CREATE TABLE `atDateTime` (
  `value` datetime DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDateTimeSettings`
--

CREATE TABLE `atDateTimeSettings` (
  `akUseNowIfEmpty` tinyint(1) NOT NULL DEFAULT '0',
  `akDateDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akTextCustomFormat` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Custom format for text inputs',
  `akTimeResolution` int(10) UNSIGNED NOT NULL DEFAULT '60' COMMENT 'Time resolution (in seconds)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDefault`
--

CREATE TABLE `atDefault` (
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atDefault`
--

INSERT INTO `atDefault` (`value`, `avID`) VALUES
('fa fa-th-large', 1),
('pages, add page, delete page, copy, move, alias', 2),
('pages, add page, delete page, copy, move, alias', 3),
('pages, add page, delete page, copy, move, alias, bulk', 4),
('find page, search page, search, find, pages, sitemap', 5),
('add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 6),
('file, file attributes, title, attribute, description, rename', 7),
('files, category, categories', 8),
('new file set', 10),
('users, groups, people, find, delete user, remove user, change password, password', 11),
('find, search, people, delete user, remove user, change password, password', 12),
('user, group, people, permissions, expire, badges', 13),
('user, group, people, messages', 14),
('user attributes, user data, gather data, registration data', 15),
('new user, create', 16),
('new user group, new group, group, create', 18),
('group set', 20),
('forms, log, error, email, mysql, exception, survey', 23),
('forms, questions, response, data', 24),
('questions, quiz, response', 27),
('forms, log, error, email, mysql, exception, survey, history', 28),
('changes, csv, report', 29),
('new theme, theme, active theme, change theme, template, css', 30),
('page types', 31),
('page attributes, custom', 40),
('single, page, custom, application', 41),
('atom, rss, feed, syndication', 42),
('icon-bullhorn', 47),
('stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 48),
('edit stacks, view stacks, all stacks', 51),
('block, refresh, custom', 52),
('add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', 53),
('add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', 54),
('update, upgrade', 55),
('concretecms.org, my account, marketplace', 56),
('buy theme, new theme, marketplace, template', 57),
('buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', 58),
('dashboard, configuration', 59),
('website name, title', 60),
('accessibility, easy mode', 61),
('sharing, facebook, twitter', 62),
('logo, favicon, iphone, icon, bookmark', 63),
('tinymce, content block, fonts, editor, content, overlay', 64),
('translate, translation, internationalization, multilingual', 65),
('languages, update, gettext, translation, translate', 66),
('timezone, profile, locale', 68),
('site attributes', 69),
('checkin, check-in, check, force', 72),
('multilingual, localization, internationalization, i18n', 83),
('vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', 84),
('bulk, seo, change keywords, engine, optimization, search', 85),
('traffic, statistics, google analytics, quant, pageviews, hits', 86),
('pretty, slug', 87),
('configure search, site search, search option', 88),
('security, files, media, extension, manager, upload', 89),
('file options, file manager, upload, modify', 90),
('images, picture, responsive, retina', 91),
('thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency', 93),
('uploading, upload, images, image, resizing, manager, exif, rotation, rotate, quality, compression, png, jpg, jpeg', 94),
('security, alternate storage, hide files', 95),
('files, export, csv, bom, encoding', 96),
('cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', 97),
('cache option, turn off cache, no cache, page cache, caching', 98),
('index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', 99),
('editors, hide site, offline, private, public, access', 100),
('security, actions, administrator, admin, package, marketplace, search', 101),
('security, registration', 105),
('antispam, block spam, security', 106),
('lock site, under construction, hide, hidden', 107),
('trusted, proxy, proxies, ip, header, cloudflare', 108),
('signup, new user, community, public registration, public, registration', 109),
('profile, login, redirect, specific, dashboard, administrators', 110),
('member profile, member page, community, forums, social, avatar', 111),
('auth, authentication, types, oauth, facebook, login, registration', 112),
('global, password, reset, change password, force, sign out', 113),
('login, logout, user, agent, ip, change, security, session, invalidation, invalid', 114),
('password, requirements, code, key, login, registration, security, nist', 115),
('session, options', 116),
('smtp, mail settings', 117),
('email server, mail settings, mail configuration, external, internal', 118),
('test smtp, test mail', 119),
('email server, mail settings, mail configuration, private message, message system, import, email, message', 120),
('mail settings, mail configuration, email, sender', 121),
('conversations', 122),
('conversations', 123),
('conversations ratings, ratings, community, community points', 124),
('conversations bad words, banned words, banned, bad words, bad, words, list', 125),
('attribute configuration', 126),
('attributes, types', 127),
('attributes, sets', 128),
('topics, tags, taxonomy', 129),
('overrides, system info, debug, support, help', 131),
('errors, exceptions, develop, support, help', 132),
('email, logging, logs, smtp, pop, errors, mysql, log', 133),
('network, proxy server', 134),
('database, entities, doctrine, orm', 135),
('database, character set, charset, collation, utf8', 136),
('geolocation, ip, address, country, nation, place, locate', 137),
('upgrade, new version, update', 138),
('API, programming, public, app', 139),
('fa fa-th', 145),
('fa fa-trash-o', 146),
('fa fa-briefcase', 148),
('fa fa-edit', 149),
('automated jobs, tasks, commands, console, cli', 177),
('processes, queues, jobs, running', 178),
('cron, scheduling', 179),
('websocket, socket, socket.io, push, push notifications, mercure', 180),
('waiting for me, inbox, notifications', 181),
('fas fa-palette', 182),
('security, lock ip, lock out, block ip, address, restrict, access', 183),
('security, content security policy, csp, strict transport security, hsts, x-frame-options', 186),
('files, upload, parallel, upload_max_filesize, post_max_size, limit, resize, chunk', 189);

-- --------------------------------------------------------

--
-- Table structure for table `atDuration`
--

CREATE TABLE `atDuration` (
  `value` int(11) DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDurationSettings`
--

CREATE TABLE `atDurationSettings` (
  `akUnitType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atEmptySettings`
--

CREATE TABLE `atEmptySettings` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atEmptySettings`
--

INSERT INTO `atEmptySettings` (`akID`) VALUES
(4),
(16),
(17),
(18),
(19);

-- --------------------------------------------------------

--
-- Table structure for table `atExpress`
--

CREATE TABLE `atExpress` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atExpressSelectedEntries`
--

CREATE TABLE `atExpressSelectedEntries` (
  `avID` int(10) UNSIGNED NOT NULL,
  `exEntryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atExpressSettings`
--

CREATE TABLE `atExpressSettings` (
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atFile`
--

CREATE TABLE `atFile` (
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atFile`
--

INSERT INTO `atFile` (`fID`, `avID`) VALUES
(4, 212),
(4, 216),
(4, 261),
(4, 265),
(4, 268),
(4, 272),
(5, 218),
(5, 276),
(6, 221),
(6, 280),
(7, 224),
(7, 284),
(8, 227),
(8, 288),
(9, 230),
(9, 292);

-- --------------------------------------------------------

--
-- Table structure for table `atFileSettings`
--

CREATE TABLE `atFileSettings` (
  `akFileManagerMode` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atFileSettings`
--

INSERT INTO `atFileSettings` (`akFileManagerMode`, `akID`) VALUES
(0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `atNumber`
--

CREATE TABLE `atNumber` (
  `value` decimal(14,4) DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atNumber`
--

INSERT INTO `atNumber` (`value`, `avID`) VALUES
('2.0000', 142),
('1.0000', 150),
('57.0000', 190),
('57.0000', 191),
('144.0000', 192),
('144.0000', 193),
('266.0000', 195),
('207.0000', 196),
('267.0000', 197),
('207.0000', 198),
('266.0000', 199),
('208.0000', 200),
('267.0000', 201),
('208.0000', 202),
('266.0000', 203),
('208.0000', 204),
('267.0000', 205),
('208.0000', 206),
('266.0000', 207),
('208.0000', 208),
('267.0000', 209),
('208.0000', 210),
('1600.0000', 237),
('900.0000', 238),
('1600.0000', 239),
('900.0000', 240),
('1600.0000', 241),
('900.0000', 242),
('909.0000', 243),
('900.0000', 244),
('1600.0000', 245),
('900.0000', 246),
('1600.0000', 247),
('672.0000', 248),
('800.0000', 249),
('672.0000', 250),
('100.0000', 251),
('100.0000', 252),
('100.0000', 253),
('100.0000', 254),
('100.0000', 255),
('100.0000', 256),
('100.0000', 257),
('100.0000', 258);

-- --------------------------------------------------------

--
-- Table structure for table `atSelect`
--

CREATE TABLE `atSelect` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atSelect`
--

INSERT INTO `atSelect` (`avID`) VALUES
(213),
(215),
(219),
(222),
(225),
(228),
(231),
(260),
(262),
(264),
(267),
(269),
(271),
(273),
(275),
(277),
(279),
(281),
(283),
(285),
(287),
(289),
(291),
(293);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectedSocialLinks`
--

CREATE TABLE `atSelectedSocialLinks` (
  `avsID` int(10) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceInfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectedTopics`
--

CREATE TABLE `atSelectedTopics` (
  `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptionLists`
--

CREATE TABLE `atSelectOptionLists` (
  `avSelectOptionListID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atSelectOptionLists`
--

INSERT INTO `atSelectOptionLists` (`avSelectOptionListID`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptions`
--

CREATE TABLE `atSelectOptions` (
  `avSelectOptionID` int(10) UNSIGNED NOT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atSelectOptions`
--

INSERT INTO `atSelectOptions` (`avSelectOptionID`, `isEndUserAdded`, `isDeleted`, `displayOrder`, `value`, `avSelectOptionListID`) VALUES
(1, 1, 0, 0, 'Carbon neutralily', 1),
(2, 1, 0, 0, 'Electrification', 1),
(3, 1, 0, 0, 'eAxle', 1),
(4, 1, 0, 0, 'Technology', 1),
(5, 1, 0, 4, 'Manufacturing', 1),
(6, 1, 0, 5, 'Aisin Group', 1),
(7, 0, 0, 0, 'Tech', 2),
(8, 0, 0, 1, 'Automotive', 2),
(9, 0, 0, 2, 'Business', 2);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptionsSelected`
--

CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) UNSIGNED NOT NULL,
  `avSelectOptionID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atSelectOptionsSelected`
--

INSERT INTO `atSelectOptionsSelected` (`avID`, `avSelectOptionID`) VALUES
(213, 1),
(213, 2),
(213, 3),
(213, 4),
(215, 1),
(215, 2),
(215, 3),
(215, 4),
(219, 1),
(219, 2),
(219, 3),
(219, 4),
(219, 5),
(222, 1),
(222, 2),
(222, 4),
(222, 6),
(225, 1),
(225, 2),
(225, 3),
(225, 4),
(228, 1),
(228, 2),
(228, 3),
(228, 4),
(228, 5),
(228, 6),
(231, 2),
(231, 4),
(231, 6),
(260, 1),
(260, 2),
(260, 3),
(260, 4),
(264, 1),
(264, 2),
(264, 3),
(264, 4),
(267, 1),
(267, 2),
(267, 3),
(267, 4),
(271, 1),
(271, 2),
(271, 3),
(271, 4),
(273, 7),
(275, 1),
(275, 2),
(275, 3),
(275, 4),
(275, 5),
(277, 8),
(279, 1),
(279, 2),
(279, 4),
(279, 6),
(281, 9),
(283, 1),
(283, 2),
(283, 3),
(283, 4),
(285, 8),
(287, 1),
(287, 2),
(287, 3),
(287, 4),
(287, 5),
(287, 6),
(289, 9),
(291, 2),
(291, 4),
(291, 6),
(293, 7);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectSettings`
--

CREATE TABLE `atSelectSettings` (
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL,
  `akSelectAllowOtherValues` tinyint(1) NOT NULL,
  `akHideNoneOption` tinyint(1) NOT NULL,
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akDisplayMultipleValuesOnSelect` tinyint(1) NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atSelectSettings`
--

INSERT INTO `atSelectSettings` (`akSelectAllowMultipleValues`, `akSelectAllowOtherValues`, `akHideNoneOption`, `akSelectOptionDisplayOrder`, `akDisplayMultipleValuesOnSelect`, `avSelectOptionListID`, `akID`) VALUES
(1, 1, 0, 'display_asc', 0, 1, 10),
(0, 0, 0, 'alpha_asc', 0, 2, 23);

-- --------------------------------------------------------

--
-- Table structure for table `atSite`
--

CREATE TABLE `atSite` (
  `siteID` int(10) UNSIGNED DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSocialLinks`
--

CREATE TABLE `atSocialLinks` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atTextareaSettings`
--

CREATE TABLE `atTextareaSettings` (
  `akTextareaDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atTextareaSettings`
--

INSERT INTO `atTextareaSettings` (`akTextareaDisplayMode`, `akID`) VALUES
('', 2),
('', 3),
('', 6),
('', 9);

-- --------------------------------------------------------

--
-- Table structure for table `atTextSettings`
--

CREATE TABLE `atTextSettings` (
  `akTextPlaceholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atTextSettings`
--

INSERT INTO `atTextSettings` (`akTextPlaceholder`, `akID`) VALUES
('', 1);

-- --------------------------------------------------------

--
-- Table structure for table `atTopic`
--

CREATE TABLE `atTopic` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atTopicSettings`
--

CREATE TABLE `atTopicSettings` (
  `akTopicParentNodeID` int(11) NOT NULL,
  `akTopicTreeID` int(11) NOT NULL,
  `akTopicAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '1',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeyCategories`
--

CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `akCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akCategoryAllowSets` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeKeyCategories`
--

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL),
(4, 'site', 1, NULL),
(5, 'event', 1, NULL),
(6, 'site_type', 1, NULL),
(7, 'express', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeys`
--

CREATE TABLE `AttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL,
  `akHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL,
  `akIsInternal` tinyint(1) NOT NULL,
  `akIsSearchableIndexed` tinyint(1) NOT NULL,
  `atID` int(10) UNSIGNED DEFAULT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `akCategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeKeys`
--

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsInternal`, `akIsSearchableIndexed`, `atID`, `akCategoryID`, `pkgID`, `akCategory`) VALUES
(1, 'meta_title', 'Meta Title', 1, 0, 0, 1, 1, NULL, 'pagekey'),
(2, 'meta_description', 'Meta Description', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(3, 'meta_keywords', 'Meta Keywords', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(4, 'desktop_priority', 'Desktop Priority', 1, 1, 0, 6, 1, NULL, 'pagekey'),
(5, 'is_desktop', 'Is Desktop', 1, 1, 0, 3, 1, NULL, 'pagekey'),
(6, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 2, 1, NULL, 'pagekey'),
(7, 'exclude_nav', 'Exclude From Nav', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(8, 'exclude_page_list', 'Exclude From Page List', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(9, 'header_extra_content', 'Header Extra Content', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(10, 'tags', 'Tags', 1, 0, 1, 7, 1, NULL, 'pagekey'),
(11, 'is_featured', 'Is Featured', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(12, 'exclude_search_index', 'Exclude From Search Index', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(13, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(14, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 0, 0, 3, 2, NULL, 'userkey'),
(15, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 0, 0, 3, 2, NULL, 'userkey'),
(16, 'width', 'Width', 1, 0, 0, 6, 3, NULL, 'filekey'),
(17, 'height', 'Height', 1, 0, 0, 6, 3, NULL, 'filekey'),
(18, 'account_profile_links', 'Personal Links', 1, 0, 0, 14, 2, NULL, 'userkey'),
(19, 'duration', 'Duration', 1, 0, 0, 6, 3, NULL, 'filekey'),
(20, 'exclude_subpages_from_nav', 'Exclude Subpages from Nav', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(21, 'thumbnail', 'Thumbnail', 1, 0, 0, 5, 1, NULL, 'pagekey'),
(22, 'navigation_column', 'Navigation Column', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(23, 'news_category', 'News Category', 1, 0, 0, 7, 1, NULL, 'pagekey');

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSetKeys`
--

CREATE TABLE `AttributeSetKeys` (
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeSetKeys`
--

INSERT INTO `AttributeSetKeys` (`asDisplayOrder`, `akID`, `asID`) VALUES
(0, 1, 1),
(1, 2, 1),
(1, 7, 2),
(2, 8, 2),
(2, 9, 1),
(4, 10, 2),
(0, 11, 2),
(3, 12, 2),
(3, 13, 1),
(5, 22, 2),
(0, 23, 3);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSets`
--

CREATE TABLE `AttributeSets` (
  `asID` int(10) UNSIGNED NOT NULL,
  `asHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `asIsLocked` tinyint(1) NOT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeSets`
--

INSERT INTO `AttributeSets` (`asID`, `asHandle`, `asName`, `asDisplayOrder`, `asIsLocked`, `akCategoryID`, `pkgID`) VALUES
(1, 'seo', 'SEO', 0, 1, 1, NULL),
(2, 'navigation', 'Navigation and Indexing', 0, 1, 1, NULL),
(3, 'news', 'News', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypeCategories`
--

CREATE TABLE `AttributeTypeCategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `atID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeTypeCategories`
--

INSERT INTO `AttributeTypeCategories` (`akCategoryID`, `atID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 22),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 13),
(2, 14),
(2, 17),
(2, 19),
(2, 20),
(2, 22),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 6),
(3, 7),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 17),
(3, 19),
(3, 20),
(3, 22),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 13),
(4, 15),
(4, 17),
(4, 18),
(4, 19),
(4, 21),
(4, 22),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 13),
(5, 19),
(5, 22),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 13),
(6, 15),
(6, 17),
(6, 18),
(6, 19),
(6, 21),
(6, 22),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(7, 15),
(7, 16),
(7, 18),
(7, 19),
(7, 20),
(7, 21),
(7, 22);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypes`
--

CREATE TABLE `AttributeTypes` (
  `atID` int(10) UNSIGNED NOT NULL,
  `atHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeTypes`
--

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', NULL),
(2, 'textarea', 'Text Area', NULL),
(3, 'boolean', 'Checkbox', NULL),
(4, 'date_time', 'Date/Time', NULL),
(5, 'image_file', 'Image/File', NULL),
(6, 'number', 'Number', NULL),
(7, 'select', 'Option List', NULL),
(8, 'address', 'Address', NULL),
(9, 'telephone', 'Phone Number', NULL),
(10, 'url', 'URL', NULL),
(11, 'email', 'Email', NULL),
(12, 'rating', 'Rating', NULL),
(13, 'topics', 'Topics', NULL),
(14, 'social_links', 'Social Links', NULL),
(15, 'calendar', 'Calendar', NULL),
(16, 'calendar_event', 'Calendar Event', NULL),
(17, 'express', 'Express Entity', NULL),
(18, 'page_selector', 'Page Selector', NULL),
(19, 'user_selector', 'User Selector', NULL),
(20, 'site', 'Site', NULL),
(21, 'user_group', 'User Group', NULL),
(22, 'duration', 'Duration', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeValues`
--

CREATE TABLE `AttributeValues` (
  `avID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeValues`
--

INSERT INTO `AttributeValues` (`avID`, `akID`) VALUES
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(18, 3),
(20, 3),
(23, 3),
(24, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(40, 3),
(41, 3),
(42, 3),
(48, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(68, 3),
(69, 3),
(72, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(177, 3),
(178, 3),
(179, 3),
(180, 3),
(181, 3),
(183, 3),
(186, 3),
(189, 3),
(142, 4),
(150, 4),
(143, 5),
(151, 5),
(1, 6),
(47, 6),
(145, 6),
(146, 6),
(148, 6),
(149, 6),
(182, 6),
(9, 7),
(17, 7),
(19, 7),
(25, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 7),
(36, 7),
(37, 7),
(38, 7),
(39, 7),
(43, 7),
(45, 7),
(49, 7),
(67, 7),
(70, 7),
(73, 7),
(75, 7),
(77, 7),
(79, 7),
(81, 7),
(92, 7),
(144, 7),
(152, 7),
(153, 7),
(154, 7),
(156, 7),
(158, 7),
(160, 7),
(162, 7),
(164, 7),
(166, 7),
(168, 7),
(170, 7),
(171, 7),
(173, 7),
(175, 7),
(184, 7),
(185, 7),
(187, 7),
(211, 7),
(214, 7),
(217, 7),
(220, 7),
(223, 7),
(226, 7),
(229, 7),
(232, 7),
(233, 7),
(234, 7),
(235, 7),
(236, 7),
(259, 7),
(263, 7),
(266, 7),
(270, 7),
(274, 7),
(278, 7),
(282, 7),
(286, 7),
(290, 7),
(213, 10),
(215, 10),
(219, 10),
(222, 10),
(225, 10),
(228, 10),
(231, 10),
(260, 10),
(264, 10),
(267, 10),
(271, 10),
(275, 10),
(279, 10),
(283, 10),
(287, 10),
(291, 10),
(26, 12),
(44, 12),
(46, 12),
(50, 12),
(71, 12),
(74, 12),
(76, 12),
(78, 12),
(80, 12),
(82, 12),
(130, 12),
(147, 12),
(155, 12),
(157, 12),
(159, 12),
(161, 12),
(163, 12),
(165, 12),
(167, 12),
(169, 12),
(172, 12),
(174, 12),
(176, 12),
(188, 12),
(190, 16),
(192, 16),
(195, 16),
(197, 16),
(199, 16),
(201, 16),
(203, 16),
(205, 16),
(207, 16),
(209, 16),
(237, 16),
(239, 16),
(241, 16),
(243, 16),
(245, 16),
(247, 16),
(249, 16),
(251, 16),
(253, 16),
(255, 16),
(257, 16),
(191, 17),
(193, 17),
(196, 17),
(198, 17),
(200, 17),
(202, 17),
(204, 17),
(206, 17),
(208, 17),
(210, 17),
(238, 17),
(240, 17),
(242, 17),
(244, 17),
(246, 17),
(248, 17),
(250, 17),
(252, 17),
(254, 17),
(256, 17),
(258, 17),
(212, 21),
(216, 21),
(218, 21),
(221, 21),
(224, 21),
(227, 21),
(230, 21),
(261, 21),
(265, 21),
(268, 21),
(272, 21),
(276, 21),
(280, 21),
(284, 21),
(288, 21),
(292, 21),
(194, 22),
(262, 23),
(269, 23),
(273, 23),
(277, 23),
(281, 23),
(285, 23),
(289, 23),
(293, 23);

-- --------------------------------------------------------

--
-- Table structure for table `atUserGroupSettings`
--

CREATE TABLE `atUserGroupSettings` (
  `akDisplayGroupsBeneathSpecificParent` tinyint(1) NOT NULL,
  `akDisplayGroupsBeneathParentID` int(11) NOT NULL,
  `akGroupSelectionMethod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AuthenticationTypes`
--

CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) UNSIGNED NOT NULL,
  `authTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AuthenticationTypes`
--

INSERT INTO `AuthenticationTypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
(1, 'concrete', 'Standard', 1, 0, 0),
(2, 'community', 'concrete5.org', 0, 0, 0),
(3, 'facebook', 'Facebook', 0, 0, 0),
(4, 'twitter', 'Twitter', 0, 0, 0),
(5, 'google', 'Google', 0, 0, 0),
(6, 'external_concrete', 'External Concrete', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `authTypeConcreteCookieMap`
--

CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) UNSIGNED NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BannedWords`
--

CREATE TABLE `BannedWords` (
  `bwID` int(10) UNSIGNED NOT NULL,
  `bannedWord` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BannedWords`
--

INSERT INTO `BannedWords` (`bwID`, `bannedWord`) VALUES
(1, 'fuck'),
(2, 'shit'),
(3, 'bitch'),
(4, 'ass');

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowProgressData`
--

CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDStarted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockPermissionAssignments`
--

CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Blocks`
--

CREATE TABLE `Blocks` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Blocks`
--

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2023-03-03 10:05:50', '2023-03-03 10:05:50', NULL, '0', 36, 1, NULL),
(2, '', '2023-03-03 10:05:50', '2023-03-03 10:05:50', NULL, '0', 44, 1, NULL),
(3, '', '2023-03-03 10:05:50', '2023-03-03 10:05:50', NULL, '0', 40, 1, NULL),
(4, '', '2023-03-03 10:05:50', '2023-03-03 10:05:50', NULL, '0', 38, 1, NULL),
(5, '', '2023-03-03 10:05:50', '2023-03-03 10:05:50', NULL, '0', 37, 1, NULL),
(6, '', '2023-03-03 10:05:50', '2023-03-03 10:05:50', NULL, '0', 44, 1, NULL),
(7, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 15, 1, NULL),
(8, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 39, 1, NULL),
(9, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 44, 1, NULL),
(10, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 43, 1, NULL),
(11, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 43, 1, NULL),
(12, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 43, 1, NULL),
(13, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 15, 1, NULL),
(14, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 44, 1, NULL),
(15, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 41, 1, NULL),
(16, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 44, 1, NULL),
(17, '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', NULL, '0', 42, 1, NULL),
(18, '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', NULL, '0', 44, 1, NULL),
(19, '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', NULL, '0', 41, 1, NULL),
(20, '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', NULL, '0', 44, 1, NULL),
(21, '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', NULL, '0', 42, 1, NULL),
(22, '', '2023-03-03 10:05:54', '2023-03-03 10:05:54', NULL, '0', 45, 1, NULL),
(24, '', '2023-03-07 06:49:34', '2023-03-07 06:49:34', NULL, '0', 1, 1, NULL),
(26, '', '2023-03-07 06:51:38', '2023-03-07 06:51:38', NULL, '0', 1, 1, NULL),
(28, '', '2023-03-07 06:51:46', '2023-03-07 06:51:46', NULL, '0', 1, 1, NULL),
(30, '', '2023-03-07 06:52:02', '2023-03-07 06:52:02', NULL, '0', 1, 1, NULL),
(32, '', '2023-03-07 06:52:14', '2023-03-07 06:52:14', NULL, '0', 1, 1, NULL),
(34, '', '2023-03-07 06:52:50', '2023-03-07 06:52:50', NULL, '0', 1, 1, NULL),
(36, '', '2023-03-07 06:53:06', '2023-03-07 06:53:06', NULL, '0', 1, 1, NULL),
(38, '', '2023-03-07 06:53:16', '2023-03-07 06:53:16', NULL, '0', 1, 1, NULL),
(40, '', '2023-03-07 06:53:26', '2023-03-07 06:53:26', NULL, '0', 1, 1, NULL),
(42, '', '2023-03-07 06:53:33', '2023-03-07 06:53:33', NULL, '0', 1, 1, NULL),
(44, '', '2023-03-07 06:53:42', '2023-03-07 06:53:42', NULL, '0', 1, 1, NULL),
(46, '', '2023-03-07 06:53:51', '2023-03-07 06:53:51', NULL, '0', 1, 1, NULL),
(48, '', '2023-03-07 06:53:58', '2023-03-07 06:53:58', NULL, '0', 1, 1, NULL),
(50, '', '2023-03-07 06:54:11', '2023-03-07 06:54:11', NULL, '0', 1, 1, NULL),
(52, '', '2023-03-07 06:54:18', '2023-03-07 06:54:18', NULL, '0', 1, 1, NULL),
(54, '', '2023-03-07 06:55:11', '2023-03-07 06:55:11', NULL, '0', 1, 1, NULL),
(56, '', '2023-03-07 06:55:22', '2023-03-07 06:55:22', NULL, '0', 1, 1, NULL),
(58, '', '2023-03-07 06:55:33', '2023-03-07 06:55:33', NULL, '0', 1, 1, NULL),
(60, '', '2023-03-07 06:55:41', '2023-03-07 06:55:41', NULL, '0', 1, 1, NULL),
(62, '', '2023-03-07 06:55:48', '2023-03-07 06:55:48', NULL, '0', 1, 1, NULL),
(64, '', '2023-03-07 06:56:05', '2023-03-07 06:56:05', NULL, '0', 1, 1, NULL),
(66, '', '2023-03-07 06:56:13', '2023-03-07 06:56:13', NULL, '0', 1, 1, NULL),
(68, '', '2023-03-07 06:56:19', '2023-03-07 06:56:19', NULL, '0', 1, 1, NULL),
(70, '', '2023-03-07 06:56:26', '2023-03-07 06:56:26', NULL, '0', 1, 1, NULL),
(72, '', '2023-03-07 06:56:33', '2023-03-07 06:56:33', NULL, '0', 1, 1, NULL),
(74, '', '2023-03-07 06:56:47', '2023-03-07 06:56:47', NULL, '0', 1, 1, NULL),
(76, '', '2023-03-07 06:56:54', '2023-03-07 06:56:54', NULL, '0', 1, 1, NULL),
(78, '', '2023-03-07 06:57:03', '2023-03-07 06:57:03', NULL, '0', 1, 1, NULL),
(80, '', '2023-03-07 06:57:09', '2023-03-07 06:57:09', NULL, '0', 1, 1, NULL),
(82, '', '2023-03-07 06:57:19', '2023-03-07 06:57:19', NULL, '0', 1, 1, NULL),
(84, '', '2023-03-07 06:57:26', '2023-03-07 06:57:26', NULL, '0', 1, 1, NULL),
(85, '', '2023-03-07 07:16:49', '2023-03-07 07:16:49', NULL, '0', 7, 1, NULL),
(86, '', '2023-03-07 07:18:27', '2023-03-07 07:18:27', 'header', '1', 7, 1, NULL),
(87, '', '2023-03-07 07:20:41', '2023-03-07 07:20:41', NULL, '0', 18, 1, NULL),
(88, '', '2023-03-07 07:21:42', '2023-03-07 07:21:42', 'header', '1', 18, 1, NULL),
(91, '', '2023-03-07 07:38:43', '2023-03-07 07:38:43', NULL, '0', 1, 1, NULL),
(93, '', '2023-03-07 08:03:58', '2023-03-07 08:03:58', NULL, '0', 1, 1, NULL),
(95, '', '2023-03-07 08:04:17', '2023-03-07 08:04:17', NULL, '0', 1, 1, NULL),
(97, '', '2023-03-07 08:04:31', '2023-03-07 08:04:31', NULL, '0', 1, 1, NULL),
(99, '', '2023-03-07 08:04:44', '2023-03-07 08:04:44', NULL, '0', 1, 1, NULL),
(100, '', '2023-03-07 08:05:19', '2023-03-07 08:05:19', NULL, '0', 1, 1, NULL),
(101, '', '2023-03-07 08:05:29', '2023-03-07 08:05:29', NULL, '0', 24, 1, NULL),
(102, '', '2023-03-07 08:06:38', '2023-03-07 08:06:38', 'footer', '1', 24, 1, NULL),
(105, '', '2023-03-07 08:08:11', '2023-03-07 08:08:11', NULL, '1', 1, 1, NULL),
(106, '', '2023-03-07 08:08:20', '2023-03-07 08:08:20', NULL, '1', 1, 1, NULL),
(107, '', '2023-03-07 08:08:25', '2023-03-07 08:08:25', 'footer', '1', 24, 1, NULL),
(109, '', '2023-03-07 08:21:06', '2023-03-07 08:21:06', NULL, '0', 1, 1, NULL),
(112, '', '2023-03-07 08:43:44', '2023-03-07 08:43:44', NULL, '0', 62, 1, NULL),
(113, '', '2023-03-07 08:44:08', '2023-03-07 08:44:08', NULL, '0', 1, 1, NULL),
(114, '', '2023-03-07 10:38:34', '2023-03-07 10:38:34', NULL, '0', 62, 1, NULL),
(115, '', '2023-03-07 10:39:45', '2023-03-07 10:39:45', NULL, '0', 1, 1, NULL),
(116, '', '2023-03-07 10:46:59', '2023-03-07 10:47:56', 'home_intro', '0', 64, 1, NULL),
(117, '', '2023-03-07 10:48:15', '2023-03-07 10:48:15', NULL, '0', 3, 1, NULL),
(118, '', '2023-03-07 10:49:58', '2023-03-07 10:49:58', NULL, '0', 1, 1, NULL),
(121, '', '2023-03-07 10:57:35', '2023-03-07 10:57:35', NULL, '0', 62, 1, NULL),
(122, '', '2023-03-07 10:57:58', '2023-03-07 10:57:58', NULL, '0', 1, 1, NULL),
(125, '', '2023-03-07 11:00:57', '2023-03-07 11:00:57', NULL, '0', 62, 1, NULL),
(126, '', '2023-03-07 11:01:17', '2023-03-07 11:01:17', NULL, '0', 1, 1, NULL),
(137, '', '2023-03-09 05:38:23', '2023-03-09 05:38:23', NULL, '0', 65, 1, NULL),
(138, '', '2023-03-09 05:41:16', '2023-03-09 05:41:16', 'other', '1', 65, 1, NULL),
(139, '', '2023-03-09 05:42:24', '2023-03-09 05:42:24', NULL, '0', 65, 1, NULL),
(140, '', '2023-03-09 05:42:31', '2023-03-09 05:42:31', 'footer', '1', 65, 1, NULL),
(143, '', '2023-03-09 05:44:36', '2023-03-09 05:45:23', 'style_home', '0', 65, 1, NULL),
(144, '', '2023-03-09 05:47:54', '2023-03-09 05:47:54', NULL, '0', 65, 1, NULL),
(145, '', '2023-03-09 05:49:00', '2023-03-09 05:49:00', NULL, '0', 65, 1, NULL),
(147, '', '2023-03-09 05:49:14', '2023-03-09 05:49:14', NULL, '0', 46, 1, NULL),
(148, '', '2023-03-09 05:52:03', '2023-03-09 05:52:03', NULL, '0', 3, 1, NULL),
(149, '', '2023-03-09 05:53:21', '2023-03-09 05:54:14', 'style_career', '0', 65, 1, NULL),
(150, '', '2023-03-09 05:53:36', '2023-03-09 05:53:36', NULL, '0', 1, 1, NULL),
(151, '', '2023-03-09 05:56:11', '2023-03-09 05:56:11', NULL, '0', 62, 1, NULL),
(152, '', '2023-03-09 06:04:51', '2023-03-09 06:04:51', NULL, '0', 1, 1, NULL),
(153, '', '2023-03-09 06:05:26', '2023-03-09 06:06:31', 'style_read_more', '0', 65, 1, NULL),
(155, '', '2023-03-10 05:54:50', '2023-03-10 05:54:57', 'wave', '0', 63, 1, NULL),
(156, '', '2023-03-10 06:32:23', '2023-03-10 06:32:23', '', '1', 63, 1, NULL),
(157, '', '2023-03-10 06:33:01', '2023-03-10 06:33:01', '', '1', 63, 1, NULL),
(159, '', '2023-03-10 07:14:54', '2023-03-10 07:15:01', 'wave', '0', 63, 1, NULL),
(160, '', '2023-03-10 08:00:34', '2023-03-10 08:00:34', NULL, '0', 1, 1, NULL),
(161, '', '2023-03-10 09:26:40', '2023-03-10 09:26:40', 'home_intro', '1', 64, 1, NULL),
(162, '', '2023-03-10 09:42:49', '2023-03-10 09:42:49', 'style_home', '1', 65, 1, NULL),
(163, '', '2023-03-10 09:42:59', '2023-03-10 09:42:59', 'style_home', '1', 65, 1, NULL),
(164, '', '2023-03-10 09:43:06', '2023-03-10 09:43:06', 'style_career', '1', 65, 1, NULL),
(167, '', '2023-03-10 09:43:56', '2023-03-10 09:43:56', NULL, '0', 1, 1, NULL),
(168, '', '2023-03-10 09:44:22', '2023-03-10 09:44:31', 'wave', '0', 63, 1, NULL),
(169, '', '2023-03-10 10:13:57', '2023-03-10 10:15:13', 'home_intro', '1', 64, 1, NULL),
(170, '', '2023-03-10 10:16:37', '2023-03-10 10:16:37', 'home_intro', '1', 64, 1, NULL),
(171, '', '2023-03-10 10:17:03', '2023-03-10 10:17:03', 'home_intro', '1', 64, 1, NULL),
(173, '', '2023-03-13 07:58:00', '2023-03-13 07:58:00', NULL, '0', 10, 1, NULL),
(174, '', '2023-03-13 09:37:33', '2023-03-13 09:37:34', 'parallax', '1', 3, 1, NULL),
(175, '', '2023-03-13 11:45:03', '2023-03-13 11:45:03', NULL, '1', 62, 1, NULL),
(176, '', '2023-03-13 11:45:12', '2023-03-13 11:45:12', NULL, '1', 62, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypes`
--

CREATE TABLE `BlockTypes` (
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL,
  `btID` int(11) NOT NULL,
  `btHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCopyWhenPropagate` tinyint(1) NOT NULL,
  `btIncludeAll` tinyint(1) NOT NULL,
  `btIsInternal` tinyint(1) NOT NULL,
  `btSupportsInlineEdit` tinyint(1) NOT NULL,
  `btSupportsInlineAdd` tinyint(1) NOT NULL,
  `btDisplayOrder` int(11) NOT NULL,
  `btInterfaceHeight` int(11) NOT NULL,
  `btInterfaceWidth` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockTypes`
--

INSERT INTO `BlockTypes` (`btIgnorePageThemeGridFrameworkContainer`, `btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineEdit`, `btSupportsInlineAdd`, `btDisplayOrder`, `btInterfaceHeight`, `btInterfaceWidth`, `pkgID`) VALUES
(0, 1, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 0, 0, 0, 1, 1, 40, 465, 600, 0),
(1, 2, 'html', 'HTML', 'For adding HTML by hand.', 0, 0, 0, 0, 0, 26, 500, 600, 0),
(0, 3, 'image', 'Image', 'Adds images and onstates from the library to pages.', 0, 0, 0, 0, 0, 27, 550, 400, 0),
(0, 4, 'file', 'File', 'Link to files stored in the asset library.', 0, 0, 0, 0, 0, 28, 320, 300, 0),
(1, 5, 'horizontal_rule', 'Horizontal Rule', 'Adds a thin hairline horizontal divider to the page.', 0, 0, 0, 0, 0, 29, 400, 400, 0),
(0, 6, 'feature', 'Feature', 'Displays an icon, a title, and a short paragraph description.', 0, 0, 0, 0, 0, 30, 520, 400, 0),
(0, 7, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 0, 0, 0, 0, 0, 31, 525, 700, 0),
(0, 8, 'page_title', 'Page Title', 'Displays a Page\'s Title', 0, 0, 0, 0, 0, 32, 500, 470, 0),
(0, 9, 'faq', 'FAQ', 'Frequently Asked Questions Block', 0, 0, 0, 0, 0, 33, 465, 600, 0),
(0, 10, 'page_list', 'Page List', 'List pages based on type, area.', 0, 0, 0, 0, 0, 34, 525, 700, 0),
(0, 11, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 0, 0, 0, 0, 0, 35, 400, 430, 0),
(0, 12, 'date_navigation', 'Date Navigation', 'Displays a list of months to filter a page list by.', 0, 0, 0, 0, 0, 36, 450, 400, 0),
(0, 13, 'tags', 'Tags', 'List pages based on type, area.', 0, 0, 0, 0, 0, 37, 439, 450, 0),
(0, 14, 'topic_list', 'Topic List', 'Displays a list of your site\'s topics, allowing you to click on them to filter a page list.', 0, 0, 0, 0, 0, 38, 400, 400, 0),
(0, 15, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 0, 0, 0, 0, 0, 39, 550, 400, 0),
(0, 16, 'switch_language', 'Switch Language', 'Adds a front-end language switcher to your website.', 0, 0, 0, 0, 0, 25, 150, 500, 0),
(0, 17, 'express_form', 'Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 0, 41, 700, 640, 0),
(0, 18, 'search', 'Search', 'Add a search box to your site.', 0, 0, 0, 0, 0, 42, 420, 400, 0),
(0, 19, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 0, 0, 0, 0, 0, 43, 175, 420, 0),
(0, 20, 'express_entry_list', 'Express Entry List', 'Add a searchable Express entry list to a page.', 0, 0, 0, 0, 0, 44, 400, 640, 0),
(0, 21, 'express_entry_detail', 'Express Entry Detail', 'Add an Express entry detail display to a page.', 0, 0, 0, 0, 0, 45, 400, 640, 0),
(0, 22, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 0, 0, 0, 0, 0, 46, 500, 500, 0),
(0, 23, 'core_conversation', 'Conversation', 'Displays conversations on a page.', 1, 0, 0, 0, 0, 47, 400, 450, 0),
(0, 24, 'social_links', 'Social Links', 'Allows users to add social icons to their website', 0, 0, 0, 0, 0, 48, 400, 400, 0),
(0, 25, 'testimonial', 'Testimonial', 'Displays a quote or paragraph next to biographical information and a person\'s picture.', 0, 0, 0, 0, 0, 49, 560, 450, 0),
(0, 26, 'share_this_page', 'Share This Page', 'Allows users to share this page with social networks.', 0, 0, 0, 0, 0, 50, 400, 400, 0),
(0, 27, 'calendar', 'Calendar', 'Displays a month view calendar on a page.', 0, 0, 0, 0, 0, 51, 475, 500, 0),
(0, 28, 'event_list', 'Event List', 'Displays a list of events from a calendar.', 0, 0, 0, 0, 0, 52, 340, 500, 0),
(0, 29, 'calendar_event', 'Calendar Event', 'Displays a calendar event on a page.', 0, 0, 0, 0, 0, 53, 400, 550, 0),
(0, 30, 'page_attribute_display', 'Page Attribute Display', 'Displays the value of a page attribute for the current page.', 0, 0, 0, 0, 0, 54, 365, 500, 0),
(1, 31, 'image_slider', 'Image Slider', 'Display your images and captions in an attractive slideshow format.', 0, 0, 0, 0, 0, 16, 550, 600, 0),
(0, 32, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.', 0, 0, 0, 0, 0, 4, 440, 450, 0),
(0, 33, 'document_library', 'Document Library', 'Add a searchable document library to a page.', 0, 0, 0, 0, 0, 5, 400, 640, 0),
(0, 34, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 0, 0, 0, 0, 0, 6, 490, 400, 0),
(0, 35, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 0, 0, 0, 0, 0, 7, 550, 525, 0),
(0, 36, 'desktop_app_status', 'concrete5 Status Messages', 'Displays alerts about your concrete5 site and package updates.', 0, 0, 0, 0, 0, 8, 400, 400, 0),
(0, 37, 'desktop_site_activity', 'Site Activity', 'Displays a graph of recent activity on your site.', 0, 0, 0, 0, 0, 9, 560, 450, 0),
(0, 38, 'desktop_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 0, 0, 0, 0, 0, 10, 100, 300, 0),
(0, 39, 'desktop_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 0, 0, 0, 0, 0, 11, 100, 300, 0),
(0, 40, 'desktop_latest_form', 'Latest Form', 'Shows the latest form submission.', 0, 0, 0, 0, 0, 12, 400, 400, 0),
(0, 41, 'desktop_waiting_for_me', 'Waiting for Me', 'Displays workflow actions waiting for you.', 0, 0, 0, 0, 0, 13, 560, 450, 0),
(0, 42, 'desktop_draft_list', 'Draft List', 'Displays a list of all drafts.', 0, 0, 0, 0, 0, 14, 400, 400, 0),
(0, 43, 'desktop_concrete_latest', 'Desktop Concrete Latest', 'Grabs the latest newsflow data from concrete5.org.', 0, 0, 0, 0, 0, 15, 400, 400, 0),
(0, 44, 'core_area_layout', 'Area Layout', 'Proxy block for area layouts.', 0, 0, 1, 1, 1, 0, 400, 400, 0),
(0, 45, 'core_page_type_composer_control_output', 'Composer Control', 'Proxy block for blocks that need to be output through composer.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 46, 'core_scrapbook_display', 'Scrapbook Display', 'Proxy block for blocks pasted through the scrapbook.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 47, 'core_stack_display', 'Stack Display', 'Proxy block for stacks added through the UI.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 48, 'form', 'Legacy Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 0, 17, 430, 420, 0),
(1, 49, 'core_board_slot', 'Board Slot', 'Proxy block for board slots.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(1, 50, 'core_container', 'Container', 'Proxy block for theme containers added through the UI.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(1, 51, 'board', 'Board', 'Adds a Board to your website.', 0, 0, 0, 1, 0, 18, 500, 500, 0),
(0, 52, 'gallery', 'Gallery', 'Creates an Image Gallery in your web page.', 0, 0, 0, 0, 0, 19, 820, 750, 0),
(0, 53, 'breadcrumbs', 'Breadcrumbs', 'Add a breadcrumbs navigation.', 0, 0, 0, 0, 0, 20, 300, 500, 0),
(0, 54, 'core_theme_documentation_toc', 'Theme Documentation TOC', 'Displays a table of contents list for theme documentation.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 55, 'core_theme_documentation_breadcrumb', 'Theme Documentation Breadcrumb', 'Adds breadcrumb navigation for use with internal theme documentation.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 56, 'top_navigation_bar', 'Top Navigation Bar', 'Adds a responsive navigation bar with a logo, menu and search.', 0, 0, 0, 0, 0, 21, 500, 640, 0),
(1, 57, 'hero_image', 'Hero Image', 'Places a large image on top of a page, with an optional title, description and call to action button.', 0, 0, 0, 0, 0, 22, 500, 640, 0),
(0, 58, 'accordion', 'Accordion', 'Collapsible content block.', 0, 0, 0, 0, 0, 23, 580, 720, 0),
(0, 59, 'feature_link', 'Feature Link', 'Add a title, body and a button/link to a page. Useful for calling out important links.', 0, 0, 0, 0, 0, 24, 500, 640, 0),
(0, 62, 'block_background_video', 'Background Video', '', 0, 0, 0, 0, 0, 3, 500, 600, 0),
(0, 63, 'block_simple', 'Block Simple', '', 0, 0, 0, 0, 0, 2, 500, 600, 0),
(0, 64, 'block_multiple', 'Block Multiple', '', 0, 0, 0, 0, 0, 1, 500, 600, 0),
(0, 65, 'block_custom_link', 'Custom Link', '', 0, 0, 0, 0, 0, 0, 500, 600, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockTypeSetBlockTypes`
--

INSERT INTO `BlockTypeSetBlockTypes` (`btID`, `btsID`, `displayOrder`) VALUES
(1, 1, 0),
(2, 1, 1),
(3, 1, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(57, 1, 6),
(59, 1, 7),
(7, 2, 0),
(8, 2, 1),
(9, 2, 2),
(10, 2, 3),
(11, 2, 4),
(12, 2, 5),
(13, 2, 6),
(14, 2, 7),
(15, 2, 8),
(16, 2, 9),
(53, 2, 10),
(58, 2, 11),
(17, 3, 0),
(18, 3, 1),
(19, 3, 2),
(20, 4, 0),
(21, 4, 1),
(22, 5, 0),
(23, 5, 1),
(24, 5, 2),
(25, 5, 3),
(26, 5, 4),
(27, 6, 0),
(28, 6, 1),
(29, 6, 2),
(30, 7, 0),
(31, 7, 1),
(32, 7, 2),
(33, 7, 3),
(34, 7, 4),
(35, 7, 5),
(36, 8, 0),
(37, 8, 1),
(38, 8, 2),
(39, 8, 3),
(40, 8, 4),
(41, 8, 5),
(42, 8, 6),
(43, 8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypeSets`
--

CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) UNSIGNED NOT NULL,
  `btsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockTypeSets`
--

INSERT INTO `BlockTypeSets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
(1, 'Basic', 'basic', 0, 0),
(2, 'Navigation', 'navigation', 0, 0),
(3, 'Forms', 'form', 0, 0),
(4, 'Express', 'express', 0, 0),
(5, 'Social Networking', 'social', 0, 0),
(6, 'Calendar & Events', 'calendar', 0, 0),
(7, 'Multimedia', 'multimedia', 0, 0),
(8, 'Desktop', 'core_desktop', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BoardConfiguredDataSourceConfiguration`
--

CREATE TABLE `BoardConfiguredDataSourceConfiguration` (
  `configurationID` int(10) UNSIGNED NOT NULL,
  `configuredDataSourceID` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardConfiguredDataSourceConfigurationCalendarEvent`
--

CREATE TABLE `BoardConfiguredDataSourceConfigurationCalendarEvent` (
  `maxOccurrencesOfSameEvent` int(10) UNSIGNED NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  `caID` int(10) UNSIGNED DEFAULT NULL,
  `configurationID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardConfiguredDataSourceConfigurationPage`
--

CREATE TABLE `BoardConfiguredDataSourceConfigurationPage` (
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  `configurationID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardConfiguredDataSources`
--

CREATE TABLE `BoardConfiguredDataSources` (
  `configuredDataSourceID` int(10) UNSIGNED NOT NULL,
  `populationDayIntervalFuture` int(11) NOT NULL,
  `populationDayIntervalPast` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customWeight` int(11) NOT NULL,
  `boardID` int(10) UNSIGNED DEFAULT NULL,
  `dataSourceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardCustomSlotTemplates`
--

CREATE TABLE `BoardCustomSlotTemplates` (
  `boardID` int(10) UNSIGNED NOT NULL,
  `slotTemplateID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardDataSources`
--

CREATE TABLE `BoardDataSources` (
  `dataSourceID` int(11) NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BoardDataSources`
--

INSERT INTO `BoardDataSources` (`dataSourceID`, `handle`, `name`, `pkgID`) VALUES
(1, 'page', 'Page', NULL),
(2, 'calendar_event', 'Calendar Event', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BoardDesignerCustomElementItems`
--

CREATE TABLE `BoardDesignerCustomElementItems` (
  `itemId` int(10) UNSIGNED NOT NULL,
  `boardItemID` int(10) UNSIGNED DEFAULT NULL,
  `customElementID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardDesignerCustomElements`
--

CREATE TABLE `BoardDesignerCustomElements` (
  `id` int(10) UNSIGNED NOT NULL,
  `elementName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCreated` int(10) UNSIGNED NOT NULL,
  `batchIdentifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentObjectCollection` json DEFAULT NULL,
  `slotTemplate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardInstanceItemBatches`
--

CREATE TABLE `BoardInstanceItemBatches` (
  `boardInstanceItemBatchID` int(10) UNSIGNED NOT NULL,
  `dateCreated` int(10) UNSIGNED NOT NULL,
  `boardInstanceID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardInstanceItems`
--

CREATE TABLE `BoardInstanceItems` (
  `boardInstanceItemID` int(10) UNSIGNED NOT NULL,
  `dateAddedToBoard` int(10) UNSIGNED NOT NULL,
  `boardItemID` int(10) UNSIGNED DEFAULT NULL,
  `configuredDataSourceID` int(10) UNSIGNED DEFAULT NULL,
  `boardInstanceID` int(10) UNSIGNED DEFAULT NULL,
  `boardInstanceItemBatchID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardInstances`
--

CREATE TABLE `BoardInstances` (
  `boardInstanceID` int(10) UNSIGNED NOT NULL,
  `boardInstanceName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCreated` int(10) UNSIGNED NOT NULL,
  `dateDataPoolLastUpdated` int(10) UNSIGNED DEFAULT NULL,
  `boardID` int(10) UNSIGNED DEFAULT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardInstanceSlotRules`
--

CREATE TABLE `BoardInstanceSlotRules` (
  `boardInstanceSlotRuleID` int(10) UNSIGNED NOT NULL,
  `slot` int(10) UNSIGNED NOT NULL,
  `batchIdentifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `bID` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isLocked` tinyint(1) NOT NULL,
  `dateCreated` int(10) UNSIGNED NOT NULL,
  `startDate` int(10) UNSIGNED NOT NULL,
  `endDate` int(10) UNSIGNED NOT NULL,
  `ruleType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boardInstanceID` int(10) UNSIGNED DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardInstanceSlots`
--

CREATE TABLE `BoardInstanceSlots` (
  `template_id` int(11) DEFAULT NULL,
  `boardInstanceSlotID` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `bID` int(11) NOT NULL,
  `boardInstanceID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardItemCategories`
--

CREATE TABLE `BoardItemCategories` (
  `boardItemCategoryID` int(10) UNSIGNED NOT NULL,
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `boardItemID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardItems`
--

CREATE TABLE `BoardItems` (
  `boardItemID` int(10) UNSIGNED NOT NULL,
  `dateCreated` int(10) UNSIGNED NOT NULL,
  `relevantDate` int(10) UNSIGNED NOT NULL,
  `uniqueItemId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `dataSourceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardItemTags`
--

CREATE TABLE `BoardItemTags` (
  `boardItemTagID` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boardItemID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardPermissionAssignments`
--

CREATE TABLE `BoardPermissionAssignments` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL,
  `boardID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Boards`
--

CREATE TABLE `Boards` (
  `template_id` int(11) DEFAULT NULL,
  `boardID` int(10) UNSIGNED NOT NULL,
  `boardName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hasCustomSlotTemplates` tinyint(1) NOT NULL,
  `hasCustomWeightingRules` tinyint(1) NOT NULL,
  `overridePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `siteID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardSlotTemplates`
--

CREATE TABLE `BoardSlotTemplates` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardSlotTemplateTags`
--

CREATE TABLE `BoardSlotTemplateTags` (
  `slottemplate_id` int(11) NOT NULL,
  `designtag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BoardTemplates`
--

CREATE TABLE `BoardTemplates` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btAccordion`
--

CREATE TABLE `btAccordion` (
  `bID` int(10) UNSIGNED NOT NULL,
  `initialState` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'openfirst',
  `itemHeadingFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h2',
  `alwaysOpen` int(11) DEFAULT NULL,
  `flush` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btAccordionEntries`
--

CREATE TABLE `btAccordionEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btBlockBackgroundVideo`
--

CREATE TABLE `btBlockBackgroundVideo` (
  `bID` int(10) UNSIGNED NOT NULL,
  `poster` int(10) UNSIGNED DEFAULT '0',
  `videoType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` int(10) UNSIGNED DEFAULT '0',
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vimeo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btBlockBackgroundVideo`
--

INSERT INTO `btBlockBackgroundVideo` (`bID`, `poster`, `videoType`, `video`, `youtube`, `vimeo`) VALUES
(112, 18, '1', 12, '', ''),
(114, 19, '1', 13, '', ''),
(121, 20, '1', 14, '', ''),
(125, 21, '1', 15, '', ''),
(151, 22, '1', 16, '', ''),
(175, 20, '1', 15, '', ''),
(176, 21, '1', 14, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btBlockCustomLink`
--

CREATE TABLE `btBlockCustomLink` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `link` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Page` int(10) UNSIGNED DEFAULT '0',
  `link_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Relative_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btBlockCustomLink`
--

INSERT INTO `btBlockCustomLink` (`bID`, `title`, `content`, `link`, `link_Title`, `link_Page`, `link_URL`, `link_Relative_URL`) VALUES
(137, '', '', 'url', 'ASEAN SDGs', 0, 'https://www.google.com/', ''),
(138, '', '', 'url', 'ASEAN SDGs', 0, 'https://www.google.com/', ''),
(139, '', '', '', '', 0, '', ''),
(140, '', '', '', '', 0, '', ''),
(143, 'About Aisin Group', '<p>The aim of these principles is to continuously provide new value to our colleagues, our customers and society and to build a sustainable society.</p>\r\n', 'page', 'Read more', 267, '', ''),
(144, 'Products and Services', '<p>With specialized expertise in a wide range of business fields, we are able to meet a wide range of needs in areas that range from our core mobility business to fields such as energy.</p>\r\n', 'page', 'Read more', 274, '', ''),
(145, 'Sustainability', '<p>For a society where everyone can live in harmony with nature.</p>\r\n', 'page', 'Read more', 284, '', ''),
(149, 'Join our team to make your dreams come true.', '<p>With rapid changes to the automotive industry, increasing demand for skilled trades, and a highly technical and automated future ahead of us, there has never been a better time to work at AISIN Group!</p>\r\n', 'page', 'Find Job', 264, '', ''),
(153, '', '', 'page', 'Contact us', 265, '', ''),
(162, 'Products and Services', '<p>With specialized expertise in a wide range of business fields, we are able to meet a wide range of needs in areas that range from our core mobility business to fields such as energy.</p>\r\n', 'page', 'Read more', 274, '', ''),
(163, 'Sustainability', '<p>For a society where everyone can live in harmony with nature.</p>\r\n', 'page', 'Read more', 284, '', ''),
(164, 'Join our team to make your dreams come true.', '<p>With rapid changes to the automotive industry, increasing demand for skilled trades, and a highly technical and automated future ahead of us, there has never been a better time to work at AISIN Group!</p>\r\n', 'page', 'Find Job', 264, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btBlockCustomLinkItemEntries`
--

CREATE TABLE `btBlockCustomLinkItemEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `link` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Page` int(10) UNSIGNED DEFAULT '0',
  `link_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Relative_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btBlockCustomLinkItemEntries`
--

INSERT INTO `btBlockCustomLinkItemEntries` (`id`, `bID`, `sortOrder`, `link`, `link_Title`, `link_Page`, `link_URL`, `link_Relative_URL`) VALUES
(43, 139, 1, 'page', 'Terms of Use', 296, '', ''),
(44, 139, 2, 'page', 'Privacy Policy', 297, '', ''),
(45, 139, 3, 'page', 'Social Media Policy', 298, '', ''),
(46, 139, 4, 'page', 'Site Map', 299, '', ''),
(47, 139, 5, 'page', 'Contact', 265, '', ''),
(48, 140, 1, 'page', 'Terms of Use', 296, '', ''),
(49, 140, 2, 'page', 'Privacy Policy', 297, '', ''),
(50, 140, 3, 'page', 'Social Media Policy', 298, '', ''),
(51, 140, 4, 'page', 'Site Map', 299, '', ''),
(52, 140, 5, 'page', 'Contact', 265, '', ''),
(53, 143, 1, 'page', 'Regional Top Message', 271, '', ''),
(54, 143, 2, 'page', 'ASEAN Network', 272, '', ''),
(55, 144, 1, 'page', 'Powertrain', 278, '', ''),
(56, 144, 2, 'page', 'Brake System', 279, '', ''),
(57, 144, 3, 'page', 'Body', 280, '', ''),
(58, 144, 4, 'page', 'Electronic', 281, '', ''),
(59, 144, 5, 'page', 'Aftermarket', 282, '', ''),
(60, 145, 1, 'page', 'Carbon Neutrality', 285, '', ''),
(61, 145, 2, 'page', 'SDGs・ESG Activities and Report', 286, '', ''),
(62, 149, 1, 'page', 'Values', 287, '', ''),
(63, 149, 2, 'page', 'Vacancies', 288, '', ''),
(64, 162, 1, 'page', 'Powertrain', 278, '', ''),
(65, 162, 2, 'page', 'Brake System', 279, '', ''),
(66, 162, 3, 'page', 'Body', 280, '', ''),
(67, 162, 4, 'page', 'Electronic', 281, '', ''),
(68, 162, 5, 'page', 'Aftermarket', 282, '', ''),
(69, 163, 1, 'page', 'Carbon Neutrality', 285, '', ''),
(70, 163, 2, 'page', 'SDGs・ESG Activities and Report', 286, '', ''),
(71, 164, 1, 'page', 'Values', 287, '', ''),
(72, 164, 2, 'page', 'Vacancies', 288, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btBlockMultiple`
--

CREATE TABLE `btBlockMultiple` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `link` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Page` int(10) UNSIGNED DEFAULT '0',
  `link_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Relative_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btBlockMultiple`
--

INSERT INTO `btBlockMultiple` (`bID`, `title`, `content`, `link`, `link_Title`, `link_Page`, `link_URL`, `link_Relative_URL`) VALUES
(116, '', '', '', '', 0, '', ''),
(161, '', '', '', '', 0, '', ''),
(169, '', '', '', '', 0, '', ''),
(170, '', '', '', '', 0, '', ''),
(171, '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btBlockMultipleItemEntries`
--

CREATE TABLE `btBlockMultipleItemEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `image` int(10) UNSIGNED DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `link` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Page` int(10) UNSIGNED DEFAULT '0',
  `link_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Relative_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btBlockMultipleItemEntries`
--

INSERT INTO `btBlockMultipleItemEntries` (`id`, `bID`, `sortOrder`, `image`, `title`, `content`, `link`, `link_Title`, `link_Page`, `link_URL`, `link_Relative_URL`) VALUES
(1, 116, 1, 24, 'Fifth Largest', '<p>TIER ONE SUPPLIER OF AUTOMOTIVE COMPONENTS AND SYSTEMS IN THE WORLD</p>\r\n', '', '', 0, '', ''),
(2, 116, 2, 27, '14000', '<p>TEAM MEMBERS</p>\r\n', '', '', 0, '', ''),
(3, 116, 3, 26, '36', '<p>MANUFACTURING PLANTS, SALES CENTERS, LOGISTICS OPERATIONS, AND R&amp;D FACILITIES</p>\r\n', '', '', 0, '', ''),
(4, 116, 4, 25, '120000', '<p>TEAM MEMBERS AROUND THE WORLD</p>\r\n', '', '', 0, '', ''),
(5, 161, 1, 24, 'Fifth Largest', '<p><strong>TIER ONE SUPPLIER OF AUTOMOTIVE COMPONENTS AND SYSTEMS IN THE WORLD</strong></p>\r\n', '', '', 0, '', ''),
(6, 161, 2, 27, '14000', '<p><strong>TEAM MEMBERS</strong></p>\r\n', '', '', 0, '', ''),
(7, 161, 3, 26, '36', '<p><strong>MANUFACTURING PLANTS, SALES CENTERS, LOGISTICS OPERATIONS, AND R&amp;D FACILITIES</strong></p>\r\n', '', '', 0, '', ''),
(8, 161, 4, 25, '120000', '<p><strong>TEAM MEMBERS AROUND THE WORLD</strong></p>\r\n', '', '', 0, '', ''),
(9, 169, 1, 24, 'Fifth Largest', '<p><strong>TIER ONE SUPPLIER OF AUTOMOTIVE COMPONENTS AND SYSTEMS IN THE WORLD</strong></p>\r\n', '', '', 0, '', ''),
(10, 169, 2, 27, '14000', '<p><strong>TEAM MEMBERS</strong></p>\r\n', '', '', 0, '', ''),
(11, 169, 3, 26, '36', '<p><strong>MANUFACTURING PLANTS, SALES CENTERS, LOGISTICS OPERATIONS, AND R&amp;D FACILITIES</strong></p>\r\n', '', '', 0, '', ''),
(12, 169, 4, 25, '120000', '<p><strong>TEAM MEMBERS AROUND THE WORLD</strong></p>\r\n', '', '', 0, '', ''),
(13, 170, 1, 24, 'Fifth Largest', '<p><strong>TIER ONE SUPPLIER OF AUTOMOTIVE COMPONENTS AND SYSTEMS IN THE WORLD</strong></p>\r\n\r\n<p><strong>TIER ONE SUPPLIER OF AUTOMOTIVE COMPONENTS AND SYSTEMS IN THE WORLD</strong></p>\r\n\r\n<p><strong>TIER ONE SUPPLIER OF AUTOMOTIVE COMPONENTS AND SYSTEMS IN THE WORLD</strong></p>\r\n', '', '', 0, '', ''),
(14, 170, 2, 27, '14000', '<p><strong>TEAM MEMBERS</strong></p>\r\n', '', '', 0, '', ''),
(15, 170, 3, 26, '36', '<p><strong>MANUFACTURING PLANTS, SALES CENTERS, LOGISTICS OPERATIONS, AND R&amp;D FACILITIES</strong></p>\r\n', '', '', 0, '', ''),
(16, 170, 4, 25, '120000', '<p><strong>TEAM MEMBERS AROUND THE WORLD</strong></p>\r\n', '', '', 0, '', ''),
(17, 171, 1, 24, 'Fifth Largest', '<p><strong>TIER ONE SUPPLIER OF AUTOMOTIVE COMPONENTS AND SYSTEMS IN THE WORLD</strong></p>\r\n', '', '', 0, '', ''),
(18, 171, 2, 27, '14000', '<p><strong>TEAM MEMBERS</strong></p>\r\n', '', '', 0, '', ''),
(19, 171, 3, 26, '36', '<p><strong>MANUFACTURING PLANTS, SALES CENTERS, LOGISTICS OPERATIONS, AND R&amp;D FACILITIES</strong></p>\r\n', '', '', 0, '', ''),
(20, 171, 4, 25, '120000', '<p><strong>TEAM MEMBERS AROUND THE WORLD</strong></p>\r\n', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btBlockSimple`
--

CREATE TABLE `btBlockSimple` (
  `bID` int(10) UNSIGNED NOT NULL,
  `image` int(10) UNSIGNED DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `link` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Page` int(10) UNSIGNED DEFAULT '0',
  `link_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Relative_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btBlockSimple`
--

INSERT INTO `btBlockSimple` (`bID`, `image`, `title`, `content`, `link`, `link_Title`, `link_Page`, `link_URL`, `link_Relative_URL`) VALUES
(155, 0, '', '<h1>Inspiring &ldquo;movement&rdquo;, creating tomorrow</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 0, '', ''),
(156, 0, '', '<h1>Inspiring &ldquo;movement&rdquo;, creating tomorrow</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 0, '', ''),
(157, 0, '', '<h1>Inspiring &ldquo;movement&rdquo;, creating tomorrow</h1>\r\n', '', '', 0, '', ''),
(159, 0, '', '<h1>Bringing further joy and ease&nbsp;to the mobility experience for all.</h1>\r\n', '', '', 0, '', ''),
(168, 0, '', '<p>We can help. Our team of experts is on hand to answer your questions.</p>\r\n', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btBoard`
--

CREATE TABLE `btBoard` (
  `bID` int(10) UNSIGNED NOT NULL,
  `boardInstanceID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btBreadcrumbs`
--

CREATE TABLE `btBreadcrumbs` (
  `bID` int(10) UNSIGNED NOT NULL,
  `includeCurrent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ignoreExcludeNav` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ignorePermission` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCalendar`
--

CREATE TABLE `btCalendar` (
  `bID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByTopicAttributeKeyID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterByTopicID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `viewTypes` longtext COLLATE utf8mb4_unicode_ci,
  `viewTypesOrder` longtext COLLATE utf8mb4_unicode_ci,
  `defaultView` longtext COLLATE utf8mb4_unicode_ci,
  `navLinks` int(11) DEFAULT NULL,
  `eventLimit` int(11) DEFAULT NULL,
  `lightboxProperties` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCalendarEvent`
--

CREATE TABLE `btCalendarEvent` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Specify, P = Page, R = Request',
  `calendarEventAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendarID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eventID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `displayEventAttributes` longtext COLLATE utf8mb4_unicode_ci,
  `enableLinkToPage` tinyint(1) DEFAULT '0',
  `displayEventName` tinyint(1) DEFAULT '0',
  `displayEventDate` tinyint(1) DEFAULT '0',
  `displayEventDescription` tinyint(1) DEFAULT '0',
  `allowExport` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btContentFile`
--

CREATE TABLE `btContentFile` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btContentImage`
--

CREATE TABLE `btContentImage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `fOnstateID` int(10) UNSIGNED DEFAULT '0',
  `cropImage` int(10) UNSIGNED DEFAULT '0',
  `maxWidth` int(10) UNSIGNED DEFAULT '0',
  `maxHeight` int(10) UNSIGNED DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `fileLinkID` int(10) UNSIGNED DEFAULT '0',
  `openLinkInNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `altText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizingOption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'thumbnails_default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btContentImage`
--

INSERT INTO `btContentImage` (`bID`, `fID`, `fOnstateID`, `cropImage`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `fileLinkID`, `openLinkInNewWindow`, `altText`, `title`, `sizingOption`) VALUES
(117, 17, 0, 0, 0, 0, '', 0, 0, 0, '', '', 'thumbnails_default'),
(148, 23, 0, 0, 0, 0, '', 0, 0, 0, '', '', 'thumbnails_default'),
(174, 17, 0, 0, 0, 0, '', 0, 0, 0, '', '', 'thumbnails_default');

-- --------------------------------------------------------

--
-- Table structure for table `btContentImageBreakpoints`
--

CREATE TABLE `btContentImageBreakpoints` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `breakpointHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ftTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btContentImageBreakpoints`
--

INSERT INTO `btContentImageBreakpoints` (`id`, `bID`, `breakpointHandle`, `ftTypeID`) VALUES
(1, 117, 'large', 0),
(2, 117, 'medium', 0),
(3, 117, 'small', 0),
(4, 148, 'large', 0),
(5, 148, 'medium', 0),
(6, 148, 'small', 0),
(7, 174, 'large', 0),
(8, 174, 'medium', 0),
(9, 174, 'small', 0);

-- --------------------------------------------------------

--
-- Table structure for table `btContentLocal`
--

CREATE TABLE `btContentLocal` (
  `bID` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btContentLocal`
--

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(24, ''),
(26, ''),
(28, ''),
(30, ''),
(32, ''),
(34, ''),
(36, ''),
(38, ''),
(40, ''),
(42, ''),
(44, ''),
(46, ''),
(48, ''),
(50, ''),
(52, ''),
(54, ''),
(56, ''),
(58, ''),
(60, ''),
(62, ''),
(64, ''),
(66, ''),
(68, ''),
(70, ''),
(72, ''),
(74, ''),
(76, ''),
(78, ''),
(80, ''),
(82, ''),
(84, ''),
(91, '<p>Copyright AISIN CORPORATION</p>\r\n'),
(93, ''),
(95, ''),
(97, ''),
(99, ''),
(100, '<h2>Official SNS</h2>\r\n'),
(105, '<p><strong>Official SNS</strong></p>\r\n'),
(106, '<p>Official SNS</p>\r\n'),
(109, '<h1>Inspiring &ldquo;movement&rdquo;,&nbsp;<br />\r\ncreating tomorrow</h1>\r\n'),
(113, '<h1>Inspiring &ldquo;movement&rdquo;, creating tomorrow</h1>\r\n'),
(115, '<h1>Bringing further joy and ease&nbsp;to the mobility experience for all.</h1>\r\n'),
(118, '<h1>About Aisin Group</h1>\r\n\r\n<p>The aim of these principles is to continuously provide new value to our colleagues, our customers and society and to build a sustainable society.</p>\r\n'),
(122, '<h1>Products and Services</h1>\r\n\r\n<p>With specialized expertise in a wide range of business fields, we are able to meet a wide range of needs in areas that range from our core mobility business to fields such as energy.</p>\r\n'),
(126, '<h1>Sustainability</h1>\r\n\r\n<p>For a society where everyone can live in harmony with nature.</p>\r\n'),
(150, '<h1>Career</h1>\r\n'),
(152, '<h1>Contact</h1>\r\n'),
(160, '<p>The standard Lorem Ipsum passage, used since the 1500s<br />\r\n&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<p>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC<br />\r\n&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n'),
(167, '<h1>Contact</h1>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `btCoreAreaLayout`
--

CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btCoreAreaLayout`
--

INSERT INTO `btCoreAreaLayout` (`bID`, `arLayoutID`) VALUES
(2, 1),
(6, 2),
(9, 3),
(14, 4),
(16, 5),
(18, 6),
(20, 7);

-- --------------------------------------------------------

--
-- Table structure for table `btCoreBoardSlot`
--

CREATE TABLE `btCoreBoardSlot` (
  `bID` int(10) UNSIGNED NOT NULL,
  `slotTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `contentObjectCollection` json DEFAULT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreContainer`
--

CREATE TABLE `btCoreContainer` (
  `bID` int(10) UNSIGNED NOT NULL,
  `containerInstanceID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreConversation`
--

CREATE TABLE `btCoreConversation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `enableTopCommentReviews` tinyint(1) NOT NULL DEFAULT '0',
  `displaySocialLinks` tinyint(1) NOT NULL DEFAULT '1',
  `reviewAggregateAttributeKey` int(11) DEFAULT NULL,
  `displayPostingForm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) UNSIGNED NOT NULL,
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btCorePageTypeComposerControlOutput`
--

INSERT INTO `btCorePageTypeComposerControlOutput` (`bID`, `ptComposerOutputControlID`) VALUES
(22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btCoreScrapbookDisplay`
--

CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bOriginalID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

INSERT INTO `btCoreScrapbookDisplay` (`bID`, `bOriginalID`) VALUES
(147, 145);

-- --------------------------------------------------------

--
-- Table structure for table `btCoreStackDisplay`
--

CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `stID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btDateNavigation`
--

CREATE TABLE `btDateNavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cTargetID` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL,
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btDesktopConcreteLatest`
--

CREATE TABLE `btDesktopConcreteLatest` (
  `bID` int(10) UNSIGNED NOT NULL,
  `slot` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btDesktopConcreteLatest`
--

INSERT INTO `btDesktopConcreteLatest` (`bID`, `slot`) VALUES
(10, 'A'),
(11, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `btDesktopDraftList`
--

CREATE TABLE `btDesktopDraftList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `draftsPerPage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btDesktopDraftList`
--

INSERT INTO `btDesktopDraftList` (`bID`, `draftsPerPage`) VALUES
(17, 10),
(21, 10);

-- --------------------------------------------------------

--
-- Table structure for table `btDesktopSiteActivity`
--

CREATE TABLE `btDesktopSiteActivity` (
  `bID` int(10) UNSIGNED NOT NULL,
  `types` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btDesktopSiteActivity`
--

INSERT INTO `btDesktopSiteActivity` (`bID`, `types`) VALUES
(5, '[\"form_submissions\",\"survey_results\",\"signups\",\"conversation_messages\",\"workflow\"]');

-- --------------------------------------------------------

--
-- Table structure for table `btDocumentLibrary`
--

CREATE TABLE `btDocumentLibrary` (
  `bID` int(10) UNSIGNED NOT NULL,
  `setIds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folderID` int(11) NOT NULL DEFAULT '0',
  `setMode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onlyCurrentUser` int(11) DEFAULT '0',
  `tags` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewProperties` longtext COLLATE utf8mb4_unicode_ci,
  `expandableProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'title',
  `displayLimit` int(11) DEFAULT '20',
  `displayOrderDesc` tinyint(1) NOT NULL DEFAULT '0',
  `addFilesToSetID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxThumbWidth` int(11) DEFAULT '100',
  `maxThumbHeight` int(11) DEFAULT '150',
  `enableSearch` int(11) DEFAULT '0',
  `heightMode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'auto',
  `downloadFileMethod` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'force',
  `fixedHeightSize` int(11) DEFAULT '0',
  `headerBackgroundColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowFileUploading` int(11) DEFAULT '0',
  `allowInPageFileManagement` int(11) DEFAULT '0',
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT '0',
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hideFolders` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btEventList`
--

CREATE TABLE `btEventList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `caID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalToRetrieve` smallint(5) UNSIGNED NOT NULL DEFAULT '10',
  `totalPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT '10',
  `filterByTopicAttributeKeyID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterByTopicID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterByPageTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByFeatured` tinyint(1) NOT NULL DEFAULT '0',
  `eventListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkToPage` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExpressEntryDetail`
--

CREATE TABLE `btExpressEntryDetail` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exSpecificEntryID` int(10) UNSIGNED DEFAULT NULL,
  `exEntryAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `entryMode` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExpressEntryList`
--

CREATE TABLE `btExpressEntryList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailPage` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `linkedProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchAssociations` longtext COLLATE utf8mb4_unicode_ci,
  `columns` longtext COLLATE utf8mb4_unicode_ci,
  `filterFields` longtext COLLATE utf8mb4_unicode_ci,
  `displayLimit` int(11) DEFAULT '20',
  `enableSearch` int(11) DEFAULT '0',
  `enableKeywordSearch` int(11) DEFAULT '0',
  `headerBackgroundColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT '0',
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `enableItemsPerPageSelection` int(11) DEFAULT '0',
  `enablePagination` int(11) DEFAULT '0',
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExpressForm`
--

CREATE TABLE `btExpressForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `submitLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `storeFormSubmission` tinyint(1) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `replyToEmailControlID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addFilesToSet` int(11) DEFAULT '0',
  `addFilesToFolder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExternalForm`
--

CREATE TABLE `btExternalForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `filename` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFaq`
--

CREATE TABLE `btFaq` (
  `bID` int(10) UNSIGNED NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFaqEntries`
--

CREATE TABLE `btFaqEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFeature`
--

CREATE TABLE `btFeature` (
  `bID` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFeatureLink`
--

CREATE TABLE `btFeatureLink` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `buttonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonExternalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonInternalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `buttonFileLinkID` int(10) UNSIGNED DEFAULT '0',
  `buttonColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonStyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h2',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btForm`
--

CREATE TABLE `btForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswers`
--

CREATE TABLE `btFormAnswers` (
  `aID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED DEFAULT '0',
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswerSet`
--

CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormQuestions`
--

CREATE TABLE `btFormQuestions` (
  `qID` int(10) UNSIGNED NOT NULL,
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0',
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `position` int(10) UNSIGNED DEFAULT '1000',
  `width` int(10) UNSIGNED DEFAULT '50',
  `height` int(10) UNSIGNED DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btGallery`
--

CREATE TABLE `btGallery` (
  `bID` int(10) UNSIGNED NOT NULL,
  `includeDownloadLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btGalleryEntries`
--

CREATE TABLE `btGalleryEntries` (
  `eID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `idx` int(10) UNSIGNED DEFAULT NULL,
  `fID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btGalleryEntryDisplayChoices`
--

CREATE TABLE `btGalleryEntryDisplayChoices` (
  `dcID` int(10) UNSIGNED NOT NULL,
  `entryID` int(10) UNSIGNED DEFAULT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `dcKey` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btGoogleMap`
--

CREATE TABLE `btGoogleMap` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btHeroImage`
--

CREATE TABLE `btHeroImage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `image` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `buttonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonExternalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonInternalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `buttonFileLinkID` int(10) UNSIGNED DEFAULT '0',
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonStyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btImageSlider`
--

CREATE TABLE `btImageSlider` (
  `bID` int(10) UNSIGNED NOT NULL,
  `navigationType` int(10) UNSIGNED DEFAULT '0',
  `timeout` int(10) UNSIGNED DEFAULT NULL,
  `speed` int(10) UNSIGNED DEFAULT NULL,
  `noAnimate` int(10) UNSIGNED DEFAULT NULL,
  `pause` int(10) UNSIGNED DEFAULT NULL,
  `maxWidth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btImageSliderEntries`
--

CREATE TABLE `btImageSliderEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `fID` int(10) UNSIGNED DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btNavigation`
--

CREATE TABLE `btNavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btNavigation`
--

INSERT INTO `btNavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
(85, 'display_asc', 'top', 0, 0, 'all', 'custom', 2, 0),
(86, 'display_asc', 'top', 0, 0, 'all', 'custom', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btNextPrevious`
--

CREATE TABLE `btNextPrevious` (
  `bID` int(10) UNSIGNED NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btPageAttributeDisplay`
--

CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) UNSIGNED DEFAULT NULL,
  `thumbnailWidth` int(10) UNSIGNED DEFAULT NULL,
  `delimiter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btPageList`
--

CREATE TABLE `btPageList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `num` smallint(5) UNSIGNED NOT NULL,
  `orderBy` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `cThisParent` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `displaySystemPages` tinyint(1) NOT NULL DEFAULT '0',
  `excludeCurrentPage` tinyint(1) NOT NULL DEFAULT '0',
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btPageList`
--

INSERT INTO `btPageList` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `cThisParent`, `useButtonForLink`, `buttonLinkText`, `pageListTitle`, `filterByRelated`, `filterByCustomTopic`, `filterDateOption`, `filterDateDays`, `filterDateStart`, `filterDateEnd`, `relatedTopicAttributeKeyHandle`, `customTopicAttributeKeyHandle`, `customTopicTreeNodeID`, `includeName`, `includeDescription`, `includeDate`, `includeAllDescendents`, `paginate`, `displayAliases`, `ignorePermissions`, `enableExternalFiltering`, `ptID`, `pfID`, `truncateSummaries`, `displayFeaturedOnly`, `noResultsMessage`, `displayThumbnail`, `truncateChars`, `displaySystemPages`, `excludeCurrentPage`, `titleFormat`) VALUES
(173, 12, 'chrono_desc', 260, 0, 0, 0, '', 'Newsroom', 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 'h1');

-- --------------------------------------------------------

--
-- Table structure for table `btPageTitle`
--

CREATE TABLE `btPageTitle` (
  `bID` int(10) UNSIGNED NOT NULL,
  `useCustomTitle` int(10) UNSIGNED DEFAULT '0',
  `useFilterTitle` int(10) UNSIGNED DEFAULT '0',
  `useFilterTopic` int(10) UNSIGNED DEFAULT '0',
  `useFilterTag` int(10) UNSIGNED DEFAULT '0',
  `useFilterDate` int(10) UNSIGNED DEFAULT '0',
  `topicTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btRssDisplay`
--

CREATE TABLE `btRssDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) UNSIGNED DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btRssDisplay`
--

INSERT INTO `btRssDisplay` (`bID`, `title`, `url`, `dateFormat`, `itemsToDisplay`, `showSummary`, `launchInNewWindow`, `titleFormat`) VALUES
(7, 'Tutorials', 'https://documentation.concretecms.org/rss/tutorials', '', 1, 1, 1, 'h5'),
(13, 'News from concretecms.com', 'https://www.concretecms.com/rss/blog', '', 3, 1, 1, 'h5');

-- --------------------------------------------------------

--
-- Table structure for table `btSearch`
--

CREATE TABLE `btSearch` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_all` tinyint(1) DEFAULT NULL,
  `allow_user_options` tinyint(1) DEFAULT NULL,
  `postTo_cID` int(10) UNSIGNED DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btSearch`
--

INSERT INTO `btSearch` (`bID`, `title`, `buttonText`, `baseSearchPath`, `search_all`, `allow_user_options`, `postTo_cID`, `resultsURL`) VALUES
(87, 'Search Keywords', 'search', '', 0, 0, NULL, ''),
(88, 'Search Keywords', 'search', '', 0, 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `btShareThisPage`
--

CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSocialLinks`
--

CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `slID` int(10) UNSIGNED DEFAULT '0',
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btSocialLinks`
--

INSERT INTO `btSocialLinks` (`btSocialLinkID`, `bID`, `slID`, `displayOrder`) VALUES
(1, 101, 1, 0),
(2, 102, 1, 0),
(4, 107, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btSurvey`
--

CREATE TABLE `btSurvey` (
  `bID` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  `showResults` int(11) DEFAULT '0',
  `customMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyOptions`
--

CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) UNSIGNED NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyResults`
--

CREATE TABLE `btSurveyResults` (
  `resultID` int(10) UNSIGNED NOT NULL,
  `optionID` int(10) UNSIGNED DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSwitchLanguage`
--

CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTags`
--

CREATE TABLE `btTags` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTestimonial`
--

CREATE TABLE `btTestimonial` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci,
  `awardImageID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTopicList`
--

CREATE TABLE `btTopicList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `titleFormat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTopNavigationBar`
--

CREATE TABLE `btTopNavigationBar` (
  `bID` int(10) UNSIGNED NOT NULL,
  `brandingText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brandingLogo` int(11) DEFAULT NULL,
  `brandingTransparentLogo` int(11) DEFAULT NULL,
  `includeBrandText` tinyint(1) DEFAULT NULL,
  `includeBrandLogo` tinyint(1) DEFAULT NULL,
  `includeTransparency` tinyint(1) DEFAULT NULL,
  `includeStickyNav` tinyint(1) DEFAULT NULL,
  `includeNavigation` tinyint(1) DEFAULT NULL,
  `includeNavigationDropdowns` tinyint(1) DEFAULT NULL,
  `includeSearchInput` tinyint(1) DEFAULT NULL,
  `searchInputFormActionPageID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btVideo`
--

CREATE TABLE `btVideo` (
  `bID` int(10) UNSIGNED NOT NULL,
  `webmfID` int(10) UNSIGNED DEFAULT '0',
  `oggfID` int(10) UNSIGNED DEFAULT '0',
  `posterfID` int(10) UNSIGNED DEFAULT '0',
  `mp4fID` int(10) UNSIGNED DEFAULT '0',
  `videoSize` int(10) UNSIGNED DEFAULT '0',
  `width` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btYouTube`
--

CREATE TABLE `btYouTube` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startTimeEnabled` tinyint(1) DEFAULT NULL,
  `startTime` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noCookie` tinyint(1) DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controls` int(10) UNSIGNED DEFAULT NULL,
  `iv_load_policy` int(10) UNSIGNED DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `lazyLoad` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showCaptions` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventAttributeKeys`
--

CREATE TABLE `CalendarEventAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventCustomSummaryTemplates`
--

CREATE TABLE `CalendarEventCustomSummaryTemplates` (
  `template_id` int(11) NOT NULL,
  `eventID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventOccurrences`
--

CREATE TABLE `CalendarEventOccurrences` (
  `occurrenceID` int(10) UNSIGNED NOT NULL,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `cancelled` tinyint(1) NOT NULL,
  `repetitionID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventRepetitions`
--

CREATE TABLE `CalendarEventRepetitions` (
  `repetitionID` int(10) UNSIGNED NOT NULL,
  `repetitionObject` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEvents`
--

CREATE TABLE `CalendarEvents` (
  `eventID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED DEFAULT NULL,
  `hasCustomSummaryTemplates` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventSearchIndexAttributes`
--

CREATE TABLE `CalendarEventSearchIndexAttributes` (
  `eventID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventSummaryTemplates`
--

CREATE TABLE `CalendarEventSummaryTemplates` (
  `id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `data` json NOT NULL,
  `eventID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersionAttributeValues`
--

CREATE TABLE `CalendarEventVersionAttributeValues` (
  `eventVersionID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersionOccurrences`
--

CREATE TABLE `CalendarEventVersionOccurrences` (
  `versionOccurrenceID` int(10) UNSIGNED NOT NULL,
  `eventVersionID` int(10) UNSIGNED DEFAULT NULL,
  `occurrenceID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersionRepetitions`
--

CREATE TABLE `CalendarEventVersionRepetitions` (
  `versionRepetitionID` int(10) UNSIGNED NOT NULL,
  `eventVersionID` int(10) UNSIGNED DEFAULT NULL,
  `repetitionID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersions`
--

CREATE TABLE `CalendarEventVersions` (
  `eventVersionID` int(10) UNSIGNED NOT NULL,
  `evDateAdded` datetime NOT NULL,
  `evActivateDateTime` datetime DEFAULT NULL,
  `evIsApproved` tinyint(1) NOT NULL,
  `evDescription` longtext COLLATE utf8mb4_unicode_ci,
  `evName` longtext COLLATE utf8mb4_unicode_ci,
  `evRelatedPageRelationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eventID` int(10) UNSIGNED DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventWorkflowProgress`
--

CREATE TABLE `CalendarEventWorkflowProgress` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eventID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarPermissionAssignments`
--

CREATE TABLE `CalendarPermissionAssignments` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarRelatedEvents`
--

CREATE TABLE `CalendarRelatedEvents` (
  `relatedEventID` int(10) UNSIGNED NOT NULL,
  `relationID` int(10) UNSIGNED NOT NULL,
  `relationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Calendars`
--

CREATE TABLE `Calendars` (
  `caID` int(10) UNSIGNED NOT NULL,
  `caName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caOverridePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `eventPageAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableMoreDetails` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventPageParentID` int(10) UNSIGNED DEFAULT '0',
  `eventPageTypeID` int(10) UNSIGNED DEFAULT '0',
  `eventPageAssociatedID` int(10) UNSIGNED DEFAULT '0',
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionAttributeKeys`
--

CREATE TABLE `CollectionAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionAttributeKeys`
--

INSERT INTO `CollectionAttributeKeys` (`akID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(20),
(21),
(22),
(23);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionAttributeValues`
--

CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionAttributeValues`
--

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(2, 1, 6, 1),
(3, 1, 3, 2),
(4, 1, 3, 3),
(5, 1, 3, 4),
(6, 1, 3, 5),
(8, 1, 3, 6),
(9, 1, 3, 7),
(10, 1, 3, 8),
(11, 1, 7, 9),
(11, 1, 3, 10),
(12, 1, 3, 11),
(13, 1, 3, 12),
(14, 1, 3, 13),
(15, 1, 3, 14),
(16, 1, 3, 15),
(17, 1, 3, 16),
(17, 1, 7, 17),
(18, 1, 3, 18),
(18, 1, 7, 19),
(20, 1, 3, 20),
(26, 1, 3, 23),
(27, 1, 3, 24),
(28, 1, 7, 25),
(28, 1, 12, 26),
(29, 1, 3, 27),
(30, 1, 3, 28),
(31, 1, 3, 29),
(33, 1, 3, 30),
(34, 1, 3, 31),
(34, 1, 7, 32),
(36, 1, 7, 33),
(37, 1, 7, 34),
(38, 1, 7, 35),
(39, 1, 7, 36),
(40, 1, 7, 37),
(41, 1, 7, 38),
(43, 1, 7, 39),
(44, 1, 3, 40),
(45, 1, 3, 41),
(46, 1, 3, 42),
(49, 1, 7, 43),
(49, 1, 12, 44),
(51, 1, 7, 45),
(51, 1, 12, 46),
(54, 1, 6, 47),
(56, 1, 3, 48),
(58, 1, 7, 49),
(58, 1, 12, 50),
(58, 1, 3, 51),
(59, 1, 3, 52),
(60, 1, 3, 53),
(61, 1, 3, 54),
(62, 1, 3, 55),
(63, 1, 3, 56),
(64, 1, 3, 57),
(65, 1, 3, 58),
(66, 1, 3, 59),
(68, 1, 3, 60),
(69, 1, 3, 61),
(70, 1, 3, 62),
(71, 1, 3, 63),
(72, 1, 3, 64),
(73, 1, 3, 65),
(74, 1, 3, 66),
(74, 1, 7, 67),
(75, 1, 3, 68),
(76, 1, 3, 69),
(76, 1, 7, 70),
(76, 1, 12, 71),
(77, 1, 3, 72),
(80, 1, 7, 73),
(80, 1, 12, 74),
(81, 1, 7, 75),
(81, 1, 12, 76),
(82, 1, 7, 77),
(82, 1, 12, 78),
(83, 1, 7, 79),
(83, 1, 12, 80),
(84, 1, 7, 81),
(84, 1, 12, 82),
(90, 1, 3, 83),
(96, 1, 3, 84),
(97, 1, 3, 85),
(98, 1, 3, 86),
(99, 1, 3, 87),
(100, 1, 3, 88),
(102, 1, 3, 89),
(103, 1, 3, 90),
(104, 1, 3, 91),
(105, 1, 7, 92),
(105, 1, 3, 93),
(106, 1, 3, 94),
(107, 1, 3, 95),
(108, 1, 3, 96),
(110, 1, 3, 97),
(111, 1, 3, 98),
(112, 1, 3, 99),
(114, 1, 3, 100),
(115, 1, 3, 101),
(122, 1, 3, 105),
(123, 1, 3, 106),
(124, 1, 3, 107),
(125, 1, 3, 108),
(127, 1, 3, 109),
(128, 1, 3, 110),
(129, 1, 3, 111),
(130, 1, 3, 112),
(131, 1, 3, 113),
(134, 1, 3, 114),
(135, 1, 3, 115),
(136, 1, 3, 116),
(137, 1, 3, 117),
(138, 1, 3, 118),
(139, 1, 3, 119),
(140, 1, 3, 120),
(141, 1, 3, 121),
(147, 1, 3, 122),
(148, 1, 3, 123),
(149, 1, 3, 124),
(150, 1, 3, 125),
(152, 1, 3, 126),
(153, 1, 3, 127),
(154, 1, 3, 128),
(155, 1, 3, 129),
(157, 1, 12, 130),
(158, 1, 3, 131),
(159, 1, 3, 132),
(160, 1, 3, 133),
(161, 1, 3, 134),
(162, 1, 3, 135),
(163, 1, 3, 136),
(164, 1, 3, 137),
(166, 1, 3, 138),
(168, 1, 3, 139),
(170, 1, 4, 142),
(170, 1, 5, 143),
(170, 1, 7, 144),
(172, 1, 6, 145),
(174, 1, 6, 146),
(175, 1, 12, 147),
(177, 1, 6, 148),
(183, 1, 6, 149),
(184, 1, 4, 150),
(184, 1, 5, 151),
(184, 1, 7, 152),
(197, 1, 7, 153),
(201, 1, 7, 154),
(201, 1, 12, 155),
(202, 1, 7, 156),
(202, 1, 12, 157),
(203, 1, 7, 158),
(203, 1, 12, 159),
(204, 1, 7, 160),
(204, 1, 12, 161),
(205, 1, 7, 162),
(205, 1, 12, 163),
(206, 1, 7, 164),
(206, 1, 12, 165),
(207, 1, 7, 166),
(207, 1, 12, 167),
(208, 1, 7, 168),
(208, 1, 12, 169),
(212, 1, 7, 170),
(214, 1, 7, 171),
(214, 1, 12, 172),
(215, 1, 7, 173),
(215, 1, 12, 174),
(217, 1, 7, 175),
(217, 1, 12, 176),
(225, 1, 3, 177),
(226, 1, 3, 178),
(227, 1, 3, 179),
(229, 1, 3, 180),
(230, 1, 3, 181),
(231, 1, 6, 182),
(232, 1, 3, 183),
(233, 1, 7, 184),
(234, 1, 7, 185),
(235, 1, 3, 186),
(169, 1, 7, 187),
(169, 1, 12, 188),
(236, 1, 3, 189),
(274, 2, 22, 194),
(290, 1, 7, 211),
(290, 1, 21, 212),
(290, 1, 10, 213),
(290, 2, 7, 214),
(290, 2, 10, 215),
(290, 2, 21, 216),
(291, 1, 7, 217),
(291, 1, 21, 218),
(291, 1, 10, 219),
(292, 1, 7, 220),
(292, 1, 21, 221),
(292, 1, 10, 222),
(293, 1, 7, 223),
(293, 1, 21, 224),
(293, 1, 10, 225),
(294, 1, 7, 226),
(294, 1, 21, 227),
(294, 1, 10, 228),
(295, 1, 7, 229),
(295, 1, 21, 230),
(295, 1, 10, 231),
(1, 5, 7, 232),
(1, 6, 7, 232),
(1, 7, 7, 232),
(1, 8, 7, 232),
(1, 9, 7, 232),
(1, 10, 7, 232),
(1, 11, 7, 232),
(1, 12, 7, 232),
(1, 13, 7, 232),
(1, 14, 7, 232),
(1, 15, 7, 232),
(1, 16, 7, 232),
(1, 17, 7, 232),
(1, 18, 7, 232),
(1, 19, 7, 232),
(1, 20, 7, 232),
(1, 21, 7, 232),
(1, 22, 7, 232),
(1, 23, 7, 232),
(1, 24, 7, 232),
(1, 25, 7, 232),
(1, 26, 7, 232),
(1, 27, 7, 232),
(1, 28, 7, 232),
(1, 29, 7, 232),
(1, 30, 7, 232),
(1, 31, 7, 232),
(1, 32, 7, 232),
(1, 33, 7, 232),
(1, 34, 7, 232),
(1, 35, 7, 232),
(1, 36, 7, 232),
(296, 2, 7, 233),
(297, 2, 7, 234),
(298, 2, 7, 235),
(299, 2, 7, 236),
(290, 3, 7, 259),
(290, 3, 10, 260),
(290, 3, 21, 261),
(290, 3, 23, 262),
(290, 4, 7, 263),
(290, 4, 10, 264),
(290, 4, 21, 265),
(290, 5, 7, 266),
(290, 5, 10, 267),
(290, 5, 21, 268),
(290, 5, 23, 269),
(290, 6, 7, 270),
(290, 6, 10, 271),
(290, 6, 21, 272),
(290, 6, 23, 273),
(291, 2, 7, 274),
(291, 2, 10, 275),
(291, 2, 21, 276),
(291, 2, 23, 277),
(292, 2, 7, 278),
(292, 2, 10, 279),
(292, 2, 21, 280),
(292, 2, 23, 281),
(293, 2, 7, 282),
(293, 2, 10, 283),
(293, 2, 21, 284),
(293, 2, 23, 285),
(294, 2, 7, 286),
(294, 2, 10, 287),
(294, 2, 21, 288),
(294, 2, 23, 289),
(295, 2, 7, 290),
(295, 2, 10, 291),
(295, 2, 21, 292),
(295, 2, 23, 293);

-- --------------------------------------------------------

--
-- Table structure for table `Collections`
--

CREATE TABLE `Collections` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Collections`
--

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2023-03-03 10:05:04', '2023-03-13 11:45:15', NULL),
(2, '2023-03-03 10:05:38', '2023-03-03 10:05:38', 'dashboard'),
(3, '2023-03-03 10:05:38', '2023-03-03 10:05:39', 'sitemap'),
(4, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'full'),
(5, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'explore'),
(6, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'search'),
(7, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'files'),
(8, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'search'),
(9, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'attributes'),
(10, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'sets'),
(11, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'add_set'),
(12, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'users'),
(13, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'search'),
(14, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'groups'),
(15, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'message'),
(16, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'attributes'),
(17, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'add'),
(18, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'add_group'),
(19, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'bulkupdate'),
(20, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'group_sets'),
(24, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'express'),
(25, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'entries'),
(26, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'reports'),
(27, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'forms'),
(28, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'legacy'),
(29, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'surveys'),
(30, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'logs'),
(31, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'page_changes'),
(32, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'pages'),
(33, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'themes'),
(34, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'inspect'),
(35, '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'types'),
(36, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'organize'),
(37, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'add'),
(38, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'form'),
(39, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'output'),
(40, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'attributes'),
(41, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'permissions'),
(42, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'templates'),
(43, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'add'),
(44, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'attributes'),
(45, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'single'),
(46, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'feeds'),
(47, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'calendar'),
(48, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'events'),
(49, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'event_list'),
(50, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'add'),
(51, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'permissions'),
(52, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'attributes'),
(53, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'conversations'),
(54, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'messages'),
(55, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'blocks'),
(56, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'stacks'),
(57, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'permissions'),
(58, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'list'),
(59, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'types'),
(60, '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'extend'),
(61, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'install'),
(62, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'update'),
(63, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'connect'),
(64, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'themes'),
(65, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'addons'),
(66, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'system'),
(67, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'basics'),
(68, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'name'),
(69, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'accessibility'),
(70, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'social'),
(71, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'icons'),
(72, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'editor'),
(73, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'multilingual'),
(74, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'update'),
(75, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'timezone'),
(76, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'attributes'),
(77, '2023-03-03 10:05:41', '2023-03-03 10:19:19', 'reset_edit_mode'),
(78, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'express'),
(79, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'entities'),
(80, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'attributes'),
(81, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'associations'),
(82, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'forms'),
(83, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'customize_search'),
(84, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'order_entries'),
(85, '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'entries'),
(86, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'multisite'),
(87, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'sites'),
(88, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'types'),
(89, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'settings'),
(90, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'multilingual'),
(91, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'setup'),
(92, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'copy'),
(93, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'page_report'),
(94, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'translate_interface'),
(95, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'seo'),
(96, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'urls'),
(97, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'bulk'),
(98, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'codes'),
(99, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'excluded'),
(100, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'searchindex'),
(101, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'files'),
(102, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'filetypes'),
(103, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'permissions'),
(104, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'thumbnails'),
(105, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'options'),
(106, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'image_uploading'),
(107, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'storage'),
(108, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'export_options'),
(109, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'optimization'),
(110, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'cache'),
(111, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'clearcache'),
(112, '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'jobs'),
(113, '2023-03-03 10:05:42', '2023-03-03 10:05:43', 'permissions'),
(114, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'site'),
(115, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'tasks'),
(116, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'users'),
(117, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'advanced'),
(118, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'workflows'),
(122, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'captcha'),
(123, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'antispam'),
(124, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'maintenance'),
(125, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'trusted_proxies'),
(126, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'registration'),
(127, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'open'),
(128, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'postlogin'),
(129, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'profiles'),
(130, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'authentication'),
(131, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'global_password_reset'),
(133, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'deactivation'),
(134, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'automated_logout'),
(135, '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'password_requirements'),
(136, '2023-03-03 10:05:43', '2023-03-03 10:05:44', 'session_options'),
(137, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'mail'),
(138, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'method'),
(139, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'test'),
(140, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'importers'),
(141, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'addresses'),
(142, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'calendar'),
(143, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'settings'),
(144, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'colors'),
(145, '2023-03-03 10:05:44', '2023-03-03 10:19:19', 'permissions'),
(146, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'import'),
(147, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'conversations'),
(148, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'settings'),
(149, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'points'),
(150, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'bannedwords'),
(151, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'permissions'),
(152, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'attributes'),
(153, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'types'),
(154, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'sets'),
(155, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'topics'),
(156, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'add'),
(157, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'environment'),
(158, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'info'),
(159, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'debug'),
(160, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'logging'),
(161, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'proxy'),
(162, '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'entities'),
(163, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'database_charset'),
(164, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'geolocation'),
(165, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'update'),
(166, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'update'),
(167, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'api'),
(168, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'settings'),
(169, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'integrations'),
(170, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'welcome'),
(171, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'me'),
(172, '2023-03-03 10:05:51', '2023-03-03 10:05:51', '!stacks'),
(173, '2023-03-03 10:05:51', '2023-03-03 10:05:51', 'page_not_found'),
(174, '2023-03-03 10:05:51', '2023-03-03 10:05:51', '!trash'),
(175, '2023-03-03 10:05:51', '2023-03-03 10:05:51', 'login'),
(176, '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'register'),
(177, '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'account'),
(178, '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'edit_profile'),
(179, '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'avatar'),
(180, '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'messages'),
(181, '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'page_forbidden'),
(182, '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'download_file'),
(183, '2023-03-03 10:05:52', '2023-03-03 10:05:52', '!drafts'),
(184, '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'desktop'),
(185, '2023-03-03 10:05:54', '2023-03-03 10:05:54', NULL),
(196, '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'containers'),
(197, '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'add'),
(198, '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'boards'),
(199, '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'boards'),
(200, '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'add'),
(201, '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'details'),
(202, '2023-03-03 10:19:02', '2023-03-03 10:19:03', 'edit'),
(203, '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'data_sources'),
(204, '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'appearance'),
(205, '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'weighting'),
(206, '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'permissions'),
(207, '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'instances'),
(208, '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'details'),
(209, '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'boards'),
(210, '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'settings'),
(211, '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'permissions'),
(212, '2023-03-03 10:19:13', '2023-03-03 10:19:13', 'details'),
(213, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'designer'),
(214, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'choose_items'),
(215, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'customize_slot'),
(216, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'scheduler'),
(217, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'rules'),
(218, '2023-03-03 10:19:19', '2023-03-03 10:19:19', 'logging'),
(219, '2023-03-03 10:19:21', '2023-03-03 10:19:21', 'external_file_provider'),
(220, '2023-03-03 10:19:28', '2023-03-03 10:19:28', 'image_editor'),
(221, '2023-03-03 10:19:28', '2023-03-03 10:19:28', 'bulk_user_assignment'),
(222, '2023-03-03 10:19:47', '2023-03-03 10:19:47', 'group_types'),
(223, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'automation'),
(224, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'notification'),
(225, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'tasks'),
(226, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'activity'),
(227, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'schedule'),
(228, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'settings'),
(229, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'events'),
(230, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'alerts'),
(231, '2023-03-03 10:20:05', '2023-03-03 10:20:05', '!themes'),
(232, '2023-03-03 10:20:07', '2023-03-03 10:20:07', 'denylist'),
(233, '2023-03-03 10:20:07', '2023-03-03 10:20:07', 'configure'),
(234, '2023-03-03 10:20:07', '2023-03-03 10:20:07', 'range'),
(235, '2023-03-03 10:20:14', '2023-03-03 10:20:14', 'security'),
(236, '2023-03-03 10:20:21', '2023-03-03 10:20:21', 'uploads'),
(242, '2023-03-03 10:33:38', '2023-03-03 10:33:38', 'block_order'),
(243, '2023-03-03 10:33:38', '2023-03-03 10:33:38', 'block_designer'),
(244, '2023-03-03 10:33:38', '2023-03-03 10:33:38', 'block_config'),
(245, '2023-03-03 10:33:38', '2023-03-03 10:33:38', 'settings'),
(246, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'header-site-title'),
(247, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'header-navigation'),
(248, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'footer-legal'),
(249, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'footer-navigation'),
(250, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'footer-contact'),
(251, '2023-03-03 11:11:04', '2023-03-07 07:18:34', 'header-navigation-th'),
(252, '2023-03-03 11:11:04', '2023-03-07 07:21:51', 'header-search-th'),
(253, '2023-03-03 11:11:05', '2023-03-09 05:42:34', 'header-navigation-otherth'),
(254, '2023-03-03 11:11:05', '2023-03-07 08:08:28', 'footer-social-th'),
(255, '2023-03-03 11:11:05', '2023-03-09 05:42:34', 'footer-navigation-th'),
(256, '2023-03-03 11:11:05', '2023-03-07 07:39:07', 'footer-copyright-th'),
(257, '2023-03-03 11:23:17', '2023-03-03 11:23:17', NULL),
(258, '2023-03-07 06:49:33', '2023-03-07 06:49:34', ''),
(259, '2023-03-07 06:51:37', '2023-03-07 06:51:38', ''),
(260, '2023-03-07 06:51:46', '2023-03-07 06:51:47', ''),
(261, '2023-03-07 06:52:01', '2023-03-07 06:52:02', ''),
(262, '2023-03-07 06:52:14', '2023-03-07 06:52:14', ''),
(263, '2023-03-07 06:52:50', '2023-03-07 06:52:50', ''),
(264, '2023-03-07 06:53:06', '2023-03-07 06:53:06', ''),
(265, '2023-03-07 06:53:16', '2023-03-07 06:53:16', ''),
(266, '2023-03-07 06:53:25', '2023-03-07 06:53:26', ''),
(267, '2023-03-07 06:53:33', '2023-03-07 06:53:33', ''),
(268, '2023-03-07 06:53:42', '2023-03-07 06:53:43', ''),
(269, '2023-03-07 06:53:50', '2023-03-07 06:53:51', ''),
(270, '2023-03-07 06:53:58', '2023-03-07 06:53:58', ''),
(271, '2023-03-07 06:54:11', '2023-03-07 06:54:11', ''),
(272, '2023-03-07 06:54:18', '2023-03-07 06:54:18', ''),
(273, '2023-03-07 06:55:11', '2023-03-07 06:55:11', ''),
(274, '2023-03-07 06:55:21', '2023-03-07 06:55:58', ''),
(275, '2023-03-07 06:55:33', '2023-03-07 06:55:33', ''),
(276, '2023-03-07 06:55:40', '2023-03-07 06:55:41', ''),
(277, '2023-03-07 06:55:48', '2023-03-07 06:55:48', ''),
(278, '2023-03-07 06:56:05', '2023-03-07 06:56:05', ''),
(279, '2023-03-07 06:56:12', '2023-03-07 06:56:13', ''),
(280, '2023-03-07 06:56:19', '2023-03-07 06:56:19', ''),
(281, '2023-03-07 06:56:26', '2023-03-07 06:56:26', ''),
(282, '2023-03-07 06:56:33', '2023-03-07 06:56:33', ''),
(283, '2023-03-07 06:56:47', '2023-03-07 06:56:48', ''),
(284, '2023-03-07 06:56:54', '2023-03-07 06:56:55', ''),
(285, '2023-03-07 06:57:02', '2023-03-07 06:57:03', ''),
(286, '2023-03-07 06:57:09', '2023-03-07 06:57:10', ''),
(287, '2023-03-07 06:57:19', '2023-03-07 06:57:19', ''),
(288, '2023-03-07 06:57:26', '2023-03-07 06:57:26', ''),
(289, '2023-03-07 07:07:32', '2023-03-07 07:07:32', NULL),
(290, '2023-03-07 07:08:53', '2023-03-13 09:27:30', ''),
(291, '2023-03-07 07:10:18', '2023-03-13 09:27:46', ''),
(292, '2023-03-07 07:11:15', '2023-03-13 09:28:12', ''),
(293, '2023-03-07 07:12:10', '2023-03-13 09:28:19', ''),
(294, '2023-03-07 07:13:15', '2023-03-13 09:28:37', ''),
(295, '2023-03-07 07:14:20', '2023-03-13 09:28:47', ''),
(296, '2023-03-07 08:03:58', '2023-03-07 08:04:04', ''),
(297, '2023-03-07 08:04:17', '2023-03-07 08:04:23', ''),
(298, '2023-03-07 08:04:31', '2023-03-07 08:04:36', ''),
(299, '2023-03-07 08:04:44', '2023-03-07 08:04:49', ''),
(300, '2023-03-07 08:21:48', '2023-03-07 08:21:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) UNSIGNED NOT NULL,
  `ak_meta_title` longtext COLLATE utf8mb4_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `ak_desktop_priority` decimal(14,4) DEFAULT '0.0000',
  `ak_is_desktop` tinyint(1) DEFAULT '0',
  `ak_icon_dashboard` longtext COLLATE utf8mb4_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8mb4_unicode_ci,
  `ak_tags` longtext COLLATE utf8mb4_unicode_ci,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_exclude_subpages_from_nav` tinyint(1) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0',
  `ak_navigation_column` tinyint(1) DEFAULT '0',
  `ak_news_category` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_desktop_priority`, `ak_is_desktop`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_exclude_subpages_from_nav`, `ak_thumbnail`, `ak_navigation_column`, `ak_news_category`) VALUES
(1, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(2, NULL, NULL, NULL, '0.0000', 0, 'fa fa-th-large', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(3, NULL, NULL, 'pages, add page, delete page, copy, move, alias', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(4, NULL, NULL, 'pages, add page, delete page, copy, move, alias', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(5, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(6, NULL, NULL, 'find page, search page, search, find, pages, sitemap', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(8, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(9, NULL, NULL, 'file, file attributes, title, attribute, description, rename', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(10, NULL, NULL, 'files, category, categories', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(11, NULL, NULL, 'new file set', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(12, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(13, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(14, NULL, NULL, 'user, group, people, permissions, expire, badges', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(15, NULL, NULL, 'user, group, people, messages', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(16, NULL, NULL, 'user attributes, user data, gather data, registration data', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(17, NULL, NULL, 'new user, create', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(18, NULL, NULL, 'new user group, new group, group, create', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(20, NULL, NULL, 'group set', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(27, NULL, NULL, 'forms, questions, response, data', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(28, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(29, NULL, NULL, 'questions, quiz, response', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(30, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(31, NULL, NULL, 'changes, csv, report', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(33, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(34, NULL, NULL, 'page types', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(36, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(37, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(38, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(39, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(40, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(41, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(43, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(44, NULL, NULL, 'page attributes, custom', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(45, NULL, NULL, 'single, page, custom, application', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(46, NULL, NULL, 'atom, rss, feed, syndication', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(49, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(51, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(54, NULL, NULL, NULL, '0.0000', 0, 'icon-bullhorn', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(56, NULL, NULL, 'stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(58, NULL, NULL, 'edit stacks, view stacks, all stacks', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(59, NULL, NULL, 'block, refresh, custom', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(60, NULL, NULL, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(61, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(62, NULL, NULL, 'update, upgrade', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(63, NULL, NULL, 'concretecms.org, my account, marketplace', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(64, NULL, NULL, 'buy theme, new theme, marketplace, template', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(65, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(66, NULL, NULL, 'dashboard, configuration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(68, NULL, NULL, 'website name, title', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(69, NULL, NULL, 'accessibility, easy mode', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(70, NULL, NULL, 'sharing, facebook, twitter', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(71, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(72, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(73, NULL, NULL, 'translate, translation, internationalization, multilingual', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(74, NULL, NULL, 'languages, update, gettext, translation, translate', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(75, NULL, NULL, 'timezone, profile, locale', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(76, NULL, NULL, 'site attributes', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(77, NULL, NULL, 'checkin, check-in, check, force', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(80, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(81, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(82, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(83, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(84, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(90, NULL, NULL, 'multilingual, localization, internationalization, i18n', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(96, NULL, NULL, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(97, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(98, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(99, NULL, NULL, 'pretty, slug', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(100, NULL, NULL, 'configure search, site search, search option', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(102, NULL, NULL, 'security, files, media, extension, manager, upload', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(103, NULL, NULL, 'file options, file manager, upload, modify', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(104, NULL, NULL, 'images, picture, responsive, retina', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(105, NULL, NULL, 'thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(106, NULL, NULL, 'uploading, upload, images, image, resizing, manager, exif, rotation, rotate, quality, compression, png, jpg, jpeg', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(107, NULL, NULL, 'security, alternate storage, hide files', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(108, NULL, NULL, 'files, export, csv, bom, encoding', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(110, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(111, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(112, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(114, NULL, NULL, 'editors, hide site, offline, private, public, access', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(115, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(122, NULL, NULL, 'security, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(123, NULL, NULL, 'antispam, block spam, security', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(124, NULL, NULL, 'lock site, under construction, hide, hidden', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(125, NULL, NULL, 'trusted, proxy, proxies, ip, header, cloudflare', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(127, NULL, NULL, 'signup, new user, community, public registration, public, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(128, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(129, NULL, NULL, 'member profile, member page, community, forums, social, avatar', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(130, NULL, NULL, 'auth, authentication, types, oauth, facebook, login, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(131, NULL, NULL, 'global, password, reset, change password, force, sign out', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(134, NULL, NULL, 'login, logout, user, agent, ip, change, security, session, invalidation, invalid', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(135, NULL, NULL, 'password, requirements, code, key, login, registration, security, nist', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(136, NULL, NULL, 'session, options', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(137, NULL, NULL, 'smtp, mail settings', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(138, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(139, NULL, NULL, 'test smtp, test mail', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(140, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(141, NULL, NULL, 'mail settings, mail configuration, email, sender', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(147, NULL, NULL, 'conversations', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(148, NULL, NULL, 'conversations', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(149, NULL, NULL, 'conversations ratings, ratings, community, community points', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(150, NULL, NULL, 'conversations bad words, banned words, banned, bad words, bad, words, list', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(152, NULL, NULL, 'attribute configuration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(153, NULL, NULL, 'attributes, types', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(154, NULL, NULL, 'attributes, sets', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(155, NULL, NULL, 'topics, tags, taxonomy', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(157, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(158, NULL, NULL, 'overrides, system info, debug, support, help', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(159, NULL, NULL, 'errors, exceptions, develop, support, help', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(160, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(161, NULL, NULL, 'network, proxy server', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(162, NULL, NULL, 'database, entities, doctrine, orm', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(163, NULL, NULL, 'database, character set, charset, collation, utf8', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(164, NULL, NULL, 'geolocation, ip, address, country, nation, place, locate', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(166, NULL, NULL, 'upgrade, new version, update', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(168, NULL, NULL, 'API, programming, public, app', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(169, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(170, NULL, NULL, NULL, '2.0000', 1, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(172, NULL, NULL, NULL, '0.0000', 0, 'fa fa-th', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(174, NULL, NULL, NULL, '0.0000', 0, 'fa fa-trash-o', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(175, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(177, NULL, NULL, NULL, '0.0000', 0, 'fa fa-briefcase', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(183, NULL, NULL, NULL, '0.0000', 0, 'fa fa-edit', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(184, NULL, NULL, NULL, '1.0000', 1, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(197, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(201, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(202, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(203, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(204, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(205, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(206, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(207, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(208, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(212, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(214, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(215, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(217, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL),
(225, NULL, NULL, 'automated jobs, tasks, commands, console, cli', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(226, NULL, NULL, 'processes, queues, jobs, running', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(227, NULL, NULL, 'cron, scheduling', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(229, NULL, NULL, 'websocket, socket, socket.io, push, push notifications, mercure', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(230, NULL, NULL, 'waiting for me, inbox, notifications', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(231, NULL, NULL, NULL, '0.0000', 0, 'fas fa-palette', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(232, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(233, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(234, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(235, NULL, NULL, 'security, content security policy, csp, strict transport security, hsts, x-frame-options', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(236, NULL, NULL, 'files, upload, parallel, upload_max_filesize, post_max_size, limit, resize, chunk', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(274, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, NULL),
(290, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, '\nCarbon neutralily\nElectrification\neAxle\nTechnology\n', 0, 0, 0, 0, 4, 0, '\nTech\n'),
(291, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, '\nCarbon neutralily\nElectrification\neAxle\nTechnology\nManufacturing\n', 0, 0, 0, 0, 5, 0, '\nAutomotive\n'),
(292, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, '\nCarbon neutralily\nElectrification\nTechnology\nAisin Group\n', 0, 0, 0, 0, 6, 0, '\nBusiness\n'),
(293, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, '\nCarbon neutralily\nElectrification\neAxle\nTechnology\n', 0, 0, 0, 0, 7, 0, '\nAutomotive\n'),
(294, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, '\nCarbon neutralily\nElectrification\neAxle\nTechnology\nManufacturing\nAisin Group\n', 0, 0, 0, 0, 8, 0, '\nBusiness\n'),
(295, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, '\nElectrification\nTechnology\nAisin Group\n', 0, 0, 0, 0, 9, 0, '\nTech\n'),
(296, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(297, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(298, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(299, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionAreaStyles`
--

CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocks`
--

CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbRelationID` int(10) UNSIGNED DEFAULT '0',
  `cbDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersionBlocks`
--

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbRelationID`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`, `cbOverrideBlockTypeContainerSettings`, `cbEnableBlockContainer`) VALUES
(1, 12, 109, 'Home Page: Highlight - Content', 66, 0, 1, 0, 0, 0, 0, 0),
(1, 14, 112, 'Home Page: Highlight - Video', 67, 0, 1, 0, 0, 0, 0, 0),
(1, 14, 113, 'Home Page: Highlight - Content', 68, 0, 1, 0, 0, 0, 0, 0),
(1, 15, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 113, 'Home Page: Highlight - Content', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 114, 'Home Page: Intro - Video', 69, 0, 1, 0, 0, 0, 0, 0),
(1, 16, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 113, 'Home Page: Highlight - Content', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 115, 'Home Page: Intro - Content 1', 70, 0, 1, 0, 0, 0, 0, 0),
(1, 17, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 113, 'Home Page: Highlight - Content', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 116, 'Home Page: Intro - Content 2', 71, 0, 1, 0, 0, 0, 0, 0),
(1, 17, 117, 'Home Page: About Us - Background', 72, 0, 1, 0, 0, 0, 0, 0),
(1, 17, 118, 'Home Page: About Us - Content', 73, 0, 1, 0, 0, 0, 0, 0),
(1, 18, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 113, 'Home Page: Highlight - Content', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 118, 'Home Page: About Us - Content', 73, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 121, 'Home Page: Products & Services - Video', 76, 0, 1, 0, 0, 0, 0, 0),
(1, 18, 122, 'Home Page: Products & Services - Content', 77, 0, 1, 0, 0, 0, 0, 0),
(1, 18, 125, 'Home Page: Sustainability - Video', 80, 0, 1, 0, 0, 0, 0, 0),
(1, 18, 126, 'Home Page: Sustainability - Content', 81, 0, 1, 0, 0, 0, 0, 0),
(1, 19, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 113, 'Home Page: Highlight - Content', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 118, 'Home Page: About Us - Content', 73, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 122, 'Home Page: Products & Services - Content', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 19, 126, 'Home Page: Sustainability - Content', 81, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 113, 'Home Page: Highlight - Content', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 118, 'Home Page: About Us - Content', 73, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 122, 'Home Page: Products & Services - Content', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 20, 126, 'Home Page: Sustainability - Content', 81, 0, 0, 0, 0, 0, 0, 0),
(1, 21, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 21, 113, 'Home Page: Highlight - Content', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 21, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 21, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 21, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 21, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 21, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 21, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 21, 143, 'Home Page: About Us - Content', 84, 0, 1, 0, 0, 0, 0, 0),
(1, 21, 144, 'Home Page: Products & Services - Content', 85, 0, 1, 0, 0, 0, 0, 0),
(1, 21, 147, 'Home Page: Sustainability - Content', 87, 0, 1, 0, 0, 0, 0, 0),
(1, 22, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 113, 'Home Page: Highlight - Content', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 144, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 147, 'Home Page: Sustainability - Content', 87, 0, 0, 0, 0, 0, 0, 0),
(1, 22, 148, 'Home Page: Career - Image', 88, 0, 1, 0, 0, 0, 0, 0),
(1, 22, 149, 'Home Page: Career - Content', 89, 0, 1, 0, 0, 0, 0, 0),
(1, 22, 150, 'Home Page: Career - Title', 90, 0, 1, 0, 0, 0, 0, 0),
(1, 23, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 113, 'Home Page: Highlight - Content', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 144, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 147, 'Home Page: Sustainability - Content', 87, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 149, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 23, 151, 'Home Page: Contact - video', 91, 0, 1, 0, 0, 0, 0, 0),
(1, 23, 152, 'Home Page: Contact - Content', 92, 0, 1, 0, 0, 0, 0, 0),
(1, 23, 153, 'Home Page: Contact - Content', 93, 1, 1, 0, 0, 0, 0, 0),
(1, 24, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 144, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 147, 'Home Page: Sustainability - Content', 87, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 149, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 152, 'Home Page: Contact - Content', 92, 0, 0, 0, 0, 0, 0, 0),
(1, 24, 153, 'Home Page: Contact - Content', 93, 1, 0, 0, 0, 0, 0, 0),
(1, 24, 155, 'Home Page: Highlight - Content', 94, 0, 1, 0, 0, 0, 0, 0),
(1, 25, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 144, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 147, 'Home Page: Sustainability - Content', 87, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 149, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 152, 'Home Page: Contact - Content', 92, 0, 0, 0, 0, 0, 0, 0),
(1, 25, 153, 'Home Page: Contact - Content', 93, 1, 0, 0, 0, 0, 0, 0),
(1, 25, 156, 'Home Page: Highlight - Content', 94, 0, 1, 0, 0, 0, 0, 0),
(1, 26, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 115, 'Home Page: Intro - Content 1', 70, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 144, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 147, 'Home Page: Sustainability - Content', 87, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 149, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 152, 'Home Page: Contact - Content', 92, 0, 0, 0, 0, 0, 0, 0),
(1, 26, 153, 'Home Page: Contact - Content', 93, 1, 0, 0, 0, 0, 0, 0),
(1, 26, 157, 'Home Page: Highlight - Content', 94, 0, 1, 0, 0, 0, 0, 0),
(1, 27, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 144, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 147, 'Home Page: Sustainability - Content', 87, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 149, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 152, 'Home Page: Contact - Content', 92, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 153, 'Home Page: Contact - Content', 93, 1, 0, 0, 0, 0, 0, 0),
(1, 27, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 27, 159, 'Home Page: Intro - Content 1', 95, 0, 1, 0, 0, 0, 0, 0),
(1, 28, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 116, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 144, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 147, 'Home Page: Sustainability - Content', 87, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 149, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 152, 'Home Page: Contact - Content', 92, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 153, 'Home Page: Contact - Content', 93, 1, 0, 0, 0, 0, 0, 0),
(1, 28, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 159, 'Home Page: Intro - Content 1', 95, 0, 0, 0, 0, 0, 0, 0),
(1, 28, 160, 'Home Page: Newsroom - List', 96, 0, 1, 0, 0, 0, 0, 0),
(1, 29, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 144, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 147, 'Home Page: Sustainability - Content', 87, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 149, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 152, 'Home Page: Contact - Content', 92, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 153, 'Home Page: Contact - Content', 93, 1, 0, 0, 0, 0, 0, 0),
(1, 29, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 159, 'Home Page: Intro - Content 1', 95, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 160, 'Home Page: Newsroom - List', 96, 0, 0, 0, 0, 0, 0, 0),
(1, 29, 161, 'Home Page: Intro - Content 2', 71, 0, 1, 0, 0, 0, 0, 0),
(1, 30, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 159, 'Home Page: Intro - Content 1', 95, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 160, 'Home Page: Newsroom - List', 96, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 161, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 30, 162, 'Home Page: Products & Services - Content', 85, 0, 1, 0, 0, 0, 0, 0),
(1, 30, 163, 'Home Page: Sustainability - Content', NULL, 0, 1, 0, 0, 0, 0, 0),
(1, 30, 164, 'Home Page: Career - Content', 89, 0, 1, 0, 0, 0, 0, 0),
(1, 30, 167, 'Home Page: Contact - Content', 97, 0, 1, 0, 0, 0, 0, 0),
(1, 30, 168, 'Home Page: Contact - Content', 98, 1, 1, 0, 0, 0, 0, 0),
(1, 31, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 159, 'Home Page: Intro - Content 1', 95, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 160, 'Home Page: Newsroom - List', 96, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 162, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 163, 'Home Page: Sustainability - Content', NULL, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 164, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 167, 'Home Page: Contact - Content', 97, 0, 0, 0, 0, 0, 0, 0),
(1, 31, 168, 'Home Page: Contact - Content', 98, 1, 0, 0, 0, 0, 0, 0),
(1, 31, 169, 'Home Page: Intro - Content 2', 71, 0, 1, 0, 0, 0, 0, 0),
(1, 32, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 159, 'Home Page: Intro - Content 1', 95, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 160, 'Home Page: Newsroom - List', 96, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 162, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 163, 'Home Page: Sustainability - Content', NULL, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 164, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 167, 'Home Page: Contact - Content', 97, 0, 0, 0, 0, 0, 0, 0),
(1, 32, 168, 'Home Page: Contact - Content', 98, 1, 0, 0, 0, 0, 0, 0),
(1, 32, 170, 'Home Page: Intro - Content 2', 71, 0, 1, 0, 0, 0, 0, 0),
(1, 33, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 159, 'Home Page: Intro - Content 1', 95, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 160, 'Home Page: Newsroom - List', 96, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 162, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 163, 'Home Page: Sustainability - Content', NULL, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 164, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 167, 'Home Page: Contact - Content', 97, 0, 0, 0, 0, 0, 0, 0),
(1, 33, 168, 'Home Page: Contact - Content', 98, 1, 0, 0, 0, 0, 0, 0),
(1, 33, 171, 'Home Page: Intro - Content 2', 71, 0, 1, 0, 0, 0, 0, 0),
(1, 34, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 117, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 159, 'Home Page: Intro - Content 1', 95, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 162, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 163, 'Home Page: Sustainability - Content', NULL, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 164, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 167, 'Home Page: Contact - Content', 97, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 168, 'Home Page: Contact - Content', 98, 1, 0, 0, 0, 0, 0, 0),
(1, 34, 171, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 34, 173, 'Home Page: Newsroom - List', 99, 0, 1, 0, 0, 0, 0, 0),
(1, 35, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 121, 'Home Page: Products & Services - Video', 76, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 125, 'Home Page: Sustainability - Video', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 159, 'Home Page: Intro - Content 1', 95, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 162, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 163, 'Home Page: Sustainability - Content', NULL, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 164, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 167, 'Home Page: Contact - Content', 97, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 168, 'Home Page: Contact - Content', 98, 1, 0, 0, 0, 0, 0, 0),
(1, 35, 171, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 173, 'Home Page: Newsroom - List', 99, 0, 0, 0, 0, 0, 0, 0),
(1, 35, 174, 'Home Page: About Us - Background', 72, 0, 1, 0, 0, 0, 0, 0),
(1, 36, 112, 'Home Page: Highlight - Video', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 114, 'Home Page: Intro - Video', 69, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 143, 'Home Page: About Us - Content', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 148, 'Home Page: Career - Image', 88, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 150, 'Home Page: Career - Title', 90, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 151, 'Home Page: Contact - video', 91, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 157, 'Home Page: Highlight - Content', 94, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 159, 'Home Page: Intro - Content 1', 95, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 162, 'Home Page: Products & Services - Content', 85, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 163, 'Home Page: Sustainability - Content', NULL, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 164, 'Home Page: Career - Content', 89, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 167, 'Home Page: Contact - Content', 97, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 168, 'Home Page: Contact - Content', 98, 1, 0, 0, 0, 0, 0, 0),
(1, 36, 171, 'Home Page: Intro - Content 2', 71, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 173, 'Home Page: Newsroom - List', 99, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 174, 'Home Page: About Us - Background', 72, 0, 0, 0, 0, 0, 0, 0),
(1, 36, 175, 'Home Page: Products & Services - Video', 76, 0, 1, 0, 0, 0, 0, 0),
(1, 36, 176, 'Home Page: Sustainability - Video', 80, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 1, 'Main', 1, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 2, 'Main', 2, 1, 1, 0, 0, 0, 0, 0),
(170, 1, 3, 'Main : 1', 3, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 4, 'Main : 2', 4, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 5, 'Main : 3', 5, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 6, 'Main', 6, 2, 1, 0, 0, 0, 0, 0),
(170, 1, 7, 'Main : 4', 7, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 8, 'Main : 5', 8, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 9, 'Main', 9, 3, 1, 0, 0, 0, 0, 0),
(170, 1, 10, 'Main : 6', 10, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 11, 'Main : 7', 11, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 12, 'Main : 8', 12, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 13, 'Main', 13, 4, 1, 0, 0, 0, 0, 0),
(171, 1, 14, 'Main', 14, 0, 1, 0, 0, 0, 0, 0),
(171, 1, 15, 'Main : 9', 15, 0, 1, 0, 0, 0, 0, 0),
(171, 1, 16, 'Main', 16, 1, 1, 0, 0, 0, 0, 0),
(171, 1, 17, 'Main : 10', 17, 0, 1, 0, 0, 0, 0, 0),
(184, 1, 18, 'Main', 18, 0, 1, 0, 0, 0, 0, 0),
(184, 1, 19, 'Main : 11', 19, 0, 1, 0, 0, 0, 0, 0),
(184, 1, 20, 'Main', 20, 1, 1, 0, 0, 0, 0, 0),
(184, 1, 21, 'Main : 12', 21, 0, 1, 0, 0, 0, 0, 0),
(185, 1, 22, 'Main', 22, 0, 1, 0, 0, 0, 0, 0),
(251, 2, 85, 'Main', 54, 0, 1, 0, 0, 0, 0, 0),
(251, 3, 86, 'Main', 54, 0, 1, 0, 0, 0, 0, 0),
(252, 2, 87, 'Main', 55, 0, 1, 0, 0, 0, 0, 0),
(252, 3, 88, 'Main', 55, 0, 1, 0, 0, 0, 0, 0),
(253, 5, 137, 'Main', 82, 0, 1, 0, 0, 0, 0, 0),
(253, 6, 138, 'Main', 82, 0, 1, 0, 0, 0, 0, 0),
(254, 2, 100, 'Main', 62, 0, 1, 0, 0, 0, 0, 0),
(254, 3, 100, 'Main', 62, 0, 0, 0, 0, 0, 0, 0),
(254, 3, 101, 'Main', 63, 1, 1, 0, 0, 0, 0, 0),
(254, 4, 100, 'Main', 62, 0, 0, 0, 0, 0, 0, 0),
(254, 4, 102, 'Main', 63, 1, 1, 0, 0, 0, 0, 0),
(254, 5, 102, 'Main', 63, 1, 0, 0, 0, 0, 0, 0),
(254, 5, 105, 'Main', 62, 0, 1, 0, 0, 0, 0, 0),
(254, 6, 102, 'Main', 63, 1, 0, 0, 0, 0, 0, 0),
(254, 6, 106, 'Main', 62, 0, 1, 0, 0, 0, 0, 0),
(254, 7, 106, 'Main', 62, 0, 0, 0, 0, 0, 0, 0),
(254, 7, 107, 'Main', 63, 1, 1, 0, 0, 0, 0, 0),
(255, 5, 139, 'Main', 83, 0, 1, 0, 0, 0, 0, 0),
(255, 6, 140, 'Main', 83, 0, 1, 0, 0, 0, 0, 0),
(256, 2, 91, 'Main', 57, 0, 1, 0, 0, 0, 0, 0),
(258, 1, 24, 'Main', 23, 0, 1, 0, 0, 0, 0, 0),
(259, 1, 26, 'Main', 24, 0, 1, 0, 0, 0, 0, 0),
(260, 1, 28, 'Main', 25, 0, 1, 0, 0, 0, 0, 0),
(261, 1, 30, 'Main', 26, 0, 1, 0, 0, 0, 0, 0),
(262, 1, 32, 'Main', 27, 0, 1, 0, 0, 0, 0, 0),
(263, 1, 34, 'Main', 28, 0, 1, 0, 0, 0, 0, 0),
(264, 1, 36, 'Main', 29, 0, 1, 0, 0, 0, 0, 0),
(265, 1, 38, 'Main', 30, 0, 1, 0, 0, 0, 0, 0),
(266, 1, 40, 'Main', 31, 0, 1, 0, 0, 0, 0, 0),
(267, 1, 42, 'Main', 32, 0, 1, 0, 0, 0, 0, 0),
(268, 1, 44, 'Main', 33, 0, 1, 0, 0, 0, 0, 0),
(269, 1, 46, 'Main', 34, 0, 1, 0, 0, 0, 0, 0),
(270, 1, 48, 'Main', 35, 0, 1, 0, 0, 0, 0, 0),
(271, 1, 50, 'Main', 36, 0, 1, 0, 0, 0, 0, 0),
(272, 1, 52, 'Main', 37, 0, 1, 0, 0, 0, 0, 0),
(273, 1, 54, 'Main', 38, 0, 1, 0, 0, 0, 0, 0),
(274, 1, 56, 'Main', 39, 0, 1, 0, 0, 0, 0, 0),
(274, 2, 56, 'Main', 39, 0, 0, 0, 0, 0, 0, 0),
(275, 1, 58, 'Main', 40, 0, 1, 0, 0, 0, 0, 0),
(276, 1, 60, 'Main', 41, 0, 1, 0, 0, 0, 0, 0),
(277, 1, 62, 'Main', 42, 0, 1, 0, 0, 0, 0, 0),
(278, 1, 64, 'Main', 43, 0, 1, 0, 0, 0, 0, 0),
(279, 1, 66, 'Main', 44, 0, 1, 0, 0, 0, 0, 0),
(280, 1, 68, 'Main', 45, 0, 1, 0, 0, 0, 0, 0),
(281, 1, 70, 'Main', 46, 0, 1, 0, 0, 0, 0, 0),
(282, 1, 72, 'Main', 47, 0, 1, 0, 0, 0, 0, 0),
(283, 1, 74, 'Main', 48, 0, 1, 0, 0, 0, 0, 0),
(284, 1, 76, 'Main', 49, 0, 1, 0, 0, 0, 0, 0),
(285, 1, 78, 'Main', 50, 0, 1, 0, 0, 0, 0, 0),
(286, 1, 80, 'Main', 51, 0, 1, 0, 0, 0, 0, 0),
(287, 1, 82, 'Main', 52, 0, 1, 0, 0, 0, 0, 0),
(288, 1, 84, 'Main', 53, 0, 1, 0, 0, 0, 0, 0),
(296, 1, 93, 'Main', 58, 0, 1, 0, 0, 0, 0, 0),
(296, 2, 93, 'Main', 58, 0, 0, 0, 0, 0, 0, 0),
(297, 1, 95, 'Main', 59, 0, 1, 0, 0, 0, 0, 0),
(297, 2, 95, 'Main', 59, 0, 0, 0, 0, 0, 0, 0),
(298, 1, 97, 'Main', 60, 0, 1, 0, 0, 0, 0, 0),
(298, 2, 97, 'Main', 60, 0, 0, 0, 0, 0, 0, 0),
(299, 1, 99, 'Main', 61, 0, 1, 0, 0, 0, 0, 0),
(299, 2, 99, 'Main', 61, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8mb4_unicode_ci,
  `btCachedBlockOutputExpires` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlockStyles`
--

CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

INSERT INTO `CollectionVersionBlockStyles` (`cID`, `cvID`, `bID`, `arHandle`, `issID`) VALUES
(170, 1, 13, 'Main', 1);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersions`
--

CREATE TABLE `CollectionVersions` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8mb4_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8mb4_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) UNSIGNED DEFAULT NULL,
  `cvApproverUID` int(10) UNSIGNED DEFAULT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  `cvPublishDate` datetime DEFAULT NULL,
  `cvPublishEndDate` datetime DEFAULT NULL,
  `cvDateApproved` datetime DEFAULT NULL,
  `pThemeSkinIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersions`
--

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`, `cvPublishDate`, `cvPublishEndDate`, `cvDateApproved`, `pThemeSkinIdentifier`) VALUES
(1, 1, 'Home', '', NULL, '2023-03-03 10:05:04', '2023-03-03 10:05:04', 'Initial Version', 0, 0, 1, NULL, 3, 4, NULL, NULL, NULL, NULL, NULL),
(1, 2, 'Home', '', NULL, '2023-03-03 10:05:04', '2023-03-03 11:12:50', 'New Version 2', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-03 11:12:50', NULL),
(1, 3, 'Home', '', NULL, '2023-03-03 10:05:04', '2023-03-07 07:16:49', 'Version 3', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 07:16:55', NULL),
(1, 4, 'Home', '', NULL, '2023-03-03 10:05:04', '2023-03-07 07:18:27', 'Version 4', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 07:18:34', NULL),
(1, 5, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 07:18:40', 'New Version 5', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 07:18:40', NULL),
(1, 6, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 07:20:41', 'Version 6', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 07:20:49', NULL),
(1, 7, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 07:21:42', 'Version 7', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 07:21:51', NULL),
(1, 8, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 07:37:43', 'Version 8', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 07:39:07', NULL),
(1, 9, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 08:05:19', 'Version 9', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 08:07:48', NULL),
(1, 10, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 08:08:11', 'Version 10', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 08:08:28', NULL),
(1, 11, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 08:19:16', 'Version 11', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 08:19:21', NULL),
(1, 12, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 08:21:06', 'Version 12', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 08:21:09', NULL),
(1, 13, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 08:21:53', 'Version 13', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 08:22:14', NULL),
(1, 14, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 08:43:44', 'Version 14', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 08:44:11', NULL),
(1, 15, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 10:38:34', 'Version 15', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 10:39:15', NULL),
(1, 16, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 10:39:45', 'Version 16', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 10:40:14', NULL),
(1, 17, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 10:46:59', 'Version 17', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 10:54:47', NULL),
(1, 18, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-07 10:57:35', 'Version 18', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-07 11:04:14', NULL),
(1, 19, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-09 05:29:52', 'Version 19', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-09 05:36:15', NULL),
(1, 20, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-09 05:38:23', 'Version 20', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-09 05:42:34', NULL),
(1, 21, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-09 05:43:06', 'Version 21', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-09 05:49:35', NULL),
(1, 22, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-09 05:52:03', 'Version 22', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-09 05:54:37', NULL),
(1, 23, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-09 05:56:11', 'Version 23', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-09 06:06:35', NULL),
(1, 24, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 05:54:33', 'Version 24', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 05:55:01', NULL),
(1, 25, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 06:32:23', 'Version 25', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 06:32:29', NULL),
(1, 26, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 06:33:01', 'Version 26', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 06:33:05', NULL),
(1, 27, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 07:14:40', 'Version 27', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 07:15:05', NULL),
(1, 28, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 08:00:34', 'Version 28', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 08:00:37', NULL),
(1, 29, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 09:26:40', 'Version 29', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 09:26:44', NULL),
(1, 30, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 09:42:49', 'Version 30', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 09:44:34', NULL),
(1, 31, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 10:13:57', 'Version 31', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 10:15:18', NULL),
(1, 32, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 10:16:37', 'Version 32', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 10:16:40', NULL),
(1, 33, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-10 10:17:03', 'Version 33', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-10 10:17:07', NULL),
(1, 34, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-13 07:55:32', 'Version 34', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-13 07:58:30', NULL),
(1, 35, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-13 09:37:33', 'Version 35', 0, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-13 09:37:36', NULL),
(1, 36, 'Home', '', '', '2023-03-03 10:05:00', '2023-03-13 11:45:03', 'Version 36', 1, 0, 1, 1, 3, 14, NULL, NULL, NULL, '2023-03-13 11:45:15', NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2023-03-03 10:05:38', '2023-03-03 10:05:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2023-03-03 10:05:38', '2023-03-03 10:05:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Full Sitemap', 'full', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Flat View', 'explore', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(6, 1, 'Page Search', 'search', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(7, 1, 'Files', 'files', 'All documents and images.', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(8, 1, 'File Manager', 'search', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(9, 1, 'Attributes', 'attributes', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(10, 1, 'File Sets', 'sets', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(11, 1, 'Add File Set', 'add_set', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(12, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(13, 1, 'Search Users', 'search', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(14, 1, 'User Groups', 'groups', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(15, 1, 'Send Message to Group', 'message', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(16, 1, 'Attributes', 'attributes', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(17, 1, 'Add User', 'add', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(18, 1, 'Add Group', 'add_group', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(19, 1, 'Move Multiple Groups', 'bulkupdate', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(20, 1, 'Group Sets', 'group_sets', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(24, 1, 'Express', 'express', 'Express Data Objects', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(25, 1, 'View Entries', 'entries', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(26, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(27, 1, 'Form Results', 'forms', 'Get submission data.', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(28, 1, 'Form Results', 'legacy', 'Get submission data.', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(29, 1, 'Surveys', 'surveys', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(30, 1, 'Logs', 'logs', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(31, 1, 'Page Changes', 'page_changes', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(32, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(33, 1, 'Themes', 'themes', 'Reskin your site.', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(34, 1, 'Inspect', 'inspect', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(35, 1, 'Page Types', 'types', '', '2023-03-03 10:05:39', '2023-03-03 10:05:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(36, 1, 'Organize Page Type Order', 'organize', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(37, 1, 'Add Page Type', 'add', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(38, 1, 'Compose Form', 'form', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(39, 1, 'Defaults and Output', 'output', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(40, 1, 'Page Type Attributes', 'attributes', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(41, 1, 'Page Type Permissions', 'permissions', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(42, 1, 'Page Templates', 'templates', 'Form factors for pages in your site.', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(43, 1, 'Add Page Template', 'add', 'Add page templates to your site.', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(44, 1, 'Attributes', 'attributes', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(45, 1, 'Single Pages', 'single', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(46, 1, 'RSS Feeds', 'feeds', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(47, 1, 'Calendar & Events', 'calendar', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(48, 1, 'View Calendar', 'events', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(49, 1, 'Event List', 'event_list', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(50, 1, 'Add Calendar', 'add', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(51, 1, 'Permissions', 'permissions', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(52, 1, 'Attributes', 'attributes', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(53, 1, 'Conversations', 'conversations', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(54, 1, 'Messages', 'messages', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(55, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(56, 1, 'Stacks & Global Areas', 'stacks', 'Share content across your site.', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(57, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(58, 1, 'Stack List', 'list', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(59, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(60, 1, 'Extend Concrete', 'extend', '', '2023-03-03 10:05:40', '2023-03-03 10:05:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(61, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(62, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(63, 1, 'Connect to the Community', 'connect', 'Connect to the Concrete community.', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(64, 1, 'Get More Themes', 'themes', 'Download themes from the marketplace.', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(65, 1, 'Get More Add-Ons', 'addons', 'Download add-ons from the marketplace.', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(66, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(67, 1, 'Basics', 'basics', 'Basic information about your website.', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(68, 1, 'Name & Attributes', 'name', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(69, 1, 'Accessibility', 'accessibility', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(70, 1, 'Social Links', 'social', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(71, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(72, 1, 'Rich Text Editor', 'editor', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(73, 1, 'Languages', 'multilingual', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(74, 1, 'Update Languages', 'update', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(75, 1, 'Time Zone', 'timezone', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(76, 1, 'Custom Attributes', 'attributes', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(77, 1, 'Reset Clipboard and Edit Mode', 'reset_edit_mode', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(78, 1, 'Express', 'express', 'Express', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(79, 1, 'Data Objects', 'entities', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(80, 1, 'Attributes', 'attributes', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(81, 1, 'Associations', 'associations', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(82, 1, 'Forms', 'forms', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(83, 1, 'Customize Search', 'customize_search', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(84, 1, 'Update Entry Display Order', 'order_entries', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(85, 1, 'Custom Entry Locations', 'entries', '', '2023-03-03 10:05:41', '2023-03-03 10:05:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(86, 1, 'Multiple Site Hosting', 'multisite', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(87, 1, 'Sites & Domains', 'sites', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(88, 1, 'Site Types', 'types', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(89, 1, 'Multisite Settings', 'settings', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(90, 1, 'Multilingual', 'multilingual', 'Run your site in multiple languages.', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(91, 1, 'Multilingual Setup', 'setup', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(92, 1, 'Copy Languages', 'copy', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(93, 1, 'Page Report', 'page_report', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(94, 1, 'Translate Site Interface', 'translate_interface', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(95, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs and tracking codes.', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(96, 1, 'URLs and Redirection', 'urls', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(97, 1, 'Bulk SEO Updater', 'bulk', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(98, 1, 'Tracking Codes', 'codes', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(99, 1, 'Excluded URL Word List', 'excluded', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(100, 1, 'Search Index', 'searchindex', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(101, 1, 'Files', 'files', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(102, 1, 'Allowed File Types', 'filetypes', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(103, 1, 'File Manager Permissions', 'permissions', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(104, 1, 'Thumbnails', 'thumbnails', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(105, 1, 'Thumbnail Options', 'options', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(106, 1, 'Image Options', 'image_uploading', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(107, 1, 'File Storage Locations', 'storage', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(108, 1, 'Export Options', 'export_options', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(109, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(110, 1, 'Cache & Speed Settings', 'cache', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(111, 1, 'Clear Cache', 'clearcache', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(112, 1, 'Automated Jobs', 'jobs', '', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(113, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2023-03-03 10:05:42', '2023-03-03 10:05:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(114, 1, 'Site Access', 'site', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(115, 1, 'Task Permissions', 'tasks', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(116, 1, 'User Permissions', 'users', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(117, 1, 'Advanced Permissions', 'advanced', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(118, 1, 'Workflows', 'workflows', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(122, 1, 'Captcha Setup', 'captcha', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(123, 1, 'Spam Control', 'antispam', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(124, 1, 'Maintenance Mode', 'maintenance', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(125, 1, 'Trusted Proxies', 'trusted_proxies', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(126, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(127, 1, 'Account Options', 'open', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(128, 1, 'Login Destination', 'postlogin', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(129, 1, 'Public Profiles', 'profiles', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(130, 1, 'Authentication Types', 'authentication', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(131, 1, 'Global Password Reset', 'global_password_reset', 'Signs out all users, resets all passwords and forces users to choose a new one', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(133, 1, 'User Deactivation Settings', 'deactivation', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(134, 1, 'Automated Logout', 'automated_logout', 'Automate when users are logged out, or do it manually', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(135, 1, 'Password Requirements', 'password_requirements', 'Set password rule and regulations.', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(136, 1, 'Session Options', 'session_options', '', '2023-03-03 10:05:43', '2023-03-03 10:05:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(137, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(138, 1, 'SMTP Method', 'method', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(139, 1, 'Test Mail Settings', 'test', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(140, 1, 'Email Importers', 'importers', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(141, 1, 'System Email Addresses', 'addresses', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(142, 1, 'Calendar', 'calendar', 'Manage your calendar settings', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(143, 1, 'General Settings', 'settings', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(144, 1, 'Color Settings', 'colors', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(145, 1, 'Calendar Permissions', 'permissions', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(146, 1, 'Import Calendar Data', 'import', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(147, 1, 'Conversations', 'conversations', 'Manage your conversations settings', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(148, 1, 'Settings', 'settings', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(149, 1, 'Community Points', 'points', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(150, 1, 'Banned Words', 'bannedwords', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(151, 1, 'Conversation Permissions', 'permissions', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(152, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(153, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(154, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(155, 1, 'Topics', 'topics', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(156, 1, 'Add Topic Tree', 'add', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(157, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(158, 1, 'Environment Information', 'info', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(159, 1, 'Debug Settings', 'debug', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(160, 1, 'Logging Settings', 'logging', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(161, 1, 'Proxy Server', 'proxy', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(162, 1, 'Database Entities', 'entities', '', '2023-03-03 10:05:44', '2023-03-03 10:05:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(163, 1, 'Database Character Set', 'database_charset', '', '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(164, 1, 'Geolocation', 'geolocation', '', '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(165, 1, 'Update Concrete', 'update', '', '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(166, 1, 'Apply Update', 'update', '', '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(167, 1, 'API', 'api', '', '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(168, 1, 'API Settings', 'settings', '', '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(169, 1, 'API Integrations', 'integrations', '', '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(170, 1, 'Welcome', 'welcome', '', '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(171, 1, 'Waiting for Me', 'me', NULL, '2023-03-03 10:05:45', '2023-03-03 10:05:45', 'Initial Version', 1, 0, 1, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL),
(172, 1, 'Stacks', '!stacks', '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(173, 1, 'Page Not Found', 'page_not_found', '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(174, 1, 'Trash', '!trash', '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(175, 1, 'Login', 'login', '', '2023-03-03 10:05:51', '2023-03-03 10:05:51', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(176, 1, 'Register', 'register', '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(177, 1, 'My Account', 'account', '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(178, 1, 'Edit Profile', 'edit_profile', 'Edit your user profile and change password.', '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(179, 1, 'Profile Picture', 'avatar', 'Specify a new image attached to posts or edits.', '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(180, 1, 'Private Messages', 'messages', 'Inbox for site-specific messages.', '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(181, 1, 'Page Forbidden', 'page_forbidden', '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(182, 1, 'Download File', 'download_file', '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(183, 1, 'Drafts', '!drafts', '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(184, 1, 'Welcome Back', 'desktop', '', '2023-03-03 10:05:52', '2023-03-03 10:05:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(185, 1, '', NULL, NULL, '2023-03-03 10:05:54', '2023-03-03 10:05:54', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL, NULL, NULL, NULL, NULL),
(196, 1, 'Containers', 'containers', 'Container Templates for Areas.', '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(197, 1, 'Add Container', 'add', 'Add page containers.', '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(198, 1, 'Boards', 'boards', '', '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(199, 1, 'View Boards', 'boards', '', '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(200, 1, 'Add Board', 'add', '', '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(201, 1, 'Board Details', 'details', '', '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(202, 1, 'Edit Board', 'edit', '', '2023-03-03 10:19:02', '2023-03-03 10:19:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(203, 1, 'Data Sources', 'data_sources', '', '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(204, 1, 'Board Appearance', 'appearance', '', '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(205, 1, 'Weighting', 'weighting', '', '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(206, 1, 'Board Permissions', 'permissions', '', '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(207, 1, 'Instances', 'instances', 'View instances of your board.', '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(208, 1, 'Instance Details', 'details', 'View details of your board instance.', '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(209, 1, 'Boards', 'boards', 'Manage global board settings', '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(210, 1, 'Board Settings', 'settings', '', '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(211, 1, 'Permissions', 'permissions', '', '2023-03-03 10:19:03', '2023-03-03 10:19:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(212, 1, 'File Details', 'details', NULL, '2023-03-03 10:19:13', '2023-03-03 10:19:13', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(213, 1, 'Designer', 'designer', NULL, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(214, 1, 'Choose Items', 'choose_items', NULL, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(215, 1, 'Customize Slot', 'customize_slot', NULL, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(216, 1, 'Scheduler', 'scheduler', NULL, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(217, 1, 'Rules', 'rules', NULL, '2023-03-03 10:19:14', '2023-03-03 10:19:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(218, 1, 'Email Logging', 'logging', 'Control how emails get logged.', '2023-03-03 10:19:19', '2023-03-03 10:19:19', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(219, 1, 'External File Providers', 'external_file_provider', NULL, '2023-03-03 10:19:21', '2023-03-03 10:19:21', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(220, 1, 'Image Editor', 'image_editor', NULL, '2023-03-03 10:19:28', '2023-03-03 10:19:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(221, 1, 'Bulk User Assignment', 'bulk_user_assignment', NULL, '2023-03-03 10:19:28', '2023-03-03 10:19:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(222, 1, 'Group Types', 'group_types', NULL, '2023-03-03 10:19:47', '2023-03-03 10:19:47', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(223, 1, 'Automation', 'automation', NULL, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(224, 1, 'Notification', 'notification', NULL, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(225, 1, 'Tasks', 'tasks', NULL, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(226, 1, 'Activity', 'activity', NULL, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(227, 1, 'Schedule', 'schedule', NULL, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(228, 1, 'Automation Settings', 'settings', NULL, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(229, 1, 'Server-Sent Events', 'events', NULL, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(230, 1, 'Waiting for Me', 'alerts', NULL, '2023-03-03 10:19:54', '2023-03-03 10:19:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(231, 1, 'Theme Documentation', '!themes', NULL, '2023-03-03 10:20:05', '2023-03-03 10:20:05', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(232, 1, 'IP Deny List', 'denylist', NULL, '2023-03-03 10:20:07', '2023-03-03 10:20:07', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(233, 1, 'Configure IP Blocking', 'configure', NULL, '2023-03-03 10:20:07', '2023-03-03 10:20:07', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(234, 1, 'IP Range', 'range', NULL, '2023-03-03 10:20:07', '2023-03-03 10:20:07', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(235, 1, 'Security Policy', 'security', NULL, '2023-03-03 10:20:14', '2023-03-03 10:20:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(236, 1, 'Upload Settings', 'uploads', NULL, '2023-03-03 10:20:21', '2023-03-03 10:20:21', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(242, 1, 'Block Order', 'block_order', NULL, '2023-03-03 10:33:38', '2023-03-03 10:33:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(243, 1, 'Block Designer', 'block_designer', NULL, '2023-03-03 10:33:38', '2023-03-03 10:33:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(244, 1, 'Block Config', 'block_config', NULL, '2023-03-03 10:33:38', '2023-03-03 10:33:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(245, 1, 'Settings', 'settings', NULL, '2023-03-03 10:33:38', '2023-03-03 10:33:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(246, 1, 'Header Site Title', 'header-site-title', NULL, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'Initial Version', 1, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(247, 1, 'Header Navigation', 'header-navigation', NULL, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'Initial Version', 1, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(248, 1, 'Footer Legal', 'footer-legal', NULL, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'Initial Version', 1, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(249, 1, 'Footer Navigation', 'footer-navigation', NULL, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'Initial Version', 1, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(250, 1, 'Footer Contact', 'footer-contact', NULL, '2023-03-03 10:34:17', '2023-03-03 10:34:17', 'Initial Version', 1, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(251, 1, 'Header: Navigation TH', 'header-navigation-th', NULL, '2023-03-03 11:11:04', '2023-03-03 11:11:04', 'Initial Version', 0, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(251, 2, 'Header: Navigation TH', 'header-navigation-th', NULL, '2023-03-03 11:11:04', '2023-03-07 07:16:49', 'New Version 2', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 07:16:55', NULL),
(251, 3, 'Header: Navigation TH', 'header-navigation-th', NULL, '2023-03-03 11:11:04', '2023-03-07 07:18:27', 'New Version 3', 1, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 07:18:34', NULL),
(252, 1, 'Header: Search TH', 'header-search-th', NULL, '2023-03-03 11:11:04', '2023-03-03 11:11:04', 'Initial Version', 0, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(252, 2, 'Header: Search TH', 'header-search-th', NULL, '2023-03-03 11:11:04', '2023-03-07 07:20:41', 'New Version 2', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 07:20:49', NULL),
(252, 3, 'Header: Search TH', 'header-search-th', NULL, '2023-03-03 11:11:04', '2023-03-07 07:21:42', 'New Version 3', 1, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 07:21:51', NULL),
(253, 1, 'Header: Navigation OtherTH', 'header-navigation-otherth', NULL, '2023-03-03 11:11:05', '2023-03-03 11:11:05', 'Initial Version', 0, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(253, 2, 'Header: Navigation OtherTH', 'header-navigation-otherth', NULL, '2023-03-03 11:11:05', '2023-03-07 07:37:43', 'New Version 2', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 07:39:07', NULL),
(253, 3, 'Header: Navigation OtherTH', 'header-navigation-otherth', NULL, '2023-03-03 11:11:05', '2023-03-07 07:37:54', 'New Version 3', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 07:39:07', NULL),
(253, 4, 'Header: Navigation OtherTH', 'header-navigation-otherth', NULL, '2023-03-03 11:11:05', '2023-03-09 05:32:44', 'New Version 4', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-09 05:36:15', NULL),
(253, 5, 'Header: Navigation OtherTH', 'header-navigation-otherth', NULL, '2023-03-03 11:11:05', '2023-03-09 05:38:23', 'New Version 5', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-09 05:42:34', NULL),
(253, 6, 'Header: Navigation OtherTH', 'header-navigation-otherth', NULL, '2023-03-03 11:11:05', '2023-03-09 05:41:16', 'New Version 6', 1, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-09 05:42:34', NULL),
(254, 1, 'Footer: Social TH', 'footer-social-th', NULL, '2023-03-03 11:11:05', '2023-03-03 11:11:05', 'Initial Version', 0, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(254, 2, 'Footer: Social TH', 'footer-social-th', NULL, '2023-03-03 11:11:05', '2023-03-07 08:05:19', 'New Version 2', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 08:07:48', NULL),
(254, 3, 'Footer: Social TH', 'footer-social-th', NULL, '2023-03-03 11:11:05', '2023-03-07 08:05:29', 'New Version 3', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 08:07:48', NULL),
(254, 4, 'Footer: Social TH', 'footer-social-th', NULL, '2023-03-03 11:11:05', '2023-03-07 08:06:38', 'New Version 4', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 08:07:48', NULL),
(254, 5, 'Footer: Social TH', 'footer-social-th', NULL, '2023-03-03 11:11:05', '2023-03-07 08:08:11', 'New Version 5', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 08:08:28', NULL),
(254, 6, 'Footer: Social TH', 'footer-social-th', NULL, '2023-03-03 11:11:05', '2023-03-07 08:08:20', 'New Version 6', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 08:08:28', NULL),
(254, 7, 'Footer: Social TH', 'footer-social-th', NULL, '2023-03-03 11:11:05', '2023-03-07 08:08:25', 'New Version 7', 1, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 08:08:28', NULL),
(255, 1, 'Footer: Navigation TH', 'footer-navigation-th', NULL, '2023-03-03 11:11:05', '2023-03-03 11:11:05', 'Initial Version', 0, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(255, 2, 'Footer: Navigation TH', 'footer-navigation-th', NULL, '2023-03-03 11:11:05', '2023-03-07 08:07:38', 'New Version 2', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 08:07:48', NULL),
(255, 3, 'Footer: Navigation TH', 'footer-navigation-th', NULL, '2023-03-03 11:11:05', '2023-03-07 08:07:45', 'New Version 3', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 08:07:48', NULL),
(255, 4, 'Footer: Navigation TH', 'footer-navigation-th', NULL, '2023-03-03 11:11:05', '2023-03-09 05:29:52', 'New Version 4', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-09 05:36:15', NULL),
(255, 5, 'Footer: Navigation TH', 'footer-navigation-th', NULL, '2023-03-03 11:11:05', '2023-03-09 05:42:24', 'New Version 5', 0, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-09 05:42:34', NULL),
(255, 6, 'Footer: Navigation TH', 'footer-navigation-th', NULL, '2023-03-03 11:11:05', '2023-03-09 05:42:31', 'New Version 6', 1, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-09 05:42:34', NULL),
(256, 1, 'Footer: Copyright TH', 'footer-copyright-th', NULL, '2023-03-03 11:11:05', '2023-03-03 11:11:05', 'Initial Version', 0, 0, 0, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(256, 2, 'Footer: Copyright TH', 'footer-copyright-th', NULL, '2023-03-03 11:11:05', '2023-03-07 07:38:43', 'New Version 2', 1, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2023-03-07 07:39:07', NULL),
(257, 1, '', NULL, NULL, '2023-03-03 10:05:54', '2023-03-03 11:23:18', 'Initial Version', 1, 0, 1, NULL, 0, 4, NULL, NULL, NULL, NULL, NULL),
(258, 1, 'Newsroom', 'newsroom', '', '2023-03-07 06:49:33', '2023-03-07 06:49:33', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:49:34', NULL),
(259, 1, 'Global', 'global', '', '2023-03-07 06:51:37', '2023-03-07 06:51:37', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:51:38', NULL),
(260, 1, 'ASEAN', 'asean', '', '2023-03-07 06:51:46', '2023-03-07 06:51:46', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:51:47', NULL),
(261, 1, 'About Aisin Group', 'about-aisin-group', '', '2023-03-07 06:52:01', '2023-03-07 06:52:01', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:52:02', NULL),
(262, 1, 'Products and Services', 'products-and-services', '', '2023-03-07 06:52:14', '2023-03-07 06:52:14', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:52:14', NULL),
(263, 1, 'Sustainability', 'sustainability', '', '2023-03-07 06:52:50', '2023-03-07 06:52:50', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:52:50', NULL),
(264, 1, 'Careers', 'careers', '', '2023-03-07 06:53:06', '2023-03-07 06:53:06', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:53:06', NULL),
(265, 1, 'Contact', 'contact', '', '2023-03-07 06:53:16', '2023-03-07 06:53:16', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:53:16', NULL),
(266, 1, 'Global', 'global', '', '2023-03-07 06:53:25', '2023-03-07 06:53:25', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:53:26', NULL);
INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`, `cvPublishDate`, `cvPublishEndDate`, `cvDateApproved`, `pThemeSkinIdentifier`) VALUES
(267, 1, 'ASEAN', 'asean', '', '2023-03-07 06:53:33', '2023-03-07 06:53:33', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:53:33', NULL),
(268, 1, 'Top Message', 'top-message', '', '2023-03-07 06:53:42', '2023-03-07 06:53:42', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:53:43', NULL),
(269, 1, 'Corporate Principles', 'corporate-principles', '', '2023-03-07 06:53:50', '2023-03-07 06:53:50', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:53:51', NULL),
(270, 1, 'Global Network', 'global-network', '', '2023-03-07 06:53:58', '2023-03-07 06:53:58', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:53:58', NULL),
(271, 1, 'Regional Top Message', 'regional-top-message', '', '2023-03-07 06:54:11', '2023-03-07 06:54:11', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:54:11', NULL),
(272, 1, 'ASEAN Network', 'asean-network', '', '2023-03-07 06:54:18', '2023-03-07 06:54:18', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:54:18', NULL),
(273, 1, 'Global', 'global', '', '2023-03-07 06:55:11', '2023-03-07 06:55:11', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:55:11', NULL),
(274, 1, 'ASEAN', 'asean', '', '2023-03-07 06:55:21', '2023-03-07 06:55:21', 'Initial Version', 0, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:55:22', NULL),
(274, 2, 'ASEAN', 'asean', '', '2023-03-07 06:55:00', '2023-03-07 06:55:58', 'New Version 2', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:55:58', NULL),
(275, 1, 'Mobility', 'mobility', '', '2023-03-07 06:55:33', '2023-03-07 06:55:33', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:55:33', NULL),
(276, 1, 'Energy Solutions', 'energy-solutions', '', '2023-03-07 06:55:40', '2023-03-07 06:55:40', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:55:41', NULL),
(277, 1, 'New Business and Others', 'new-business-and-others', '', '2023-03-07 06:55:48', '2023-03-07 06:55:48', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:55:48', NULL),
(278, 1, 'Powertrain', 'powertrain', '', '2023-03-07 06:56:05', '2023-03-07 06:56:05', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:56:05', NULL),
(279, 1, 'Driving Safety', 'driving-safety', '', '2023-03-07 06:56:12', '2023-03-07 06:56:12', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:56:13', NULL),
(280, 1, 'Body', 'body', '', '2023-03-07 06:56:19', '2023-03-07 06:56:19', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:56:19', NULL),
(281, 1, 'Electronic', 'electronic', '', '2023-03-07 06:56:26', '2023-03-07 06:56:26', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:56:26', NULL),
(282, 1, 'Aftermarket', 'aftermarket', '', '2023-03-07 06:56:33', '2023-03-07 06:56:33', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:56:33', NULL),
(283, 1, 'Global', 'global', '', '2023-03-07 06:56:47', '2023-03-07 06:56:47', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:56:48', NULL),
(284, 1, 'ASEAN', 'asean', '', '2023-03-07 06:56:54', '2023-03-07 06:56:54', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:56:55', NULL),
(285, 1, 'Carbon Neutrality', 'carbon-neutrality', '', '2023-03-07 06:57:02', '2023-03-07 06:57:02', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:57:03', NULL),
(286, 1, 'SDGs・ESG Activities & Report', 'sdgsesg-activities-and-report', '', '2023-03-07 06:57:09', '2023-03-07 06:57:09', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:57:10', NULL),
(287, 1, 'Values', 'values', '', '2023-03-07 06:57:19', '2023-03-07 06:57:19', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:57:19', NULL),
(288, 1, 'Vacancies', 'vacancies', '', '2023-03-07 06:57:26', '2023-03-07 06:57:26', 'Initial Version', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 06:57:26', NULL),
(289, 1, '', NULL, NULL, '2023-03-07 07:07:32', '2023-03-07 07:07:32', 'Initial Version', 1, 0, NULL, NULL, 0, 12, NULL, NULL, NULL, NULL, NULL),
(290, 1, 'The eAxle, a core component of electric vehicles [5 minute read]', 'eaxle-core-component-electric-vehicles-5-minute-read', '', '2023-03-07 07:08:53', '2023-03-07 07:08:53', 'Initial Version', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-07 07:08:54', NULL),
(290, 2, 'The eAxle, a core component of electric vehicles [5 minute read]', 'eaxle-core-component-electric-vehicles-5-minute-read', 'Thee Axle runs on electric power, is a core component of electric vehicles, and is now attracting attention as a drive unit that could help replace the conventional gasoline-powered engine and transmission.', '2023-03-07 07:08:00', '2023-03-07 07:09:10', 'New Version 2', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-07 07:09:10', NULL),
(290, 3, 'The eAxle, a core component of electric vehicles [5 minute read]', 'eaxle-core-component-electric-vehicles-5-minute-read', 'Thee Axle runs on electric power, is a core component of electric vehicles, and is now attracting attention as a drive unit that could help replace the conventional gasoline-powered engine and transmission.', '2023-03-07 07:08:00', '2023-03-13 09:24:23', 'New Version 3', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-13 09:24:23', NULL),
(290, 4, 'The eAxle, a core component of electric vehicles [5 minute read]', 'eaxle-core-component-electric-vehicles-5-minute-read', 'Thee Axle runs on electric power, is a core component of electric vehicles, and is now attracting attention as a drive unit that could help replace the conventional gasoline-powered engine and transmission.', '2023-03-07 07:08:00', '2023-03-13 09:25:46', 'New Version 4', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-13 09:25:46', NULL),
(290, 5, 'The eAxle, a core component of electric vehicles [5 minute read]', 'eaxle-core-component-electric-vehicles-5-minute-read', 'Thee Axle runs on electric power, is a core component of electric vehicles, and is now attracting attention as a drive unit that could help replace the conventional gasoline-powered engine and transmission.', '2023-03-07 07:08:00', '2023-03-13 09:26:24', 'New Version 5', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-13 09:26:24', NULL),
(290, 6, 'The eAxle, a core component of electric vehicles [5 minute read]', 'eaxle-core-component-electric-vehicles-5-minute-read', 'Thee Axle runs on electric power, is a core component of electric vehicles, and is now attracting attention as a drive unit that could help replace the conventional gasoline-powered engine and transmission.', '2023-03-07 07:08:00', '2023-03-13 09:27:30', 'New Version 6', 1, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-13 09:27:30', NULL),
(291, 1, '\"Manufacturing Power\" to Expedite Vehicle Electrification', 'manufacturing-power-expedite-vehicle-electrification', 'Every day at Aisin, new products are created to exceed the conventional expectations of customers around the world.', '2023-03-07 07:10:18', '2023-03-07 07:10:18', 'Initial Version', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-07 07:10:18', NULL),
(291, 2, '\"Manufacturing Power\" to Expedite Vehicle Electrification', 'manufacturing-power-expedite-vehicle-electrification', 'Every day at Aisin, new products are created to exceed the conventional expectations of customers around the world.', '2023-03-07 07:10:00', '2023-03-13 09:27:46', 'New Version 2', 1, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-13 09:27:46', NULL),
(292, 1, 'Aisin\'s central role in vehicle electrification', 'aisins-central-role-vehicle-electrification', 'The world is rapidly moving  toward  carbon neutrality, and the electrification of vehicles, which helps reduce CO2 emissions, is playing an important part.', '2023-03-07 07:11:15', '2023-03-07 07:11:15', 'Initial Version', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-07 07:11:15', NULL),
(292, 2, 'Aisin\'s central role in vehicle electrification', 'aisins-central-role-vehicle-electrification', 'The world is rapidly moving  toward  carbon neutrality, and the electrification of vehicles, which helps reduce CO2 emissions, is playing an important part.', '2023-03-07 07:11:00', '2023-03-13 09:28:12', 'New Version 2', 1, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-13 09:28:12', NULL),
(293, 1, 'Test ride event for Aisin\'s new electrification technologies demonstrates how ultra-compact eAxle revolutionizes vehicles', 'test-ride-event-aisins-new-electrification-technologies-demonstrates-how-ultra-compact-eaxle-revolutionizes-vehicles', 'The automotive industry is at a major turning point in the quest to attain global Sustainable Development Goals (SDGs).', '2023-03-07 07:12:10', '2023-03-07 07:12:10', 'Initial Version', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-07 07:12:10', NULL),
(293, 2, 'Test ride event for Aisin\'s new electrification technologies demonstrates how ultra-compact eAxle revolutionizes vehicles', 'test-ride-event-aisins-new-electrification-technologies-demonstrates-how-ultra-compact-eaxle-revolutionizes-vehicles', 'The automotive industry is at a major turning point in the quest to attain global Sustainable Development Goals (SDGs).', '2023-03-07 07:12:00', '2023-03-13 09:28:19', 'New Version 2', 1, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-13 09:28:19', NULL),
(294, 1, 'The History of Aisin\'s Advanced Technology: Evolving along with the Toyota Crown', 'history-aisins-advanced-technology-evolving-along-toyota-crown', 'Since its debut in 1955, the Toyota Crown has been equipped with Aisin’s leading-edge technology; both, Aisin’s advancement in technological innovation and the Crown have evolved simultaneously.', '2023-03-07 07:13:15', '2023-03-07 07:13:15', 'Initial Version', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-07 07:13:16', NULL),
(294, 2, 'The History of Aisin\'s Advanced Technology: Evolving along with the Toyota Crown', 'history-aisins-advanced-technology-evolving-along-toyota-crown', 'Since its debut in 1955, the Toyota Crown has been equipped with Aisin’s leading-edge technology; both, Aisin’s advancement in technological innovation and the Crown have evolved simultaneously.', '2023-03-07 07:13:00', '2023-03-13 09:28:37', 'New Version 2', 1, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-13 09:28:37', NULL),
(295, 1, 'Stopping is Just the Start of what These Brakes Can Do', 'stopping-just-start-what-these-brakes-can-do', 'A quarter of a century has passed since Toyota launched the first-generation Prius. Today, it’s common to see battery electric vehicles (BEVs) and now hybrid electric vehicles (HEVs) everywhere.', '2023-03-07 07:14:20', '2023-03-07 07:14:20', 'Initial Version', 0, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-07 07:14:20', NULL),
(295, 2, 'Stopping is Just the Start of what These Brakes Can Do', 'stopping-just-start-what-these-brakes-can-do', 'A quarter of a century has passed since Toyota launched the first-generation Prius. Today, it’s common to see battery electric vehicles (BEVs) and now hybrid electric vehicles (HEVs) everywhere.', '2023-03-07 07:14:00', '2023-03-13 09:28:47', 'New Version 2', 1, 0, 1, 1, 3, 12, NULL, NULL, NULL, '2023-03-13 09:28:47', NULL),
(296, 1, 'Terms of Use', 'terms-use', '', '2023-03-07 08:03:58', '2023-03-07 08:03:58', 'Initial Version', 0, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 08:03:58', NULL),
(296, 2, 'Terms of Use', 'terms-use', '', '2023-03-07 08:03:00', '2023-03-07 08:04:04', 'New Version 2', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 08:04:04', NULL),
(297, 1, 'Privacy Policy', 'privacy-policy', '', '2023-03-07 08:04:17', '2023-03-07 08:04:17', 'Initial Version', 0, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 08:04:17', NULL),
(297, 2, 'Privacy Policy', 'privacy-policy', '', '2023-03-07 08:04:00', '2023-03-07 08:04:23', 'New Version 2', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 08:04:23', NULL),
(298, 1, 'Social Media Policy', 'social-media-policy', '', '2023-03-07 08:04:31', '2023-03-07 08:04:31', 'Initial Version', 0, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 08:04:31', NULL),
(298, 2, 'Social Media Policy', 'social-media-policy', '', '2023-03-07 08:04:00', '2023-03-07 08:04:36', 'New Version 2', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 08:04:36', NULL),
(299, 1, 'Site Map', 'site-map', '', '2023-03-07 08:04:44', '2023-03-07 08:04:44', 'Initial Version', 0, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 08:04:44', NULL),
(299, 2, 'Site Map', 'site-map', '', '2023-03-07 08:04:00', '2023-03-07 08:04:49', 'New Version 2', 1, 0, 1, 1, 3, 4, NULL, NULL, NULL, '2023-03-07 08:04:49', NULL),
(300, 1, '', NULL, NULL, '2023-03-07 08:21:48', '2023-03-07 08:21:48', 'Initial Version', 1, 0, NULL, NULL, 0, 14, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Config`
--

CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Config`
--

INSERT INTO `Config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
('', 'app', 'privacy_policy_accepted', '1'),
('', 'concrete', 'security.token.encryption', '792d817179862048f20abdc5614a5cd1bc5b7d9dc86fae0c8312df7ed0199cab'),
('', 'concrete', 'security.token.jobs', 'bb8fc1945fc3941c78afb73223a920c4fc80c038eea93031ceb63d4987054dc9'),
('', 'concrete', 'security.token.validation', 'd153765ad56cdbc4039d021289d137070c518f8ac69277704458fd7474e073d8');

-- --------------------------------------------------------

--
-- Table structure for table `ConfigStore`
--

CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8mb4_unicode_ci,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConfigStore`
--

INSERT INTO `ConfigStore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('MAIN_HELP_LAST_VIEWED', '2023-03-03 10:06:38', '1677837998', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationEditors`
--

CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) UNSIGNED NOT NULL,
  `cnvEditorHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationEditors`
--

INSERT INTO `ConversationEditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1, 'plain_text', 'Plain Text', 1, 0),
(2, 'markdown', 'Markdown', 0, 0),
(3, 'rich_text', 'Rich Text', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFlaggedMessages`
--

CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationFlaggedMessageTypes`
--

INSERT INTO `ConversationFlaggedMessageTypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
(1, 'spam');

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageAttachments`
--

CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageNotifications`
--

CREATE TABLE `ConversationMessageNotifications` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageRatings`
--

CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(10) UNSIGNED DEFAULT NULL,
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessages`
--

CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageReview` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8mb4_unicode_ci,
  `cnvMessageLevel` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8mb4_unicode_ci,
  `cnvMessageBody` text COLLATE utf8mb4_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationPermissionAddMessageAccessList`
--

CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationPermissionAssignments`
--

CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationPermissionAssignments`
--

INSERT INTO `ConversationPermissionAssignments` (`cnvID`, `pkID`, `paID`) VALUES
(0, 67, 103),
(0, 68, 104),
(0, 71, 105),
(0, 70, 106),
(0, 72, 107),
(0, 69, 108),
(0, 73, 109),
(0, 74, 110);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationRatingTypes`
--

CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationRatingTypes`
--

INSERT INTO `ConversationRatingTypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
(1, 'up_vote', 'Up Vote', 1, 0),
(2, 'down_vote', 'Down Vote', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Conversations`
--

CREATE TABLE `Conversations` (
  `cnvID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) UNSIGNED DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) UNSIGNED DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8mb4_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationSubscriptions`
--

CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationSubscriptions`
--

INSERT INTO `ConversationSubscriptions` (`cnvID`, `uID`, `type`) VALUES
(0, 1, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `DesignTags`
--

CREATE TABLE `DesignTags` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DownloadStatistics`
--

CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) UNSIGNED NOT NULL COMMENT 'DownloadStatistics record ID',
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(11) NOT NULL COMMENT 'Version of the downloaded file',
  `uID` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID of the user that downloaded the file',
  `rcID` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID of the page where the download originated',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Editor`
--

CREATE TABLE `Editor` (
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressAttributeKeys`
--

CREATE TABLE `ExpressAttributeKeys` (
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED NOT NULL,
  `eakUnique` tinyint(1) NOT NULL COMMENT 'Enables SKU-type attributes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntities`
--

CREATE TABLE `ExpressEntities` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `default_view_form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `default_edit_form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plural_handle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supports_custom_display_order` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `result_column_set` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:object)',
  `include_in_public_list` tinyint(1) NOT NULL,
  `entity_results_node_id` int(11) NOT NULL,
  `items_per_page` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL,
  `use_separate_site_result_buckets` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityAssociationEntries`
--

CREATE TABLE `ExpressEntityAssociationEntries` (
  `id` int(11) NOT NULL,
  `association_id` int(11) DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `exEntryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityAssociations`
--

CREATE TABLE `ExpressEntityAssociations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `source_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `target_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `is_owned_by_association` tinyint(1) NOT NULL,
  `is_owning_association` tinyint(1) NOT NULL,
  `target_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inversed_by_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityEntries`
--

CREATE TABLE `ExpressEntityEntries` (
  `exEntryID` int(11) NOT NULL,
  `exEntryDisplayOrder` int(11) NOT NULL,
  `exEntryDateCreated` datetime NOT NULL,
  `exEntryDateModified` datetime DEFAULT NULL,
  `publicIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `exEntryEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `resultsNodeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityEntryAssociations`
--

CREATE TABLE `ExpressEntityEntryAssociations` (
  `id` int(11) NOT NULL,
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exEntryID` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityEntryAttributeValues`
--

CREATE TABLE `ExpressEntityEntryAttributeValues` (
  `exEntryID` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetAssociationControls`
--

CREATE TABLE `ExpressFormFieldSetAssociationControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `association_entity_label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_selector_mode` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `enable_entry_reordering` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetAttributeKeyControls`
--

CREATE TABLE `ExpressFormFieldSetAttributeKeyControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetAuthorControls`
--

CREATE TABLE `ExpressFormFieldSetAuthorControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetControls`
--

CREATE TABLE `ExpressFormFieldSetControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `field_set_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `custom_label` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetPublicIdentifierControls`
--

CREATE TABLE `ExpressFormFieldSetPublicIdentifierControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSets`
--

CREATE TABLE `ExpressFormFieldSets` (
  `id` int(11) NOT NULL,
  `form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetTextControls`
--

CREATE TABLE `ExpressFormFieldSetTextControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressForms`
--

CREATE TABLE `ExpressForms` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressSearchIndexAttributes`
--

CREATE TABLE `ExpressSearchIndexAttributes` (
  `exEntryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileAttributeKeys`
--

CREATE TABLE `FileAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileAttributeKeys`
--

INSERT INTO `FileAttributeKeys` (`akID`) VALUES
(16),
(17),
(19);

-- --------------------------------------------------------

--
-- Table structure for table `FileAttributeValues`
--

CREATE TABLE `FileAttributeValues` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileAttributeValues`
--

INSERT INTO `FileAttributeValues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(2, 1, 16, 190),
(2, 1, 17, 191),
(3, 1, 16, 192),
(3, 1, 17, 193),
(4, 1, 16, 195),
(4, 1, 17, 196),
(5, 1, 16, 197),
(5, 1, 17, 198),
(6, 1, 16, 199),
(6, 1, 17, 200),
(7, 1, 16, 201),
(7, 1, 17, 202),
(8, 1, 16, 203),
(8, 1, 17, 204),
(9, 1, 16, 205),
(9, 1, 17, 206),
(10, 1, 16, 207),
(10, 1, 17, 208),
(11, 1, 16, 209),
(11, 1, 17, 210),
(17, 1, 16, 237),
(17, 1, 17, 238),
(18, 1, 16, 239),
(18, 1, 17, 240),
(19, 1, 16, 241),
(19, 1, 17, 242),
(20, 1, 16, 243),
(20, 1, 17, 244),
(21, 1, 16, 245),
(21, 1, 17, 246),
(22, 1, 16, 247),
(22, 1, 17, 248),
(23, 1, 16, 249),
(23, 1, 17, 250),
(24, 1, 16, 251),
(24, 1, 17, 252),
(25, 1, 16, 253),
(25, 1, 17, 254),
(26, 1, 16, 255),
(26, 1, 17, 256),
(27, 1, 16, 257),
(27, 1, 17, 258);

-- --------------------------------------------------------

--
-- Table structure for table `FileExternalFileProviders`
--

CREATE TABLE `FileExternalFileProviders` (
  `efpName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `efpConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `efpID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileExternalFileProviderTypes`
--

CREATE TABLE `FileExternalFileProviderTypes` (
  `efpTypeHandle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `efpTypeName` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `efpTypeID` int(11) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailPaths`
--

CREATE TABLE `FileImageThumbnailPaths` (
  `fileID` int(10) UNSIGNED NOT NULL,
  `fileVersionID` int(10) UNSIGNED NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storageLocationID` int(10) UNSIGNED NOT NULL,
  `thumbnailFormat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isBuilt` tinyint(1) NOT NULL,
  `lockID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockExpires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailTypeFileSets`
--

CREATE TABLE `FileImageThumbnailTypeFileSets` (
  `ftfsFileSetID` int(10) UNSIGNED NOT NULL,
  `ftfsThumbnailType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailTypes`
--

CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(11) NOT NULL,
  `ftTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeWidth` int(11) DEFAULT NULL,
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL,
  `ftTypeSizingMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftUpscalingEnabled` tinyint(1) NOT NULL,
  `ftLimitedToFileSets` tinyint(1) NOT NULL,
  `ftKeepAnimations` tinyint(1) NOT NULL,
  `ftSaveAreaBackgroundColor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileImageThumbnailTypes`
--

INSERT INTO `FileImageThumbnailTypes` (`ftTypeID`, `ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`, `ftTypeSizingMode`, `ftUpscalingEnabled`, `ftLimitedToFileSets`, `ftKeepAnimations`, `ftSaveAreaBackgroundColor`) VALUES
(1, 'file_manager_listing', 'File Manager Thumbnails', 60, 60, 1, 'exact', 1, 0, 0, ''),
(2, 'file_manager_detail', 'File Manager Detail Thumbnails', 400, 400, 1, 'exact', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionAssignments`
--

CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypeAccessList`
--

CREATE TABLE `FilePermissionFileTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypeAccessListCustom`
--

CREATE TABLE `FilePermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypes`
--

CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

CREATE TABLE `Files` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fDateAdded` datetime NOT NULL,
  `fPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fOverrideSetPermissions` tinyint(1) NOT NULL,
  `ocID` int(10) UNSIGNED NOT NULL,
  `folderTreeNodeID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `fslID` int(10) UNSIGNED DEFAULT NULL,
  `fUUID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Files`
--

INSERT INTO `Files` (`fID`, `fDateAdded`, `fPassword`, `fOverrideSetPermissions`, `ocID`, `folderTreeNodeID`, `uID`, `fslID`, `fUUID`) VALUES
(1, '2023-03-03 11:16:16', NULL, 0, 0, 8, 1, 1, '703b98fe-e234-4181-8ccf-49acd4c2827b'),
(2, '2023-03-03 11:16:16', NULL, 0, 0, 8, 1, 1, '8e0c3ce9-8ee5-4806-b425-3af94f2b5073'),
(3, '2023-03-03 11:16:16', NULL, 0, 0, 8, 1, 1, 'e87caa5e-9ab7-4c67-ab38-ca0592e7c6af'),
(4, '2023-03-07 07:06:43', NULL, 0, 0, 12, 1, 1, 'f753d641-b8ae-4a5e-822e-fb5f53a662c5'),
(5, '2023-03-07 07:06:44', NULL, 0, 0, 12, 1, 1, '1131eabd-c1da-4379-957f-27877c94978f'),
(6, '2023-03-07 07:06:44', NULL, 0, 0, 12, 1, 1, '1465f6fe-94f9-4dd7-bad0-85cea72f35ee'),
(7, '2023-03-07 07:06:44', NULL, 0, 0, 12, 1, 1, 'fcfb9f7d-fb90-49de-91b5-8f4974e5fded'),
(8, '2023-03-07 07:06:45', NULL, 0, 0, 12, 1, 1, 'be52ac41-baf2-419e-bf79-d8d6716ad86d'),
(9, '2023-03-07 07:06:45', NULL, 0, 0, 12, 1, 1, 'f4704d37-0745-4961-be41-f716a93adbae'),
(10, '2023-03-07 07:06:45', NULL, 0, 0, 12, 1, 1, '72f8f9f1-4901-4338-b05a-9fc60a76fc2f'),
(11, '2023-03-07 07:06:45', NULL, 0, 0, 12, 1, 1, '9529ccd5-3c89-4612-aba5-e58492f4dcad'),
(12, '2023-03-07 08:17:47', NULL, 0, 0, 21, 1, 1, 'b7920d46-5d52-4caf-8c44-677f95c9c610'),
(13, '2023-03-07 08:17:47', NULL, 0, 0, 21, 1, 1, 'ddf9e395-bdbc-46ea-a46f-ac4596fdfcf7'),
(14, '2023-03-07 08:17:48', NULL, 0, 0, 21, 1, 1, '2a4c6168-81fb-4df5-9af0-778df0b87d8f'),
(15, '2023-03-07 08:17:48', NULL, 0, 0, 21, 1, 1, '92b21e21-bf0e-4edb-be43-58972ac05d62'),
(16, '2023-03-07 08:17:50', NULL, 0, 0, 21, 1, 1, '97052b7d-9cd7-4c0d-b281-16d5d887d1ea'),
(17, '2023-03-07 08:18:28', NULL, 0, 0, 27, 1, 1, '2afea1bb-fb57-4da9-a9f2-e3a6fe2dc52e'),
(18, '2023-03-07 08:18:29', NULL, 0, 0, 27, 1, 1, 'c118138b-2108-4d78-a21a-0839e4761329'),
(19, '2023-03-07 08:18:30', NULL, 0, 0, 27, 1, 1, 'daf4fb3c-21f6-4041-a374-35ee432a5c45'),
(20, '2023-03-07 08:18:31', NULL, 0, 0, 27, 1, 1, 'a166cf7f-78ad-4d1a-b699-bda19c3b48a6'),
(21, '2023-03-07 08:18:33', NULL, 0, 0, 27, 1, 1, '0e1bf813-5ad2-4931-a168-cd98fac70b8a'),
(22, '2023-03-07 08:18:34', NULL, 0, 0, 27, 1, 1, '9602e2ea-2b41-42c3-a855-8d27de7cf640'),
(23, '2023-03-07 08:18:34', NULL, 0, 0, 27, 1, 1, 'cec472ce-7fc6-446a-92d9-c9f41658bdb5'),
(24, '2023-03-07 10:45:52', NULL, 0, 0, 27, 1, 1, 'dd0d63ac-73e2-40e4-8c58-dc582d8fce26'),
(25, '2023-03-07 10:45:52', NULL, 0, 0, 27, 1, 1, '7fcf3c99-528f-4f06-9def-a3f382f3cb17'),
(26, '2023-03-07 10:45:53', NULL, 0, 0, 27, 1, 1, '24bcbe02-ad50-49ae-97e7-5d7893a5f614'),
(27, '2023-03-07 10:45:53', NULL, 0, 0, 27, 1, 1, '97f92344-e7fd-4fa5-9718-9e282c8a7006');

-- --------------------------------------------------------

--
-- Table structure for table `FileSearchIndexAttributes`
--

CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) UNSIGNED NOT NULL,
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(2, '57.0000', '57.0000', '0.0000'),
(3, '144.0000', '144.0000', '0.0000'),
(4, '266.0000', '207.0000', '0.0000'),
(5, '267.0000', '207.0000', '0.0000'),
(6, '266.0000', '208.0000', '0.0000'),
(7, '267.0000', '208.0000', '0.0000'),
(8, '266.0000', '208.0000', '0.0000'),
(9, '267.0000', '208.0000', '0.0000'),
(10, '266.0000', '208.0000', '0.0000'),
(11, '267.0000', '208.0000', '0.0000'),
(17, '1600.0000', '900.0000', '0.0000'),
(18, '1600.0000', '900.0000', '0.0000'),
(19, '1600.0000', '900.0000', '0.0000'),
(20, '909.0000', '900.0000', '0.0000'),
(21, '1600.0000', '900.0000', '0.0000'),
(22, '1600.0000', '672.0000', '0.0000'),
(23, '800.0000', '672.0000', '0.0000'),
(24, '100.0000', '100.0000', '0.0000'),
(25, '100.0000', '100.0000', '0.0000'),
(26, '100.0000', '100.0000', '0.0000'),
(27, '100.0000', '100.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `FileSetFiles`
--

CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSets`
--

CREATE TABLE `FileSets` (
  `fsID` int(10) UNSIGNED NOT NULL,
  `fsName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetSavedSearches`
--

CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8mb4_unicode_ci,
  `fsResultColumns` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocations`
--

CREATE TABLE `FileStorageLocations` (
  `fslName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `fslID` int(10) UNSIGNED NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileStorageLocations`
--

INSERT INTO `FileStorageLocations` (`fslName`, `fslConfiguration`, `fslID`, `fslIsDefault`) VALUES
('Default', 'O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocationTypes`
--

CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeHandle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeName` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeID` int(11) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileStorageLocationTypes`
--

INSERT INTO `FileStorageLocationTypes` (`fslTypeHandle`, `fslTypeName`, `fslTypeID`, `pkgID`) VALUES
('default', 'Default', 1, 0),
('local', 'Local', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `FileUsageRecord`
--

CREATE TABLE `FileUsageRecord` (
  `file_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileUsageRecord`
--

INSERT INTO `FileUsageRecord` (`file_id`, `block_id`, `collection_id`, `collection_version_id`) VALUES
(4, 0, 290, 2),
(4, 0, 290, 3),
(4, 0, 290, 5),
(4, 0, 290, 6),
(5, 0, 291, 1),
(5, 0, 291, 2),
(6, 0, 292, 1),
(6, 0, 292, 2),
(7, 0, 293, 1),
(7, 0, 293, 2),
(8, 0, 294, 1),
(8, 0, 294, 2),
(9, 0, 295, 1),
(9, 0, 295, 2),
(17, 117, 1, 17),
(23, 148, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `FileVersionLog`
--

CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileVersions`
--

CREATE TABLE `FileVersions` (
  `fvID` int(11) NOT NULL,
  `fvFilename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fvPrefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvDateAdded` datetime NOT NULL,
  `fvActivateDateTime` datetime NOT NULL,
  `fvIsApproved` tinyint(1) NOT NULL,
  `fvAuthorUID` int(11) NOT NULL,
  `fvApproverUID` int(11) NOT NULL,
  `fvSize` bigint(20) NOT NULL,
  `fvTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvDescription` longtext COLLATE utf8mb4_unicode_ci,
  `fvExtension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvTags` longtext COLLATE utf8mb4_unicode_ci,
  `fvType` int(11) NOT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL,
  `fvHasDetailThumbnail` tinyint(1) NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileVersions`
--

INSERT INTO `FileVersions` (`fvID`, `fvFilename`, `fvPrefix`, `fvDateAdded`, `fvActivateDateTime`, `fvIsApproved`, `fvAuthorUID`, `fvApproverUID`, `fvSize`, `fvTitle`, `fvDescription`, `fvExtension`, `fvTags`, `fvType`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fID`) VALUES
(1, 'favicon-aisin.ico', '821677842176', '2023-03-03 11:16:16', '2023-03-03 11:16:16', 1, 1, 1, 17542, 'favicon-aisin.ico', '', 'ico', '', 1, 0, 0, 1),
(1, 'favicon-aisin-57x57.png', '561677842176', '2023-03-03 11:16:16', '2023-03-03 11:16:16', 1, 1, 1, 2615, 'favicon-aisin-57x57.png', '', 'png', '', 1, 1, 0, 2),
(1, 'favicon-aisin-144x144.png', '331677842176', '2023-03-03 11:16:16', '2023-03-03 11:16:16', 1, 1, 1, 7188, 'favicon-aisin-144x144.png', '', 'png', '', 1, 1, 0, 3),
(1, 'news-01.jpg', '981678172803', '2023-03-07 07:06:44', '2023-03-07 07:06:44', 1, 1, 1, 51571, 'news-01.jpg', '', 'jpg', '', 1, 1, 0, 4),
(1, 'news-02.jpg', '491678172804', '2023-03-07 07:06:44', '2023-03-07 07:06:44', 1, 1, 1, 73629, 'news-02.jpg', '', 'jpg', '', 1, 1, 0, 5),
(1, 'news-03.jpg', '111678172804', '2023-03-07 07:06:44', '2023-03-07 07:06:44', 1, 1, 1, 64151, 'news-03.jpg', '', 'jpg', '', 1, 1, 0, 6),
(1, 'news-04.jpg', '351678172804', '2023-03-07 07:06:44', '2023-03-07 07:06:44', 1, 1, 1, 29252, 'news-04.jpg', '', 'jpg', '', 1, 1, 0, 7),
(1, 'news-05.jpg', '941678172805', '2023-03-07 07:06:45', '2023-03-07 07:06:45', 1, 1, 1, 63978, 'news-05.jpg', '', 'jpg', '', 1, 1, 0, 8),
(1, 'news-06.jpg', '621678172805', '2023-03-07 07:06:45', '2023-03-07 07:06:45', 1, 1, 1, 48356, 'news-06.jpg', '', 'jpg', '', 1, 1, 0, 9),
(1, 'news-07.jpg', '161678172805', '2023-03-07 07:06:45', '2023-03-07 07:06:45', 1, 1, 1, 77094, 'news-07.jpg', '', 'jpg', '', 1, 1, 0, 10),
(1, 'news-08.jpg', '621678172805', '2023-03-07 07:06:45', '2023-03-07 07:06:45', 1, 1, 1, 49894, 'news-08.jpg', '', 'jpg', '', 1, 1, 0, 11),
(1, 'video-01.mp4', '871678177067', '2023-03-07 08:17:47', '2023-03-07 08:17:47', 1, 1, 1, 15681311, 'video-01.mp4', '', 'mp4', '', 2, 0, 0, 12),
(1, 'video-02.mp4', '131678177067', '2023-03-07 08:17:47', '2023-03-07 08:17:47', 1, 1, 1, 12010077, 'video-02.mp4', '', 'mp4', '', 2, 0, 0, 13),
(1, 'video-03.mp4', '421678177067', '2023-03-07 08:17:48', '2023-03-07 08:17:48', 1, 1, 1, 11989936, 'video-03.mp4', '', 'mp4', '', 2, 0, 0, 14),
(1, 'video-04.mp4', '161678177068', '2023-03-07 08:17:48', '2023-03-07 08:17:48', 1, 1, 1, 19747494, 'video-04.mp4', '', 'mp4', '', 2, 0, 0, 15),
(1, 'video-05.mp4', '991678177070', '2023-03-07 08:17:50', '2023-03-07 08:17:50', 1, 1, 1, 35278737, 'video-05.mp4', '', 'mp4', '', 2, 0, 0, 16),
(1, 'about-01.jpg', '881678177108', '2023-03-07 08:18:28', '2023-03-07 08:18:28', 1, 1, 1, 753986, 'about-01.jpg', '', 'jpg', '', 1, 1, 1, 17),
(1, 'poster-01.jpg', '391678177109', '2023-03-07 08:18:29', '2023-03-07 08:18:29', 1, 1, 1, 739314, 'poster-01.jpg', '', 'jpg', '', 1, 1, 1, 18),
(1, 'poster-02.jpg', '771678177110', '2023-03-07 08:18:30', '2023-03-07 08:18:30', 1, 1, 1, 881263, 'poster-02.jpg', '', 'jpg', '', 1, 1, 1, 19),
(1, 'poster-03-v2.jpg', '711678177111', '2023-03-07 08:18:31', '2023-03-07 08:18:31', 1, 1, 1, 184272, 'poster-03-v2.jpg', '', 'jpg', '', 1, 1, 1, 20),
(1, 'poster-04.jpg', '791678177112', '2023-03-07 08:18:33', '2023-03-07 08:18:33', 1, 1, 1, 1943674, 'poster-04.jpg', '', 'jpg', '', 1, 1, 1, 21),
(1, 'poster-05.jpg', '721678177114', '2023-03-07 08:18:34', '2023-03-07 08:18:34', 1, 1, 1, 386001, 'poster-05.jpg', '', 'jpg', '', 1, 1, 1, 22),
(1, 'section-06.jpg', '411678177114', '2023-03-07 08:18:34', '2023-03-07 08:18:34', 1, 1, 1, 459025, 'section-06.jpg', '', 'jpg', '', 1, 1, 1, 23),
(1, 'crown.png', '181678185952', '2023-03-07 10:45:52', '2023-03-07 10:45:52', 1, 1, 1, 2037, 'crown.png', '', 'png', '', 1, 1, 0, 24),
(1, 'globe-2.png', '511678185952', '2023-03-07 10:45:52', '2023-03-07 10:45:52', 1, 1, 1, 4434, 'globe-2.png', '', 'png', '', 1, 1, 0, 25),
(1, 'museum.png', '331678185953', '2023-03-07 10:45:53', '2023-03-07 10:45:53', 1, 1, 1, 1818, 'museum.png', '', 'png', '', 1, 1, 0, 26),
(1, 'users.png', '301678185953', '2023-03-07 10:45:53', '2023-03-07 10:45:53', 1, 1, 1, 2438, 'users.png', '', 'png', '', 1, 1, 0, 27);

-- --------------------------------------------------------

--
-- Table structure for table `FormSubmissionNotifications`
--

CREATE TABLE `FormSubmissionNotifications` (
  `exEntryID` int(11) DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Geolocators`
--

CREATE TABLE `Geolocators` (
  `glID` int(10) UNSIGNED NOT NULL COMMENT 'Geolocator ID',
  `glHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator handle',
  `glName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator name',
  `glDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator description',
  `glConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator configuration options(DC2Type:json_array)',
  `glActive` tinyint(1) NOT NULL COMMENT 'Is this Geolocator the active one?',
  `glPackage` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all the installed Geolocator services';

--
-- Dumping data for table `Geolocators`
--

INSERT INTO `Geolocators` (`glID`, `glHandle`, `glName`, `glDescription`, `glConfiguration`, `glActive`, `glPackage`) VALUES
(1, 'geoplugin', 'geoPlugin', '', '{\"url\":\"http:\\/\\/www.geoplugin.net\\/json.gp?ip=[[IP]]\"}', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GroupCreateNotifications`
--

CREATE TABLE `GroupCreateNotifications` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupCreates`
--

CREATE TABLE `GroupCreates` (
  `id` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED NOT NULL,
  `requested` datetime NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupJoinRequests`
--

CREATE TABLE `GroupJoinRequests` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gjrRequested` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupRoleChangeNotifications`
--

CREATE TABLE `GroupRoleChangeNotifications` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupRoleChanges`
--

CREATE TABLE `GroupRoleChanges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED NOT NULL,
  `grID` int(10) UNSIGNED NOT NULL,
  `requested` datetime NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupRoles`
--

CREATE TABLE `GroupRoles` (
  `grID` int(10) UNSIGNED NOT NULL,
  `grName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `grIsManager` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `GroupRoles`
--

INSERT INTO `GroupRoles` (`grID`, `grName`, `grIsManager`) VALUES
(1, 'Member', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `gID` int(10) UNSIGNED NOT NULL,
  `gName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8mb4_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gThumbnailFID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gtID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gPetitionForPublicEntry` tinyint(1) NOT NULL DEFAULT '0',
  `gOverrideGroupTypeSettings` tinyint(1) NOT NULL DEFAULT '0',
  `gDefaultRoleID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Groups`
--

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`, `gThumbnailFID`, `gtID`, `gPetitionForPublicEntry`, `gOverrideGroupTypeSettings`, `gDefaultRoleID`, `gAuthorID`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Guest', 0, 0, 1, 0, 0, 1, 0),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Registered Users', 0, 0, 1, 0, 0, 1, 0),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Administrators', 0, 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `GroupSelectedRoles`
--

CREATE TABLE `GroupSelectedRoles` (
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `grID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSetGroups`
--

CREATE TABLE `GroupSetGroups` (
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSets`
--

CREATE TABLE `GroupSets` (
  `gsID` int(10) UNSIGNED NOT NULL,
  `gsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSignupNotifications`
--

CREATE TABLE `GroupSignupNotifications` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSignupRequestAcceptNotifications`
--

CREATE TABLE `GroupSignupRequestAcceptNotifications` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSignupRequestAccepts`
--

CREATE TABLE `GroupSignupRequestAccepts` (
  `id` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED NOT NULL,
  `RequestAccepted` datetime NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `managerUID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSignupRequestDeclineNotifications`
--

CREATE TABLE `GroupSignupRequestDeclineNotifications` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSignupRequestDeclines`
--

CREATE TABLE `GroupSignupRequestDeclines` (
  `id` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED NOT NULL,
  `RequestDeclineed` datetime NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `managerUID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSignupRequestNotifications`
--

CREATE TABLE `GroupSignupRequestNotifications` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSignupRequests`
--

CREATE TABLE `GroupSignupRequests` (
  `id` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED NOT NULL,
  `requested` datetime NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSignups`
--

CREATE TABLE `GroupSignups` (
  `id` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED NOT NULL,
  `requested` datetime NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupTypes`
--

CREATE TABLE `GroupTypes` (
  `gtID` int(10) UNSIGNED NOT NULL,
  `gtName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gtPetitionForPublicEntry` tinyint(1) NOT NULL DEFAULT '0',
  `gtDefaultRoleID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `GroupTypes`
--

INSERT INTO `GroupTypes` (`gtID`, `gtName`, `gtPetitionForPublicEntry`, `gtDefaultRoleID`) VALUES
(1, 'Group', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `GroupTypeSelectedRoles`
--

CREATE TABLE `GroupTypeSelectedRoles` (
  `gtID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `grID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `GroupTypeSelectedRoles`
--

INSERT INTO `GroupTypeSelectedRoles` (`gtID`, `grID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `IpAccessControlCategories`
--

CREATE TABLE `IpAccessControlCategories` (
  `iaccID` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Category identifier',
  `iaccHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The IP Access Control handle',
  `iaccName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The IP Access Control name',
  `iaccEnabled` tinyint(1) NOT NULL COMMENT 'Is this IP Access Control enabled?',
  `iaccMaxEvents` int(10) UNSIGNED NOT NULL COMMENT 'The maximum allowed events in the time window',
  `iaccTimeWindow` int(10) UNSIGNED DEFAULT NULL COMMENT 'The time window (in seconds) where the events should be counted (NULL means no limits)',
  `iaccBanDuration` int(10) UNSIGNED DEFAULT NULL COMMENT 'The duration (in seconds) of the ban when the maximum number of events occur in the time window (NULL means forever)',
  `iaccSiteSpecific` tinyint(1) NOT NULL COMMENT 'Is this IP Access Control Category site-specific?',
  `iaccLogChannel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The log channel handle',
  `iaccPackage` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of IP Access Control Categories';

--
-- Dumping data for table `IpAccessControlCategories`
--

INSERT INTO `IpAccessControlCategories` (`iaccID`, `iaccHandle`, `iaccName`, `iaccEnabled`, `iaccMaxEvents`, `iaccTimeWindow`, `iaccBanDuration`, `iaccSiteSpecific`, `iaccLogChannel`, `iaccPackage`) VALUES
(1, 'failed_login', 'Failed Login Attempts', 1, 5, 300, 600, 1, 'security', NULL),
(2, 'forgot_password', 'Forgot Password Attempts', 1, 2, 30, 600, 0, 'security', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `IpAccessControlEvents`
--

CREATE TABLE `IpAccessControlEvents` (
  `iaceID` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Event identifier',
  `iaceIp` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The IP address associated to this event',
  `iaceDateTime` datetime NOT NULL COMMENT 'The date/time when this event occurred',
  `iaceCategory` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Category identifier',
  `iaceSite` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of IP Access Control Events';

-- --------------------------------------------------------

--
-- Table structure for table `IpAccessControlRanges`
--

CREATE TABLE `IpAccessControlRanges` (
  `iacrID` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Range identifier',
  `iacrIpFrom` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The initial IP address of the range',
  `iacrIpTo` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The final IP address of the range',
  `iacrType` int(10) UNSIGNED NOT NULL COMMENT 'The type of this range',
  `iacrExpiration` datetime DEFAULT NULL COMMENT 'The date/time when this range expires (NULL means no expiration)',
  `iacrCategory` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Category identifier',
  `iacrSite` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of IP Access Control Ranges';

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

CREATE TABLE `Jobs` (
  `jID` int(10) UNSIGNED NOT NULL,
  `jName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8mb4_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Check Automated Groups', 'Automatically add users to groups and assign badges.', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'check_automated_groups', 0, 0, 'days', 0),
(4, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(5, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(6, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0),
(7, 'Update Gatherings', 'Loads new items into gatherings.', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'update_gatherings', 0, 0, 'days', 0),
(8, 'Update Statistics Trackers', 'Scan the sitemap for file usage and stack usage to update statistics trackers', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'update_statistics', 0, 0, 'days', 0),
(9, 'Fill thumbnail database table', 'Re-populate the thumbnail path database table.', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'fill_thumbnails_table', 0, 0, 'days', 0),
(10, 'Deactivate Users', 'Deactivates users who haven\'t logged in recently, if automatic user deactivation is active.', '2023-03-03 10:05:38', NULL, 0, NULL, 0, 'ENABLED', 'deactivate_users', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSetJobs`
--

CREATE TABLE `JobSetJobs` (
  `jsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jRunOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `JobSetJobs`
--

INSERT INTO `JobSetJobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 9, 0),
(1, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSets`
--

CREATE TABLE `JobSets` (
  `jsID` int(10) UNSIGNED NOT NULL,
  `jsName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `JobSets`
--

INSERT INTO `JobSets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobsLog`
--

CREATE TABLE `JobsLog` (
  `jlID` int(10) UNSIGNED NOT NULL,
  `jID` int(10) UNSIGNED NOT NULL,
  `jlMessage` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LegacyAttributeKeys`
--

CREATE TABLE `LegacyAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Logs`
--

CREATE TABLE `Logs` (
  `logID` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Logs`
--

INSERT INTO `Logs` (`logID`, `channel`, `time`, `message`, `uID`, `level`) VALUES
(1, 'operations', 1677837997, 'Clearing cache with CacheClearer::flush().', 1, 250),
(2, 'operations', 1677838550, 'Clearing cache with CacheClearer::flush().', 1, 250),
(3, 'site_organization', 1677838551, 'Page \"Footer Contact\" at path \"/!stacks/footer-contact\" deleted', 1, 250),
(4, 'site_organization', 1677838551, 'Page \"Footer Legal\" at path \"/!stacks/footer-legal\" deleted', 1, 250),
(5, 'site_organization', 1677838551, 'Page \"Footer Navigation\" at path \"/!stacks/footer-navigation\" deleted', 1, 250),
(6, 'site_organization', 1677838551, 'Page \"Header Navigation\" at path \"/!stacks/header-navigation\" deleted', 1, 250),
(7, 'site_organization', 1677838551, 'Page \"Header Site Title\" at path \"/!stacks/header-site-title\" deleted', 1, 250),
(8, 'operations', 1677838736, 'Clearing cache with ClearCacheCommandHandler::handle().', 1, 250),
(9, 'site_organization', 1677838787, 'Page \"Community Points\" at path \"/dashboard/users/points\" deleted', 1, 250),
(10, 'site_organization', 1677838787, 'Page \"Assign Points\" at path \"/dashboard/users/points/assign\" deleted', 1, 250),
(11, 'site_organization', 1677838787, 'Page \"Actions\" at path \"/dashboard/users/points/actions\" deleted', 1, 250),
(12, 'site_organization', 1677838794, 'Page \"Notification Settings\" at path \"/dashboard/system/registration/notification\" deleted', 1, 250),
(13, 'site_organization', 1677838807, 'Page \"IP Blacklist\" at path \"/dashboard/system/permissions/blacklist\" deleted', 1, 250),
(14, 'site_organization', 1677838807, 'Page \"Configure IP Blocking\" at path \"/dashboard/system/permissions/blacklist/configure\" deleted', 1, 250),
(15, 'site_organization', 1677838807, 'Page \"IP Range\" at path \"/dashboard/system/permissions/blacklist/range\" deleted', 1, 250),
(16, 'operations', 1677838821, 'Clearing cache with ClearCacheCommandHandler::handle().', 1, 250),
(17, 'exceptions', 1677838822, 'Exception Occurred: /srv/users/aisin/apps/aisin/public/updates/concrete-cms-9.1.3_remote_updater/concrete/vendor/doctrine/common/src/Proxy/AbstractProxyFactory.php:197 require(/srv/users/aisin/apps/aisin/public/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteSiteTree.php): failed to open stream: No such file or directory (2)\n', 0, 600),
(18, 'operations', 1677838823, 'Clearing cache with ClearCacheCommandHandler::handle().', 1, 250),
(19, 'operations', 1677839002, 'Clearing cache with ClearCacheCommandHandler::handle().', 1, 250),
(20, 'site_organization', 1677839004, 'Page \"Footer Contact\" at path \"/!stacks/footer-contact\" deleted', 1, 250),
(21, 'site_organization', 1677839004, 'Page \"Footer Legal\" at path \"/!stacks/footer-legal\" deleted', 1, 250),
(22, 'site_organization', 1677839004, 'Page \"Footer Navigation\" at path \"/!stacks/footer-navigation\" deleted', 1, 250),
(23, 'site_organization', 1677839004, 'Page \"Header Navigation\" at path \"/!stacks/header-navigation\" deleted', 1, 250),
(24, 'site_organization', 1677839004, 'Page \"Header Site Title\" at path \"/!stacks/header-site-title\" deleted', 1, 250),
(25, 'operations', 1677839013, 'Clearing cache with ClearCacheCommandHandler::handle().', 1, 250),
(26, 'operations', 1677839631, 'Clearing cache with ClearCacheCommandHandler::handle().', 1, 250),
(27, 'operations', 1677839633, 'Clearing cache thumbnails directory.', 1, 250),
(28, 'site_organization', 1677839634, 'Page \"Footer Contact\" at path \"/!stacks/footer-contact\" deleted', 1, 250),
(29, 'site_organization', 1677839634, 'Page \"Footer Legal\" at path \"/!stacks/footer-legal\" deleted', 1, 250),
(30, 'site_organization', 1677839634, 'Page \"Footer Navigation\" at path \"/!stacks/footer-navigation\" deleted', 1, 250),
(31, 'site_organization', 1677839634, 'Page \"Header Navigation\" at path \"/!stacks/header-navigation\" deleted', 1, 250),
(32, 'site_organization', 1677839634, 'Page \"Header Site Title\" at path \"/!stacks/header-site-title\" deleted', 1, 250),
(33, 'operations', 1677839649, 'Clearing cache with ClearCacheCommandHandler::handle().', 1, 250),
(34, 'files', 1677842176, 'File favicon-aisin.ico successfully imported.', 1, 250),
(35, 'files', 1677842176, 'File favicon-aisin-57x57.png successfully imported.', 1, 250),
(36, 'files', 1677842176, 'File favicon-aisin-144x144.png successfully imported.', 1, 250),
(37, 'authentication', 1678160002, 'Session Invalidated. Session IP \"49.49.216.157\" did not match provided IP \"49.49.221.161\".', 1, 250),
(38, 'files', 1678172804, 'File news-01.jpg successfully imported.', 1, 250),
(39, 'files', 1678172804, 'File news-02.jpg successfully imported.', 1, 250),
(40, 'files', 1678172804, 'File news-03.jpg successfully imported.', 1, 250),
(41, 'files', 1678172804, 'File news-04.jpg successfully imported.', 1, 250),
(42, 'files', 1678172805, 'File news-05.jpg successfully imported.', 1, 250),
(43, 'files', 1678172805, 'File news-06.jpg successfully imported.', 1, 250),
(44, 'files', 1678172805, 'File news-07.jpg successfully imported.', 1, 250),
(45, 'files', 1678172805, 'File news-08.jpg successfully imported.', 1, 250),
(46, 'application', 1678174628, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(47, 'application', 1678174628, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(48, 'application', 1678174628, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(49, 'application', 1678174731, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(50, 'application', 1678174731, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(51, 'application', 1678174731, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(52, 'application', 1678176407, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(53, 'application', 1678176407, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(54, 'application', 1678176407, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(55, 'files', 1678177067, 'File video-01.mp4 successfully imported.', 1, 250),
(56, 'files', 1678177067, 'File video-02.mp4 successfully imported.', 1, 250),
(57, 'files', 1678177068, 'File video-03.mp4 successfully imported.', 1, 250),
(58, 'files', 1678177068, 'File video-04.mp4 successfully imported.', 1, 250),
(59, 'files', 1678177070, 'File video-05.mp4 successfully imported.', 1, 250),
(60, 'files', 1678177109, 'File about-01.jpg successfully imported.', 1, 250),
(61, 'files', 1678177110, 'File poster-01.jpg successfully imported.', 1, 250),
(62, 'files', 1678177111, 'File poster-02.jpg successfully imported.', 1, 250),
(63, 'files', 1678177112, 'File poster-03-v2.jpg successfully imported.', 1, 250),
(64, 'files', 1678177114, 'File poster-04.jpg successfully imported.', 1, 250),
(65, 'files', 1678177114, 'File poster-05.jpg successfully imported.', 1, 250),
(66, 'files', 1678177114, 'File section-06.jpg successfully imported.', 1, 250),
(67, 'application', 1678177130, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(68, 'application', 1678178145, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(69, 'application', 1678178231, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(70, 'application', 1678178303, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(71, 'application', 1678178319, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(72, 'application', 1678178339, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(73, 'application', 1678178366, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(74, 'application', 1678178424, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(75, 'application', 1678178605, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(76, 'application', 1678185489, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(77, 'application', 1678185641, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(78, 'application', 1678185641, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(79, 'application', 1678185641, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(80, 'files', 1678185952, 'File crown.png successfully imported.', 1, 250),
(81, 'files', 1678185953, 'File globe-2.png successfully imported.', 1, 250),
(82, 'files', 1678185953, 'File museum.png successfully imported.', 1, 250),
(83, 'files', 1678185953, 'File users.png successfully imported.', 1, 250),
(84, 'application', 1678186210, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(85, 'application', 1678186210, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(86, 'application', 1678186210, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(87, 'application', 1678186382, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(88, 'application', 1678186382, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(89, 'application', 1678186382, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(90, 'application', 1678186637, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(91, 'application', 1678186686, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(92, 'application', 1678186686, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(93, 'application', 1678186686, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(94, 'application', 1678186795, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(95, 'application', 1678186795, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(96, 'application', 1678186795, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(97, 'application', 1678186841, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(98, 'application', 1678186882, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(99, 'application', 1678186882, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(100, 'application', 1678186882, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(101, 'application', 1678186975, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(102, 'application', 1678186975, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(103, 'application', 1678186975, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(104, 'application', 1678339708, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(105, 'application', 1678339708, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(106, 'application', 1678339708, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(107, 'application', 1678339723, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(108, 'application', 1678339723, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(109, 'application', 1678339723, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(110, 'application', 1678339837, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(111, 'application', 1678339837, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(112, 'application', 1678339837, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(113, 'application', 1678339941, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(114, 'application', 1678339941, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(115, 'application', 1678339941, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(116, 'application', 1678339946, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(117, 'application', 1678339946, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(118, 'application', 1678339946, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(119, 'application', 1678340264, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(120, 'application', 1678340264, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(121, 'application', 1678340264, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(122, 'application', 1678340489, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(123, 'application', 1678340489, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(124, 'application', 1678340489, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(125, 'application', 1678340597, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(126, 'application', 1678340597, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(127, 'application', 1678340597, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(128, 'application', 1678340731, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(129, 'application', 1678340731, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(130, 'application', 1678340731, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(131, 'application', 1678340892, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(132, 'application', 1678340892, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(133, 'application', 1678340892, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(134, 'application', 1678341131, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(135, 'application', 1678341131, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(136, 'application', 1678341131, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(137, 'application', 1678341353, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(138, 'application', 1678341913, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(139, 'application', 1678341913, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(140, 'application', 1678341913, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(141, 'authentication', 1678358015, 'Session Invalidated. Session user agent \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\" did not match provided agent \"Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1\"', 0, 250),
(142, 'authentication', 1678358639, 'Session Invalidated. Session user agent \"Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1\" did not match provided agent \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\"', 0, 250),
(143, 'authentication', 1678358850, 'Session Invalidated. Session user agent \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\" did not match provided agent \"Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1\"', 0, 250),
(144, 'authentication', 1678358873, 'Session Invalidated. Session user agent \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0\" did not match provided agent \"com.apple.WebKit.Networking/8614.2.9.0.10 CFNetwork/1399 Darwin/22.1.0\"', 0, 250),
(145, 'authentication', 1678359176, 'Session Invalidated. Session user agent \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0\" did not match provided agent \"com.apple.WebKit.Networking/8614.2.9.0.10 CFNetwork/1399 Darwin/22.1.0\"', 0, 250),
(146, 'authentication', 1678417369, 'Session Invalidated. Session IP \"49.49.221.161\" did not match provided IP \"49.49.242.70\".', 1, 250),
(147, 'authentication', 1678417369, 'Session Invalidated. Session user agent \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\" did not match provided agent \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"', 1, 250),
(148, 'application', 1678419562, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(149, 'application', 1678419568, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(150, 'application', 1678427678, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(151, 'application', 1678427678, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(152, 'application', 1678429970, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(153, 'application', 1678429970, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(154, 'application', 1678432392, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(155, 'application', 1678432486, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(156, 'application', 1678432486, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(157, 'application', 1678437834, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(158, 'application', 1678437834, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(159, 'application', 1678437834, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(160, 'application', 1678440382, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(161, 'application', 1678440385, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(162, 'application', 1678440385, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(163, 'application', 1678440385, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(164, 'application', 1678441448, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(165, 'application', 1678441448, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(166, 'application', 1678443228, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(167, 'application', 1678443228, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(168, 'application', 1678443228, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(169, 'application', 1678443307, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(170, 'application', 1678443307, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(171, 'application', 1678443307, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(172, 'application', 1678443390, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(173, 'application', 1678443390, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(174, 'application', 1678443390, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(175, 'application', 1678443417, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(176, 'application', 1678443417, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(177, 'application', 1678443417, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(178, 'application', 1678694141, 'ResponseAssetGroup::requireAsset required \"core/topics\" but \"core/topics\" is not a valid asset group handle', 1, 250),
(179, 'application', 1678700974, 'ResponseAssetGroup::requireAsset required \"redactor\" but \"redactor\" is not a valid asset group handle', 1, 250),
(180, 'application', 1678700974, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(181, 'application', 1678700974, 'ResponseAssetGroup::requireAsset required \"core/sitemap\" but \"core/sitemap\" is not a valid asset group handle', 1, 250),
(182, 'application', 1678707890, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250),
(183, 'application', 1678707906, 'ResponseAssetGroup::requireAsset required \"core/file-manager\" but \"core/file-manager\" is not a valid asset group handle', 1, 250);

-- --------------------------------------------------------

--
-- Table structure for table `MailImporters`
--

CREATE TABLE `MailImporters` (
  `miID` int(10) UNSIGNED NOT NULL,
  `miHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT 'POP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MailImporters`
--

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `MailValidationHashes`
--

CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) UNSIGNED NOT NULL,
  `miID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MessengerBatches`
--

CREATE TABLE `MessengerBatches` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `totalJobs` int(11) NOT NULL,
  `pendingJobs` int(11) NOT NULL,
  `failedJobs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MessengerMessages`
--

CREATE TABLE `MessengerMessages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MessengerProcesses`
--

CREATE TABLE `MessengerProcesses` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateStarted` int(10) UNSIGNED NOT NULL,
  `dateCompleted` int(10) UNSIGNED DEFAULT NULL,
  `exitCode` int(10) UNSIGNED DEFAULT NULL,
  `exitMessage` longtext COLLATE utf8mb4_unicode_ci,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `processType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MessengerScheduledTasks`
--

CREATE TABLE `MessengerScheduledTasks` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `input` json DEFAULT NULL,
  `dateScheduled` int(10) UNSIGNED DEFAULT NULL,
  `cronExpression` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(10) UNSIGNED DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MessengerTaskProcesses`
--

CREATE TABLE `MessengerTaskProcesses` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `task_id` int(10) UNSIGNED DEFAULT NULL,
  `input` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MultilingualPageRelations`
--

CREATE TABLE `MultilingualPageRelations` (
  `mpLocale` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MultilingualPageRelations`
--

INSERT INTO `MultilingualPageRelations` (`mpLocale`, `mpLanguage`, `mpRelationID`, `cID`) VALUES
('en_TH', 'en', 1, 257);

-- --------------------------------------------------------

--
-- Table structure for table `MultilingualTranslations`
--

CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) UNSIGNED NOT NULL,
  `mtSectionID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8mb4_unicode_ci,
  `msgstr` text COLLATE utf8mb4_unicode_ci,
  `msgstrPlurals` text COLLATE utf8mb4_unicode_ci,
  `context` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `reference` text COLLATE utf8mb4_unicode_ci,
  `flags` text COLLATE utf8mb4_unicode_ci,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NotificationAlerts`
--

CREATE TABLE `NotificationAlerts` (
  `naID` int(10) UNSIGNED NOT NULL,
  `naIsArchived` tinyint(1) NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NotificationPermissionSubscriptionList`
--

CREATE TABLE `NotificationPermissionSubscriptionList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NotificationPermissionSubscriptionListCustom`
--

CREATE TABLE `NotificationPermissionSubscriptionListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nSubscriptionIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE `Notifications` (
  `nID` int(10) UNSIGNED NOT NULL,
  `nDate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2AccessToken`
--

CREATE TABLE `OAuth2AccessToken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) UNSIGNED DEFAULT NULL,
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2AuthCode`
--

CREATE TABLE `OAuth2AuthCode` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2Client`
--

CREATE TABLE `OAuth2Client` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirectUri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientSecret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consentType` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2RefreshToken`
--

CREATE TABLE `OAuth2RefreshToken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `accessToken` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2Scope`
--

CREATE TABLE `OAuth2Scope` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `OAuth2Scope`
--

INSERT INTO `OAuth2Scope` (`identifier`, `description`) VALUES
('account:read', 'Read information about the remotely authenticated user.'),
('files:read', 'Read detailed information about uploaded files.'),
('openid', 'Remotely authenticate into concrete5.'),
('site:trees:read', 'Read information about system site trees.'),
('system:info:read', 'Read detailed information about the system.');

-- --------------------------------------------------------

--
-- Table structure for table `OauthUserMap`
--

CREATE TABLE `OauthUserMap` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Packages`
--

CREATE TABLE `Packages` (
  `pkgID` int(10) UNSIGNED NOT NULL,
  `pkgHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgVersion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL,
  `pkgAvailableVersion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Packages`
--

INSERT INTO `Packages` (`pkgID`, `pkgHandle`, `pkgVersion`, `pkgIsInstalled`, `pkgAvailableVersion`, `pkgDescription`, `pkgDateInstalled`, `pkgName`) VALUES
(1, 'block_designer', '4.1.1', 1, NULL, 'Design your own content blocks within a few clicks!', '2023-03-03 10:33:34', 'Block Designer'),
(2, 'block_designer_pro', '4.1.1', 1, NULL, 'Extra field types/features on top of the \'Block Designer\' Add-On', '2023-03-03 10:34:00', 'Block Designer Pro');

-- --------------------------------------------------------

--
-- Table structure for table `PageContainerInstanceAreas`
--

CREATE TABLE `PageContainerInstanceAreas` (
  `containerInstanceAreaID` int(11) NOT NULL,
  `arID` int(11) NOT NULL,
  `containerAreaName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `containerInstanceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageContainerInstances`
--

CREATE TABLE `PageContainerInstances` (
  `containerInstanceID` int(11) NOT NULL,
  `containerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageContainers`
--

CREATE TABLE `PageContainers` (
  `containerID` int(11) NOT NULL,
  `containerHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `containerIcon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `containerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageFeeds`
--

CREATE TABLE `PageFeeds` (
  `checkPagePermissions` tinyint(1) NOT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL,
  `iconFID` int(10) UNSIGNED NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfID` int(10) UNSIGNED NOT NULL,
  `cParentID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED NOT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL,
  `pfContentToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) NOT NULL,
  `pfDisplaySystemPages` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePaths`
--

CREATE TABLE `PagePaths` (
  `cPath` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppID` int(11) NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL,
  `ppIsCanonical` tinyint(1) NOT NULL,
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PagePaths`
--

INSERT INTO `PagePaths` (`cPath`, `ppID`, `cID`, `ppIsCanonical`, `ppGeneratedFromURLSlugs`) VALUES
('/dashboard', 1, 2, 1, 1),
('/dashboard/sitemap', 2, 3, 1, 1),
('/dashboard/sitemap/full', 3, 4, 1, 1),
('/dashboard/sitemap/explore', 4, 5, 1, 1),
('/dashboard/sitemap/search', 5, 6, 1, 1),
('/dashboard/files', 6, 7, 1, 1),
('/dashboard/files/search', 7, 8, 1, 1),
('/dashboard/files/attributes', 8, 9, 1, 1),
('/dashboard/files/sets', 9, 10, 1, 1),
('/dashboard/files/add_set', 10, 11, 1, 1),
('/dashboard/users', 11, 12, 1, 1),
('/dashboard/users/search', 12, 13, 1, 1),
('/dashboard/users/groups', 13, 14, 1, 1),
('/dashboard/users/groups/message', 14, 15, 1, 1),
('/dashboard/users/attributes', 15, 16, 1, 1),
('/dashboard/users/add', 16, 17, 1, 1),
('/dashboard/users/add_group', 17, 18, 1, 1),
('/dashboard/users/groups/bulkupdate', 18, 19, 1, 1),
('/dashboard/users/group_sets', 19, 20, 1, 1),
('/dashboard/express', 23, 24, 1, 1),
('/dashboard/express/entries', 24, 25, 1, 1),
('/dashboard/reports', 25, 26, 1, 1),
('/dashboard/reports/forms', 26, 27, 1, 1),
('/dashboard/reports/forms/legacy', 27, 28, 1, 1),
('/dashboard/reports/surveys', 28, 29, 1, 1),
('/dashboard/reports/logs', 29, 30, 1, 1),
('/dashboard/reports/page_changes', 30, 31, 1, 1),
('/dashboard/pages', 31, 32, 1, 1),
('/dashboard/pages/themes', 32, 33, 1, 1),
('/dashboard/pages/themes/inspect', 33, 34, 1, 1),
('/dashboard/pages/types', 34, 35, 1, 1),
('/dashboard/pages/types/organize', 35, 36, 1, 1),
('/dashboard/pages/types/add', 36, 37, 1, 1),
('/dashboard/pages/types/form', 37, 38, 1, 1),
('/dashboard/pages/types/output', 38, 39, 1, 1),
('/dashboard/pages/types/attributes', 39, 40, 1, 1),
('/dashboard/pages/types/permissions', 40, 41, 1, 1),
('/dashboard/pages/templates', 41, 42, 1, 1),
('/dashboard/pages/templates/add', 42, 43, 1, 1),
('/dashboard/pages/attributes', 43, 44, 1, 1),
('/dashboard/pages/single', 44, 45, 1, 1),
('/dashboard/pages/feeds', 45, 46, 1, 1),
('/dashboard/calendar', 46, 47, 1, 1),
('/dashboard/calendar/events', 47, 48, 1, 1),
('/dashboard/calendar/event_list', 48, 49, 1, 1),
('/dashboard/calendar/add', 49, 50, 1, 1),
('/dashboard/calendar/permissions', 50, 51, 1, 1),
('/dashboard/calendar/attributes', 51, 52, 1, 1),
('/dashboard/conversations', 52, 53, 1, 1),
('/dashboard/conversations/messages', 53, 54, 1, 1),
('/dashboard/blocks', 54, 55, 1, 1),
('/dashboard/blocks/stacks', 55, 56, 1, 1),
('/dashboard/blocks/permissions', 56, 57, 1, 1),
('/dashboard/blocks/stacks/list', 57, 58, 1, 1),
('/dashboard/blocks/types', 58, 59, 1, 1),
('/dashboard/extend', 59, 60, 1, 1),
('/dashboard/extend/install', 60, 61, 1, 1),
('/dashboard/extend/update', 61, 62, 1, 1),
('/dashboard/extend/connect', 62, 63, 1, 1),
('/dashboard/extend/themes', 63, 64, 1, 1),
('/dashboard/extend/addons', 64, 65, 1, 1),
('/dashboard/system', 65, 66, 1, 1),
('/dashboard/system/basics', 66, 67, 1, 1),
('/dashboard/system/basics/name', 67, 68, 1, 1),
('/dashboard/system/basics/accessibility', 68, 69, 1, 1),
('/dashboard/system/basics/social', 69, 70, 1, 1),
('/dashboard/system/basics/icons', 70, 71, 1, 1),
('/dashboard/system/basics/editor', 71, 72, 1, 1),
('/dashboard/system/basics/multilingual', 72, 73, 1, 1),
('/dashboard/system/basics/multilingual/update', 73, 74, 1, 1),
('/dashboard/system/basics/timezone', 74, 75, 1, 1),
('/dashboard/system/basics/attributes', 75, 76, 1, 1),
('/dashboard/system/basics/reset_edit_mode', 76, 77, 1, 1),
('/dashboard/system/express', 77, 78, 1, 1),
('/dashboard/system/express/entities', 78, 79, 1, 1),
('/dashboard/system/express/entities/attributes', 79, 80, 1, 1),
('/dashboard/system/express/entities/associations', 80, 81, 1, 1),
('/dashboard/system/express/entities/forms', 81, 82, 1, 1),
('/dashboard/system/express/entities/customize_search', 82, 83, 1, 1),
('/dashboard/system/express/entities/order_entries', 83, 84, 1, 1),
('/dashboard/system/express/entries', 84, 85, 1, 1),
('/dashboard/system/multisite', 85, 86, 1, 1),
('/dashboard/system/multisite/sites', 86, 87, 1, 1),
('/dashboard/system/multisite/types', 87, 88, 1, 1),
('/dashboard/system/multisite/settings', 88, 89, 1, 1),
('/dashboard/system/multilingual', 89, 90, 1, 1),
('/dashboard/system/multilingual/setup', 90, 91, 1, 1),
('/dashboard/system/multilingual/copy', 91, 92, 1, 1),
('/dashboard/system/multilingual/page_report', 92, 93, 1, 1),
('/dashboard/system/multilingual/translate_interface', 93, 94, 1, 1),
('/dashboard/system/seo', 94, 95, 1, 1),
('/dashboard/system/seo/urls', 95, 96, 1, 1),
('/dashboard/system/seo/bulk', 96, 97, 1, 1),
('/dashboard/system/seo/codes', 97, 98, 1, 1),
('/dashboard/system/seo/excluded', 98, 99, 1, 1),
('/dashboard/system/seo/searchindex', 99, 100, 1, 1),
('/dashboard/system/files', 100, 101, 1, 1),
('/dashboard/system/files/filetypes', 101, 102, 1, 1),
('/dashboard/system/files/permissions', 102, 103, 1, 1),
('/dashboard/system/files/thumbnails', 103, 104, 1, 1),
('/dashboard/system/files/thumbnails/options', 104, 105, 1, 1),
('/dashboard/system/files/image_uploading', 105, 106, 1, 1),
('/dashboard/system/files/storage', 106, 107, 1, 1),
('/dashboard/system/files/export_options', 107, 108, 1, 1),
('/dashboard/system/optimization', 108, 109, 1, 1),
('/dashboard/system/optimization/cache', 109, 110, 1, 1),
('/dashboard/system/optimization/clearcache', 110, 111, 1, 1),
('/dashboard/system/optimization/jobs', 111, 112, 1, 1),
('/dashboard/system/permissions', 112, 113, 1, 1),
('/dashboard/system/permissions/site', 113, 114, 1, 1),
('/dashboard/system/permissions/tasks', 114, 115, 1, 1),
('/dashboard/system/permissions/users', 115, 116, 1, 1),
('/dashboard/system/permissions/advanced', 116, 117, 1, 1),
('/dashboard/system/permissions/workflows', 117, 118, 1, 1),
('/dashboard/system/permissions/captcha', 121, 122, 1, 1),
('/dashboard/system/permissions/antispam', 122, 123, 1, 1),
('/dashboard/system/permissions/maintenance', 123, 124, 1, 1),
('/dashboard/system/permissions/trusted_proxies', 124, 125, 1, 1),
('/dashboard/system/registration', 125, 126, 1, 1),
('/dashboard/system/registration/open', 126, 127, 1, 1),
('/dashboard/system/registration/postlogin', 127, 128, 1, 1),
('/dashboard/system/registration/profiles', 128, 129, 1, 1),
('/dashboard/system/registration/authentication', 129, 130, 1, 1),
('/dashboard/system/registration/global_password_reset', 130, 131, 1, 1),
('/dashboard/system/registration/deactivation', 132, 133, 1, 1),
('/dashboard/system/registration/automated_logout', 133, 134, 1, 1),
('/dashboard/system/registration/password_requirements', 134, 135, 1, 1),
('/dashboard/system/registration/session_options', 135, 136, 1, 1),
('/dashboard/system/mail', 136, 137, 1, 1),
('/dashboard/system/mail/method', 137, 138, 1, 1),
('/dashboard/system/mail/method/test', 138, 139, 1, 1),
('/dashboard/system/mail/importers', 139, 140, 1, 1),
('/dashboard/system/mail/addresses', 140, 141, 1, 1),
('/dashboard/system/calendar', 141, 142, 1, 1),
('/dashboard/system/calendar/settings', 142, 143, 1, 1),
('/dashboard/system/calendar/colors', 143, 144, 1, 1),
('/dashboard/system/calendar/permissions', 144, 145, 1, 1),
('/dashboard/system/calendar/import', 145, 146, 1, 1),
('/dashboard/system/conversations', 146, 147, 1, 1),
('/dashboard/system/conversations/settings', 147, 148, 1, 1),
('/dashboard/system/conversations/points', 148, 149, 1, 1),
('/dashboard/system/conversations/bannedwords', 149, 150, 1, 1),
('/dashboard/system/conversations/permissions', 150, 151, 1, 1),
('/dashboard/system/attributes', 151, 152, 1, 1),
('/dashboard/system/attributes/types', 152, 153, 1, 1),
('/dashboard/system/attributes/sets', 153, 154, 1, 1),
('/dashboard/system/attributes/topics', 154, 155, 1, 1),
('/dashboard/system/attributes/topics/add', 155, 156, 1, 1),
('/dashboard/system/environment', 156, 157, 1, 1),
('/dashboard/system/environment/info', 157, 158, 1, 1),
('/dashboard/system/environment/debug', 158, 159, 1, 1),
('/dashboard/system/environment/logging', 159, 160, 1, 1),
('/dashboard/system/environment/proxy', 160, 161, 1, 1),
('/dashboard/system/environment/entities', 161, 162, 1, 1),
('/dashboard/system/environment/database_charset', 162, 163, 1, 1),
('/dashboard/system/environment/geolocation', 163, 164, 1, 1),
('/dashboard/system/update', 164, 165, 1, 1),
('/dashboard/system/update/update', 165, 166, 1, 1),
('/dashboard/system/api', 166, 167, 1, 1),
('/dashboard/system/api/settings', 167, 168, 1, 1),
('/dashboard/system/api/integrations', 168, 169, 1, 1),
('/dashboard/welcome', 169, 170, 1, 1),
('/dashboard/welcome/me', 170, 171, 1, 1),
('/!stacks', 171, 172, 1, 1),
('/page_not_found', 172, 173, 1, 1),
('/!trash', 173, 174, 1, 1),
('/login', 174, 175, 1, 1),
('/register', 175, 176, 1, 1),
('/account', 176, 177, 1, 1),
('/account/edit_profile', 177, 178, 1, 1),
('/account/avatar', 178, 179, 1, 1),
('/account/messages', 179, 180, 1, 1),
('/page_forbidden', 180, 181, 1, 1),
('/download_file', 181, 182, 1, 1),
('/!drafts', 182, 183, 1, 1),
('/account/welcome', 183, 184, 1, 0),
('/dashboard/pages/containers', 194, 196, 1, 1),
('/dashboard/pages/containers/add', 195, 197, 1, 1),
('/dashboard/boards', 196, 198, 1, 1),
('/dashboard/boards/boards', 197, 199, 1, 1),
('/dashboard/boards/add', 198, 200, 1, 1),
('/dashboard/boards/details', 199, 201, 1, 1),
('/dashboard/boards/edit', 200, 202, 1, 1),
('/dashboard/boards/data_sources', 201, 203, 1, 1),
('/dashboard/boards/appearance', 202, 204, 1, 1),
('/dashboard/boards/weighting', 203, 205, 1, 1),
('/dashboard/boards/permissions', 204, 206, 1, 1),
('/dashboard/boards/instances', 205, 207, 1, 1),
('/dashboard/boards/instances/details', 206, 208, 1, 1),
('/dashboard/system/boards', 207, 209, 1, 1),
('/dashboard/system/boards/settings', 208, 210, 1, 1),
('/dashboard/system/boards/permissions', 209, 211, 1, 1),
('/dashboard/files/details', 210, 212, 1, 1),
('/dashboard/boards/designer', 211, 213, 1, 1),
('/dashboard/boards/designer/choose_items', 212, 214, 1, 1),
('/dashboard/boards/designer/customize_slot', 213, 215, 1, 1),
('/dashboard/boards/scheduler', 214, 216, 1, 1),
('/dashboard/boards/instances/rules', 215, 217, 1, 1),
('/dashboard/system/mail/logging', 216, 218, 1, 1),
('/dashboard/system/files/external_file_provider', 217, 219, 1, 1),
('/dashboard/system/files/image_editor', 218, 220, 1, 1),
('/dashboard/users/groups/bulk_user_assignment', 219, 221, 1, 1),
('/dashboard/users/group_types', 220, 222, 1, 1),
('/dashboard/system/automation', 221, 223, 1, 1),
('/dashboard/system/notification', 222, 224, 1, 1),
('/dashboard/system/automation/tasks', 223, 225, 1, 1),
('/dashboard/system/automation/activity', 224, 226, 1, 1),
('/dashboard/system/automation/schedule', 225, 227, 1, 1),
('/dashboard/system/automation/settings', 226, 228, 1, 1),
('/dashboard/system/notification/events', 227, 229, 1, 1),
('/dashboard/system/notification/alerts', 228, 230, 1, 1),
('/!themes', 229, 231, 1, 1),
('/dashboard/system/permissions/denylist', 230, 232, 1, 1),
('/dashboard/system/permissions/denylist/configure', 231, 233, 1, 1),
('/dashboard/system/permissions/denylist/range', 232, 234, 1, 1),
('/dashboard/system/environment/security', 233, 235, 1, 1),
('/dashboard/system/files/uploads', 234, 236, 1, 1),
('/dashboard/blocks/block_order', 240, 242, 1, 1),
('/dashboard/blocks/block_designer', 241, 243, 1, 1),
('/dashboard/blocks/block_designer/block_config', 242, 244, 1, 1),
('/dashboard/blocks/block_designer/settings', 243, 245, 1, 1),
('/!stacks/header-site-title', 244, 246, 1, 1),
('/!stacks/header-navigation', 245, 247, 1, 1),
('/!stacks/footer-legal', 246, 248, 1, 1),
('/!stacks/footer-navigation', 247, 249, 1, 1),
('/!stacks/footer-contact', 248, 250, 1, 1),
('/!stacks/header-navigation-th', 249, 251, 1, 1),
('/!stacks/header-search-th', 250, 252, 1, 1),
('/!stacks/header-navigation-otherth', 251, 253, 1, 1),
('/!stacks/footer-social-th', 252, 254, 1, 1),
('/!stacks/footer-navigation-th', 253, 255, 1, 1),
('/!stacks/footer-copyright-th', 254, 256, 1, 1),
('/257', 255, 257, 1, 1),
('/newsroom', 256, 258, 1, 1),
('/newsroom/global', 257, 259, 1, 1),
('/newsroom/asean', 258, 260, 1, 1),
('/about-aisin-group', 259, 261, 1, 1),
('/products-and-services', 260, 262, 1, 1),
('/sustainability', 261, 263, 1, 1),
('/careers', 262, 264, 1, 1),
('/contact', 263, 265, 1, 1),
('/about-aisin-group/global', 264, 266, 1, 1),
('/about-aisin-group/asean', 265, 267, 1, 1),
('/about-aisin-group/global/top-message', 266, 268, 1, 1),
('/about-aisin-group/global/corporate-principles', 267, 269, 1, 1),
('/about-aisin-group/global/global-network', 268, 270, 1, 1),
('/about-aisin-group/asean/regional-top-message', 269, 271, 1, 1),
('/about-aisin-group/asean/asean-network', 270, 272, 1, 1),
('/products-and-services/global', 271, 273, 1, 1),
('/products-and-services/asean', 272, 274, 1, 1),
('/products-and-services/global/mobility', 273, 275, 1, 1),
('/products-and-services/global/energy-solutions', 274, 276, 1, 1),
('/products-and-services/global/new-business-and-others', 275, 277, 1, 1),
('/products-and-services/asean/powertrain', 276, 278, 1, 1),
('/products-and-services/asean/driving-safety', 277, 279, 1, 1),
('/products-and-services/asean/body', 278, 280, 1, 1),
('/products-and-services/asean/electronic', 279, 281, 1, 1),
('/products-and-services/asean/aftermarket', 280, 282, 1, 1),
('/sustainability/global', 281, 283, 1, 1),
('/sustainability/asean', 282, 284, 1, 1),
('/sustainability/asean/carbon-neutrality', 283, 285, 1, 1),
('/sustainability/asean/sdgsesg-activities-and-report', 284, 286, 1, 1),
('/careers/values', 285, 287, 1, 1),
('/careers/vacancies', 286, 288, 1, 1),
('/newsroom/asean/eaxle-core-component-electric-vehicles-5-minute-read', 287, 290, 1, 1),
('/newsroom/asean/manufacturing-power-expedite-vehicle-electrification', 288, 291, 1, 1),
('/newsroom/asean/aisins-central-role-vehicle-electrification', 289, 292, 1, 1),
('/newsroom/asean/test-ride-event-aisins-new-electrification-technologies-demonstrates-how-ultra-compact-eaxle-revolutionizes-vehicles', 290, 293, 1, 1),
('/newsroom/asean/history-aisins-advanced-technology-evolving-along-toyota-crown', 291, 294, 1, 1),
('/newsroom/asean/stopping-just-start-what-these-brakes-can-do', 292, 295, 1, 1),
('/terms-use', 293, 296, 1, 1),
('/privacy-policy', 294, 297, 1, 1),
('/social-media-policy', 295, 298, 1, 1),
('/site-map', 296, 299, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionAssignments`
--

CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PagePermissionAssignments`
--

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 80),
(2, 1, 61),
(173, 1, 60),
(175, 1, 57),
(176, 1, 58),
(181, 1, 59),
(183, 1, 62),
(1, 2, 81),
(183, 2, 63),
(1, 3, 82),
(183, 3, 64),
(1, 4, 83),
(183, 4, 65),
(1, 5, 84),
(183, 5, 66),
(1, 6, 85),
(183, 6, 67),
(1, 7, 86),
(183, 7, 68),
(1, 8, 88),
(183, 8, 70),
(1, 9, 89),
(183, 9, 71),
(1, 10, 90),
(183, 10, 72),
(1, 11, 91),
(183, 11, 73),
(1, 12, 92),
(183, 12, 74),
(1, 13, 93),
(183, 13, 75),
(1, 14, 94),
(183, 14, 76),
(1, 15, 95),
(183, 15, 77),
(1, 16, 96),
(183, 16, 78),
(1, 17, 97),
(183, 17, 79),
(1, 18, 87),
(183, 18, 69);

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessList`
--

CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pages`
--

CREATE TABLE `Pages` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteTreeID` int(10) UNSIGNED DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) UNSIGNED DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8mb4_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsDraft` tinyint(1) NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Pages`
--

INSERT INTO `Pages` (`cID`, `siteTreeID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cIsDraft`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 23, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 1, 2, 0, 0, 0, -1, '0', 0, 1),
(4, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 3, 0, 0, 0, -1, '0', 0, 1),
(5, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 3, 0, 0, 0, -1, '0', 0, 1),
(6, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 3, 0, 0, 0, -1, '0', 0, 1),
(7, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 5, 2, 2, 0, 0, 0, -1, '0', 0, 1),
(8, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 7, 0, 0, 0, -1, '0', 0, 1),
(9, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 7, 0, 0, 0, -1, '0', 0, 1),
(10, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 7, 0, 0, 0, -1, '0', 0, 1),
(11, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 7, 0, 0, 0, -1, '0', 0, 1),
(12, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 7, 3, 2, 0, 0, 0, -1, '0', 0, 1),
(13, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 12, 0, 0, 0, -1, '0', 0, 1),
(14, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 3, 1, 12, 0, 0, 0, -1, '0', 0, 1),
(15, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups/message.php', 0, NULL, 0, 1, 0, 0, 14, 0, 0, 0, -1, '0', 0, 1),
(16, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 12, 0, 0, 0, -1, '0', 0, 1),
(17, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 12, 0, 0, 0, -1, '0', 0, 1),
(18, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 12, 0, 0, 0, -1, '0', 0, 1),
(19, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups/bulkupdate.php', 0, NULL, 0, 1, 0, 1, 14, 0, 0, 0, -1, '0', 0, 1),
(20, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 12, 0, 0, 0, -1, '0', 0, 1),
(24, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/express/view.php', 0, NULL, 0, 1, 1, 4, 2, 0, 0, 0, -1, '0', 0, 1),
(25, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/express/entries.php', 0, NULL, 0, 1, 0, 0, 24, 0, 0, 0, -1, '0', 0, 1),
(26, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 4, 5, 2, 0, 0, 0, -1, '0', 0, 1),
(27, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 1, 0, 26, 0, 0, 0, -1, '0', 0, 1),
(28, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms/legacy.php', 0, NULL, 0, 1, 0, 0, 27, 0, 0, 0, -1, '0', 0, 1),
(29, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 1, 26, 0, 0, 0, -1, '0', 0, 1),
(30, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 2, 26, 0, 0, 0, -1, '0', 0, 1),
(31, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/page_changes.php', 0, NULL, 0, 1, 0, 3, 26, 0, 0, 0, -1, '0', 0, 1),
(32, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 7, 6, 2, 0, 0, 0, -1, '0', 0, 1),
(33, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 1, 0, 32, 0, 0, 0, -1, '0', 0, 1),
(34, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 0, 33, 0, 0, 0, -1, '0', 0, 1),
(35, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 6, 1, 32, 0, 0, 0, -1, '0', 0, 1),
(36, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/organize.php', 0, NULL, 0, 1, 0, 0, 35, 0, 0, 0, -1, '0', 0, 1),
(37, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 1, 35, 0, 0, 0, -1, '0', 0, 1),
(38, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/form.php', 0, NULL, 0, 1, 0, 2, 35, 0, 0, 0, -1, '0', 0, 1),
(39, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/output.php', 0, NULL, 0, 1, 0, 3, 35, 0, 0, 0, -1, '0', 0, 1),
(40, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/attributes.php', 0, NULL, 0, 1, 0, 4, 35, 0, 0, 0, -1, '0', 0, 1),
(41, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/permissions.php', 0, NULL, 0, 1, 0, 5, 35, 0, 0, 0, -1, '0', 0, 1),
(42, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/view.php', 0, NULL, 0, 1, 1, 2, 32, 0, 0, 0, -1, '0', 0, 1),
(43, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/add.php', 0, NULL, 0, 1, 0, 0, 42, 0, 0, 0, -1, '0', 0, 1),
(44, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 3, 32, 0, 0, 0, -1, '0', 0, 1),
(45, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 4, 32, 0, 0, 0, -1, '0', 0, 1),
(46, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/feeds.php', 0, NULL, 0, 1, 0, 5, 32, 0, 0, 0, -1, '0', 0, 1),
(47, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/view.php', 0, NULL, 0, 1, 5, 7, 2, 0, 0, 0, -1, '0', 0, 1),
(48, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/events.php', 0, NULL, 0, 1, 0, 0, 47, 0, 0, 0, -1, '0', 0, 1),
(49, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/event_list.php', 0, NULL, 0, 1, 0, 1, 47, 0, 0, 0, -1, '0', 0, 1),
(50, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/add.php', 0, NULL, 0, 1, 0, 2, 47, 0, 0, 0, -1, '0', 0, 1),
(51, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/permissions.php', 0, NULL, 0, 1, 0, 3, 47, 0, 0, 0, -1, '0', 0, 1),
(52, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/attributes.php', 0, NULL, 0, 1, 0, 4, 47, 0, 0, 0, -1, '0', 0, 1),
(53, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/view.php', 0, NULL, 0, 1, 1, 8, 2, 0, 0, 0, -1, '0', 0, 1),
(54, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/messages.php', 0, NULL, 0, 1, 0, 0, 53, 0, 0, 0, -1, '0', 0, 1),
(55, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 5, 9, 2, 0, 0, 0, -1, '0', 0, 1),
(56, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 55, 0, 0, 0, -1, '0', 0, 1),
(57, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 55, 0, 0, 0, -1, '0', 0, 1),
(58, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 56, 0, 0, 0, -1, '0', 0, 1),
(59, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 55, 0, 0, 0, -1, '0', 0, 1),
(60, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 10, 2, 0, 0, 0, -1, '0', 0, 1),
(61, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 60, 0, 0, 0, -1, '0', 0, 1),
(62, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 60, 0, 0, 0, -1, '0', 0, 1),
(63, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 60, 0, 0, 0, -1, '0', 0, 1),
(64, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 60, 0, 0, 0, -1, '0', 0, 1),
(65, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/addons.php', 0, NULL, 0, 1, 0, 4, 60, 0, 0, 0, -1, '0', 0, 1),
(66, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 19, 11, 2, 0, 0, 0, -1, '0', 0, 1),
(67, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 9, 0, 66, 0, 0, 0, -1, '0', 0, 1),
(68, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/name.php', 0, NULL, 0, 1, 0, 0, 67, 0, 0, 0, -1, '0', 0, 1),
(69, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/accessibility.php', 0, NULL, 0, 1, 0, 1, 67, 0, 0, 0, -1, '0', 0, 1),
(70, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/social.php', 0, NULL, 0, 1, 0, 2, 67, 0, 0, 0, -1, '0', 0, 1),
(71, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 3, 67, 0, 0, 0, -1, '0', 0, 1),
(72, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 4, 67, 0, 0, 0, -1, '0', 0, 1),
(73, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 1, 5, 67, 0, 0, 0, -1, '0', 0, 1),
(74, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/update.php', 0, NULL, 0, 1, 0, 0, 73, 0, 0, 0, -1, '0', 0, 1),
(75, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 6, 67, 0, 0, 0, -1, '0', 0, 1),
(76, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/attributes.php', 0, NULL, 0, 1, 0, 7, 67, 0, 0, 0, -1, '0', 0, 1),
(77, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/reset_edit_mode.php', 0, NULL, 0, 1, 0, 8, 67, 0, 0, 0, -1, '0', 0, 1),
(78, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/view.php', 0, NULL, 0, 1, 2, 1, 66, 0, 0, 0, -1, '0', 0, 1),
(79, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities.php', 0, NULL, 0, 1, 5, 0, 78, 0, 0, 0, -1, '0', 0, 1),
(80, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/attributes.php', 0, NULL, 0, 1, 0, 0, 79, 0, 0, 0, -1, '0', 0, 1),
(81, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/associations.php', 0, NULL, 0, 1, 0, 1, 79, 0, 0, 0, -1, '0', 0, 1),
(82, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/forms.php', 0, NULL, 0, 1, 0, 2, 79, 0, 0, 0, -1, '0', 0, 1),
(83, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/customize_search.php', 0, NULL, 0, 1, 0, 3, 79, 0, 0, 0, -1, '0', 0, 1),
(84, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/order_entries.php', 0, NULL, 0, 1, 0, 4, 79, 0, 0, 0, -1, '0', 0, 1),
(85, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entries.php', 0, NULL, 0, 1, 0, 1, 78, 0, 0, 0, -1, '0', 0, 1),
(86, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multisite/view.php', 0, NULL, 0, 1, 3, 2, 66, 0, 0, 0, -1, '0', 0, 1),
(87, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multisite/sites/view.php', 0, NULL, 0, 1, 0, 0, 86, 0, 0, 0, -1, '0', 0, 1),
(88, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multisite/types/view.php', 0, NULL, 0, 1, 0, 1, 86, 0, 0, 0, -1, '0', 0, 1),
(89, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multisite/settings.php', 0, NULL, 0, 1, 0, 2, 86, 0, 0, 0, -1, '0', 0, 1),
(90, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/view.php', 0, NULL, 0, 1, 4, 3, 66, 0, 0, 0, -1, '0', 0, 1),
(91, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/setup.php', 0, NULL, 0, 1, 0, 0, 90, 0, 0, 0, -1, '0', 0, 1),
(92, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/copy.php', 0, NULL, 0, 1, 0, 1, 90, 0, 0, 0, -1, '0', 0, 1),
(93, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/page_report.php', 0, NULL, 0, 1, 0, 2, 90, 0, 0, 0, -1, '0', 0, 1),
(94, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/translate_interface.php', 0, NULL, 0, 1, 0, 3, 90, 0, 0, 0, -1, '0', 0, 1),
(95, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 5, 4, 66, 0, 0, 0, -1, '0', 0, 1),
(96, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 95, 0, 0, 0, -1, '0', 0, 1),
(97, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk.php', 0, NULL, 0, 1, 0, 1, 95, 0, 0, 0, -1, '0', 0, 1),
(98, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/codes.php', 0, NULL, 0, 1, 0, 2, 95, 0, 0, 0, -1, '0', 0, 1),
(99, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 95, 0, 0, 0, -1, '0', 0, 1),
(100, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/searchindex.php', 0, NULL, 0, 1, 0, 4, 95, 0, 0, 0, -1, '0', 0, 1),
(101, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/view.php', 0, NULL, 0, 1, 9, 5, 66, 0, 0, 0, -1, '0', 0, 1),
(102, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/filetypes.php', 0, NULL, 0, 1, 0, 0, 101, 0, 0, 0, -1, '0', 0, 1),
(103, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/permissions.php', 0, NULL, 0, 1, 0, 1, 101, 0, 0, 0, -1, '0', 0, 1),
(104, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/thumbnails.php', 0, NULL, 0, 1, 1, 2, 101, 0, 0, 0, -1, '0', 0, 1),
(105, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/thumbnails/options.php', 0, NULL, 0, 1, 0, 0, 104, 0, 0, 0, -1, '0', 0, 1),
(106, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/image_uploading.php', 0, NULL, 0, 1, 0, 3, 101, 0, 0, 0, -1, '0', 0, 1),
(107, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/storage.php', 0, NULL, 0, 1, 0, 4, 101, 0, 0, 0, -1, '0', 0, 1),
(108, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/export_options.php', 0, NULL, 0, 1, 0, 5, 101, 0, 0, 0, -1, '0', 0, 1),
(109, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 3, 6, 66, 0, 0, 0, -1, '0', 0, 1),
(110, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 109, 0, 0, 0, -1, '0', 0, 1),
(111, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clearcache.php', 0, NULL, 0, 1, 0, 1, 109, 0, 0, 0, -1, '0', 0, 1),
(112, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 109, 0, 0, 0, -1, '0', 0, 1),
(113, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 10, 7, 66, 0, 0, 0, -1, '0', 0, 1),
(114, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 113, 0, 0, 0, -1, '0', 0, 1),
(115, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 1, 113, 0, 0, 0, -1, '0', 0, 1),
(116, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 2, 113, 0, 0, 0, -1, '0', 0, 1),
(117, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 3, 113, 0, 0, 0, -1, '0', 0, 1),
(118, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/workflows.php', 0, NULL, 0, 1, 0, 4, 113, 0, 0, 0, -1, '0', 0, 1),
(122, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 5, 113, 0, 0, 0, -1, '0', 0, 1),
(123, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 6, 113, 0, 0, 0, -1, '0', 0, 1),
(124, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance.php', 0, NULL, 0, 1, 0, 7, 113, 0, 0, 0, -1, '0', 0, 1),
(125, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/trusted_proxies.php', 0, NULL, 0, 1, 0, 8, 113, 0, 0, 0, -1, '0', 0, 1),
(126, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 9, 8, 66, 0, 0, 0, -1, '0', 0, 1),
(127, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/open.php', 0, NULL, 0, 1, 0, 0, 126, 0, 0, 0, -1, '0', 0, 1),
(128, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 1, 126, 0, 0, 0, -1, '0', 0, 1),
(129, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 2, 126, 0, 0, 0, -1, '0', 0, 1),
(130, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/authentication.php', 0, NULL, 0, 1, 0, 3, 126, 0, 0, 0, -1, '0', 0, 1),
(131, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/global_password_reset.php', 0, NULL, 0, 1, 0, 4, 126, 0, 0, 0, -1, '0', 0, 1),
(133, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/deactivation.php', 0, NULL, 0, 1, 0, 6, 126, 0, 0, 0, -1, '0', 0, 1),
(134, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/automated_logout.php', 0, NULL, 0, 1, 0, 7, 126, 0, 0, 0, -1, '0', 0, 1),
(135, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/password_requirements.php', 0, NULL, 0, 1, 0, 8, 126, 0, 0, 0, -1, '0', 0, 1),
(136, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/session_options.php', 0, NULL, 0, 1, 0, 9, 126, 0, 0, 0, -1, '0', 0, 1),
(137, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 4, 9, 66, 0, 0, 0, -1, '0', 0, 1),
(138, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 137, 0, 0, 0, -1, '0', 0, 1),
(139, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test.php', 0, NULL, 0, 1, 0, 0, 138, 0, 0, 0, -1, '0', 0, 1),
(140, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 137, 0, 0, 0, -1, '0', 0, 1),
(141, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/addresses.php', 0, NULL, 0, 1, 0, 2, 137, 0, 0, 0, -1, '0', 0, 1),
(142, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/view.php', 0, NULL, 0, 1, 4, 10, 66, 0, 0, 0, -1, '0', 0, 1),
(143, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/settings.php', 0, NULL, 0, 1, 0, 0, 142, 0, 0, 0, -1, '0', 0, 1),
(144, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/colors.php', 0, NULL, 0, 1, 0, 1, 142, 0, 0, 0, -1, '0', 0, 1),
(145, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/permissions.php', 0, NULL, 0, 1, 0, 2, 142, 0, 0, 0, -1, '0', 0, 1),
(146, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/import.php', 0, NULL, 0, 1, 0, 3, 142, 0, 0, 0, -1, '0', 0, 1),
(147, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/view.php', 0, NULL, 0, 1, 4, 11, 66, 0, 0, 0, -1, '0', 0, 1),
(148, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/settings.php', 0, NULL, 0, 1, 0, 0, 147, 0, 0, 0, -1, '0', 0, 1),
(149, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/points.php', 0, NULL, 0, 1, 0, 1, 147, 0, 0, 0, -1, '0', 0, 1),
(150, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/bannedwords.php', 0, NULL, 0, 1, 0, 2, 147, 0, 0, 0, -1, '0', 0, 1),
(151, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/permissions.php', 0, NULL, 0, 1, 0, 3, 147, 0, 0, 0, -1, '0', 0, 1),
(152, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 3, 12, 66, 0, 0, 0, -1, '0', 0, 1),
(153, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 0, 152, 0, 0, 0, -1, '0', 0, 1),
(154, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 1, 152, 0, 0, 0, -1, '0', 0, 1),
(155, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/view.php', 0, NULL, 0, 1, 1, 2, 152, 0, 0, 0, -1, '0', 0, 1),
(156, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/add.php', 0, NULL, 0, 1, 0, 0, 155, 0, 0, 0, -1, '0', 0, 1),
(157, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 8, 13, 66, 0, 0, 0, -1, '0', 0, 1),
(158, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 157, 0, 0, 0, -1, '0', 0, 1),
(159, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 157, 0, 0, 0, -1, '0', 0, 1),
(160, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 157, 0, 0, 0, -1, '0', 0, 1),
(161, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 3, 157, 0, 0, 0, -1, '0', 0, 1),
(162, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/entities.php', 0, NULL, 0, 1, 0, 4, 157, 0, 0, 0, -1, '0', 0, 1),
(163, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/database_charset.php', 0, NULL, 0, 1, 0, 5, 157, 0, 0, 0, -1, '0', 0, 1),
(164, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/geolocation.php', 0, NULL, 0, 1, 0, 6, 157, 0, 0, 0, -1, '0', 0, 1),
(165, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/update/view.php', 0, NULL, 0, 1, 1, 14, 66, 0, 0, 0, -1, '0', 0, 1),
(166, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/update/update.php', 0, NULL, 0, 1, 0, 0, 165, 0, 0, 0, -1, '0', 0, 1),
(167, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/api/view.php', 0, NULL, 0, 1, 2, 15, 66, 0, 0, 0, -1, '0', 0, 1),
(168, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/api/settings.php', 0, NULL, 0, 1, 0, 0, 167, 0, 0, 0, -1, '0', 0, 1),
(169, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/api/integrations.php', 0, NULL, 0, 1, 0, 1, 167, 0, 0, 0, -1, '0', 0, 1),
(170, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/welcome.php', 0, NULL, 0, 1, 1, 0, 2, 0, 0, 0, -1, '0', 0, 1),
(171, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 170, 0, 0, 0, -1, '0', 0, 1),
(172, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 11, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(173, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 173, 'OVERRIDE', '/page_not_found.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(174, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(175, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 175, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(176, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 176, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(177, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(178, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/edit_profile.php', 0, NULL, 0, 1, 0, 0, 177, 0, 0, 0, -1, '0', 0, 1),
(179, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/avatar.php', 0, NULL, 0, 1, 0, 1, 177, 0, 0, 0, -1, '0', 0, 1),
(180, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages.php', 0, NULL, 0, 1, 0, 2, 177, 0, 0, 0, -1, '0', 0, 1),
(181, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 181, 'OVERRIDE', '/page_forbidden.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(182, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(183, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 183, 'OVERRIDE', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(184, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/desktop.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(185, 1, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 185, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(196, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/containers/view.php', 0, NULL, 0, 1, 1, 6, 32, 0, 0, 0, -1, '0', 0, 1),
(197, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/containers/add.php', 0, NULL, 0, 1, 0, 0, 196, 0, 0, 0, -1, '0', 0, 1),
(198, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards.php', 0, NULL, 0, 1, 11, 12, 2, 0, 0, 0, -1, '0', 0, 1),
(199, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/boards.php', 0, NULL, 0, 1, 0, 0, 198, 0, 0, 0, -1, '0', 0, 1),
(200, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/add.php', 0, NULL, 0, 1, 0, 1, 198, 0, 0, 0, -1, '0', 0, 1),
(201, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/details.php', 0, NULL, 0, 1, 0, 2, 198, 0, 0, 0, -1, '0', 0, 1),
(202, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/edit.php', 0, NULL, 0, 1, 0, 3, 198, 0, 0, 0, -1, '0', 0, 1),
(203, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/data_sources.php', 0, NULL, 0, 1, 0, 4, 198, 0, 0, 0, -1, '0', 0, 1),
(204, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/appearance.php', 0, NULL, 0, 1, 0, 5, 198, 0, 0, 0, -1, '0', 0, 1),
(205, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/weighting.php', 0, NULL, 0, 1, 0, 6, 198, 0, 0, 0, -1, '0', 0, 1),
(206, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/permissions.php', 0, NULL, 0, 1, 0, 7, 198, 0, 0, 0, -1, '0', 0, 1),
(207, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/instances.php', 0, NULL, 0, 1, 2, 8, 198, 0, 0, 0, -1, '0', 0, 1),
(208, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/instances/details.php', 0, NULL, 0, 1, 0, 0, 207, 0, 0, 0, -1, '0', 0, 1),
(209, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/boards/view.php', 0, NULL, 0, 1, 2, 16, 66, 0, 0, 0, -1, '0', 0, 1),
(210, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/boards/settings.php', 0, NULL, 0, 1, 0, 0, 209, 0, 0, 0, -1, '0', 0, 1),
(211, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/boards/permissions.php', 0, NULL, 0, 1, 0, 1, 209, 0, 0, 0, -1, '0', 0, 1),
(212, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/details.php', 0, NULL, 0, 1, 0, 4, 7, 0, 0, 0, -1, '0', 0, 1),
(213, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/designer.php', 0, NULL, 0, 1, 2, 9, 198, 0, 0, 0, -1, '0', 0, 1),
(214, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/designer/choose_items.php', 0, NULL, 0, 1, 0, 0, 213, 0, 0, 0, -1, '0', 0, 1),
(215, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/designer/customize_slot.php', 0, NULL, 0, 1, 0, 1, 213, 0, 0, 0, -1, '0', 0, 1),
(216, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/scheduler.php', 0, NULL, 0, 1, 0, 10, 198, 0, 0, 0, -1, '0', 0, 1),
(217, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/boards/instances/rules.php', 0, NULL, 0, 1, 0, 1, 207, 0, 0, 0, -1, '0', 0, 1),
(218, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/logging.php', 0, NULL, 0, 1, 0, 3, 137, 0, 0, 0, -1, '0', 0, 1),
(219, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/external_file_provider.php', 0, NULL, 0, 1, 0, 6, 101, 0, 0, 0, -1, '0', 0, 1),
(220, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/image_editor.php', 0, NULL, 0, 1, 0, 7, 101, 0, 0, 0, -1, '0', 0, 1),
(221, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups/bulk_user_assignment.php', 0, NULL, 0, 1, 0, 2, 14, 0, 0, 0, -1, '0', 0, 1),
(222, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_types.php', 0, NULL, 0, 1, 0, 7, 12, 0, 0, 0, -1, '0', 0, 1),
(223, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/automation/view.php', 0, NULL, 0, 1, 4, 17, 66, 0, 0, 0, -1, '0', 0, 1),
(224, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/notification/view.php', 0, NULL, 0, 1, 2, 18, 66, 0, 0, 0, -1, '0', 0, 1),
(225, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/automation/tasks.php', 0, NULL, 0, 1, 0, 0, 223, 0, 0, 0, -1, '0', 0, 1),
(226, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/automation/activity.php', 0, NULL, 0, 1, 0, 1, 223, 0, 0, 0, -1, '0', 0, 1),
(227, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/automation/schedule.php', 0, NULL, 0, 1, 0, 2, 223, 0, 0, 0, -1, '0', 0, 1),
(228, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/automation/settings.php', 0, NULL, 0, 1, 0, 3, 223, 0, 0, 0, -1, '0', 0, 1),
(229, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/notification/events.php', 0, NULL, 0, 1, 0, 0, 224, 0, 0, 0, -1, '0', 0, 1),
(230, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/notification/alerts.php', 0, NULL, 0, 1, 0, 1, 224, 0, 0, 0, -1, '0', 0, 1),
(231, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!themes/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(232, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/denylist.php', 0, NULL, 0, 1, 2, 9, 113, 0, 0, 0, -1, '0', 0, 1),
(233, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/denylist/configure.php', 0, NULL, 0, 1, 0, 0, 232, 0, 0, 0, -1, '0', 0, 1),
(234, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/denylist/range.php', 0, NULL, 0, 1, 0, 1, 232, 0, 0, 0, -1, '0', 0, 1),
(235, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/security.php', 0, NULL, 0, 1, 0, 7, 157, 0, 0, 0, -1, '0', 0, 1),
(236, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/uploads.php', 0, NULL, 0, 1, 0, 8, 101, 0, 0, 0, -1, '0', 0, 1),
(242, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/block_order.php', 0, NULL, 0, 1, 0, 3, 55, 1, 0, 0, -1, '0', 0, 1),
(243, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/block_designer.php', 0, NULL, 0, 1, 2, 4, 55, 1, 0, 0, -1, '0', 0, 1),
(244, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/block_designer/block_config.php', 0, NULL, 0, 1, 0, 0, 243, 1, 0, 0, -1, '0', 0, 1),
(245, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/block_designer/settings.php', 0, NULL, 0, 1, 0, 1, 243, 1, 0, 0, -1, '0', 0, 1),
(246, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 172, 0, 0, 0, -1, '0', 0, 1),
(247, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 172, 0, 0, 0, -1, '0', 0, 1),
(248, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 172, 0, 0, 0, -1, '0', 0, 1),
(249, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 172, 0, 0, 0, -1, '0', 0, 1),
(250, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 172, 0, 0, 0, -1, '0', 0, 1),
(251, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 172, 0, 0, 0, -1, '0', 0, 1),
(252, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 172, 0, 0, 0, -1, '0', 0, 1),
(253, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 172, 0, 0, 0, -1, '0', 0, 1),
(254, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 172, 0, 0, 0, -1, '0', 0, 1),
(255, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 9, 172, 0, 0, 0, -1, '0', 0, 1),
(256, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 10, 172, 0, 0, 0, -1, '0', 0, 1),
(257, 1, 8, 1, 1, 0, NULL, NULL, NULL, 1, 257, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(258, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 1, 1, 0, 1, 0, -1, '0', 0, 0),
(259, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 258, 0, 258, 0, -1, '0', 0, 0),
(260, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 6, 2, 258, 0, 258, 0, -1, '0', 0, 0),
(261, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 2, 1, 0, 1, 0, -1, '0', 0, 0),
(262, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 3, 1, 0, 1, 0, -1, '0', 0, 0),
(263, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 4, 1, 0, 1, 0, -1, '0', 0, 0),
(264, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 5, 1, 0, 1, 0, -1, '0', 0, 0),
(265, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 1, 0, 1, 0, -1, '0', 0, 0),
(266, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 3, 1, 261, 0, 261, 0, -1, '0', 0, 0),
(267, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 2, 261, 0, 261, 0, -1, '0', 0, 0),
(268, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 266, 0, 266, 0, -1, '0', 0, 0),
(269, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 266, 0, 266, 0, -1, '0', 0, 0),
(270, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 266, 0, 266, 0, -1, '0', 0, 0),
(271, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 267, 0, 267, 0, -1, '0', 0, 0),
(272, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 267, 0, 267, 0, -1, '0', 0, 0),
(273, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 3, 1, 262, 0, 262, 0, -1, '0', 0, 0),
(274, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 5, 2, 262, 0, 262, 0, -1, '0', 0, 0),
(275, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 273, 0, 273, 0, -1, '0', 0, 0),
(276, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 273, 0, 273, 0, -1, '0', 0, 0),
(277, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 273, 0, 273, 0, -1, '0', 0, 0),
(278, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 274, 0, 274, 0, -1, '0', 0, 0),
(279, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 274, 0, 274, 0, -1, '0', 0, 0),
(280, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 274, 0, 274, 0, -1, '0', 0, 0),
(281, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 274, 0, 274, 0, -1, '0', 0, 0),
(282, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 274, 0, 274, 0, -1, '0', 0, 0),
(283, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 263, 0, 263, 0, -1, '0', 0, 0),
(284, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 2, 263, 0, 263, 0, -1, '0', 0, 0),
(285, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 284, 0, 284, 0, -1, '0', 0, 0),
(286, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 284, 0, 284, 0, -1, '0', 0, 0),
(287, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 264, 0, 264, 0, -1, '0', 0, 0),
(288, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 264, 0, 264, 0, -1, '0', 0, 0),
(289, 1, 8, 1, NULL, 0, NULL, NULL, NULL, 1, 289, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(290, 1, 8, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 260, 0, 260, 0, -1, '0', 0, 0),
(291, 1, 8, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 260, 0, 260, 0, -1, '0', 0, 0),
(292, 1, 8, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 260, 0, 260, 0, -1, '0', 0, 0),
(293, 1, 8, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 260, 0, 260, 0, -1, '0', 0, 0),
(294, 1, 8, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 260, 0, 260, 0, -1, '0', 0, 0),
(295, 1, 8, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 260, 0, 260, 0, -1, '0', 0, 0),
(296, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 1, 0, 1, 0, -1, '0', 0, 0),
(297, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 1, 0, 1, 0, -1, '0', 0, 0),
(298, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 9, 1, 0, 1, 0, -1, '0', 0, 0),
(299, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 10, 1, 0, 1, 0, -1, '0', 0, 0),
(300, 1, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 300, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageSearchIndex`
--

CREATE TABLE `PageSearchIndex` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `cName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8mb4_unicode_ci,
  `cPath` text COLLATE utf8mb4_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageSearchIndex`
--

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(1, 'About Aisin Group  The aim of these principles is to continuously provide new value to our colleagues, our customers and society and to build a sustainable society. \r\n Join our team to make your dreams come true.  With rapid changes to the automotive industry, increasing demand for skilled trades, and a highly technical and automated future ahead of us, there has never been a better time to work at AISIN Group! \r\n Career\r\n Contact\r\n   We can help. Our team of experts is on hand to answer your questions. \r\n  Inspiring “movement”, creating tomorrow\r\n  Bringing further joy and ease to the mobility experience for all.\r\n   Fifth Largest  TIER ONE SUPPLIER OF AUTOMOTIVE COMPONENTS AND SYSTEMS IN THE WORLD \r\n 14000  TEAM MEMBERS \r\n 36  MANUFACTURING PLANTS, SALES CENTERS, LOGISTICS OPERATIONS, AND R&D FACILITIES \r\n 120000  TEAM MEMBERS AROUND THE WORLD \r\n Products and Services  With specialized expertise in a wide range of business fields, we are able to meet a wide range of needs in areas that range from our core mobility business to fields such as energy. \r\n Sustainability  For a society where everyone can live in harmony with nature. \r\n ', 'Home', '', NULL, '2023-03-03 10:05:00', '2023-03-13 11:45:18', NULL, 0),
(171, '', 'Waiting for Me', NULL, '/dashboard/welcome/me', '2023-03-03 10:05:45', '2023-03-03 10:05:51', NULL, 0),
(251, '', 'Header: Navigation TH', NULL, '/!stacks/header-navigation-th', '2023-03-03 11:11:04', '2023-03-07 07:18:37', NULL, 0),
(252, '', 'Header: Search TH', NULL, '/!stacks/header-search-th', '2023-03-03 11:11:04', '2023-03-07 07:21:54', NULL, 0),
(253, '', 'Header: Navigation OtherTH', NULL, '/!stacks/header-navigation-otherth', '2023-03-03 11:11:05', '2023-03-09 05:42:37', NULL, 0),
(254, ' Official SNS \r\n ', 'Footer: Social TH', NULL, '/!stacks/footer-social-th', '2023-03-03 11:11:05', '2023-03-07 08:08:30', NULL, 0),
(255, '', 'Footer: Navigation TH', NULL, '/!stacks/footer-navigation-th', '2023-03-03 11:11:05', '2023-03-09 05:42:37', NULL, 0),
(256, ' Copyright AISIN CORPORATION \r\n ', 'Footer: Copyright TH', NULL, '/!stacks/footer-copyright-th', '2023-03-03 11:11:05', '2023-03-07 07:39:10', NULL, 0),
(258, '', 'Newsroom', '', '/newsroom', '2023-03-07 06:49:33', '2023-03-07 06:49:41', NULL, 0),
(259, '', 'Global', '', '/newsroom/global', '2023-03-07 06:51:37', '2023-03-07 07:06:15', NULL, 0),
(260, '', 'ASEAN', '', '/newsroom/asean', '2023-03-07 06:51:46', '2023-03-07 07:06:15', NULL, 0),
(261, '', 'About Aisin Group', '', '/about-aisin-group', '2023-03-07 06:52:01', '2023-03-07 07:06:15', NULL, 0),
(262, '', 'Products and Services', '', '/products-and-services', '2023-03-07 06:52:14', '2023-03-07 07:06:15', NULL, 0),
(263, '', 'Sustainability', '', '/sustainability', '2023-03-07 06:52:50', '2023-03-07 07:06:15', NULL, 0),
(264, '', 'Careers', '', '/careers', '2023-03-07 06:53:06', '2023-03-07 07:06:18', NULL, 0),
(265, '', 'Contact', '', '/contact', '2023-03-07 06:53:16', '2023-03-07 07:06:18', NULL, 0),
(266, '', 'Global', '', '/about-aisin-group/global', '2023-03-07 06:53:25', '2023-03-07 07:06:18', NULL, 0),
(267, '', 'ASEAN', '', '/about-aisin-group/asean', '2023-03-07 06:53:33', '2023-03-07 07:06:18', NULL, 0),
(268, '', 'Top Message', '', '/about-aisin-group/global/top-message', '2023-03-07 06:53:42', '2023-03-07 07:06:18', NULL, 0),
(269, '', 'Corporate Principles', '', '/about-aisin-group/global/corporate-principles', '2023-03-07 06:53:50', '2023-03-07 07:06:21', NULL, 0),
(270, '', 'Global Network', '', '/about-aisin-group/global/global-network', '2023-03-07 06:53:58', '2023-03-07 07:06:21', NULL, 0),
(271, '', 'Regional Top Message', '', '/about-aisin-group/asean/regional-top-message', '2023-03-07 06:54:11', '2023-03-07 07:06:21', NULL, 0),
(272, '', 'ASEAN Network', '', '/about-aisin-group/asean/asean-network', '2023-03-07 06:54:18', '2023-03-07 07:06:21', NULL, 0),
(273, '', 'Global', '', '/products-and-services/global', '2023-03-07 06:55:11', '2023-03-07 07:06:21', NULL, 0),
(274, '', 'ASEAN', '', '/products-and-services/asean', '2023-03-07 06:55:00', '2023-03-07 07:06:24', NULL, 0),
(275, '', 'Mobility', '', '/products-and-services/global/mobility', '2023-03-07 06:55:33', '2023-03-07 07:06:24', NULL, 0),
(276, '', 'Energy Solutions', '', '/products-and-services/global/energy-solutions', '2023-03-07 06:55:40', '2023-03-07 07:06:24', NULL, 0),
(277, '', 'New Business and Others', '', '/products-and-services/global/new-business-and-others', '2023-03-07 06:55:48', '2023-03-07 07:06:24', NULL, 0),
(278, '', 'Powertrain', '', '/products-and-services/asean/powertrain', '2023-03-07 06:56:05', '2023-03-07 07:06:26', NULL, 0),
(279, '', 'Driving Safety', '', '/products-and-services/asean/driving-safety', '2023-03-07 06:56:12', '2023-03-07 07:06:26', NULL, 0),
(280, '', 'Body', '', '/products-and-services/asean/body', '2023-03-07 06:56:19', '2023-03-07 07:06:26', NULL, 0),
(281, '', 'Electronic', '', '/products-and-services/asean/electronic', '2023-03-07 06:56:26', '2023-03-07 07:06:26', NULL, 0),
(282, '', 'Aftermarket', '', '/products-and-services/asean/aftermarket', '2023-03-07 06:56:33', '2023-03-07 07:06:26', NULL, 0),
(283, '', 'Global', '', '/sustainability/global', '2023-03-07 06:56:47', '2023-03-07 07:06:29', NULL, 0),
(284, '', 'ASEAN', '', '/sustainability/asean', '2023-03-07 06:56:54', '2023-03-07 07:06:29', NULL, 0),
(285, '', 'Carbon Neutrality', '', '/sustainability/asean/carbon-neutrality', '2023-03-07 06:57:02', '2023-03-07 07:06:29', NULL, 0),
(286, '', 'SDGs・ESG Activities & Report', '', '/sustainability/asean/sdgsesg-activities-and-report', '2023-03-07 06:57:09', '2023-03-07 07:06:29', NULL, 0),
(287, '', 'Values', '', '/careers/values', '2023-03-07 06:57:19', '2023-03-07 07:06:29', NULL, 0),
(288, '', 'Vacancies', '', '/careers/vacancies', '2023-03-07 06:57:26', '2023-03-07 07:06:31', NULL, 0),
(290, '', 'The eAxle, a core component of electric vehicles [5 minute read]', 'Thee Axle runs on electric power, is a core component of electric vehicles, and is now attracting attention as a drive unit that could help replace the conventional gasoline-powered engine and transmission.', '/newsroom/asean/eaxle-core-component-electric-vehicles-5-minute-read', '2023-03-07 07:08:00', '2023-03-13 09:27:52', NULL, 0),
(291, '', '\"Manufacturing Power\" to Expedite Vehicle Electrification', 'Every day at Aisin, new products are created to exceed the conventional expectations of customers around the world.', '/newsroom/asean/manufacturing-power-expedite-vehicle-electrification', '2023-03-07 07:10:00', '2023-03-13 09:27:52', NULL, 0),
(292, '', 'Aisin\'s central role in vehicle electrification', 'The world is rapidly moving  toward  carbon neutrality, and the electrification of vehicles, which helps reduce CO2 emissions, is playing an important part.', '/newsroom/asean/aisins-central-role-vehicle-electrification', '2023-03-07 07:11:00', '2023-03-13 09:37:28', NULL, 0),
(293, '', 'Test ride event for Aisin\'s new electrification technologies demonstrates how ultra-compact eAxle revolutionizes vehicles', 'The automotive industry is at a major turning point in the quest to attain global Sustainable Development Goals (SDGs).', '/newsroom/asean/test-ride-event-aisins-new-electrification-technologies-demonstrates-how-ultra-compact-eaxle-revolutionizes-vehicles', '2023-03-07 07:12:00', '2023-03-13 09:37:28', NULL, 0),
(294, '', 'The History of Aisin\'s Advanced Technology: Evolving along with the Toyota Crown', 'Since its debut in 1955, the Toyota Crown has been equipped with Aisin’s leading-edge technology; both, Aisin’s advancement in technological innovation and the Crown have evolved simultaneously.', '/newsroom/asean/history-aisins-advanced-technology-evolving-along-toyota-crown', '2023-03-07 07:13:00', '2023-03-13 09:37:28', NULL, 0),
(295, '', 'Stopping is Just the Start of what These Brakes Can Do', 'A quarter of a century has passed since Toyota launched the first-generation Prius. Today, it’s common to see battery electric vehicles (BEVs) and now hybrid electric vehicles (HEVs) everywhere.', '/newsroom/asean/stopping-just-start-what-these-brakes-can-do', '2023-03-07 07:14:00', '2023-03-13 09:37:28', NULL, 0),
(296, '', 'Terms of Use', '', '/terms-use', '2023-03-07 08:03:00', '2023-03-07 08:05:03', NULL, 0),
(297, '', 'Privacy Policy', '', '/privacy-policy', '2023-03-07 08:04:00', '2023-03-07 08:05:03', NULL, 0),
(298, '', 'Social Media Policy', '', '/social-media-policy', '2023-03-07 08:04:00', '2023-03-07 08:05:06', NULL, 0),
(299, '', 'Site Map', '', '/site-map', '2023-03-07 08:04:00', '2023-03-07 08:05:06', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageSummaryTemplateCustomCollection`
--

CREATE TABLE `PageSummaryTemplateCustomCollection` (
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageSummaryTemplateCustomCollectionTemplates`
--

CREATE TABLE `PageSummaryTemplateCustomCollectionTemplates` (
  `template_id` int(11) NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageSummaryTemplates`
--

CREATE TABLE `PageSummaryTemplates` (
  `id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `cID` int(10) UNSIGNED NOT NULL,
  `data` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageSummaryTemplates`
--

INSERT INTO `PageSummaryTemplates` (`id`, `template_id`, `cID`, `data`) VALUES
(2, 1, 258, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678171773\"}, \"link\": {\"link\": \"/newsroom\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Newsroom\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(3, 1, 259, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678171897\"}, \"link\": {\"link\": \"/newsroom/global\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Global\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(4, 1, 260, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678171906\"}, \"link\": {\"link\": \"/newsroom/asean\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"ASEAN\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(5, 1, 261, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678171921\"}, \"link\": {\"link\": \"/about-aisin-group\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"About Aisin Group\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(6, 1, 262, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678171934\"}, \"link\": {\"link\": \"/products-and-services\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Products and Services\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(7, 1, 263, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678171970\"}, \"link\": {\"link\": \"/sustainability\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Sustainability\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(8, 1, 264, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678171986\"}, \"link\": {\"link\": \"/careers\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Careers\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(9, 1, 265, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678171996\"}, \"link\": {\"link\": \"/contact\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Contact\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(10, 1, 266, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172005\"}, \"link\": {\"link\": \"/about-aisin-group/global\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Global\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(11, 1, 267, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172013\"}, \"link\": {\"link\": \"/about-aisin-group/asean\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"ASEAN\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(12, 1, 268, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172022\"}, \"link\": {\"link\": \"/about-aisin-group/global/top-message\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Top Message\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(13, 1, 269, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172030\"}, \"link\": {\"link\": \"/about-aisin-group/global/corporate-principles\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Corporate Principles\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(14, 1, 270, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172038\"}, \"link\": {\"link\": \"/about-aisin-group/global/global-network\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Global Network\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(15, 1, 271, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172051\"}, \"link\": {\"link\": \"/about-aisin-group/asean/regional-top-message\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Regional Top Message\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(16, 1, 272, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172058\"}, \"link\": {\"link\": \"/about-aisin-group/asean/asean-network\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"ASEAN Network\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(17, 1, 273, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172111\"}, \"link\": {\"link\": \"/products-and-services/global\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Global\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(19, 1, 275, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172133\"}, \"link\": {\"link\": \"/products-and-services/global/mobility\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Mobility\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(20, 1, 276, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172140\"}, \"link\": {\"link\": \"/products-and-services/global/energy-solutions\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Energy Solutions\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(21, 1, 277, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172148\"}, \"link\": {\"link\": \"/products-and-services/global/new-business-and-others\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"New Business and Others\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(22, 1, 274, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172100\"}, \"link\": {\"link\": \"/products-and-services/asean\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"ASEAN\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(23, 1, 278, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172165\"}, \"link\": {\"link\": \"/products-and-services/asean/powertrain\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Powertrain\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(24, 1, 279, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172172\"}, \"link\": {\"link\": \"/products-and-services/asean/driving-safety\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Driving Safety\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(25, 1, 280, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172179\"}, \"link\": {\"link\": \"/products-and-services/asean/body\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Body\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(26, 1, 281, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172186\"}, \"link\": {\"link\": \"/products-and-services/asean/electronic\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Electronic\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(27, 1, 282, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172193\"}, \"link\": {\"link\": \"/products-and-services/asean/aftermarket\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Aftermarket\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(28, 1, 283, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172207\"}, \"link\": {\"link\": \"/sustainability/global\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Global\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(29, 1, 284, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172214\"}, \"link\": {\"link\": \"/sustainability/asean\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"ASEAN\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(30, 1, 285, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172222\"}, \"link\": {\"link\": \"/sustainability/asean/carbon-neutrality\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Carbon Neutrality\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(31, 1, 286, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172229\"}, \"link\": {\"link\": \"/sustainability/asean/sdgsesg-activities-and-report\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"SDGs・ESG Activities & Report\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(32, 1, 287, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172239\"}, \"link\": {\"link\": \"/careers/values\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Values\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(33, 1, 288, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172246\"}, \"link\": {\"link\": \"/careers/vacancies\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Vacancies\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(43, 1, 251, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1677841864\"}, \"link\": {\"link\": \"/!stacks/header-navigation-th\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Header: Navigation TH\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(48, 1, 252, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1677841864\"}, \"link\": {\"link\": \"/!stacks/header-search-th\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Header: Search TH\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(52, 1, 256, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1677841865\"}, \"link\": {\"link\": \"/!stacks/footer-copyright-th\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Footer: Copyright TH\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(55, 1, 296, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678176180\"}, \"link\": {\"link\": \"/terms-use\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Terms of Use\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(57, 1, 297, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678176240\"}, \"link\": {\"link\": \"/privacy-policy\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Privacy Policy\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(59, 1, 298, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678176240\"}, \"link\": {\"link\": \"/social-media-policy\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Social Media Policy\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(61, 1, 299, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678176240\"}, \"link\": {\"link\": \"/site-map\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Site Map\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}'),
(70, 1, 254, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1677841865\"}, \"link\": {\"link\": \"/!stacks/footer-social-th\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Footer: Social TH\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(84, 1, 253, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1677841865\"}, \"link\": {\"link\": \"/!stacks/header-navigation-otherth\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Header: Navigation OtherTH\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(86, 1, 255, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1677841865\"}, \"link\": {\"link\": \"/!stacks/footer-navigation-th\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Footer: Navigation TH\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(105, 1, 290, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678172880\"}, \"link\": {\"link\": \"/newsroom/asean/eaxle-core-component-electric-vehicles-5-minute-read\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"The eAxle, a core component of electric vehicles [5 minute read]\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}, \"thumbnail\": {\"fID\": \"4\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\ImageDataFieldData\"}, \"description\": {\"data\": \"Thee Axle runs on electric power, is a core component of electric vehicles, and is now attracting attention as a drive unit that could help replace the conventional gasoline-powered engine and transmission.\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(106, 1, 291, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678173000\"}, \"link\": {\"link\": \"/newsroom/asean/manufacturing-power-expedite-vehicle-electrification\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"\\\"Manufacturing Power\\\" to Expedite Vehicle Electrification\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}, \"thumbnail\": {\"fID\": \"5\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\ImageDataFieldData\"}, \"description\": {\"data\": \"Every day at Aisin, new products are created to exceed the conventional expectations of customers around the world.\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(107, 1, 292, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678173060\"}, \"link\": {\"link\": \"/newsroom/asean/aisins-central-role-vehicle-electrification\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Aisin\'s central role in vehicle electrification\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}, \"thumbnail\": {\"fID\": \"6\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\ImageDataFieldData\"}, \"description\": {\"data\": \"The world is rapidly moving  toward  carbon neutrality, and the electrification of vehicles, which helps reduce CO2 emissions, is playing an important part.\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(108, 1, 293, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678173120\"}, \"link\": {\"link\": \"/newsroom/asean/test-ride-event-aisins-new-electrification-technologies-demonstrates-how-ultra-compact-eaxle-revolutionizes-vehicles\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Test ride event for Aisin\'s new electrification technologies demonstrates how ultra-compact eAxle revolutionizes vehicles\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}, \"thumbnail\": {\"fID\": \"7\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\ImageDataFieldData\"}, \"description\": {\"data\": \"The automotive industry is at a major turning point in the quest to attain global Sustainable Development Goals (SDGs).\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(109, 1, 294, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678173180\"}, \"link\": {\"link\": \"/newsroom/asean/history-aisins-advanced-technology-evolving-along-toyota-crown\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"The History of Aisin\'s Advanced Technology: Evolving along with the Toyota Crown\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}, \"thumbnail\": {\"fID\": \"8\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\ImageDataFieldData\"}, \"description\": {\"data\": \"Since its debut in 1955, the Toyota Crown has been equipped with Aisin’s leading-edge technology; both, Aisin’s advancement in technological innovation and the Crown have evolved simultaneously.\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(110, 1, 295, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1678173240\"}, \"link\": {\"link\": \"/newsroom/asean/stopping-just-start-what-these-brakes-can-do\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\PagePathLinkDataFieldData\"}, \"title\": {\"data\": \"Stopping is Just the Start of what These Brakes Can Do\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}, \"thumbnail\": {\"fID\": \"9\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\ImageDataFieldData\"}, \"description\": {\"data\": \"A quarter of a century has passed since Toyota launched the first-generation Prius. Today, it’s common to see battery electric vehicles (BEVs) and now hybrid electric vehicles (HEVs) everywhere.\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}}}'),
(112, 1, 1, '{\"fields\": {\"date\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DatetimeDataFieldData\", \"timezone\": \"UTC\", \"timestamp\": \"1677837900\"}, \"link\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\LazyPageLinkDataFieldData\"}, \"title\": {\"data\": \"Home\", \"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\DataFieldData\"}, \"author\": {\"class\": \"Concrete\\\\Core\\\\Summary\\\\Data\\\\Field\\\\AuthorDataFieldData\", \"author\": {\"id\": 1, \"name\": \"admin\"}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `PageTemplates`
--

CREATE TABLE `PageTemplates` (
  `pTemplateID` int(11) NOT NULL,
  `pTemplateHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTemplates`
--

INSERT INTO `PageTemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1, 'core_stack', '', 'Stack', 1, 0),
(2, 'desktop', '', 'Desktop', 1, 0),
(3, 'dashboard_full', '', 'Dashboard Full', 1, 0),
(4, 'full', 'full.png', 'Full', 0, 0),
(5, 'core_theme_documentation', 'full.png', 'Theme Documentation', 1, 0),
(12, 'news_detail', 'full.png', 'News Detail', 0, 0),
(13, 'news', 'full.png', 'News', 0, 0),
(14, 'home', 'full.png', 'Home', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageThemeCustomSkins`
--

CREATE TABLE `PageThemeCustomSkins` (
  `skinID` int(11) NOT NULL,
  `skinIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `skinName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presetStartingPoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreated` int(10) UNSIGNED NOT NULL,
  `dateUpdated` int(10) UNSIGNED NOT NULL,
  `variableCollection` json NOT NULL,
  `customCss` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageThemeCustomStyles`
--

CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageThemes`
--

CREATE TABLE `PageThemes` (
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `pThemeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8mb4_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageThemes`
--

INSERT INTO `PageThemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(1, 'elemental', 'Elemental', 'Elegant, spacious theme with support for blogs, portfolios, layouts and more.', 0, 1),
(2, 'atomik', 'Atomik', 'A Concrete CMS theme built for version 9.', 0, 1),
(3, 'kos', 'KOS', 'Powered by KOS Design.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerControlTypes`
--

CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypeComposerControlTypes`
--

INSERT INTO `PageTypeComposerControlTypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
(1, 'core_page_property', 'Built-In Property', 0),
(2, 'collection_attribute', 'Custom Attribute', 0),
(3, 'block', 'Block', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL,
  `ptComposerFormLayoutSetID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlTypeID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8mb4_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypeComposerFormLayoutSetControls`
--

INSERT INTO `PageTypeComposerFormLayoutSetControls` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
(1, 1, 1, 'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 0, 'Page Name', NULL, NULL, 1),
(2, 1, 1, 'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:4:\"font\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 1, NULL, NULL, NULL, 0),
(3, 1, 1, 'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 2, NULL, NULL, NULL, 0),
(4, 1, 1, 'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"list-alt\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 3, NULL, NULL, NULL, 0),
(5, 1, 1, 'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 4, NULL, NULL, NULL, 0),
(6, 2, 3, 'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":15:{s:7:\"\0*\0btID\";i:1;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:1;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:33:\"\0*\0ptComposerControlIconFormatter\";N;s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 0, 'Body', NULL, NULL, 0),
(7, 3, 1, 'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":13:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"1\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"1\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"0\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";s:9:\"Page Name\";s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"1\";}}', 0, 'Page Name', NULL, NULL, 1),
(8, 3, 1, 'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":13:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:4:\"font\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"2\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"1\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"1\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}', 1, NULL, NULL, NULL, 0),
(9, 3, 1, 'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":13:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"3\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"1\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"2\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}', 2, NULL, NULL, NULL, 0),
(10, 3, 1, 'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":13:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"list-alt\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"4\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"1\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"3\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}', 3, NULL, NULL, NULL, 0),
(11, 3, 1, 'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":13:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"5\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"1\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"4\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}', 4, NULL, NULL, NULL, 0),
(13, 4, 2, 'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:7;}', 0, NULL, NULL, NULL, 0),
(14, 4, 2, 'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:21;}', 1, NULL, NULL, NULL, 0),
(16, 4, 2, 'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:10;}', 3, NULL, NULL, NULL, 0),
(17, 4, 2, 'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:23;}', 2, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8mb4_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypeComposerFormLayoutSets`
--

INSERT INTO `PageTypeComposerFormLayoutSets` (`ptComposerFormLayoutSetID`, `ptID`, `ptComposerFormLayoutSetName`, `ptComposerFormLayoutSetDescription`, `ptComposerFormLayoutSetDisplayOrder`) VALUES
(1, 5, 'Basics', '', 0),
(2, 5, 'Content', '', 1),
(3, 8, 'Basics', '', 0),
(4, 8, 'Content', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypeComposerOutputBlocks`
--

INSERT INTO `PageTypeComposerOutputBlocks` (`ptComposerOutputBlockID`, `cID`, `cvID`, `arHandle`, `cbDisplayOrder`, `ptComposerFormLayoutSetControlID`, `bID`) VALUES
(2, 258, 1, 'Main', 0, 6, 24),
(4, 259, 1, 'Main', 0, 6, 26),
(6, 260, 1, 'Main', 0, 6, 28),
(8, 261, 1, 'Main', 0, 6, 30),
(10, 262, 1, 'Main', 0, 6, 32),
(12, 263, 1, 'Main', 0, 6, 34),
(14, 264, 1, 'Main', 0, 6, 36),
(16, 265, 1, 'Main', 0, 6, 38),
(18, 266, 1, 'Main', 0, 6, 40),
(20, 267, 1, 'Main', 0, 6, 42),
(22, 268, 1, 'Main', 0, 6, 44),
(24, 269, 1, 'Main', 0, 6, 46),
(26, 270, 1, 'Main', 0, 6, 48),
(28, 271, 1, 'Main', 0, 6, 50),
(30, 272, 1, 'Main', 0, 6, 52),
(32, 273, 1, 'Main', 0, 6, 54),
(34, 274, 1, 'Main', 0, 6, 56),
(36, 275, 1, 'Main', 0, 6, 58),
(38, 276, 1, 'Main', 0, 6, 60),
(40, 277, 1, 'Main', 0, 6, 62),
(41, 274, 2, 'Main', 0, 6, 56),
(43, 278, 1, 'Main', 0, 6, 64),
(45, 279, 1, 'Main', 0, 6, 66),
(47, 280, 1, 'Main', 0, 6, 68),
(49, 281, 1, 'Main', 0, 6, 70),
(51, 282, 1, 'Main', 0, 6, 72),
(53, 283, 1, 'Main', 0, 6, 74),
(55, 284, 1, 'Main', 0, 6, 76),
(57, 285, 1, 'Main', 0, 6, 78),
(59, 286, 1, 'Main', 0, 6, 80),
(61, 287, 1, 'Main', 0, 6, 82),
(63, 288, 1, 'Main', 0, 6, 84),
(65, 296, 1, 'Main', 0, 6, 93),
(66, 296, 2, 'Main', 0, 6, 93),
(68, 297, 1, 'Main', 0, 6, 95),
(69, 297, 2, 'Main', 0, 6, 95),
(71, 298, 1, 'Main', 0, 6, 97),
(72, 298, 2, 'Main', 0, 6, 97),
(74, 299, 1, 'Main', 0, 6, 99),
(75, 299, 2, 'Main', 0, 6, 99);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerOutputControls`
--

CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL,
  `pTemplateID` int(10) UNSIGNED DEFAULT '0',
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypeComposerOutputControls`
--

INSERT INTO `PageTypeComposerOutputControls` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
(1, 4, 5, 6),
(2, 6, 5, 6),
(3, 7, 5, 6),
(4, 8, 5, 6),
(5, 9, 5, 6),
(6, 10, 5, 6),
(7, 11, 5, 6),
(8, 12, 5, 6),
(9, 13, 5, 6),
(10, 14, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypePageTemplateDefaultPages`
--

INSERT INTO `PageTypePageTemplateDefaultPages` (`pTemplateID`, `ptID`, `cID`) VALUES
(4, 5, 185),
(4, 8, 257),
(12, 8, 289),
(14, 5, 300);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePageTemplates`
--

CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePermissionAssignments`
--

CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypePermissionAssignments`
--

INSERT INTO `PageTypePermissionAssignments` (`ptID`, `pkID`, `paID`) VALUES
(1, 60, 17),
(2, 60, 17),
(3, 60, 17),
(4, 60, 17),
(5, 60, 17),
(6, 60, 17),
(7, 60, 17),
(8, 60, 17),
(1, 61, 17),
(2, 61, 17),
(3, 61, 17),
(4, 61, 17),
(5, 61, 17),
(6, 61, 17),
(7, 61, 17),
(8, 61, 17),
(1, 62, 17),
(2, 62, 17),
(3, 62, 17),
(4, 62, 17),
(5, 62, 17),
(6, 62, 17),
(7, 62, 17),
(8, 62, 17),
(1, 63, 17),
(2, 63, 17),
(3, 63, 17),
(4, 63, 17),
(5, 63, 17),
(6, 63, 17),
(7, 63, 17),
(8, 63, 17),
(1, 64, 40),
(2, 64, 41),
(3, 64, 42),
(4, 64, 43),
(5, 64, 45),
(6, 64, 122),
(7, 64, 123),
(8, 64, 45);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePublishTargetTypes`
--

CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypePublishTargetTypes`
--

INSERT INTO `PageTypePublishTargetTypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
(1, 'parent_page', 'Always publish below a certain page', 0),
(2, 'page_type', 'Choose from pages of a certain type', 0),
(3, 'all', 'Choose from all pages when publishing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypes`
--

CREATE TABLE `PageTypes` (
  `ptID` int(10) UNSIGNED NOT NULL,
  `ptName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) UNSIGNED DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) UNSIGNED DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8mb4_unicode_ci,
  `siteTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypes`
--

INSERT INTO `PageTypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`, `siteTypeID`) VALUES
(1, 'Stack', 'core_stack', 3, 0, 'A', 1, 0, 0, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}', 1),
(2, 'Stack Category', 'core_stack_category', 3, 0, 'A', 1, 0, 1, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}', 1),
(3, 'Desktop', 'core_desktop', 3, 0, 'A', 1, 0, 2, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}', 1),
(4, 'Dashboard Full', 'dashboard_full', 3, 0, 'A', 1, 0, 3, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}', 1),
(5, 'Page', 'page', 3, 4, 'A', 0, 1, 0, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}', 1),
(6, 'Theme Documentation Category', 'core_theme_documentation_category', 3, 0, 'A', 1, 0, 4, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";N;s:20:\"\0*\0startingPointPage\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}', 1),
(7, 'Theme Documentation', 'core_theme_documentation', 3, 0, 'A', 1, 0, 5, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";N;s:20:\"\0*\0startingPointPage\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}', 1),
(8, 'News Detail', 'news_detail', 3, 12, 'A', 0, 1, 1, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:20:\"\0*\0startingPointPage\";s:1:\"0\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageWorkflowProgress`
--

CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccess`
--

CREATE TABLE `PermissionAccess` (
  `paID` int(10) UNSIGNED NOT NULL,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccess`
--

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntities`
--

CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) UNSIGNED NOT NULL,
  `petID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntities`
--

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(6, 1),
(7, 2),
(3, 5),
(4, 6),
(5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroups`
--

CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) UNSIGNED NOT NULL,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntitySiteGroups`
--

CREATE TABLE `PermissionAccessEntitySiteGroups` (
  `pegID` int(10) UNSIGNED NOT NULL,
  `peID` int(10) UNSIGNED NOT NULL,
  `siteGID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(8, 1),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(6, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(1, 14),
(2, 14),
(3, 14),
(4, 14),
(8, 14),
(1, 15),
(2, 15),
(3, 15),
(4, 15),
(5, 15),
(8, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(1, 17),
(2, 17),
(3, 17),
(4, 17),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(1, 19),
(2, 19),
(3, 19),
(4, 19),
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(1, 21),
(2, 21),
(3, 21),
(4, 21),
(7, 21),
(1, 22),
(2, 22),
(3, 22),
(4, 22),
(7, 22),
(1, 23),
(2, 23),
(4, 23),
(1, 24),
(2, 24),
(3, 24),
(4, 24),
(1, 25),
(2, 25),
(3, 25),
(4, 25),
(1, 26),
(2, 26),
(3, 26),
(4, 26),
(1, 27),
(2, 27),
(3, 27),
(4, 27),
(1, 28),
(2, 28),
(3, 28),
(4, 28),
(1, 30),
(2, 30),
(3, 30),
(4, 30);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypes`
--

CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) UNSIGNED NOT NULL,
  `petHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0),
(7, 'conversation_message_author', 'Message Author', 0),
(8, 'site_group', 'Site Group', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityUsers`
--

CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

INSERT INTO `PermissionAccessEntityUsers` (`peID`, `uID`) VALUES
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessList`
--

CREATE TABLE `PermissionAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pdID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessList`
--

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 2, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 2, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(28, 1, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 1, 0, 10),
(32, 1, 0, 10),
(33, 1, 0, 10),
(34, 1, 0, 10),
(35, 1, 0, 10),
(36, 1, 0, 10),
(36, 2, 0, 10),
(37, 1, 0, 10),
(37, 2, 0, 10),
(38, 1, 0, 10),
(39, 1, 0, 10),
(40, 3, 0, 10),
(41, 3, 0, 10),
(42, 3, 0, 10),
(43, 3, 0, 10),
(44, 1, 0, 10),
(45, 3, 0, 10),
(46, 2, 0, 10),
(47, 1, 0, 10),
(47, 2, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 1, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 2, 0, 10),
(58, 2, 0, 10),
(59, 2, 0, 10),
(60, 2, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 1, 0, 10),
(66, 1, 0, 10),
(67, 1, 0, 10),
(68, 1, 0, 10),
(69, 1, 0, 10),
(70, 1, 0, 10),
(71, 1, 0, 10),
(72, 1, 0, 10),
(73, 1, 0, 10),
(74, 1, 0, 10),
(75, 1, 0, 10),
(76, 1, 0, 10),
(77, 1, 0, 10),
(78, 1, 0, 10),
(79, 1, 0, 10),
(80, 2, 0, 10),
(81, 1, 0, 10),
(82, 1, 0, 10),
(83, 1, 0, 10),
(84, 1, 0, 10),
(85, 1, 0, 10),
(86, 1, 0, 10),
(87, 1, 0, 10),
(88, 1, 0, 10),
(89, 1, 0, 10),
(90, 1, 0, 10),
(91, 1, 0, 10),
(92, 1, 0, 10),
(93, 1, 0, 10),
(94, 1, 0, 10),
(95, 1, 0, 10),
(96, 1, 0, 10),
(97, 1, 0, 10),
(98, 1, 0, 10),
(99, 1, 0, 10),
(100, 1, 0, 10),
(101, 1, 0, 10),
(102, 1, 0, 10),
(103, 2, 0, 10),
(104, 2, 0, 10),
(105, 1, 0, 10),
(105, 5, 0, 10),
(106, 1, 0, 10),
(106, 5, 0, 10),
(107, 1, 0, 10),
(107, 6, 0, 10),
(108, 1, 0, 10),
(109, 1, 0, 10),
(110, 1, 0, 10),
(111, 1, 0, 10),
(111, 7, 0, 10),
(112, 1, 0, 10),
(113, 2, 0, 10),
(114, 1, 0, 10),
(115, 1, 0, 10),
(116, 1, 0, 10),
(117, 1, 0, 10),
(118, 1, 0, 10),
(119, 1, 0, 10),
(120, 1, 0, 10),
(121, 1, 0, 10),
(122, 3, 0, 10),
(123, 3, 0, 10),
(124, 3, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessWorkflows`
--

CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAssignments`
--

CREATE TABLE `PermissionAssignments` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAssignments`
--

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(1, 19),
(2, 20),
(3, 75),
(4, 76),
(5, 77),
(6, 79),
(7, 80),
(8, 81),
(111, 82),
(9, 83),
(10, 84),
(11, 85),
(12, 86),
(13, 87),
(14, 88),
(15, 89),
(16, 90),
(17, 113),
(18, 115),
(19, 116),
(20, 117),
(21, 118),
(22, 119),
(23, 120),
(24, 121),
(25, 122),
(26, 123),
(27, 124),
(28, 125),
(29, 126),
(30, 127),
(31, 128),
(38, 129),
(39, 130),
(112, 131),
(113, 132),
(114, 133),
(115, 134),
(116, 135),
(117, 136),
(118, 137),
(119, 144),
(120, 145),
(121, 146);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionDurationObjects`
--

CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) UNSIGNED NOT NULL,
  `pdObject` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeyCategories`
--

CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) UNSIGNED NOT NULL,
  `pkCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionKeyCategories`
--

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'user', NULL),
(5, 'file_folder', NULL),
(6, 'file', NULL),
(7, 'area', NULL),
(8, 'block_type', NULL),
(9, 'block', NULL),
(10, 'admin', NULL),
(11, 'notification', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace', NULL),
(14, 'basic_workflow', NULL),
(15, 'page_type', NULL),
(17, 'group_tree_node', NULL),
(18, 'express_tree_node', NULL),
(19, 'category_tree_node', NULL),
(20, 'topic_tree_node', NULL),
(21, 'conversation', NULL),
(22, 'conversation_message', NULL),
(23, 'multilingual_section', NULL),
(24, 'calendar_admin', NULL),
(25, 'calendar', NULL),
(26, 'express_entry', NULL),
(27, 'board', NULL),
(28, 'board_admin', NULL),
(29, 'logs', NULL),
(30, 'group_folder', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeys`
--

CREATE TABLE `PermissionKeys` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `pkHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionKeys`
--

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_template', 'Change Page Template', 0, 0, 'Ability to change just the page template for this page.', 1, 0),
(10, 'edit_page_page_type', 'Edit Page Type', 0, 0, 'Change the type of an existing page.', 1, 0),
(11, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(12, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site\'s Trash.', 1, 0),
(13, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(14, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(15, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(16, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(17, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(18, 'edit_page_multilingual_settings', 'Edit Multilingual Settings', 0, 0, 'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.', 1, 0),
(19, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(20, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(21, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 7, 0),
(22, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 7, 0),
(23, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 7, 0),
(24, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 7, 0),
(25, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 7, 0),
(26, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area\'s custom CSS.', 7, 0),
(27, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 7, 0),
(28, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 7, 0),
(29, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 7, 0),
(30, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 9, 0),
(31, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 9, 0),
(32, 'edit_block_custom_template', 'Change Block Template', 0, 0, 'Controls whether users can change the block template on this block. This overrides any area or page permissions.', 9, 0),
(33, 'edit_block_cache_settings', 'Edit Cache Settings', 0, 0, 'Controls whether users can change the block cache settings for this block instance.', 9, 0),
(34, 'edit_block_name', 'Edit Name', 0, 0, 'Controls whether users can change the block\'s name (rarely used.)', 9, 0),
(35, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 9, 0),
(36, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 9, 0),
(37, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 9, 0),
(38, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 9, 0),
(39, 'view_file_folder_file', 'View Files', 0, 0, 'View files within folder in the site.', 5, 0),
(40, 'search_file_folder', 'Search File Folder', 0, 0, 'See this file folder in the file manager', 5, 0),
(41, 'edit_file_folder', 'Edit File Folder', 0, 0, 'Edit a file folder.', 5, 0),
(42, 'edit_file_folder_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 5, 0),
(43, 'edit_file_folder_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in folder.', 5, 0),
(44, 'copy_file_folder_files', 'Copy File', 0, 0, 'Can copy files in file folder.', 5, 0),
(45, 'edit_file_folder_permissions', 'Edit File Access', 0, 0, 'Can edit access to file folder.', 5, 0),
(46, 'delete_file_folder', 'Delete File Set', 0, 0, 'Can delete file folder.', 5, 0),
(47, 'delete_file_folder_files', 'Delete File', 0, 0, 'Can delete files in folder.', 5, 0),
(48, 'add_file', 'Add File', 0, 1, 'Can add files to folder.', 5, 0),
(49, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 6, 0),
(50, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 6, 0),
(51, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 6, 0),
(52, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 6, 0),
(53, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 6, 0),
(54, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 6, 0),
(55, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 6, 0),
(56, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(57, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(58, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(59, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(60, 'add_page_type', 'Add Pages of This Type', 0, 0, '', 15, 0),
(61, 'edit_page_type', 'Edit Page Type', 0, 0, '', 15, 0),
(62, 'delete_page_type', 'Delete Page Type', 0, 0, '', 15, 0),
(63, 'edit_page_type_permissions', 'Edit Page Type Permissions', 0, 0, '', 15, 0),
(64, 'edit_page_type_drafts', 'Edit Page Type Drafts', 0, 0, '', 15, 0),
(65, 'view_topic_tree_node', 'View Topic Tree Node', 0, 0, '', 20, 0),
(66, 'view_category_tree_node', 'View Category Tree Node', 0, 0, '', 19, 0),
(67, 'add_conversation_message', 'Add Message to Conversation', 0, 1, '', 21, 0),
(68, 'add_conversation_message_attachments', 'Add Message Attachments', 0, 0, '', 21, 0),
(69, 'edit_conversation_permissions', 'Edit Conversation Permissions', 0, 0, '', 21, 0),
(70, 'delete_conversation_message', 'Delete Message', 0, 0, '', 21, 0),
(71, 'edit_conversation_message', 'Edit Message', 0, 0, '', 21, 0),
(72, 'rate_conversation_message', 'Rate Message', 0, 0, '', 21, 0),
(73, 'flag_conversation_message', 'Flag Message', 0, 0, '', 21, 0),
(74, 'approve_conversation_message', 'Approve Message', 0, 0, '', 21, 0),
(75, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 4, 0),
(76, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 4, 0),
(77, 'activate_user', 'Activate/Deactivate User', 1, 0, NULL, 4, 0),
(78, 'sudo', 'Sign in as User', 0, 0, NULL, 4, 0),
(79, 'upgrade', 'Upgrade concrete5', 0, 0, NULL, 10, 0),
(80, 'access_group_search', 'Access Group Search', 0, 0, NULL, 4, 0),
(81, 'delete_user', 'Delete User', 1, 0, NULL, 4, 0),
(82, 'notify_in_notification_center', 'Notify in Notification Center', 0, 1, 'Controls who receives updates in the notification center.', 11, 0),
(83, 'add_calendar', 'Add Calendar', 0, 0, '', 24, 0),
(84, 'view_calendars', 'View Calendars', 0, 0, '', 24, 0),
(85, 'edit_calendars', 'Edit Calendars', 0, 0, '', 24, 0),
(86, 'edit_calendars_permissions', 'Edit Permissions', 0, 0, '', 24, 0),
(87, 'add_calendar_events', 'Add Calendar Events', 0, 0, '', 24, 0),
(88, 'approve_calendar_events', 'Approve Calendar Events', 1, 0, '', 24, 0),
(89, 'delete_calendars', 'Delete Calendars', 0, 0, '', 24, 0),
(90, 'access_calendar_rss_feeds', 'Access RSS Feeds', 0, 0, '', 24, 0),
(91, 'view_calendar', 'View Calendar', 0, 0, '', 25, 0),
(92, 'view_calendar_in_edit_interface', 'View in Edit Interface', 0, 0, '', 25, 0),
(93, 'edit_calendar_permissions', 'Edit Permissions', 0, 0, '', 25, 0),
(94, 'edit_calendar', 'Edit Calendar', 0, 0, '', 25, 0),
(95, 'add_calendar_event', 'Add Calendar Event', 0, 0, '', 25, 0),
(96, 'approve_calendar_event', 'Approve Calendar Event', 1, 0, '', 25, 0),
(97, 'edit_calendar_event_more_details_location', 'Modify More Details Location', 0, 0, '', 25, 0),
(98, 'edit_calendar_events', 'Edit Calendar Events', 0, 0, '', 25, 0),
(99, 'access_calendar_rss_feed', 'Access RSS Feed', 0, 0, '', 25, 0),
(100, 'delete_calendar', 'Delete Calendar', 0, 0, '', 25, 0),
(101, 'view_express_entries', 'View Entries', 0, 0, NULL, 18, 0),
(102, 'add_express_entries', 'Add Entry', 0, 0, NULL, 18, 0),
(103, 'edit_express_entries', 'Edit Entry', 0, 0, NULL, 18, 0),
(104, 'delete_express_entries', 'Delete Entry', 0, 0, NULL, 18, 0),
(105, 'view_express_entry', 'View Entries', 0, 0, NULL, 26, 0),
(106, 'edit_express_entry', 'Edit Entry', 0, 0, NULL, 26, 0),
(107, 'delete_express_entry', 'Delete Entry', 0, 0, NULL, 26, 0),
(108, 'search_users_in_group', 'Search User Group', 0, 0, NULL, 17, 0),
(109, 'edit_group', 'Edit Group', 0, 0, NULL, 17, 0),
(110, 'assign_group', 'Assign Group', 0, 0, NULL, 17, 0),
(111, 'add_sub_group', 'Add Child Group', 0, 0, NULL, 17, 0),
(112, 'edit_group_permissions', 'Edit Group Permissions', 0, 0, NULL, 17, 0),
(113, 'access_page_type_permissions', 'Access Page Type Permissions', 0, 0, NULL, 10, 0),
(114, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 10, 0),
(115, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(116, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 10, 0),
(117, 'customize_themes', 'Customize Themes', 0, 0, NULL, 10, 0),
(118, 'manage_layout_presets', 'Manage Layout Presets', 0, 0, NULL, 10, 0),
(119, 'empty_trash', 'Empty Trash', 0, 0, NULL, 10, 0),
(120, 'add_topic_tree', 'Add Topic Tree', 0, 0, NULL, 10, 0),
(121, 'remove_topic_tree', 'Remove Topic Tree', 0, 0, NULL, 10, 0),
(122, 'view_in_maintenance_mode', 'View Site in Maintenance Mode', 0, 0, 'Ability to see and use the website when concrete5 is in maintenance mode.', 10, 0),
(123, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(124, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(125, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0),
(126, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 4, 0),
(127, 'access_user_search', 'Access User Search', 0, 0, 'Controls whether a user can view the search user interface.', 4, 0),
(128, 'edit_topic_tree', 'Edit Topic Tree', 0, 0, NULL, 10, 0),
(131, 'add_board', 'Add Board', 0, 0, '', 28, 0),
(132, 'view_boards', 'View Boards', 0, 0, '', 28, 0),
(133, 'edit_boards_settings', 'Edit Board Settings', 0, 0, '', 28, 0),
(134, 'edit_boards_contents', 'Edit Board Content', 0, 0, '', 28, 0),
(135, 'edit_boards_locked_rules', 'Edit Locked Rules', 0, 0, '', 28, 0),
(136, 'edit_boards_permissions', 'Edit Permissions', 0, 0, '', 28, 0),
(137, 'delete_boards', 'Delete Boards', 0, 0, '', 28, 0),
(138, 'view_board', 'View Board', 0, 0, '', 27, 0),
(139, 'edit_board_settings', 'Edit Settings', 0, 0, '', 27, 0),
(140, 'edit_board_permissions', 'Edit Permissions', 0, 0, '', 27, 0),
(141, 'edit_board_contents', 'Edit Contents', 0, 0, '', 27, 0),
(142, 'edit_board_locked_rules', 'Edit Locked Rules', 0, 0, '', 27, 0),
(143, 'delete_board', 'Delete Board', 0, 0, '', 27, 0),
(144, 'view_log_entries', 'View Log Entries', 0, 0, '', 29, 0),
(145, 'delete_log_entries', 'Delete Log Entries', 0, 0, '', 29, 0),
(146, 'export_log_entries', 'Export Log Entries', 0, 0, '', 29, 0),
(147, 'search_group_folder', 'Search Group Folder', 0, 0, 'Search Group Folder', 30, 0),
(148, 'edit_group_folder', 'Edit Group Folder', 0, 0, 'Edit Group Folder', 30, 0),
(149, 'edit_group_folder_permissions', 'Edit Group Access', 0, 0, 'Edit Group Access', 30, 0),
(150, 'delete_group_folder', 'Delete Group Folder', 0, 0, 'Delete Group Folder', 30, 0),
(151, 'add_group', 'Add Group', 0, 0, 'Add Group', 30, 0),
(152, 'add_group_folder', 'Add Group Folder', 0, 0, 'Add Group Folder', 30, 0),
(153, 'assign_groups', 'Assign Groups', 0, 0, 'Can assign the groups within this folder.', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PileContents`
--

CREATE TABLE `PileContents` (
  `pcID` int(10) UNSIGNED NOT NULL,
  `pID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PileContents`
--

INSERT INTO `PileContents` (`pcID`, `pID`, `itemID`, `itemType`, `quantity`, `timestamp`, `displayOrder`) VALUES
(2, 1, 153, 'BLOCK', 1, '2023-03-10 09:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Piles`
--

CREATE TABLE `Piles` (
  `pID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Piles`
--

INSERT INTO `Piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1, 1, 1, '2023-03-09 05:49:10', NULL, 'READY');

-- --------------------------------------------------------

--
-- Table structure for table `PrivateMessageNotifications`
--

CREATE TABLE `PrivateMessageNotifications` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `QueueMessages`
--

CREATE TABLE `QueueMessages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `handle` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `QueuePageDuplicationRelations`
--

CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `originalCID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Queues`
--

CREATE TABLE `Queues` (
  `queue_id` int(10) UNSIGNED NOT NULL,
  `queue_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` int(10) UNSIGNED NOT NULL DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedExpressSearchQueries`
--

CREATE TABLE `SavedExpressSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedFileSearchQueries`
--

CREATE TABLE `SavedFileSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedGroupSearchQueries`
--

CREATE TABLE `SavedGroupSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedLogSearchQueries`
--

CREATE TABLE `SavedLogSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedPageSearchQueries`
--

CREATE TABLE `SavedPageSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedUserSearchQueries`
--

CREATE TABLE `SavedUserSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Sessions`
--

CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessionValue` longtext COLLATE utf8mb4_unicode_ci,
  `sessionTime` int(10) UNSIGNED NOT NULL,
  `sessionLifeTime` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiblingPageRelations`
--

CREATE TABLE `SiblingPageRelations` (
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteAttributeKeys`
--

CREATE TABLE `SiteAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteAttributeValues`
--

CREATE TABLE `SiteAttributeValues` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteDomains`
--

CREATE TABLE `SiteDomains` (
  `domainID` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteGroupRelations`
--

CREATE TABLE `SiteGroupRelations` (
  `groupRelationID` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED NOT NULL,
  `siteGID` int(10) UNSIGNED DEFAULT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteGroups`
--

CREATE TABLE `SiteGroups` (
  `siteGID` int(10) UNSIGNED NOT NULL,
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteLocales`
--

CREATE TABLE `SiteLocales` (
  `siteLocaleID` int(10) UNSIGNED NOT NULL,
  `msIsDefault` tinyint(1) NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SiteLocales`
--

INSERT INTO `SiteLocales` (`siteLocaleID`, `msIsDefault`, `msLanguage`, `msCountry`, `msNumPlurals`, `msPluralRule`, `msPluralCases`, `siteID`, `siteTreeID`) VALUES
(1, 1, 'en', 'TH', 2, 'n != 1', 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Sites`
--

CREATE TABLE `Sites` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `siteIsDefault` tinyint(1) NOT NULL,
  `siteHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL,
  `pThemeSkinIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Sites`
--

INSERT INTO `Sites` (`siteID`, `pThemeID`, `siteIsDefault`, `siteHandle`, `siteTypeID`, `pThemeSkinIdentifier`) VALUES
(1, 3, 1, 'default', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SiteSearchIndexAttributes`
--

CREATE TABLE `SiteSearchIndexAttributes` (
  `siteID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteSkeletonLocales`
--

CREATE TABLE `SiteSkeletonLocales` (
  `skeletonLocaleID` int(10) UNSIGNED NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteSkeletonID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteSkeletons`
--

CREATE TABLE `SiteSkeletons` (
  `siteSkeletonID` int(10) UNSIGNED NOT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteSkeletonTrees`
--

CREATE TABLE `SiteSkeletonTrees` (
  `skeletonLocaleID` int(10) UNSIGNED DEFAULT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTrees`
--

CREATE TABLE `SiteTrees` (
  `siteTreeID` int(10) UNSIGNED NOT NULL,
  `siteHomePageID` int(10) UNSIGNED NOT NULL,
  `treeType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SiteTrees`
--

INSERT INTO `SiteTrees` (`siteTreeID`, `siteHomePageID`, `treeType`) VALUES
(1, 1, 'sitetree');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTreeTrees`
--

CREATE TABLE `SiteTreeTrees` (
  `siteLocaleID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SiteTreeTrees`
--

INSERT INTO `SiteTreeTrees` (`siteLocaleID`, `siteTreeID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTypeAttributeKeys`
--

CREATE TABLE `SiteTypeAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTypeAttributeValues`
--

CREATE TABLE `SiteTypeAttributeValues` (
  `siteSkeletonID` int(10) UNSIGNED DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTypes`
--

CREATE TABLE `SiteTypes` (
  `siteTypeID` int(10) UNSIGNED NOT NULL,
  `siteTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeThemeID` int(11) NOT NULL,
  `siteTypeHomePageTemplateID` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SiteTypes`
--

INSERT INTO `SiteTypes` (`siteTypeID`, `siteTypeHandle`, `siteTypeName`, `siteTypeThemeID`, `siteTypeHomePageTemplateID`, `pkgID`) VALUES
(1, 'default', 'Default Site Type', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SocialLinks`
--

CREATE TABLE `SocialLinks` (
  `ssHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slID` int(11) NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SocialLinks`
--

INSERT INTO `SocialLinks` (`ssHandle`, `url`, `slID`, `siteID`) VALUES
('youtube', '#', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Stacks`
--

CREATE TABLE `Stacks` (
  `stID` int(10) UNSIGNED NOT NULL,
  `stName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stType` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Stacks`
--

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`, `stMultilingualSection`) VALUES
(16, 'Header Site Title', 20, 246, 0),
(17, 'Header Navigation', 20, 247, 0),
(18, 'Footer Legal', 20, 248, 0),
(19, 'Footer Navigation', 20, 249, 0),
(20, 'Footer Contact', 20, 250, 0),
(21, 'Header: Navigation TH', 20, 251, 0),
(22, 'Header: Search TH', 20, 252, 0),
(23, 'Header: Navigation OtherTH', 20, 253, 0),
(24, 'Footer: Social TH', 20, 254, 0),
(25, 'Footer: Navigation TH', 20, 255, 0),
(26, 'Footer: Copyright TH', 20, 256, 0);

-- --------------------------------------------------------

--
-- Table structure for table `StackUsageRecord`
--

CREATE TABLE `StackUsageRecord` (
  `stack_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sccRecordID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) UNSIGNED NOT NULL,
  `pssPresetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(11) NOT NULL,
  `customClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customElementAttribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) NOT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  `boxShadowInset` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `StyleCustomizerInlineStyleSets`
--

INSERT INTO `StyleCustomizerInlineStyleSets` (`issID`, `customClass`, `customID`, `customElementAttribute`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `backgroundSize`, `backgroundPosition`, `borderColor`, `borderStyle`, `borderWidth`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `hideOnExtraSmallDevice`, `hideOnSmallDevice`, `hideOnMediumDevice`, `hideOnLargeDevice`, `boxShadowInset`) VALUES
(1, 'concrete5-org-stories', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerValueLists`
--

CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerValues`
--

CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) UNSIGNED NOT NULL,
  `scvlID` int(10) UNSIGNED DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SummaryCategories`
--

CREATE TABLE `SummaryCategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SummaryCategories`
--

INSERT INTO `SummaryCategories` (`id`, `name`, `handle`, `pkgID`) VALUES
(1, 'Page', 'page', NULL),
(2, 'Calendar Event', 'calendar_event', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SummaryFields`
--

CREATE TABLE `SummaryFields` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SummaryFields`
--

INSERT INTO `SummaryFields` (`id`, `name`, `handle`, `pkgID`) VALUES
(1, 'Title', 'title', NULL),
(2, 'Date', 'date', NULL),
(3, 'Start Date', 'date_start', NULL),
(4, 'End Date', 'date_end', NULL),
(5, 'Link', 'link', NULL),
(6, 'Description', 'description', NULL),
(7, 'Thumbnail', 'thumbnail', NULL),
(8, 'Categories', 'categories', NULL),
(9, 'Author', 'author', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SummaryTemplateCategories`
--

CREATE TABLE `SummaryTemplateCategories` (
  `template_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SummaryTemplateCategories`
--

INSERT INTO `SummaryTemplateCategories` (`template_id`, `category_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `SummaryTemplateFields`
--

CREATE TABLE `SummaryTemplateFields` (
  `id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SummaryTemplateFields`
--

INSERT INTO `SummaryTemplateFields` (`id`, `template_id`, `field_id`, `is_required`) VALUES
(1, 1, 1, 1),
(2, 1, 5, 1),
(3, 1, 6, 0),
(4, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SummaryTemplates`
--

CREATE TABLE `SummaryTemplates` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SummaryTemplates`
--

INSERT INTO `SummaryTemplates` (`id`, `icon`, `name`, `handle`, `pkgID`) VALUES
(1, 'blank.png', 'Default Summary Template', 'default', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SummaryTemplateTags`
--

CREATE TABLE `SummaryTemplateTags` (
  `template_id` int(11) NOT NULL,
  `designtag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemAntispamLibraries`
--

CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemCaptchaLibraries`
--

CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('recaptchaV3', 'reCAPTCHA v3', 0, 0),
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemContentEditorSnippets`
--

CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SystemContentEditorSnippets`
--

INSERT INTO `SystemContentEditorSnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
('page_name', 'Page Name', 1, 0),
('user_name', 'User Name', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemDatabaseMigrations`
--

CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SystemDatabaseMigrations`
--

INSERT INTO `SystemDatabaseMigrations` (`version`, `executed_at`) VALUES
('20140919000000', NULL),
('20140930000000', NULL),
('20141017000000', NULL),
('20141024000000', NULL),
('20141113000000', NULL),
('20141219000000', NULL),
('20150109000000', NULL),
('20150504000000', NULL),
('20150515000000', NULL),
('20150610000000', NULL),
('20150612000000', NULL),
('20150615000000', NULL),
('20150616000000', NULL),
('20150619000000', NULL),
('20150622000000', NULL),
('20150623000000', NULL),
('20150713000000', NULL),
('20150731000000', NULL),
('20151221000000', NULL),
('20160107000000', NULL),
('20160213000000', NULL),
('20160314000000', NULL),
('20160412000000', NULL),
('20160615000000', NULL),
('20160725000000', NULL),
('20161109000000', NULL),
('20161203000000', NULL),
('20161208000000', NULL),
('20161216000000', NULL),
('20161216100000', NULL),
('20170118000000', NULL),
('20170123000000', NULL),
('20170201000000', NULL),
('20170202000000', NULL),
('20170227063249', NULL),
('20170313000000', NULL),
('20170316000000', NULL),
('20170404000000', NULL),
('20170406000000', NULL),
('20170407000001', NULL),
('20170412000000', NULL),
('20170418000000', NULL),
('20170420000000', NULL),
('20170421000000', NULL),
('20170424000000', NULL),
('20170505000000', NULL),
('20170512000000', NULL),
('20170519000000', NULL),
('20170608000000', NULL),
('20170608100000', NULL),
('20170609000000', NULL),
('20170609100000', NULL),
('20170610000000', NULL),
('20170611000000', NULL),
('20170613000000', NULL),
('20170614000000', NULL),
('20170626000000', NULL),
('20170711151953', NULL),
('20170731021618', NULL),
('20170802000000', NULL),
('20170804000000', NULL),
('20170810000000', NULL),
('20170818000000', NULL),
('20170824000000', NULL),
('20170905000000', NULL),
('20170915000000', NULL),
('20170926000000', NULL),
('20171012000000', NULL),
('20171025000000', NULL),
('20171109000000', NULL),
('20171109065758', NULL),
('20171110032423', NULL),
('20171121000000', NULL),
('20171129190607', NULL),
('20171218000000', NULL),
('20171221194440', NULL),
('20180119000000', NULL),
('20180122213656', NULL),
('20180122220813', NULL),
('20180123000000', NULL),
('20180126000000', NULL),
('20180130000000', NULL),
('20180212000000', NULL),
('20180213000000', NULL),
('20180227035239', NULL),
('20180308043255', NULL),
('20180328215345', NULL),
('20180329183749', NULL),
('20180330080830', NULL),
('20180403143200', NULL),
('20180518153531', NULL),
('20180524000000', NULL),
('20180531000000', NULL),
('20180604000000', NULL),
('20180609000000', NULL),
('20180615000000', NULL),
('20180617000000', NULL),
('20180621222449', NULL),
('20180622192332', NULL),
('20180627000000', NULL),
('20180709175202', NULL),
('20180710203437', NULL),
('20180716000000', NULL),
('20180717000000', NULL),
('20180813220933', NULL),
('20180816210727', NULL),
('20180820205800', NULL),
('20180831213421', NULL),
('20180904165911', NULL),
('20180907091500', NULL),
('20180910000000', NULL),
('20180912113737', NULL),
('20180920000000', NULL),
('20180926000000', NULL),
('20180926070200', NULL),
('20180926070300', NULL),
('20181006212300', NULL),
('20181006212400', NULL),
('20181019010145', NULL),
('20181029223809', NULL),
('20181105102800', NULL),
('20181112211702', NULL),
('20181116072400', NULL),
('20181211000000', NULL),
('20181211100000', NULL),
('20181212000000', NULL),
('20181212221911', NULL),
('20181222183445', NULL),
('20190106000000', NULL),
('20190110194848', NULL),
('20190110231015', NULL),
('20190111181236', NULL),
('20190112000000', NULL),
('20190129000000', NULL),
('20190225000000', NULL),
('20190225184524', NULL),
('20190301133300', NULL),
('20190309000000', NULL),
('20190310000000', NULL),
('20190416224702', NULL),
('20190417180607', NULL),
('20190422235040', NULL),
('20190504005632', NULL),
('20190508232235', NULL),
('20190509000000', NULL),
('20190509205043', NULL),
('20190513164028', NULL),
('20190516204806', NULL),
('20190520171430', NULL),
('20190522202749', NULL),
('20190619141521', NULL),
('20190625177700', NULL),
('20190625177710', NULL),
('20190708000000', NULL),
('20190717090600', NULL),
('20190817000000', NULL),
('20190822160700', NULL),
('20190826000000', NULL),
('20190925072210', NULL),
('20191002000000', NULL),
('20191029175713', '2023-03-03 10:19:07'),
('20200116115000', '2023-03-03 10:19:07'),
('20200118043285', NULL),
('20200203000000', NULL),
('20200501000000', NULL),
('20200523051311', '2023-03-03 10:19:10'),
('20200604000000', '2023-03-03 10:19:11'),
('20200609145307', NULL),
('20200610162600', '2023-03-03 10:19:12'),
('20200611161800', '2023-03-03 10:19:13'),
('20200625191946', '2023-03-03 10:19:13'),
('20200626142348', '2023-03-03 10:19:14'),
('20200810000000', '2023-03-03 10:19:15'),
('20200814143401', '2023-03-03 10:19:16'),
('20200903201537', '2023-03-03 10:19:18'),
('20200923143317', '2023-03-03 10:19:19'),
('20200928000000', '2023-03-03 10:19:19'),
('20200928000001', '2023-03-03 10:19:19'),
('20200928000003', '2023-03-03 10:19:19'),
('20201015174802', '2023-03-03 10:19:20'),
('20201018000000', '2023-03-03 10:19:21'),
('20201022000000', '2023-03-03 10:19:22'),
('20201028143317', '2023-03-03 10:19:24'),
('20201028201040', '2023-03-03 10:19:25'),
('20201031143314', '2023-03-03 10:19:26'),
('20201110150900', '2023-03-03 10:19:27'),
('20201112172200', '2023-03-03 10:19:28'),
('20201116182100', NULL),
('20201119123200', '2023-03-03 10:19:28'),
('20201130130221', '2023-03-03 10:19:28'),
('20201205023211', '2023-03-03 10:19:37'),
('20201229143500', '2023-03-03 10:19:40'),
('20201231153200', '2023-03-03 10:19:41'),
('20210128224608', '2023-03-03 10:19:42'),
('20210205193115', '2023-03-03 10:19:43'),
('20210216184000', '2023-03-03 10:19:47'),
('20210331213100', '2023-03-03 10:19:47'),
('20210428212600', '2023-03-03 10:19:47'),
('20210528170900', '2023-03-03 10:19:49'),
('20210616131513', '2023-03-03 10:19:50'),
('20210622145600', NULL),
('20210623000000', NULL),
('20210712110100', '2023-03-03 10:19:51'),
('20210718190101', '2023-03-03 10:19:53'),
('20210722225853', '2023-03-03 10:19:54'),
('20210725000000', '2023-03-03 10:19:57'),
('20210729191135', '2023-03-03 10:19:57'),
('20210813173441', '2023-03-03 10:19:57'),
('20210815000000', '2023-03-03 10:20:05'),
('20210910234801', '2023-03-03 10:20:05'),
('20210926145823', '2023-03-03 10:20:07'),
('20211001145301', '2023-03-03 10:20:07'),
('20211020151701', '2023-03-03 10:20:07'),
('20211023155414', '2023-03-03 10:20:08'),
('20211028000000', '2023-03-03 10:20:08'),
('20211102171600', '2023-03-03 10:20:08'),
('20211102171700', '2023-03-03 10:20:09'),
('20211103142609', '2023-03-03 10:20:11'),
('20211104161958', '2023-03-03 10:20:12'),
('20211208145933', '2023-03-03 10:20:12'),
('20220114215506', '2023-03-03 10:20:13'),
('20220210120000', '2023-03-03 10:20:14'),
('20220301185614', '2023-03-03 10:20:14'),
('20220304163335', '2023-03-03 10:20:14'),
('20220307105409', '2023-03-03 10:20:15'),
('20220319043123', NULL),
('20220321122800', '2023-03-03 10:20:18'),
('20220331222557', '2023-03-03 10:20:19'),
('20220408000000', '2023-03-03 10:20:19'),
('20220503000000', '2023-03-03 10:20:20'),
('20220516191423', '2023-03-03 10:20:20'),
('20220614180000', '2023-03-03 10:20:21'),
('20220812035034', '2023-03-03 10:20:21'),
('20220908074900', '2023-03-03 10:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `SystemDatabaseQueryLog`
--

CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) UNSIGNED NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Tasks`
--

CREATE TABLE `Tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateLastStarted` int(11) DEFAULT NULL,
  `dateLastCompleted` int(11) DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Tasks`
--

INSERT INTO `Tasks` (`id`, `handle`, `dateLastStarted`, `dateLastCompleted`, `uID`, `pkgID`) VALUES
(1, 'clear_cache', NULL, NULL, NULL, NULL),
(2, 'generate_sitemap', NULL, NULL, NULL, NULL),
(3, 'rescan_files', NULL, NULL, NULL, NULL),
(4, 'check_automated_groups', NULL, NULL, NULL, NULL),
(5, 'deactivate_users', NULL, NULL, NULL, NULL),
(6, 'remove_old_page_versions', NULL, NULL, NULL, NULL),
(7, 'reindex_content', NULL, NULL, NULL, NULL),
(8, 'process_email', NULL, NULL, NULL, NULL),
(9, 'update_statistics', NULL, NULL, NULL, NULL),
(10, 'generate_thumbnails', NULL, NULL, NULL, NULL),
(11, 'remove_old_file_attachments', NULL, NULL, NULL, NULL),
(12, 'remove_unvalidated_users', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TaskSets`
--

CREATE TABLE `TaskSets` (
  `id` int(10) UNSIGNED NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `displayOrder` int(10) UNSIGNED NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TaskSets`
--

INSERT INTO `TaskSets` (`id`, `handle`, `name`, `displayOrder`, `pkgID`) VALUES
(1, 'maintenance', 'Maintenance', 0, NULL),
(2, 'seo', 'SEO and Search', 1, NULL),
(3, 'user_groups', 'Users and Groups', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TaskSetTasks`
--

CREATE TABLE `TaskSetTasks` (
  `task_id` int(10) UNSIGNED NOT NULL,
  `set_id` int(10) UNSIGNED NOT NULL,
  `displayOrder` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TaskSetTasks`
--

INSERT INTO `TaskSetTasks` (`task_id`, `set_id`, `displayOrder`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 1, 1),
(4, 3, 0),
(5, 3, 1),
(6, 1, 2),
(7, 2, 1),
(8, 3, 2),
(9, 2, 2),
(10, 1, 4),
(11, 1, 3),
(12, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `TopicTrees`
--

CREATE TABLE `TopicTrees` (
  `treeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeExpressEntrySiteResultNodes`
--

CREATE TABLE `TreeExpressEntrySiteResultNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeFileFolderNodes`
--

CREATE TABLE `TreeFileFolderNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `fslID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeFileFolderNodes`
--

INSERT INTO `TreeFileFolderNodes` (`treeNodeID`, `fslID`) VALUES
(12, 1),
(21, 1),
(27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `TreeFileNodes`
--

CREATE TABLE `TreeFileNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeFileNodes`
--

INSERT INTO `TreeFileNodes` (`treeNodeID`, `fID`) VALUES
(9, 1),
(10, 2),
(11, 3),
(13, 4),
(14, 5),
(15, 6),
(16, 7),
(17, 8),
(18, 9),
(19, 10),
(20, 11),
(22, 12),
(23, 13),
(24, 14),
(25, 15),
(26, 16),
(28, 17),
(29, 18),
(30, 19),
(31, 20),
(32, 21),
(33, 22),
(34, 23),
(35, 24),
(36, 25),
(37, 26),
(38, 27);

-- --------------------------------------------------------

--
-- Table structure for table `TreeGroupFolderNodes`
--

CREATE TABLE `TreeGroupFolderNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `contains` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeGroupFolderNodeSelectedGroupTypes`
--

CREATE TABLE `TreeGroupFolderNodeSelectedGroupTypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `treeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gtID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeGroupNodes`
--

CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeGroupNodes`
--

INSERT INTO `TreeGroupNodes` (`treeNodeID`, `gID`) VALUES
(2, 1),
(3, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodePermissionAssignments`
--

CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeNodePermissionAssignments`
--

INSERT INTO `TreeNodePermissionAssignments` (`treeNodeID`, `pkID`, `paID`) VALUES
(7, 39, 47),
(7, 40, 48),
(7, 41, 49),
(7, 42, 50),
(7, 43, 51),
(7, 44, 52),
(7, 45, 53),
(7, 46, 55),
(7, 47, 54),
(7, 48, 56),
(7, 66, 44),
(5, 101, 37),
(6, 101, 32),
(5, 102, 33),
(6, 102, 36),
(5, 103, 34),
(6, 103, 34),
(5, 104, 35),
(6, 104, 35),
(1, 147, 98),
(1, 148, 99),
(1, 149, 102),
(1, 150, 102),
(1, 151, 101),
(1, 152, 102),
(1, 153, 100);

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodes`
--

CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeParentID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `treeNodeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeNodes`
--

INSERT INTO `TreeNodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeName`, `dateModified`, `dateCreated`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
(1, 10, 1, 0, 0, '', '2023-03-03 10:05:01', '2023-03-03 10:05:01', 1, 1),
(2, 1, 1, 1, 0, '', '2023-03-03 10:05:01', '2023-03-03 10:05:01', 0, 1),
(3, 1, 1, 1, 1, '', '2023-03-03 10:05:01', '2023-03-03 10:05:01', 0, 1),
(4, 1, 1, 1, 2, '', '2023-03-03 10:05:01', '2023-03-03 10:05:01', 0, 1),
(5, 3, 2, 0, 0, '', '2023-03-03 10:05:03', '2023-03-03 10:05:03', 1, 5),
(6, 3, 2, 5, 0, 'Forms', '2023-03-03 10:05:03', '2023-03-03 10:05:03', 1, 6),
(7, 7, 3, 0, 0, '', '2023-03-07 08:18:02', '2023-03-03 10:05:53', 1, 7),
(8, 7, 3, 7, 0, 'Logo', '2023-03-03 11:16:16', '2023-03-03 11:16:04', 0, 7),
(9, 6, 3, 8, 0, '', '2023-03-03 11:16:16', '2023-03-03 11:16:16', 0, 7),
(10, 6, 3, 8, 1, '', '2023-03-03 11:16:16', '2023-03-03 11:16:16', 0, 7),
(11, 6, 3, 8, 2, '', '2023-03-03 11:16:16', '2023-03-03 11:16:16', 0, 7),
(12, 7, 3, 7, 1, 'News Detail', '2023-03-07 07:06:45', '2023-03-07 07:06:24', 0, 7),
(13, 6, 3, 12, 0, '', '2023-03-07 07:06:44', '2023-03-07 07:06:44', 0, 7),
(14, 6, 3, 12, 1, '', '2023-03-07 07:06:44', '2023-03-07 07:06:44', 0, 7),
(15, 6, 3, 12, 2, '', '2023-03-07 07:06:44', '2023-03-07 07:06:44', 0, 7),
(16, 6, 3, 12, 3, '', '2023-03-07 07:06:44', '2023-03-07 07:06:44', 0, 7),
(17, 6, 3, 12, 4, '', '2023-03-07 07:06:45', '2023-03-07 07:06:45', 0, 7),
(18, 6, 3, 12, 5, '', '2023-03-07 07:06:45', '2023-03-07 07:06:45', 0, 7),
(19, 6, 3, 12, 6, '', '2023-03-07 07:06:45', '2023-03-07 07:06:45', 0, 7),
(20, 6, 3, 12, 7, '', '2023-03-07 07:06:45', '2023-03-07 07:06:45', 0, 7),
(21, 7, 3, 7, 2, 'Video', '2023-03-07 08:17:50', '2023-03-07 08:17:26', 0, 7),
(22, 6, 3, 21, 0, '', '2023-03-07 08:17:47', '2023-03-07 08:17:47', 0, 7),
(23, 6, 3, 21, 1, '', '2023-03-07 08:17:47', '2023-03-07 08:17:47', 0, 7),
(24, 6, 3, 21, 2, '', '2023-03-07 08:17:48', '2023-03-07 08:17:48', 0, 7),
(25, 6, 3, 21, 3, '', '2023-03-07 08:17:48', '2023-03-07 08:17:48', 0, 7),
(26, 6, 3, 21, 4, '', '2023-03-07 08:17:50', '2023-03-07 08:17:50', 0, 7),
(27, 7, 3, 7, 3, 'Home', '2023-03-07 10:45:53', '2023-03-07 08:18:02', 0, 7),
(28, 6, 3, 27, 0, '', '2023-03-07 08:18:28', '2023-03-07 08:18:28', 0, 7),
(29, 6, 3, 27, 1, '', '2023-03-07 08:18:29', '2023-03-07 08:18:29', 0, 7),
(30, 6, 3, 27, 2, '', '2023-03-07 08:18:30', '2023-03-07 08:18:30', 0, 7),
(31, 6, 3, 27, 3, '', '2023-03-07 08:18:31', '2023-03-07 08:18:31', 0, 7),
(32, 6, 3, 27, 4, '', '2023-03-07 08:18:33', '2023-03-07 08:18:33', 0, 7),
(33, 6, 3, 27, 5, '', '2023-03-07 08:18:34', '2023-03-07 08:18:34', 0, 7),
(34, 6, 3, 27, 6, '', '2023-03-07 08:18:34', '2023-03-07 08:18:34', 0, 7),
(35, 6, 3, 27, 7, '', '2023-03-07 10:45:52', '2023-03-07 10:45:52', 0, 7),
(36, 6, 3, 27, 8, '', '2023-03-07 10:45:52', '2023-03-07 10:45:52', 0, 7),
(37, 6, 3, 27, 9, '', '2023-03-07 10:45:53', '2023-03-07 10:45:53', 0, 7),
(38, 6, 3, 27, 10, '', '2023-03-07 10:45:53', '2023-03-07 10:45:53', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodeTypes`
--

CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeNodeTypes`
--

INSERT INTO `TreeNodeTypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'category', 0),
(3, 'express_entry_category', 0),
(4, 'express_entry_results', 0),
(5, 'topic', 0),
(6, 'file', 0),
(7, 'file_folder', 0),
(8, 'search_preset', 0),
(9, 'express_entry_site_results', 0),
(10, 'group_folder', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Trees`
--

CREATE TABLE `Trees` (
  `treeID` int(10) UNSIGNED NOT NULL,
  `treeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Trees`
--

INSERT INTO `Trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1, 1, '2023-03-03 10:05:01', 1),
(2, 2, '2023-03-03 10:05:03', 5),
(3, 4, '2023-03-03 10:05:53', 7);

-- --------------------------------------------------------

--
-- Table structure for table `TreeSearchQueryNodes`
--

CREATE TABLE `TreeSearchQueryNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `savedSearchID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeTypes`
--

CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) UNSIGNED NOT NULL,
  `treeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeTypes`
--

INSERT INTO `TreeTypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'express_entry_results', 0),
(3, 'topic', 0),
(4, 'file_manager', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UsedStringLog`
--

CREATE TABLE `UsedStringLog` (
  `id` int(10) UNSIGNED NOT NULL,
  `usedString` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeKeys`
--

CREATE TABLE `UserAttributeKeys` (
  `uakProfileDisplay` tinyint(1) NOT NULL,
  `uakProfileEdit` tinyint(1) NOT NULL,
  `uakProfileEditRequired` tinyint(1) NOT NULL,
  `uakRegisterEdit` tinyint(1) NOT NULL,
  `uakRegisterEditRequired` tinyint(1) NOT NULL,
  `uakMemberListDisplay` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserAttributeKeys`
--

INSERT INTO `UserAttributeKeys` (`uakProfileDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `uakMemberListDisplay`, `akID`) VALUES
(0, 1, 0, 1, 0, 0, 14),
(0, 1, 0, 1, 0, 0, 15),
(0, 0, 0, 0, 0, 0, 18);

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeValues`
--

CREATE TABLE `UserAttributeValues` (
  `uID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserDeactivatedNotifications`
--

CREATE TABLE `UserDeactivatedNotifications` (
  `userID` int(10) UNSIGNED NOT NULL,
  `actorID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserFavoriteFolders`
--

CREATE TABLE `UserFavoriteFolders` (
  `treeNodeFolderId` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserGroups`
--

CREATE TABLE `UserGroups` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `grID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserLoginAttempts`
--

CREATE TABLE `UserLoginAttempts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `userId` int(10) UNSIGNED NOT NULL,
  `utcDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `uHomeFileManagerFolderID` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPointActions`
--

CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL,
  `upaHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserPointActions`
--

INSERT INTO `UserPointActions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
(1, 'won_badge', 'Won a Badge', 5, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserPointHistory`
--

CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8mb4_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessages`
--

CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8mb4_unicode_ci,
  `uToID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessagesAttachments`
--

CREATE TABLE `UserPrivateMessagesAttachments` (
  `msgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessagesTo`
--

CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `uID` int(10) UNSIGNED NOT NULL,
  `uName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uIsActive` tinyint(1) NOT NULL,
  `uIsFullRecord` tinyint(1) NOT NULL,
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uDateAdded` datetime NOT NULL,
  `uLastPasswordChange` datetime NOT NULL,
  `uHasAvatar` tinyint(1) NOT NULL,
  `uLastOnline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) UNSIGNED DEFAULT '0',
  `uNumLogins` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastIP` longtext COLLATE utf8mb4_unicode_ci,
  `uTimezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uIsPasswordReset` tinyint(1) NOT NULL,
  `uDateLastUpdated` datetime DEFAULT NULL,
  `uHomeFileManagerFolderID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsFullRecord`, `uIsValidated`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uLastIP`, `uTimezone`, `uDefaultLanguage`, `uIsPasswordReset`, `uDateLastUpdated`, `uHomeFileManagerFolderID`) VALUES
(1, 'admin', 'chakrin@kos.co.th', '$2y$12$UItHB46yhflacWf6hOM5vOsbAdzG3qvUMoAVSF23YiWqW190P2k1e', 1, 1, 1, '2023-03-03 10:05:01', '2023-03-03 10:05:01', 0, 1678784220, 1678676257, 1678417374, 9, 1, '3131f246', NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UserSearchIndexAttributes`
--

CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) UNSIGNED NOT NULL,
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserSignupNotifications`
--

CREATE TABLE `UserSignupNotifications` (
  `usID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserSignups`
--

CREATE TABLE `UserSignups` (
  `usID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserValidationHashes`
--

CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserWorkflowProgress`
--

CREATE TABLE `UserWorkflowProgress` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgress`
--

CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `wpCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressCategories`
--

CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) UNSIGNED NOT NULL,
  `wpCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WorkflowProgressCategories`
--

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL),
(4, 'calendar_event', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressHistory`
--

CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) UNSIGNED NOT NULL,
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WorkflowProgressHistory`
--

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2023-03-03 11:12:50', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"2\";}'),
(2, 2, '2023-03-07 06:49:34', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:258;s:4:\"cvID\";s:1:\"1\";}'),
(3, 3, '2023-03-07 06:51:38', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:259;s:4:\"cvID\";s:1:\"1\";}'),
(4, 4, '2023-03-07 06:51:47', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"4\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:260;s:4:\"cvID\";s:1:\"1\";}'),
(5, 5, '2023-03-07 06:52:02', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:261;s:4:\"cvID\";s:1:\"1\";}'),
(6, 6, '2023-03-07 06:52:14', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"6\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:262;s:4:\"cvID\";s:1:\"1\";}'),
(7, 7, '2023-03-07 06:52:50', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"7\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:263;s:4:\"cvID\";s:1:\"1\";}'),
(8, 8, '2023-03-07 06:53:06', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"8\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:264;s:4:\"cvID\";s:1:\"1\";}'),
(9, 9, '2023-03-07 06:53:16', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:265;s:4:\"cvID\";s:1:\"1\";}'),
(10, 10, '2023-03-07 06:53:26', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:266;s:4:\"cvID\";s:1:\"1\";}'),
(11, 11, '2023-03-07 06:53:33', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"11\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:267;s:4:\"cvID\";s:1:\"1\";}'),
(12, 12, '2023-03-07 06:53:42', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"12\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:268;s:4:\"cvID\";s:1:\"1\";}'),
(13, 13, '2023-03-07 06:53:51', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"13\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:269;s:4:\"cvID\";s:1:\"1\";}'),
(14, 14, '2023-03-07 06:53:58', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"14\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:270;s:4:\"cvID\";s:1:\"1\";}'),
(15, 15, '2023-03-07 06:54:11', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"15\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:271;s:4:\"cvID\";s:1:\"1\";}'),
(16, 16, '2023-03-07 06:54:18', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"16\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:272;s:4:\"cvID\";s:1:\"1\";}'),
(17, 17, '2023-03-07 06:55:11', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"17\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:273;s:4:\"cvID\";s:1:\"1\";}'),
(18, 18, '2023-03-07 06:55:22', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"18\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:274;s:4:\"cvID\";s:1:\"1\";}'),
(19, 19, '2023-03-07 06:55:33', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"19\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:275;s:4:\"cvID\";s:1:\"1\";}'),
(20, 20, '2023-03-07 06:55:41', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"20\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:276;s:4:\"cvID\";s:1:\"1\";}'),
(21, 21, '2023-03-07 06:55:48', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"21\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:277;s:4:\"cvID\";s:1:\"1\";}'),
(22, 22, '2023-03-07 06:55:58', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"22\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:274;s:4:\"cvID\";s:1:\"2\";}'),
(23, 23, '2023-03-07 06:56:05', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"23\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:278;s:4:\"cvID\";s:1:\"1\";}'),
(24, 24, '2023-03-07 06:56:13', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"24\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:279;s:4:\"cvID\";s:1:\"1\";}'),
(25, 25, '2023-03-07 06:56:19', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"25\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:280;s:4:\"cvID\";s:1:\"1\";}'),
(26, 26, '2023-03-07 06:56:26', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"26\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:281;s:4:\"cvID\";s:1:\"1\";}'),
(27, 27, '2023-03-07 06:56:33', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"27\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:282;s:4:\"cvID\";s:1:\"1\";}'),
(28, 28, '2023-03-07 06:56:48', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"28\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:283;s:4:\"cvID\";s:1:\"1\";}'),
(29, 29, '2023-03-07 06:56:54', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"29\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:284;s:4:\"cvID\";s:1:\"1\";}'),
(30, 30, '2023-03-07 06:57:03', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"30\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:285;s:4:\"cvID\";s:1:\"1\";}'),
(31, 31, '2023-03-07 06:57:10', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"31\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:286;s:4:\"cvID\";s:1:\"1\";}'),
(32, 32, '2023-03-07 06:57:19', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"32\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:287;s:4:\"cvID\";s:1:\"1\";}'),
(33, 33, '2023-03-07 06:57:26', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"33\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:288;s:4:\"cvID\";s:1:\"1\";}'),
(34, 34, '2023-03-07 07:08:54', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"34\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"1\";}'),
(35, 35, '2023-03-07 07:09:10', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"35\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"2\";}'),
(36, 36, '2023-03-07 07:10:18', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"36\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:291;s:4:\"cvID\";s:1:\"1\";}'),
(37, 37, '2023-03-07 07:11:15', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"37\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:292;s:4:\"cvID\";s:1:\"1\";}'),
(38, 38, '2023-03-07 07:12:10', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"38\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:293;s:4:\"cvID\";s:1:\"1\";}'),
(39, 39, '2023-03-07 07:13:16', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"39\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:294;s:4:\"cvID\";s:1:\"1\";}'),
(40, 40, '2023-03-07 07:14:20', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"40\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:295;s:4:\"cvID\";s:1:\"1\";}'),
(41, 41, '2023-03-07 07:16:55', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"41\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"3\";}'),
(42, 42, '2023-03-07 07:18:34', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"42\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"4\";}'),
(43, 43, '2023-03-07 07:18:40', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"43\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"5\";}'),
(44, 44, '2023-03-07 07:20:49', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"44\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"6\";}'),
(45, 45, '2023-03-07 07:21:51', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"45\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"7\";}'),
(46, 46, '2023-03-07 07:39:07', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"46\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"8\";}'),
(47, 47, '2023-03-07 08:03:58', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"47\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:296;s:4:\"cvID\";s:1:\"1\";}'),
(48, 48, '2023-03-07 08:04:04', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"48\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:296;s:4:\"cvID\";s:1:\"2\";}'),
(49, 49, '2023-03-07 08:04:17', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"49\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:297;s:4:\"cvID\";s:1:\"1\";}'),
(50, 50, '2023-03-07 08:04:23', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"50\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:297;s:4:\"cvID\";s:1:\"2\";}'),
(51, 51, '2023-03-07 08:04:31', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"51\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:298;s:4:\"cvID\";s:1:\"1\";}'),
(52, 52, '2023-03-07 08:04:36', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"52\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:298;s:4:\"cvID\";s:1:\"2\";}'),
(53, 53, '2023-03-07 08:04:44', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"53\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:299;s:4:\"cvID\";s:1:\"1\";}'),
(54, 54, '2023-03-07 08:04:49', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"54\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:299;s:4:\"cvID\";s:1:\"2\";}'),
(55, 55, '2023-03-07 08:07:48', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"55\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"9\";}'),
(56, 56, '2023-03-07 08:08:28', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"56\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"10\";}'),
(57, 57, '2023-03-07 08:19:21', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"57\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"11\";}'),
(58, 58, '2023-03-07 08:21:09', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"58\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"12\";}'),
(59, 59, '2023-03-07 08:22:14', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"59\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"13\";}'),
(60, 60, '2023-03-07 08:44:11', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"60\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"14\";}'),
(61, 61, '2023-03-07 10:39:15', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"61\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"15\";}'),
(62, 62, '2023-03-07 10:40:14', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"62\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"16\";}'),
(63, 63, '2023-03-07 10:54:47', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"63\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"17\";}'),
(64, 64, '2023-03-07 11:04:14', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"64\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"18\";}'),
(65, 65, '2023-03-09 05:36:15', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"65\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"19\";}'),
(66, 66, '2023-03-09 05:42:34', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"66\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"20\";}'),
(67, 67, '2023-03-09 05:49:35', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"67\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"21\";}'),
(68, 68, '2023-03-09 05:54:37', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"68\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"22\";}'),
(69, 69, '2023-03-09 06:06:35', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"69\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"23\";}'),
(70, 70, '2023-03-10 05:55:01', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"70\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"24\";}'),
(71, 71, '2023-03-10 06:32:29', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"71\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"25\";}'),
(72, 72, '2023-03-10 06:33:05', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"72\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"26\";}'),
(73, 73, '2023-03-10 07:15:05', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"73\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"27\";}'),
(74, 74, '2023-03-10 08:00:37', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"74\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"28\";}'),
(75, 75, '2023-03-10 09:26:44', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"75\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"29\";}'),
(76, 76, '2023-03-10 09:44:34', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"76\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"30\";}'),
(77, 77, '2023-03-10 10:15:18', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"77\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"31\";}'),
(78, 78, '2023-03-10 10:16:40', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"78\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"32\";}');
INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(79, 79, '2023-03-10 10:17:07', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"79\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"33\";}'),
(80, 1, '2023-03-13 07:58:30', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"80\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"34\";}'),
(81, 2, '2023-03-13 09:24:23', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"81\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"3\";}'),
(82, 3, '2023-03-13 09:25:46', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"82\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"4\";}'),
(83, 4, '2023-03-13 09:26:24', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"83\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"5\";}'),
(84, 5, '2023-03-13 09:27:30', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"84\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"6\";}'),
(85, 6, '2023-03-13 09:27:46', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"85\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:291;s:4:\"cvID\";s:1:\"2\";}'),
(86, 7, '2023-03-13 09:28:12', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"86\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:292;s:4:\"cvID\";s:1:\"2\";}'),
(87, 8, '2023-03-13 09:28:19', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"87\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:293;s:4:\"cvID\";s:1:\"2\";}'),
(88, 9, '2023-03-13 09:28:37', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"88\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:294;s:4:\"cvID\";s:1:\"2\";}'),
(89, 10, '2023-03-13 09:28:47', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"89\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:295;s:4:\"cvID\";s:1:\"2\";}'),
(90, 11, '2023-03-13 09:37:36', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"90\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"35\";}'),
(91, 12, '2023-03-13 11:45:15', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"91\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"36\";}');

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressNotifications`
--

CREATE TABLE `WorkflowProgressNotifications` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowRequestObjects`
--

CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) UNSIGNED NOT NULL,
  `wrObject` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WorkflowRequestObjects`
--

INSERT INTO `WorkflowRequestObjects` (`wrID`, `wrObject`) VALUES
(1, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"2\";}'),
(2, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:258;s:4:\"cvID\";s:1:\"1\";}'),
(3, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:259;s:4:\"cvID\";s:1:\"1\";}'),
(4, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"4\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:260;s:4:\"cvID\";s:1:\"1\";}'),
(5, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:261;s:4:\"cvID\";s:1:\"1\";}'),
(6, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"6\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:262;s:4:\"cvID\";s:1:\"1\";}'),
(7, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"7\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:263;s:4:\"cvID\";s:1:\"1\";}'),
(8, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"8\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:264;s:4:\"cvID\";s:1:\"1\";}'),
(9, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:265;s:4:\"cvID\";s:1:\"1\";}'),
(10, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:266;s:4:\"cvID\";s:1:\"1\";}'),
(11, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"11\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:267;s:4:\"cvID\";s:1:\"1\";}'),
(12, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"12\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:268;s:4:\"cvID\";s:1:\"1\";}'),
(13, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"13\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:269;s:4:\"cvID\";s:1:\"1\";}'),
(14, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"14\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:270;s:4:\"cvID\";s:1:\"1\";}'),
(15, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"15\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:271;s:4:\"cvID\";s:1:\"1\";}'),
(16, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"16\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:272;s:4:\"cvID\";s:1:\"1\";}'),
(17, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"17\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:273;s:4:\"cvID\";s:1:\"1\";}'),
(18, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"18\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:274;s:4:\"cvID\";s:1:\"1\";}'),
(19, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"19\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:275;s:4:\"cvID\";s:1:\"1\";}'),
(20, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"20\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:276;s:4:\"cvID\";s:1:\"1\";}'),
(21, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"21\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:277;s:4:\"cvID\";s:1:\"1\";}'),
(22, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"22\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:274;s:4:\"cvID\";s:1:\"2\";}'),
(23, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"23\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:278;s:4:\"cvID\";s:1:\"1\";}'),
(24, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"24\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:279;s:4:\"cvID\";s:1:\"1\";}'),
(25, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"25\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:280;s:4:\"cvID\";s:1:\"1\";}'),
(26, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"26\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:281;s:4:\"cvID\";s:1:\"1\";}'),
(27, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"27\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:282;s:4:\"cvID\";s:1:\"1\";}'),
(28, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"28\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:283;s:4:\"cvID\";s:1:\"1\";}'),
(29, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"29\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:284;s:4:\"cvID\";s:1:\"1\";}'),
(30, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"30\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:285;s:4:\"cvID\";s:1:\"1\";}'),
(31, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"31\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:286;s:4:\"cvID\";s:1:\"1\";}'),
(32, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"32\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:287;s:4:\"cvID\";s:1:\"1\";}'),
(33, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"33\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:288;s:4:\"cvID\";s:1:\"1\";}'),
(34, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"34\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"1\";}'),
(35, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"35\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"2\";}'),
(36, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"36\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:291;s:4:\"cvID\";s:1:\"1\";}'),
(37, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"37\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:292;s:4:\"cvID\";s:1:\"1\";}'),
(38, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"38\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:293;s:4:\"cvID\";s:1:\"1\";}'),
(39, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"39\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:294;s:4:\"cvID\";s:1:\"1\";}'),
(40, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"40\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:295;s:4:\"cvID\";s:1:\"1\";}'),
(41, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"41\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"3\";}'),
(42, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"42\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"4\";}'),
(43, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"43\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"5\";}'),
(44, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"44\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"6\";}'),
(45, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"45\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"7\";}'),
(46, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"46\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"8\";}'),
(47, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"47\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:296;s:4:\"cvID\";s:1:\"1\";}'),
(48, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"48\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:296;s:4:\"cvID\";s:1:\"2\";}'),
(49, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"49\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:297;s:4:\"cvID\";s:1:\"1\";}'),
(50, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"50\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:297;s:4:\"cvID\";s:1:\"2\";}'),
(51, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"51\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:298;s:4:\"cvID\";s:1:\"1\";}'),
(52, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"52\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:298;s:4:\"cvID\";s:1:\"2\";}'),
(53, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"53\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:299;s:4:\"cvID\";s:1:\"1\";}'),
(54, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"54\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:299;s:4:\"cvID\";s:1:\"2\";}'),
(55, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"55\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"9\";}'),
(56, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"56\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"10\";}'),
(57, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"57\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"11\";}'),
(58, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"58\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"12\";}'),
(59, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"59\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"13\";}'),
(60, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"60\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"14\";}'),
(61, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"61\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"15\";}'),
(62, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"62\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"16\";}'),
(63, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"63\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"17\";}'),
(64, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"64\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"18\";}'),
(65, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"65\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"19\";}'),
(66, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"66\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"20\";}'),
(67, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"67\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"21\";}'),
(68, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"68\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"22\";}'),
(69, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"69\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"23\";}'),
(70, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"70\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"24\";}'),
(71, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"71\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"25\";}'),
(72, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"72\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"26\";}'),
(73, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"73\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"27\";}'),
(74, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"74\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"28\";}'),
(75, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"75\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"29\";}'),
(76, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"76\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"30\";}'),
(77, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"77\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"31\";}'),
(78, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"78\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"32\";}'),
(79, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"79\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"33\";}'),
(80, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"80\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"34\";}'),
(81, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"81\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"3\";}');
INSERT INTO `WorkflowRequestObjects` (`wrID`, `wrObject`) VALUES
(82, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"82\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"4\";}'),
(83, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"83\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"5\";}'),
(84, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"84\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:290;s:4:\"cvID\";s:1:\"6\";}'),
(85, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"85\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:291;s:4:\"cvID\";s:1:\"2\";}'),
(86, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"86\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:292;s:4:\"cvID\";s:1:\"2\";}'),
(87, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"87\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:293;s:4:\"cvID\";s:1:\"2\";}'),
(88, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"88\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:294;s:4:\"cvID\";s:1:\"2\";}'),
(89, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"89\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:295;s:4:\"cvID\";s:1:\"2\";}'),
(90, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"90\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"35\";}'),
(91, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":12:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:70:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0keepOtherScheduling\";b:0;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"91\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:2:\"36\";}');

-- --------------------------------------------------------

--
-- Table structure for table `Workflows`
--

CREATE TABLE `Workflows` (
  `wfID` int(10) UNSIGNED NOT NULL,
  `wfName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wftID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowTypes`
--

CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) UNSIGNED NOT NULL,
  `wftHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WorkflowTypes`
--

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

-- --------------------------------------------------------

--
-- Table structure for table `_StyleCustomizerValues`
--

CREATE TABLE `_StyleCustomizerValues` (
  `scvID` int(10) UNSIGNED NOT NULL,
  `scvlID` int(10) UNSIGNED DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`),
  ADD KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  ADD KEY `arID` (`arID`),
  ADD KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`);

--
-- Indexes for table `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  ADD PRIMARY KEY (`arLayoutPresetID`),
  ADD KEY `arLayoutID` (`arLayoutID`),
  ADD KEY `arLayoutPresetName` (`arLayoutPresetName`);

--
-- Indexes for table `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexes for table `AreaLayoutsUsingPresets`
--
ALTER TABLE `AreaLayoutsUsingPresets`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexes for table `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `AreaPermissionAssignments`
--
ALTER TABLE `AreaPermissionAssignments`
  ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessList`
--
ALTER TABLE `AreaPermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessListCustom`
--
ALTER TABLE `AreaPermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexes for table `Areas`
--
ALTER TABLE `Areas`
  ADD PRIMARY KEY (`arID`),
  ADD KEY `arIsGlobal` (`arIsGlobal`),
  ADD KEY `cID` (`cID`),
  ADD KEY `arHandle` (`arHandle`),
  ADD KEY `arParentID` (`arParentID`);

--
-- Indexes for table `atAddress`
--
ALTER TABLE `atAddress`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atBoolean`
--
ALTER TABLE `atBoolean`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDateTime`
--
ALTER TABLE `atDateTime`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDefault`
--
ALTER TABLE `atDefault`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atDuration`
--
ALTER TABLE `atDuration`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atDurationSettings`
--
ALTER TABLE `atDurationSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atEmptySettings`
--
ALTER TABLE `atEmptySettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atExpress`
--
ALTER TABLE `atExpress`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atExpressSelectedEntries`
--
ALTER TABLE `atExpressSelectedEntries`
  ADD PRIMARY KEY (`avID`,`exEntryID`),
  ADD KEY `IDX_C9D404BBA2A82A5D` (`avID`),
  ADD KEY `IDX_C9D404BB6DCB6296` (`exEntryID`);

--
-- Indexes for table `atExpressSettings`
--
ALTER TABLE `atExpressSettings`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_E8F67F0FCE2D7284` (`exEntityID`);

--
-- Indexes for table `atFile`
--
ALTER TABLE `atFile`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_73D17D61E3111F45` (`fID`);

--
-- Indexes for table `atFileSettings`
--
ALTER TABLE `atFileSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atNumber`
--
ALTER TABLE `atNumber`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atSelect`
--
ALTER TABLE `atSelect`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atSelectedSocialLinks`
--
ALTER TABLE `atSelectedSocialLinks`
  ADD PRIMARY KEY (`avsID`),
  ADD KEY `IDX_10743709A2A82A5D` (`avID`);

--
-- Indexes for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  ADD PRIMARY KEY (`avTreeTopicNodeID`),
  ADD KEY `IDX_E42A7D5BA2A82A5D` (`avID`);

--
-- Indexes for table `atSelectOptionLists`
--
ALTER TABLE `atSelectOptionLists`
  ADD PRIMARY KEY (`avSelectOptionListID`);

--
-- Indexes for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  ADD PRIMARY KEY (`avSelectOptionID`),
  ADD KEY `IDX_797414B0CB59257C` (`avSelectOptionListID`);

--
-- Indexes for table `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
  ADD PRIMARY KEY (`avID`,`avSelectOptionID`),
  ADD KEY `IDX_40C97EC3A2A82A5D` (`avID`),
  ADD KEY `IDX_40C97EC3E584C274` (`avSelectOptionID`);

--
-- Indexes for table `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
  ADD PRIMARY KEY (`akID`),
  ADD UNIQUE KEY `UNIQ_5D514424CB59257C` (`avSelectOptionListID`);

--
-- Indexes for table `atSite`
--
ALTER TABLE `atSite`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_960D4295521D8435` (`siteID`);

--
-- Indexes for table `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atTextSettings`
--
ALTER TABLE `atTextSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atTopic`
--
ALTER TABLE `atTopic`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  ADD PRIMARY KEY (`akCategoryID`),
  ADD UNIQUE KEY `UNIQ_A2A0CC67FA0337B` (`akCategoryHandle`),
  ADD KEY `IDX_A2A0CC67CE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`akCategoryID`),
  ADD KEY `akCategoryHandle` (`akCategoryHandle`);

--
-- Indexes for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_DCA32C62A12CFE33` (`atID`),
  ADD KEY `IDX_DCA32C62B059B76B` (`akCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
  ADD PRIMARY KEY (`akID`,`asID`),
  ADD KEY `IDX_222F72D8B6561A7E` (`akID`),
  ADD KEY `IDX_222F72D8A463E8B6` (`asID`);

--
-- Indexes for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `IDX_FCA02D5FB059B76B` (`akCategoryID`),
  ADD KEY `asHandle` (`asHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
  ADD PRIMARY KEY (`akCategoryID`,`atID`),
  ADD KEY `IDX_49A9CABEB059B76B` (`akCategoryID`),
  ADD KEY `IDX_49A9CABEA12CFE33` (`atID`);

--
-- Indexes for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  ADD PRIMARY KEY (`atID`),
  ADD UNIQUE KEY `UNIQ_53580A7F46AA0F38` (`atHandle`),
  ADD KEY `IDX_53580A7FCE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`atID`);

--
-- Indexes for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_DCCE7864B6561A7E` (`akID`);

--
-- Indexes for table `atUserGroupSettings`
--
ALTER TABLE `atUserGroupSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
  ADD PRIMARY KEY (`authTypeID`),
  ADD UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `BannedWords`
--
ALTER TABLE `BannedWords`
  ADD PRIMARY KEY (`bwID`);

--
-- Indexes for table `BasicWorkflowPermissionAssignments`
--
ALTER TABLE `BasicWorkflowPermissionAssignments`
  ADD PRIMARY KEY (`wfID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `BasicWorkflowProgressData`
--
ALTER TABLE `BasicWorkflowProgressData`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `uIDStarted` (`uIDStarted`),
  ADD KEY `uIDCompleted` (`uIDCompleted`);

--
-- Indexes for table `BlockPermissionAssignments`
--
ALTER TABLE `BlockPermissionAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  ADD KEY `bID` (`bID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `Blocks`
--
ALTER TABLE `Blocks`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `btID` (`btID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessList`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessListCustom`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexes for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
  ADD PRIMARY KEY (`btID`);

--
-- Indexes for table `BlockTypeSetBlockTypes`
--
ALTER TABLE `BlockTypeSetBlockTypes`
  ADD PRIMARY KEY (`btID`,`btsID`),
  ADD KEY `btsID` (`btsID`,`displayOrder`);

--
-- Indexes for table `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
  ADD PRIMARY KEY (`btsID`),
  ADD UNIQUE KEY `btsHandle` (`btsHandle`),
  ADD KEY `btsDisplayOrder` (`btsDisplayOrder`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `BoardConfiguredDataSourceConfiguration`
--
ALTER TABLE `BoardConfiguredDataSourceConfiguration`
  ADD PRIMARY KEY (`configurationID`),
  ADD UNIQUE KEY `UNIQ_80879512E2D47DD5` (`configuredDataSourceID`);

--
-- Indexes for table `BoardConfiguredDataSourceConfigurationCalendarEvent`
--
ALTER TABLE `BoardConfiguredDataSourceConfigurationCalendarEvent`
  ADD PRIMARY KEY (`configurationID`),
  ADD KEY `IDX_DE5A529911C85723` (`caID`);

--
-- Indexes for table `BoardConfiguredDataSourceConfigurationPage`
--
ALTER TABLE `BoardConfiguredDataSourceConfigurationPage`
  ADD PRIMARY KEY (`configurationID`);

--
-- Indexes for table `BoardConfiguredDataSources`
--
ALTER TABLE `BoardConfiguredDataSources`
  ADD PRIMARY KEY (`configuredDataSourceID`),
  ADD KEY `IDX_481DA3EF2571BEE` (`boardID`),
  ADD KEY `IDX_481DA3EF3C4EAFF2` (`dataSourceID`);

--
-- Indexes for table `BoardCustomSlotTemplates`
--
ALTER TABLE `BoardCustomSlotTemplates`
  ADD PRIMARY KEY (`boardID`,`slotTemplateID`),
  ADD KEY `IDX_A972DD602571BEE` (`boardID`),
  ADD KEY `IDX_A972DD60E7630775` (`slotTemplateID`);

--
-- Indexes for table `BoardDataSources`
--
ALTER TABLE `BoardDataSources`
  ADD PRIMARY KEY (`dataSourceID`),
  ADD KEY `IDX_DACB5A9ACE45CBB0` (`pkgID`);

--
-- Indexes for table `BoardDesignerCustomElementItems`
--
ALTER TABLE `BoardDesignerCustomElementItems`
  ADD PRIMARY KEY (`itemId`),
  ADD KEY `IDX_C3E81E43A1BF9938` (`boardItemID`),
  ADD KEY `IDX_C3E81E43DA67F394` (`customElementID`);

--
-- Indexes for table `BoardDesignerCustomElements`
--
ALTER TABLE `BoardDesignerCustomElements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D2D0FCBDFD71026C` (`uID`),
  ADD KEY `IDX_D2D0FCBD80D42955` (`slotTemplate_id`);

--
-- Indexes for table `BoardInstanceItemBatches`
--
ALTER TABLE `BoardInstanceItemBatches`
  ADD PRIMARY KEY (`boardInstanceItemBatchID`),
  ADD KEY `IDX_968D5F552E21467` (`boardInstanceID`);

--
-- Indexes for table `BoardInstanceItems`
--
ALTER TABLE `BoardInstanceItems`
  ADD PRIMARY KEY (`boardInstanceItemID`),
  ADD KEY `IDX_285D2C82A1BF9938` (`boardItemID`),
  ADD KEY `IDX_285D2C82E2D47DD5` (`configuredDataSourceID`),
  ADD KEY `IDX_285D2C822E21467` (`boardInstanceID`),
  ADD KEY `IDX_285D2C82E9D76F8E` (`boardInstanceItemBatchID`);

--
-- Indexes for table `BoardInstances`
--
ALTER TABLE `BoardInstances`
  ADD PRIMARY KEY (`boardInstanceID`),
  ADD KEY `IDX_8B85BCCB2571BEE` (`boardID`),
  ADD KEY `IDX_8B85BCCB521D8435` (`siteID`);

--
-- Indexes for table `BoardInstanceSlotRules`
--
ALTER TABLE `BoardInstanceSlotRules`
  ADD PRIMARY KEY (`boardInstanceSlotRuleID`),
  ADD KEY `IDX_4BF1A09D2E21467` (`boardInstanceID`),
  ADD KEY `IDX_4BF1A09DFD71026C` (`uID`);

--
-- Indexes for table `BoardInstanceSlots`
--
ALTER TABLE `BoardInstanceSlots`
  ADD PRIMARY KEY (`boardInstanceSlotID`),
  ADD KEY `IDX_137F01F2E21467` (`boardInstanceID`),
  ADD KEY `IDX_137F01F5DA0FB8` (`template_id`);

--
-- Indexes for table `BoardItemCategories`
--
ALTER TABLE `BoardItemCategories`
  ADD PRIMARY KEY (`boardItemCategoryID`),
  ADD KEY `IDX_BEF09673A1BF9938` (`boardItemID`);

--
-- Indexes for table `BoardItems`
--
ALTER TABLE `BoardItems`
  ADD PRIMARY KEY (`boardItemID`),
  ADD KEY `IDX_E831ECA1E3111F45` (`fID`),
  ADD KEY `IDX_E831ECA13C4EAFF2` (`dataSourceID`),
  ADD KEY `uniqueItemId` (`uniqueItemId`);

--
-- Indexes for table `BoardItemTags`
--
ALTER TABLE `BoardItemTags`
  ADD PRIMARY KEY (`boardItemTagID`),
  ADD KEY `IDX_13AEB901A1BF9938` (`boardItemID`);

--
-- Indexes for table `BoardPermissionAssignments`
--
ALTER TABLE `BoardPermissionAssignments`
  ADD PRIMARY KEY (`boardID`,`pkID`,`paID`),
  ADD KEY `IDX_7C073ED92571BEE` (`boardID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `Boards`
--
ALTER TABLE `Boards`
  ADD PRIMARY KEY (`boardID`),
  ADD KEY `IDX_F4424825521D8435` (`siteID`),
  ADD KEY `IDX_F44248255DA0FB8` (`template_id`),
  ADD KEY `IDX_F4424825CE45CBB0` (`pkgID`);

--
-- Indexes for table `BoardSlotTemplates`
--
ALTER TABLE `BoardSlotTemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6FE111C5CE45CBB0` (`pkgID`);

--
-- Indexes for table `BoardSlotTemplateTags`
--
ALTER TABLE `BoardSlotTemplateTags`
  ADD PRIMARY KEY (`slottemplate_id`,`designtag_id`),
  ADD KEY `IDX_7BB1975E648A682` (`slottemplate_id`),
  ADD KEY `IDX_7BB1975E960BFEAE` (`designtag_id`);

--
-- Indexes for table `BoardTemplates`
--
ALTER TABLE `BoardTemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9E8AC12CCE45CBB0` (`pkgID`);

--
-- Indexes for table `btAccordion`
--
ALTER TABLE `btAccordion`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btAccordionEntries`
--
ALTER TABLE `btAccordionEntries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Indexes for table `btBlockBackgroundVideo`
--
ALTER TABLE `btBlockBackgroundVideo`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btBlockCustomLink`
--
ALTER TABLE `btBlockCustomLink`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btBlockCustomLinkItemEntries`
--
ALTER TABLE `btBlockCustomLinkItemEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btBlockMultiple`
--
ALTER TABLE `btBlockMultiple`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btBlockMultipleItemEntries`
--
ALTER TABLE `btBlockMultipleItemEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btBlockSimple`
--
ALTER TABLE `btBlockSimple`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btBoard`
--
ALTER TABLE `btBoard`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btBreadcrumbs`
--
ALTER TABLE `btBreadcrumbs`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCalendar`
--
ALTER TABLE `btCalendar`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCalendarEvent`
--
ALTER TABLE `btCalendarEvent`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btContentFile`
--
ALTER TABLE `btContentFile`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `btContentImage`
--
ALTER TABLE `btContentImage`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `btContentImageBreakpoints`
--
ALTER TABLE `btContentImageBreakpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btContentLocal`
--
ALTER TABLE `btContentLocal`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCoreAreaLayout`
--
ALTER TABLE `btCoreAreaLayout`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `arLayoutID` (`arLayoutID`);

--
-- Indexes for table `btCoreBoardSlot`
--
ALTER TABLE `btCoreBoardSlot`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCoreContainer`
--
ALTER TABLE `btCoreContainer`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `containerInstanceID` (`containerInstanceID`);

--
-- Indexes for table `btCoreConversation`
--
ALTER TABLE `btCoreConversation`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `btCorePageTypeComposerControlOutput`
--
ALTER TABLE `btCorePageTypeComposerControlOutput`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`);

--
-- Indexes for table `btCoreScrapbookDisplay`
--
ALTER TABLE `btCoreScrapbookDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indexes for table `btCoreStackDisplay`
--
ALTER TABLE `btCoreStackDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `stID` (`stID`);

--
-- Indexes for table `btDateNavigation`
--
ALTER TABLE `btDateNavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDesktopConcreteLatest`
--
ALTER TABLE `btDesktopConcreteLatest`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDesktopDraftList`
--
ALTER TABLE `btDesktopDraftList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDesktopSiteActivity`
--
ALTER TABLE `btDesktopSiteActivity`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDocumentLibrary`
--
ALTER TABLE `btDocumentLibrary`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btEventList`
--
ALTER TABLE `btEventList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExpressEntryDetail`
--
ALTER TABLE `btExpressEntryDetail`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExpressEntryList`
--
ALTER TABLE `btExpressEntryList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExpressForm`
--
ALTER TABLE `btExpressForm`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExternalForm`
--
ALTER TABLE `btExternalForm`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFaq`
--
ALTER TABLE `btFaq`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Indexes for table `btFeature`
--
ALTER TABLE `btFeature`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFeatureLink`
--
ALTER TABLE `btFeatureLink`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btForm`
--
ALTER TABLE `btForm`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indexes for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
  ADD PRIMARY KEY (`aID`),
  ADD KEY `asID` (`asID`),
  ADD KEY `msqID` (`msqID`);

--
-- Indexes for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
  ADD PRIMARY KEY (`qID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `msqID` (`msqID`),
  ADD KEY `bID` (`bID`,`questionSetId`);

--
-- Indexes for table `btGallery`
--
ALTER TABLE `btGallery`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btGalleryEntries`
--
ALTER TABLE `btGalleryEntries`
  ADD PRIMARY KEY (`eID`);

--
-- Indexes for table `btGalleryEntryDisplayChoices`
--
ALTER TABLE `btGalleryEntryDisplayChoices`
  ADD PRIMARY KEY (`dcID`);

--
-- Indexes for table `btGoogleMap`
--
ALTER TABLE `btGoogleMap`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btHeroImage`
--
ALTER TABLE `btHeroImage`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btImageSlider`
--
ALTER TABLE `btImageSlider`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btNavigation`
--
ALTER TABLE `btNavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btNextPrevious`
--
ALTER TABLE `btNextPrevious`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btPageAttributeDisplay`
--
ALTER TABLE `btPageAttributeDisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btPageList`
--
ALTER TABLE `btPageList`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `btPageTitle`
--
ALTER TABLE `btPageTitle`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btRssDisplay`
--
ALTER TABLE `btRssDisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSearch`
--
ALTER TABLE `btSearch`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
  ADD PRIMARY KEY (`btShareThisPageID`);

--
-- Indexes for table `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
  ADD PRIMARY KEY (`btSocialLinkID`),
  ADD KEY `bID` (`bID`,`displayOrder`),
  ADD KEY `slID` (`slID`);

--
-- Indexes for table `btSurvey`
--
ALTER TABLE `btSurvey`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
  ADD PRIMARY KEY (`optionID`),
  ADD KEY `bID` (`bID`,`displayOrder`);

--
-- Indexes for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `cID` (`cID`,`optionID`,`bID`),
  ADD KEY `bID` (`bID`,`cID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `btSwitchLanguage`
--
ALTER TABLE `btSwitchLanguage`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTags`
--
ALTER TABLE `btTags`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTestimonial`
--
ALTER TABLE `btTestimonial`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTopicList`
--
ALTER TABLE `btTopicList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTopNavigationBar`
--
ALTER TABLE `btTopNavigationBar`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btVideo`
--
ALTER TABLE `btVideo`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btYouTube`
--
ALTER TABLE `btYouTube`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `CalendarEventAttributeKeys`
--
ALTER TABLE `CalendarEventAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `CalendarEventCustomSummaryTemplates`
--
ALTER TABLE `CalendarEventCustomSummaryTemplates`
  ADD PRIMARY KEY (`eventID`,`template_id`),
  ADD KEY `IDX_7059BBEF10409BA4` (`eventID`),
  ADD KEY `IDX_7059BBEF5DA0FB8` (`template_id`);

--
-- Indexes for table `CalendarEventOccurrences`
--
ALTER TABLE `CalendarEventOccurrences`
  ADD PRIMARY KEY (`occurrenceID`),
  ADD KEY `IDX_7DD686EC31391E00` (`repetitionID`),
  ADD KEY `eventdates` (`occurrenceID`,`startTime`,`endTime`);

--
-- Indexes for table `CalendarEventRepetitions`
--
ALTER TABLE `CalendarEventRepetitions`
  ADD PRIMARY KEY (`repetitionID`);

--
-- Indexes for table `CalendarEvents`
--
ALTER TABLE `CalendarEvents`
  ADD PRIMARY KEY (`eventID`),
  ADD KEY `IDX_7F23C55611C85723` (`caID`);

--
-- Indexes for table `CalendarEventSearchIndexAttributes`
--
ALTER TABLE `CalendarEventSearchIndexAttributes`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `CalendarEventSummaryTemplates`
--
ALTER TABLE `CalendarEventSummaryTemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_219AA86B10409BA4` (`eventID`),
  ADD KEY `IDX_219AA86B5DA0FB8` (`template_id`);

--
-- Indexes for table `CalendarEventVersionAttributeValues`
--
ALTER TABLE `CalendarEventVersionAttributeValues`
  ADD PRIMARY KEY (`eventVersionID`,`akID`),
  ADD KEY `IDX_8C835B05403F5D6` (`eventVersionID`),
  ADD KEY `IDX_8C835B05B6561A7E` (`akID`),
  ADD KEY `IDX_8C835B05A2A82A5D` (`avID`);

--
-- Indexes for table `CalendarEventVersionOccurrences`
--
ALTER TABLE `CalendarEventVersionOccurrences`
  ADD PRIMARY KEY (`versionOccurrenceID`),
  ADD KEY `IDX_60310489403F5D6` (`eventVersionID`),
  ADD KEY `IDX_60310489B4FDDC0F` (`occurrenceID`);

--
-- Indexes for table `CalendarEventVersionRepetitions`
--
ALTER TABLE `CalendarEventVersionRepetitions`
  ADD PRIMARY KEY (`versionRepetitionID`),
  ADD KEY `IDX_C1C3D3DB403F5D6` (`eventVersionID`),
  ADD KEY `IDX_C1C3D3DB31391E00` (`repetitionID`);

--
-- Indexes for table `CalendarEventVersions`
--
ALTER TABLE `CalendarEventVersions`
  ADD PRIMARY KEY (`eventVersionID`),
  ADD KEY `IDX_8E26027410409BA4` (`eventID`),
  ADD KEY `IDX_8E260274FD71026C` (`uID`);

--
-- Indexes for table `CalendarEventWorkflowProgress`
--
ALTER TABLE `CalendarEventWorkflowProgress`
  ADD PRIMARY KEY (`eventID`,`wpID`),
  ADD KEY `IDX_C5EAACF910409BA4` (`eventID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indexes for table `CalendarPermissionAssignments`
--
ALTER TABLE `CalendarPermissionAssignments`
  ADD PRIMARY KEY (`caID`,`pkID`,`paID`),
  ADD KEY `IDX_5AD546AA11C85723` (`caID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `CalendarRelatedEvents`
--
ALTER TABLE `CalendarRelatedEvents`
  ADD PRIMARY KEY (`relatedEventID`),
  ADD KEY `IDX_310130E910409BA4` (`eventID`);

--
-- Indexes for table `Calendars`
--
ALTER TABLE `Calendars`
  ADD PRIMARY KEY (`caID`),
  ADD KEY `IDX_62E00AC521D8435` (`siteID`);

--
-- Indexes for table `CollectionAttributeKeys`
--
ALTER TABLE `CollectionAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
  ADD PRIMARY KEY (`cID`,`cvID`,`akID`),
  ADD KEY `IDX_BB9995FCB6561A7E` (`akID`),
  ADD KEY `IDX_BB9995FCA2A82A5D` (`avID`);

--
-- Indexes for table `Collections`
--
ALTER TABLE `Collections`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cIDDateModified` (`cID`,`cDateModified`),
  ADD KEY `cDateModified` (`cDateModified`),
  ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indexes for table `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `CollectionVersionAreaStyles`
--
ALTER TABLE `CollectionVersionAreaStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `CollectionVersionBlocks`
--
ALTER TABLE `CollectionVersionBlocks`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `cbRelationID` (`cbRelationID`);

--
-- Indexes for table `CollectionVersionBlocksCacheSettings`
--
ALTER TABLE `CollectionVersionBlocksCacheSettings`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlocksOutputCache`
--
ALTER TABLE `CollectionVersionBlocksOutputCache`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlockStyles`
--
ALTER TABLE `CollectionVersionBlockStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`issID`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `CollectionVersionRelatedEdits`
--
ALTER TABLE `CollectionVersionRelatedEdits`
  ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indexes for table `CollectionVersions`
--
ALTER TABLE `CollectionVersions`
  ADD PRIMARY KEY (`cID`,`cvID`),
  ADD KEY `cvIsApproved` (`cvIsApproved`),
  ADD KEY `cvAuthorUID` (`cvAuthorUID`),
  ADD KEY `cvApproverUID` (`cvApproverUID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `pTemplateID` (`pTemplateID`),
  ADD KEY `cvDatePublic` (`cvDatePublic`),
  ADD KEY `idxPublishDate` (`cID`,`cvID`,`cvIsApproved`,`cvPublishDate`,`cvPublishEndDate`);

--
-- Indexes for table `CollectionVersionThemeCustomStyles`
--
ALTER TABLE `CollectionVersionThemeCustomStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `Config`
--
ALTER TABLE `Config`
  ADD PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  ADD KEY `configGroup` (`configGroup`);

--
-- Indexes for table `ConfigStore`
--
ALTER TABLE `ConfigStore`
  ADD PRIMARY KEY (`cfKey`,`uID`),
  ADD KEY `uID` (`uID`,`cfKey`),
  ADD KEY `pkgID` (`pkgID`,`cfKey`);

--
-- Indexes for table `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
  ADD PRIMARY KEY (`cnvEditorID`),
  ADD KEY `pkgID` (`pkgID`,`cnvEditorHandle`);

--
-- Indexes for table `ConversationFeatureDetailAssignments`
--
ALTER TABLE `ConversationFeatureDetailAssignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `ConversationFlaggedMessages`
--
ALTER TABLE `ConversationFlaggedMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`);

--
-- Indexes for table `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
  ADD PRIMARY KEY (`cnvMessageFlagTypeID`),
  ADD UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`);

--
-- Indexes for table `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
  ADD PRIMARY KEY (`cnvMessageAttachmentID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `ConversationMessageNotifications`
--
ALTER TABLE `ConversationMessageNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
  ADD PRIMARY KEY (`cnvMessageRatingID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  ADD KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `cnvMessageParentID` (`cnvMessageParentID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `ConversationPermissionAddMessageAccessList`
--
ALTER TABLE `ConversationPermissionAddMessageAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `ConversationPermissionAssignments`
--
ALTER TABLE `ConversationPermissionAssignments`
  ADD PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
  ADD PRIMARY KEY (`cnvRatingTypeID`),
  ADD UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  ADD KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`);

--
-- Indexes for table `Conversations`
--
ALTER TABLE `Conversations`
  ADD PRIMARY KEY (`cnvID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `cnvParentMessageID` (`cnvParentMessageID`);

--
-- Indexes for table `ConversationSubscriptions`
--
ALTER TABLE `ConversationSubscriptions`
  ADD PRIMARY KEY (`cnvID`,`uID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `DesignTags`
--
ALTER TABLE `DesignTags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  ADD PRIMARY KEY (`dsID`),
  ADD KEY `fID` (`fID`,`timestamp`),
  ADD KEY `fvID` (`fID`,`fvID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `rcID` (`rcID`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `IDX_7CDE2E3CE3111F45` (`fID`);

--
-- Indexes for table `Editor`
--
ALTER TABLE `Editor`
  ADD PRIMARY KEY (`handle`),
  ADD KEY `IDX_CB5DF48CCE45CBB0` (`pkgID`);

--
-- Indexes for table `ExpressAttributeKeys`
--
ALTER TABLE `ExpressAttributeKeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_8C881F181257D5D` (`entity_id`);

--
-- Indexes for table `ExpressEntities`
--
ALTER TABLE `ExpressEntities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6918020D9` (`handle`),
  ADD UNIQUE KEY `UNIQ_BC772AA6547D6B2D` (`default_view_form_id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6C7DEC56D` (`default_edit_form_id`),
  ADD KEY `IDX_BC772AA6CE45CBB0` (`pkgID`);

--
-- Indexes for table `ExpressEntityAssociationEntries`
--
ALTER TABLE `ExpressEntityAssociationEntries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9C2BB76C6DCB6296` (`exEntryID`),
  ADD KEY `IDX_9C2BB76CEFB9C8A5` (`association_id`);

--
-- Indexes for table `ExpressEntityAssociations`
--
ALTER TABLE `ExpressEntityAssociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98A0F796E9BBEE93` (`source_entity_id`),
  ADD KEY `IDX_98A0F796B5910F71` (`target_entity_id`);

--
-- Indexes for table `ExpressEntityEntries`
--
ALTER TABLE `ExpressEntityEntries`
  ADD PRIMARY KEY (`exEntryID`),
  ADD KEY `IDX_B8AE3531FD71026C` (`uID`),
  ADD KEY `IDX_B8AE3531AFC87D03` (`exEntryEntityID`),
  ADD KEY `resultsNodeID` (`resultsNodeID`),
  ADD KEY `createdSort` (`exEntryDateCreated`),
  ADD KEY `modifiedSort` (`exEntryDateModified`);

--
-- Indexes for table `ExpressEntityEntryAssociations`
--
ALTER TABLE `ExpressEntityEntryAssociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_25B3A0826DCB6296` (`exEntryID`),
  ADD KEY `IDX_25B3A082EFB9C8A5` (`association_id`);

--
-- Indexes for table `ExpressEntityEntryAttributeValues`
--
ALTER TABLE `ExpressEntityEntryAttributeValues`
  ADD PRIMARY KEY (`exEntryID`,`akID`),
  ADD KEY `IDX_6DB641546DCB6296` (`exEntryID`),
  ADD KEY `IDX_6DB64154B6561A7E` (`akID`),
  ADD KEY `IDX_6DB64154A2A82A5D` (`avID`);

--
-- Indexes for table `ExpressFormFieldSetAssociationControls`
--
ALTER TABLE `ExpressFormFieldSetAssociationControls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E6DF21BBEFB9C8A5` (`association_id`);

--
-- Indexes for table `ExpressFormFieldSetAttributeKeyControls`
--
ALTER TABLE `ExpressFormFieldSetAttributeKeyControls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8481F9D1B6561A7E` (`akID`);

--
-- Indexes for table `ExpressFormFieldSetAuthorControls`
--
ALTER TABLE `ExpressFormFieldSetAuthorControls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpressFormFieldSetControls`
--
ALTER TABLE `ExpressFormFieldSetControls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E42868A43ABF811A` (`field_set_id`);

--
-- Indexes for table `ExpressFormFieldSetPublicIdentifierControls`
--
ALTER TABLE `ExpressFormFieldSetPublicIdentifierControls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpressFormFieldSets`
--
ALTER TABLE `ExpressFormFieldSets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A33BBBEC5FF69B7D` (`form_id`);

--
-- Indexes for table `ExpressFormFieldSetTextControls`
--
ALTER TABLE `ExpressFormFieldSetTextControls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpressForms`
--
ALTER TABLE `ExpressForms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D09031A81257D5D` (`entity_id`);

--
-- Indexes for table `ExpressSearchIndexAttributes`
--
ALTER TABLE `ExpressSearchIndexAttributes`
  ADD PRIMARY KEY (`exEntryID`);

--
-- Indexes for table `FileAttributeKeys`
--
ALTER TABLE `FileAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
  ADD PRIMARY KEY (`fID`,`fvID`,`akID`),
  ADD KEY `IDX_BBECEAA4B6561A7E` (`akID`),
  ADD KEY `IDX_BBECEAA4A2A82A5D` (`avID`);

--
-- Indexes for table `FileExternalFileProviders`
--
ALTER TABLE `FileExternalFileProviders`
  ADD PRIMARY KEY (`efpID`);

--
-- Indexes for table `FileExternalFileProviderTypes`
--
ALTER TABLE `FileExternalFileProviderTypes`
  ADD PRIMARY KEY (`efpTypeID`);

--
-- Indexes for table `FileImageThumbnailPaths`
--
ALTER TABLE `FileImageThumbnailPaths`
  ADD PRIMARY KEY (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`,`thumbnailFormat`),
  ADD KEY `thumbnailPathIsBuilt` (`isBuilt`);

--
-- Indexes for table `FileImageThumbnailTypeFileSets`
--
ALTER TABLE `FileImageThumbnailTypeFileSets`
  ADD PRIMARY KEY (`ftfsThumbnailType`,`ftfsFileSetID`),
  ADD KEY `IDX_BD75F88D480660E5` (`ftfsThumbnailType`);

--
-- Indexes for table `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
  ADD PRIMARY KEY (`ftTypeID`);

--
-- Indexes for table `FilePermissionAssignments`
--
ALTER TABLE `FilePermissionAssignments`
  ADD PRIMARY KEY (`fID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `FilePermissionFileTypeAccessList`
--
ALTER TABLE `FilePermissionFileTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `FilePermissionFileTypeAccessListCustom`
--
ALTER TABLE `FilePermissionFileTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`extension`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `FilePermissionFileTypes`
--
ALTER TABLE `FilePermissionFileTypes`
  ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  ADD KEY `gID` (`gID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `Files`
--
ALTER TABLE `Files`
  ADD PRIMARY KEY (`fID`),
  ADD UNIQUE KEY `UNIQ_C7F46F5D16FE17FE` (`fUUID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `fslID` (`fslID`),
  ADD KEY `ocID` (`ocID`),
  ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indexes for table `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
  ADD PRIMARY KEY (`fID`);

--
-- Indexes for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  ADD PRIMARY KEY (`fsfID`),
  ADD KEY `fID` (`fID`),
  ADD KEY `fsID` (`fsID`);

--
-- Indexes for table `FileSets`
--
ALTER TABLE `FileSets`
  ADD PRIMARY KEY (`fsID`),
  ADD KEY `uID` (`uID`,`fsType`,`fsName`),
  ADD KEY `fsName` (`fsName`),
  ADD KEY `fsType` (`fsType`);

--
-- Indexes for table `FileSetSavedSearches`
--
ALTER TABLE `FileSetSavedSearches`
  ADD PRIMARY KEY (`fsID`);

--
-- Indexes for table `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
  ADD PRIMARY KEY (`fslID`);

--
-- Indexes for table `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
  ADD PRIMARY KEY (`fslTypeID`);

--
-- Indexes for table `FileUsageRecord`
--
ALTER TABLE `FileUsageRecord`
  ADD PRIMARY KEY (`file_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Indexes for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
  ADD PRIMARY KEY (`fvlID`),
  ADD KEY `fvID` (`fID`,`fvID`,`fvlID`);

--
-- Indexes for table `FileVersions`
--
ALTER TABLE `FileVersions`
  ADD PRIMARY KEY (`fID`,`fvID`),
  ADD KEY `IDX_D7B5A13AE3111F45` (`fID`),
  ADD KEY `fvFilename` (`fvFilename`),
  ADD KEY `fvExtension` (`fvExtension`),
  ADD KEY `fvType` (`fvType`);

--
-- Indexes for table `FormSubmissionNotifications`
--
ALTER TABLE `FormSubmissionNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_E7B6BE406DCB6296` (`exEntryID`);

--
-- Indexes for table `Geolocators`
--
ALTER TABLE `Geolocators`
  ADD PRIMARY KEY (`glID`),
  ADD UNIQUE KEY `UNIQ_83BB1614D4F4D416` (`glHandle`),
  ADD KEY `IDX_83BB1614D5F6CC40` (`glPackage`);

--
-- Indexes for table `GroupCreateNotifications`
--
ALTER TABLE `GroupCreateNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_C17D9982BF396750` (`id`);

--
-- Indexes for table `GroupCreates`
--
ALTER TABLE `GroupCreates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CCD7EF48FD71026C` (`uID`);

--
-- Indexes for table `GroupJoinRequests`
--
ALTER TABLE `GroupJoinRequests`
  ADD PRIMARY KEY (`uID`,`gID`);

--
-- Indexes for table `GroupRoleChangeNotifications`
--
ALTER TABLE `GroupRoleChangeNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_C1402C44BF396750` (`id`);

--
-- Indexes for table `GroupRoleChanges`
--
ALTER TABLE `GroupRoleChanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98ADE2F3FD71026C` (`uID`);

--
-- Indexes for table `GroupRoles`
--
ALTER TABLE `GroupRoles`
  ADD PRIMARY KEY (`grID`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`gID`),
  ADD KEY `gName` (`gName`),
  ADD KEY `gBadgeFID` (`gBadgeFID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gPath` (`gPath`(255));

--
-- Indexes for table `GroupSelectedRoles`
--
ALTER TABLE `GroupSelectedRoles`
  ADD PRIMARY KEY (`gID`,`grID`);

--
-- Indexes for table `GroupSetGroups`
--
ALTER TABLE `GroupSetGroups`
  ADD PRIMARY KEY (`gID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `GroupSets`
--
ALTER TABLE `GroupSets`
  ADD PRIMARY KEY (`gsID`),
  ADD KEY `gsName` (`gsName`),
  ADD KEY `pkgID` (`pkgID`,`gsID`);

--
-- Indexes for table `GroupSignupNotifications`
--
ALTER TABLE `GroupSignupNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_77F3EABF396750` (`id`);

--
-- Indexes for table `GroupSignupRequestAcceptNotifications`
--
ALTER TABLE `GroupSignupRequestAcceptNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_72E6015ABF396750` (`id`);

--
-- Indexes for table `GroupSignupRequestAccepts`
--
ALTER TABLE `GroupSignupRequestAccepts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_18BBF9FCFD71026C` (`uID`),
  ADD KEY `IDX_18BBF9FCDB43B5DF` (`managerUID`);

--
-- Indexes for table `GroupSignupRequestDeclineNotifications`
--
ALTER TABLE `GroupSignupRequestDeclineNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_930C0D02BF396750` (`id`);

--
-- Indexes for table `GroupSignupRequestDeclines`
--
ALTER TABLE `GroupSignupRequestDeclines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A905188EFD71026C` (`uID`),
  ADD KEY `IDX_A905188EDB43B5DF` (`managerUID`);

--
-- Indexes for table `GroupSignupRequestNotifications`
--
ALTER TABLE `GroupSignupRequestNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_56EC93C8BF396750` (`id`);

--
-- Indexes for table `GroupSignupRequests`
--
ALTER TABLE `GroupSignupRequests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8CF06191FD71026C` (`uID`);

--
-- Indexes for table `GroupSignups`
--
ALTER TABLE `GroupSignups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D6CC4ECBFD71026C` (`uID`);

--
-- Indexes for table `GroupTypes`
--
ALTER TABLE `GroupTypes`
  ADD PRIMARY KEY (`gtID`);

--
-- Indexes for table `GroupTypeSelectedRoles`
--
ALTER TABLE `GroupTypeSelectedRoles`
  ADD PRIMARY KEY (`gtID`,`grID`);

--
-- Indexes for table `IpAccessControlCategories`
--
ALTER TABLE `IpAccessControlCategories`
  ADD PRIMARY KEY (`iaccID`),
  ADD UNIQUE KEY `UNIQ_D4A1006246B4A747` (`iaccHandle`),
  ADD KEY `IDX_D4A10062C908ED51` (`iaccPackage`);

--
-- Indexes for table `IpAccessControlEvents`
--
ALTER TABLE `IpAccessControlEvents`
  ADD PRIMARY KEY (`iaceID`),
  ADD KEY `IDX_6C004072E9480668` (`iaceCategory`),
  ADD KEY `IDX_6C004072B0C0DFA7` (`iaceSite`);

--
-- Indexes for table `IpAccessControlRanges`
--
ALTER TABLE `IpAccessControlRanges`
  ADD PRIMARY KEY (`iacrID`),
  ADD KEY `IDX_2B1AA65D21E929D0` (`iacrCategory`),
  ADD KEY `IDX_2B1AA65D62009435` (`iacrSite`),
  ADD KEY `IPIntervalExpiration` (`iacrIpFrom`,`iacrIpTo`,`iacrExpiration`);

--
-- Indexes for table `Jobs`
--
ALTER TABLE `Jobs`
  ADD PRIMARY KEY (`jID`),
  ADD UNIQUE KEY `jHandle` (`jHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  ADD KEY `jDateLastRun` (`jDateLastRun`,`jID`);

--
-- Indexes for table `JobSetJobs`
--
ALTER TABLE `JobSetJobs`
  ADD PRIMARY KEY (`jsID`,`jID`),
  ADD KEY `jID` (`jID`);

--
-- Indexes for table `JobSets`
--
ALTER TABLE `JobSets`
  ADD PRIMARY KEY (`jsID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `jsName` (`jsName`);

--
-- Indexes for table `JobsLog`
--
ALTER TABLE `JobsLog`
  ADD PRIMARY KEY (`jlID`),
  ADD KEY `jID` (`jID`);

--
-- Indexes for table `LegacyAttributeKeys`
--
ALTER TABLE `LegacyAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `Logs`
--
ALTER TABLE `Logs`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `channel` (`channel`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `MailImporters`
--
ALTER TABLE `MailImporters`
  ADD PRIMARY KEY (`miID`),
  ADD UNIQUE KEY `miHandle` (`miHandle`),
  ADD KEY `pkgID` (`pkgID`,`miID`);

--
-- Indexes for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
  ADD PRIMARY KEY (`mvhID`),
  ADD UNIQUE KEY `mHash` (`mHash`),
  ADD KEY `miID` (`miID`);

--
-- Indexes for table `MessengerBatches`
--
ALTER TABLE `MessengerBatches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MessengerMessages`
--
ALTER TABLE `MessengerMessages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_41BD93AFFB7336F0` (`queue_name`),
  ADD KEY `IDX_41BD93AFE3BD61CE` (`available_at`),
  ADD KEY `IDX_41BD93AF16BA31DB` (`delivered_at`);

--
-- Indexes for table `MessengerProcesses`
--
ALTER TABLE `MessengerProcesses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_FBB7A9C9F39EBE7A` (`batch_id`),
  ADD KEY `IDX_FBB7A9C9FD71026C` (`uID`);

--
-- Indexes for table `MessengerScheduledTasks`
--
ALTER TABLE `MessengerScheduledTasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DCEB3C0D8DB60186` (`task_id`),
  ADD KEY `IDX_DCEB3C0DFD71026C` (`uID`);

--
-- Indexes for table `MessengerTaskProcesses`
--
ALTER TABLE `MessengerTaskProcesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BE77DC6F8DB60186` (`task_id`);

--
-- Indexes for table `MultilingualPageRelations`
--
ALTER TABLE `MultilingualPageRelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Indexes for table `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
  ADD PRIMARY KEY (`mtID`);

--
-- Indexes for table `NotificationAlerts`
--
ALTER TABLE `NotificationAlerts`
  ADD PRIMARY KEY (`naID`),
  ADD KEY `IDX_E11C7408FD71026C` (`uID`),
  ADD KEY `IDX_E11C7408ED024EFD` (`nID`);

--
-- Indexes for table `NotificationPermissionSubscriptionList`
--
ALTER TABLE `NotificationPermissionSubscriptionList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `NotificationPermissionSubscriptionListCustom`
--
ALTER TABLE `NotificationPermissionSubscriptionListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`nSubscriptionIdentifier`),
  ADD KEY `peID` (`peID`),
  ADD KEY `nSubscriptionIdentifier` (`nSubscriptionIdentifier`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `OAuth2AccessToken`
--
ALTER TABLE `OAuth2AccessToken`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_60D69F3FC7440455` (`client`);

--
-- Indexes for table `OAuth2AuthCode`
--
ALTER TABLE `OAuth2AuthCode`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_29D07B5C7440455` (`client`);

--
-- Indexes for table `OAuth2Client`
--
ALTER TABLE `OAuth2Client`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `client_idx` (`clientKey`,`clientSecret`);

--
-- Indexes for table `OAuth2RefreshToken`
--
ALTER TABLE `OAuth2RefreshToken`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `UNIQ_A205CB8350A9822` (`accessToken`);

--
-- Indexes for table `OAuth2Scope`
--
ALTER TABLE `OAuth2Scope`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `OauthUserMap`
--
ALTER TABLE `OauthUserMap`
  ADD PRIMARY KEY (`user_id`,`namespace`),
  ADD UNIQUE KEY `oauth_binding` (`binding`,`namespace`);

--
-- Indexes for table `Packages`
--
ALTER TABLE `Packages`
  ADD PRIMARY KEY (`pkgID`),
  ADD UNIQUE KEY `UNIQ_62C3A2F1F2D49DB1` (`pkgHandle`);

--
-- Indexes for table `PageContainerInstanceAreas`
--
ALTER TABLE `PageContainerInstanceAreas`
  ADD PRIMARY KEY (`containerInstanceAreaID`),
  ADD KEY `IDX_484B3E0A1FCD0045` (`containerInstanceID`);

--
-- Indexes for table `PageContainerInstances`
--
ALTER TABLE `PageContainerInstances`
  ADD PRIMARY KEY (`containerInstanceID`),
  ADD KEY `IDX_489D87A71159C151` (`containerID`);

--
-- Indexes for table `PageContainers`
--
ALTER TABLE `PageContainers`
  ADD PRIMARY KEY (`containerID`),
  ADD KEY `IDX_65E7C1D1CE45CBB0` (`pkgID`);

--
-- Indexes for table `PageFeeds`
--
ALTER TABLE `PageFeeds`
  ADD PRIMARY KEY (`pfID`);

--
-- Indexes for table `PagePaths`
--
ALTER TABLE `PagePaths`
  ADD PRIMARY KEY (`ppID`),
  ADD KEY `ppIsCanonical` (`ppIsCanonical`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `PagePermissionAssignments`
--
ALTER TABLE `PagePermissionAssignments`
  ADD PRIMARY KEY (`cID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `PagePermissionPageTypeAccessList`
--
ALTER TABLE `PagePermissionPageTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `PagePermissionPageTypeAccessListCustom`
--
ALTER TABLE `PagePermissionPageTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`ptID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PagePermissionPropertyAccessList`
--
ALTER TABLE `PagePermissionPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `PagePermissionPropertyAttributeAccessListCustom`
--
ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `PagePermissionThemeAccessList`
--
ALTER TABLE `PagePermissionThemeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `PagePermissionThemeAccessListCustom`
--
ALTER TABLE `PagePermissionThemeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `pThemeID` (`pThemeID`);

--
-- Indexes for table `Pages`
--
ALTER TABLE `Pages`
  ADD PRIMARY KEY (`cID`,`ptID`),
  ADD KEY `cParentID` (`cParentID`),
  ADD KEY `siteTreeID` (`siteTreeID`),
  ADD KEY `cIsActive` (`cID`,`cIsActive`),
  ADD KEY `cCheckedOutUID` (`cCheckedOutUID`),
  ADD KEY `uID` (`uID`,`cPointerID`),
  ADD KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  ADD KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  ADD KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`),
  ADD KEY `idxPageList` (`cIsTemplate`,`cIsActive`,`siteTreeID`,`cIsSystemPage`,`cPointerID`);

--
-- Indexes for table `PageSearchIndex`
--
ALTER TABLE `PageSearchIndex`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cDateLastIndexed` (`cDateLastIndexed`),
  ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  ADD KEY `cRequiresReindex` (`cRequiresReindex`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `cName` (`cName`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `cDescription` (`cDescription`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `content` (`content`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indexes for table `PageSummaryTemplateCustomCollection`
--
ALTER TABLE `PageSummaryTemplateCustomCollection`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `PageSummaryTemplateCustomCollectionTemplates`
--
ALTER TABLE `PageSummaryTemplateCustomCollectionTemplates`
  ADD PRIMARY KEY (`cID`,`template_id`),
  ADD KEY `IDX_23B91C0FE5DADDAE` (`cID`),
  ADD KEY `IDX_23B91C0F5DA0FB8` (`template_id`);

--
-- Indexes for table `PageSummaryTemplates`
--
ALTER TABLE `PageSummaryTemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_55AC200B5DA0FB8` (`template_id`);

--
-- Indexes for table `PageTemplates`
--
ALTER TABLE `PageTemplates`
  ADD PRIMARY KEY (`pTemplateID`);

--
-- Indexes for table `PageThemeCustomSkins`
--
ALTER TABLE `PageThemeCustomSkins`
  ADD PRIMARY KEY (`skinID`),
  ADD KEY `IDX_162E9C4EFD71026C` (`uID`);

--
-- Indexes for table `PageThemeCustomStyles`
--
ALTER TABLE `PageThemeCustomStyles`
  ADD PRIMARY KEY (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `PageThemes`
--
ALTER TABLE `PageThemes`
  ADD PRIMARY KEY (`pThemeID`),
  ADD UNIQUE KEY `ptHandle` (`pThemeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
  ADD PRIMARY KEY (`ptComposerControlTypeID`),
  ADD UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`);

--
-- Indexes for table `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
  ADD PRIMARY KEY (`ptComposerOutputBlockID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  ADD PRIMARY KEY (`ptComposerOutputControlID`),
  ADD KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `PageTypePageTemplateDefaultPages`
--
ALTER TABLE `PageTypePageTemplateDefaultPages`
  ADD PRIMARY KEY (`pTemplateID`,`ptID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `PageTypePageTemplates`
--
ALTER TABLE `PageTypePageTemplates`
  ADD PRIMARY KEY (`ptID`,`pTemplateID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexes for table `PageTypePermissionAssignments`
--
ALTER TABLE `PageTypePermissionAssignments`
  ADD PRIMARY KEY (`ptID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
  ADD PRIMARY KEY (`ptPublishTargetTypeID`),
  ADD KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypes`
--
ALTER TABLE `PageTypes`
  ADD PRIMARY KEY (`ptID`),
  ADD UNIQUE KEY `ptHandle` (`ptHandle`),
  ADD KEY `siteTypeID` (`siteTypeID`),
  ADD KEY `pkgID` (`pkgID`,`ptID`);

--
-- Indexes for table `PageWorkflowProgress`
--
ALTER TABLE `PageWorkflowProgress`
  ADD PRIMARY KEY (`cID`,`wpID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indexes for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
  ADD PRIMARY KEY (`paID`);

--
-- Indexes for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
  ADD PRIMARY KEY (`peID`),
  ADD KEY `petID` (`petID`);

--
-- Indexes for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
  ADD PRIMARY KEY (`pegID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `PermissionAccessEntityGroupSets`
--
ALTER TABLE `PermissionAccessEntityGroupSets`
  ADD PRIMARY KEY (`peID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `PermissionAccessEntitySiteGroups`
--
ALTER TABLE `PermissionAccessEntitySiteGroups`
  ADD PRIMARY KEY (`pegID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `siteGID` (`siteGID`);

--
-- Indexes for table `PermissionAccessEntityTypeCategories`
--
ALTER TABLE `PermissionAccessEntityTypeCategories`
  ADD PRIMARY KEY (`petID`,`pkCategoryID`),
  ADD KEY `pkCategoryID` (`pkCategoryID`);

--
-- Indexes for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
  ADD PRIMARY KEY (`petID`),
  ADD UNIQUE KEY `petHandle` (`petHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PermissionAccessEntityUsers`
--
ALTER TABLE `PermissionAccessEntityUsers`
  ADD PRIMARY KEY (`peID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `PermissionAccessList`
--
ALTER TABLE `PermissionAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `accessType` (`accessType`),
  ADD KEY `peID` (`peID`),
  ADD KEY `peID_accessType` (`peID`,`accessType`),
  ADD KEY `pdID` (`pdID`),
  ADD KEY `permissionAccessDuration` (`paID`,`pdID`);

--
-- Indexes for table `PermissionAccessWorkflows`
--
ALTER TABLE `PermissionAccessWorkflows`
  ADD PRIMARY KEY (`paID`,`wfID`),
  ADD KEY `wfID` (`wfID`);

--
-- Indexes for table `PermissionAssignments`
--
ALTER TABLE `PermissionAssignments`
  ADD PRIMARY KEY (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
  ADD PRIMARY KEY (`pdID`);

--
-- Indexes for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
  ADD PRIMARY KEY (`pkCategoryID`),
  ADD UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  ADD PRIMARY KEY (`pkID`),
  ADD UNIQUE KEY `akHandle` (`pkHandle`),
  ADD KEY `pkCategoryID` (`pkCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PileContents`
--
ALTER TABLE `PileContents`
  ADD PRIMARY KEY (`pcID`),
  ADD KEY `pID` (`pID`,`displayOrder`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `itemType` (`itemType`,`itemID`,`pID`);

--
-- Indexes for table `Piles`
--
ALTER TABLE `Piles`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `uID` (`uID`,`name`);

--
-- Indexes for table `PrivateMessageNotifications`
--
ALTER TABLE `PrivateMessageNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
  ADD PRIMARY KEY (`message_id`),
  ADD UNIQUE KEY `message_handle` (`handle`),
  ADD KEY `message_queueid` (`queue_id`);

--
-- Indexes for table `QueuePageDuplicationRelations`
--
ALTER TABLE `QueuePageDuplicationRelations`
  ADD PRIMARY KEY (`cID`,`originalCID`),
  ADD KEY `originalCID` (`originalCID`,`queue_name`);

--
-- Indexes for table `Queues`
--
ALTER TABLE `Queues`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `queue_name` (`queue_name`);

--
-- Indexes for table `SavedExpressSearchQueries`
--
ALTER TABLE `SavedExpressSearchQueries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F87C25F2CE2D7284` (`exEntityID`);

--
-- Indexes for table `SavedFileSearchQueries`
--
ALTER TABLE `SavedFileSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedGroupSearchQueries`
--
ALTER TABLE `SavedGroupSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedLogSearchQueries`
--
ALTER TABLE `SavedLogSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedPageSearchQueries`
--
ALTER TABLE `SavedPageSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedUserSearchQueries`
--
ALTER TABLE `SavedUserSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`sessionID`);

--
-- Indexes for table `SiblingPageRelations`
--
ALTER TABLE `SiblingPageRelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Indexes for table `SiteAttributeKeys`
--
ALTER TABLE `SiteAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `SiteAttributeValues`
--
ALTER TABLE `SiteAttributeValues`
  ADD PRIMARY KEY (`siteID`,`akID`),
  ADD KEY `IDX_67658AF7521D8435` (`siteID`),
  ADD KEY `IDX_67658AF7B6561A7E` (`akID`),
  ADD KEY `IDX_67658AF7A2A82A5D` (`avID`);

--
-- Indexes for table `SiteDomains`
--
ALTER TABLE `SiteDomains`
  ADD PRIMARY KEY (`domainID`),
  ADD KEY `IDX_4CC7400A521D8435` (`siteID`);

--
-- Indexes for table `SiteGroupRelations`
--
ALTER TABLE `SiteGroupRelations`
  ADD PRIMARY KEY (`groupRelationID`),
  ADD KEY `IDX_DCBCDCA94A62E0E4` (`siteGID`),
  ADD KEY `IDX_DCBCDCA9521D8435` (`siteID`);

--
-- Indexes for table `SiteGroups`
--
ALTER TABLE `SiteGroups`
  ADD PRIMARY KEY (`siteGID`),
  ADD KEY `IDX_F6FE030FE9548DF7` (`siteTypeID`);

--
-- Indexes for table `SiteLocales`
--
ALTER TABLE `SiteLocales`
  ADD PRIMARY KEY (`siteLocaleID`),
  ADD UNIQUE KEY `UNIQ_2527AB2CF9431B4B` (`siteTreeID`),
  ADD KEY `IDX_2527AB2C521D8435` (`siteID`);

--
-- Indexes for table `Sites`
--
ALTER TABLE `Sites`
  ADD PRIMARY KEY (`siteID`),
  ADD UNIQUE KEY `UNIQ_7DC18567D84E1976` (`siteHandle`),
  ADD KEY `IDX_7DC18567E9548DF7` (`siteTypeID`);

--
-- Indexes for table `SiteSearchIndexAttributes`
--
ALTER TABLE `SiteSearchIndexAttributes`
  ADD PRIMARY KEY (`siteID`);

--
-- Indexes for table `SiteSkeletonLocales`
--
ALTER TABLE `SiteSkeletonLocales`
  ADD PRIMARY KEY (`skeletonLocaleID`),
  ADD UNIQUE KEY `UNIQ_212DD202F9431B4B` (`siteTreeID`),
  ADD KEY `IDX_212DD202B579BD3E` (`siteSkeletonID`);

--
-- Indexes for table `SiteSkeletons`
--
ALTER TABLE `SiteSkeletons`
  ADD PRIMARY KEY (`siteSkeletonID`),
  ADD UNIQUE KEY `UNIQ_D36AED98E9548DF7` (`siteTypeID`);

--
-- Indexes for table `SiteSkeletonTrees`
--
ALTER TABLE `SiteSkeletonTrees`
  ADD PRIMARY KEY (`siteTreeID`),
  ADD UNIQUE KEY `UNIQ_550F784B16B7EAF2` (`skeletonLocaleID`),
  ADD UNIQUE KEY `UNIQ_550F784BE9548DF7` (`siteTypeID`);

--
-- Indexes for table `SiteTrees`
--
ALTER TABLE `SiteTrees`
  ADD PRIMARY KEY (`siteTreeID`);

--
-- Indexes for table `SiteTreeTrees`
--
ALTER TABLE `SiteTreeTrees`
  ADD PRIMARY KEY (`siteTreeID`),
  ADD UNIQUE KEY `UNIQ_A4B9696EACD624CD` (`siteLocaleID`);

--
-- Indexes for table `SiteTypeAttributeKeys`
--
ALTER TABLE `SiteTypeAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `SiteTypeAttributeValues`
--
ALTER TABLE `SiteTypeAttributeValues`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_78059CB9B579BD3E` (`siteSkeletonID`),
  ADD KEY `IDX_78059CB9A2A82A5D` (`avID`);

--
-- Indexes for table `SiteTypes`
--
ALTER TABLE `SiteTypes`
  ADD PRIMARY KEY (`siteTypeID`),
  ADD UNIQUE KEY `UNIQ_7CBFE97576D39A3C` (`siteTypeHandle`),
  ADD UNIQUE KEY `UNIQ_7CBFE975C7F74FC3` (`siteTypeName`),
  ADD KEY `IDX_7CBFE975CE45CBB0` (`pkgID`);

--
-- Indexes for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
  ADD PRIMARY KEY (`slID`),
  ADD KEY `IDX_84EBA2B4521D8435` (`siteID`);

--
-- Indexes for table `Stacks`
--
ALTER TABLE `Stacks`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `stType` (`stType`),
  ADD KEY `stName` (`stName`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `StackUsageRecord`
--
ALTER TABLE `StackUsageRecord`
  ADD PRIMARY KEY (`stack_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Indexes for table `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
  ADD PRIMARY KEY (`sccRecordID`);

--
-- Indexes for table `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
  ADD PRIMARY KEY (`pssPresetID`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
  ADD PRIMARY KEY (`issID`);

--
-- Indexes for table `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
  ADD PRIMARY KEY (`scvlID`);

--
-- Indexes for table `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
  ADD PRIMARY KEY (`scvID`),
  ADD KEY `scvlID` (`scvlID`);

--
-- Indexes for table `SummaryCategories`
--
ALTER TABLE `SummaryCategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F815AD2ACE45CBB0` (`pkgID`);

--
-- Indexes for table `SummaryFields`
--
ALTER TABLE `SummaryFields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AC926EC9CE45CBB0` (`pkgID`);

--
-- Indexes for table `SummaryTemplateCategories`
--
ALTER TABLE `SummaryTemplateCategories`
  ADD PRIMARY KEY (`template_id`,`category_id`),
  ADD KEY `IDX_C8B6E64A5DA0FB8` (`template_id`),
  ADD KEY `IDX_C8B6E64A12469DE2` (`category_id`);

--
-- Indexes for table `SummaryTemplateFields`
--
ALTER TABLE `SummaryTemplateFields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_294381EC5DA0FB8` (`template_id`),
  ADD KEY `IDX_294381EC443707B0` (`field_id`);

--
-- Indexes for table `SummaryTemplates`
--
ALTER TABLE `SummaryTemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5E3C9832CE45CBB0` (`pkgID`);

--
-- Indexes for table `SummaryTemplateTags`
--
ALTER TABLE `SummaryTemplateTags`
  ADD PRIMARY KEY (`template_id`,`designtag_id`),
  ADD KEY `IDX_D9197F515DA0FB8` (`template_id`),
  ADD KEY `IDX_D9197F51960BFEAE` (`designtag_id`);

--
-- Indexes for table `SystemAntispamLibraries`
--
ALTER TABLE `SystemAntispamLibraries`
  ADD PRIMARY KEY (`saslHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemCaptchaLibraries`
--
ALTER TABLE `SystemCaptchaLibraries`
  ADD PRIMARY KEY (`sclHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemContentEditorSnippets`
--
ALTER TABLE `SystemContentEditorSnippets`
  ADD PRIMARY KEY (`scsHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemDatabaseMigrations`
--
ALTER TABLE `SystemDatabaseMigrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `SystemDatabaseQueryLog`
--
ALTER TABLE `SystemDatabaseQueryLog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Tasks`
--
ALTER TABLE `Tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_91994A93918020D9` (`handle`),
  ADD KEY `IDX_91994A93FD71026C` (`uID`),
  ADD KEY `IDX_91994A93CE45CBB0` (`pkgID`);

--
-- Indexes for table `TaskSets`
--
ALTER TABLE `TaskSets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `handle` (`handle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `TaskSetTasks`
--
ALTER TABLE `TaskSetTasks`
  ADD PRIMARY KEY (`task_id`,`set_id`),
  ADD KEY `IDX_D395AA388DB60186` (`task_id`),
  ADD KEY `IDX_D395AA3810FB0D18` (`set_id`);

--
-- Indexes for table `TopicTrees`
--
ALTER TABLE `TopicTrees`
  ADD PRIMARY KEY (`treeID`);

--
-- Indexes for table `TreeExpressEntrySiteResultNodes`
--
ALTER TABLE `TreeExpressEntrySiteResultNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `siteID` (`siteID`);

--
-- Indexes for table `TreeFileFolderNodes`
--
ALTER TABLE `TreeFileFolderNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `fslID` (`fslID`);

--
-- Indexes for table `TreeFileNodes`
--
ALTER TABLE `TreeFileNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `TreeGroupFolderNodes`
--
ALTER TABLE `TreeGroupFolderNodes`
  ADD PRIMARY KEY (`treeNodeID`);

--
-- Indexes for table `TreeGroupFolderNodeSelectedGroupTypes`
--
ALTER TABLE `TreeGroupFolderNodeSelectedGroupTypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `TreeNodePermissionAssignments`
--
ALTER TABLE `TreeNodePermissionAssignments`
  ADD PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `TreeNodes`
--
ALTER TABLE `TreeNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `treeNodeParentID` (`treeNodeParentID`),
  ADD KEY `treeNodeTypeID` (`treeNodeTypeID`),
  ADD KEY `treeID` (`treeID`),
  ADD KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`);

--
-- Indexes for table `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
  ADD PRIMARY KEY (`treeNodeTypeID`),
  ADD UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `Trees`
--
ALTER TABLE `Trees`
  ADD PRIMARY KEY (`treeID`),
  ADD KEY `treeTypeID` (`treeTypeID`);

--
-- Indexes for table `TreeSearchQueryNodes`
--
ALTER TABLE `TreeSearchQueryNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `savedSearchID` (`savedSearchID`);

--
-- Indexes for table `TreeTypes`
--
ALTER TABLE `TreeTypes`
  ADD PRIMARY KEY (`treeTypeID`),
  ADD UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `UsedStringLog`
--
ALTER TABLE `UsedStringLog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4E83837CF5E609AF` (`usedString`);

--
-- Indexes for table `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
  ADD PRIMARY KEY (`uID`,`akID`),
  ADD KEY `IDX_4DB68CA6FD71026C` (`uID`),
  ADD KEY `IDX_4DB68CA6B6561A7E` (`akID`),
  ADD KEY `IDX_4DB68CA6A2A82A5D` (`avID`);

--
-- Indexes for table `UserDeactivatedNotifications`
--
ALTER TABLE `UserDeactivatedNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `UserFavoriteFolders`
--
ALTER TABLE `UserFavoriteFolders`
  ADD PRIMARY KEY (`uID`,`treeNodeFolderId`),
  ADD KEY `IDX_EDB1ABB6FD71026C` (`uID`);

--
-- Indexes for table `UserGroups`
--
ALTER TABLE `UserGroups`
  ADD PRIMARY KEY (`uID`,`gID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `UserLoginAttempts`
--
ALTER TABLE `UserLoginAttempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UserPermissionEditPropertyAccessList`
--
ALTER TABLE `UserPermissionEditPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `UserPermissionEditPropertyAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessList`
--
ALTER TABLE `UserPermissionViewAttributeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionViewAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `UserPointActions`
--
ALTER TABLE `UserPointActions`
  ADD PRIMARY KEY (`upaID`),
  ADD UNIQUE KEY `upaHandle` (`upaHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gBBadgeID` (`gBadgeID`);

--
-- Indexes for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
  ADD PRIMARY KEY (`upID`),
  ADD KEY `upuID` (`upuID`),
  ADD KEY `upaID` (`upaID`);

--
-- Indexes for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`);

--
-- Indexes for table `UserPrivateMessagesAttachments`
--
ALTER TABLE `UserPrivateMessagesAttachments`
  ADD PRIMARY KEY (`msgID`,`fID`);

--
-- Indexes for table `UserPrivateMessagesTo`
--
ALTER TABLE `UserPrivateMessagesTo`
  ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `uAuthorID` (`uAuthorID`),
  ADD KEY `msgFolderID` (`msgMailboxID`),
  ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`uID`),
  ADD UNIQUE KEY `UNIQ_D5428AED28459686` (`uName`),
  ADD KEY `uEmail` (`uEmail`);

--
-- Indexes for table `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
  ADD PRIMARY KEY (`uID`);

--
-- Indexes for table `UserSignupNotifications`
--
ALTER TABLE `UserSignupNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_7FB1DF5B7B18287E` (`usID`);

--
-- Indexes for table `UserSignups`
--
ALTER TABLE `UserSignups`
  ADD PRIMARY KEY (`usID`),
  ADD UNIQUE KEY `UNIQ_FEB5D909FD71026C` (`uID`),
  ADD KEY `IDX_FEB5D909D3564642` (`createdBy`);

--
-- Indexes for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
  ADD PRIMARY KEY (`uvhID`),
  ADD KEY `uID` (`uID`,`type`),
  ADD KEY `uHash` (`uHash`,`type`),
  ADD KEY `uDateGenerated` (`uDateGenerated`,`type`);

--
-- Indexes for table `UserWorkflowProgress`
--
ALTER TABLE `UserWorkflowProgress`
  ADD PRIMARY KEY (`uID`,`wpID`);

--
-- Indexes for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `wpCategoryID` (`wpCategoryID`),
  ADD KEY `wfID` (`wfID`),
  ADD KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`);

--
-- Indexes for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  ADD PRIMARY KEY (`wpCategoryID`),
  ADD UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  ADD PRIMARY KEY (`wphID`),
  ADD KEY `wpID` (`wpID`,`timestamp`);

--
-- Indexes for table `WorkflowProgressNotifications`
--
ALTER TABLE `WorkflowProgressNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  ADD PRIMARY KEY (`wrID`);

--
-- Indexes for table `Workflows`
--
ALTER TABLE `Workflows`
  ADD PRIMARY KEY (`wfID`),
  ADD UNIQUE KEY `wfName` (`wfName`),
  ADD KEY `wftID` (`wftID`,`wfID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
  ADD PRIMARY KEY (`wftID`),
  ADD UNIQUE KEY `wftHandle` (`wftHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `_StyleCustomizerValues`
--
ALTER TABLE `_StyleCustomizerValues`
  ADD PRIMARY KEY (`scvID`),
  ADD KEY `scvlID` (`scvlID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  MODIFY `arLayoutPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
  MODIFY `arLayoutID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Areas`
--
ALTER TABLE `Areas`
  MODIFY `arID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `atSelectedSocialLinks`
--
ALTER TABLE `atSelectedSocialLinks`
  MODIFY `avsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  MODIFY `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atSelectOptionLists`
--
ALTER TABLE `atSelectOptionLists`
  MODIFY `avSelectOptionListID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  MODIFY `avSelectOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  MODIFY `akCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  MODIFY `akID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  MODIFY `atID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
  MODIFY `avID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
  MODIFY `authTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BannedWords`
--
ALTER TABLE `BannedWords`
  MODIFY `bwID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Blocks`
--
ALTER TABLE `Blocks`
  MODIFY `bID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
  MODIFY `btID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
  MODIFY `btsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `BoardConfiguredDataSourceConfiguration`
--
ALTER TABLE `BoardConfiguredDataSourceConfiguration`
  MODIFY `configurationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardConfiguredDataSources`
--
ALTER TABLE `BoardConfiguredDataSources`
  MODIFY `configuredDataSourceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardDataSources`
--
ALTER TABLE `BoardDataSources`
  MODIFY `dataSourceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `BoardDesignerCustomElementItems`
--
ALTER TABLE `BoardDesignerCustomElementItems`
  MODIFY `itemId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardDesignerCustomElements`
--
ALTER TABLE `BoardDesignerCustomElements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardInstanceItemBatches`
--
ALTER TABLE `BoardInstanceItemBatches`
  MODIFY `boardInstanceItemBatchID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardInstanceItems`
--
ALTER TABLE `BoardInstanceItems`
  MODIFY `boardInstanceItemID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardInstances`
--
ALTER TABLE `BoardInstances`
  MODIFY `boardInstanceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardInstanceSlotRules`
--
ALTER TABLE `BoardInstanceSlotRules`
  MODIFY `boardInstanceSlotRuleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardInstanceSlots`
--
ALTER TABLE `BoardInstanceSlots`
  MODIFY `boardInstanceSlotID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardItemCategories`
--
ALTER TABLE `BoardItemCategories`
  MODIFY `boardItemCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardItems`
--
ALTER TABLE `BoardItems`
  MODIFY `boardItemID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardItemTags`
--
ALTER TABLE `BoardItemTags`
  MODIFY `boardItemTagID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Boards`
--
ALTER TABLE `Boards`
  MODIFY `boardID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardSlotTemplates`
--
ALTER TABLE `BoardSlotTemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BoardTemplates`
--
ALTER TABLE `BoardTemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btAccordionEntries`
--
ALTER TABLE `btAccordionEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btBlockCustomLinkItemEntries`
--
ALTER TABLE `btBlockCustomLinkItemEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `btBlockMultipleItemEntries`
--
ALTER TABLE `btBlockMultipleItemEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `btContentImageBreakpoints`
--
ALTER TABLE `btContentImageBreakpoints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
  MODIFY `aID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
  MODIFY `qID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btGalleryEntries`
--
ALTER TABLE `btGalleryEntries`
  MODIFY `eID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btGalleryEntryDisplayChoices`
--
ALTER TABLE `btGalleryEntryDisplayChoices`
  MODIFY `dcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
  MODIFY `btShareThisPageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
  MODIFY `btSocialLinkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
  MODIFY `optionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
  MODIFY `resultID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventOccurrences`
--
ALTER TABLE `CalendarEventOccurrences`
  MODIFY `occurrenceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventRepetitions`
--
ALTER TABLE `CalendarEventRepetitions`
  MODIFY `repetitionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEvents`
--
ALTER TABLE `CalendarEvents`
  MODIFY `eventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventSummaryTemplates`
--
ALTER TABLE `CalendarEventSummaryTemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventVersionOccurrences`
--
ALTER TABLE `CalendarEventVersionOccurrences`
  MODIFY `versionOccurrenceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventVersionRepetitions`
--
ALTER TABLE `CalendarEventVersionRepetitions`
  MODIFY `versionRepetitionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventVersions`
--
ALTER TABLE `CalendarEventVersions`
  MODIFY `eventVersionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarRelatedEvents`
--
ALTER TABLE `CalendarRelatedEvents`
  MODIFY `relatedEventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Calendars`
--
ALTER TABLE `Calendars`
  MODIFY `caID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Collections`
--
ALTER TABLE `Collections`
  MODIFY `cID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
  MODIFY `cnvEditorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
  MODIFY `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
  MODIFY `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
  MODIFY `cnvMessageRatingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
  MODIFY `cnvMessageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
  MODIFY `cnvRatingTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Conversations`
--
ALTER TABLE `Conversations`
  MODIFY `cnvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DesignTags`
--
ALTER TABLE `DesignTags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  MODIFY `dsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'DownloadStatistics record ID';

--
-- AUTO_INCREMENT for table `ExpressEntityAssociationEntries`
--
ALTER TABLE `ExpressEntityAssociationEntries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ExpressEntityEntries`
--
ALTER TABLE `ExpressEntityEntries`
  MODIFY `exEntryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ExpressEntityEntryAssociations`
--
ALTER TABLE `ExpressEntityEntryAssociations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ExpressFormFieldSets`
--
ALTER TABLE `ExpressFormFieldSets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileExternalFileProviders`
--
ALTER TABLE `FileExternalFileProviders`
  MODIFY `efpID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileExternalFileProviderTypes`
--
ALTER TABLE `FileExternalFileProviderTypes`
  MODIFY `efpTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
  MODIFY `ftTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Files`
--
ALTER TABLE `Files`
  MODIFY `fID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  MODIFY `fsfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileSets`
--
ALTER TABLE `FileSets`
  MODIFY `fsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
  MODIFY `fslID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
  MODIFY `fslTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
  MODIFY `fvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Geolocators`
--
ALTER TABLE `Geolocators`
  MODIFY `glID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Geolocator ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `GroupCreates`
--
ALTER TABLE `GroupCreates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupRoleChanges`
--
ALTER TABLE `GroupRoleChanges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupRoles`
--
ALTER TABLE `GroupRoles`
  MODIFY `grID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Groups`
--
ALTER TABLE `Groups`
  MODIFY `gID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `GroupSets`
--
ALTER TABLE `GroupSets`
  MODIFY `gsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupSignupRequestAccepts`
--
ALTER TABLE `GroupSignupRequestAccepts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupSignupRequestDeclines`
--
ALTER TABLE `GroupSignupRequestDeclines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupSignupRequests`
--
ALTER TABLE `GroupSignupRequests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupSignups`
--
ALTER TABLE `GroupSignups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupTypes`
--
ALTER TABLE `GroupTypes`
  MODIFY `gtID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `IpAccessControlCategories`
--
ALTER TABLE `IpAccessControlCategories`
  MODIFY `iaccID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The IP Access Control Category identifier', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `IpAccessControlEvents`
--
ALTER TABLE `IpAccessControlEvents`
  MODIFY `iaceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The IP Access Control Event identifier';

--
-- AUTO_INCREMENT for table `IpAccessControlRanges`
--
ALTER TABLE `IpAccessControlRanges`
  MODIFY `iacrID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The IP Access Control Range identifier';

--
-- AUTO_INCREMENT for table `Jobs`
--
ALTER TABLE `Jobs`
  MODIFY `jID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `JobSets`
--
ALTER TABLE `JobSets`
  MODIFY `jsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `JobsLog`
--
ALTER TABLE `JobsLog`
  MODIFY `jlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Logs`
--
ALTER TABLE `Logs`
  MODIFY `logID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `MailImporters`
--
ALTER TABLE `MailImporters`
  MODIFY `miID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
  MODIFY `mvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MessengerMessages`
--
ALTER TABLE `MessengerMessages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
  MODIFY `mtID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `NotificationAlerts`
--
ALTER TABLE `NotificationAlerts`
  MODIFY `naID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `nID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Packages`
--
ALTER TABLE `Packages`
  MODIFY `pkgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `PageContainerInstanceAreas`
--
ALTER TABLE `PageContainerInstanceAreas`
  MODIFY `containerInstanceAreaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageContainerInstances`
--
ALTER TABLE `PageContainerInstances`
  MODIFY `containerInstanceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageContainers`
--
ALTER TABLE `PageContainers`
  MODIFY `containerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageFeeds`
--
ALTER TABLE `PageFeeds`
  MODIFY `pfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PagePaths`
--
ALTER TABLE `PagePaths`
  MODIFY `ppID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `PageSummaryTemplates`
--
ALTER TABLE `PageSummaryTemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `PageTemplates`
--
ALTER TABLE `PageTemplates`
  MODIFY `pTemplateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `PageThemeCustomSkins`
--
ALTER TABLE `PageThemeCustomSkins`
  MODIFY `skinID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageThemes`
--
ALTER TABLE `PageThemes`
  MODIFY `pThemeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
  MODIFY `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
  MODIFY `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
  MODIFY `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
  MODIFY `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  MODIFY `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
  MODIFY `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PageTypes`
--
ALTER TABLE `PageTypes`
  MODIFY `ptID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
  MODIFY `paID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
  MODIFY `peID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
  MODIFY `pegID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PermissionAccessEntitySiteGroups`
--
ALTER TABLE `PermissionAccessEntitySiteGroups`
  MODIFY `pegID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
  MODIFY `petID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
  MODIFY `pdID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
  MODIFY `pkCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  MODIFY `pkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `PileContents`
--
ALTER TABLE `PileContents`
  MODIFY `pcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Piles`
--
ALTER TABLE `Piles`
  MODIFY `pID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Queues`
--
ALTER TABLE `Queues`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedExpressSearchQueries`
--
ALTER TABLE `SavedExpressSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedFileSearchQueries`
--
ALTER TABLE `SavedFileSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedGroupSearchQueries`
--
ALTER TABLE `SavedGroupSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedLogSearchQueries`
--
ALTER TABLE `SavedLogSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedPageSearchQueries`
--
ALTER TABLE `SavedPageSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedUserSearchQueries`
--
ALTER TABLE `SavedUserSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteDomains`
--
ALTER TABLE `SiteDomains`
  MODIFY `domainID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteGroupRelations`
--
ALTER TABLE `SiteGroupRelations`
  MODIFY `groupRelationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteGroups`
--
ALTER TABLE `SiteGroups`
  MODIFY `siteGID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteLocales`
--
ALTER TABLE `SiteLocales`
  MODIFY `siteLocaleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Sites`
--
ALTER TABLE `Sites`
  MODIFY `siteID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `SiteSkeletonLocales`
--
ALTER TABLE `SiteSkeletonLocales`
  MODIFY `skeletonLocaleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteSkeletons`
--
ALTER TABLE `SiteSkeletons`
  MODIFY `siteSkeletonID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteTrees`
--
ALTER TABLE `SiteTrees`
  MODIFY `siteTreeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `SiteTypes`
--
ALTER TABLE `SiteTypes`
  MODIFY `siteTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
  MODIFY `slID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Stacks`
--
ALTER TABLE `Stacks`
  MODIFY `stID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
  MODIFY `sccRecordID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
  MODIFY `pssPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
  MODIFY `issID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
  MODIFY `scvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
  MODIFY `scvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SummaryCategories`
--
ALTER TABLE `SummaryCategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `SummaryFields`
--
ALTER TABLE `SummaryFields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `SummaryTemplateFields`
--
ALTER TABLE `SummaryTemplateFields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `SummaryTemplates`
--
ALTER TABLE `SummaryTemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `SystemDatabaseQueryLog`
--
ALTER TABLE `SystemDatabaseQueryLog`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Tasks`
--
ALTER TABLE `Tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `TaskSets`
--
ALTER TABLE `TaskSets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `TreeFileFolderNodes`
--
ALTER TABLE `TreeFileFolderNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `TreeFileNodes`
--
ALTER TABLE `TreeFileNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `TreeGroupFolderNodes`
--
ALTER TABLE `TreeGroupFolderNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TreeGroupFolderNodeSelectedGroupTypes`
--
ALTER TABLE `TreeGroupFolderNodeSelectedGroupTypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `TreeNodes`
--
ALTER TABLE `TreeNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
  MODIFY `treeNodeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Trees`
--
ALTER TABLE `Trees`
  MODIFY `treeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `TreeSearchQueryNodes`
--
ALTER TABLE `TreeSearchQueryNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TreeTypes`
--
ALTER TABLE `TreeTypes`
  MODIFY `treeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `UsedStringLog`
--
ALTER TABLE `UsedStringLog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserPointActions`
--
ALTER TABLE `UserPointActions`
  MODIFY `upaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
  MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
  MODIFY `msgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `uID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `UserSignups`
--
ALTER TABLE `UserSignups`
  MODIFY `usID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
  MODIFY `uvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
  MODIFY `wpID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  MODIFY `wpCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  MODIFY `wphID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  MODIFY `wrID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `Workflows`
--
ALTER TABLE `Workflows`
  MODIFY `wfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
  MODIFY `wftID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_StyleCustomizerValues`
--
ALTER TABLE `_StyleCustomizerValues`
  MODIFY `scvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AreaLayoutsUsingPresets`
--
ALTER TABLE `AreaLayoutsUsingPresets`
  ADD CONSTRAINT `FK_7A9049A1385521EA` FOREIGN KEY (`arLayoutID`) REFERENCES `AreaLayouts` (`arLayoutID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `atAddress`
--
ALTER TABLE `atAddress`
  ADD CONSTRAINT `FK_DA949740A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
  ADD CONSTRAINT `FK_5A737B61B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atBoolean`
--
ALTER TABLE `atBoolean`
  ADD CONSTRAINT `FK_5D5F70A9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
  ADD CONSTRAINT `FK_78025F47B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atDateTime`
--
ALTER TABLE `atDateTime`
  ADD CONSTRAINT `FK_DF75412AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
  ADD CONSTRAINT `FK_C6B3B63AB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atDefault`
--
ALTER TABLE `atDefault`
  ADD CONSTRAINT `FK_3484F81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atDuration`
--
ALTER TABLE `atDuration`
  ADD CONSTRAINT `FK_6AEBA81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atDurationSettings`
--
ALTER TABLE `atDurationSettings`
  ADD CONSTRAINT `FK_AE47F82EB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atEmptySettings`
--
ALTER TABLE `atEmptySettings`
  ADD CONSTRAINT `FK_ED1BF189B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atExpress`
--
ALTER TABLE `atExpress`
  ADD CONSTRAINT `FK_CFAF40F1A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atExpressSelectedEntries`
--
ALTER TABLE `atExpressSelectedEntries`
  ADD CONSTRAINT `FK_C9D404BB6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_C9D404BBA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atExpress` (`avID`);

--
-- Constraints for table `atExpressSettings`
--
ALTER TABLE `atExpressSettings`
  ADD CONSTRAINT `FK_E8F67F0FB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_E8F67F0FCE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `atFile`
--
ALTER TABLE `atFile`
  ADD CONSTRAINT `FK_73D17D61A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_73D17D61E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE;

--
-- Constraints for table `atFileSettings`
--
ALTER TABLE `atFileSettings`
  ADD CONSTRAINT `FK_EADD86C8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atNumber`
--
ALTER TABLE `atNumber`
  ADD CONSTRAINT `FK_41BA30B5A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atSelect`
--
ALTER TABLE `atSelect`
  ADD CONSTRAINT `FK_9CD8C521A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atSelectedSocialLinks`
--
ALTER TABLE `atSelectedSocialLinks`
  ADD CONSTRAINT `FK_10743709A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSocialLinks` (`avID`);

--
-- Constraints for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  ADD CONSTRAINT `FK_E42A7D5BA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atTopic` (`avID`);

--
-- Constraints for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  ADD CONSTRAINT `FK_797414B0CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`);

--
-- Constraints for table `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
  ADD CONSTRAINT `FK_40C97EC3A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSelect` (`avID`),
  ADD CONSTRAINT `FK_40C97EC3E584C274` FOREIGN KEY (`avSelectOptionID`) REFERENCES `atSelectOptions` (`avSelectOptionID`);

--
-- Constraints for table `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
  ADD CONSTRAINT `FK_5D514424B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_5D514424CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`);

--
-- Constraints for table `atSite`
--
ALTER TABLE `atSite`
  ADD CONSTRAINT `FK_960D4295521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  ADD CONSTRAINT `FK_960D4295A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
  ADD CONSTRAINT `FK_1431EC8AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
  ADD CONSTRAINT `FK_A6EA10D6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atTextSettings`
--
ALTER TABLE `atTextSettings`
  ADD CONSTRAINT `FK_951A10CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atTopic`
--
ALTER TABLE `atTopic`
  ADD CONSTRAINT `FK_BABDD1FAA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
  ADD CONSTRAINT `FK_830FD2FEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  ADD CONSTRAINT `FK_A2A0CC67CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  ADD CONSTRAINT `FK_DCA32C62A12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  ADD CONSTRAINT `FK_DCA32C62B059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_DCA32C62CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
  ADD CONSTRAINT `FK_222F72D8A463E8B6` FOREIGN KEY (`asID`) REFERENCES `AttributeSets` (`asID`),
  ADD CONSTRAINT `FK_222F72D8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
  ADD CONSTRAINT `FK_FCA02D5FB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_FCA02D5FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
  ADD CONSTRAINT `FK_49A9CABEA12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  ADD CONSTRAINT `FK_49A9CABEB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`);

--
-- Constraints for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  ADD CONSTRAINT `FK_53580A7FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
  ADD CONSTRAINT `FK_DCCE7864B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `atUserGroupSettings`
--
ALTER TABLE `atUserGroupSettings`
  ADD CONSTRAINT `FK_C47871BEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `BoardConfiguredDataSourceConfiguration`
--
ALTER TABLE `BoardConfiguredDataSourceConfiguration`
  ADD CONSTRAINT `FK_80879512E2D47DD5` FOREIGN KEY (`configuredDataSourceID`) REFERENCES `BoardConfiguredDataSources` (`configuredDataSourceID`);

--
-- Constraints for table `BoardConfiguredDataSourceConfigurationCalendarEvent`
--
ALTER TABLE `BoardConfiguredDataSourceConfigurationCalendarEvent`
  ADD CONSTRAINT `FK_DE5A529911C85723` FOREIGN KEY (`caID`) REFERENCES `Calendars` (`caID`),
  ADD CONSTRAINT `FK_DE5A52997916C267` FOREIGN KEY (`configurationID`) REFERENCES `BoardConfiguredDataSourceConfiguration` (`configurationID`) ON DELETE CASCADE;

--
-- Constraints for table `BoardConfiguredDataSourceConfigurationPage`
--
ALTER TABLE `BoardConfiguredDataSourceConfigurationPage`
  ADD CONSTRAINT `FK_2C8A71BD7916C267` FOREIGN KEY (`configurationID`) REFERENCES `BoardConfiguredDataSourceConfiguration` (`configurationID`) ON DELETE CASCADE;

--
-- Constraints for table `BoardConfiguredDataSources`
--
ALTER TABLE `BoardConfiguredDataSources`
  ADD CONSTRAINT `FK_481DA3EF2571BEE` FOREIGN KEY (`boardID`) REFERENCES `Boards` (`boardID`),
  ADD CONSTRAINT `FK_481DA3EF3C4EAFF2` FOREIGN KEY (`dataSourceID`) REFERENCES `BoardDataSources` (`dataSourceID`);

--
-- Constraints for table `BoardCustomSlotTemplates`
--
ALTER TABLE `BoardCustomSlotTemplates`
  ADD CONSTRAINT `FK_A972DD602571BEE` FOREIGN KEY (`boardID`) REFERENCES `Boards` (`boardID`),
  ADD CONSTRAINT `FK_A972DD60E7630775` FOREIGN KEY (`slotTemplateID`) REFERENCES `BoardSlotTemplates` (`id`);

--
-- Constraints for table `BoardDataSources`
--
ALTER TABLE `BoardDataSources`
  ADD CONSTRAINT `FK_DACB5A9ACE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `BoardDesignerCustomElementItems`
--
ALTER TABLE `BoardDesignerCustomElementItems`
  ADD CONSTRAINT `FK_C3E81E43A1BF9938` FOREIGN KEY (`boardItemID`) REFERENCES `BoardItems` (`boardItemID`),
  ADD CONSTRAINT `FK_C3E81E43DA67F394` FOREIGN KEY (`customElementID`) REFERENCES `BoardDesignerCustomElements` (`id`);

--
-- Constraints for table `BoardDesignerCustomElements`
--
ALTER TABLE `BoardDesignerCustomElements`
  ADD CONSTRAINT `FK_D2D0FCBD80D42955` FOREIGN KEY (`slotTemplate_id`) REFERENCES `BoardSlotTemplates` (`id`),
  ADD CONSTRAINT `FK_D2D0FCBDFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `BoardInstanceItemBatches`
--
ALTER TABLE `BoardInstanceItemBatches`
  ADD CONSTRAINT `FK_968D5F552E21467` FOREIGN KEY (`boardInstanceID`) REFERENCES `BoardInstances` (`boardInstanceID`);

--
-- Constraints for table `BoardInstanceItems`
--
ALTER TABLE `BoardInstanceItems`
  ADD CONSTRAINT `FK_285D2C822E21467` FOREIGN KEY (`boardInstanceID`) REFERENCES `BoardInstances` (`boardInstanceID`),
  ADD CONSTRAINT `FK_285D2C82A1BF9938` FOREIGN KEY (`boardItemID`) REFERENCES `BoardItems` (`boardItemID`),
  ADD CONSTRAINT `FK_285D2C82E2D47DD5` FOREIGN KEY (`configuredDataSourceID`) REFERENCES `BoardConfiguredDataSources` (`configuredDataSourceID`),
  ADD CONSTRAINT `FK_285D2C82E9D76F8E` FOREIGN KEY (`boardInstanceItemBatchID`) REFERENCES `BoardInstanceItemBatches` (`boardInstanceItemBatchID`);

--
-- Constraints for table `BoardInstances`
--
ALTER TABLE `BoardInstances`
  ADD CONSTRAINT `FK_8B85BCCB2571BEE` FOREIGN KEY (`boardID`) REFERENCES `Boards` (`boardID`),
  ADD CONSTRAINT `FK_8B85BCCB521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `BoardInstanceSlotRules`
--
ALTER TABLE `BoardInstanceSlotRules`
  ADD CONSTRAINT `FK_4BF1A09D2E21467` FOREIGN KEY (`boardInstanceID`) REFERENCES `BoardInstances` (`boardInstanceID`),
  ADD CONSTRAINT `FK_4BF1A09DFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `BoardInstanceSlots`
--
ALTER TABLE `BoardInstanceSlots`
  ADD CONSTRAINT `FK_137F01F2E21467` FOREIGN KEY (`boardInstanceID`) REFERENCES `BoardInstances` (`boardInstanceID`),
  ADD CONSTRAINT `FK_137F01F5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `BoardSlotTemplates` (`id`);

--
-- Constraints for table `BoardItemCategories`
--
ALTER TABLE `BoardItemCategories`
  ADD CONSTRAINT `FK_BEF09673A1BF9938` FOREIGN KEY (`boardItemID`) REFERENCES `BoardItems` (`boardItemID`);

--
-- Constraints for table `BoardItems`
--
ALTER TABLE `BoardItems`
  ADD CONSTRAINT `FK_E831ECA13C4EAFF2` FOREIGN KEY (`dataSourceID`) REFERENCES `BoardDataSources` (`dataSourceID`),
  ADD CONSTRAINT `FK_E831ECA1E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`);

--
-- Constraints for table `BoardItemTags`
--
ALTER TABLE `BoardItemTags`
  ADD CONSTRAINT `FK_13AEB901A1BF9938` FOREIGN KEY (`boardItemID`) REFERENCES `BoardItems` (`boardItemID`);

--
-- Constraints for table `BoardPermissionAssignments`
--
ALTER TABLE `BoardPermissionAssignments`
  ADD CONSTRAINT `FK_7C073ED92571BEE` FOREIGN KEY (`boardID`) REFERENCES `Boards` (`boardID`);

--
-- Constraints for table `Boards`
--
ALTER TABLE `Boards`
  ADD CONSTRAINT `FK_F4424825521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  ADD CONSTRAINT `FK_F44248255DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `BoardTemplates` (`id`),
  ADD CONSTRAINT `FK_F4424825CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `BoardSlotTemplates`
--
ALTER TABLE `BoardSlotTemplates`
  ADD CONSTRAINT `FK_6FE111C5CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `BoardSlotTemplateTags`
--
ALTER TABLE `BoardSlotTemplateTags`
  ADD CONSTRAINT `FK_7BB1975E648A682` FOREIGN KEY (`slottemplate_id`) REFERENCES `BoardSlotTemplates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7BB1975E960BFEAE` FOREIGN KEY (`designtag_id`) REFERENCES `DesignTags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `BoardTemplates`
--
ALTER TABLE `BoardTemplates`
  ADD CONSTRAINT `FK_9E8AC12CCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `CalendarEventAttributeKeys`
--
ALTER TABLE `CalendarEventAttributeKeys`
  ADD CONSTRAINT `FK_27F477CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `CalendarEventCustomSummaryTemplates`
--
ALTER TABLE `CalendarEventCustomSummaryTemplates`
  ADD CONSTRAINT `FK_7059BBEF10409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`),
  ADD CONSTRAINT `FK_7059BBEF5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `SummaryTemplates` (`id`);

--
-- Constraints for table `CalendarEventOccurrences`
--
ALTER TABLE `CalendarEventOccurrences`
  ADD CONSTRAINT `FK_7DD686EC31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `CalendarEventRepetitions` (`repetitionID`);

--
-- Constraints for table `CalendarEvents`
--
ALTER TABLE `CalendarEvents`
  ADD CONSTRAINT `FK_7F23C55611C85723` FOREIGN KEY (`caID`) REFERENCES `Calendars` (`caID`);

--
-- Constraints for table `CalendarEventSummaryTemplates`
--
ALTER TABLE `CalendarEventSummaryTemplates`
  ADD CONSTRAINT `FK_219AA86B10409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`),
  ADD CONSTRAINT `FK_219AA86B5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `SummaryTemplates` (`id`);

--
-- Constraints for table `CalendarEventVersionAttributeValues`
--
ALTER TABLE `CalendarEventVersionAttributeValues`
  ADD CONSTRAINT `FK_8C835B05403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`),
  ADD CONSTRAINT `FK_8C835B05A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_8C835B05B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `CalendarEventVersionOccurrences`
--
ALTER TABLE `CalendarEventVersionOccurrences`
  ADD CONSTRAINT `FK_60310489403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`),
  ADD CONSTRAINT `FK_60310489B4FDDC0F` FOREIGN KEY (`occurrenceID`) REFERENCES `CalendarEventOccurrences` (`occurrenceID`);

--
-- Constraints for table `CalendarEventVersionRepetitions`
--
ALTER TABLE `CalendarEventVersionRepetitions`
  ADD CONSTRAINT `FK_C1C3D3DB31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `CalendarEventRepetitions` (`repetitionID`),
  ADD CONSTRAINT `FK_C1C3D3DB403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`);

--
-- Constraints for table `CalendarEventVersions`
--
ALTER TABLE `CalendarEventVersions`
  ADD CONSTRAINT `FK_8E26027410409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`),
  ADD CONSTRAINT `FK_8E260274FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `CalendarEventWorkflowProgress`
--
ALTER TABLE `CalendarEventWorkflowProgress`
  ADD CONSTRAINT `FK_C5EAACF910409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`);

--
-- Constraints for table `CalendarPermissionAssignments`
--
ALTER TABLE `CalendarPermissionAssignments`
  ADD CONSTRAINT `FK_5AD546AA11C85723` FOREIGN KEY (`caID`) REFERENCES `Calendars` (`caID`);

--
-- Constraints for table `CalendarRelatedEvents`
--
ALTER TABLE `CalendarRelatedEvents`
  ADD CONSTRAINT `FK_310130E910409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`);

--
-- Constraints for table `Calendars`
--
ALTER TABLE `Calendars`
  ADD CONSTRAINT `FK_62E00AC521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `CollectionAttributeKeys`
--
ALTER TABLE `CollectionAttributeKeys`
  ADD CONSTRAINT `FK_1E3E5B79B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
  ADD CONSTRAINT `FK_BB9995FCA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_BB9995FCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
  ADD CONSTRAINT `FK_FD84E56FE5DADDAE` FOREIGN KEY (`cID`) REFERENCES `Collections` (`cID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ConversationMessageNotifications`
--
ALTER TABLE `ConversationMessageNotifications`
  ADD CONSTRAINT `FK_559DE1CBED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  ADD CONSTRAINT `FK_7CDE2E3CE3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE;

--
-- Constraints for table `Editor`
--
ALTER TABLE `Editor`
  ADD CONSTRAINT `FK_CB5DF48CCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `ExpressAttributeKeys`
--
ALTER TABLE `ExpressAttributeKeys`
  ADD CONSTRAINT `FK_8C881F181257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`),
  ADD CONSTRAINT `FK_8C881F1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressEntities`
--
ALTER TABLE `ExpressEntities`
  ADD CONSTRAINT `FK_BC772AA6547D6B2D` FOREIGN KEY (`default_view_form_id`) REFERENCES `ExpressForms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6C7DEC56D` FOREIGN KEY (`default_edit_form_id`) REFERENCES `ExpressForms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `ExpressEntityAssociationEntries`
--
ALTER TABLE `ExpressEntityAssociationEntries`
  ADD CONSTRAINT `FK_9C2BB76C6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_9C2BB76CEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityEntryAssociations` (`id`);

--
-- Constraints for table `ExpressEntityAssociations`
--
ALTER TABLE `ExpressEntityAssociations`
  ADD CONSTRAINT `FK_98A0F796B5910F71` FOREIGN KEY (`target_entity_id`) REFERENCES `ExpressEntities` (`id`),
  ADD CONSTRAINT `FK_98A0F796E9BBEE93` FOREIGN KEY (`source_entity_id`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `ExpressEntityEntries`
--
ALTER TABLE `ExpressEntityEntries`
  ADD CONSTRAINT `FK_B8AE3531AFC87D03` FOREIGN KEY (`exEntryEntityID`) REFERENCES `ExpressEntities` (`id`),
  ADD CONSTRAINT `FK_B8AE3531FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `ExpressEntityEntryAssociations`
--
ALTER TABLE `ExpressEntityEntryAssociations`
  ADD CONSTRAINT `FK_25B3A0826DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_25B3A082EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`);

--
-- Constraints for table `ExpressEntityEntryAttributeValues`
--
ALTER TABLE `ExpressEntityEntryAttributeValues`
  ADD CONSTRAINT `FK_6DB641546DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_6DB64154A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_6DB64154B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `ExpressFormFieldSetAssociationControls`
--
ALTER TABLE `ExpressFormFieldSetAssociationControls`
  ADD CONSTRAINT `FK_E6DF21BBBF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E6DF21BBEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`);

--
-- Constraints for table `ExpressFormFieldSetAttributeKeyControls`
--
ALTER TABLE `ExpressFormFieldSetAttributeKeyControls`
  ADD CONSTRAINT `FK_8481F9D1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_8481F9D1BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressFormFieldSetAuthorControls`
--
ALTER TABLE `ExpressFormFieldSetAuthorControls`
  ADD CONSTRAINT `FK_CF378786BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressFormFieldSetControls`
--
ALTER TABLE `ExpressFormFieldSetControls`
  ADD CONSTRAINT `FK_E42868A43ABF811A` FOREIGN KEY (`field_set_id`) REFERENCES `ExpressFormFieldSets` (`id`);

--
-- Constraints for table `ExpressFormFieldSetPublicIdentifierControls`
--
ALTER TABLE `ExpressFormFieldSetPublicIdentifierControls`
  ADD CONSTRAINT `FK_67180C04BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressFormFieldSets`
--
ALTER TABLE `ExpressFormFieldSets`
  ADD CONSTRAINT `FK_A33BBBEC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `ExpressForms` (`id`);

--
-- Constraints for table `ExpressFormFieldSetTextControls`
--
ALTER TABLE `ExpressFormFieldSetTextControls`
  ADD CONSTRAINT `FK_DB5A209ABF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressForms`
--
ALTER TABLE `ExpressForms`
  ADD CONSTRAINT `FK_8D09031A81257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `ExpressSearchIndexAttributes`
--
ALTER TABLE `ExpressSearchIndexAttributes`
  ADD CONSTRAINT `FK_5E82BF2D6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `FileAttributeKeys`
--
ALTER TABLE `FileAttributeKeys`
  ADD CONSTRAINT `FK_BC5C7BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
  ADD CONSTRAINT `FK_BBECEAA4A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_BBECEAA4B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `FileImageThumbnailTypeFileSets`
--
ALTER TABLE `FileImageThumbnailTypeFileSets`
  ADD CONSTRAINT `FK_BD75F88D480660E5` FOREIGN KEY (`ftfsThumbnailType`) REFERENCES `FileImageThumbnailTypes` (`ftTypeID`) ON DELETE CASCADE;

--
-- Constraints for table `Files`
--
ALTER TABLE `Files`
  ADD CONSTRAINT `FK_C7F46F5DB81D3903` FOREIGN KEY (`fslID`) REFERENCES `FileStorageLocations` (`fslID`),
  ADD CONSTRAINT `FK_C7F46F5DFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
  ADD CONSTRAINT `FK_3A3A4845E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `FileVersions`
--
ALTER TABLE `FileVersions`
  ADD CONSTRAINT `FK_D7B5A13AE3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`);

--
-- Constraints for table `FormSubmissionNotifications`
--
ALTER TABLE `FormSubmissionNotifications`
  ADD CONSTRAINT `FK_E7B6BE406DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E7B6BE40ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `Geolocators`
--
ALTER TABLE `Geolocators`
  ADD CONSTRAINT `FK_83BB1614D5F6CC40` FOREIGN KEY (`glPackage`) REFERENCES `Packages` (`pkgID`) ON DELETE CASCADE;

--
-- Constraints for table `GroupCreateNotifications`
--
ALTER TABLE `GroupCreateNotifications`
  ADD CONSTRAINT `FK_C17D9982BF396750` FOREIGN KEY (`id`) REFERENCES `GroupCreates` (`id`),
  ADD CONSTRAINT `FK_C17D9982ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `GroupCreates`
--
ALTER TABLE `GroupCreates`
  ADD CONSTRAINT `FK_CCD7EF48FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `GroupRoleChangeNotifications`
--
ALTER TABLE `GroupRoleChangeNotifications`
  ADD CONSTRAINT `FK_C1402C44BF396750` FOREIGN KEY (`id`) REFERENCES `GroupRoleChanges` (`id`),
  ADD CONSTRAINT `FK_C1402C44ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `GroupRoleChanges`
--
ALTER TABLE `GroupRoleChanges`
  ADD CONSTRAINT `FK_98ADE2F3FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `GroupSignupNotifications`
--
ALTER TABLE `GroupSignupNotifications`
  ADD CONSTRAINT `FK_77F3EABF396750` FOREIGN KEY (`id`) REFERENCES `GroupSignups` (`id`),
  ADD CONSTRAINT `FK_77F3EAED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `GroupSignupRequestAcceptNotifications`
--
ALTER TABLE `GroupSignupRequestAcceptNotifications`
  ADD CONSTRAINT `FK_72E6015ABF396750` FOREIGN KEY (`id`) REFERENCES `GroupSignupRequestAccepts` (`id`),
  ADD CONSTRAINT `FK_72E6015AED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `GroupSignupRequestAccepts`
--
ALTER TABLE `GroupSignupRequestAccepts`
  ADD CONSTRAINT `FK_18BBF9FCDB43B5DF` FOREIGN KEY (`managerUID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18BBF9FCFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `GroupSignupRequestDeclineNotifications`
--
ALTER TABLE `GroupSignupRequestDeclineNotifications`
  ADD CONSTRAINT `FK_930C0D02BF396750` FOREIGN KEY (`id`) REFERENCES `GroupSignupRequestDeclines` (`id`),
  ADD CONSTRAINT `FK_930C0D02ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `GroupSignupRequestDeclines`
--
ALTER TABLE `GroupSignupRequestDeclines`
  ADD CONSTRAINT `FK_A905188EDB43B5DF` FOREIGN KEY (`managerUID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_A905188EFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `GroupSignupRequestNotifications`
--
ALTER TABLE `GroupSignupRequestNotifications`
  ADD CONSTRAINT `FK_56EC93C8BF396750` FOREIGN KEY (`id`) REFERENCES `GroupSignupRequests` (`id`),
  ADD CONSTRAINT `FK_56EC93C8ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `GroupSignupRequests`
--
ALTER TABLE `GroupSignupRequests`
  ADD CONSTRAINT `FK_8CF06191FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `GroupSignups`
--
ALTER TABLE `GroupSignups`
  ADD CONSTRAINT `FK_D6CC4ECBFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `IpAccessControlCategories`
--
ALTER TABLE `IpAccessControlCategories`
  ADD CONSTRAINT `FK_D4A10062C908ED51` FOREIGN KEY (`iaccPackage`) REFERENCES `Packages` (`pkgID`) ON DELETE CASCADE;

--
-- Constraints for table `IpAccessControlEvents`
--
ALTER TABLE `IpAccessControlEvents`
  ADD CONSTRAINT `FK_6C004072B0C0DFA7` FOREIGN KEY (`iaceSite`) REFERENCES `Sites` (`siteID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6C004072E9480668` FOREIGN KEY (`iaceCategory`) REFERENCES `IpAccessControlCategories` (`iaccID`) ON DELETE CASCADE;

--
-- Constraints for table `IpAccessControlRanges`
--
ALTER TABLE `IpAccessControlRanges`
  ADD CONSTRAINT `FK_2B1AA65D21E929D0` FOREIGN KEY (`iacrCategory`) REFERENCES `IpAccessControlCategories` (`iaccID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2B1AA65D62009435` FOREIGN KEY (`iacrSite`) REFERENCES `Sites` (`siteID`) ON DELETE CASCADE;

--
-- Constraints for table `LegacyAttributeKeys`
--
ALTER TABLE `LegacyAttributeKeys`
  ADD CONSTRAINT `FK_740BA2BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `MessengerProcesses`
--
ALTER TABLE `MessengerProcesses`
  ADD CONSTRAINT `FK_FBB7A9C9F39EBE7A` FOREIGN KEY (`batch_id`) REFERENCES `MessengerBatches` (`id`),
  ADD CONSTRAINT `FK_FBB7A9C9FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `MessengerScheduledTasks`
--
ALTER TABLE `MessengerScheduledTasks`
  ADD CONSTRAINT `FK_DCEB3C0D8DB60186` FOREIGN KEY (`task_id`) REFERENCES `Tasks` (`id`),
  ADD CONSTRAINT `FK_DCEB3C0DFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `MessengerTaskProcesses`
--
ALTER TABLE `MessengerTaskProcesses`
  ADD CONSTRAINT `FK_BE77DC6F8DB60186` FOREIGN KEY (`task_id`) REFERENCES `Tasks` (`id`),
  ADD CONSTRAINT `FK_BE77DC6FBF396750` FOREIGN KEY (`id`) REFERENCES `MessengerProcesses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `NotificationAlerts`
--
ALTER TABLE `NotificationAlerts`
  ADD CONSTRAINT `FK_E11C7408ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`),
  ADD CONSTRAINT `FK_E11C7408FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `OAuth2AccessToken`
--
ALTER TABLE `OAuth2AccessToken`
  ADD CONSTRAINT `FK_60D69F3FC7440455` FOREIGN KEY (`client`) REFERENCES `OAuth2Client` (`identifier`);

--
-- Constraints for table `OAuth2AuthCode`
--
ALTER TABLE `OAuth2AuthCode`
  ADD CONSTRAINT `FK_29D07B5C7440455` FOREIGN KEY (`client`) REFERENCES `OAuth2Client` (`identifier`);

--
-- Constraints for table `OAuth2RefreshToken`
--
ALTER TABLE `OAuth2RefreshToken`
  ADD CONSTRAINT `FK_A205CB8350A9822` FOREIGN KEY (`accessToken`) REFERENCES `OAuth2AccessToken` (`identifier`) ON DELETE SET NULL;

--
-- Constraints for table `PageContainerInstanceAreas`
--
ALTER TABLE `PageContainerInstanceAreas`
  ADD CONSTRAINT `FK_484B3E0A1FCD0045` FOREIGN KEY (`containerInstanceID`) REFERENCES `PageContainerInstances` (`containerInstanceID`) ON DELETE CASCADE;

--
-- Constraints for table `PageContainerInstances`
--
ALTER TABLE `PageContainerInstances`
  ADD CONSTRAINT `FK_489D87A71159C151` FOREIGN KEY (`containerID`) REFERENCES `PageContainers` (`containerID`) ON DELETE CASCADE;

--
-- Constraints for table `PageContainers`
--
ALTER TABLE `PageContainers`
  ADD CONSTRAINT `FK_65E7C1D1CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `PageSummaryTemplateCustomCollectionTemplates`
--
ALTER TABLE `PageSummaryTemplateCustomCollectionTemplates`
  ADD CONSTRAINT `FK_23B91C0F5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `SummaryTemplates` (`id`),
  ADD CONSTRAINT `FK_23B91C0FE5DADDAE` FOREIGN KEY (`cID`) REFERENCES `PageSummaryTemplateCustomCollection` (`cID`);

--
-- Constraints for table `PageSummaryTemplates`
--
ALTER TABLE `PageSummaryTemplates`
  ADD CONSTRAINT `FK_55AC200B5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `SummaryTemplates` (`id`);

--
-- Constraints for table `PageThemeCustomSkins`
--
ALTER TABLE `PageThemeCustomSkins`
  ADD CONSTRAINT `FK_162E9C4EFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `PermissionAccessEntitySiteGroups`
--
ALTER TABLE `PermissionAccessEntitySiteGroups`
  ADD CONSTRAINT `FK_51122D554A62E0E4` FOREIGN KEY (`siteGID`) REFERENCES `SiteGroups` (`siteGID`);

--
-- Constraints for table `PrivateMessageNotifications`
--
ALTER TABLE `PrivateMessageNotifications`
  ADD CONSTRAINT `FK_1AB97592ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
  ADD CONSTRAINT `FK_7C04D76477B5BAE` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SavedExpressSearchQueries`
--
ALTER TABLE `SavedExpressSearchQueries`
  ADD CONSTRAINT `FK_F87C25F2CE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `SiteAttributeKeys`
--
ALTER TABLE `SiteAttributeKeys`
  ADD CONSTRAINT `FK_63D1E182B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteAttributeValues`
--
ALTER TABLE `SiteAttributeValues`
  ADD CONSTRAINT `FK_67658AF7521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  ADD CONSTRAINT `FK_67658AF7A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_67658AF7B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `SiteDomains`
--
ALTER TABLE `SiteDomains`
  ADD CONSTRAINT `FK_4CC7400A521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `SiteGroupRelations`
--
ALTER TABLE `SiteGroupRelations`
  ADD CONSTRAINT `FK_DCBCDCA94A62E0E4` FOREIGN KEY (`siteGID`) REFERENCES `SiteGroups` (`siteGID`),
  ADD CONSTRAINT `FK_DCBCDCA9521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `SiteGroups`
--
ALTER TABLE `SiteGroups`
  ADD CONSTRAINT `FK_F6FE030FE9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`);

--
-- Constraints for table `SiteLocales`
--
ALTER TABLE `SiteLocales`
  ADD CONSTRAINT `FK_2527AB2C521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  ADD CONSTRAINT `FK_2527AB2CF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTreeTrees` (`siteTreeID`);

--
-- Constraints for table `Sites`
--
ALTER TABLE `Sites`
  ADD CONSTRAINT `FK_7DC18567E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`);

--
-- Constraints for table `SiteSearchIndexAttributes`
--
ALTER TABLE `SiteSearchIndexAttributes`
  ADD CONSTRAINT `FK_3DD070B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SiteSkeletonLocales`
--
ALTER TABLE `SiteSkeletonLocales`
  ADD CONSTRAINT `FK_212DD202B579BD3E` FOREIGN KEY (`siteSkeletonID`) REFERENCES `SiteSkeletons` (`siteSkeletonID`),
  ADD CONSTRAINT `FK_212DD202F9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteSkeletonTrees` (`siteTreeID`);

--
-- Constraints for table `SiteSkeletons`
--
ALTER TABLE `SiteSkeletons`
  ADD CONSTRAINT `FK_D36AED98E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`);

--
-- Constraints for table `SiteSkeletonTrees`
--
ALTER TABLE `SiteSkeletonTrees`
  ADD CONSTRAINT `FK_550F784B16B7EAF2` FOREIGN KEY (`skeletonLocaleID`) REFERENCES `SiteSkeletonLocales` (`skeletonLocaleID`),
  ADD CONSTRAINT `FK_550F784BE9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`),
  ADD CONSTRAINT `FK_550F784BF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTrees` (`siteTreeID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteTreeTrees`
--
ALTER TABLE `SiteTreeTrees`
  ADD CONSTRAINT `FK_A4B9696EACD624CD` FOREIGN KEY (`siteLocaleID`) REFERENCES `SiteLocales` (`siteLocaleID`),
  ADD CONSTRAINT `FK_A4B9696EF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTrees` (`siteTreeID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteTypeAttributeKeys`
--
ALTER TABLE `SiteTypeAttributeKeys`
  ADD CONSTRAINT `FK_26C73776B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteTypeAttributeValues`
--
ALTER TABLE `SiteTypeAttributeValues`
  ADD CONSTRAINT `FK_78059CB9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_78059CB9B579BD3E` FOREIGN KEY (`siteSkeletonID`) REFERENCES `SiteSkeletons` (`siteSkeletonID`),
  ADD CONSTRAINT `FK_78059CB9B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `SiteTypes`
--
ALTER TABLE `SiteTypes`
  ADD CONSTRAINT `FK_7CBFE975CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
  ADD CONSTRAINT `FK_84EBA2B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `SummaryCategories`
--
ALTER TABLE `SummaryCategories`
  ADD CONSTRAINT `FK_F815AD2ACE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `SummaryFields`
--
ALTER TABLE `SummaryFields`
  ADD CONSTRAINT `FK_AC926EC9CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `SummaryTemplateCategories`
--
ALTER TABLE `SummaryTemplateCategories`
  ADD CONSTRAINT `FK_C8B6E64A12469DE2` FOREIGN KEY (`category_id`) REFERENCES `SummaryCategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C8B6E64A5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `SummaryTemplates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `SummaryTemplateFields`
--
ALTER TABLE `SummaryTemplateFields`
  ADD CONSTRAINT `FK_294381EC443707B0` FOREIGN KEY (`field_id`) REFERENCES `SummaryFields` (`id`),
  ADD CONSTRAINT `FK_294381EC5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `SummaryTemplates` (`id`);

--
-- Constraints for table `SummaryTemplates`
--
ALTER TABLE `SummaryTemplates`
  ADD CONSTRAINT `FK_5E3C9832CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `SummaryTemplateTags`
--
ALTER TABLE `SummaryTemplateTags`
  ADD CONSTRAINT `FK_D9197F515DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `SummaryTemplates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D9197F51960BFEAE` FOREIGN KEY (`designtag_id`) REFERENCES `DesignTags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `Tasks`
--
ALTER TABLE `Tasks`
  ADD CONSTRAINT `FK_91994A93CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`),
  ADD CONSTRAINT `FK_91994A93FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `TaskSets`
--
ALTER TABLE `TaskSets`
  ADD CONSTRAINT `FK_EF2069C4CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `TaskSetTasks`
--
ALTER TABLE `TaskSetTasks`
  ADD CONSTRAINT `FK_D395AA3810FB0D18` FOREIGN KEY (`set_id`) REFERENCES `TaskSets` (`id`),
  ADD CONSTRAINT `FK_D395AA388DB60186` FOREIGN KEY (`task_id`) REFERENCES `Tasks` (`id`);

--
-- Constraints for table `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
  ADD CONSTRAINT `FK_28970033B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
  ADD CONSTRAINT `FK_4DB68CA6A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_4DB68CA6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_4DB68CA6FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `UserDeactivatedNotifications`
--
ALTER TABLE `UserDeactivatedNotifications`
  ADD CONSTRAINT `FK_ED5A1F9FED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `UserFavoriteFolders`
--
ALTER TABLE `UserFavoriteFolders`
  ADD CONSTRAINT `FK_EDB1ABB6FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
  ADD CONSTRAINT `FK_74798B07FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UserSignupNotifications`
--
ALTER TABLE `UserSignupNotifications`
  ADD CONSTRAINT `FK_7FB1DF5B7B18287E` FOREIGN KEY (`usID`) REFERENCES `UserSignups` (`usID`),
  ADD CONSTRAINT `FK_7FB1DF5BED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `UserSignups`
--
ALTER TABLE `UserSignups`
  ADD CONSTRAINT `FK_FEB5D909D3564642` FOREIGN KEY (`createdBy`) REFERENCES `Users` (`uID`),
  ADD CONSTRAINT `FK_FEB5D909FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `WorkflowProgressNotifications`
--
ALTER TABLE `WorkflowProgressNotifications`
  ADD CONSTRAINT `FK_EC39CA81ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
