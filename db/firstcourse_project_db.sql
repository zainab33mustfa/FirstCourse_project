-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 07:33 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firstcourse_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `CommentID` int(11) NOT NULL,
  `PostID` int(11) NOT NULL,
  `CommentName` varchar(50) NOT NULL,
  `Comment` text NOT NULL,
  `CommentDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`CommentID`, `PostID`, `CommentName`, `Comment`, `CommentDate`) VALUES
(11, 8, 'A', '<p>Ok</p>', '2021-06-13 07:32:32'),
(12, 8, 'B', '<p>Yes</p>', '2021-06-13 07:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `PostID` int(11) NOT NULL,
  `PublisherName` varchar(50) NOT NULL,
  `PostTitle` varchar(50) NOT NULL,
  `PostDetails` text NOT NULL,
  `PostDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`PostID`, `PublisherName`, `PostTitle`, `PostDetails`, `PostDate`) VALUES
(1, 'Ali', 'BLOG ARTICLE SAMPLE', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.\r\n\r\nThe Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.\r\n\r\nThe copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again. And if she hasn’t been rewritten, then they are still using her.\r\n\r\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.', '2021-06-12 20:06:50'),
(2, 'Ahmad Fahad', 'WEBDESIGN TOOLS', 'Nulla viverra ullamcorper diam, vitae ultricies elit maximus vel. Pellentesque gravida, diam at fringilla facilisis, diam erat imperdiet nunc, at congue lectus nisi at sapien. Duis at mi et nunc auctor vehicula. Aenean porta elit vel iaculis cursus. Mauris sollicitudin, enim eu aliquam dignissim, orci sem varius sapien, sed accumsan tortor lorem eget orci. Ut porta elit ac quam bibendum venenatis. Curabitur quis facilisis magna.\r\n\r\nProin suscipit iaculis mi, ac commodo est porta ut. Sed tempus arcu eu nisi interdum facilisis. Nam faucibus euismod purus, a placerat elit. Nunc lobortis lectus orci, quis vulputate orci dictum nec.\r\n\r\n Pellentesque interdum quam risus, nec ultricies leo efficitur ullamcorper. \r\nEtiam mollis vitae nisl a semper. Quisque vehicula tortor est. Sed turpis dui, hendrerit sed finibus in, fermentum vel ipsum. Morbi nec justo ex. Suspendisse eget fringilla sem, sed rutrum orci. Vestibulum dui augue, vestibulum non viverra vitae, elementum nec urna. Vestibulum porta dolor sit amet ligula malesuada ultrices. Integer sed posuere metus, sit amet dignissim neque.', '2021-05-10 23:51:52'),
(3, 'Fahad', 'FEATURES WEBSITES MUST HAVE', 'Aenean quis felis sit amet augue vehicula consequat nec in arcu. Sed gravida nunc at ligula ultricies, in malesuada ligula vulputate. Aenean pharetra nunc id nulla rutrum, vitae ultrices odio ullamcorper. Duis auctor dui porttitor erat porttitor, vel semper odio laoreet. Ut condimentum mattis purus non euismod. Maecenas purus velit, mattis et elit ultricies, efficitur imperdiet ante. Phasellus sed arcu vitae dolor auctor maximus in ac tortor. Donec sagittis, lacus quis luctus commodo, diam odio pellentesque magna, ac tincidunt lacus massa eget erat. Nulla sit amet vestibulum nisi. In eu augue id velit mattis facilisis ut a eros.\r\n\r\nDonec eu libero augue. In ut odio elit. Aenean id nunc id leo bibendum tempus. Aenean id enim blandit, bibendum est ac, convallis lectus. Nunc venenatis dolor quis nulla pellentesque, vitae sodales ex facilisis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus mollis sollicitudin libero, vel consectetur lorem. Donec fringilla suscipit neque, et tincidunt nisl bibendum eleifend. Morbi et fermentum lectus, sagittis vestibulum nulla.', '2021-04-17 22:35:21'),
(4, 'Ahmad Fahad', 'WEBDESIGN TOOLS2', 'Nulla viverra ullamcorper diam, vitae ultricies elit maximus vel. Pellentesque gravida, diam at fringilla facilisis, diam erat imperdiet nunc, at congue lectus nisi at sapien. Duis at mi et nunc auctor vehicula. Aenean porta elit vel iaculis cursus. Mauris sollicitudin, enim eu aliquam dignissim, orci sem varius sapien, sed accumsan tortor lorem eget orci. Ut porta elit ac quam bibendum venenatis. Curabitur quis facilisis magna.\r\n\r\nProin suscipit iaculis mi, ac commodo est porta ut. Sed tempus arcu eu nisi interdum facilisis. Nam faucibus euismod purus, a placerat elit. Nunc lobortis lectus orci, quis vulputate orci dictum nec.\r\n\r\n Pellentesque interdum quam risus, nec ultricies leo efficitur ullamcorper. \r\nEtiam mollis vitae nisl a semper. Quisque vehicula tortor est. Sed turpis dui, hendrerit sed finibus in, fermentum vel ipsum. Morbi nec justo ex. Suspendisse eget fringilla sem, sed rutrum orci. Vestibulum dui augue, vestibulum non viverra vitae, elementum nec urna. Vestibulum porta dolor sit amet ligula malesuada ultrices. Integer sed posuere metus, sit amet dignissim neque.', '2021-05-10 23:51:52'),
(8, 'Muhammad', 'Test 1', '<h2>Test 2</h2><p>Hi New 1</p><ul><li>1</li><li>2</li><li>3</li></ul><figure class=\"table\"><table><tbody><tr><td>a</td><td>b</td><td>n</td></tr><tr><td>1</td><td>2</td><td>3</td></tr></tbody></table></figure>', '2021-06-13 07:31:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `PostID` (`PostID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`PostID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `PostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
