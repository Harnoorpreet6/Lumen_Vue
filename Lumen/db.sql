-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 28, 2025 at 01:23 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: assign
--

-- --------------------------------------------------------

--
-- Table structure for table directors
--

CREATE TABLE directors (
  id int(11) NOT NULL,
  name varchar(255) NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table directors
--

INSERT INTO directors (id, name, created_at, updated_at) VALUES
(1, 'James Cameron', '2025-03-28 13:23:05', '2025-03-28 13:23:05'),
(2, 'Anthony Russo & Joe Russo', '2025-03-28 13:23:05', '2025-03-28 13:23:05'),
(3, 'J.J. Abrams', '2025-03-28 13:23:05', '2025-03-28 13:23:05'),
(4, 'Jon Favreau', '2025-03-28 13:23:05', '2025-03-28 13:23:05'),
(5, 'Colin Trevorrow', '2025-03-28 13:23:05', '2025-03-28 13:23:05'),
(6, 'Justin Lin', '2025-03-28 13:23:05', '2025-03-28 13:23:05'),
(7, 'Joss Whedon', '2025-03-28 13:23:05', '2025-03-28 13:23:05'),
(8, 'Sam Mendes', '2025-03-28 13:23:05', '2025-03-28 13:23:05');

-- --------------------------------------------------------

--
-- Table structure for table movies
--

CREATE TABLE movies (
  id int(11) NOT NULL,
  title varchar(255) NOT NULL,
  short_description text,
  poster varchar(255) DEFAULT NULL,
  director_id int(11) DEFAULT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table movies
--

INSERT INTO movies (id, title, short_description, poster, director_id, created_at, updated_at) VALUES
(1, 'Avatar', 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following orders and protecting an alien civilization.', 'avatar.jpg', 1, '2025-03-28 13:22:16', '2025-03-28 13:22:16'),
(2, 'Avatar: The Way of Water', 'Jake Sully lives with his newfound family formed on the planet of Pandora. Trouble returns, and Jake must work with Neytiri and the army of the Na’vi race.', 'avatar2.jpg', 1, '2025-03-28 13:22:16', '2025-03-28 13:22:16'),
(3, 'Avengers: Endgame', 'After the devastating events of Avengers: Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more.', 'endgame.jpg', 2, '2025-03-28 13:22:16', '2025-03-28 13:22:16'),
(4, 'Star Wars: The Force Awakens', 'Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy.', 'force_awakens.jpg', 3, '2025-03-28 13:22:16', '2025-03-28 13:22:16'),
(5, 'The Lion King', 'After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.', 'lion_king.jpg', 4, '2025-03-28 13:22:16', '2025-03-28 13:22:16'),
(6, 'Jurassic World', 'A new theme park is built on the original site of Jurassic Park. Everything is going well until the park’s newest attraction escapes.', 'jurassic_world.jpg', 5, '2025-03-28 13:22:16', '2025-03-28 13:22:16'),
(7, 'Furious 7', 'Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.', 'furious7.jpg', 6, '2025-03-28 13:22:16', '2025-03-28 13:22:16'),
(8, 'The Avengers', 'Earth’s mightiest heroes must come together to stop Loki and his alien army from enslaving humanity.', 'avengers.jpg', 7, '2025-03-28 13:22:16', '2025-03-28 13:22:16'),
(9, 'Skyfall', 'Bond’s loyalty to M is tested as her past comes back to haunt her. As MI6 comes under attack, 007 must track down and destroy the threat.', 'skyfall.jpg', 8, '2025-03-28 13:22:16', '2025-03-28 13:22:16'),
(10, 'Avengers: Infinity War', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos.', 'infinity_war.jpg', 2, '2025-03-28 13:22:16', '2025-03-28 13:22:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table directors
--
ALTER TABLE directors
  ADD PRIMARY KEY (id);

--
-- Indexes for table movies
--
ALTER TABLE movies
  ADD PRIMARY KEY (id),
  ADD KEY director_id (director_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table directors
--
ALTER TABLE directors
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table movies
--
ALTER TABLE movies
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table movies
--
ALTER TABLE movies
  ADD CONSTRAINT movies_ibfk_1 FOREIGN KEY (director_id) REFERENCES directors (id);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
