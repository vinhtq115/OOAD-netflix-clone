-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2019 at 06:48 AM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ooad`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `email` char(255) NOT NULL,
  `password` char(100) NOT NULL,
  `ccNumber` char(16) DEFAULT NULL,
  `cvv` char(3) DEFAULT NULL,
  `subscriptionPlan` int(11) NOT NULL DEFAULT '0',
  `expireDate` date DEFAULT NULL,
  `isContentProvider` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`email`, `password`, `ccNumber`, `cvv`, `subscriptionPlan`, `expireDate`, `isContentProvider`) VALUES
('johndoe@example.com', '123456', '1234567890123456', '123', 1, '2019-11-30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `year` int(4) NOT NULL,
  `director` char(50) NOT NULL,
  `actor` char(100) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `plot` text NOT NULL,
  `fileLocation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `year`, `director`, `actor`, `poster`, `plot`, `fileLocation`) VALUES
(1, 'Spider-Man: Far from Home', 2019, 'Jon Watts', 'Tom Holland, Samuel L. Jackson, Jake Gyllenhaal', 'https://image.tmdb.org/t/p/w500/lcq8dVxeeOqHvvgcte707K0KVx5.jpg', 'Peter Parker and his friends go on a summer trip to Europe. However, they will hardly be able to rest - Peter will have to agree to help Nick Fury uncover the mystery of creatures that cause natural disasters and destruction throughout the continent.', 'client/assets/spider.mp4'),
(2, 'Blade Runner 2049', 2017, 'Denis Villeneuve', 'Ryan Gosling, Harrison Ford, Ana de Armas, Sylvia Hoeks, Robin Wright\r\n', 'https://image.tmdb.org/t/p/w500/gajva2L0rPYkEWjzgFlBXCAVBE5.jpg', 'A young blade runner\'s discovery of a long-buried secret leads him to track down former blade runner Rick Deckard, who\'s been missing for thirty years. ', 'client/assets/BD2049.mp4'),
(3, 'John Wick: Chapter 3 - Parabellum', 2019, 'Chad Stahelski', 'Keanu Reeves, Halle Berry, Laurence Fishburne, Mark Dacascos, Asia Kate Dillon', 'https://image.tmdb.org/t/p/w500/ziEuG1essDuWuC5lpWUaw1uXY2O.jpg', 'After gunning down a member of the High Table - the shadowy international assassin\'s guild - legendary hit man John Wick finds himself stripped of the organization\'s protective services. Now stuck with a $14 million bounty on his head, Wick must fight his way through the streets of New York as he becomes the target of the world\'s most ruthless killers.', 'client/assets/johnwick3.mp4'),
(4, 'Pokémon Detective Pikachu', 2019, 'Rob Letterman', 'Ryan Reynolds, Justice Smith, Kathryn Newton', 'https://image.tmdb.org/t/p/w500/wgQ7APnFpf1TuviKHXeEe3KnsTV.jpg', 'Ace detective Harry Goodman goes mysteriously missing, prompting his 21-year-old son, Tim, to find out what happened. Aiding in the investigation is Harry\'s former Pokémon partner, wise-cracking, adorable super-sleuth Detective Pikachu. Finding that they are uniquely equipped to work together, as Tim is the only human who can talk with Pikachu, they join forces to unravel the tangled mystery.', 'client/assets/pokemon.mp4'),
(5, 'Fast & Furious Presents: Hobbs & Shaw', 2019, 'David Leitch', 'Dwayne Johnson, Jason Statham, Hiram Garcia, Chris Morgan', 'https://image.tmdb.org/t/p/w500/kvpNZAQow5es1tSY6XW2jAZuPPG.jpg', 'Brixton Lorr is a cybernetically enhanced soldier who possesses superhuman strength, a brilliant mind and a lethal pathogen that could wipe out half of the world\'s population. It\'s now up to hulking lawman Luke Hobbs and lawless operative Deckard Shaw to put aside their past differences and work together to prevent the seemingly indestructible Lorr from destroying humanity.', 'ffhs'),
(6, 'Johnny English Strikes Again', 2018, 'David Kerr', 'Rowan Atkinson, Ben Miller, Olga Kurylenko, Jake Lacy, Emma Thompson', 'https://image.tmdb.org/t/p/w500/ryACHOzmRJiJEKjatbokudfkO74.jpg', 'When a hacker breaks into the government database and exposes the active undercover agents in Britain, Johnny English is hired to catch the culprit.', 'jesa'),
(7, 'Avengers: Endgame', 2019, 'Anthony Russo, Joe Russo', 'Robert Downey Jr., Chris Evans, Mark Ruffalo', 'https://image.tmdb.org/t/p/w500/or06FN3Dka5tukK1e9sl16pB3iy.jpg', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', 'ave'),
(8, 'The Dark Knight', 2008, 'Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'https://image.tmdb.org/t/p/w500/pKKvCaL1TPTVtbI6EeliyND3api.jpg', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'tdk'),
(9, 'The Godfather', 1972, 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 'https://image.tmdb.org/t/p/w500/rPdtLWNsZmAtoZl9PK7S2wE3qiS.jpg', 'Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.', 'tg'),
(10, 'Dirty Grandpa', 2016, 'Dan Mazer', 'Robert De Niro, Zac Efron, Zoey Deutch', 'https://image.tmdb.org/t/p/w500/cZEx6mB5Ftnt7LvlDjTKXcrTvyg.jpg', 'Jason Kelly is one week away from marrying his boss\'s uber-controlling daughter, putting him on the fast track for a partnership at the law firm. However, when the straight-laced Jason is tricked into driving his foul-mouthed grandfather, Dick, to Daytona for spring break, his pending nuptials are suddenly in jeopardy. Between riotous frat parties, bar fights, and an epic night of karaoke, Dick is on a quest to live his life to the fullest and bring Jason along for the ride.', 'dg'),
(11, 'Interstellar', 2014, 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 'https://image.tmdb.org/t/p/w500/nBNZadXqJSdt05SHLqgT0HuC5Gm.jpg', 'Interstellar chronicles the adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.', 'ist'),
(12, 'WALL·E', 2008, 'Andrew Stanton', 'Ben Burtt, Elissa Knight, Jeff Garlin', 'https://image.tmdb.org/t/p/w500/9cJETuLMc6R0bTWRA5i7ctY9bxk.jpg', 'WALL·E is the last robot left on an Earth that has been overrun with garbage and all humans have fled to outer space. For 700 years he has continued to try and clean up the mess, but has developed some rather interesting human-like qualities. When a ship arrives with a sleek new type of robot, WALL·E thinks he\'s finally found a friend and stows away on the ship when it leaves.', 'walle'),
(13, 'Straight Outta Compton', 2015, 'F. Gary Gray', 'O\'Shea Jackson Jr., Corey Hawkins, Jason Mitchell', 'https://image.tmdb.org/t/p/w500/X7S1RtotXOZNV7OlgCfh5VKZSB.jpg', 'The group NWA emerges from the mean streets of Compton in Los Angeles, California, in the mid-1980s and revolutionizes Hip Hop culture with their music and tales about life in the hood.', 'soc'),
(14, 'Harry Potter and the Deathly Hallows: Part 2', 2011, 'David Yates', 'Daniel Radcliffe, Emma Watson, Rupert Grint', 'https://image.tmdb.org/t/p/w500/fTplI1NCSuEDP4ITLcTps739fcC.jpg', 'Harry, Ron and Hermione continue their quest to vanquish the evil Voldemort once and for all. Just as things begin to look hopeless for the young wizards, Harry discovers a trio of magical objects that endow him with powers to rival Voldemort\'s formidable skills.', 'hpatdhp2');

-- --------------------------------------------------------

--
-- Table structure for table `watchList`
--

CREATE TABLE `watchList` (
  `accountEmail` char(255) NOT NULL,
  `movieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watchList`
--

INSERT INTO `watchList` (`accountEmail`, `movieID`) VALUES
('johndoe@example.com', 1),
('johndoe@example.com', 2),
('johndoe@example.com', 3),
('johndoe@example.com', 4),
('johndoe@example.com', 5),
('johndoe@example.com', 6),
('johndoe@example.com', 7),
('johndoe@example.com', 8),
('johndoe@example.com', 9),
('johndoe@example.com', 10),
('johndoe@example.com', 11),
('johndoe@example.com', 12),
('johndoe@example.com', 13),
('johndoe@example.com', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watchList`
--
ALTER TABLE `watchList`
  ADD PRIMARY KEY (`movieID`),
  ADD KEY `accountEmail` (`accountEmail`,`movieID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `watchList`
--
ALTER TABLE `watchList`
  ADD CONSTRAINT `watchList_ibfk_1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `watchList_ibfk_2` FOREIGN KEY (`accountEmail`) REFERENCES `accounts` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
