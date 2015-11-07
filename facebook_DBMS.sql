-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2015 at 07:41 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `facebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `U_ID` varchar(50) NOT NULL,
  `phone_no` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`U_ID`,`phone_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`U_ID`, `phone_no`) VALUES
('chaitanya.raman2@facebook.com', '8045231945'),
('divyanshu.mahajan9@facebook.com', '9540525049'),
('grv1108@facebook.com', '9971153201'),
('hemwant.rawat@facebook.com', '8802571943'),
('hitesh.jangid@facebook.com', '9650912129'),
('ppal.anmol@facebook.com', '8130579716'),
('priyanka08@facebook.com', '7598124811'),
('rana.surbhi19@facebook.com', '9952084123');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `U_ID` varchar(50) NOT NULL,
  `F_ID` varchar(50) NOT NULL DEFAULT '',
  `acquaintance` varchar(20) DEFAULT NULL,
  `F_date` date DEFAULT NULL,
  PRIMARY KEY (`U_ID`,`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`U_ID`, `F_ID`, `acquaintance`, `F_date`) VALUES
('chaitanya.raman2@facebook.com', 'ppal.anmol@facebook.com', NULL, '2012-11-12'),
('divyanshu.mahajan9@facebook.com', 'ppal.anmol@facebook.com', NULL, '2012-10-23'),
('divyanshu.mahajan9@facebook.com', 'rana.surbhi19@facebook.com', NULL, '2012-06-28'),
('grv1108@facebook.com', 'priyanka08@facebook.com', NULL, '2012-12-30'),
('hitesh.jangid@facebook.com', 'priyanka08@facebook.com', NULL, '2011-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `gr0up`
--

CREATE TABLE IF NOT EXISTS `gr0up` (
  `G_ID` varchar(50) NOT NULL DEFAULT '',
  `U_ID` varchar(50) NOT NULL DEFAULT '',
  `Date` date NOT NULL,
  PRIMARY KEY (`G_ID`,`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gr0up`
--

INSERT INTO `gr0up` (`G_ID`, `U_ID`, `Date`) VALUES
('DCE_CODERS@facebook.com', 'chaitanya.raman2@facebook.com', '2014-04-04'),
('DCE_CODERS@facebook.com', 'divyanshu.mahajan9@facebook.com', '2014-04-14'),
('DTU/2K12/COE/SECTION-A@facebook.com', 'divyanshu.mahajan9@facebook.com', '2014-05-05'),
('DTU/2K12/COE/SECTION-A@facebook.com', 'hemwant.rawat@facebook.com', '2014-04-06'),
('KabilsofDTU@facebook.com', 'hemwant.rawat@facebook.com', '2014-04-30'),
('KabilsofDTU@facebook.com', 'hitesh.jangid@facebook.com', '2014-03-07'),
('KabilsofDTU@facebook.com', 'priyanka08@facebook.com', '2014-04-15'),
('MMHS@facebook.com', 'divyanshu.mahajan9@facebook.com', '2014-02-12'),
('MMHS@facebook.com', 'rana.surbhi19@facebook.com', '2014-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `group_info`
--

CREATE TABLE IF NOT EXISTS `group_info` (
  `G_ID` varchar(50) NOT NULL DEFAULT '',
  `G_name` varchar(50) DEFAULT NULL,
  `privacy` varchar(6) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`G_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_info`
--

INSERT INTO `group_info` (`G_ID`, `G_name`, `privacy`, `date`) VALUES
('DCE_CODERS@facebook.com', 'DCE CODERS', 'closed', '2010-08-05'),
('DTU/2K12/COE/SECTION-A@facebook.com', 'DTU 2K12 COE SECTION-A', 'secret', '2013-09-20'),
('KabilsofDTU@facebook.com', 'Kabils', 'open', '2014-05-30'),
('MMHS@facebook.com', 'Manav Mangal', 'closed', '2013-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `U_Id` varchar(50) NOT NULL DEFAULT '',
  `F_Id` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(100) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `time` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`date`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`U_Id`, `F_Id`, `description`, `date`, `time`) VALUES
('hemwant.rawat@facebook.com', 'divyanshu.mahajan9@facebook.com', 'hello\r\nhow r u?', '2013-04-20', '20:07:55'),
('divyanshu.mahajan9@facebook.com', 'hemwant.rawat@facebook.com', 'hi\r\nI''m fine\r\nhope you are also fine', '2013-04-20', '20:08:30'),
('hitesh.jangid@facebook.com', 'priyanka08@facebook.com', 'At what time we have class tomorrow?', '2014-10-10', '22:45:07'),
('priyanka08@facebook.com', 'hitesh.jangid@facebook.com', '10 AM till 2PM', '2014-10-11', '00:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `U_ID` varchar(50) NOT NULL,
  `G_ID` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`U_ID`,`G_ID`,`date`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`U_ID`, `G_ID`, `description`, `date`, `time`) VALUES
('chaitanya.raman2@facebook.com', 'DCE_CODERS@facebook.com', 'DCE_CODERS added you to their group.', '2014-04-04', '23:01:00'),
('divyanshu.mahajan9@facebook.com', 'rana.surbhi19@facebook.com', 'surbhi tagged you.', '2014-05-11', '23:01:00'),
('hitesh.jangid@facebook.com', 'priyanka08@facebook.com', 'Priyanka added your photo.', '2014-05-05', '20:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `page_admin`
--

CREATE TABLE IF NOT EXISTS `page_admin` (
  `page_ID` varchar(50) NOT NULL,
  `admin_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`page_ID`,`admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_admin`
--

INSERT INTO `page_admin` (`page_ID`, `admin_ID`) VALUES
('Barcelona.football11@facebook.com', 'ppal.anmol@facebook.com'),
('IPL-2014@facebook.com', 'hemwant.rawat@facebook.com'),
('pheonix_CSI@facebook.com', 'divyanshu.mahajan9@facebook.com'),
('SRK_fanclub@facebook.com', 'priyanka08@facebook.com');

-- --------------------------------------------------------

--
-- Table structure for table `page_info`
--

CREATE TABLE IF NOT EXISTS `page_info` (
  `page_ID` varchar(50) NOT NULL,
  `page_name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `page_type` varchar(20) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`page_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_info`
--

INSERT INTO `page_info` (`page_ID`, `page_name`, `date`, `page_type`, `description`) VALUES
('Barcelona.football11@facebook.com', 'Barcelona Football C', '2014-05-13', 'sports', 'This  page  will  give u details  of all  barcelona matches  and  players.  It  will also  reveal  inside  stories  of  the club  to  all  its  fans.'),
('IPL-2014@facebook.com', 'IPL-2014', '2014-04-16', 'sports', 'this page gives all concurrent news of ipl-7 to you.'),
('pheonix_CSI@facebook.com', 'Phoenix-DTU', '2014-02-01', 'society', 'Phoenix page will give you details of all events and results of all events.'),
('SRK_fanclub@facebook.com', 'King of Bollywood', '2014-04-07', 'celebrity', 'All SRK fans know about your real hero through this page and follow him.');

-- --------------------------------------------------------

--
-- Table structure for table `page_like`
--

CREATE TABLE IF NOT EXISTS `page_like` (
  `page_ID` varchar(50) NOT NULL,
  `like_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`page_ID`,`like_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_like`
--

INSERT INTO `page_like` (`page_ID`, `like_ID`) VALUES
('Barcelona.football11@facebook.com', 'chaitanya.raman2@facebook.com'),
('Barcelona.football11@facebook.com', 'hemwant.rawat@facebook.com'),
('Barcelona.football11@facebook.com', 'hitesh.jangid@facebook.com'),
('IPL-2014@facebook.com', 'divyanshu.mahajan9@facebook.com'),
('IPL-2014@facebook.com', 'grv1108@facebook.com'),
('IPL-2014@facebook.com', 'hemwant.rawat@facebook.com'),
('IPL-2014@facebook.com', 'hitesh.jangid@facebook.com'),
('pheonix_CSI@facebook.com', 'rana.surbhi19@facebook.com'),
('SRK_fanclub@facebook.com', 'grv1108@facebook.com'),
('SRK_fanclub@facebook.com', 'priyanka08@facebook.com');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `ph_ID` varchar(50) NOT NULL,
  `U_ID` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ph_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`ph_ID`, `U_ID`, `date`, `place`) VALUES
('img006', 'hemwant.rawat@facebook.com', '2012-11-04', 'delhi'),
('img034', 'hitesh.jangid@facebook.com', '2013-07-01', 'jaipur'),
('img123', 'grv1108@facebook.com', '2013-09-12', 'delhi'),
('img567', 'hemwant.rawat@facebook.com', '2012-09-03', 'saharanpur'),
('img900', 'chaitanya.raman2@facebook.com', '2011-05-08', 'agra'),
('img945', 'rana.surbhi19@facebook.com', '2014-05-28', 'chandigarh');

-- --------------------------------------------------------

--
-- Table structure for table `photo_info`
--

CREATE TABLE IF NOT EXISTS `photo_info` (
  `ph_ID` varchar(50) NOT NULL DEFAULT '',
  `V_ID` varchar(50) NOT NULL DEFAULT '',
  `lyke` varchar(1) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `share` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ph_ID`,`V_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo_info`
--

INSERT INTO `photo_info` (`ph_ID`, `V_ID`, `lyke`, `comment`, `share`) VALUES
('img006', 'chaitanya.raman2@facebook.com', 'Y', NULL, NULL),
('img006', 'hitesh.jangid@facebook.com', 'Y', 'nice....', NULL),
('img034', 'hemwant.rawat@facebook.com', 'Y', 'awsm bro....', 'Y'),
('img900', 'hemwant.rawat@facebook.com', 'Y', NULL, NULL),
('img945', 'divyanshu.mahajan9@facebook.com', 'Y', 'gud one sister...', 'Y'),
('img945', 'grv1108@facebook.com', 'Y', 'gud.....', NULL),
('img945', 'hemwant.rawat@facebook.com', 'Y', NULL, NULL),
('img945', 'img945', 'Y', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `U_ID` varchar(50) NOT NULL,
  `P_city` varchar(20) NOT NULL,
  `Hometown` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `School` varchar(30) NOT NULL,
  `College` varchar(30) NOT NULL,
  `Coverpic` varchar(50) DEFAULT NULL,
  `DP` varchar(50) DEFAULT NULL,
  `joining_date` date NOT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`U_ID`, `P_city`, `Hometown`, `Country`, `School`, `College`, `Coverpic`, `DP`, `joining_date`) VALUES
('chaitanya.raman2@facebook.com', 'Delhi', 'Jaipur', 'India', 'ST. annes', 'DTU', NULL, NULL, '2012-02-27'),
('divyanshu.mahajan9@facebook.com', 'Delhi', 'Chandigarh', 'India', 'Manav mangal high', 'DTU', NULL, NULL, '2012-06-15'),
('grv1108@facebook.com', 'Gurgaon', 'Kaithal', 'India', 'Little flower convent', 'IP', NULL, NULL, '2011-05-07'),
('hemwant.rawat@facebook.com', 'Delhi', 'chamoli', 'India', 'ST.  mary''s  convent''', 'DTU', NULL, NULL, '2011-05-07'),
('hitesh.jangid@facebook.com', 'New York', 'Washinton', 'North America', 'National school of NY', 'University of California', NULL, NULL, '2011-09-21'),
('ppal.anmol@facebook.com', 'Delhi', 'Patiala', 'India', 'Kendriya vidhyala', 'DTU', NULL, NULL, '2012-03-03'),
('priyanka08@facebook.com', 'Jaipur', 'Jaipur', 'India', 'Rawat senior secondary', 'Maharani', NULL, NULL, '2008-04-03'),
('rana.surbhi19@facebook.com', 'Chandigarh', 'Chandigarh', 'India', 'Manav mangal high', 'UIET', NULL, NULL, '2009-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `request_pending`
--

CREATE TABLE IF NOT EXISTS `request_pending` (
  `U_ID` varchar(50) NOT NULL,
  `To_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`U_ID`,`To_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_pending`
--

INSERT INTO `request_pending` (`U_ID`, `To_ID`) VALUES
('chaitanya.raman2@facebook.com', 'rana.surbhi19@facebook.com'),
('hemwant.rawat@facebook.com', 'rana.surbhi19@facebook.com');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `status_ID` varchar(50) NOT NULL,
  `U_ID` varchar(50) DEFAULT NULL,
  `status` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`status_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_ID`, `U_ID`, `status`, `date`, `place`) VALUES
('stat1993', 'hitesh.jangid@facebook.com', 'Awsm play by Rajsthan Royals .........', '2014-05-11', 'Cuttack'),
('stat2003', 'chaitanya.raman2@facebook.com', 'HAPPY MOTHER''S DAY dear mom.........', '2014-05-11', 'Delhi'),
('stat2345', 'hemwant.rawat@facebook.com', 'Xams right on their way....', '2014-05-01', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `status_info`
--

CREATE TABLE IF NOT EXISTS `status_info` (
  `status_ID` varchar(50) NOT NULL DEFAULT '',
  `V_ID` varchar(50) NOT NULL DEFAULT '',
  `lyke` varchar(1) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `share` varchar(1) DEFAULT NULL,
  `ph_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`status_ID`,`V_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_info`
--

INSERT INTO `status_info` (`status_ID`, `V_ID`, `lyke`, `comment`, `share`, `ph_ID`) VALUES
('stat1993', 'rana.surbhi19@facebook.com', 'Y', NULL, 'Y', NULL),
('stat2003', 'rana.surbhi19@facebook.com', 'Y', 'awsm...', NULL, NULL),
('stat2345', 'chaitanya.raman2@facebook.com', 'Y', NULL, NULL, NULL),
('stat2345', 'rana.surbhi19@facebook.com', 'Y', 'nice...', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tag_photo`
--

CREATE TABLE IF NOT EXISTS `tag_photo` (
  `ph_ID` varchar(50) NOT NULL,
  `tag_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`ph_ID`,`tag_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag_photo`
--

INSERT INTO `tag_photo` (`ph_ID`, `tag_ID`) VALUES
('img006', 'divyanshu.mahajan9@facebook.com'),
('img006', 'hitesh.jangid@facebook.com'),
('img006', 'rana.surbhi19@facebook.com'),
('img900', 'divyanshu.mahajan9@facebook.com'),
('img900', 'grv1108@facebook.com');

-- --------------------------------------------------------

--
-- Table structure for table `tag_status`
--

CREATE TABLE IF NOT EXISTS `tag_status` (
  `status_ID` varchar(50) NOT NULL,
  `tag_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`status_ID`,`tag_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag_status`
--

INSERT INTO `tag_status` (`status_ID`, `tag_ID`) VALUES
('stat1993', 'divyanshu.mahajan9@facebook.com'),
('stat1993', 'grv1108@facebook.com'),
('stat1993', 'ppal.anmol@facebook.com'),
('stat2345', 'hitesh.jangid@facebook.com'),
('stat2345', 'priyanka08@facebook.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `U_ID` varchar(50) NOT NULL,
  `F_name` varchar(20) NOT NULL,
  `L_name` varchar(20) DEFAULT NULL,
  `Email_ID` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Sex` varchar(1) NOT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`U_ID`, `F_name`, `L_name`, `Email_ID`, `Password`, `DOB`, `Sex`) VALUES
('chaitanya.raman2@facebook.com', 'Chaitanya', 'Raman', 'cheky11@gmail.com', 'raman@wasd', '1994-01-28', 'M'),
('divyanshu.mahajan9@facebook.com', 'Divyanshu', 'Mahajan', 'divyanshumahajan1@gmail.com', 'dm79219', '1993-09-03', 'M'),
('grv1108@facebook.com', 'Gaurav', 'Verma', 'grvgaurav@gmail.com', 'keyboard', '1993-08-20', 'M'),
('hemwant.rawat@facebook.com', 'Hemwant', 'Rawat', 'hemwantrrawat@gmail.com', 'rawathemu', '1994-04-19', 'M'),
('hitesh.jangid@facebook.com', 'Hitesh', 'Jangid', 'hiteshjangid@gmail.com', '123456789', '1994-06-26', 'M'),
('ppal.anmol@facebook.com', 'Anmol', 'singh', 'anmolpal12@gmail.com', 'mouse', '1994-02-08', 'M'),
('priyanka08@facebook.com', 'Priyanka', 'Jangid', 'priyanka.jangid@yahoo.com', 'hiteshjangid', '1994-12-04', 'F'),
('rana.surbhi19@facebook.com', 'Surbhi', 'Rana', 'surbhirana@gmail.com', 'haemoglobin', '1994-02-28', 'F');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
