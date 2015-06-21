-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 13, 2015 at 12:03 AM
-- Server version: 5.1.50-community
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `time_table_db`
--
CREATE DATABASE IF NOT EXISTS `time_tabledb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `coursesizes`()
BEGIN

	DECLARE a,b,course_size, day, slot,rand_size, room_id INT;
	DECLARE c char(6);

	
	DECLARE cur_1 CURSOR  FOR select code from courses;

	DECLARE cur_2 CURSOR FOR select lr.id from lecture_rooms lr where lr.size >= course_size LIMIT 1;  

	DECLARE CONTINUE HANDLER FOR NOT FOUND 

	SET b = 0;

	OPEN cur_1; 
		
		REPEAT
	
		FETCH cur_1 INTO c; 

		SET rand_size = RAND() * 1000;
	 	select (rand_size);
		UPDATE courses SET size = rand_size WHERE code = c;		
		UNTIL b = 0
		END REPEAT;
	CLOSE cur_1; 


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PAIR_TEACHER_COURSE_AND_CLASS`(IN day INT, IN slot INT, IN course_code CHAR(6), IN teacher_id INT, IN room_id INT)
BEGIN
	insert into time_table values (day, slot,course_code,teacher_id,room_id);
	UPDATE courses SET needed_periods =needed_periods - 1 WHERE code = course_code;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SCHEDULE`(IN day_counter INT, IN slot_counter INT)
BEGIN 
	DECLARE a,b,course_size, day, slot, room_id INT;
	DECLARE c char(6);

	
	DECLARE cur_1 CURSOR  FOR select c.code, c.size, t.teachers_id, lr.id from courses c, teachers_has_courses t, lecture_rooms lr where 
		c.needed_periods > 0 and 
		t.courses_code=c.code and 
		(select count(*) from time_table where day = day_counter and slot = slot_counter and teacher_id = t.teachers_id) =0 and
		lr.size >= c.size and
		(select count(*) from lecture_rooms where day = day_counter and slot = slot_counter and id = lr.id) = 0 
		order by c.needed_periods desc 
		limit 1;

	DECLARE cur_2 CURSOR FOR select lr.id from lecture_rooms lr where lr.size >= course_size LIMIT 1;  

	DECLARE CONTINUE HANDLER FOR NOT FOUND 

	SET b = 0;

	OPEN cur_1; 
	 	
		FETCH cur_1 into c,course_size, a,room_id;											
		CALL PAIR_TEACHER_COURSE_AND_CLASS(day_counter,slot_counter,c,a,room_id);				
	CLOSE cur_1; 

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `code` char(6) NOT NULL,
  `name` varchar(150) NOT NULL,
  `credit_value` int(11) NOT NULL COMMENT 'This field holds the credit value of the course. Courses with credit value of 6 or 4 need two periods per week.',
  `semistre` int(11) NOT NULL COMMENT 'This holds the semestre during which the course is to be schedulled.',
  `is_schedulled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'When this field is true, it means that this course has been completely shcedulled.',
  `needed_periods` int(11) NOT NULL COMMENT 'This field holds the number of periods to be alloted to this course per week. Its value is decreamented each time the course is alloted a period.',
  `needs_schedulling` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'If this value is true, it means this course is a not a practical course that needs a dedicated room.',
  `size` int(11) DEFAULT NULL,
  `time` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'This value holds the duration of a lecture: 0 for 1 hour and 1 for 2 hours.',
  `has_dedicated_room` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'This column is true if this course has a dedicated room. Examples of courses with dedicated rooms are practical courses, where the dedicated room is the laboratory.',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`code`, `name`, `credit_value`, `semistre`, `is_schedulled`, `needed_periods`, `needs_schedulling`, `size`, `time`, `has_dedicated_room`) VALUES
