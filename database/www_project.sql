-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 08:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-321-94786-4', 'The Handmads\'tale', 'Margaret Atwood', 'The Handmads\'tale.jpg', 'The Handmaid\'s Tale is an American dystopian television series created by Bruce Miller, based on the 1985 novel of the same name by Canadian author Margaret Atwood. The series was ordered by the streaming service Hulu as a straight-to-series order of 10 episodes, for which production began in late 2016. The plot features a dystopia following a Second American Civil War wherein a theonomic, totalitarian society subjects fertile women, called \"Handmaids\", to child-bearing slavery.', '20.00', 1),
('978-0-7303-1484-4', 'Harlem Shuffle', 'Colson Whitehead', 'harlem shuffle.jpg', 'Harlem Shuffle is a 2021 novel by American novelist Colson Whitehead. It is the follow-up to Whitehead\'s 2019 novel The Nickel Boys, which earned him his second Pulitzer Prize for Fiction. It is a work of crime fiction and a family saga[1] that takes place in Harlem between 1959 and 1964.[2] It was published by Doubleday on September 14, 2021.[1]', '20.00', 2),
('978-1-118-94924-5', 'Think Like a Monk', 'Jay Shetty', 'logic_program.jpg', 'Drawing on ancient wisdom and his own rich experiences in the ashram, “Think Like a Monk” reveals how to overcome negative thoughts and habits, and access the calm and purpose that lie within all of us.\r\nThe lessons monks learn are profound but often abstract. Shetty transforms them into advice and exercises we can all apply to reduce stress, improve focus, improve relationships, identify our hidden abilities, increase self-discipline and give the gifts we find in ourselves to the world. Shetty proves that everyone can – and should – think like a monk.', '20.00', 3),
('978-1-1180-2669-4', 'Guardians of the Galaxy', 'Denn Abnnet', 'pro_js.jpg', 'Guardians of the Galaxy (retroactively referred to as Guardians of the Galaxy Vol. 1) is a 2014 American superhero film based on the Marvel Comics superhero team of the same name. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the 10th film in the Marvel Cinematic Universe (MCU). Directed by James Gunn, who wrote the screenplay with Nicole Perlman, the film features an ensemble cast including Chris Pratt, Zoe Saldaña, Dave Bautista, Vin Diesel, and Bradley Cooper as the titular Guardians, along with Lee Pace, Michael Rooker, Karen Gillan, Djimon Hounsou, John C. Reilly, Glenn Close, and Benicio del Toro. In the film, Peter Quill and a group of extraterrestrial criminals go on the run after stealing a powerful artifact.', '20.00', 4),
('978-1-44937-019-0', 'Wings of fire', 'Dr. Abdul Kalam', 'web_app_dev.jpg', 'Wings of Fire (1999), is the autobiography of the Missile Man of India and President of India, Dr. A. P. J. Abdul Kalam. It was written by him and Arun Tiwari.[1]\r\n\r\nIn the autobiography, Dr. Kalam examines his early life, effort, hardship, fortitude, luck and chance that eventually led him to lead Indian space research, nuclear and missile programs. Kalam started his career, after graduating from Aerospace engineering at Madras Institute of Technology, at Hindustan Aeronautics Limited and was assigned to build a hovercraft prototype. Later he moved to ISRO and helped establish the Vikram Sarabhai Space Centre and pioneered the first space launch-vehicle program. During the 1990s and early 2000, Kalam moved to the DRDO to lead the Indian nuclear weapons program, with particular successes in thermonuclear weapons development culminating in the operation Smiling Buddha and an ICBM Agni.', '20.00', 5),
('978-1-44937-075-6', 'The Five', 'Hallie Rubenhold', 'beauty_js.jpg', 'The Five: The Untold Lives of the Women Killed by Jack the Ripper is a book by British historian Hallie Rubenhold, published by Doubleday in 2019. The book examines the lives of the \"canonical five\", the five women largely believed to have been killed by Jack the Ripper in the Whitechapel murders. Rubenhold concluded that only two of the five women, Mary Jane Kelly and Elizabeth Stride, were prostitutes. In some cases, the women may have been targeted by the Ripper just because they were sleeping rough.', '20.00', 6),
('978-1-4571-0402-2', 'The Testaments', 'Margaret Eleanor Atwood', 'pro_asp4.jpg', 'Margaret Eleanor Atwood CC OOnt CH FRSC FRSL (born November 18, 1939) is a Canadian poet, novelist, literary critic, essayist, teacher, environmental activist, and inventor. Since 1961, she has published 18 books of poetry, 18 novels, 11 books of nonfiction, nine collections of short fiction, eight children\'s books, and two graphic novels, and a number of small press editions of both poetry and fiction. Atwood has won numerous awards and honors for her writing, including two Booker Prizes, the Arthur C. Clarke Award, the Governor General\'s Award, the Franz Kafka Prize, Princess of Asturias Awards, and the National Book Critics and PEN Center USA Lifetime Achievement Awards. A number of her works have been adapted for film and television.Atwood\'s works encompass a variety of themes including gender and identity, religion and myth, the power of language, climate change, and \"power politics\". Many of her poems are inspired by myths and fairy tales which interested her from a very early age.', '20.00', 1),
('978-1-484216-40-8', 'Ikigai', 'Héctor García and Francesc Mira', 'android_studio.jpg', 'The authors define ikigai and the rules of ikigai—they conducted a total of one hundred interviews in Ogimi, Okinawa to try to understand the longevity secrets of centenarians and supercentenarians.“What do Japanese artisans, engineers, Zen philosophy, and cuisine have in common?Simplicity and attention to detail.”“The authors of this book wish you a long, happy, and purposeful life.”', '20.00', 4),
('978-1-49192-706-9', 'The Human Tide', 'Paul Morlanda', 'c_sharp_6.jpg', 'The Human Tide shows how periods of rapid population transition — a phenomenon that first emerged in the British Isles but gradually spread across the globe–shaped the course of world history. Demography — the study of population — is the key to unlocking an understanding of the world we live in and how we got here.Demographic changes explain why the Arab Spring came and went, how China rose so meteorically, and why Britain voted for Brexit and America for Donald Trump. Sweeping from Europe to the Americas, China, East Asia, the Middle East, and North Africa, The Human Tide is a panoramic view of the sheer power of numbers.', '20.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(5, 'dda', 'eafe', 'eff', 'eff', 'fesf'),
(10, 'geyhd', '', '', '', ''),
(15, 'aam', 'collge road', 'nadiad', '396434', 'india'),
(16, 'w4t', 'e5y', 'e5y', 'e5y', '5ey'),
(19, 'aam', 'college road', 'nadiad', '387001', 'india'),
(20, 'aam', 'college road', 'nadiad', '387001', 'india'),
(21, 'aam', 'college road', 'nadiad', '387001', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, '40.00', '2022-05-15 12:47:52', 'ewfefr', 'gtg', 'gdttg', 'ggtd', 'dgtg'),
(6, 5, '40.00', '2022-05-15 12:50:43', 'dda', 'eafe', 'eff', 'eff', 'fesf'),
(7, 6, '20.00', '2022-05-15 13:02:14', 'derr', 'srte', 'syg', '2434646', 'india'),
(8, 7, '60.00', '2022-05-20 13:32:31', 'dg', 'bhavnagar', 'bh', ',;l', 'lmmk m'),
(9, 8, '20.00', '2022-05-20 13:33:49', 'jnkln', '', '', '', ''),
(10, 9, '40.00', '2022-05-20 13:36:25', 'xdff', 'ff', 'ff', 'ff', ''),
(11, 10, '20.00', '2022-05-25 11:48:49', 'geyhd', '', '', '', ''),
(12, 11, '120.00', '2022-05-25 12:44:44', '', '', '', '', ''),
(13, 12, '80.00', '2022-05-25 12:47:29', 'dddd', 'dddd', 'ddddd', 'dddd', 'dddd'),
(14, 11, '0.00', '2022-05-25 12:59:18', '', '', '', '', ''),
(15, 11, '0.00', '2022-05-25 13:03:07', '', '', '', '', ''),
(16, 13, '40.00', '2022-06-03 06:49:26', '56', '56', '', '', ''),
(17, 14, '20.00', '2022-06-03 06:51:39', 'ee', 'ee', 'eee', 'eee', 'eeee'),
(18, 15, '40.00', '2022-06-03 13:20:30', 'aam', 'collge road', 'nadiad', '396434', 'india'),
(19, 16, '20.00', '2022-06-03 13:21:39', 'w4t', 'e5y', 'e5y', 'e5y', '5ey'),
(20, 17, '60.00', '2022-06-03 13:30:22', 'knj', '', '', '', ''),
(21, 18, '40.00', '2022-06-03 13:36:13', 'aam', 'collge road', 'na', '23455', 'jkfjk'),
(22, 19, '40.00', '2022-06-03 13:52:04', 'aam', 'college road', 'nadiad', '387001', 'india'),
(23, 20, '40.00', '2022-06-03 14:21:03', 'aam', 'college road', 'nadiad', '387001', 'india'),
(24, 21, '40.00', '2022-06-03 14:36:53', 'aam', 'college road', 'nadiad', '387001', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-484217-26-9', '20.00', 1),
(6, '978-1-44937-075-6', '20.00', 1),
(6, '978-0-7303-1484-4', '20.00', 1),
(7, '978-1-118-94924-5', '20.00', 1),
(8, '978-0-321-94786-4', '20.00', 2),
(8, '978-1-118-94924-5', '20.00', 1),
(9, '978-0-7303-1484-4', '20.00', 1),
(10, '978-0-7303-1484-4', '20.00', 2),
(11, '978-1-4571-0402-2', '20.00', 1),
(12, '978-1-118-94924-5', '20.00', 4),
(12, '978-1-4571-0402-2', '20.00', 2),
(13, '978-1-44937-019-0', '20.00', 2),
(13, '978-1-118-94924-5', '20.00', 1),
(13, '978-0-321-94786-4', '20.00', 1),
(16, '978-1-118-94924-5', '20.00', 1),
(16, '978-0-7303-1484-4', '20.00', 1),
(17, '978-1-118-94924-5', '20.00', 1),
(18, '978-1-1180-2669-4', '20.00', 1),
(18, '978-1-118-94924-5', '20.00', 1),
(19, '978-1-118-94924-5', '20.00', 1),
(20, '978-1-118-94924-5', '20.00', 1),
(20, '978-1-44937-075-6', '20.00', 1),
(20, '978-0-321-94786-4', '20.00', 1),
(21, '978-1-118-94924-5', '20.00', 1),
(21, '978-1-44937-019-0', '20.00', 1),
(22, '978-0-321-94786-4', '20.00', 1),
(22, '978-1-118-94924-5', '20.00', 1),
(23, '978-1-118-94924-5', '20.00', 1),
(23, '978-1-44937-075-6', '20.00', 1),
(24, '978-1-118-94924-5', '20.00', 1),
(24, '978-1-44937-075-6', '20.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'McClelland and Stewart Houghton Mifflin Harcourt '),
(2, 'Doubleday'),
(3, ' Simon & Schuster.'),
(4, 'Samus Aran'),
(5, 'Universities Press'),
(6, 'HarperCollins Publishers');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
