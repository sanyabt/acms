-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2017 at 08:21 AM
-- Server version: 5.6.26
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE IF NOT EXISTS `table1` (
  `locker_id` int(11) NOT NULL,
  `Locker_name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `locker_capacity` varchar(45) DEFAULT NULL,
  `ratio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`locker_id`, `Locker_name`, `city`, `state`, `pincode`, `locker_capacity`, `ratio`) VALUES
(1, 'A', 'Hyderabad', 'AP', '501301', '100', 1),
(2, 'B', 'Hyderabad', 'AP', '500095', '100', 1),
(3, 'C', 'Bengaluru', 'Karnataka', '560001', '100', 1),
(4, 'E', 'Dwarka', 'Delhi', '110075', '100', 1),
(5, 'F', 'Faridabad', 'Haryana', '121001', '100', 1),
(6, 'G', 'Indore', 'MP', '452007', '100', 1),
(7, 'H', 'Tilak Path, Indore', 'MP', '452007', '100', 1),
(8, 'I', 'Sector 12 Dwarka', 'Delhi', '110075', '100', 1),
(9, 'J', 'Bengaluru', 'Karnataka', '560002', '100', 1),
(10, 'K', 'Mangalore', 'Karnataka', '560005', '100', 1),
(11, 'L', 'Lukhnow', 'UP', '226001', '100', 1),
(12, 'M', 'Karol Bagh', 'New Delhi', '110005', '100', 1),
(13, 'N', 'Karol Bagh', 'New Delhi', '110006', '100', 1),
(14, 'O', 'Shahdara', 'Delhi', '110093', '100', 1),
(15, 'P', 'Shahdara', 'Delhi', '110094', '100', 1),
(16, 'Q', 'Bhopal', 'MP', '462001', '100', 1),
(17, 'R', 'Peer Gate Area, Bhopal', 'MP', '462023', '100', 1),
(18, 'S', 'Agra', 'UP', '282001', '100', 1),
(19, 'T', 'Pune', 'Maharashtra', '411011', '100', 1),
(20, 'U', 'Coimbatore', 'Tamil Nadu', '641009', '100', 1),
(21, 'V', 'Coimbatore', 'Tamil Nadu', '641002', '100', 1),
(22, 'W', 'Coimbatore', 'Tamil Nadu', '641012', '100', 1),
(23, 'X', 'Salem', 'Tamil Nadu', '636009', '100', 1),
(24, 'Y', 'Salem', 'Tamil Nadu', '637801', '100', 1),
(25, 'Z', 'Cannaught Place', 'Delhi', '110001', '100', 1),
(26, 'AB', 'Maheshpur, Varanasi', 'UP', '221002', '100', 1),
(27, 'AC', 'Pune', 'Maharashtra', '411037', '100', 1),
(28, 'AD', 'Howrah', 'West Bengal', '711409', '100', 1),
(29, 'AE', 'Howrah', 'West Bengal', '711304', '100', 1),
(30, 'AF', 'Gandhinagar', 'Gujarat', '382006', '100', 1),
(31, 'AG', 'Nashik', 'Maharashtra', '422001', '100', 1),
(32, 'AH', 'Nashik', 'Maharashtra', '422009', '100', 1),
(33, 'AI', 'Kurla, Mumbai', 'Maharashtra', '400070', '100', 1),
(34, 'AJ', 'Kurla, Mumbai', 'Maharashtra', '400001', '100', 1),
(35, 'AK', 'Kurla West, Mumbai', 'Maharashtra', '400070', '100', 1),
(36, 'AL', 'Kollam', 'Kerala', '691021', '100', 1),
(37, 'AM', 'College Square, Kolkata', 'West Bengal', '700012', '100', 1),
(38, 'AN', 'College Square, Kolkata', 'West Bengal', '700009', '100', 1),
(39, 'AO', 'College Square, Kolkata', 'West Bengal', '700008', '100', 1),
(40, 'AP', 'Kozhikode', 'Kerala', '673004', '100', 1),
(41, 'AQ', 'Chandigarh', 'Haryana', '160022', '100', 1),
(42, 'AR', 'Chandigarh', 'Haryana', '160045', '100', 1),
(43, 'AS', 'Kollam', 'Kerala', '691019', '100', 1),
(44, 'AT', 'Kanpur', 'UP', '208001', '100', 1),
(45, 'AU', 'Gurgaon', 'Haryana', '122001', '100', 1),
(46, 'AV', 'Gurgaon', 'Haryana', '160045', '100', 1),
(47, 'AW', 'Kanpur', 'UP', '208014', '100', 1),
(48, 'AX', 'Kanpur', 'UP', '208006', '100', 1),
(49, 'AY', 'Vadodara', 'Gujarat', '390002', '100', 1),
(50, 'AZ', 'Surat', 'Gujarat', '395017', '100', 1),
(51, 'BA', 'Surat', 'Gujarat', '395007', '100', 1),
(52, 'BB', 'Surat', 'Gujarat', '395101', '100', 1),
(53, 'BC', 'Amritsar', 'Punjab', '143006', '100', 1),
(54, 'BD', 'Amritsar', 'Punjab', '143001', '100', 1),
(55, 'BE', 'Allahbad', 'UP', '211213', '100', 1),
(56, 'BF', 'Agra', 'UP', '282003', '100', 1),
(57, 'BG', 'Madurai Main,Madurai', 'Tamil Nadu', '625001', '100', 1),
(58, 'BH', 'Kydgang, Allahabad', 'UP', '211003', '100', 1),
(59, 'BI', 'Old Delhi', 'Delhi', '110096', '100', 1),
(60, 'BJ', 'Simmakkal,Madurai', 'Tamil Nadu', '625001', '100', 1),
(61, 'BK', 'Greater Noida', 'UP', '201308', '100', 1),
(62, 'BL', 'Greater Noida', 'UP', '201310', '100', 1),
(63, 'BM', 'Kashmiri Gate', 'Delhi', '110096', '100', 1),
(64, 'BN', 'Madras', 'Tamil Nadu', '600003', '100', 1),
(65, 'BO', 'Hazratganj, Lucknow', 'UP', '226001', '100', 1),
(66, 'BP', 'Vijayawada', 'AP', '305050', '100', 1),
(67, 'BQ', 'Varanasi', 'UP', '221002', '100', 1),
(68, 'BR', 'Vijayawada', 'AP', '520001', '100', 1),
(69, 'BS', 'Vijayawada', 'AP', '520010', '100', 1),
(70, 'BT', 'Kochi', 'Kerala', '682005', '100', 1),
(71, 'BU', 'Valummel, Kochi', 'Kerala', '682005', '100', 1),
(72, 'BV', 'Shalimar Bagh', 'Delhi', '110088', '100', 1),
(73, 'BW', 'Faridabad', 'Haryana', '121002', '100', 1),
(74, 'BX', 'Jalandhar', 'Punjab', '144002', '100', 1),
(75, 'BY', 'Jalandhar', 'Punjab', '144006', '100', 1),
(76, 'BZ', 'Rohini', 'Delhi', '110039', '100', 1),
(77, 'CA', 'Vadodara', 'Gujarat', '390001', '100', 1),
(78, 'CB', 'Vadodara', 'Maharashtra', '431001', '100', 1),
(79, 'CC', 'Bathinda', 'Punjab', '151001', '100', 1),
(80, 'CD', 'Fauji Chowk, Batinda', 'Punjab', '151001', '100', 1),
(81, 'CE', 'Rohtak', 'Haryana', '124001', '100', 1),
(82, 'CF', 'Tirupati', 'AP', '517501', '100', 1),
(83, 'CG', 'Kapil Vihar, Pitampura', 'Delhi', '110034', '100', 1),
(84, 'CH', 'Dakshini Pitampura', 'Delhi', '110034', '100', 1),
(85, 'CI', 'Cantonment', 'New Delhi', '110010', '100', 1),
(86, 'CJ', 'Dehradun', 'Uttarakhand', '248001', '100', 1),
(87, 'CK', 'Dehradun', 'Uttarakhand', '249201', '100', 1),
(88, 'CL', 'Patiala', 'Punjab', '147001', '100', 1),
(89, 'CM', 'Rishikesh', 'Uttarakhand', ' 249203', '100', 1),
(90, 'CN', 'Haridwar', 'Uttarakhand', '249401', '100', 1),
(91, 'CO', 'Haridwar', 'Uttarakhand', '246400', '100', 1),
(92, 'CP', 'Mussoorie', 'Uttarakhand', '248179', '100', 1),
(93, 'CP', 'Anantnag', 'Jammu & Kashmir', '192101', '100', 1),
(94, 'CQ', 'Pathankot', 'Punjab', '145001', '100', 1),
(95, 'ABCD', 'Androth', 'Lakshadweep', '682551', '100', 1),
(96, 'CS', 'Nellore', 'Andhra Pradesh ', '524002', '100', 1),
(97, 'CR', 'Thane', ' Maharashtra', '400606', '100', 1),
(98, 'CT', 'Nellore', 'Andhra Pradesh', '524003', '100', 1),
(99, 'CU', 'Ramji Nagar, Nellore', 'Andhra Pradesh', '524003', '100', 1),
(100, 'CV', 'Laranpur', 'Bihar', '801303', '100', 1),
(101, 'CW', 'Shimla', 'Himachal Pradesh', '171001', '100', 1),
(102, 'CX', 'Jabalpur', 'Madhya Pradesh', '482001', '100', 1),
(103, 'CY', 'Nainital', 'Uttarakhand', '263002', '100', 1),
(104, 'CZ', 'Lingthem', 'Sikkim', '737116', '100', 1),
(105, 'DA', 'Meerut', 'Uttar Pradesh', '250003', '100', 1),
(106, 'DB', 'Jattiwara, Meerut', 'Uttar Pradesh', '250001', '100', 1),
(107, 'DC', 'Dakshin JagadishpurSouth 24 Parganas', 'West Bengal', '700001', '100', 1),
(108, 'DD', 'Agartala G.P.O', 'Tripura', '799001', '100', 1),
(109, 'DE', 'Ahmedabad', 'UP', '380001', '100', 1),
(110, 'DF', 'Abhaynagar', 'Tripura', '799005', '100', 1),
(111, 'DFG', 'Angul', 'Orissa', '759122', '100', 1),
(112, 'DG', 'Ahmednagar', 'Maharashtra', '414001', '100', 1),
(113, 'DH', 'Adilabad', 'Andhra Pradesh', '504001', '100', 1),
(114, 'DI', 'Adoni', 'Andhra Pradesh', '518301', '100', 1),
(115, 'DJ', 'Adur', 'Kerala', '691523', '100', 1),
(116, 'DK', 'Aizawal G.P.O', 'Mizoram', '796001', '100', 1),
(117, 'DL', 'Ajmer', 'Rajasthan', '305001', '100', 1),
(118, 'DM', 'Akbarpur', 'Uttar Pradesh', '224122', '100', 1),
(119, 'DN', 'Akola', 'Maharashtra', '444001', '100', 1),
(120, 'DO', 'Akulto', 'Nagaland', '798619', '100', 1),
(121, 'DP', 'Alathur', 'Kerala', '678541', '100', 1),
(122, 'DQ', 'Aldona', 'Goa', '403508', '100', 1),
(123, 'DR', 'Alibag', 'Mahrashtra', '402201', '100', 1),
(124, 'DS', 'Aligarh', 'Uttar Pradesh', '202001', '100', 1),
(125, 'DT', 'Alipur', 'West Bengal', '700027', '100', 1),
(126, 'DU', 'Allagada', 'Andhra Pradesh', '518543', '100', 1),
(127, 'DV', 'Allahabad Kacheri', 'Uttar Pradesh', '211002', '100', 1),
(128, 'DW', 'Bada bazar', 'Meghalaya', '793002', '100', 1),
(129, 'DX', 'Bada pani', 'Meghalaya', '793103', '100', 1),
(130, 'DY', 'Bagalkot', 'Karnataka', '587101 ', '100', 1),
(131, 'DZ', 'Bahadurgarh', 'Haryana', '125417', '100', 1),
(132, 'EA', 'Bahraich', 'Uttar Pradesh', '271801', '100', 1),
(133, 'EB', 'Bahror', 'Rajasthan', '301701', '100', 1),
(134, 'EC', 'Baidyanadh Deoghar', 'Bihar', '814112', '100', 1),
(135, 'ED', 'Bailhongal', 'Karnataka', '591102', '100', 1),
(136, 'EE', 'Bakultala', 'Andaman and Nicobar Islands', '744208', '100', 1),
(137, 'EF', 'Balaghat', 'Madhya Pradesh', '481001', '100', 1),
(138, 'EH', 'Banka', 'Bihar', '813102', '100', 1),
(139, 'EI', 'Bansi', 'Uttar Pradesh', '272153', '100', 1),
(140, 'EJ', 'Banswara', 'Rajasthan', '327001', '100', 1),
(141, 'EK', 'Campwell Bay', 'Andaman & Nicobar Islands', '744302', '100', 1),
(142, 'EL', 'Car Nicobar', 'Andaman & Nicobar Islands', '744301', '100', 1),
(143, 'EM', 'Chaibasa', 'Bihar', '833201', '100', 1),
(144, 'EN', 'Chaichima', 'Nagaland', '797105', '100', 1),
(145, 'EO', 'Chakpirang', 'Manipur', '795102', '100', 1),
(146, 'EP', 'Chalakudi', 'Kerala', '680307', '100', 1),
(147, 'EQ', 'Chalisgaon', 'Maharashtra', '424101', '100', 1),
(148, 'ABB', 'Anini', 'Arunachal Pradesh', '792101', '100', 1),
(149, 'ER', 'Champang', 'Nagaland', '798603', '100', 1),
(150, 'ES', 'Champhai', 'Mizoram', '796321', '100', 1),
(151, 'ET', 'Chandel', 'Manipur', '795127', '100', 1),
(152, 'EU', 'Chandigarh', 'Punjab', '160017', '100', 1),
(153, 'EV', 'Chandmari', 'Mizoram', '796007', '100', 1),
(154, 'EW', 'Chandnichowk', 'Orissa', '753002', '100', 1),
(155, 'EX', 'Chandragiri', 'Andhra Pradesh', '517101', '100', 1),
(156, 'EY', 'Chandrapur', 'Maharashtra', '442401', '100', 1),
(157, 'EZ', 'Chandrapur', 'Tripura', '799251', '100', 1),
(158, 'FA', 'Changlang', 'Arunachal Pradesh', '792120', '100', 1),
(159, 'FB', 'Channapatna', 'Karnataka', '571501', '100', 1),
(160, 'FC', 'Dabhoi', 'Calcutta', '391110', '100', 1),
(161, 'FD', 'Dabki', 'Meghalaya', '793109', '100', 1),
(162, 'FE', 'Dadar', 'Maharashtra', '400014', '100', 1),
(163, 'FG', 'Dahod', 'Calcutta', '389151', '100', 1),
(164, 'FH', 'Chamba', 'Himachal Pradesh', '176310', '100', 1),
(165, 'FI', 'Daltonganj', 'Bihar', '822101', '100', 1),
(166, 'FJ', 'Damoh', 'Madhya Pradesh', '470661', '100', 1),
(167, 'FK', 'Daporizo', 'Arunachal Pradesh', '791122', '100', 1),
(168, 'FL', 'Darbhanga', 'Bihar', '846004', '100', 1),
(169, 'FM', 'Dargamitta', 'Andhra Pradesh', '524003', '100', 1),
(170, 'FN', 'Darjeeling', 'West Bengal', '734101', '100', 1),
(171, 'FO', 'Darlawn', 'Mizoram', '796111', '100', 1),
(172, 'FP', 'Dasuya', 'Punjab', '144205', '100', 1),
(173, 'FQ', 'Datia', 'Madhya Pradesh', '475661', '100', 1),
(174, 'FR', 'Dausa', 'Rajasthan', '303301', '100', 1),
(175, 'FS', 'Davangere', 'Karnataka', '577001', '100', 1),
(176, 'FT', 'Deeg', 'Rajasthan', '321203', '100', 1),
(177, 'FU', 'Dehra Gopipur', 'Himachal Pradesh', '177101', '100', 1),
(178, 'FV', 'Dehradun Cantt', 'Uttar Pradesh', '248003', '100', 1),
(179, 'FW', 'Demgiri', 'Mizoram', '796751', '100', 1),
(180, 'FX', 'Deomali', 'Arunachal Pradesh', '786629', '100', 1),
(181, 'FY', 'Deoria', 'Uttar Pradesh', '274001', '100', 1),
(182, 'FZ', 'Devakottai', 'Tamil Nadu', '630302', '100', 1),
(183, 'GA', 'Dewas', 'Madhya Pradesh', '455001', '100', 1),
(184, 'GB', 'Dhamloan', 'Manipur', '795143', '100', 1),
(185, 'GC', 'Dhampur', 'Goa', '403504', '100', 1),
(186, 'GD', 'Dhampur', 'Uttar Pradesh', '246761', '100', 1),
(187, 'GE', 'Dhar', 'Madhya Pradesh', '454001', '100', 1),
(188, 'GF', 'Dhanbad', 'Bihar', '826001', '100', 1),
(189, 'GG', 'Dharamnagar G.P.O', 'Tripura', '799250', '100', 1),
(190, 'GH', 'Dharapuram', 'Tamil Nadu', '638656', '100', 1),
(191, 'GI', 'Dharmapuri', 'Tamil Nadu', '636701', '100', 1),
(192, 'GJ', 'Dharmavaram', 'Andhra Pradesh', '516671', '100', 1),
(193, 'GK', 'Dharwad', 'Karnataka', '580001', '100', 1),
(194, 'GL', 'Dhenkanal', 'Orissa', '759001', '100', 1),
(195, 'GM', 'Dholka', 'Calcutta', '387810', '100', 1),
(196, 'GN', 'Dholpur', 'Rajasthan', '328001', '100', 1),
(197, 'GO', 'Dhramsala', 'Himachal Pradesh', '176215', '100', 1),
(198, 'GP', 'Dhubri', 'Assam', '783301', '100', 1),
(199, 'GQ', 'Dhule', 'Maharashtra', '424001', '100', 1),
(200, 'GR', 'Diamond Harbour', 'West Bengal', '743331', '100', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`locker_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
