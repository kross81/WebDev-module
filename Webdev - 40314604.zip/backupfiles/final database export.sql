-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 11:27 PM
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
-- Database: `new_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_review_approval`
--

CREATE TABLE `admin_review_approval` (
  `approval_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `album_name` varchar(128) NOT NULL,
  `artist` varchar(128) NOT NULL,
  `year_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `artwork_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `rank`, `album_name`, `artist`, `year_id`, `genre_id`, `artwork_url`) VALUES
(1, 1, 'Sgt. Pepper\'s Lonely Hearts Club Band', 'The Beatles', 1, 1, 'https://i.discogs.com/NVT7tAflv5ytzA6LHa5OphGOX8T0RFTlcclqvaGRFRg/rs:fit/g:sm/q:90/h:225/w:224/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4NDcy/NzUtMTM0NjcxNDc0/MC00OTYxLmpwZWc.jpeg'),
(2, 2, 'Pet Sounds', 'The Beach Boys', 3, 1, 'https://i.discogs.com/v7TVDpdje7lvgGs6qXjg44W982UuNM9ZjA6LFRnqF10/rs:fit/g:sm/q:90/h:765/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NTky/OTgyLTE1Nzc3ODcw/MzMtMjU3Mi5qcGVn.jpeg'),
(3, 3, 'Revolver', 'The Beatles', 3, 1, 'https://i.discogs.com/auBslt3e7nGA9HvBgKjK2NYYp-zFHlXLvEBhH5D0k14/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk4MjI4/NDctMTUwNDI1MjU4/NC04Njk5LmpwZWc.jpeg'),
(4, 4, 'Highway 61 Revisited', 'Bob Dylan', 7, 1, 'https://i.discogs.com/P6DuPiKGWq3w4mAKIdAasCRtyOCSDZWyGRmKUhI0n8I/rs:fit/g:sm/q:90/h:600/w:593/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI5NTcy/MTctMTMwOTA4OTM3/NS5qcGVn.jpeg'),
(5, 5, 'Rubber Soul', 'The Beatles', 7, 5, 'https://i.discogs.com/UDPaKtpLLVADslQnPdQrM_h0jNUvIzqCW2UIz5qyCTA/rs:fit/g:sm/q:90/h:596/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNTM3/MTctMTM4NDAyNDQ0/OC00MDk3LmpwZWc.jpeg'),
(6, 6, 'What\'s Going On', 'Marvin Gaye', 11, 6, 'https://i.discogs.com/nmQ2dmFJc-N4Bn8Q_VQQBPvrp8G-IJ8-mM960CpNpHY/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNDkw/MzIzLTE1MTcyNTA3/OTgtMTM3Mi5qcGVn.jpeg'),
(7, 7, 'Exile on Main St.', 'The Rolling Stones', 13, 1, 'https://i.discogs.com/eH24Y8exgb6mCNgzVK7y8DmM2JxBu43EFj6bpwPj7Zg/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4Njk0/OS0xMzg0NjEyMTky/LTEwMDUuanBlZw.jpeg'),
(8, 8, 'London Calling', 'The Clash', 15, 1, 'https://i.discogs.com/z0GMwWa_ZBREDepI6z0CKujVFnktdx9uJpzCXdXR-UQ/rs:fit/g:sm/q:90/h:596/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExODU3/MTgtMTUzMjYyNDIx/NC0xMDUzLmpwZWc.jpeg'),
(9, 9, 'Blonde on Blonde', 'Bob Dylan', 3, 9, 'https://i.discogs.com/94etNC31PRI2Y48s2soarp3Kjclut__0hGwJtd1F1CA/rs:fit/g:sm/q:90/h:602/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0MzE2/MDEtMTM4NzE0MTM4/MC04MDg1LmpwZWc.jpeg'),
(10, 10, 'The Beatles (\"The White Album\")', 'The Beatles', 19, 1, 'https://i.discogs.com/objzNU3hZfqOEnJPbNalalkpXQtvx_f9PBAA4LyHTlA/rs:fit/g:sm/q:90/h:524/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMDcx/ODYzLTE1Mjc3MTQ4/MTctNTc2Ni5qcGVn.jpeg'),
(11, 11, 'The Sun Sessions', 'Elvis Presley', 21, 1, 'https://i.discogs.com/Pn9KRpzOVKpKLmfmVcq10to9jBABQaOvrsEI18aHfrM/rs:fit/g:sm/q:90/h:598/w:598/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3Mjk5/NDQtMTM0NTMzMTcx/NS0yMzExLmpwZWc.jpeg'),
(12, 12, 'Kind of Blue', 'Miles Davis', 23, 12, 'https://i.discogs.com/pxRfcbDFNHUbSvsT3uc41oGbC3VCY12vBtskOGL6wCI/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYyNzYx/ODMtMTY0NDEwMDc1/OS02NDU3LmpwZWc.jpeg'),
(13, 13, 'The Velvet Underground & Nico', 'The Velvet Underground', 1, 1, 'https://i.discogs.com/ah3RYZA4PfQxRR589cUtOXcebqhJ0eLTLBvSzhjkVuw/rs:fit/g:sm/q:90/h:515/w:361/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ2NjY2/MzUtMTM3OTkzMjMy/MC04ODA0LmpwZWc.jpeg'),
(14, 14, 'Abbey Road', 'The Beatles', 27, 1, 'https://i.discogs.com/M2yc5OJZPdVoDm2_UlRRXuDlDguamLLSdnbziNmZoQI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2MDc0/MjQtMTYzMDYwMTA4/Ny0xMTk5LmpwZWc.jpeg'),
(15, 15, 'Are You Experienced', 'The Jimi Hendrix Experience', 1, 9, 'https://i.discogs.com/2-7PGO_kBzci2lp_uafKMXvnH7gbXI0F9knTOUBtay4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk5MzAy/OC0xNTc2MzMzMjAx/LTg1MzAuanBlZw.jpeg'),
(16, 16, 'Blood on the Tracks', 'Bob Dylan', 31, 1, 'https://i.discogs.com/c6j3feetlgmEapu1uSwMlYj9MkvuUSS_kLctq8PzkFY/rs:fit/g:sm/q:90/h:589/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTcyMTI3/MjEtMTQzNjI4ODY2/My01ODA2LmpwZWc.jpeg'),
(17, 17, 'Nevermind', 'Nirvana', 33, 1, 'https://i.discogs.com/x3_an7MFpKhKDsCvnRJwsQDDJvXAtWrb96k3XMPnRUE/rs:fit/g:sm/q:90/h:317/w:320/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM2ODY4/MjktMTM0MDUzMTI1/NC0zNTQzLmpwZWc.jpeg'),
(18, 18, 'Born to Run', 'Bruce Springsteen', 31, 1, 'https://i.discogs.com/Q8IO3u8quOZZnqV5UYe5jYpSPSX4QrtJc2-xt5sMor8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1MTU0/ODktMTIyNTM5MDY4/Ny5qcGVn.jpeg'),
(19, 19, 'Astral Weeks', 'Van Morrison', 19, 19, 'https://i.discogs.com/ZKV0Y5P2J0MsmUA7UP2IeM8MDaweG1rmnCbV3sIZ1Wk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM1MzYy/ODktMTQ1NDk5MTkz/Ny0yMzUxLmpwZWc.jpeg'),
(20, 20, 'Thriller', 'Michael Jackson', 39, 20, ' https://img.discogs.com/XOmlYMla7xMzb382QAD76X3Feqg=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-2911293-1594245812-7931.jpeg.jpg'),
(21, 21, 'The Great Twenty_Eight', 'Chuck Berry', 39, 1, 'https://i.discogs.com/mViHizbHAKHl0l127pHdUOxFykVsNHa0rTJI9tf8NG4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU4Mjg0/MC0xMzI3MTM1NDY3/LmpwZWc.jpeg'),
(22, 22, 'The Complete Recordings', 'Robert Johnson', 43, 22, 'https://i.discogs.com/zFdMxMSQ8u9FUyJVdG2KIu9XHwZyo-9ojbNqRR07-Pg/rs:fit/g:sm/q:90/h:1237/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUwMDYx/ODAtMTM4MTk0NTE1/Mi03NjY1LmpwZWc.jpeg'),
(23, 23, 'John Lennon/Plastic Ono Band', 'John Lennon / Plastic Ono Band', 45, 1, 'https://i.discogs.com/7vKEhY6AvYtO4571e9dBj2r0ycoSY1eLk62OW0deU6I/rs:fit/g:sm/q:90/h:862/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5MzQ0/MjQtMTM3OTg3NDI3/My0xNTU1LmpwZWc.jpeg'),
(24, 24, 'Innervisions', 'Stevie Wonder', 47, 6, 'https://i.discogs.com/Oyn1yyEZfKYh50TS1r-EKLGBxW61gsmWaFSKS1z3fGo/rs:fit/g:sm/q:90/h:495/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1ODY1/OTItMTM2OTkyOTgw/Mi0xOTk4LmpwZWc.jpeg'),
(25, 25, 'Live at the Apollo, 1962', 'James Brown', 49, 6, 'https://i.discogs.com/ZzaCFQ43a1ROhD48VRbH9DEyWiFvk5sqBvlS6NuJ2RE/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMDMw/OTgtMTM2OTYwMjQ1/NC00MTk5LmpwZWc.jpeg'),
(26, 26, 'Rumours', 'Fleetwood Mac', 51, 1, 'https://i.discogs.com/1KjJ_yVdW-8raz-Ris-l8WVeoywZunoEdtrbadnrYMw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTczMjQ0/MzQtMTY0NDE0OTcz/OS0xMTAyLmpwZWc.jpeg'),
(27, 27, 'The Joshua Tree', 'U2', 53, 1, 'https://i.discogs.com/NAlNrHLRYGysqOV2YMSs65gLxciTl_9CWkQ7ldsWxkI/rs:fit/g:sm/q:90/h:500/w:345/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5OTc3/OTUtMTMzMTUxMTA1/MC5qcGVn.jpeg'),
(28, 28, 'Who\'s Next', 'The Who', 11, 1, 'https://i.discogs.com/qxZ91l1wSiST8Th6VCtTNZAtuKsEUKR6v13BSpq7jcA/rs:fit/g:sm/q:90/h:588/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2NDU4/MTA4LTE2MDc4Njk1/NzYtMjYxMS5qcGVn.jpeg'),
(29, 29, 'Led Zeppelin', 'Led Zeppelin', 27, 1, 'https://i.discogs.com/z_ZdfYspfgRmgoOGW4ttOLSShzmLC75y4D7tv_yuA18/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg3NDQy/MTItMTQ3NTM1MDE4/My05NTIxLmpwZWc.jpeg'),
(30, 30, 'Blue', 'Joni Mitchell', 11, 30, 'https://i.discogs.com/My4PyjnrLCtBdBCmn-AnQRU_bswrrNT-f4M87oqMZlI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMDI4/MzgxLTE0OTAzODMz/MjEtNTc4OS5qcGVn.jpeg'),
(31, 31, 'Bringing It All Back Home', 'Bob Dylan', 7, 31, 'https://i.discogs.com/1PZjyWQWhcQ7Zw9iyo01J_iQFyqd-PyCwABti95GvsU/rs:fit/g:sm/q:90/h:564/w:598/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNjI5/MTUtMTM0Mzg0NTI3/MS05NTc4LmpwZWc.jpeg'),
(32, 32, 'Let It Bleed', 'The Rolling Stones', 27, 1, 'https://i.discogs.com/QbnTz5IB-HtC_bsg7G_79LI8o2bwL5de_DH6rnAIGtY/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyNDQ5/NTItMTMzMTczNjgy/My5qcGVn.jpeg'),
(33, 33, 'Ramones', 'Ramones', 21, 1, 'https://i.discogs.com/Ltqt_wzOYWN2HvAitZ4pPA41ZliX2AnPeJmxArLzJLU/rs:fit/g:sm/q:90/h:608/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg5MDM1/Mi0xNjExMjEyMzcx/LTYxOTEuanBlZw.jpeg'),
(34, 34, 'Music From Big Pink', 'The Band', 19, 1, 'https://i.discogs.com/ERPMD-UhRDi-NylbRi4NZxMBTz6TbT8TV047lDKWH-0/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ3MDE3/MTAtMTQ3MjA0Nzc4/NC03NjIzLmpwZWc.jpeg'),
(35, 35, 'The Rise and Fall of Ziggy Stardust and the Spiders From Mars', 'David Bowie', 13, 1, 'https://i.discogs.com/s2fXfSGj5WfUUs1ixMkUyps32YwMIIZ76Gk1n0ygWyI/rs:fit/g:sm/q:90/h:605/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYxODk1/Mi0xNDQzNDUxNDcz/LTc4ODkuanBlZw.jpeg'),
(36, 36, 'Tapestry', 'Carole King', 11, 5, 'https://i.discogs.com/re5JdP_ATjuHxGgAp0-wylQCAgbqBsERjCdxO5bwWyU/rs:fit/g:sm/q:90/h:586/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTU1/MzAtMTM4OTk0Mzc1/NS01NjAzLmpwZWc.jpeg'),
(37, 37, 'Hotel California', 'Eagles', 21, 1, 'https://i.discogs.com/n3UESqum3wtvCE3cxnfLM6_ZftQmrHj-OkBNqZzthE8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMxODYx/MTMtMTQwMTg3NDkw/OC01ODIyLmpwZWc.jpeg'),
(38, 38, 'The Anthology', 'Muddy Waters', 75, 38, ' https://img.discogs.com/GL8xJfK3Rf0NFZjGmifJtvpgcHQ=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-1305419-1242803317.jpeg.jpg'),
(39, 39, 'Please Please Me', 'The Beatles', 49, 1, 'https://i.discogs.com/QONPyTfv-VJxsfR_CNHMQ009R71oeZ5HY3Ui-Y5LVuI/rs:fit/g:sm/q:90/h:588/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3MTc3/NDYtMTUyMzQ1NjYx/MC04ODM4LmpwZWc.jpeg'),
(40, 40, 'Forever Changes', 'Love', 1, 1, 'https://i.discogs.com/5vwzwWrEoMGLEpOL6XcX6A8UEnFUtumkEXDW0nL4pSQ/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNTcz/MDMtMTI2NDQ0NDkw/NC5qcGVn.jpeg'),
(41, 41, 'Never Mind the Bollocks Here\'s the Sex Pistols', 'Sex Pistols', 51, 1, 'https://i.discogs.com/PTiaoC1RMMqxCy9Aq1a-JJvkhJ7LvUgLxUSX2Igbdt8/rs:fit/g:sm/q:90/h:600/w:425/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ4NDg2/NjItMTM5MzEwMTU4/Mi02OTMxLmpwZWc.jpeg'),
(42, 42, 'The Doors', 'The Doors', 1, 1, 'https://i.discogs.com/C09lE9j9KFumH7RLFA14kigIXA6owBOYC_0wUT1oJ2c/rs:fit/g:sm/q:90/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg4NTA1/ODYtMTQ3MDA3ODEy/MC01MDg2LmpwZWc.jpeg'),
(43, 43, 'The Dark Side of the Moon', 'Pink Floyd', 47, 1, 'https://i.discogs.com/7yaesmjGUzTI3W2UJJFkT_KzrBb5O87Jg0MXKhfASko/rs:fit/g:sm/q:90/h:560/w:595/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI4ODA2/NTgtMTMwNTQzMjQ3/Mi5qcGVn.jpeg'),
(44, 44, 'Horses', 'Patti Smith', 31, 1, 'https://i.discogs.com/rx3dCsUxmIGXIViDIGcpVDTp9OAR8RwuKUAs0vu179o/rs:fit/g:sm/q:90/h:450/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2MDMx/NDA4LTE2MDIyMDAx/NTktMTAyOS5tcG8.jpeg'),
(45, 45, 'The Band (\"The Brown Album\")', 'The Band', 27, 45, ' https://img.discogs.com/WogPDmRRaSQIRebSZ97WCbefhCM=/150x150/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/A-269915-1528597622-6055.jpeg.jpg'),
(46, 46, 'Legend: The Best of Bob Marley and The Wailers', 'Bob Marley & The Wailers', 91, 46, 'https://i.discogs.com/f9gJvZoXSu28vVgYJAua0GW2FHpqUyVNgggGMU1nZPQ/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyNzE3/ODQxLTE1NDA2NDUz/ODMtNzM5OC5qcGVn.jpeg'),
(47, 47, 'A Love Supreme', 'John Coltrane', 7, 12, 'https://i.discogs.com/hnDSML4KcgGKcSbacM1iJI9f6YJHmy15VvZxufIAn3M/rs:fit/g:sm/q:90/h:483/w:476/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg1NzUw/NS0xMzk4OTU1ODM2/LTk0MzEuanBlZw.jpeg'),
(48, 48, 'It Takes a Nation of Millions to Hold Us Back', 'Public Enemy', 95, 48, 'https://i.discogs.com/95HQL_1OAchh6qRqFY4oJILzjEYXqGirR5dSLaulisE/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc3NTIy/OC0xNDQ4MTM1NDU3/LTIyNTAuanBlZw.jpeg'),
(49, 49, 'At Fillmore East', 'The Allman Brothers Band', 11, 9, 'https://i.discogs.com/4f5j1I0kw_xZ25NKhNpTKtcqimu1rk9HiZPVkcgKpgk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNjYw/NzYwLTE1MjAxOTg4/OTctMjUzMC5qcGVn.jpeg'),
(50, 50, 'Here\'s Little Richard', 'Little Richard', 99, 9, 'https://i.discogs.com/fKMTKLq6wnC8O10bAE_2-hOkpuq57ZYgi16mdBP6Hc4/rs:fit/g:sm/q:90/h:450/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2MjQ0/ODAzLTE2MDU4OTU5/NzYtNzc4NC5qcGVn.jpeg'),
(51, 51, 'Bridge Over Troubled Water', 'Simon & Garfunkel', 45, 1, 'https://i.discogs.com/wxBbJpRx7EXw5_9V3d5AiNKQOMutw0oxm-LMwA4zDXo/rs:fit/g:sm/q:90/h:836/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMzE5/MDUyLTE1NTIwMzAy/MTAtNzIyNS5qcGVn.jpeg'),
(52, 52, 'Greatest Hits', 'Al Green', 31, 6, 'https://i.discogs.com/VURnN4T7IXcZfN_dBR2Y9ZUMkmKIaSzMEru79mlS-Js/rs:fit/g:sm/q:90/h:728/w:460/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2MjA1/OTgwLTE2MDUyNjU0/NDYtODU2MC5qcGVn.jpeg'),
(53, 53, 'Meet The Beatles!', 'The Beatles', 105, 1, 'https://i.discogs.com/e-75dxjz5qCXwTDZP-c5emwN2jutbL-ty4zIFRwv-Vc/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDkx/MTItMTUxNzA1MzAw/NC02MTMxLmpwZWc.jpeg'),
(54, 54, 'The Birth of Soul', 'Ray Charles', 33, 54, 'https://i.discogs.com/I1NG0MPICtndkX0ilVjrj8jlNUk9RwsZuXhQgocYA5Y/rs:fit/g:sm/q:90/h:448/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTcyMzUx/OTMtMTQzNjgwMjU4/OS03NzEzLmpwZWc.jpeg'),
(55, 55, 'Electric Ladyland', 'The Jimi Hendrix Experience', 19, 9, 'https://i.discogs.com/rQ3mNAkZbK-i8tDga_DnvgnrbiFT6w7EzoEn_52n0jU/rs:fit/g:sm/q:90/h:845/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNDE0/NTQtMTY0MDkzOTU5/Ni01NDUyLmpwZWc.jpeg'),
(56, 56, 'Elvis Presley', 'Elvis Presley', 111, 1, 'https://i.discogs.com/-HYNsajCjF9gwQj93z7QO_DPFjjMnYJpE-5F6dKbdFE/rs:fit/g:sm/q:90/h:571/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMzU3/NjE2LTE1MTQ4OTU5/NjktMTA4MS5qcGVn.jpeg'),
(57, 57, 'Songs in the Key of Life', 'Stevie Wonder', 21, 6, 'https://i.discogs.com/vBq0qc1HPcevq4s9nts-v1bJqtE0xN8-Lw2VliGwaQo/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI5Mjcw/NjItMTU4NzM3Mzgz/My00NjE2LmpwZWc.jpeg'),
(58, 58, 'Beggars Banquet', 'The Rolling Stones', 19, 58, 'https://i.discogs.com/FYu6pIuI3Uig2weaFcmROEZI__qwAkbU43LUmCYb6Z4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU4OTMy/NjctMTQwNTU5OTQ0/Mi03NzM4LmpwZWc.jpeg'),
(59, 59, 'Chronicle: The 20 Greatest Hits', 'Creedence Clearwater Revival', 21, 1, 'https://i.discogs.com/_l74uziA-cUaey795NGxd5cl_KguIfiX9asUDWBJtY8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU4ODQ3/MzUtMTQwNTM3NTg5/NC05NzQzLmpwZWc.jpeg'),
(60, 60, 'Trout Mask Replica', 'Captain Beefheart & His Magic Band', 27, 9, 'https://i.discogs.com/fd1qVeWeMreTocRmC1UAr4ADOUIPmx7o57QbhgVkJz4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3MTUx/MzYtMTM0MTYxNjgz/My0zNjc2LmpwZWc.jpeg'),
(61, 61, 'Greatest Hits', 'Sly & The Family Stone', 45, 6, 'https://i.discogs.com/JDcPALYXTnapGlt1ZTyVplV4A06EgQH0O7kVwspDa7A/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc0ODQ2/NzUtMTQ0MjQyODYy/Mi04OTU3LmpwZWc.jpeg'),
(62, 62, 'Appetite for Destruction', 'Guns N\' Roses', 53, 1, 'https://i.discogs.com/9wa3DUlXmYTfpAA1mPuTzr0OWDssrD-rsvcBAB1e8iI/rs:fit/g:sm/q:90/h:600/w:596/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4MDQ3/NjEtMTMwMzYxNjM4/My5qcGVn.jpeg'),
(63, 63, 'Achtung Baby', 'U2', 33, 63, 'https://i.discogs.com/EQsx4jDTfKxy4-VB3mJy6iGDnx4cF5RUg_iiD2mymS4/rs:fit/g:sm/q:90/h:591/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQyMzY1/MDktMTM4MDkyMjc2/Ni05NTI1LmpwZWc.jpeg'),
(64, 64, 'Sticky Fingers', 'The Rolling Stones', 11, 1, 'https://i.discogs.com/o9R8QYvUoTS2oYLcwafENzL-WhFv0L8EkozplOilYSA/rs:fit/g:sm/q:90/h:610/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMjcy/Njg3LTE2Mjk1Nzc1/NzQtNDYyNS5qcGVn.jpeg'),
(65, 65, 'Back to Mono (1958-1969)', 'Phil Spector', 33, 58, 'https://i.discogs.com/DXwrbE49WXAbWaeTzwQ39-AA8FcPst3f7TUdjsM4S1I/rs:fit/g:sm/q:90/h:555/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzNTQz/NzUtMTU5NjY2OTI4/NS0xODA0LmpwZWc.jpeg'),
(66, 66, 'Moondance', 'Van Morrison', 45, 66, 'https://i.discogs.com/SA6iUWOHo9Kv2OfjB_88r_FkOvFNc2AseyE68GPINPM/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5MTI5/MDMtMTQ4NjMwMjI3/OS0xMTI2LmpwZWc.jpeg'),
(67, 67, 'Kid A', 'Radiohead', 133, 63, 'https://i.discogs.com/_zg0Us0N_anqCz9hJvFGeRK2v69eDDCxQnHkd7RcgTk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc0NzQz/LTE1NDg5MDI2NDMt/Mzg2OS5qcGVn.jpeg'),
(68, 68, 'Off the Wall', 'Michael Jackson', 15, 20, 'https://i.discogs.com/zl5v5VCYQuYQcQtCa2xNah3p9LlsCDvObhfYWdGLjP4/rs:fit/g:sm/q:90/h:344/w:358/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMDA5/Ni0xMDg1NjAwNjA3/LmpwZw.jpeg'),
(69, 69, '[Led Zeppelin IV]', 'Led Zeppelin', 11, 1, 'https://i.discogs.com/1VJBuJtsUV0NOjsm-LmMM6UezYcFGU6NdwB4mNr0B0Q/rs:fit/g:sm/q:90/h:536/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMzMTg4/ODMtMTMyNTU4ODg4/Ny5qcGVn.jpeg'),
(70, 70, 'The Stranger', 'Billy Joel', 51, 1, 'https://i.discogs.com/jWliL6lcjAwh98RofHCDtaqpL-qicEEjM6X_6BLNQRA/rs:fit/g:sm/q:90/h:513/w:514/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3MjEw/NTYtMTIzOTEyNzI4/MC5qcGVn.jpeg'),
(71, 71, 'Graceland', 'Paul Simon', 141, 71, 'https://i.discogs.com/99gpgpoCEuhXYXXtnPxjzCEOw7KGRhvxY3lUxIdx_Cw/rs:fit/g:sm/q:90/h:586/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0Mzc1/OTg2LTE1NzMyODM1/MjYtNjY3NC5qcGVn.jpeg'),
(72, 72, 'Superfly', 'Curtis Mayfield', 13, 72, 'https://i.discogs.com/zXdBJf7GtkPS3zYzArlXph365BMHkiiiBCDDABeJt4U/rs:fit/g:sm/q:90/h:224/w:224/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNjQw/MzktMTMzMTcxMjkw/Ni5qcGVn.jpeg'),
(73, 73, 'Physical Graffiti', 'Led Zeppelin', 31, 1, 'https://i.discogs.com/x3ZpnVYVFbxLgfbyGkI5YJd8ySOeh9uUaHxOHr9uaZ4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1ODkz/OS0xNTg4ODgxMTUx/LTE5OTUuanBlZw.jpeg'),
(74, 74, 'After the Gold Rush', 'Neil Young', 45, 1, 'https://i.discogs.com/smj_k_v0GVZMvkNokiekJZgpccoEk3K4N232rEtE-f0/rs:fit/g:sm/q:90/h:353/w:353/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM5Mjg2/NjMtMTM0OTU1Mjc0/NS03MTQzLmpwZWc.jpeg'),
(75, 75, 'Star Time', 'James Brown', 33, 6, 'https://i.discogs.com/DVhXpPf23xcDyljzBOblScd2TuCwTCTApt79O29-h2U/rs:fit/g:sm/q:90/h:1065/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyMzk3/MTE2LTE2NDY2MDQ3/NjUtNjIwMC5qcGVn.jpeg'),
(76, 76, 'Purple Rain', 'Prince and the Revolution', 91, 76, 'https://i.discogs.com/mSIjl1G4gAdx2xw9iLG1fBmNPLz_5GNo0bLqeWyDMh4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5NDAy/MS0xMzM1NDAwMjg5/LmpwZWc.jpeg'),
(77, 77, 'Back in Black', 'AC/DC', 153, 1, 'https://i.discogs.com/PNtb_abcv92YsKJgRoLBZjTVURC5e2KyIKTlTJ76mmg/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMyNDg4/MTUtMTMyMjMwNTky/Mi5qcGVn.jpeg'),
(78, 78, 'Otis Blue: Otis Redding Sings Soul', 'Otis Redding', 7, 6, 'https://i.discogs.com/nFWGROz_UaPSWry_oR0mla5_QvLD6QwLIso4FttSIoc/rs:fit/g:sm/q:90/h:613/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2MDY5/NzQtMTUxNTAxNTQ4/OC0xOTkzLmpwZWc.jpeg'),
(79, 79, 'Led Zeppelin II', 'Led Zeppelin', 27, 1, 'https://i.discogs.com/FujVBFR83isrWS-axeADcNjYIR8aAMtZtqdH7mdJR8c/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI3MjM1/MTYtMTQ4ODQ1NjU1/MS0xNDExLmpwZWc.jpeg'),
(80, 80, 'Imagine', 'John Lennon', 11, 1, 'https://i.discogs.com/EOZNkgt9l35FbtqNH58Pv1-gQMhoJG4GSQuH6CDaPz8/rs:fit/g:sm/q:90/h:596/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUwNjg1/MjgtMTM4MzY0NDI5/MS03MzA4LmpwZWc.jpeg'),
(81, 81, 'The Clash', 'The Clash', 51, 1, 'https://i.discogs.com/vANOtQLFk6527ix0vvtaJrW8svFQZmr3LSfZOA2ZPbc/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM5MzI2/NS0xNDc0MDc5NzA0/LTQwNTkuanBlZw.jpeg'),
(82, 82, 'Harvest', 'Neil Young', 13, 1, 'https://i.discogs.com/HIG9DTdEHes_xcLLoiYh-VV0yl1SDOwUkieABv6BrUY/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNDQy/ODctMTQwMDMyNzM1/OS02OTM1LmpwZWc.jpeg'),
(83, 83, 'Axis: Bold as Love', 'The Jimi Hendrix Experience', 1, 1, 'https://i.discogs.com/27JqDA5Hi80q4j2nv4DNDl8vw3HzydECG-zjf3RH26E/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExOTcx/MTQtMTM2ODEzNTE1/MS02MzgxLmpwZWc.jpeg'),
(84, 84, 'I Never Loved a Man the Way I Love You', 'Aretha Franklin', 1, 6, 'https://i.discogs.com/Mxr68noCWksGZWMtAYicqDUxK_i04t7iaIr6IdpEihE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIwMzkx/MzUtMTM4ODc2MTEx/My01OTI2LmpwZWc.jpeg'),
(85, 85, 'Lady Soul', 'Aretha Franklin', 19, 6, 'https://i.discogs.com/g89UzLMUEtMAGySSvd60FEdu3mpnfUZwhy1_yqPe-kc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2NDMz/ODM1LTE2MDc3MTcy/NTMtODE0My5qcGVn.jpeg'),
(86, 86, 'Born in the U.S.A.', 'Bruce Springsteen', 91, 1, 'https://i.discogs.com/fltQHhVK5EGabzwAqAJupEJqZ6RpDhZ1wLZVJoQtrkE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDMy/MjctMTM2NTM3MzYw/OC0xMDEwLmpwZWc.jpeg'),
(87, 87, 'The Wall', 'Pink Floyd', 15, 1, 'https://i.discogs.com/L_VyYyJq5qz9dKeMRuRSGg3ftbl-sadWu4oaJotdn-M/rs:fit/g:sm/q:90/h:600/w:588/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIwNDE2/MTgtMTM5MDY3OTAy/NS0yMzcyLmpwZWc.jpeg'),
(88, 88, 'At Folsom Prison', 'Johnny Cash', 19, 38, 'https://i.discogs.com/s7bxt7aJyb_0Pn9EidLqsE0_Xm3wVTmBkh549r5PVJc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0ODc2/Ni0xMzk2ODE0NTI1/LTE0NzAuanBlZw.jpeg'),
(89, 89, 'Dusty in Memphis', 'Dusty Springfield', 27, 89, 'https://i.discogs.com/q8ySv4DLLc7oDuPfH-Dr25byggHmoioZXou0jETfOtY/rs:fit/g:sm/q:90/h:497/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU2NDI2/NC0xMzkzMjkyNjM3/LTkzMzYucG5n.jpeg'),
(90, 90, 'Talking Book', 'Stevie Wonder', 13, 6, 'https://i.discogs.com/IZJ_l9yMMJiEd8Cpkp47VmK4pkfBVg8elR5nXvbl-PE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3NDQ3/Ny0xMzE0NDgwMzA1/LmpwZWc.jpeg'),
(91, 91, 'Goodbye Yellow Brick Road', 'Elton John', 47, 1, 'https://i.discogs.com/vdcwLlqW7haKmKz0V2F6fsPRblumaE0K-R7_kTfdFY4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExODQ4/OTAtMTM1MTI2OTQ1/NS0xMjU0LmpwZWc.jpeg'),
(92, 92, '20 Golden Greats', 'Buddy Holly', 183, 1, 'https://i.discogs.com/YknAaIalA3ZdpgHhVtpHpmTJ76JSZhhy2S1AwpAj-io/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzODkx/NTU3LTE1NjM1Mjk5/MDctNTAxMC5qcGVn.jpeg'),
(93, 93, 'Sign \"Peace\" the Times', 'Prince', 53, 93, ' https://img.discogs.com/8NnVVkABw2o4zYDk8XtuzXi9BUY=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-15908076-1600435178-9964.jpeg.jpg'),
(94, 94, '40 Greatest Hits', 'Hank Williams', 91, 38, 'https://i.discogs.com/xrm2hdBRZSZpiy62zxuzQ5kwqsHoKWbQ2xAo-ZvimdI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1ODAz/NzEtMTQ5NzkwNjkz/OS0zNzA5LmpwZWc.jpeg'),
(95, 95, 'Bitches Brew', 'Miles Davis', 45, 12, 'https://i.discogs.com/F87qkFeQhNMAJdCEL5iipmmEk_yU2609NShVzWN5zN8/rs:fit/g:sm/q:90/h:609/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3MDA2/LTEzOTM0ODQyNDkt/MjIxNS5qcGVn.jpeg'),
(96, 96, 'Tommy', 'The Who', 27, 1, 'https://i.discogs.com/28WSEqMYsRJNRgMNP1Oj3atnMMgo0UWHIWxtTRboVCM/rs:fit/g:sm/q:90/h:443/w:450/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMzNDMw/MDQtMTMyNjYwNTY3/MC5qcGVn.jpeg'),
(97, 97, 'The Freewheelin\' Bob Dylan', 'Bob Dylan', 49, 38, 'https://i.discogs.com/TKHI29jZuGAJwT4JBTfBESWh5mk4kRSXOCKOkjSuOVM/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1OTY0/MzgtMTMwMTk5MTc0/Ny5qcGVn.jpeg'),
(98, 98, 'This Year\'s Model', 'Elvis Costello', 183, 1, 'https://i.discogs.com/l6UCmdmlRhnBKsmnQswwKBsip0-Ejrzm3bYAb4rar8A/rs:fit/g:sm/q:90/h:436/w:440/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc1NjY1/NC0xMzAxNDQ0MjA2/LmpwZWc.jpeg'),
(99, 99, 'There\'s a Riot Goin\' On', 'Sly & The Family Stone', 11, 6, 'https://i.discogs.com/RBoEE2v7WXn-zpAkyFmlZFDbDh_8q5MQppHL-aCySEo/rs:fit/g:sm/q:90/h:589/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU0MzEx/MDYtMTM5MzE4MDEw/OC00MzAxLmpwZWc.jpeg'),
(100, 100, 'Odessey and Oracle', 'The Zombies', 19, 1, 'https://i.discogs.com/DnV89hswUC7YSQrgi7fj4adF00G04dlCkWnlXFqtsu0/rs:fit/g:sm/q:90/h:601/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5MjE4/NjIyLTE2MjQyODE3/NDUtNTYzMC5qcGVn.jpeg'),
(101, 101, 'In the Wee Small Hours', 'Frank Sinatra', 201, 101, 'https://i.discogs.com/R8P0xx1q1AGZa9wyxOQgdGP9KKIrtTPCwBMPEg98PEY/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNzYw/NDctMTMzNjk1MzM2/Ni0xMjA5LmpwZWc.jpeg'),
(102, 102, 'Fresh Cream', 'Cream', 3, 9, 'https://i.discogs.com/-MFOcWZEds4m0aIBEwrdBZYVLItKac3trqugpxK5YoA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3NTE4/ODMtMTUzODEyOTkx/My0zNDkxLmpwZWc.jpeg'),
(103, 103, 'Giant Steps', 'John Coltrane', 23, 12, 'https://i.discogs.com/EZQGktMgjtDxrsili8_how-OhQwoTR1Xocoj0YIF3vg/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM1MDM0/NDktMTQ1NDg3Njc5/Mi0zODAxLmpwZWc.jpeg'),
(104, 104, 'Sweet Baby James', 'James Taylor', 45, 1, 'https://i.discogs.com/61AgCHxB1Cha0r_nl1DSeeOXcMkRYvKY_5PmUgT58Dc/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1MDg0/NTAxLTE1ODY0ODU5/NTMtMTA5OC5qcGVn.jpeg'),
(105, 105, 'Modern Sounds in Country and Western Music', 'Ray Charles', 209, 105, 'https://i.discogs.com/otoD7zsVpB3s_A_VxnRLSn7-EELcTCoHe-H4IKs44OU/rs:fit/g:sm/q:90/h:546/w:546/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUwMjQ4/NDYtMTM4MjQ1MDQy/OC00MzMwLmpwZWc.jpeg'),
(106, 106, 'Rocket to Russia', 'Ramones', 51, 1, 'https://i.discogs.com/z-6azZq5JUpPyjxXaj8KTuLLsZfSaTJN2pJSVqn7TU8/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyOTIx/MDEtMTIwNjk4NTU3/Ny5qcGVn.jpeg'),
(107, 107, 'Portrait of a Legend 1951-1964', 'Sam Cooke', 213, 107, 'https://i.discogs.com/Loqacsy4rtBFdm4EU18vqrWyXbCXJNb3REd-7y1PdDc/rs:fit/g:sm/q:90/h:515/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgwMzc1/NTEtMTQ1MzkyOTA3/MS0yODc4LmpwZWc.jpeg'),
(108, 108, 'Hunky Dory', 'David Bowie', 11, 1, 'https://i.discogs.com/nuItKP4RJTtBdTKN7N-moAhKgcy_uBflAp2-Hxrx1DA/rs:fit/g:sm/q:90/h:400/w:390/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQyMjky/MS0xMzUyODQ4NTg0/LTQ1NDQuanBlZw.jpeg'),
(109, 109, 'Aftermath', 'The Rolling Stones', 3, 1, 'https://i.discogs.com/gF13jF0Casf9bJslF3m_z5ZmAzKHKmG65xAQYHUNCmk/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU2ODY1/ODgtMTQxODU3NzYy/Ny01MDIxLmpwZWc.jpeg'),
(110, 110, 'Loaded', 'The Velvet Underground', 45, 1, 'https://i.discogs.com/szbsQqYiNmdpWn-q4oUFbKNmdZHiSv6XLB3XRUAINHE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc2Nzcy/NzctMTQ0NjUxNDY2/NC03NDEwLmpwZWc.jpeg'),
(111, 111, 'The Bends', 'Radiohead', 221, 1, 'https://i.discogs.com/J1U1U5bKIK9U7pq5pdDZtXeXY0A834Qwt3AY6EBhyAs/rs:fit/g:sm/q:90/h:505/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc2MDA3/Ny0xNDk0NDMxMzUx/LTk3NjQuanBlZw.jpeg'),
(112, 112, 'If You Can Believe Your Eyes and Ears', 'The Mamas and the Papas', 3, 1, 'https://i.discogs.com/UpkO16--YOrp399jasyZvTx2neckR2y2nRTXd839Bgs/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMzY4/MDE0LTE0OTYxMDA0/MjgtMzg5OC5qcGVn.jpeg'),
(113, 113, 'Court and Spark', 'Joni Mitchell', 225, 1, 'https://i.discogs.com/Ss48s_hGw2i5XyrVDtIHNz-FeXE7yMyMmqUuASvoQhE/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg5MjQx/Ny0xNTE5OTU1ODc2/LTg2MzEuanBlZw.jpeg'),
(114, 114, 'Disraeli Gears', 'Cream', 1, 1, 'https://i.discogs.com/-k9A4-SLIHr0PvTOPQtvT20Kxd-C3HRHpm6Ek6Mv2BE/rs:fit/g:sm/q:90/h:756/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY3MTA2/MzItMTQ0MzQwNTkw/OS00MjE1LmpwZWc.jpeg'),
(115, 115, 'The Who Sell Out', 'The Who', 1, 1, 'https://i.discogs.com/ZNPc7e1tPmuvB6kmUmI4Ryi4AK-u9u2iYnrkxysUBIc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0ODY0/ODgtMTQyNTIyNTYx/Ni03NDc0LmpwZWc.jpeg'),
(116, 116, 'Out of Our Heads', 'The Rolling Stones', 7, 1, 'https://i.discogs.com/9KFVylfsgDl8V5WhcMHJcDlfk4DMruQT5BZe57xUJ70/rs:fit/g:sm/q:90/h:577/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM0NDAy/MTMtMTMzMDQ2MDIz/Ny5qcGVn.jpeg'),
(117, 117, 'Layla and Other Assorted Love Songs', 'Derek and the Dominos', 45, 1, 'https://i.discogs.com/1pSv6AxXfSAqtTku2rmSgC45fscZtfNwXT1hhu48v9o/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMDY5/OTctMTM3Mzk3MTQz/My04OTgyLmpwZWc.jpeg'),
(118, 118, 'Late Registration', 'Kanye West', 235, 48, 'https://i.discogs.com/VaGAJ7bFhiP1JY5nrQDFGGw2mmbU7OH0xm_j9msSaNM/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5NDE2/OS0xNTAxMjY5NDM1/LTMxNzIuanBlZw.jpeg'),
(119, 119, 'At Last!', 'Etta James', 237, 119, 'https://i.discogs.com/mREvVIG13Zw5QcpzPgocIM7LnKQrGiA3tK8MD63CFv4/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3MDkw/NzE1LTE2MTE1MzQ2/NzYtMzM1MC5qcGVn.jpeg'),
(120, 120, 'Sweetheart of the Rodeo', 'The Byrds', 19, 1, 'https://i.discogs.com/KLv0qI0M05mcmQjcRTlmE0_SX6BpdtC3X2cjtZQpUeI/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1NDMy/MjItMTQ1NDI0MDQ2/OC04MzEzLmpwZWc.jpeg'),
(121, 121, 'Stand!', 'Sly & The Family Stone', 27, 6, 'https://i.discogs.com/-S4K02Wvt9phukOXnDW-lcvwA98Y5jZvIUXs0tmvmFQ/rs:fit/g:sm/q:90/h:590/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzOTYw/MjItMTUyNjYyMTEy/Ni0yMjQwLmpwZWc.jpeg'),
(122, 122, 'The Harder They Come', 'Various Artists', 13, 122, ' https://img.discogs.com/5LzXZ9cXzbqYZMMEENvv8sJ56LA=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-10215739-1493545341-3569.jpeg.jpg'),
(123, 123, 'Raising Hell', 'Run D.M.C.', 141, 48, 'https://i.discogs.com/Opbp1jHazgbWX17lKZWGitQGO9g4UBQ3l543HnbntAw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIzMDIw/OS0xMzYzMDUwNjgx/LTUxNDMuanBlZw.jpeg'),
(124, 124, 'Moby Grape', 'Moby Grape', 1, 1, 'https://i.discogs.com/ue8DUY70x8p_tQgpk4-2TuRTBxwT0RhBXKpB7T21-0o/rs:fit/g:sm/q:90/h:596/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjkw/MjctMTM0ODE3MjIx/NC05MDI0LmpwZWc.jpeg'),
(125, 125, 'Pearl', 'Janis Joplin', 11, 9, 'https://i.discogs.com/R-CwmXzYXL2SxxADfYuSOvlccWkUfgHt1zJW1FCMV4Y/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg2OTA3/Ny0xMzA3ODgyOTc5/LmpwZWc.jpeg'),
(126, 126, 'Catch a Fire', 'The Wailers', 47, 46, 'https://i.discogs.com/8tMF0SfOzl1MvpwZCrIbXPdU-C2COBJHXu920GHHPig/rs:fit/g:sm/q:90/h:585/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1NDE5/NjMtMTM4ODE5MDY2/OC00MTI0LmpwZWc.jpeg'),
(127, 127, 'Younger Than Yesterday', 'The Byrds', 1, 1, ' https://img.discogs.com/88fnHKJAjmIGVHS9fy89AShQAFA=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-1562820-1235504986.jpeg.jpg'),
(128, 128, 'Raw Power', 'Iggy and The Stooges', 47, 1, ' https://img.discogs.com/5NvCvAX0jbZgTSFEd-2kW3zC5pk=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-489717-1268136694.jpeg.jpg'),
(129, 129, 'Remain in Light', 'Talking Heads', 153, 63, 'https://i.discogs.com/rHJU3UXR0FAkeUkU4vZpdpF3XwsLoJeitBnQVCxjRQQ/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNjQ5/MS0xNTQxOTQ1NDcy/LTQ3OTUuanBlZw.jpeg'),
(130, 130, 'Marquee Moon', 'Television', 51, 1, 'https://i.discogs.com/CRbZRWmZLpLIo0wKdsLJArcMd1NvHE8Qyyd1x22roSk/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg3NjUz/MDQtMTQ2ODI5Mzk3/NS0zMTc0LmpwZWc.jpeg'),
(131, 131, 'Paranoid', 'Black Sabbath', 45, 1, 'https://i.discogs.com/EgpgY9lBY-FapW910JoekKczug51XuNmBnq4C8Ei3b4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyODE2/MTUtMTM1Njc5MTA0/NC01NjgwLmpwZWc.jpeg'),
(132, 132, 'Saturday Night Fever: The Original Movie Sound Track', 'Various Artists', 51, 132, ' https://img.discogs.com/Y43IgsBfR5jkDM5msduCUVIr-5M=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-9532890-1588926154-9796.jpeg.jpg'),
(133, 133, 'The Wild, the Innocent & the E Street Shuffle', 'Bruce Springsteen', 47, 1, 'https://i.discogs.com/EdpXjr09T_DN-4ec9eNG1P-zcsw-_SUnh34fAGe0FP8/rs:fit/g:sm/q:90/h:620/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1ODIw/MTQtMTQ5ODAzMTE4/Ni0zODc4LmpwZWc.jpeg'),
(134, 134, 'Ready to Die', 'The Notorious B.I.G.', 267, 48, ' https://img.discogs.com/U-Au3aTbXnfVxhB2cKtqzeJVtFs=/150x150/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/A-65049-1476549718-2125.jpeg.jpg'),
(135, 135, 'Slanted and Enchanted', 'Pavement', 269, 1, 'https://i.discogs.com/Ug-UoylqoC4Y0urCGu5qen87xviimJT7Ud8BgtXKvrA/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTkyMTIy/My0xMzQ5MTM0MTgz/LTIzMzMuanBlZw.jpeg'),
(136, 136, 'Greatest Hits', 'Elton John', 225, 1, 'https://i.discogs.com/5DR9qUN3ykcB4jnpxfV0inXsRY7b3fWN2hCWRFg0ACU/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgzOTgw/ODQtMTQ2MDgzMzYw/NC05NDYxLmpwZWc.jpeg'),
(137, 137, 'Tim', 'The Replacements', 273, 1, 'https://i.discogs.com/PAooMCLg5Zmlx7HbGUT2vJWcz8wqkIbrzedl34vhHXg/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk5NTgz/OS0xMzc4MjY2NzEw/LTcwMTkuanBlZw.jpeg'),
(138, 138, 'The Chronic', 'Dr. Dre', 269, 48, 'https://i.discogs.com/To7asf1sEZLjyG9HK-TGxDiCgfC49mQM0R5B6Y_kEyQ/rs:fit/g:sm/q:90/h:589/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyNjA1/My0xNjIxNTI1OTMz/LTE0NjAuanBlZw.jpeg'),
(139, 139, 'Rejuvenation', 'The Meters', 225, 6, 'https://i.discogs.com/0PQOdEC4s5kFGKf21lGosOz3AAbV-Rz_5iP95JU_pRw/rs:fit/g:sm/q:90/h:600/w:596/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQzMTkz/OC0xMjkyNDgzMzY4/LmpwZWc.jpeg'),
(140, 140, 'Parallel Lines', 'Blondie', 183, 63, 'https://i.discogs.com/YrPi-9qDsleOuFgWWjciKH9LzPdvcpVcejlXMhUbO04/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1ODAx/OTktMTMyNzY0OTA2/NS5qcGVn.jpeg'),
(141, 141, 'Live at the Regal', 'B.B. King', 7, 22, 'https://i.discogs.com/t7TdRqc9sJ-TloDCEzamKgrQHEmLOgRZ2wwhmNjcmB4/rs:fit/g:sm/q:90/h:601/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NzE2/NTc0LTE1ODAyMjQ0/OTAtMjc3MS5qcGVn.jpeg'),
(142, 142, 'A Christmas Gift for You From Phil Spector', 'Phil Spector', 49, 58, 'https://i.discogs.com/25x7f_T9qDXiujNQaHvpG_eyXegmURFgMRzt-NieUxo/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNjI1/MDktMTUxNDAxMjg1/NC0xNjc5LmpwZWc.jpeg'),
(143, 143, 'Gris-Gris', 'Dr. John, the Night Tripper', 19, 143, 'https://i.discogs.com/hxu5Woe9IADFURNPWd2fo9X-E6sSfaAdr3uLWWP0oWM/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQyMzkz/Ny0xNTczMDg3NDk0/LTIyMzIuanBlZw.jpeg'),
(144, 144, 'Straight Outta Compton', 'N.W.A', 95, 48, 'https://i.discogs.com/la5PcPMocapNXE8wukC0n_2m3HEKR3a8D9SGpoy3riY/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMjky/NS0xMzM2MTEwMjQy/LmpwZWc.jpeg'),
(145, 145, 'Aja', 'Steely Dan', 51, 145, 'https://i.discogs.com/_BrClz4hQcKJKTCnuIsbfraC8h3pEbW01LdHCh2H978/rs:fit/g:sm/q:90/h:420/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMTM0/NDcxLTE0OTIyMjY3/MDEtMjEzOS5qcGVn.jpeg'),
(146, 146, 'Surrealistic Pillow', 'Jefferson Airplane', 1, 1, 'https://i.discogs.com/bMiyR6MaF00c1LD8m68UFMBNmc_12mktBalEXVSO-Uo/rs:fit/g:sm/q:90/h:583/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI3NTM2/MzktMTU0NTMyMzE2/NS04MTc0LmpwZWc.jpeg'),
(147, 147, 'Deja vu', 'Crosby, Stills, Nash & Young', 45, 1, 'https://i.discogs.com/uJWFjtkWet6BGK6XIxacO6Hfh8qHYiAdPQ06WZtmsDw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMzIx/OTUtMTU5ODkwNDE0/NC0zNzk0LmpwZWc.jpeg'),
(148, 148, 'Houses of the Holy', 'Led Zeppelin', 47, 1, 'https://i.discogs.com/BLWVi0t0llSqJvIybHrSvPql-RfORCmZU1klNfV0si8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1NTA3/Ny0xNTg4ODgwNzg4/LTIyMjYuanBlZw.jpeg'),
(149, 149, 'Santana', 'Santana', 27, 149, 'https://i.discogs.com/Yibk5HMKHoVK2XLYP-6ta8_-_R17JIEJKt5P7HIblUc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NzIy/MjYtMTIyMjI5NzYw/Mi5qcGVn.jpeg'),
(150, 150, 'Darkness on the Edge of Town', 'Bruce Springsteen', 183, 1, 'https://i.discogs.com/KZ_Tln68Qq3Otq7cowf94ohlg55bODrLUGtEagbZQ6c/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMwMTIz/NzEtMTMxMTY3Nzk2/MS5qcGVn.jpeg'),
(151, 151, 'Funeral', 'Arcade Fire', 301, 1, 'https://i.discogs.com/rcc6N5KItuTqyLkaOjGjsyvb02miEjmB21AJxZz061s/rs:fit/g:sm/q:90/h:543/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQzMjkz/Mi0xNDI3MDEyMDk1/LTE4MDguanBlZw.jpeg'),
(152, 152, 'The B 52\'s / Play Loud', 'The B 52\'s', 15, 152, ' https://img.discogs.com/qV6yatboB9WW_p0m1fmZGaY08pw=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-2540241-1420568536-4818.jpeg.jpg'),
(153, 153, 'The Low End Theory', 'A Tribe Called Quest', 33, 48, 'https://i.discogs.com/W1ZNmsNGf1q0PJel3zSH9eO75cQkE_tjD91drIK5U94/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg3Mjkx/LTE1NTAwOTY4MDkt/ODQwOS5qcGVn.jpeg'),
(154, 154, 'Moanin\' in the Moonlight', 'Howlin\' Wolf', 307, 22, 'https://i.discogs.com/3iC7QacfgBnTyhMAheDXh6KdE1fSbDxZrm5z2urnBHA/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY0NjEx/Mi0xNDgyNDc2OTY0/LTk4OTQuanBlZw.jpeg'),
(155, 155, 'Pretenders', 'Pretenders', 153, 1, 'https://i.discogs.com/Ym25Tx196D6v9bIX_yPnTV3QAgKNriWsMUgp-RtTd78/rs:fit/g:sm/q:90/h:920/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYxODU0/MjUtMTQxMzE5ODIz/OS05Njg5LmpwZWc.jpeg'),
(156, 156, 'Paul\'s Boutique', 'Beastie Boys', 311, 156, 'https://i.discogs.com/Jej9dZnefTrbYpCbwmCZWsfwtYpAWrPJPw-yemICfXs/rs:fit/g:sm/q:90/h:550/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0MDU4/MzEtMTQyNDc5MjE3/Mi04OTgyLmpwZWc.jpeg'),
(157, 157, 'Closer', 'Joy Division', 153, 1, 'https://i.discogs.com/8po40WH3m-4TGoKrTQlj2QuT3_1hm7wCQQQkRLMJQUs/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgxNjky/LTE1Mzg5OTI1MzEt/NzU1MS5qcGVn.jpeg'),
(158, 158, 'Captain Fantastic and the Brown Dirt Cowboy', 'Elton John', 31, 1, 'https://i.discogs.com/e4P4RKVfYcg4ACVhuTZzRiRJxx78n91ZKVL_VJ-b23g/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgxMTAx/MC0xMTYxMzY2Mzk1/LmpwZWc.jpeg'),
(159, 159, 'Alive!', 'KISS', 31, 1, 'https://i.discogs.com/0d2Fd98clmWgt92SBRblWsCu_juJojr0171b5PRMRIc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1MzAw/MjMtMTUwMDg1MDIx/OC01NTczLmpwZWc.jpeg'),
(160, 160, 'Electric Warrior', 'T. Rex', 11, 1, 'https://i.discogs.com/HLNwskTUp1FuaxEQLcWFjcfVOkzcjFliCKvX3XgOXa0/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1MTE4/My0xMzg0MDgwNjU2/LTI2MDAuanBlZw.jpeg'),
(161, 161, 'The Dock of the Bay', 'Otis Redding', 19, 6, 'https://i.discogs.com/8rI5OYhodgwFtkq9gS0hvTqhOtZreEj7Z5kEyRoaNKA/rs:fit/g:sm/q:90/h:530/w:529/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2NTkw/NDctMTI5NTM1OTg2/Ny5qcGVn.jpeg'),
(162, 162, 'OK Computer', 'Radiohead', 323, 63, 'https://i.discogs.com/Mvzwd9UTBHocAgAi8-862TpCiwP7GghfQwbZgroX_iI/rs:fit/g:sm/q:90/h:619/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg2MTc1/NTgtMTQ2NTIzNTI4/MC00NzMwLmpwZWc.jpeg'),
(163, 163, '1999', 'Prince', 39, 20, 'https://i.discogs.com/Qi9SRtnTmhglvdXDRgqb_W4KPEABDOxYKCbYpD53Li4/rs:fit/g:sm/q:90/h:581/w:594/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU3NDY3/Mi0xMjU3MDYzOTQ0/LmpwZWc.jpeg'),
(164, 164, 'The Very Best of Linda Ronstadt', 'Linda Ronstadt', 327, 5, 'https://i.discogs.com/5HxVncP4rpQGSVhFQd3n8yJIRjnKsMea22nLcNiUM-Q/rs:fit/g:sm/q:90/h:526/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyMTcy/NzktMTI3MDQ1OTY3/Ny5qcGVn.jpeg'),
(165, 165, 'Let\'s Get It On', 'Marvin Gaye', 47, 6, 'https://i.discogs.com/irMtHqitN4J-eCI859MA-31K6mJmDoJzDiHfTdY7684/rs:fit/g:sm/q:90/h:606/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMwNTQz/OC0xNTUwNTg0NDY5/LTg0MTkuanBlZw.jpeg'),
(166, 166, 'Imperial Bedroom', 'Elvis Costello & The Attractions', 39, 1, 'https://i.discogs.com/vW-_pD68TOriY-E0U3QG_DBc-gMKyWD-ttBhOZSIs3w/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMzI5/ODAtMTQ1ODgxOTM0/MC02Mzc4LmpwZWc.jpeg'),
(167, 167, 'Master of Puppets', 'Metallica', 141, 1, 'https://i.discogs.com/elvpf0Aid3lCWHrHXOMvrOj0XfpvR1KFiHALk7pP76Y/rs:fit/g:sm/q:90/h:605/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMDQ3/ODgtMTQ3NDgwOTYx/My0yMzE5LmpwZWc.jpeg'),
(168, 168, 'My Aim Is True', 'Elvis Costello', 51, 1, 'https://i.discogs.com/Akx1u0oE-R7rmHeoFDqSK24pSz8x0kEw8z_EgaH_JB0/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ3MTQy/Mi0xNTkxNDM2Mjk3/LTQyMzguanBlZw.jpeg'),
(169, 169, 'Exodus', 'Bob Marley & The Wailers', 51, 46, 'https://i.discogs.com/S-fSR3ZXexvuKivLdfubk_FmhqI-H9I7jNKEw37v0ek/rs:fit/g:sm/q:90/h:609/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc2NjA5/NzgtMTQ0NjE3MTU3/NC04Mjg1LmpwZWc.jpeg'),
(170, 170, 'Live at Leeds', 'The Who', 45, 1, 'https://i.discogs.com/YhC6CP9PUbmKyanaQMAL3Be7Rbv4z4AEQ7ZDdPLIm-Q/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1MDE3/MTYtMTM2NjY2OTU4/Ni0yMjY3LmpwZWc.jpeg'),
(171, 171, 'The Notorious Byrd Brothers', 'The Byrds', 19, 1, 'https://i.discogs.com/H1YBTV6LFus8z2Ht57hco41s8UhV7V3oMJUdV7ZDZh4/rs:fit/g:sm/q:90/h:604/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgzMzgz/NjAtMTQ1OTY5OTQy/NC00ODc2LmpwZWc.jpeg'),
(172, 172, 'Every Picture Tells a Story', 'Rod Stewart', 11, 1, 'https://i.discogs.com/VJHnOFcrGNPtteLUlDhRlp2UBLW6hQMjtrJWp3xxRFk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg2MDY5/MzUtMTQ2NTIzODQy/Ny00NDk0LmpwZWc.jpeg'),
(173, 173, 'Something/Anything?', 'Todd Rundgren', 13, 1, 'https://i.discogs.com/OB8eOa4tFtE1dyF-YYbzSujVHqDd5nc7-LTlCzsTLwk/rs:fit/g:sm/q:90/h:200/w:240/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU1ODkz/OTQtMTM5NzM5MDU0/MS0xMjkxLnBuZw.jpeg'),
(174, 174, 'Desire', 'Bob Dylan', 21, 1, 'https://i.discogs.com/wGTDCXnyTtkcS45YaVZMCaL5Q8DjyJ41LwcIo8KDJx4/rs:fit/g:sm/q:90/h:608/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNjcy/NDMxLTE1ODE4MTQz/ODEtNzUxNy5qcGVn.jpeg'),
(175, 175, 'Close to You', 'Carpenters', 45, 5, 'https://i.discogs.com/RyxzjrTEKrtWjQStecyvdnTCTCMBM9_lNFZPzYw20Sc/rs:fit/g:sm/q:90/h:600/w:598/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNzM2/MTQtMTIyMjY5MTA5/MC5qcGVn.jpeg'),
(176, 176, 'Rocks', 'Aerosmith', 21, 1, 'https://i.discogs.com/5CwSh2-WOdzPr5Hrfw4HOGD_8C1JlgXX-eoWelw4m_A/rs:fit/g:sm/q:90/h:606/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4MDQ4/NC0xNTU3NjAzMzE3/LTU4MDMuanBlZw.jpeg'),
(177, 177, 'One Nation Under a Groove', 'Funkadelic', 183, 6, ' https://img.discogs.com/LuSONPSvH-n54G0dDwutsrGLMmE=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-475153-1174977519.jpeg.jpg'),
(178, 178, 'The Anthology: 1961-1977', 'Curtis Mayfield and The Impressions', 269, 6, ' https://img.discogs.com/U4xmMN3Uu7G3QbHTpUjoCLSZ9x0=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-2310634-1284951918.jpeg.jpg'),
(179, 179, 'The Definitive Collection', 'ABBA', 75, 179, 'https://i.discogs.com/vvXC8zy23wlfVlPA6OeyeBJY-vbvhQMSEUc842Nfj94/rs:fit/g:sm/q:90/h:700/w:493/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0ODg0/OC0xMzE5MDkzOTU4/LmpwZWc.jpeg'),
(180, 180, 'The Rolling Stones, Now!', 'The Rolling Stones', 7, 180, 'https://i.discogs.com/8LjGFDPUG-Wky4-MtyRjoNoewgsuYVgovpf4U6xhhx8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzODM3/NzAtMTMxMzA5OTYy/Mi5qcGVn.jpeg'),
(181, 181, 'Natty Dread', 'Bob Marley & The Wailers', 225, 46, 'https://i.discogs.com/IF9JDZoHGbQpSvJr4IIS1oB_LKNQt1oFMVHB_uPQFEw/rs:fit/g:sm/q:90/h:475/w:480/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU1Nzgz/Ni0xMTQxNzUyNTgy/LmpwZWc.jpeg'),
(182, 182, 'Fleetwood Mac', 'Fleetwood Mac', 31, 5, 'https://i.discogs.com/kz1hvwcIMWbjF9ejbOVoFiq1xlLlBbfgOpou0gmUaeE/rs:fit/g:sm/q:90/h:600/w:590/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyNzgw/OTgtMTI3NDAxNzUy/NC5qcGVn.jpeg'),
(183, 183, 'Red Headed Stranger', 'Willie Nelson', 31, 38, 'https://i.discogs.com/9kfepGaOIZWLnAFLj85nxxRk4bwaUBcuI5-HmJPZnS8/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1Njgz/NjQtMTIyOTA1MzYy/Ni5qcGVn.jpeg'),
(184, 184, 'The Immaculate Collection', 'Madonna', 43, 179, 'https://i.discogs.com/_M8-An8swnAQ1mrpBkSEGxZXTUOoghNlL6DpHhkMfHM/rs:fit/g:sm/q:90/h:260/w:144/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUyMTM1/NS0xMTI3MDc5MTM0/LmpwZWc.jpeg'),
(185, 185, 'The Stooges', 'The Stooges', 27, 1, 'https://i.discogs.com/7MvpAoPyreoka0g2PPlrynmk1TmZ4qynjqmfFl6SysY/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQyODI0/ODItMTM3NTkxMzA4/Mi0xNzk2LmpwZWc.jpeg'),
(186, 186, 'Fresh', 'Sly & The Family Stone', 47, 6, 'https://i.discogs.com/9v-5gmvyD-n0BDsRkE9ICI19uUIV23gBkQLvpQw4sxE/rs:fit/g:sm/q:90/h:601/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU1MDk2/NC0xNjA5ODY0MDMz/LTQwMjcuanBlZw.jpeg'),
(187, 187, 'So', 'Peter Gabriel', 141, 187, 'https://i.discogs.com/IZ3_zj2EwVyh4KugEmW07i67zDcm8xj_JRVh8mTEktU/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3OTAz/Ni0xMjc1NjMyMzA5/LmpwZWc.jpeg'),
(188, 188, 'Buffalo Springfield Again', 'Buffalo Springfield', 1, 5, 'https://i.discogs.com/AybCiz19ckU4eDol6ihpXT5Oc_M-q0BNym60h1cHghk/rs:fit/g:sm/q:90/h:607/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1MzA5/NDEtMTMyMDY1MTY4/OS5qcGVn.jpeg'),
(189, 189, 'Happy Trails', 'Quicksilver Messenger Service', 27, 1, 'https://i.discogs.com/CXXwljPulCRqfi4eCox-xYZ07CbE6cEx15kfp9jwHb0/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMwNDM0/OTgtMTMxNjg4OTEx/Ni5qcGVn.jpeg'),
(190, 190, 'From Elvis in Memphis', 'Elvis Presley', 27, 190, 'https://i.discogs.com/6gyIOe8q2OWRBaw04YVY0TpFIjtjRP2h_zbVe2vQ-IQ/rs:fit/g:sm/q:90/h:531/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk2Mjk4/MDItMTQ4Mzg5NjM0/NS05Mjk0LmpwZWc.jpeg'),
(191, 191, 'Fun House', 'The Stooges', 45, 1, 'https://i.discogs.com/s6GmD4ktona26kcVajgVY7kuswi0WAvs3bk0-pp0Q0s/rs:fit/g:sm/q:90/h:600/w:598/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNTI1/NjItMTM5NTA2OTgx/Mi0zNDY5LmpwZWc.jpeg'),
(192, 192, 'The Gilded Palace of Sin', 'The Flying Burrito Brothers', 27, 31, ' https://img.discogs.com/4BHn6pe21XuTht_6kbGIu_lMDhg=/150x150/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/A-285133-1121852993.jpg.jpg'),
(193, 193, 'Dookie', 'Green Day', 267, 1, 'https://i.discogs.com/tcnUFSPIsEFJeqFLugnAH6BOU4yAmcC8NpSdwmRRlDU/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI5NzI5/OTItMTQzNjUxNzQ2/NS0yMjE2LmpwZWc.jpeg'),
(194, 194, 'Transformer', 'Lou Reed', 13, 1, 'https://i.discogs.com/cMESLEmHVssCcIDORCGbJ1rG_7NaZLSxXyFaZBodNCU/rs:fit/g:sm/q:90/h:601/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTcyNzM2/My0xNDY1MzIzMjYy/LTYzMzAuanBlZw.jpeg'),
(195, 195, 'Blues Breakers With Eric Clapton (\"The Beano Album\")', 'John Mayall & The Bluesbreakers', 3, 9, ' https://img.discogs.com/o-8qaKly9mbomylL_S3THO99Eb4=/150x150/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/A-291340-1627134214-4152.jpeg.jpg'),
(196, 196, 'Nuggets: Original Artyfacts From the First Psychedelic Era, 1965-1968', 'Various Artists', 391, 1, ' https://img.discogs.com/kHxcMWY2-5eUEcOQR8a18yPduEg=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-13732841-1559982012-2453.jpeg.jpg'),
(197, 197, 'Murmur', 'R.E.M.', 393, 1, 'https://i.discogs.com/kiKy1aGot3DekCddrz-n3KMG5f0Sv18gEEirrqiPsxE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxNDEy/Mi0xNDU5OTc1Nzc0/LTE0MTEuanBlZw.jpeg'),
(198, 198, 'The Best of Little Walter', 'Little Walter', 1, 22, 'https://i.discogs.com/XyGOg_34F-wVo6gs1ovqSV0GZBSSeQK7slY516XRzgk/rs:fit/g:sm/q:90/h:407/w:412/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1MTY1/MzktMTM2NzEwMjY5/My05OTUzLmpwZWc.jpeg'),
(199, 199, 'Is This It', 'The Strokes', 75, 1, 'https://i.discogs.com/8IYl0b_BDjZMzCI8ijbJvNA3KqJgmshKiXL93jOQsaM/rs:fit/g:sm/q:90/h:596/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk3MzQ2/MDItMTQ4NTU0MDUw/Mi0zNjQzLmpwZWc.jpeg'),
(200, 200, 'Highway to Hell', 'AC/DC', 15, 1, 'https://i.discogs.com/Xygopnpylh74mw3AZHA74GqmV_H1C_nU62F-olBy2O0/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4MzYz/NDktMTI0Njc4NDIx/MS5qcGVn.jpeg'),
(201, 201, 'The Downward Spiral', 'Nine Inch Nails', 267, 63, 'https://i.discogs.com/3ojla1eXxvtZKHkXureOswYOv-apRsSi-Ys73dodmtc/rs:fit/g:sm/q:90/h:536/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg4NTE4/NjUtMTQ3MDEwOTA3/Ny04MjE5LmpwZWc.jpeg'),
(202, 202, 'Parsley, Sage, Rosemary and Thyme', 'Simon & Garfunkel', 3, 202, 'https://i.discogs.com/cWDf0cAZ7xC6z73YqPuFeNQCDrPYCoNOveSbimdq_zo/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQwODkx/MzItMTUyMjUyNDIx/MC03NzUwLmpwZWc.jpeg'),
(203, 203, 'Bad', 'Michael Jackson', 53, 20, 'https://i.discogs.com/QkulQMkrvy-2y0YO7znv8rWM3Zm67Wt1SebO0zm5vyY/rs:fit/g:sm/q:90/h:522/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTczNzkx/MC0xNDMxOTc0ODI2/LTU4OTguanBlZw.jpeg'),
(204, 204, 'Modern Times', 'Bob Dylan', 407, 1, 'https://i.discogs.com/OXxcM8QauxxtZmKRrG3MZ0AgpdO83i4YpqNOKTArjCU/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc2OTUz/MC0xNTMwNTIzMDE0/LTYxODQuanBlZw.jpeg'),
(205, 205, 'Wheels of Fire', 'Cream', 19, 9, 'https://i.discogs.com/Lqhi3ndC_m7jRiQwg9QJloGP4eqbv9ZtlcK9-d7OUio/rs:fit/g:sm/q:90/h:601/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI5MDY4/OTItMTMwNjY3NzM4/My5qcGVn.jpeg'),
(206, 206, 'Dirty Mind', 'Prince', 153, 6, 'https://i.discogs.com/fDsNBqT0yVgH02SuzCiN9ZpMx89xAXBNbkK8MxVTx_s/rs:fit/g:sm/q:90/h:602/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3MzA5/MDUtMTU1OTg0OTY5/Mi05MTcwLmpwZWc.jpeg'),
(207, 207, 'Abraxas', 'Santana', 45, 207, 'https://i.discogs.com/0H9ECTW2Ohozz4OYnD_sqxlj3nm7Twp6d_z7Cv3zwRw/rs:fit/g:sm/q:90/h:610/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY1MzQw/NDYtMTYxNjI2MTM0/NS01NDE0LmpwZWc.jpeg'),
(208, 208, 'Tea for the Tillerman', 'Cat Stevens', 45, 208, 'https://i.discogs.com/EsMTrQspixxIDWhgbXJlkjGA_jnaulyPA575aRSzLSE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1OTM2/MTA5LTE2MDI1MTcy/NDUtNTE2MS5qcGVn.jpeg');
INSERT INTO `album` (`album_id`, `rank`, `album_name`, `artist`, `year_id`, `genre_id`, `artwork_url`) VALUES
(209, 209, 'Ten', 'Pearl Jam', 33, 1, 'https://i.discogs.com/bAeddkpWbAQ8-YNTMUx18RC70hD69IywQ1v68_QnqoQ/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM2NzY2/NC0xNDA4OTA3MDU0/LTcyMDQuanBlZw.jpeg'),
(210, 210, 'Everybody Knows This Is Nowhere', 'Neil Young & Crazy Horse', 27, 1, 'https://i.discogs.com/RWyoqJRdnVeTYE0i5tnenUXU_8noUGKA-LB-kta1MVs/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMzYx/OTAtMTU4MDY2NDA2/OC05MzY5LmpwZWc.jpeg'),
(211, 211, 'Wish You Were Here', 'Pink Floyd', 31, 1, 'https://i.discogs.com/dxeA-L9GA62asKKRC_5fUhgmVt1lkEjAI9Pis5yhV9U/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ2MzU5/Ny0xNTYwMzY5NTM2/LTgzMDIuanBlZw.jpeg'),
(212, 212, 'Crooked Rain Crooked Rain', 'Pavement', 267, 1, 'https://i.discogs.com/yZoiH3DMdmTv-l5P3Y0sAhdfV0Dh5saWkfaTRuJNaZc/rs:fit/g:sm/q:90/h:849/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5NTA2/MjQ3LTE2Mzc2ODY1/OTEtMTAzNy5qcGVn.jpeg'),
(213, 213, 'Tattoo You', 'The Rolling Stones', 425, 1, 'https://i.discogs.com/3zkDCYwCujZjelhncPh8W9lO0keIXm37ywqqtTrrxb8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5MzE5/MDktMTU1OTIxOTU4/NS0xODkwLmpwZWc.jpeg'),
(214, 214, 'Proud Mary: The Best of Ike and Tina Turner', 'Ike & Tina Turner', 33, 6, 'https://i.discogs.com/NP1zrrooB2zIgxycfSgRK3tf-AqLed2CUtXAg9fr1pM/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMzg1/NTc1LTE1MTU0Mjk3/NDYtMjc0Mi5qcGVn.jpeg'),
(215, 215, 'New York Dolls', 'New York Dolls', 47, 1, 'https://i.discogs.com/Qd75vlnDCJc4J-GurLhtXKgIhJ4vykGYxcOx-ZowNKo/rs:fit/g:sm/q:90/h:575/w:575/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5MjM5/MzYtMTM5Mjc3MjE2/OC05NTE1LmpwZWc.jpeg'),
(216, 216, 'Bo Diddley / Go Bo Diddley', 'Bo Diddley', 141, 9, 'https://i.discogs.com/9ZlEr0MpbU6PTKrQKVXj1qS_ZhxL2eGnRBXN7uIoGQM/rs:fit/g:sm/q:90/h:600/w:591/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ3OTYz/MDMtMTM4MTY2NDgy/MS00MzA4LmpwZWc.jpeg'),
(217, 217, 'Two Steps From the Blues', 'Bobby \"Blue\" Bland', 433, 119, ' https://img.discogs.com/Ux6keV8jv_BA7Izj4Ltr9p6mWi0=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-2328674-1590266247-1152.jpeg.jpg'),
(218, 218, 'The Queen Is Dead', 'The Smiths', 141, 5, 'https://i.discogs.com/LoQ1QOM-R_qnqeWhLZks6sGc5INsMsIHHBDGnIJKLEc/rs:fit/g:sm/q:90/h:588/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk2OTA3/MjktMTQ4NDgzMjA3/MS0xMDg1LmpwZWc.jpeg'),
(219, 219, 'Licensed to Ill', 'Beastie Boys', 141, 48, 'https://i.discogs.com/GHkKqkrhZR6uENiPu6d2dw1rgzv3aLCfmks_L0VO23I/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU1MzE3/NTUtMTM5NTkyMDkw/Ni03MjkyLmpwZWc.jpeg'),
(220, 220, 'Look-Ka Py Py', 'The Meters', 45, 6, 'https://i.discogs.com/5d5J7_2Cqo9z8jNnIajeqXkjCzxvVV4KCIV5h-SryL4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4OTAz/NC0xNjEwOTc3NjM2/LTkwOTAuanBlZw.jpeg'),
(221, 221, 'Loveless', 'My Bloody Valentine', 33, 1, 'https://i.discogs.com/O4ctlNcaFB5i6rEvfBbM5JlhH-CfaMgeZkY_-6HWNbE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4ODE3/NDg5LTE2MjI1NzIz/NzEtNTYzNS5qcGVn.jpeg'),
(222, 222, 'New Orleans Piano', 'Professor Longhair', 13, 119, 'https://i.discogs.com/CtMADR4Q99yEzFx02O5KwV6Ur_IzOhQJM91nHbv7gsc/rs:fit/g:sm/q:90/h:538/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg0Njkz/NjktMTQ2MjIxMjc5/My04ODkzLmpwZWc.jpeg'),
(223, 223, 'War', 'U2', 393, 1, 'https://i.discogs.com/yGHD_PF3tFuTAIK4hzMr7dYq8eASLWeoNgwm5ZnwWEs/rs:fit/g:sm/q:90/h:380/w:375/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5MjAz/NTktMTM3OTQ0Nzc1/Ny04MjM5LmpwZWc.jpeg'),
(224, 224, 'The Neil Diamond Collection', 'Neil Diamond', 447, 5, 'https://i.discogs.com/o8g9FMvK_4r55GmkUGdtkC0C1NM2JvxY6m_NDQdNocY/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU4MTg1/MTktMTQwMzU0MTU4/MS02Mzg0LmpwZWc.jpeg'),
(225, 225, 'American Idiot', 'Green Day', 301, 1, 'https://i.discogs.com/D04UjLH3ePmXZHbJdZYQqVHx9SDgkdmHD9SAL19Gosc/rs:fit/g:sm/q:90/h:454/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYyNzcy/NS0xNDM2MjUyMTU3/LTU5NzYuanBlZw.jpeg'),
(226, 226, 'Nebraska', 'Bruce Springsteen', 39, 1, 'https://i.discogs.com/EMJSfajy-y8eBd0lljLzN9ngtZhQjWAf7BQoyBbDbF8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY0ODY3/Ni0xNjEwMTA0ODUz/LTU2NjkuanBlZw.jpeg'),
(227, 227, 'Doolittle', 'Pixies', 311, 1, 'https://i.discogs.com/HG_-j37d1XDln3KMI8iKlehH12kScU-xI93lfMBQ0L0/rs:fit/g:sm/q:90/h:550/w:550/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI4MDU5/MDYtMTM5NjEzNjAx/NS0yMjM3LmpwZWc.jpeg'),
(228, 228, 'Paid in Full', 'Eric B. & Rakim', 53, 48, 'https://i.discogs.com/KHJWvsF0Xvi3orJms2quVEP7xQvA7iYwjJQnn2qO7Dk/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1NzI1/NzMtMTU0NzUwODk4/Ni0xNzQzLmpwZWc.jpeg'),
(229, 229, 'Toys in the Attic', 'Aerosmith', 31, 1, 'https://i.discogs.com/4O5tQxxMncQbd-3CVp47d35Zr90qFdKhnNethkC9NiU/rs:fit/g:sm/q:90/h:601/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY3OTA0/OTMtMTU4ODE3NzI0/OS0zNjc1LmpwZWc.jpeg'),
(230, 230, 'Nick of Time', 'Bonnie Raitt', 311, 5, 'https://i.discogs.com/7SjGU0_0aTuftlXgMjj3edVMI9_Adv4u0vN47kYitsg/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0Mzky/MjMtMTQ1Nzk1NDM4/NC04NTkxLmpwZWc.jpeg'),
(231, 231, 'A Night at the Opera', 'Queen', 31, 1, 'https://i.discogs.com/2GXnNYolz0ciUnj8-ycSwQ8Uuy0Qu7LCfiZivZ0p_bo/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYxMjc4/MC0xNTQxMzY3MTQ1/LTIxMjcuanBlZw.jpeg'),
(232, 232, 'The Kink Kronikles', 'The Kinks', 13, 1, 'https://i.discogs.com/m6mmdVq2_QAQXrn2eTefuBxYFSUh0ITrxygTE_FLdiE/rs:fit/g:sm/q:90/h:610/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyNDY5/Nzk1LTE1MzU5MTQ3/OTgtNDc5MS5qcGVn.jpeg'),
(233, 233, 'Mr. Tambourine Man', 'The Byrds', 7, 1, 'https://i.discogs.com/1N3J9w-feQFnppC2o3H8eIY5eVtdEDcCFA2Qr10bN8k/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIwOTgx/NTItMTI5ODg2NTgw/NC5qcGVn.jpeg'),
(234, 234, 'Bookends', 'Simon & Garfunkel', 19, 1, 'https://i.discogs.com/TqqdQavDE_DGVNdV3qpn7K-pS6F9SwJQ3mT-WUQi0C4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTcwNzkz/MC0xNDk1NDM5Mjc4/LTc3MjAuanBlZw.jpeg'),
(235, 235, 'The Ultimate Collection', 'Patsy Cline', 133, 38, 'https://i.discogs.com/_H0s2qQTkGzYJ4wZcZHy9FopDMwZxez3Hi0TBFn2BZU/rs:fit/g:sm/q:90/h:478/w:479/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMzMTgz/ODUtMTMyNTUzODY3/MC5qcGVn.jpeg'),
(236, 236, 'Mr. Excitement!', 'Jackie Wilson', 269, 6, 'https://i.discogs.com/7fvMsncziC6A_yifSYHgZ-7JIcA5Hi1hZpQLQTvPsmo/rs:fit/g:sm/q:90/h:400/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk0OTYy/MDYtMTU1OTk0MDky/OS03MjYwLmpwZWc.jpeg'),
(237, 237, 'My Generation', 'The Who', 7, 1, 'https://i.discogs.com/EBh7npEV1nANPigHJHtYP7rbX4eWqgyXLpuSK78QP2M/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU3OTUz/OS0xNDIyODk1NDcw/LTIxNDEuanBlZw.jpeg'),
(238, 238, 'Howlin\' Wolf', 'Howlin\' Wolf', 209, 22, 'https://i.discogs.com/LshvMQReHK6-RbGa-s0o_IN2gN-_VNzKr8duySwExq8/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0Nzky/ODAwLTE1OTgzOTY3/NTctNjA4MS5qcGVn.jpeg'),
(239, 239, 'Like a Prayer', 'Madonna', 311, 179, 'https://i.discogs.com/gLRc2G_yx7gPYqvWoG2UYfVkJBVox58sFA4ph0iUBqQ/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNjIz/Ny0xNTM4MzE1NzY2/LTQ2MzQuanBlZw.jpeg'),
(240, 240, 'Can\'t Buy a Thrill', 'Steely Dan', 13, 1, 'https://i.discogs.com/i1b_YLJrVXqh_CFHMiSz7PmEy78pToicUaw8JcgFau0/rs:fit/g:sm/q:90/h:605/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMwODcw/NjctMTU4OTI5MDIw/NC0zNjAzLmpwZWc.jpeg'),
(241, 241, 'Let It Be', 'The Replacements', 91, 1, 'https://i.discogs.com/dq0ubD-ZTX4qpOuz4rZiUqlKgGpvd5O9TKoR3r243_s/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM5MTg4/OC0xMzAzNTEwNzkz/LmpwZWc.jpeg'),
(242, 242, 'Run D.M.C.', 'Run D.M.C.', 91, 48, 'https://i.discogs.com/AbaVKR4-RiJWymCQeve-USV0DtZUYuW4fjWdFdaRLeA/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIzMDEy/Mi0xMzAwMzg3ODUx/LmpwZWc.jpeg'),
(243, 243, 'Black Sabbath', 'Black Sabbath', 45, 1, 'https://i.discogs.com/4ctEHO8f2aW6DowswcG58pZQsJ4tjZ_8drStDZ2XZm8/rs:fit/g:sm/q:90/h:341/w:350/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI0NjQ5/ODctMTMwMTUyODM4/NC5qcGVn.jpeg'),
(244, 244, 'The Marshall Mathers LP', 'Eminem', 133, 48, 'https://i.discogs.com/3WBWUV4FJjJAS_81oZKDWCUJtHKt33OFHs238lFUEsk/rs:fit/g:sm/q:90/h:610/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyMzc1/NC0xNjM4MjE3MDA0/LTQ1NjUuanBlZw.jpeg'),
(245, 245, 'All Killer No Filler! The Jerry Lee Lewis Anthology', 'Jerry Lee Lewis', 489, 245, 'https://i.discogs.com/9V5MCjWVNBXjHyE17LHQUKscdrvPRPcYL1AP_2FFHYk/rs:fit/g:sm/q:90/h:526/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI3NDkx/NzMtMTYwMTkzODc3/OS04MzI0LmpwZWc.jpeg'),
(246, 246, 'Freak Out!', 'The Mothers of Invention', 3, 63, ' https://img.discogs.com/XZFDRMqcLzd0kuHhiFVFuhBHq78=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-538636-1435321700-7614.jpeg.jpg'),
(247, 247, 'Live/Dead', 'The Grateful Dead', 27, 1, 'https://i.discogs.com/8gl0S-SPChXOJmeMI28rLE9L4mLDpCAxgen-xhAuGtA/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU1MjQx/ODEtMTM5NTU5NDY0/MC0zMzk3LmpwZWc.jpeg'),
(248, 248, 'The Shape of Jazz to Come', 'Ornette Coleman', 23, 12, 'https://i.discogs.com/FjGmGEDT5bky5nS6ydSSF54ekE3AJSiFX-KjfoPTNj0/rs:fit/g:sm/q:90/h:549/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMxNTc5/MDktMTYzNTg1MjE4/MC00NzgyLmpwZWc.jpeg'),
(249, 249, 'Automatic for the People', 'R.E.M.', 269, 1, 'https://i.discogs.com/lQm8oIKS_4Ko5F4wFJuivhJA2ainDnqq-UR7smuwx20/rs:fit/g:sm/q:90/h:590/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgwNzE0/MjUtMTQ1NDU5MzU2/Ny00ODc0LmpwZWc.jpeg'),
(250, 250, 'Reasonable Doubt', 'Jay Z', 499, 48, 'https://i.discogs.com/Nm8xNBlvj5M7h0aKcJ4kktmNbEQMs2mot9KlspB8WRg/rs:fit/g:sm/q:90/h:570/w:380/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM2MTgz/OTItMTMzNzU5Mjky/MC05MzIxLmpwZWc.jpeg'),
(251, 251, 'Low', 'David Bowie', 51, 63, 'https://i.discogs.com/U3pqMqj3_qkfW3A7TSy0MJCOfaPuERLdNEWjjxgFjRs/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIxNjE2/Ni0xMjc1NjI1NjQ5/LmpwZWc.jpeg'),
(252, 252, 'The Blueprint', 'Jay Z', 75, 48, 'https://i.discogs.com/LKZDfRJ0lZ1kUy-nOdqC16jNAhkDDS32Zz6AseM3hjY/rs:fit/g:sm/q:90/h:424/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNTI5/ODQ5LTE0OTkzMjQw/NzUtNTE2OS5wbmc.jpeg'),
(253, 253, 'The River', 'Bruce Springsteen', 153, 1, 'https://i.discogs.com/35mYMEqlPXsfgIsf30wWPzNMplX1fQPzAnre_rTz-k4/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg5Mjk3/MS0xNTE3MzUwMTEx/LTQxOTQuanBlZw.jpeg'),
(254, 254, 'Complete & Unbelievable: The Otis Redding Dictionary of Soul', 'Otis Redding', 3, 6, ' https://img.discogs.com/W0QPE9g4LXi5hqn1yTYB410B17c=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-2537596-1562417983-2046.jpeg.jpg'),
(255, 255, 'Metallica (\"The Black Album\")', 'Metallica', 33, 1, 'https://i.discogs.com/FM71maSJpb5OHV9DXq6zVAsDWaFdksvZv46_COzSxWM/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIwMTc4/OTY3LTE2MzEzMDA0/OTUtODI4My5qcGVn.jpeg'),
(256, 256, 'Trans Europa Express', 'Kraftwerk', 51, 256, 'https://i.discogs.com/GyBdJdkNpWOefmm5E9QdmT5ufQFlD2UZQWELhNk9sB4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc1NTQ3/LTE1ODAwNzUyNzUt/NzE1Ny5qcGVn.jpeg'),
(257, 257, 'Whitney Houston', 'Whitney Houston', 273, 20, 'https://i.discogs.com/L6JA11Bzt7QnAZxrh62WU0hFQsFD__0W5PDItVW4wSY/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY5ODEy/NzEtMTUxMzU2OTQ5/My01NjYxLmpwZWc.jpeg'),
(258, 258, 'The Kinks Are The Village Green Preservation Society', 'The Kinks', 19, 1, 'https://i.discogs.com/OF1GFp8OL-F8Kqzs4Sh09NQ9FsqL_PP7ONoVvbmowIA/rs:fit/g:sm/q:90/h:599/w:599/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIwMjIw/NjItMTM5ODc3ODQ5/OS0yMTk0LmpwZWc.jpeg'),
(259, 259, 'The Velvet Rope', 'Janet', 323, 259, 'https://i.discogs.com/VE9E1FtcgkpCluDC9aNt2bfs_jBLrSWYSYASXSN4zqM/rs:fit/g:sm/q:90/h:604/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQyNzA5/Mi0xMjgzMjI5NDkz/LmpwZWc.jpeg'),
(260, 260, 'Stardust', 'Willie Nelson', 183, 260, 'https://i.discogs.com/RcECBxyUzHAnWg702tZN0ZrJESrShDD0NeJ778vXcjo/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYyNjM2/Ny0xMzE1MTYwMzc1/LmpwZWc.jpeg'),
(261, 261, 'American Beauty', 'Grateful Dead', 45, 1, 'https://i.discogs.com/CFcbNgcfVEO4kx_FHmw0tyVIeMPlxLmYoOHNTnIOTV4/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY4MTk0/NS0xMTk5NDAzMzIz/LmpwZWc.jpeg'),
(262, 262, 'Crosby, Stills & Nash', 'Crosby, Stills & Nash', 27, 31, 'https://i.discogs.com/KxwP9tcIX-eW144P1Jw5i-2YpNbkD9uEKkfI5JlJhu8/rs:fit/g:sm/q:90/h:300/w:298/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY5OTYy/Ny0xMTkwNDAwNDc4/LmpwZWc.jpeg'),
(263, 263, 'Tracy Chapman', 'Tracy Chapman', 95, 1, 'https://i.discogs.com/iOlXJr799H4uQZb6d-9P1HfH-LvpzOokWHZMgbTeDy8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc2MTE1/My0xMzA3Njg3Nzkx/LmpwZWc.jpeg'),
(264, 264, 'Workingman\'s Dead', 'Grateful Dead', 45, 1, 'https://i.discogs.com/OBdwzfVuhnneFv8rc8qNiNlLWQXETviVVuoCSuRyhHE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg2ODQ4/MTEtMTQ2OTExNzcx/NS0zMTkwLmpwZWc.jpeg'),
(265, 265, 'The Genius of Ray Charles', 'Ray Charles', 23, 101, 'https://i.discogs.com/rxY5tC_6h5SiyplDB_dtVSOxu2C4Q8hEkQDt-Zztt_U/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM0NTQ1/NjQtMTMzMTAwOTU3/MS5qcGVn.jpeg'),
(266, 266, 'Child Is Father to the Man', 'Blood, Sweat & Tears', 19, 1, 'https://i.discogs.com/sNv_rjWi3nhiKOGQe78kHKS0toyMvHud5faD2Ras3hM/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0MzE5/OTgtMTIyMTAyNDYw/Mi5qcGVn.jpeg'),
(267, 267, 'Quadrophenia', 'The Who', 47, 1, 'https://i.discogs.com/lJAGD99Xy4JLE0ITK9c4jsk3Prms8VXCP0_uqrj2IO8/rs:fit/g:sm/q:90/h:1072/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1ODYz/NTY1LTE1OTkxOTIx/MzItNzA0NC5qcGVn.jpeg'),
(268, 268, 'Paul Simon', 'Paul Simon', 13, 1, 'https://i.discogs.com/0uCTVhHHOpQmaXH9pao7Y36R2eH2cgn9uHdTpKtVcqc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyNDc2/OTktMTQ2MzI1NjEw/NC01MDc3LmpwZWc.jpeg'),
(269, 269, 'Psychocandy', 'The Jesus and Mary Chain', 273, 1, 'https://i.discogs.com/3vHqTuomdyGyUO-XS0BiRnswZrrJxXwB7Ty48WTJxj0/rs:fit/g:sm/q:90/h:611/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM2OTg4/My0xNTk0NzUwNTUx/LTQ3ODYuanBlZw.jpeg'),
(270, 270, 'Some Girls', 'The Rolling Stones', 183, 1, 'https://i.discogs.com/h7Fcy9tQDqfDFq3px9sqc4FtgggEDUI-5X28HeGJ0oQ/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMwMzAw/MjQtMTQzMjMwNDIz/OC0xNDIxLmpwZWc.jpeg'),
(271, 271, 'The Beach Boys Today!', 'The Beach Boys', 7, 1, 'https://i.discogs.com/e3p_qHriK9979oon4mgMJa8PTYi83B8knKFFwF39wyg/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg2OTAz/Ny0xMzExMTkxMTEw/LmpwZWc.jpeg'),
(272, 272, 'Dig Me Out', 'Sleater Kinney', 323, 1, 'https://i.discogs.com/LCzxeW15CBvNZVA4xLB5uzTfNtyLS1P5qHr3gz299xM/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ2MjM1/OS0xMjUwODIxMDg4/LmpwZWc.jpeg'),
(273, 273, 'Going to a Go-Go', 'Smokey Robinson & The Miracles', 3, 6, 'https://i.discogs.com/m5Q3AWOTNHehzTFPz1cT0vMcJl0E9lngIpQTIfK5UfU/rs:fit/g:sm/q:90/h:591/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNzk2/MjU4LTE1NjEzMTY1/OTktOTk3NC5qcGVn.jpeg'),
(274, 274, 'Nightbirds', 'LaBelle', 225, 6, 'https://i.discogs.com/6Ny_0mbRFlaGL9tL3xL3Q97FSQkAp3K25rxh6R1yHeY/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIwODc5/NDMtMTU4NjA3MzE2/My00NTE5LmpwZWc.jpeg'),
(275, 275, 'The Slim Shady LP', 'Eminem', 447, 48, 'https://i.discogs.com/I_xU77rzQzq7e4tTJMPjxDxcLjKpoAiTfCAgHdH_M0Y/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4NjQ1/MS0xMjgzNjIwNzUy/LmpwZWc.jpeg'),
(276, 276, 'Mothership Connection', 'Parliament', 31, 6, 'https://i.discogs.com/d0gal3CpBHAdq73hzqhIge16bdiJp0THPwZJteHOdso/rs:fit/g:sm/q:90/h:600/w:599/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMwMDA3/MjgtMTMxMTExOTM1/My5qcGVn.jpeg'),
(277, 277, 'Rhythm Nation 1814', 'Janet Jackson', 311, 277, 'https://i.discogs.com/61wXJWq5noI_8u-nLJOeV2NzaSzOHwgR6gLVOVyM3cM/rs:fit/g:sm/q:90/h:625/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYxNTQ0/OTktMTQxMjQzOTc3/NS0yNjYxLmpwZWc.jpeg'),
(278, 278, 'Anthology of American Folk Music', 'Various', 323, 278, ' https://img.discogs.com/WknHDKmh1J2UIIeikNPq-AnMPgk=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-652964-1329594799.jpeg.jpg'),
(279, 279, 'Aladdin Sane', 'David Bowie', 47, 1, 'https://i.discogs.com/GRCkybUp0qFCQaBOAl_rRomCEzweg2xSJKnJv-CW4Cg/rs:fit/g:sm/q:90/h:550/w:550/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM1NDkw/Ni0xNDEyNzc1NzU1/LTQwMTIuanBlZw.jpeg'),
(280, 280, 'All That You Can\'t Leave Behind', 'U2', 133, 1, 'https://i.discogs.com/r36e2Oi0zCFxfX1so6-tGcN56-sMcoH5IYkDJwybCr0/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3NDM0/OC0xMjI1NDU0ODA4/LmpwZWc.jpeg'),
(281, 281, 'My Life', 'Mary J. Blige', 267, 48, 'https://i.discogs.com/564Vkd4IfvsLnfjEi7g_xlZ5Nenecysg426jndgwqEU/rs:fit/g:sm/q:90/h:400/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4Mjcy/OTMtMTI5NjEyMjU1/MS5qcGVn.jpeg'),
(282, 282, 'Folk Singer', 'Muddy Waters', 105, 22, 'https://i.discogs.com/KlDrK5NK4b3ekFBaCe2G3jaIB79XL_U9RZeiaWrGP8E/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0ODc0/NTYtMTM4NTQ3NzMx/Ny0yNDE0LmpwZWc.jpeg'),
(283, 283, 'Can\'t Get Enough', 'Barry White', 225, 6, 'https://i.discogs.com/1ff2BdFWNViZFvaPMONwcT5yDjdPPbHLGSBIEGPtd6A/rs:fit/g:sm/q:90/h:596/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNjEy/ODQtMTU3MDEyMDcy/Ni04NTEyLmpwZWc.jpeg'),
(284, 284, 'The Cars', 'The Cars', 183, 63, 'https://i.discogs.com/orZSfR6qHmBb_2dGKdyy8TyG7JMUvlIwWN-h8VWSfDM/rs:fit/g:sm/q:90/h:531/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY3MTIy/ODUtMTQyNTEzOTQ4/NC0zNTI3LmpwZWc.jpeg'),
(285, 285, 'Music of My Mind', 'Stevie Wonder', 13, 6, 'https://i.discogs.com/QQJh4ZOKVM0-NE-m2e7tTZ0aq_PttLpRdhDpSehinX4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYzODg4/NS0xMjYxMjI0NDMy/LmpwZWc.jpeg'),
(286, 286, 'I\'m Still in Love With You', 'Al Green', 13, 6, 'https://i.discogs.com/2gVJw3vUdOGts1QNvlQ_T5uDSGFsiz_pWpj7izF_lVA/rs:fit/g:sm/q:90/h:600/w:599/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUwOTI2/MS0xMjg2NjIwNTU4/LmpwZWc.jpeg'),
(287, 287, 'Los Angeles', 'X', 153, 1, 'https://i.discogs.com/zl_Y21iT-hJaeocgukJq6KALDHbyDVCdCw6xbAQTqLw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMxOTUw/NzEtMTMxOTk5MDUw/NC5qcGVn.jpeg'),
(288, 288, 'Anthem of the Sun', 'Grateful Dead', 19, 1, 'https://i.discogs.com/ZdErSBscu2f2PsUl2nZcDYe6c9B4kLfASeHAnjdZVPc/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQwNDQy/MzEtMTU4MzA5Mzc1/Ny04ODE2LmpwZWc.jpeg'),
(289, 289, 'Something Else by The Kinks', 'The Kinks', 1, 1, 'https://i.discogs.com/lJ8WBDrFoFjJk2tu0hBPNt7aoA8RvNDfs-8LAYDKRqg/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU5OTEy/MS0xNTUxMjgzMjM4/LTI5OTguanBlZw.jpeg'),
(290, 290, 'Call Me', 'Al Green', 47, 6, 'https://i.discogs.com/l3LdOx_EuFv-lcHotDdK7K84ToWn_3YB1EgGoeiZOVQ/rs:fit/g:sm/q:90/h:602/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY4OTE1/MzktMTYzNTUyNDUz/My0xODUwLmpwZWc.jpeg'),
(291, 291, 'Talking Heads: 77', 'Talking Heads', 51, 1, 'https://i.discogs.com/kYxZitmAcQB19jmiWqLnZMfSoGS70gt3ofw-gRPdNZw/rs:fit/g:sm/q:90/h:399/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5Mjg3/MC0xMjA5NzY1NDk4/LmpwZWc.jpeg'),
(292, 292, 'The Basement Tapes', 'Bob Dylan and the Band', 31, 1, ' https://img.discogs.com/GNjtijQR1uqLfLN6wHs2huUaQj8=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-2012979-1258510467.jpeg.jpg'),
(293, 293, 'White Light/White Heat', 'The Velvet Underground', 19, 1, 'https://i.discogs.com/3IVdrWOBYbMybKTtDESZYum5oseM0_7V3DMQB2n_R0c/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3MjAz/MC0xNTg5Mjk1MzU0/LTc2NzcuanBlZw.jpeg'),
(294, 294, 'Kick Out the Jams', 'MC5', 27, 1, 'https://i.discogs.com/NX_J3DmtKOurqArS7uCs17P82pn8E3YcKrRg0bvWL_s/rs:fit/g:sm/q:90/h:400/w:283/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQwMDM1/MTEtMTM1MTk5Mjg0/My0zNTkzLmpwZWc.jpeg'),
(295, 295, 'Songs of Love and Hate', 'Leonard Cohen', 45, 38, 'https://i.discogs.com/aIIjq6F-3760rCzWzoZ8Fjg1RtfiAZIVyKrW8iJyW40/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ4Mzcy/NS0xMTI0Njk5NjQw/LmpwZw.jpeg'),
(296, 296, 'Meat Is Murder', 'The Smiths', 273, 1, 'https://i.discogs.com/tltMybBjF5lkEuaymF6sCLPZqMYVM7UK0yrl4u_Pmmg/rs:fit/g:sm/q:90/h:600/w:596/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3MzI0/MC0xMTg5NzEyNjQ0/LmpwZWc.jpeg'),
(297, 297, 'We\'re Only in It for the Money', 'The Mothers of Invention', 19, 63, ' https://img.discogs.com/3DWuy65htrZi40BJGlpCvgD0d_Q=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-431258-1555180605-3633.jpeg.jpg'),
(298, 298, 'The College Dropout', 'Kanye West', 213, 48, 'https://i.discogs.com/U4HojgqktYkccpuZiEbuJA8Mhr2borSaTQCnq4Tykv8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDA2/ODU4LTE1NTM2MDk1/NjAtNjUzOS5qcGVn.jpeg'),
(299, 299, 'Weezer (Blue Album)', 'Weezer', 267, 1, ' https://img.discogs.com/pQTbqSb2WQHRntvR5bVn2hI7Iuw=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-368184-1384978619-8293.jpeg.jpg'),
(300, 300, 'Master of Reality', 'Black Sabbath', 11, 1, 'https://i.discogs.com/4we8vX018Pmnnsjy1ntbUibQH3pDiYogAKmFHia9IJY/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI4MTU4/OTctMTQ4NzUyNDcw/Ny02MzY0LmpwZWc.jpeg'),
(301, 301, 'Coat of Many Colors', 'Dolly Parton', 11, 38, 'https://i.discogs.com/m3FIoIjEZH351eFgmLYLPTJ7Um6Xi2QNehulLbh5LCk/rs:fit/g:sm/q:90/h:604/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTkwMDUw/NjQtMTQ3MzExMjk2/MC0xMTU4LmpwZWc.jpeg'),
(302, 302, 'Fear of a Black Planet', 'Public Enemy', 43, 48, 'https://i.discogs.com/iX1zU28PszoIkJJuyiP7dnV7QR5XTDAaZltOiIUttik/rs:fit/g:sm/q:90/h:588/w:598/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc4OTU3/LTEyMDY1MzA5MjEu/anBlZw.jpeg'),
(303, 303, 'John Wesley Harding', 'Bob Dylan', 1, 1, 'https://i.discogs.com/TGjNakPTZhJDGn5CVhXwKWlo7XG-xwUU9TUB0mP6P0c/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4ODY4/NTUtMTUxMzExMTI3/Ni0xMDAyLmpwZWc.jpeg'),
(304, 304, 'Grace', 'Jeff Buckley', 267, 1, 'https://i.discogs.com/KPeBLJF0b4gKhob-WyLfCk6tQ1k6rgYC7nyefccNdAE/rs:fit/g:sm/q:90/h:528/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc4MTY1/MDQtMTU3MjY5NzE5/MS02NTQ2LmpwZWc.jpeg'),
(305, 305, 'Car Wheels on a Gravel Road', 'Lucinda Williams', 391, 38, 'https://i.discogs.com/BgfL5cm5mkVWFI3L1YFuy7QSgBpyrWEgiZ51Z96XYf4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0ODQ3/ODktMTI2NTc3MzI5/MC5qcGVn.jpeg'),
(306, 306, 'Odelay', 'Beck', 499, 306, 'https://i.discogs.com/Xds-rX0LP8TrTF0WBMNZWrock6oTHf7jdJNenrPw0jg/rs:fit/g:sm/q:90/h:220/w:220/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNTkw/NTYyLTE1MTkwMzMz/MDAtNDY1MS5qcGVn.jpeg'),
(307, 307, 'A Hard Day\'s Night', 'The Beatles', 105, 208, 'https://i.discogs.com/nkPVUoLOXeFcmF3tv2vaSBsIBctGBAcQ7SuwIz6yQEo/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM1OTE4/NTMtMTYwODY5MDM1/MS04OTU4LmpwZWc.jpeg'),
(308, 308, 'Songs for Swingin\' Lovers!', 'Frank Sinatra', 111, 101, 'https://i.discogs.com/G9xQnbeM7eHm0wJ7X354ITA_21zDoOJB0LWFDYy3grQ/rs:fit/g:sm/q:90/h:605/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNDI2/ODM5LTE1MTYxMjc2/NjMtMjkxMS5qcGVn.jpeg'),
(309, 309, 'Willy and the Poor Boys', 'Creedence Clearwater Revival', 27, 1, 'https://i.discogs.com/jQUu2-eMl0XOJ4SDaMbsww0hQJiQOGhz9WZHcz7I0rU/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMzE3/MDMtMTIyNTYzNjEz/MC5qcGVn.jpeg'),
(310, 310, 'Blood Sugar Sex Magik', 'Red Hot Chili Peppers', 33, 1, 'https://i.discogs.com/ki1A7VeClos8Q2iqXh4V9-myP4SiqDY92g_h3exg6Eo/rs:fit/g:sm/q:90/h:604/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMDM5/Mzc3LTE1NDY5NjAx/MTYtMTE4NS5qcGVn.jpeg'),
(311, 311, 'The Sun Records Collection', 'Various', 267, 311, 'https://i.discogs.com/oOfLh-3bRML_IBnpBrPj6G_IokUsshTD1CQAOg_CFg8/rs:fit/g:sm/q:90/h:1106/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4MDQ0/ODktMTQzODQ2MjI2/Ny0xMDA3LmpwZWc.jpeg'),
(312, 312, 'Nothing\'s Shocking', 'Jane\'s Addiction', 95, 1, 'https://i.discogs.com/nLYJ0h22wh--vVKVw8czvAqAcJWCkcKmIa-Qs6AWId0/rs:fit/g:sm/q:90/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzMjYx/MC0xMTM4MjUwMjQx/LmpwZWc.jpeg'),
(313, 313, 'MTV Unplugged in New York', 'Nirvana', 267, 1, 'https://i.discogs.com/_HOSmWJSIbFAdvpBoCGDbTx6gwu2OkuKuD3CCunpPbA/rs:fit/g:sm/q:90/h:822/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4NzMw/MDAtMTUwOTM5Nzg1/MS0xOTcyLmpwZWc.jpeg'),
(314, 314, 'The Miseducation of Lauryn Hill', 'Lauryn Hill', 391, 48, 'https://i.discogs.com/I0kfeLY7Jo3mhf3IB7lE7URdBu98gf4N8VKh3zQM1rU/rs:fit/g:sm/q:90/h:600/w:590/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyNzAy/MC0xMzAxMjQzNTM1/LmpwZWc.jpeg'),
(315, 315, 'Damn the Torpedoes', 'Tom Petty and the Heartbreakers', 15, 1, 'https://i.discogs.com/pbEFmoPwuMAtPYaTSI8GJi33Ie5QMPn8ldmKAE5lNSU/rs:fit/g:sm/q:90/h:566/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNDAx/ODIwLTE1MTU3MzE3/NjgtMTE2Ni5qcGVn.jpeg'),
(316, 316, 'The Velvet Underground', 'The Velvet Underground', 27, 1, 'https://i.discogs.com/lw24XdERlwUjnbEZ0zRX-TycjVmwM7ftFt3YVYFn9ZE/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgyNTQ0/My0xNTU0OTA4NjMy/LTkxODAuanBlZw.jpeg'),
(317, 317, 'Surfer Rosa', 'Pixies', 95, 1, 'https://i.discogs.com/FtheswtrTBYbT9kU49f_kQjpEseAIdcdOHO05yuA9rk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3MTM1/NS0xMjUyMzE2ODIz/LmpwZWc.jpeg'),
(318, 318, 'Back Stabbers', 'The O\'Jays', 13, 6, 'https://i.discogs.com/Jcs399FONeSSCLYMeXNQlII6j6G-pXo76Jelc-7KhGw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU3ODk4/MTctMTQwMjczODY5/OS03ODE2LmpwZWc.jpeg'),
(319, 319, 'Burnin\'', 'The Wailers', 47, 46, 'https://i.discogs.com/OmQHeSHPlJD5T6ScIfvdPd9Uoe4xKwVWYoOZauV7CqE/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMzOTgw/NjgtMTM1MDE2OTE2/My0xMjY2LmpwZWc.jpeg'),
(320, 320, 'Amnesiac', 'Radiohead', 75, 63, 'https://i.discogs.com/e1A20pab3eF9hcbvvo7AQb85a9pUOv7W4Gf6stx8LgI/rs:fit/g:sm/q:90/h:583/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyOTI5/NDE0LTE1NDQ3MzQ0/NDEtMjQzOS5qcGVn.jpeg'),
(321, 321, 'Pink Moon', 'Nick Drake', 13, 31, 'https://i.discogs.com/HJBOUHCVw-7TBOuqpliIUaYMCvJX8_u2l6IC2WM0Oz4/rs:fit/g:sm/q:90/h:588/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNTY3/NzUtMTQzMTk1ODc2/Ni05NjU0LmpwZWc.jpeg'),
(322, 322, 'Sail Away', 'Randy Newman', 13, 5, 'https://i.discogs.com/8CAtqWMLesFFg7cqC_vA-R5Ey_uvfXsBPsK4uyGdS8w/rs:fit/g:sm/q:90/h:450/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzODk3/MDg5LTE1NjM1NjIz/MjItNTU2Ni5qcGVn.jpeg'),
(323, 323, 'Ghost in the Machine', 'The Police', 425, 5, 'https://i.discogs.com/VyuF6_KFyhRMpmiUfCSpQAsgSJcXgcxT0cbgMo6xlv0/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2MDYz/OTctMTYxMDU0NDQ3/NC03ODQxLmpwZWc.jpeg'),
(324, 324, 'Station to Station', 'David Bowie', 21, 89, 'https://i.discogs.com/P9GlAOWcpU7_8C7B2GD6x6Rvna8R0tMaCjEPt-nQASc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0MjU1/NDAtMTM3NDQzMTU4/My00OTgyLmpwZWc.jpeg'),
(325, 325, 'Slowhand', 'Eric Clapton', 51, 1, 'https://i.discogs.com/fNCUsnv03T-rsEdIpEHmnJvicdWvwNBKZJE7iOEwYyc/rs:fit/g:sm/q:90/h:946/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMjM4/NDI5LTE1Mzk3ODkx/NjktNjYwMy5qcGVn.jpeg'),
(326, 326, 'Disintegration', 'The Cure', 311, 63, 'https://i.discogs.com/1jYALr8Hr8_7NT7WfoqvJ3budKuuhX_NxhcU89TaZiM/rs:fit/g:sm/q:90/h:595/w:597/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2NDU4/My0xMTcyNDI2MTgx/LmpwZWc.jpeg'),
(327, 327, 'Exile in Guyville', 'Liz Phair', 489, 1, 'https://i.discogs.com/9dFG-YCIo9CNXh2tLe9TRL32PELeW5qvt6euZyvaSZI/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4MzY3/NzA4LTE2MTg4NDkw/NTgtNjQzMy5qcGVn.jpeg'),
(328, 328, 'Daydream Nation', 'Sonic Youth', 95, 1, 'https://i.discogs.com/WFA7Kod1I11LlmFF9Y8pU-uwf1yS58cutjotHKDdAKs/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNTI1/NzItMTU0MTk3NzU1/Mi00OTYyLmpwZWc.jpeg'),
(329, 329, 'In the Jungle Groove', 'James Brown', 141, 6, 'https://i.discogs.com/Dz6rSI9ubw4nTINKpXiqWw4NoIqalCH19MFB8TbngV8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU1NjA0/My0xMjQyMjE2MDY5/LmpwZWc.jpeg'),
(330, 330, 'Tonight\'s the Night', 'Neil Young', 31, 1, 'https://i.discogs.com/CY6lFqyzuhWseCZHRmCLOotnsSyprF9T6Q4OqTMypMc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyNzM1/MzktMTIxNTIwMDI2/OC5qcGVn.jpeg'),
(331, 331, 'Help!', 'The Beatles', 7, 208, 'https://i.discogs.com/NqB6EEq_BW780DciIeY1UutdaFkgQSb3vxMRvB10h4g/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY4NTYw/MjctMTQyODA3ODUw/Ni02MjY0LmpwZWc.jpeg'),
(332, 332, 'Shoot Out the Lights', 'Richard & Linda Thompson', 39, 31, 'https://i.discogs.com/CsFR4DQ8oDIPYJo5DGfqCGeLlmuZtC4C4vT9jNutaY8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5MzEw/NTUtMTM5MzI3NzE2/Ni02NTY5LmpwZWc.jpeg'),
(333, 333, 'Wild Gift', 'X', 425, 1, 'https://i.discogs.com/bdmPfpk3jTvbIgG8RWf7F-jL_mh93MTPgQK887JGNNA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg1Mzk3/Ny0xMzgxOTUyMTQx/LTQ0NDcuanBlZw.jpeg'),
(334, 334, 'Squeezing Out Sparks', 'Graham Parker & The Rumour', 15, 9, 'https://i.discogs.com/O4GSodWA5RouCUxWhJ5ywWdURFUaExKg0zhYmF4S2nI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExOTc3/MzI0LTE1MjU5MTAz/MTQtOTg0Ny5qcGVn.jpeg'),
(335, 335, 'Superunknown', 'Soundgarden', 267, 1, 'https://i.discogs.com/A63fuqUmkMRBxIuwmyl2zDr4Q--50AYTug0u-iNXrDs/rs:fit/g:sm/q:90/h:599/w:599/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQwOTM0/OC0xMTUwNTY3MjY2/LmpwZWc.jpeg'),
(336, 336, 'In Rainbows', 'Radiohead', 671, 63, 'https://i.discogs.com/M_QmofVfPwV_7Rc6z17_FqKtnvo26WMVF2_TMjBLQ_E/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNzQy/OTYtMTM2MzQzNDA3/My0yMjY1LmpwZWc.jpeg'),
(337, 337, 'Aqualung', 'Jethro Tull', 11, 1, 'https://i.discogs.com/2XaiDCR0Xhyy3X53FIHMzOIy8ab4-XcTFea1xLYEMvg/rs:fit/g:sm/q:90/h:450/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMwODA4/MzAtMTMxNDgwMTUy/NS5qcGVn.jpeg'),
(338, 338, 'Cheap Thrills', 'Big Brother & the Holding Company', 19, 1, 'https://i.discogs.com/xlygcdCs4Zr1RPUNNlSL9IumtFCCZwkrwnpG2w6FLc0/rs:fit/g:sm/q:90/h:613/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU1OTU2/MC0xNDQxNzc5NDcx/LTI4MjMuanBlZw.jpeg'),
(339, 339, 'The Heart of Saturday Night', 'Tom Waits', 225, 339, 'https://i.discogs.com/Frg8hrb8AF2tRoaR1DBWIbOT1LKkbcfyxSOGQC5vdRY/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNzc5/ODA2LTE1NjA5NTQ1/OTUtOTY4Ny5wbmc.jpeg'),
(340, 340, 'Damaged', 'Black Flag', 425, 1, 'https://i.discogs.com/Qr7RxyKA95Hh3g-rh5SOcGtBaNUPb6BZcxriXWTcjdU/rs:fit/g:sm/q:90/h:526/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc5NDgy/MTktMTQ1MjIzODc4/Mi0xNzg5LmpwZWc.jpeg'),
(341, 341, 'Play', 'Moby', 447, 256, 'https://i.discogs.com/GBHgB8UJVZw6CFPogTrwwQPOWw9CXVWmh3Z9aESjU3w/rs:fit/g:sm/q:90/h:539/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgzMTc2/My0xMTYzMzU2Mjkw/LmpwZWc.jpeg'),
(342, 342, 'Violator', 'Depeche Mode', 43, 256, 'https://i.discogs.com/YTeB7MAsqX4oUtzkqCubygU8KIpGTR6U4kUWJxtBWHE/rs:fit/g:sm/q:90/h:550/w:551/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY3MTQw/MzYtMTUzMTQ1NTQ3/MS04NzU2LmpwZWc.jpeg'),
(343, 343, 'Bat Out of Hell', 'Meat Loaf', 51, 1, 'https://i.discogs.com/y5w1HEiU6fb1vnkYTwKJE5h-7rUurHm5-w44McCPzQ4/rs:fit/g:sm/q:90/h:591/w:581/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1ODYx/MDYtMTI1NTk1Nzgz/OC5qcGVn.jpeg'),
(344, 344, 'Berlin', 'Lou Reed', 47, 1, 'https://i.discogs.com/_GxfozNi0vhfN1FwykpiawU6jxXzNxWmBTshzFPLmYY/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ4OTYy/NTItMTQwNzYzNjg5/Ni04MzU2LmpwZWc.jpeg'),
(345, 345, 'Stop Making Sense', 'Talking Heads', 91, 89, 'https://i.discogs.com/jEBj2bCsAKZh5kxpRRgU4fRPNbLtY6L5-iGRFL5572s/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2NjY1/Mi0xNTczNzA1MjYx/LTM3MTcuanBlZw.jpeg'),
(346, 346, '3 Feet High and Rising', 'De La Soul', 311, 48, 'https://i.discogs.com/9IQpGN33-6t0MsC_iL3L4IapqBSItXLDIcLJnNTjJqs/rs:fit/g:sm/q:90/h:593/w:599/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMDU1/NTUtMTI0ODQ2NDE2/Ni5qcGVn.jpeg'),
(347, 347, 'The Piper at the Gates of Dawn', 'Pink Floyd', 1, 1, 'https://i.discogs.com/eoxgTIx0-qWZqvNLjVinMxnHA7bpQ3PPSZJM-jTx5zM/rs:fit/g:sm/q:90/h:476/w:490/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1NDc3/NDYtMTI5MDgwNDI3/Mi5qcGVn.jpeg'),
(348, 348, 'Muddy Waters at Newport 1960', 'Muddy Waters', 237, 9, 'https://i.discogs.com/4axWjQ-LKpRkFSXmWAvgJhvWHSuA27_SNy2LM2Q0OCA/rs:fit/g:sm/q:90/h:600/w:597/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU1NzY3/MzAtMTM5NzE0NTk5/OS01NTI4LmpwZWc.jpeg'),
(349, 349, 'The Black Album', 'Jay Z', 213, 48, 'https://i.discogs.com/Q3qBX3dKw5F9nttCsGpvmPgv4vxz_y9doieYy1aP_40/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1OTQz/Mi0xNDcwNDA5ODQ3/LTg1OTYucG5n.jpeg'),
(350, 350, 'Roger the Engineer', 'The Yardbirds', 3, 9, 'https://i.discogs.com/osYze4s49YYSgxMpmb0xCrxqxV9orAZ9MmSN8GaCkos/rs:fit/g:sm/q:90/h:594/w:588/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUwMDg3/NDMtMTM5Mjg5MTUy/NC0zMjIzLmpwZWc.jpeg'),
(351, 351, 'Rust Never Sleeps', 'Neil Young & Crazy Horse', 15, 1, 'https://i.discogs.com/vuwOzYhanFLjB4lv0Sm9hE_kB7rHE4dEuCHlCS0cSO0/rs:fit/g:sm/q:90/h:588/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk0NDE0/My0xNDk4Nzg3OTc4/LTY5NzcuanBlZw.jpeg'),
(352, 352, 'Brothers in Arms', 'Dire Straits', 273, 1, 'https://i.discogs.com/5ZxkBZ0klld4JTkz-Iv_R5VSZAAbMVRevI-ot7JAX9o/rs:fit/g:sm/q:90/h:602/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4MjQx/Ny0xNTc2NzU5OTAw/LTc4NjMuanBlZw.jpeg'),
(353, 353, 'My Beautiful Dark Twisted Fantasy', 'Kanye West', 705, 48, 'https://i.discogs.com/n6dPol8wjBFrb2XQQlfFGFMu-bnuuMEDIgkzauiXIAM/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2MDY5/NTItMTU4NDQ3OTU2/Mi0xOTY3LmpwZWc.jpeg'),
(354, 354, '52nd Street', 'Billy Joel', 183, 354, 'https://i.discogs.com/YaqHBykSI8nuuYO4JWSTKLyXGp7uzy5iSZhzzEjUhrM/rs:fit/g:sm/q:90/h:601/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc0MDM3/ODgtMTUzNTkxMzEz/NC0xOTE1LmpwZWc.jpeg'),
(355, 355, 'Having a Rave Up', 'The Yardbirds', 7, 1, 'https://i.discogs.com/4ngkDMXEzoEk0ACWMyK4oR2sZd5TOmnlRKgjUt6nboM/rs:fit/g:sm/q:90/h:542/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2ODk2/ODUtMTI5NjY3ODc5/MC5qcGVn.jpeg'),
(356, 356, '12 Songs', 'Randy Newman', 45, 5, 'https://i.discogs.com/zYBpU5flR0cF_iN_4aVRI7ULClxrrv8H0OkjSfDfHvA/rs:fit/g:sm/q:90/h:596/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYzODEw/MDUtMTQxNzgzOTkw/OC0xNzc5LmpwZWc.jpeg'),
(357, 357, 'Between the Buttons', 'The Rolling Stones', 1, 1, 'https://i.discogs.com/_U9Qx0gJq3FMaVcAs06JBpLlMTZsFKhHhXwHWSApYQg/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzNTU5/Mi0xNTQwODM1Njkx/LTQ5NTcuanBlZw.jpeg'),
(358, 358, 'Sketches of Spain', 'Miles Davis', 237, 12, 'https://i.discogs.com/qCFr5dP7C8sLVZ3XVt1B-vCERsJ0wJ0JkrYsuihC4w8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5MTQz/NTMtMTI1MjEzODI1/NC5qcGVn.jpeg'),
(359, 359, 'Honky Chateau', 'Elton John', 13, 1, 'https://i.discogs.com/eAdTCoGnTKeDtrMoHIofVDcW4j6gc8mS8S-eHowzbuo/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ3MjMy/NC0xMzI0MjE3NTUw/LmpwZWc.jpeg'),
(360, 360, 'Singles Going Steady', 'Buzzcocks', 15, 1, 'https://i.discogs.com/-BOb21xCcXS9Jb91UtYk9KYi0ruvCpxs_6s_k__GE5c/rs:fit/g:sm/q:90/h:434/w:450/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMTc3/NTktMTIwNTExMzE1/OS5qcGVn.jpeg'),
(361, 361, 'Stankonia', 'OutKast', 133, 361, 'https://i.discogs.com/KM5Ob5wk4ErLNlrpFiApHhDCQc8WXz4mnQ6O7oWMv00/rs:fit/g:sm/q:90/h:724/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg4OTgx/NzctMTQ3MTAzOTU1/Ni00NzI2LmpwZWc.jpeg'),
(362, 362, 'Siamese Dream', 'The Smashing Pumpkins', 489, 1, 'https://i.discogs.com/v78WLR3z_ymCHUTiNXoKGKWRZtXufqlhmWOAWb5z6NM/rs:fit/g:sm/q:90/h:302/w:192/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc5NDQx/NjgtMTQ1MjE2Mzc2/OC05ODg3LmpwZWc.jpeg'),
(363, 363, 'Substance 1987', 'New Order', 53, 256, 'https://i.discogs.com/E4XmWMPpMViUcVGfurIpVGaMev3ffAnvzblP85X6Qeo/rs:fit/g:sm/q:90/h:583/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgzNTEw/ODAtMTQ1OTg5NzA5/Mi01NDI3LmpwZWc.jpeg'),
(364, 364, 'L.A. Woman', 'The Doors', 11, 1, 'https://i.discogs.com/20LaMOUp9JNinzjOxNMlKpSJwSXz5ugmvtzWpm9gdFE/rs:fit/g:sm/q:90/h:591/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYwNTMw/Ny0xNTIwOTYxNTAw/LTI3MDcuanBlZw.jpeg'),
(365, 365, 'Rage Against the Machine', 'Rage Against the Machine', 269, 365, 'https://i.discogs.com/IZfPhhsnvrnfxptmzO2aTiRGMKUn-P_o5llr-E-b6Z0/rs:fit/g:sm/q:90/h:1085/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTczNjc2/MjItMTQ2MjkzMjU0/MC05OTg5LmpwZWc.jpeg'),
(366, 366, 'American Recordings', 'Johnny Cash', 267, 38, 'https://i.discogs.com/ky_KeCezcof5mY-4gOHITDQAy0XTxfdksQ0rdgH7Afs/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY5NjI2/OC0xNTMxMDM4NjI2/LTg2MTAuanBlZw.jpeg'),
(367, 367, 'Ray of Light', 'Madonna', 391, 179, 'https://i.discogs.com/WexxAxr9hK852JlTvO2FpyfDLm40lK-DtG4NsoAnYi0/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5MDcx/Ni0xNTMzNzU2MTU3/LTY4ODUuanBlZw.jpeg'),
(368, 368, 'Eagles', 'Eagles', 13, 1, 'https://i.discogs.com/TWXt5CVudZZ9lDHKrlUpcwwE4WQmqBbDyJTAyBDWqt0/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5MTE1/ODUtMTU0MTQ1NTg2/MS0zNDM1LnBuZw.jpeg'),
(369, 369, 'Louder Than Bombs', 'The Smiths', 53, 1, 'https://i.discogs.com/NSKKm0YBUW7N3PV7Z0vPNh10R-V9pkkwaF7wPGT4sQA/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU2NjIy/NjAtMTM5OTI1NTU0/NS04NzA5LmpwZWc.jpeg'),
(370, 370, 'Mott', 'Mott the Hoople', 47, 1, 'https://i.discogs.com/Hjj3I8SCp9Kza3S9wRHjk2yua8Q-DogHYm5L7vfYgOs/rs:fit/g:sm/q:90/h:492/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNDA1/NjY5LTE0OTY3ODQw/NjktMzYxOC5qcGVn.jpeg'),
(371, 371, 'Whatever People Say I Am, That\'s What I\'m Not', 'Arctic Monkeys', 407, 1, 'https://i.discogs.com/HYH0NvA9JfZyRd_WDlD1Pk103w2Ozb5VNCi3rUnX3Po/rs:fit/g:sm/q:90/h:535/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYwODQz/Mi0xNDYyNTAwNDcz/LTExMTkuanBlZw.jpeg'),
(372, 372, 'Reggatta de Blanc', 'The Police', 15, 5, 'https://i.discogs.com/42rLEBmhd42d1yUp3bFtqvTwT9GNn-eDL8PaHIbEpvE/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU4Mjk5/MDYtMTQyMDgxMDY1/MC02NDIwLmpwZWc.jpeg'),
(373, 373, 'Volunteers', 'Jefferson Airplane', 27, 1, 'https://i.discogs.com/AuSZ_aU8KpSDG6L3JkHDsaeGGSOYcU4S8So-u-qICyE/rs:fit/g:sm/q:90/h:350/w:353/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQwNzg2/MjMtMTM2MDAwMjIy/MS03MDE0LmpwZWc.jpeg'),
(374, 374, 'Siren', 'Roxy Music', 31, 1, 'https://i.discogs.com/M3LJab_ag-sWOvwjAvMVDg6xr8fw6VZnfeYAHdDr1To/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxMDEz/MjktMTQ1NTExNjQw/MC02ODkyLmpwZWc.jpeg'),
(375, 375, 'Late for the Sky', 'Jackson Browne', 225, 1, 'https://i.discogs.com/EgSa6Z4E9CKBwT8ww_N6bCzwinJ_H5NBhg3BLxmVj2U/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NTAw/OTgtMTI0NTY1Njg1/MC5qcGVn.jpeg'),
(376, 376, 'Post', 'Bjork', 221, 256, 'https://i.discogs.com/7YUhMA3WgcxswfwElbGGDQBH433byzX5MIKNDE3D9QY/rs:fit/g:sm/q:90/h:525/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExOTY4/MzMtMTI4NzUyNDgz/My5qcGVn.jpeg'),
(377, 377, 'The Ultimate Collection: 1948-1990', 'John Lee Hooker', 33, 22, 'https://i.discogs.com/j-EeSzw6v47EqJF235Lzr1DA6xraEk-O69z7fURMiFA/rs:fit/g:sm/q:90/h:530/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI0NTEz/MjMtMTI4NDc4ODQw/Mi5qcGVn.jpeg'),
(378, 378, '(What\'s the Story) Morning Glory?', 'Oasis', 221, 5, 'https://i.discogs.com/lOIGRPn1EPtNfNGOTTa9yDu43DRn_eV6rYyAp0cE2Rc/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3MTM0/MS0xMjYyNjEyMzAw/LmpwZWc.jpeg'),
(379, 379, 'CrazySexyCool', 'TLC', 267, 379, 'https://i.discogs.com/iwbBQ8vFPAcC610elN_Wajtro2GK4cpv23AWJI-B1Hg/rs:fit/g:sm/q:90/h:590/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ4ODM3/OTgtMTQ4OTY5NDYy/My02MDUyLmpwZWc.jpeg'),
(380, 380, 'Funky Kingston', 'Toots & The Maytals', 47, 46, 'https://i.discogs.com/Q9Jy1Ti0NRujFiuriDLndTLKw7EuogmU-3jOQ22xvQA/rs:fit/g:sm/q:90/h:225/w:225/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYzOTMx/NTQtMTQxODMzMDcy/Ny00MDQ3LmpwZWc.jpeg'),
(381, 381, 'The Smile Sessions', 'The Beach Boys', 761, 1, 'https://i.discogs.com/iCkNXkmsebsUy_k4uQDW9wPqPMBmLiEMJE1A_S_p7f4/rs:fit/g:sm/q:90/h:600/w:596/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMyMDE3/MDQtMTMyMDI3NDU4/Mi5qcGVn.jpeg'),
(382, 382, 'The Modern Lovers', 'The Modern Lovers', 21, 1, 'https://i.discogs.com/zw882gJNhhXLhp3VA-iygdBieURhZNHqagOivYgwo3U/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNjk1/MDItMTE5Nzg1MDQ3/NS5qcGVn.jpeg'),
(383, 383, 'More Songs About Buildings and Food', 'Talking Heads', 183, 1, 'https://i.discogs.com/Iu7w7fsdPJ0Y8ZRbupV_ZyqnChsf4ZBzSiQxeQq9kQU/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTcwMjcz/MTYtMTQzMTk4NTAx/MC03ODQyLmpwZWc.jpeg'),
(384, 384, 'A Quick One', 'The Who', 3, 1, 'https://i.discogs.com/4C0xjSmysznwg4L0xqN7SUf5EGRgJI4B-i0y_N5MZPI/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMzYy/NjAtMTIxMjU1NzE0/Mi5qcGVn.jpeg'),
(385, 385, '\"Love and Theft\"', 'Bob Dylan', 75, 1, 'https://i.discogs.com/fg39jiaFLQYuaZj_LfBQfkifVEm7nGcY7NGPHO0W1Ow/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc3NjM4/ODYtMTQ0ODI4Njcz/MS01NzQ4LmpwZWc.jpeg'),
(386, 386, 'Pretzel Logic', 'Steely Dan', 225, 145, 'https://i.discogs.com/CfLE-iIgGuGH7JmNzzJdRFN7hn_hTrZ4Bd-CmFdb2Vs/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUxMjM2/Ni0xMzU2OTcwNzkz/LTg0MDAuanBlZw.jpeg'),
(387, 387, 'Enter the Wu_Tang: 36 Chambers', 'Wu Tang Clan', 489, 48, 'https://i.discogs.com/JVtYto3PpCrhttx7V3aR09GKcOlPw4SE8RYrdxaWPTk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1Mzc0/OS0xMTg1MTM0MTM1/LmpwZWc.jpeg'),
(388, 388, 'The Indestructible Beat of Soweto', 'Various Artists', 273, 105, ' https://img.discogs.com/EaeMqRxekvkn_3Y9ZvXc96rythc=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-2033168-1296568734.jpeg.jpg'),
(389, 389, 'The End of the Innocence', 'Don Henley', 311, 1, 'https://i.discogs.com/w-frhmU9ev-X0d6UOq1UqBSKk-JDMfFjy4k75TH73b4/rs:fit/g:sm/q:90/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4NzAy/NTUtMTMxMDEzMDk3/MS5qcGVn.jpeg'),
(390, 390, 'Elephant', 'The White Stripes', 213, 1, 'https://i.discogs.com/cBFsRFEWUhOdn9ZLq77ZMCrHgzbLRIdcpZ6C9eZ7vjU/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU2NzMz/Ni0xMjQ5NTg2MjA1/LmpwZWc.jpeg'),
(391, 391, 'The Pretender', 'Jackson Browne', 21, 1, 'https://i.discogs.com/XSqTPkyNvT7B8b-b25mpwJEjsehcYATjqXX1QHTPeGQ/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0Mzgz/MzYtMTM2NTIyNDIx/NC05ODM2LmpwZWc.jpeg'),
(392, 392, 'Let It Be', 'The Beatles', 45, 1, 'https://i.discogs.com/Kyw7oa2uUzcDvy9wNgnRlSmBsrgDnAYQf317a7Wzq_0/rs:fit/g:sm/q:90/h:634/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc4ODM5/OTMtMTQ1MDg3OTQ2/NS01NjY4LmpwZWc.jpeg'),
(393, 393, 'Kala', 'M.I.A.', 671, 393, 'https://i.discogs.com/PY5T6f5VbdgiBJrriPi2YMwe-Qice5Dbz-kpNXudV8Y/rs:fit/g:sm/q:90/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0MTE1/MjM4LTE1NjgxMjg2/MzItOTk3MC5qcGVn.jpeg'),
(394, 394, 'Good Old Boys', 'Randy Newman', 225, 5, 'https://i.discogs.com/lbuFZMBNLceljQ0lhctjA2BM5MoZqoBs6G2vl-KT0lE/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMzc2/Nzc3LTE1NTMwMzcw/NzQtNDgwMy5qcGVn.jpeg'),
(395, 395, 'Sound of Silver', 'LCD Soundsystem', 671, 63, 'https://i.discogs.com/NyQzLM9qp1Dgzqp-nf4djGFJF-ZwjKkqdC3F2ByYkcM/rs:fit/g:sm/q:90/h:577/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTkzNTU3/Ny0xNDk2NzAzNTc0/LTgzMDcuanBlZw.jpeg'),
(396, 396, 'For Your Pleasure', 'Roxy Music', 47, 1, 'https://i.discogs.com/PFXbuoVSRuB6A4B_uwf7ZmsG2DXq0ojJdnomvMSQceQ/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNTY5/MzYtMTI1NjUyNDU2/OS5qcGVn.jpeg'),
(397, 397, 'Blue Lines', 'Massive Attack', 33, 397, 'https://i.discogs.com/FE6_7n7eghF4PRfkvT7tVkK9BjwLSpRWLVREKF85v-s/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY1NzU0/LTEzMjAwOTczMzMu/anBlZw.jpeg'),
(398, 398, 'Eliminator', 'ZZ Top', 393, 1, 'https://i.discogs.com/_OobDOyHb02YNSNWGiGiJzjKnBYwsufvSngrsNCsJZ4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyOTE2/NDAtMTM2NzA5MzQz/OC0xMzI1LmpwZWc.jpeg'),
(399, 399, 'Rain Dogs', 'Tom Waits', 273, 9, 'https://i.discogs.com/bQxmtekIbFsEM0LxJ3DOMfhJtQ3rNy4-kdbg5ckMLFU/rs:fit/g:sm/q:90/h:607/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTkwNTI2/NS0xNTM1MTMzNDk4/LTMwMzUuanBlZw.jpeg'),
(400, 400, 'Anthology: The Best of The Temptations', 'The Temptations', 221, 400, 'https://i.discogs.com/m3A7AS7C7CQ9-8PvOcBzVw7oioTvpcWI6bLO5X_eW7Y/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3NDEy/NDcyLTE2MTMzNjIz/ODEtOTgzMy5wbmc.jpeg'),
(401, 401, 'Californication', 'Red Hot Chili Peppers', 447, 1, 'https://i.discogs.com/CyHLgusU6vKUZ6AZbiWlLpgtKm2mT05k0NdV5LQvMjM/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyNjY4/MDQtMTQ2MTI5MDIx/Ni03MDEwLmpwZWc.jpeg'),
(402, 402, 'Illmatic', 'Nas', 267, 48, 'https://i.discogs.com/Rjys_h4nXN6o_lynJQkpGiu3S3y9AffdmJgZpz3O2Hw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxMjcy/NjMtMTM1Njg3NjQ2/OC01MzczLmpwZWc.jpeg'),
(403, 403, '(pronounced \'leh-\'nerd \'skin-\'nerd)', 'Lynyrd Skynyrd', 47, 1, 'https://i.discogs.com/ZOHpvlKwmydXNVb1yjRLwlRmFLcAjXR9H5WG3v3oA5w/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQzMDE0/NTYtMTM2MTEzODI4/MS0zOTc4LmpwZWc.jpeg'),
(404, 404, 'Dr. John\'s Gumbo', 'Dr. John', 13, 6, 'https://i.discogs.com/P0XKRH1tSa_DjEczMetqEROtm5_XUaiAHp1Aa7ehEis/rs:fit/g:sm/q:90/h:557/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMzEw/MzktMTI4OTYwMzIw/Mi5qcGVn.jpeg'),
(405, 405, 'Radio City', 'Big Star', 225, 1, 'https://i.discogs.com/f8N_iMqi9Os22Yl1KPmx0XydHQeD1CxFwCZu_4DFXHA/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NTUy/NTgtMTIyMTAyMzA0/OS5qcGVn.jpeg'),
(406, 406, 'Rid of Me', 'PJ Harvey', 489, 1, 'https://i.discogs.com/93Q_Bmf2EtInbUHXBC3lCbL4hvNS5XVbk8VtCxtDiMw/rs:fit/g:sm/q:90/h:231/w:260/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQyNzgw/NTYtMTM2MDUwNDYw/MC00NzQ2LmpwZWc.jpeg'),
(407, 407, 'Sandinista!', 'The Clash', 153, 93, 'https://i.discogs.com/5O4svRa80duMizcHakdce3IDh1FqQGuEf1bcmRGweaU/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMDI0/NS0xMzUzNjg2NzQ2/LTMwODguanBlZw.jpeg'),
(408, 408, 'I Do Not Want What I Haven\'t Got', 'Sinead O\'Connor', 311, 408, 'https://i.discogs.com/Tk2--DFQyJ-R8O-nPecIL28UBrkHO3ERGISfpBFtWn0/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQyMDcy/NS0xMzM3NzM2NjQ0/LTg3OTMuanBlZw.jpeg'),
(409, 409, 'Strange Days', 'The Doors', 1, 1, 'https://i.discogs.com/yZSKSfCtnhvOtd362P19CFN5MVZZLgL4Vy0LkUHh60w/rs:fit/g:sm/q:90/h:596/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYwNTMx/My0xMzQ4Nzk0NjQy/LTE1MjIuanBlZw.jpeg'),
(410, 410, 'Time Out of Mind', 'Bob Dylan', 323, 9, 'https://i.discogs.com/V9nONTrKjNcHPDZ39VqMecVj7xyTrHN27KRJgBI666s/rs:fit/g:sm/q:90/h:573/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk1NDE5/MS0xNTU0Mjk2Mjgw/LTUyMzkuanBlZw.jpeg'),
(411, 411, '461 Ocean Boulevard', 'Eric Clapton', 225, 1, 'https://i.discogs.com/VisrTkhihdSN_RlgMnIZ_z6Qxj0y9f6jq23q_e8pE0s/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU4NTE0/MS0xMzgxODAyNzI1/LTk3MDcuanBlZw.jpeg'),
(412, 412, 'Pink Flag', 'Wire', 51, 1, 'https://i.discogs.com/cknT5IAagyDTJrkxbuC42GhV07djI_2Ca8kooTUF134/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyMzM1/NC0xMzgxOTQ3MDg1/LTc4MTMuanBlZw.jpeg'),
(413, 413, 'Double Nickels on the Dime', 'Minutemen', 91, 1, 'https://i.discogs.com/5XOWCR0j-tPit2_IWhLNu9DTq-E-z79v10Xd9ICPt94/rs:fit/g:sm/q:90/h:622/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMzU3/NTc3LTE1MzM2MTk2/OTYtNjM0MC5qcGVn.jpeg'),
(414, 414, 'Beauty and the Beat', 'The Go Go\'s', 425, 1, 'https://i.discogs.com/OxLO5hWwj3_Qoo4Ho-cZLZmi4cPbMLdaoOEoDyGqRVU/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2ODQz/NDY3LTE2MTAyMDM5/MzMtNTU0NC5qcGVn.jpeg'),
(415, 415, 'Van Halen', 'Van Halen', 183, 1, 'https://i.discogs.com/roczw_NtkkygG6ynC3N_8BtJbPisLXnMk5uawMhE58M/rs:fit/g:sm/q:90/h:600/w:598/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4OTI1/NDktMTM4NzkyNzYw/Ny00MjU3LmpwZWc.jpeg'),
(416, 416, 'Mule Variations', 'Tom Waits', 447, 63, 'https://i.discogs.com/BCezfpn9-KlWzQ9uz2n2nK-1kHNiKK9eE28DaJoj9wA/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMzOTYz/OC0xMzMyNzI2NzA4/LmpwZWc.jpeg'),
(417, 417, 'Boy', 'U2', 153, 1, 'https://s.discogs.com/b83e2252baa910f896e461d65d687a22281d0cdc/images/spacer.gif');
INSERT INTO `album` (`album_id`, `rank`, `album_name`, `artist`, `year_id`, `genre_id`, `artwork_url`) VALUES
(418, 418, 'Band on the Run', 'Paul McCartney & Wings', 47, 1, 'https://i.discogs.com/i7-lwjwc79YmvCnG7kxzxzpTfnJjMhdNFjnEjvbS3o4/rs:fit/g:sm/q:90/h:605/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk0MTgw/MDctMTQ4MDIyMDAx/OS0xNzc0LmpwZWc.jpeg'),
(419, 419, 'Dummy', 'Portishead', 267, 256, 'https://i.discogs.com/RnutmjsUFoEFsfSnTEDhaDsEQvLd_Efx4TcYJ7hJGV0/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMyOTE5/MDMtMTMyNDI1MTQw/OS5qcGVn.jpeg'),
(420, 420, 'The \"Chirping\" Crickets', 'The Crickets', 99, 5, 'https://i.discogs.com/vRvmNuU88Dlnb2GQBPsQu2yZ0L0Y2nWbGFmQG6WbZgE/rs:fit/g:sm/q:90/h:436/w:450/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIxNzc0/MTAtMTI3ODY3MjA0/MS5qcGVn.jpeg'),
(421, 421, 'The Best of the Girl Groups, Volume 1', 'Various Artists', 43, 5, ' https://img.discogs.com/eOQe1ytgsZ-sbm9QO9ZMPzv40Hg=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-3629179-1338043493-4527.jpeg.jpg'),
(422, 422, 'Presenting the Fabulous Ronettes Featuring Veronica', 'The Ronettes', 49, 5, 'https://i.discogs.com/Ur5wUV5GiRrzghp83ruIVjW-DPgWdKqYLZy0xK8m8d4/rs:fit/g:sm/q:90/h:581/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5NDk0/NjMtMTQ3ODYwNzU3/MC01MzM1LmpwZWc.jpeg'),
(423, 423, 'Anthology', 'Diana Ross & The Supremes', 75, 400, 'https://i.discogs.com/PPpVf1DVyxLoIuMq77d8EBbiB8zpuBDfhPvt3vfr82k/rs:fit/g:sm/q:90/h:586/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc5MDMy/NS0xNDkwOTc4ODY5/LTU1OTcuanBlZw.jpeg'),
(424, 424, 'The Rising', 'Bruce Springsteen', 327, 1, 'https://i.discogs.com/hOSFVJ2bQ5KPgZYrUufPel15-tj1YSAOwR3jE_r58_g/rs:fit/g:sm/q:90/h:590/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5MjI3/MTUtMTQzNDEzMjQw/MC0yMjM4LmpwZWc.jpeg'),
(425, 425, 'Grievous Angel', 'Gram Parsons', 225, 31, 'https://i.discogs.com/Pmm_8LTo6YR5XIvyhMHCHA7LLcCDuA5eqSO5rE05UNE/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU4OTQw/MDctMTUxNDI4MzYx/Ni0yMDU3LmpwZWc.jpeg'),
(426, 426, 'Cheap Trick at Budokan', 'Cheap Trick', 183, 1, 'https://i.discogs.com/M36Nu65sRp1zMX419fUQlJCdLtGdRSDfeqrWxsm8Gys/rs:fit/g:sm/q:90/h:608/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4OTA5/OTItMTQ3OTEyMDU0/Ni04Mzg2LmpwZWc.jpeg'),
(427, 427, 'Sleepless', 'Peter Wolf', 327, 180, 'https://i.discogs.com/kC8vyMhhVrulfUOYW0dXR9Y7uYoYjqyR6uc9ClGWK-s/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI0MjM4/MzQtMTQ0NDgxNDIy/Mi0xNzQ5LmpwZWc.jpeg'),
(428, 428, 'Outlandos d\'Amour', 'The Police', 183, 1, 'https://i.discogs.com/6WO2PEXMC7tC3_uNlFdi9RzqphZyUiDTwukl5zcOUJw/rs:fit/g:sm/q:90/h:638/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNzQ0/MjAxLTE1NjAxOTA2/MDctNDg3My5qcGVn.jpeg'),
(429, 429, 'Another Green World', 'Brian Eno', 31, 256, 'https://i.discogs.com/0T478Ug91XATzbpqcOoZEomh3QQAEFJXv5zuMLH5DbM/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNjUy/NS0xNTM4MzAwMzk2/LTg4OTkuanBlZw.jpeg'),
(430, 430, 'Vampire Weekend', 'Vampire Weekend', 671, 1, 'https://i.discogs.com/f7DhSxGjMVjKnlrnpHhQLMgvQ8WyazacBgSS8iNnayA/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NDkz/MzU5LTE1NzU2NjY1/MDctMjI1MC5qcGVn.jpeg'),
(431, 431, 'Stories From the City, Stories From the Sea', 'PJ Harvey', 133, 1, 'https://i.discogs.com/D0DrBJhvUTUx6zoVObahkldhLqUKY_M1jg8S5JTzHEU/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxNTg0/Mi0xMjQ4NDg3ODE0/LmpwZWc.jpeg'),
(432, 432, 'Here Come the Warm Jets', 'Brian Eno', 47, 1, 'https://i.discogs.com/w1DJVJwHSTAg4LX8P-LUAApvXPsB5fZcFYp8u7MCiII/rs:fit/g:sm/q:90/h:602/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM1NjEw/LTE1MDI0NjQ0ODIt/NzgwMC5qcGVn.jpeg'),
(433, 433, 'All Things Must Pass', 'George Harrison', 45, 1, 'https://i.discogs.com/U4wZZX8HApBxdhQGHp5iaZk2F438E3NyLLS2jopQRNo/rs:fit/g:sm/q:90/h:519/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIwNjU2/MjMtMTQwMjYzNTI1/MS0zNjI4LmpwZWc.jpeg'),
(434, 434, '#1 Record', 'Big Star', 13, 1, 'https://i.discogs.com/t5eWaklhDvVf5LDpTdd4ZSaZxjVHSRXtEHC0kfmCZd8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNzQ2/MTUtMTM5MDI1MDI5/NC02NDAzLmpwZWc.jpeg'),
(435, 435, 'In Utero', 'Nirvana', 489, 1, 'https://i.discogs.com/K1KxT8tHIyi9Kg6qnEmaPY0P2n4Q5zXtDDHTf5X5UMU/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2MDk2/MTItMTM2NDM5MDAx/My02ODE0LmpwZWc.jpeg'),
(436, 436, 'Sea Change', 'Beck', 327, 1, 'https://i.discogs.com/JyxYOZlY1EPbcbnDpVtOTOG7tKolvTKcOtWb_QhWgyE/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4MDE1/Ni0xMzgxNDQ2NTM3/LTM3NTMuanBlZw.jpeg'),
(437, 437, 'Tha Carter III', 'Lil Wayne', 873, 361, 'https://i.discogs.com/buzM2wCBHECXdqAsoF43lYPYG8L66l7Nginke3W_1Tk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4MDcy/ODc0LTE2MTcwOTA0/NDQtNTEzOC5wbmc.jpeg'),
(438, 438, 'Boys Don\'t Cry', 'The Cure', 15, 1, 'https://i.discogs.com/f4KAVU8Wlx2dsJLWuvUPd74XD3tQilwdfOQKZY3qhG0/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI0Njg4/ODUtMTM3MTM5ODUx/MC0xNzc0LmpwZWc.jpeg'),
(439, 439, 'Live at the Harlem Square Club, 1963', 'Sam Cooke', 273, 6, 'https://i.discogs.com/SbZ2CNQgQzJ2Ztl7bwN0nF_lF2LM01dyHcLVfoqOdxw/rs:fit/g:sm/q:90/h:600/w:595/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNTQ0/NDUtMTM0NzIxMDAy/OC0xNjUxLmpwZWc.jpeg'),
(440, 440, 'Rum Sodomy & the Lash', 'The Pogues', 273, 31, 'https://i.discogs.com/0_aOd2wC2ZoHkhzDL5q_NEV_TyIt7pSX2sXtSrf0qp4/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUxMzIz/NzctMTU5OTY0Mjk5/Mi01NTEwLmpwZWc.jpeg'),
(441, 441, 'Suicide', 'Suicide', 51, 63, 'https://i.discogs.com/RU7zDsRYOp7-WYGEPOci8bkD8ItdKv6QSL5C3ybNoA0/rs:fit/g:sm/q:90/h:150/w:155/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMzI3/MjEtMTE4NjI0Njg3/Ni5qcGVn.jpeg'),
(442, 442, 'Q: Are We Not Men? A: We Are Devo!', 'DEVO', 183, 1, 'https://i.discogs.com/OOTpag0OeJ8jTIy3VfFZJKmt8VQdtpa3yOnWbEfSpHI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5OTcz/Mi0xMjkwMDYxMzYz/LmpwZWc.jpeg'),
(443, 443, 'In Color', 'Cheap Trick', 51, 1, 'https://i.discogs.com/7GmWS9aFgJNWg23kU1Jt004xIAQAjvB0igS__AaiNOk/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk2NTc2/NTYtMTQ4NDM0OTk2/MS04MjE0LmpwZWc.jpeg'),
(444, 444, 'The World Is a Ghetto', 'War', 13, 6, 'https://i.discogs.com/7gsqLrMWUR2WKoDejN6r2IqDzj4scGUWvOpxDRa1SZg/rs:fit/g:sm/q:90/h:442/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYxMTU5/NS0xNDkwMjg2Mjk2/LTg0NjAuanBlZw.jpeg'),
(445, 445, 'Fly Like an Eagle', 'Steve Miller Band', 21, 1, 'https://i.discogs.com/9L2WRVHkyF8fdNS8LotZiGzwG7Xd9O6jIOtCLC-EYi4/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5ODM1/ODItMTI1NjY4MTA4/OS5qcGVn.jpeg'),
(446, 446, 'Back in the USA', 'MC5', 45, 1, 'https://i.discogs.com/HQ4IsX_GS_RVG39k3bYQ0YkeF8fkGLF7PECW80rPIVM/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU1MDg2/NzgtMTUwNTc3OTg2/MS0yMTc0LmpwZWc.jpeg'),
(447, 447, 'Getz / Gilberto', 'Stan Getz/Joao GilbertofeaturingAntonio Carlos Jobim', 105, 12, ' https://img.discogs.com/ggF3S3B0nxKC7RNL31dD7OG9SlA=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-1198875-1502121556-4334.jpeg.jpg'),
(448, 448, 'Synchronicity', 'The Police', 393, 5, 'https://i.discogs.com/vxin5rhCAo8lAi-PEr4SZ77aOuZjNLfwGXvGB50nnbY/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxMzk3/NC0xMTczMjI0NTgz/LmpwZWc.jpeg'),
(449, 449, 'Third/Sister Lovers', 'Big Star', 183, 1, 'https://i.discogs.com/Sf3Fc8IwmD6bU_LYrdCmDyRY5fOSxhWnDG6UDgB0pm0/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2NDg2/NDQtMTI5NDg4NTY3/OC5qcGVn.jpeg'),
(450, 450, 'For Everyman', 'Jackson Browne', 47, 1, 'https://i.discogs.com/HjWWcDyUBlcCmQYleWdtGUEAf23aS4KifQ9Ib16x_q8/rs:fit/g:sm/q:90/h:198/w:200/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ4Njc2/ODAtMTQxMzAyNzEz/NC05NDIxLmpwZWc.jpeg'),
(451, 451, 'Back to Black', 'Amy Winehouse', 407, 20, 'https://i.discogs.com/syRCX8NaLwK2SMk8X6TVU_DWc8RRqE4b-tebAQ6kVH4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgyNTQz/OC0xNjE3ODE0NDI2/LTU1MjUuanBlZw.jpeg'),
(452, 452, 'John Prine', 'John Prine', 11, 38, 'https://i.discogs.com/u95ikXDFGdhPIpVA0FTg5SnaXkkPNknPTWuvB7eREDg/rs:fit/g:sm/q:90/h:570/w:570/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY4ODM5/NzktMTQyODcxMzg2/OC0zODE5LmpwZWc.jpeg'),
(453, 453, 'Strictly Business', 'EPMD', 53, 48, 'https://i.discogs.com/zA27kRtIj4gxRmQa7KvY_FmY6PfuxV0wZSWj-MKd5_M/rs:fit/g:sm/q:90/h:571/w:578/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk4MDQ0/LTEyMzYxNjY0NzYu/anBlZw.jpeg'),
(454, 454, 'Love It to Death', 'Alice Cooper', 11, 1, 'https://i.discogs.com/UYLJWDf9JAQKxnME-8Dm7hUgA7C6YXmHDBiUlBg91KI/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY5NzU1/NzctMTQ0MDkzNDc2/NC05NTA3LmpwZWc.jpeg'),
(455, 455, 'How Will the Wolf Survive?', 'Los Lobos', 91, 207, 'https://i.discogs.com/qAl3xfAr6-YHJrBWQHBWR4wjyaFQKzDrPh135e6YBDE/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNzc3/NzAtMTMyMDI2MTU4/OS5qcGVn.jpeg'),
(456, 456, 'Here, My Dear', 'Marvin Gaye', 183, 6, 'https://i.discogs.com/O2IYpn9Puqx1xeUpbN_HLWj6eer0Euqs2sRi037LmQs/rs:fit/g:sm/q:90/h:180/w:180/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2OTY4/MjktMTI5Njk4MjA4/MC5qcGVn.jpeg'),
(457, 457, 'Z', 'My Morning Jacket', 235, 1, 'https://i.discogs.com/Pl-zikXUi9bokmOqgeWjsUZg3346YKuJm_Mq6gFKfBo/rs:fit/g:sm/q:90/h:497/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzNzgz/NC0xMTI4OTc5Mzk5/LmpwZWc.jpeg'),
(458, 458, 'Tumbleweed Connection', 'Elton John', 45, 31, 'https://i.discogs.com/SF59QoInmJjiGObwocoFvjm7TKDRdEc0nXJHZYv6gNw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQzOTM3/MzAtMTM2MzcwNjIx/MS00MjU2LmpwZWc.jpeg'),
(459, 459, 'The Drifters\' Golden Hits', 'The Drifters', 19, 89, 'https://i.discogs.com/qFEMoG77T7TDCLwDya8_LotHCILdT1EXIAj7GrP3kXE/rs:fit/g:sm/q:90/h:566/w:567/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY0NTUw/MTAtMTQxOTY4MDk1/NC0yNDMzLmpwZWc.jpeg'),
(460, 460, 'Live Through This', 'Hole', 267, 1, 'https://i.discogs.com/EaC_jDnMcGCQWJD82kP-W8Lvi_NQtrDedi0kNbg4oGI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM2Nzcz/My0xMjkxMTU4NzI2/LmpwZWc.jpeg'),
(461, 461, 'Metal Box', 'Public Image Ltd.', 15, 63, ' https://img.discogs.com/b3nVgbThQMGPKsDhlQ7J_wj9ZRE=/fit-in/150x150/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-358127-1532197896-8323.jpeg.jpg'),
(462, 462, 'Document', 'R.E.M.', 53, 1, 'https://i.discogs.com/7zPHQLiwFISL0pYUj4P7Yk4MwRu_Tn_juw3itOac9BQ/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI5MzY4/MDAtMTMzNjAyNzg1/MS5qcGVn.jpeg'),
(463, 463, 'Heaven Up Here', 'Echo and The Bunnymen', 425, 1, 'https://i.discogs.com/PRabXmbqxhRhVFcyIehGuBWntxB34Y-84nnmIRCcAa0/rs:fit/g:sm/q:90/h:550/w:550/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ2ODUw/Ny0xMzg1MjM5ODA0/LTM3ODIuanBlZw.jpeg'),
(464, 464, 'Hysteria', 'Def Leppard', 53, 1, 'https://i.discogs.com/jr-vgYVngnAdIs-uyHREBUz4Tk_0avnQWdjjjDyX3h0/rs:fit/g:sm/q:90/h:523/w:533/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3NjY5/MTctMTI0MjAxMDg1/MS5qcGVn.jpeg'),
(465, 465, '69 Love Songs', 'The Magnetic Fields', 447, 63, 'https://i.discogs.com/R6nO2A4_u1VY72D7-jJfkscDXPLdM2yd1Jj6apEvt30/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTkyMjkx/NDktMTQ3NzM0MjU0/NC02OTg5LmpwZWc.jpeg'),
(466, 466, 'A Rush of Blood to the Head', 'Coldplay', 327, 1, 'https://i.discogs.com/uIz-trjU_bysD07iY-JU1DDIURWT9nu1uxs5swhSpNc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM2NzMx/NS0xMjg0NDEwNDk0/LmpwZWc.jpeg'),
(467, 467, 'Tunnel of Love', 'Bruce Springsteen', 53, 1, 'https://i.discogs.com/iJSD4PkFK75mTJHQGoYbRdvEW16hbdPaq1_KiZ2YUJI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE3MDkx/OTUtMTYyMDU1OTky/MC0zNDY1LmpwZWc.jpeg'),
(468, 468, 'The Paul Butterfield Blues Band', 'The Paul Butterfield Blues Band', 7, 9, 'https://i.discogs.com/OOTH5PhJL2EGbUTznBgbCEXxPVfOWX4PsZQCMYMFpa4/rs:fit/g:sm/q:90/h:573/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYzMzM3/OTQtMTQxNjcwODY5/MS05MzY1LmpwZWc.jpeg'),
(469, 469, 'The Score', 'Fugees', 499, 48, 'https://i.discogs.com/nIx3vQfR6S2ZPS-KGuYJTaTdlwZa9nhPxM8UBDaYFdw/rs:fit/g:sm/q:90/h:532/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgwMjc0/MS0xNDI3MzEzODkz/LTQ1MjAuanBlZw.jpeg'),
(470, 470, 'Radio', 'L.L. Cool J', 273, 48, 'https://i.discogs.com/1Z9YAkbsG-mxlBNzhOiuvWQKTby6EDWs7HbOz2dZhvQ/rs:fit/g:sm/q:90/h:603/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMzAx/OS0xMjkyMzYxNzgy/LmpwZWc.jpeg'),
(471, 471, 'I Want to See the Bright Lights Tonight', 'Richard & Linda Thompson', 225, 1, 'https://i.discogs.com/pCmEuObinNVf0FEd7TSojFPXcm6XFOCwghtjXwa4c9I/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgzODE0/NjQtMTUzNTI4MDc4/MC01ODAzLmpwZWc.jpeg'),
(472, 472, 'Faith', 'George Michael', 53, 472, 'https://i.discogs.com/9wyPxBCXjpqmIZhlYdpV0VCQ0a1taliCjQiqwPuLkto/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxMzMx/NS0xNTE0NDY2NjUx/LTQ0ODQuanBlZw.jpeg'),
(473, 473, 'The Smiths', 'The Smiths', 91, 1, 'https://i.discogs.com/PmGXSEO2c4jMOWjYrU6RBfZXLasApSROStxW2_5zG5Y/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5Nzgz/MjItMTUyMDg4NTEy/OS0yMzA4LmpwZWc.jpeg'),
(474, 474, 'Proxima estacion: Esperanza', 'Manu Chao', 75, 474, 'https://i.discogs.com/iMMfAxxPU9slnXE-vPgPAZEKsb9J-tXOsLdeKEu2WDI/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg0Mjk2/MTUtMTU1MDE1MDgy/OS0zMjIwLmpwZWc.jpeg'),
(475, 475, 'Armed Forces', 'Elvis Costello & The Attractions', 15, 1, 'https://i.discogs.com/AAiLyMAiaCjDVSTpyCfsoFMM_RL_Ja-ME2l1YvdPkhY/rs:fit/g:sm/q:90/h:598/w:598/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU0NjEw/My0xNDA0OTI2MTgz/LTQ0NDkuanBlZw.jpeg'),
(476, 476, 'Life After Death', 'The Notorious B.I.G.', 323, 48, ' https://img.discogs.com/U-Au3aTbXnfVxhB2cKtqzeJVtFs=/150x150/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/A-65049-1476549718-2125.jpeg.jpg'),
(477, 477, 'Down Every Road', 'Merle Haggard', 499, 38, 'https://i.discogs.com/HBFRBTVuggLhUhVpePe7Q6idCZlBGbD1MHnG__7fKeI/rs:fit/g:sm/q:90/h:586/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMTMy/NzUwLTE1ODI5MTU3/MTAtOTQzOC5qcGVn.jpeg'),
(478, 478, 'All Time Greatest Hits', 'Loretta Lynn', 327, 38, 'https://i.discogs.com/J_FZVAYexzqFLEVzLQZa45yxwrE1r3XGr-IarR9G0cE/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1MTk1/NTQyLTE1ODc5MzY5/MjUtNjAwMC5qcGVn.jpeg'),
(479, 479, 'Maggot Brain', 'Funkadelic', 11, 89, 'https://i.discogs.com/LKBv4tdYvbWvbbTCGXM2QZ-XpRUZf2uGKlSlSgOMlBI/rs:fit/g:sm/q:90/h:609/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc3MzU4/Ny0xMjUyNTkzNTcx/LmpwZWc.jpeg'),
(480, 480, 'Only Built 4 Cuban Linx', 'Raekwon', 221, 48, 'https://i.discogs.com/IW0y3777MvcNZcfsM4uDThqxsKiRYVNarbmTb2QT6Ns/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwODQ1/MjUzLTE1MDUyMzk3/MTItNDE5Mi5qcGVn.jpeg'),
(481, 481, 'Voodoo', 'D\'Angelo', 133, 361, 'https://i.discogs.com/8KRIF_vQEDTH8m9-yGQUrFtOqI5v9EjohREUtEOwZmU/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NzMz/ODYtMTQyMjIxODQ1/NC03ODgyLmpwZWc.jpeg'),
(482, 482, 'Guitar Town', 'Steve Earle', 141, 31, 'https://i.discogs.com/DcUfWjuAI4I_C66YQef1r-aarQaEu5ykGxjMeGTNhfE/rs:fit/g:sm/q:90/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNzk0/OTEtMTI5NjAwMjk1/NS5qcGVn.jpeg'),
(483, 483, 'Entertainment!', 'Gang of Four', 15, 1, 'https://i.discogs.com/ztHkXVIN0IY-UgoiJCQ2mxF7Ny5OgBbid-L0cfR39RI/rs:fit/g:sm/q:90/h:591/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI0Mzc3/NjctMTU5NTc4ODI2/OS03MzIxLmpwZWc.jpeg'),
(484, 484, 'All the Young Dudes', 'Mott the Hoople', 13, 1, 'https://i.discogs.com/D8Ig6MA10Q2a4irRTfdHKn0Tapwhw8ZEdwgRL1YJTrw/rs:fit/g:sm/q:90/h:472/w:461/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjE0/NDYtMTIxMjg1MTI0/Ni5qcGVn.jpeg'),
(485, 485, 'Vitalogy', 'Pearl Jam', 267, 1, 'https://i.discogs.com/t_KyO_TfTMGj4Yq8IEYBBpTLMlkgEcBo8RKKIT1XT1I/rs:fit/g:sm/q:90/h:593/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ2NDkw/NC0xNDk4NzM5NzQ4/LTY3MTUuanBlZw.jpeg'),
(486, 486, 'That\'s the Way of the World', 'Earth, Wind & Fire', 31, 6, 'https://i.discogs.com/GMJcVHoRI4Aih1ncqEdx1KszB0NeAxJpkF6C6wZt4uM/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2NDI3/NDI3LTE2MDc2ODkw/MTItODUwOS5qcGVn.jpeg'),
(487, 487, 'She\'s So Unusual', 'Cyndi Lauper', 393, 63, 'https://i.discogs.com/ZM4qLkP0pKXnUs2I_Hwid_uOpXu1S_VmmfDp4tTj1Nk/rs:fit/g:sm/q:90/h:589/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIwODAw/OC0xNDczMDYxMzY0/LTcxNDEuanBlZw.jpeg'),
(488, 488, 'New Day Rising', 'Husker Du', 273, 1, 'https://i.discogs.com/lHek_bTbJWFwQxRZFt3cjLrx_BdrpwBumVTSSVvMQek/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIzNTI5/MDQtMTI3ODk3MjI3/OS5qcGVn.jpeg'),
(489, 489, 'Destroyer', 'KISS', 21, 1, 'https://i.discogs.com/kwRNWlN_OVS_Px96aXlu8B1DqnjfE18fJmpUyV07J_4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTcwMjUw/NC0xMTQ5NTc0MDE0/LmpwZWc.jpeg'),
(490, 490, 'Tres hombres', 'ZZ Top', 47, 1, 'https://i.discogs.com/BKUfXbZZ9EU-RkzC5klWNsxI5lnLzAeAMQZCfvlrmls/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg0MDE1/OC0xNDY1MjczOTIw/LTcxNDAuanBlZw.jpeg'),
(491, 491, 'Born Under a Bad Sign', 'Albert King', 1, 119, 'https://i.discogs.com/vKHebPgNzgjSLTeVq45k73WFUK-VXnooWKG_yWK6IgI/rs:fit/g:sm/q:90/h:556/w:550/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI0NDE3/MzgtMTM5NzAwOTA5/OC0xNDQ0LmpwZWc.jpeg'),
(492, 492, 'Touch', 'Eurythmics', 393, 179, 'https://i.discogs.com/sUJ5lDxDpY0kGt80wU9YHpCpgoExAyLHgEv2zfue174/rs:fit/g:sm/q:90/h:589/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgxMzk0/ODEtMTQ1ODA1NDUw/My05MDIyLmpwZWc.jpeg'),
(493, 493, 'Yankee Hotel Foxtrot', 'Wilco', 327, 1, 'https://i.discogs.com/GZTjLOTPNerFOKOT3YDI5bLmBWX11ap0PiqDjgXf1Ec/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0MjY1/MjUtMTQwOTMzODUz/NC05MDMyLmpwZWc.jpeg'),
(494, 494, 'Oracular Spectacular', 'MGMT', 671, 152, 'https://i.discogs.com/zCE9TXDKgCiuwC27lJbC1wm1XJQpFgBAIXt_zO8x-Y4/rs:fit/g:sm/q:90/h:543/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyNDIx/ODctMTI5OTg4MDU1/Mi5qcGVn.jpeg'),
(495, 495, 'Give It Up', 'Bonnie Raitt', 13, 1, 'https://i.discogs.com/xnDsdKfKrBkHYNgiJdkGEuZUzWILbOYo0tWDDvmUzcY/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0NTY4/OTktMTM3MzEyMjYw/OS0yOTExLmpwZWc.jpeg'),
(496, 496, 'Boz Scaggs', 'Boz Scaggs', 27, 1, 'https://i.discogs.com/arjyhwf5todYIPHt7nXIK3DXaIiCYZfNtUoTMy9Es6o/rs:fit/g:sm/q:90/h:540/w:565/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIzNzA5/MzQtMTQwODQ3MzIy/OS0zMzkzLmpwZWc.jpeg'),
(497, 497, 'White Blood Cells', 'The White Stripes', 75, 1, 'https://i.discogs.com/3MM7Ta2ajJGGc0tb244jgw45J6gVrJ0XNREhiQpsQ5A/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUwMTY2/MC0xNDYzMjUzNTc1/LTExMTMuanBlZw.jpeg'),
(498, 498, 'The Stone Roses', 'The Stone Roses', 311, 1, 'https://i.discogs.com/J6AJ0RvoWIhVlee8UGo0gABomN04-6ffCuj50WEb8O4/rs:fit/g:sm/q:90/h:615/w:599/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1NjA5/Mi0xNjEzMzcxMzYy/LTQwMzMuanBlZw.jpeg'),
(499, 499, 'Live in Cook County Jail', 'B.B. King', 11, 22, 'https://i.discogs.com/yX2esfPu5BoAEX0Y-1baRNNmt0DPbANkBqjHOsiX-lA/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNTE3/NDEtMTUwNjA5NzM0/OC0zMDQ5LmpwZWc.jpeg'),
(500, 500, 'Aquemini', 'OutKast', 391, 48, 'https://i.discogs.com/q94EFMG0DyHFniqGxTPeSSiljmOz0opkdkKxSQrYIXA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzOTI3/NzcwLTE1NjQyNDk4/NjYtNTQxMC5qcGVn.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `fav_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`fav_id`, `album_id`, `user_id`) VALUES
(8, 3, 13),
(10, 11, 13),
(11, 2, 12),
(13, 7, 12),
(14, 3, 12),
(15, 14, 12),
(16, 19, 12),
(17, 20, 24),
(18, 18, 24),
(19, 13, 24),
(20, 150, 24),
(21, 57, 24),
(22, 56, 12),
(23, 2, 13),
(25, 37, 13);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(22, 'Blues'),
(278, 'Blues, Folk, World, & Country'),
(45, 'Classical, Stage & Screen'),
(256, 'Electronic'),
(400, 'Electronic, Funk / Soul'),
(259, 'Electronic, Funk / Soul, Pop'),
(379, 'Electronic, Hip Hop, Funk / Soul'),
(306, 'Electronic, Hip Hop, Funk / Soul, Pop'),
(277, 'Electronic, Hip Hop, Pop'),
(393, 'Electronic, Hip Hop, Reggae, Pop'),
(179, 'Electronic, Pop'),
(397, 'Electronic, Reggae'),
(63, 'Electronic, Rock'),
(472, 'Electronic, Rock, Funk / Soul, Blues, Pop'),
(187, 'Electronic, Rock, Funk / Soul, Pop'),
(76, 'Electronic, Rock, Funk / Soul, Stage & Screen'),
(152, 'Electronic, Rock, Pop'),
(132, 'Electronic, Stage & Screen'),
(38, 'Folk, World, & Country'),
(6, 'Funk / Soul'),
(119, 'Funk / Soul, Blues'),
(105, 'Funk / Soul, Folk, World, & Country'),
(20, 'Funk / Soul, Pop'),
(72, 'Funk / Soul, Stage & Screen'),
(48, 'Hip Hop'),
(361, 'Hip Hop, Funk / Soul'),
(365, 'Hip Hop, Rock'),
(156, 'Hip Hop, Rock, Funk / Soul'),
(12, 'Jazz'),
(54, 'Jazz, Funk / Soul'),
(101, 'Jazz, Pop'),
(339, 'Jazz, Pop, Folk, World, & Country'),
(145, 'Jazz, Rock'),
(19, 'Jazz, Rock, Blues, Folk, World, & Country'),
(143, 'Jazz, Rock, Funk / Soul, Blues'),
(66, 'Jazz, Rock, Funk / Soul, Folk, World, & Country'),
(71, 'Jazz, Rock, Funk / Soul, Pop, Folk, World, & Country'),
(354, 'Jazz, Rock, Pop'),
(107, 'Latin, Funk / Soul'),
(30, 'Pop'),
(260, 'Pop, Folk, World, & Country'),
(46, 'Reggae'),
(122, 'Reggae,Pop,Folk, World, & Country, Stage & Screen'),
(1, 'Rock'),
(9, 'Rock, Blues'),
(245, 'Rock, Blues, Folk, World, & Country'),
(180, 'Rock, Blues, Pop'),
(31, 'Rock, Folk, World, & Country'),
(89, 'Rock, Funk / Soul'),
(408, 'Rock, Funk / Soul, Blues'),
(311, 'Rock, Funk / Soul, Blues, Pop, Folk, World, & Country'),
(190, 'Rock, Funk / Soul, Folk, World, & Country'),
(58, 'Rock, Funk / Soul, Pop'),
(207, 'Rock, Latin'),
(149, 'Rock, Latin, Funk / Soul'),
(5, 'Rock, Pop'),
(202, 'Rock, Pop, Folk, World, & Country'),
(93, 'Rock, Reggae'),
(474, 'Rock, Reggae, Latin'),
(208, 'Rock, Stage & Screen');