('CEF201', 'T1', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF202', 'T2', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF203', 'T3', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF204', 'T4', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF205', 'T5', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF206', 'T6', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF207', 'T7', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF208', 'T8', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF209', 'T9', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF210', 'T10', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF211', 'T11', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF212', 'T12', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF213', 'T13', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF214', 'T14', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF215', 'T15', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF216', 'T16', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF217', 'T17', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF218', 'T18', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF219', 'T19', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF220', 'T20', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF221', 'T21', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF222', 'T22', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF223', 'T23', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF224', 'T24', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF225', 'T25', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF226', 'T26', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF227', 'T27', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF228', 'T28', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF229', 'T29', 4, 1, 0, 0, 1, 75, 1, 0),
('CEF230', 'T30', 4, 2, 0, 0, 1, 75, 1, 0),
('CEF301', 'T31', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF302', 'T32', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF303', 'T33', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF304', 'T34', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF305', 'T35', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF306', 'T36', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF307', 'T37', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF308', 'T38', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF309', 'T39', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF310', 'T40', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF311', 'T41', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF312', 'T42', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF313', 'T43', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF314', 'T44', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF315', 'T45', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF316', 'T46', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF317', 'T47', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF318', 'T48', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF319', 'T49', 4, 1, 0, 0, 1, 55, 1, 0),
('CEF320', 'T50', 4, 2, 0, 0, 1, 55, 1, 0),
('CEF321', 'T51', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF322', 'T52', 4, 2, 0, 0, 1, 45, 1, 0),
('CEF323', 'T53', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF324', 'T54', 4, 2, 0, 0, 1, 45, 1, 0),
('CEF325', 'T55', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF326', 'T56', 4, 2, 0, 0, 1, 45, 1, 0),
('CEF327', 'T57', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF328', 'T58', 4, 2, 0, 0, 1, 45, 1, 0),
('CEF329', 'T59', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF330', 'T60', 4, 2, 0, 0, 1, 45, 1, 0),
('CEF401', 'T61', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF402', 'T62', 4, 2, 0, 0, 1, 45, 1, 0),
('CEF403', 'T63', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF404', 'T64', 4, 2, 0, 0, 1, 45, 1, 0),
('CEF405', 'T65', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF406', 'T66', 4, 2, 0, 0, 1, 45, 1, 0),
('CEF407', 'T67', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF408', 'T68', 4, 2, 0, 0, 1, 45, 1, 0),
('CEF409', 'T69', 4, 1, 0, 0, 1, 45, 1, 0),
('CEF410', 'T70', 4, 2, 0, 0, 1, 40, 1, 0),
('CEF411', 'T71', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF412', 'T72', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF413', 'T73', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF414', 'T74', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF415', 'T75', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF416', 'T76', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF417', 'T77', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF418', 'T78', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF419', 'T79', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF420', 'T80', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF421', 'T81', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF422', 'T82', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF423', 'T83', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF424', 'T84', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF425', 'T85', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF426', 'T86', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF427', 'T87', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF428', 'T88', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF429', 'T89', 4, 1, 0, 0, 1, 35, 1, 0),
('CEF430', 'T90', 4, 2, 0, 0, 1, 35, 1, 0),
('CEF501', 'T91', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF502', 'T92', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF503', 'T93', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF504', 'T94', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF505', 'T95', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF506', 'T96', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF507', 'T97', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF508', 'T98', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF509', 'T99', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF510', 'T100', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF511', 'T101', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF512', 'T102', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF513', 'T103', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF514', 'T104', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF515', 'T105', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF516', 'T106', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF517', 'T107', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF518', 'T108', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF519', 'T109', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF520', 'T110', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF521', 'T111', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF522', 'T112', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF523', 'T113', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF524', 'T114', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF525', 'T115', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF526', 'T116', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF527', 'T117', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF528', 'T118', 4, 2, 0, 0, 1, 20, 1, 0),
('CEF529', 'T119', 4, 1, 0, 0, 1, 20, 1, 0),
('CEF530', 'T120', 4, 2, 0, 0, 1, 20, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dedidicated_course_rooms`
--

CREATE TABLE IF NOT EXISTS `dedidicated_course_rooms` (
  `course_code` char(6) NOT NULL,
  `room_id` int(11) NOT NULL,
  KEY `course` (`course_code`),
  KEY `room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `faculty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty` (`faculty`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `faculty`) VALUES
(15, 'Computer Engineering', 1),
(16, 'Electrical and Electronic Engineering', 1),
(17, 'Computer Engineering', 13),
(18, 'Electrical and Electronic Engineering', 13),
(19, 'Agronomic and Applied Molecular Sciences', 14),
(20, 'Agricultural Economics and Agri-Business', 14),
(21, 'Forestory', 14),
(22, 'Veterinary Medicine', 14),
(23, 'Animal Science', 14),
(24, 'Medicine', 15),
(25, 'Nursing', 15),
(26, 'Medical Microbiology and Parasitology', 15),
(27, 'Chemical Pathology', 15),
(28, 'Medical Laboratory Science', 15),
(29, 'Microbiology', 16),
(30, 'Biochemistry', 16),
(31, 'Physics', 16),
(32, 'Mathematics', 16),
(33, 'Chemistry', 16),
(34, 'Environmental Sciences', 16),
(35, 'Computer Science', 16),
(36, 'Geology', 16),
(37, 'Zoology and Animal Physiology', 16),
(38, 'Botany and Plant Physiology', 16),
(39, 'English and French', 17),
(40, 'Linguistics', 17),
(41, 'Performing Arts', 17),
(42, 'English', 17),
(43, 'French', 17),
(44, 'History', 17),
(45, 'Curriculum Studies and Teaching', 18),
(46, 'Educational Psychology', 18),
(47, 'Special Education', 18),
(48, 'Economics and Management', 19),
(49, 'Journalism and Mass Communication', 19),
(50, 'Law', 19),
(51, 'Political Science', 19),
(52, 'Women and Gender Studies', 19),
(53, 'Sociology and Anthropology', 19),
(54, 'Translation', 20),
(55, 'Interpretation', 20);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE IF NOT EXISTS `faculties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`) VALUES
(1, 'Faculty of Engineering and Technology'),
(13, 'College of Technology'),
(14, 'Faculty of Agriculture and Veterinary Medicine'),
(15, 'Faculty of Health Sciences'),
(16, 'Faculty of Science'),
(17, 'Faculty of Arts'),
(18, 'Faculty of Education'),
(19, 'Faculty of Social and Management Sciences'),
(20, 'Advanced School of Translators and Interpreters');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_rooms`
--

CREATE TABLE IF NOT EXISTS `lecture_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Holds lecture room info' AUTO_INCREMENT=48 ;

--
-- Dumping data for table `lecture_rooms`
--

INSERT INTO `lecture_rooms` (`id`, `name`, `size`) VALUES
(3, 'UBLKA', 50),
(4, 'UBLKB', 50),
(5, 'UBLKC', 50),
(6, 'UBLKD', 50),
(7, 'UBLKE', 50),
(8, 'UBLKF', 50),
(9, 'UBLKG', 150),
(10, 'CRBLK1-50-A', 50),
(11, 'CRBLK1-50-B', 50),
(12, 'CRBLK1-50-C', 50),
(13, 'CRBLK1-50-D', 50),
(14, 'CRBLK1-50-E', 50),
(15, 'CRBLK1-50-F', 50),
(16, 'CRBLK1-50-G', 50),
(17, 'CRBLK1-50-H', 50),
(18, 'CRBLK2-50-A', 50),
(19, 'CRBLK2-50-B', 50),
(20, 'CRBLK2-50-C', 50),
(21, 'CRBLK2-50-D', 50),
(22, 'CRBLK2-50-E', 50),
(23, 'CRBLK2-50-F', 50),
(24, 'CRBLK2-50-G', 50),
(25, 'CRBLK2-50-H', 50),
(26, 'REST1', 100),
(27, 'REST2', 100),
(28, 'REST3', 100),
(29, 'REST4', 100),
(30, 'REST5', 100),
(31, 'AMPHI150-A', 150),
(32, 'AMPHI150-B', 150),
(33, 'AMPHI150-C', 150),
(34, 'AMPHI150-D', 150),
(35, 'AMPHI150-E', 150),
(36, 'AMPHI250-A', 250),
(37, 'AMPHI250-B', 250),
(38, 'AMPHI250-C', 250),
(39, 'AMPHI250-D', 250),
(40, 'AMPHI250-E', 250),
(41, 'AMPHI750', 750),
(42, 'AMPHI600', 600),
(43, 'CV1', 50),
(44, 'CV2', 50),
(45, 'CV3', 50),
(46, 'CV4', 50),
(47, 'CV5', 50);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `department` int(11) NOT NULL,
  `teacherscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `department` (`department`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `department`, `teacherscol`) VALUES
(3, 'T1', 15, NULL),
(4, 'T2', 15, NULL),
(5, 'T3', 15, NULL),
(6, 'T4', 15, NULL),
(7, 'T5', 15, NULL),
(8, 'T6', 15, NULL),
(9, 'T7', 15, NULL),
(10, 'T8', 15, NULL),
(11, 'T9', 15, NULL),
(12, 'T10', 15, NULL),
(13, 'T11', 15, NULL),
(14, 'T12', 15, NULL),
(15, 'T13', 15, NULL),
(16, 'T14', 15, NULL),
(17, 'T15', 15, NULL),
(18, 'T16', 15, NULL),
(19, 'T17', 15, NULL),
(20, 'T18', 15, NULL),
(21, 'T19', 15, NULL),
(22, 'T20', 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers_has_courses`
--

CREATE TABLE IF NOT EXISTS `teachers_has_courses` (
  `teachers_id` int(11) NOT NULL,
  `courses_code` char(6) NOT NULL,
  KEY `fk_teachers_has_courses_teachers1` (`teachers_id`),
  KEY `fk_teachers_has_courses_courses1` (`courses_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers_has_courses`
--

INSERT INTO `teachers_has_courses` (`teachers_id`, `courses_code`) VALUES
(3, 'CEF221'),
(3, 'CEF222'),
(3, 'CEF223'),
(3, 'CEF224'),
(3, 'CEF225'),
(3, 'CEF226'),
(3, 'CEF227'),
(3, 'CEF228'),
(3, 'CEF229'),
(3, 'CEF230'),
(4, 'CEF301'),
(4, 'CEF302'),
(4, 'CEF303'),
(4, 'CEF304'),
(4, 'CEF305'),
(4, 'CEF306'),
(4, 'CEF307'),
(4, 'CEF308'),
(4, 'CEF309'),
(4, 'CEF310'),
(5, 'CEF311'),
(5, 'CEF312'),
(5, 'CEF313'),
(5, 'CEF314'),
(5, 'CEF315'),
(5, 'CEF316'),
(5, 'CEF317'),
(5, 'CEF318'),
(5, 'CEF319'),
(5, 'CEF320'),
(6, 'CEF321'),
(6, 'CEF322'),
(6, 'CEF323'),
(6, 'CEF324'),
(6, 'CEF325'),
(6, 'CEF326'),
(6, 'CEF327'),
(6, 'CEF328'),
(6, 'CEF329'),
(6, 'CEF330'),
(7, 'CEF401'),
(7, 'CEF402'),
(7, 'CEF403'),
(7, 'CEF404'),
(7, 'CEF405'),
(7, 'CEF406'),
(7, 'CEF407'),
(7, 'CEF408'),
(7, 'CEF409'),
(7, 'CEF410'),
(8, 'CEF411'),
(8, 'CEF412'),
(8, 'CEF413'),
(8, 'CEF414'),
(8, 'CEF415'),
(8, 'CEF416'),
(8, 'CEF417'),
(8, 'CEF418'),
(8, 'CEF419'),
(8, 'CEF420'),
(9, 'CEF421'),
(9, 'CEF422'),
(9, 'CEF423'),
(9, 'CEF424'),
(9, 'CEF425'),
(9, 'CEF426'),
(9, 'CEF427'),
(9, 'CEF428'),
(9, 'CEF429'),
(9, 'CEF430'),
(10, 'CEF501'),
(10, 'CEF502'),
(10, 'CEF503'),
(10, 'CEF504'),
(10, 'CEF505'),
(10, 'CEF506'),
(10, 'CEF507'),
(10, 'CEF508'),
(10, 'CEF509'),
(10, 'CEF510'),
(11, 'CEF511'),
(11, 'CEF512'),
(11, 'CEF513'),
(11, 'CEF514'),
(11, 'CEF515'),
(11, 'CEF516'),
(11, 'CEF517'),
(11, 'CEF518'),
(11, 'CEF519'),
(11, 'CEF520'),
(12, 'CEF521'),
(12, 'CEF522'),
(12, 'CEF523'),
(12, 'CEF524'),
(12, 'CEF525'),
(12, 'CEF526'),
(12, 'CEF527'),
(12, 'CEF528'),
(12, 'CEF529'),
(12, 'CEF530'),
(13, 'CEF201'),
(13, 'CEF202'),
(13, 'CEF203'),
(13, 'CEF204'),
(13, 'CEF205'),
(13, 'CEF206'),
(13, 'CEF207'),
(13, 'CEF208'),
(13, 'CEF209'),
(13, 'CEF210'),
(14, 'CEF211'),
(14, 'CEF212'),
(14, 'CEF213'),
(14, 'CEF214'),
(14, 'CEF215'),
(14, 'CEF216'),
(14, 'CEF217'),
(14, 'CEF218'),
(14, 'CEF219'),
(14, 'CEF220');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE IF NOT EXISTS `time_table` (
  `day` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `course_code` char(6) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  KEY `course_code` (`course_code`),
  KEY `teacher_id` (`teacher_id`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`day`, `slot`, `course_code`, `teacher_id`, `room_id`) VALUES
(0, 0, 'CEF413', 8, 24),
(1, 0, 'CEF421', 9, 38),
(2, 0, 'CEF217', 14, 26),
(3, 0, 'CEF225', 3, 39),
(4, 0, 'CEF429', 9, 39),
(5, 0, 'CEF303', 4, 40),
(0, 1, 'CEF507', 10, 40),
(1, 1, 'CEF311', 5, 41),
(2, 1, 'CEF515', 11, 41),
(3, 1, 'CEF319', 5, 42),
(4, 1, 'CEF523', 12, 42),
(5, 1, 'CEF517', 11, 43),
(0, 2, 'CEF511', 11, 44),
(1, 2, 'CEF505', 10, 45),
(2, 2, 'CEF403', 7, 3),
(3, 2, 'CEF327', 6, 4),
(4, 2, 'CEF423', 9, 47),
(5, 2, 'CEF321', 6, 5),
(0, 3, 'CEF525', 12, 5),
(1, 3, 'CEF519', 11, 6),
(2, 3, 'CEF513', 11, 7),
(3, 3, 'CEF509', 10, 10),
(4, 3, 'CEF503', 10, 11),
(5, 3, 'CEF427', 9, 12),
(0, 4, 'CEF415', 8, 14),
(1, 4, 'CEF409', 7, 15),
(2, 4, 'CEF201', 13, 36),
(3, 4, 'CEF405', 7, 36),
(4, 4, 'CEF501', 10, 22),
(5, 4, 'CEF209', 13, 37),
(0, 5, 'CEF425', 9, 23),
(1, 5, 'CEF419', 8, 24),
(2, 5, 'CEF404', 7, 25),
(3, 5, 'CEF412', 8, 38),
(4, 5, 'CEF208', 13, 26),
(5, 5, 'CEF216', 14, 39),
(0, 0, 'CEF420', 8, 39),
(1, 0, 'CEF224', 3, 40),
(2, 0, 'CEF428', 9, 40),
(3, 0, 'CEF302', 4, 41),
(4, 0, 'CEF506', 10, 41),
(5, 0, 'CEF310', 4, 42),
(0, 1, 'CEF514', 11, 42),
(1, 1, 'CEF508', 10, 43),
(2, 1, 'CEF502', 10, 44),
(3, 1, 'CEF426', 9, 45),
(4, 1, 'CEF324', 6, 3),
(5, 1, 'CEF528', 12, 3),
(0, 2, 'CEF414', 8, 47),
(1, 2, 'CEF522', 12, 4),
(2, 2, 'CEF516', 11, 5),
(3, 2, 'CEF510', 10, 6),
(4, 2, 'CEF504', 10, 7),
(5, 2, 'CEF430', 9, 10),
(0, 3, 'CEF424', 9, 11),
(1, 3, 'CEF418', 8, 12),
(2, 3, 'CEF406', 7, 14),
(3, 3, 'CEF330', 6, 15),
(4, 3, 'CEF318', 5, 35),
(5, 3, 'CEF326', 6, 36),
(0, 4, 'CEF422', 9, 22),
(1, 4, 'CEF530', 12, 36),
(2, 4, 'CEF416', 8, 23),
(3, 4, 'CEF410', 7, 24),
(4, 4, 'CEF325', 6, 25),
(5, 4, 'CEF529', 12, 25),
(0, 5, 'CEF207', 13, 39),
(1, 5, 'CEF411', 8, 39),
(2, 5, 'CEF215', 14, 40),
(3, 5, 'CEF223', 3, 41),
(4, 5, 'CEF301', 4, 42),
(5, 5, 'CEF417', 8, 45),
(0, 0, 'CEF309', 4, 35),
(1, 0, 'CEF317', 5, 36),
(2, 0, 'CEF521', 12, 36),
(3, 0, 'CEF407', 7, 23),
(4, 0, 'CEF401', 7, 24),
(5, 0, 'CEF526', 12, 24),
(0, 1, 'CEF520', 11, 25),
(1, 1, 'CEF402', 7, 39),
(2, 1, 'CEF206', 13, 40),
(3, 1, 'CEF214', 14, 41),
(4, 1, 'CEF222', 3, 42),
(5, 1, 'CEF408', 7, 45),
(0, 2, 'CEF230', 3, 35),
(1, 2, 'CEF308', 4, 36),
(2, 2, 'CEF512', 11, 36),
(3, 2, 'CEF328', 6, 23),
(4, 2, 'CEF316', 5, 37),
(5, 2, 'CEF322', 6, 24),
(0, 3, 'CEF315', 5, 26),
(1, 3, 'CEF323', 6, 39),
(2, 3, 'CEF527', 12, 39),
(3, 3, 'CEF205', 13, 41),
(4, 3, 'CEF213', 14, 42),
(5, 3, 'CEF329', 6, 45),
(0, 4, 'CEF221', 3, 35),
(1, 4, 'CEF229', 3, 36),
(2, 4, 'CEF307', 4, 37),
(3, 4, 'CEF306', 4, 26),
(4, 4, 'CEF314', 5, 39),
(5, 4, 'CEF518', 11, 39),
(0, 5, 'CEF204', 13, 42),
(1, 5, 'CEF524', 12, 45),
(2, 5, 'CEF212', 14, 35),
(3, 5, 'CEF220', 14, 36),
(4, 5, 'CEF228', 3, 37),
(5, 5, 'CEF227', 3, 26),
(0, 0, 'CEF305', 4, 39),
(1, 0, 'CEF313', 5, 40),
(2, 0, 'CEF203', 13, 31),
(3, 0, 'CEF211', 14, 36),
(4, 0, 'CEF219', 14, 37),
(5, 0, 'CEF218', 14, 26),
(0, 1, 'CEF226', 3, 39),
(1, 1, 'CEF304', 4, 40),
(2, 1, 'CEF312', 5, 41),
(3, 1, 'CEF320', 5, 42),
(4, 1, 'CEF202', 13, 36),
(5, 1, 'CEF210', 13, 37),
(0, 2, 'CEF413', 8, 25),
(1, 2, 'CEF506', 10, 25),
(2, 2, 'CEF529', 12, 25),
(3, 2, 'CEF222', 3, 26),
(4, 2, 'CEF224', 3, 26),
(5, 2, 'CEF226', 3, 26),
(0, 3, 'CEF228', 3, 26),
(1, 3, 'CEF230', 3, 26),
(2, 3, 'CEF302', 4, 26),
(3, 3, 'CEF304', 4, 26),
(4, 3, 'CEF306', 4, 26),
(5, 3, 'CEF308', 4, 26),
(0, 4, 'CEF310', 4, 26),
(1, 4, 'CEF312', 5, 26),
(2, 4, 'CEF314', 5, 26),
(3, 4, 'CEF316', 5, 26),
(4, 4, 'CEF318', 5, 26),
(5, 4, 'CEF320', 5, 26),
(0, 5, 'CEF322', 6, 26),
(1, 5, 'CEF417', 8, 26),
(2, 5, 'CEF512', 11, 26),
(3, 5, 'CEF207', 13, 27),
(4, 5, 'CEF210', 13, 27),
(5, 5, 'CEF213', 14, 27),
(0, 0, 'CEF216', 14, 27),
(1, 0, 'CEF219', 14, 27),
(2, 0, 'CEF223', 3, 27),
(3, 0, 'CEF229', 3, 27),
(4, 0, 'CEF305', 4, 27),
(5, 0, 'CEF311', 5, 27),
(0, 1, 'CEF317', 5, 27),
(1, 1, 'CEF323', 6, 27),
(2, 1, 'CEF420', 8, 27),
(3, 1, 'CEF517', 11, 27),
(4, 1, 'CEF217', 14, 28),
(5, 1, 'CEF225', 3, 28),
(0, 2, 'CEF307', 4, 28),
(1, 2, 'CEF319', 5, 28),
(2, 2, 'CEF326', 6, 28),
(3, 2, 'CEF425', 9, 28),
(4, 2, 'CEF524', 12, 28),
(5, 2, 'CEF315', 5, 29),
(0, 3, 'CEF328', 6, 29),
(1, 3, 'CEF429', 9, 29),
(2, 3, 'CEF201', 13, 30),
(3, 3, 'CEF208', 13, 30),
(4, 3, 'CEF218', 14, 30),
(5, 3, 'CEF309', 4, 30),
(0, 4, 'CEF329', 6, 30),
(1, 4, 'CEF502', 10, 30),
(2, 4, 'CEF206', 13, 31),
(3, 4, 'CEF221', 3, 31),
(4, 4, 'CEF325', 6, 31),
(5, 4, 'CEF503', 10, 31),
(0, 5, 'CEF212', 14, 32),
(1, 5, 'CEF321', 6, 32),
(2, 5, 'CEF504', 10, 32),
(3, 5, 'CEF220', 14, 33),
(4, 5, 'CEF402', 7, 33),
(5, 5, 'CEF513', 11, 33),
(0, 0, 'CEF403', 7, 34),
(1, 0, 'CEF516', 11, 34),
(2, 0, 'CEF408', 7, 35),
(3, 0, 'CEF525', 12, 35),
(4, 0, 'CEF419', 8, 36),
(5, 0, 'CEF214', 14, 37),
(0, 1, 'CEF407', 7, 37),
(1, 1, 'CEF530', 12, 37),
(2, 1, 'CEF501', 10, 38),
(3, 1, 'CEF409', 7, 39),
(4, 1, 'CEF209', 13, 40),
(5, 1, 'CEF412', 8, 40),
(0, 2, 'CEF303', 4, 41),
(1, 2, 'CEF423', 9, 41),
(2, 2, 'CEF410', 7, 42),
(3, 2, 'CEF416', 8, 43),
(4, 2, 'CEF427', 9, 44),
(5, 2, 'CEF511', 11, 45),
(0, 3, 'CEF527', 12, 46),
(1, 3, 'CEF422', 9, 3),
(2, 3, 'CEF424', 9, 3),
(3, 3, 'CEF426', 9, 3),
(4, 3, 'CEF428', 9, 3),
(5, 3, 'CEF430', 9, 3),
(0, 4, 'CEF505', 10, 3),
(1, 4, 'CEF507', 10, 3),
(2, 4, 'CEF508', 10, 3),
(3, 4, 'CEF509', 10, 3),
(4, 4, 'CEF510', 10, 3),
(5, 4, 'CEF514', 11, 3),
(0, 5, 'CEF515', 11, 3),
(1, 5, 'CEF518', 11, 3),
(2, 5, 'CEF519', 11, 3),
(3, 5, 'CEF520', 11, 3),
(4, 5, 'CEF521', 12, 3),
(5, 5, 'CEF522', 12, 3),
(0, 0, 'CEF523', 12, 3),
(1, 0, 'CEF526', 12, 3),
(2, 0, 'CEF528', 12, 3),
(3, 0, 'CEF324', 6, 4),
(4, 0, 'CEF330', 6, 4),
(5, 0, 'CEF404', 7, 4),
(0, 1, 'CEF406', 7, 4),
(1, 1, 'CEF414', 8, 4),
(2, 1, 'CEF418', 8, 4),
(3, 1, 'CEF327', 6, 5),
(4, 1, 'CEF411', 8, 5),
(5, 1, 'CEF401', 7, 6),
(0, 2, 'CEF405', 7, 7),
(1, 2, 'CEF202', 13, 9),
(2, 2, 'CEF203', 13, 9),
(3, 2, 'CEF204', 13, 9),
(4, 2, 'CEF205', 13, 9),
(5, 2, 'CEF211', 14, 9),
(0, 3, 'CEF215', 14, 9),
(1, 3, 'CEF227', 3, 9),
(2, 3, 'CEF301', 4, 9),
(3, 3, 'CEF313', 5, 9),
(4, 3, 'CEF415', 8, 9),
(5, 3, 'CEF421', 9, 15);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dedidicated_course_rooms`
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `faculty` FOREIGN KEY (`faculty`) REFERENCES `faculties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `department` FOREIGN KEY (`department`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teachers_has_courses`
--
ALTER TABLE `teachers_has_courses`
  ADD CONSTRAINT `fk_teachers_has_courses_courses1` FOREIGN KEY (`courses_code`) REFERENCES `courses` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_teachers_has_courses_teachers1` FOREIGN KEY (`teachers_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `time_table`
--
ALTER TABLE `time_table`
  ADD CONSTRAINT `course_code` FOREIGN KEY (`course_code`) REFERENCES `courses` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `lecture_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