-- --------------------------------------------------------

--
-- Table structure for table `owned`
--

CREATE TABLE `owned` (
  `own_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owned`
--

INSERT INTO `owned` (`own_id`, `user_id`, `album_id`) VALUES
(8, 13, 3),
(10, 13, 11),
(11, 12, 2),
(14, 12, 3),
(15, 12, 14),
(16, 12, 37),
(17, 24, 27),
(18, 24, 157),
(19, 24, 111);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `user_id`, `album_id`, `rating`) VALUES
(10, 13, 11, 5),
(11, 12, 2, 5),
(12, 12, 3, 4),
(13, 12, 46, 5),
(14, 13, 3, 4),
(15, 12, 7, 3),
(16, 12, 14, 4),
(17, 12, 19, 5),
(18, 12, 37, 5),
(19, 24, 18, 5),
(20, 24, 390, 4),
(21, 13, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `account_type` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `surname`, `email`, `password`, `account_type`) VALUES
(11, 'kerrie', 'ross', 'keross@gmail.com', '$2y$10$4GEDEf4gIKabq4pcVwhDSu42Lr9X/FQmvhIdNgYbbBFBWCkOh2wwC', 'admin'),
(12, 'keith', 'rosser', 'keithross@gmail.com', '$2y$10$Cwd5SqLqDalJa1.Fe3l3XugsAGhjVRlxZMN0WaeOmSeexcjW9SAIi', NULL),
(13, 'admin', 'user', 'test@user.com', '$2y$10$kGUTQ9b39vIp0e/.S4NsUuN9G7klbKrVE2pgJjh5F7.CK.ijFZZLq', 'admin'),
(16, 'new', 'user', 'new@user.com', '$2y$10$/hBv9K7Lah1pEe5nF8MfG.KvsQwKZ5cBQqQSYLdbapxwhQizT0716', NULL),
(24, 'pamela', 'rainey', 'p_g_ross@btinternet.com', '$2y$10$JSgYl/8/MYqRhSa1zlSJSOELpv09l09VmZR3tJn4wIXIiYjdDFsB6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `review` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`review_id`, `user_id`, `album_id`, `review`) VALUES
(113, 13, 3, 'This is my favourite beatles album. I really like it.'),
(115, 13, 11, 'really enjoyed this one. brilliant'),
(119, 12, 6, 'a classic. love this one'),
(121, 13, 8, 'great album'),
(122, 24, 390, 'Excellent album'),
(123, 13, 1, 'my favourite beatles album  by far. brilliant');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `year_id` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`year_id`, `year`) VALUES
(201, 1955),
(111, 1956),
(99, 1957),
(307, 1958),
(23, 1959),
(237, 1960),
(433, 1961),
(209, 1962),
(49, 1963),
(105, 1964),
(7, 1965),
(3, 1966),
(1, 1967),
(19, 1968),
(27, 1969),
(45, 1970),
(11, 1971),
(13, 1972),
(47, 1973),
(225, 1974),
(31, 1975),
(21, 1976),
(51, 1977),
(183, 1978),
(15, 1979),
(153, 1980),
(425, 1981),
(39, 1982),
(393, 1983),
(91, 1984),
(273, 1985),
(141, 1986),
(53, 1987),
(95, 1988),
(311, 1989),
(43, 1990),
(33, 1991),
(269, 1992),
(489, 1993),
(267, 1994),
(221, 1995),
(499, 1996),
(323, 1997),
(391, 1998),
(447, 1999),
(133, 2000),
(75, 2001),
(327, 2002),
(213, 2003),
(301, 2004),
(235, 2005),
(407, 2006),
(671, 2007),
(873, 2008),
(705, 2010),
(761, 2011);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_review_approval`
--
ALTER TABLE `admin_review_approval`
  ADD PRIMARY KEY (`approval_id`),
  ADD KEY `fk_approval_album` (`album_id`),
  ADD KEY `fk_approval_user` (`user_id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `fk_year_album` (`year_id`),
  ADD KEY `FK_genre_album` (`genre_id`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`fav_id`),
  ADD KEY `fk_fav_user` (`user_id`),
  ADD KEY `fk_fav_album` (`album_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`),
  ADD UNIQUE KEY `genre` (`genre_name`);

--
-- Indexes for table `owned`
--
ALTER TABLE `owned`
  ADD PRIMARY KEY (`own_id`),
  ADD KEY `FK_own_user` (`user_id`),
  ADD KEY `FK_own_album` (`album_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `fk_rating_album` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `fk_review_user` (`user_id`),
  ADD KEY `fk_review_album` (`album_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`year_id`),
  ADD UNIQUE KEY `year` (`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_review_approval`
--
ALTER TABLE `admin_review_approval`
  MODIFY `approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `owned`
--
ALTER TABLE `owned`
  MODIFY `own_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_review_approval`
--
ALTER TABLE `admin_review_approval`
  ADD CONSTRAINT `fk_approval_album` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `fk_approval_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FK_genre_album` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`),
  ADD CONSTRAINT `fk_year_album` FOREIGN KEY (`year_id`) REFERENCES `years` (`year_id`);

--
-- Constraints for table `favourite`
--
ALTER TABLE `favourite`
  ADD CONSTRAINT `fk_fav_album` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `fk_fav_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `owned`
--
ALTER TABLE `owned`
  ADD CONSTRAINT `FK_own_album` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `FK_own_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_album` FOREIGN KEY (`user_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `fk_rating_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_review`
--
ALTER TABLE `user_review`
  ADD CONSTRAINT `fk_review_album` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `fk_review_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
