-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Mar 2021 pada 15.07
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_ansena`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone_number`, `password`) VALUES
(1, 'Jokowi', 'jokowi@gmail.com', '12345678912', '123123'),
(2, 'fachri albar', 'fachrighiffary@gmail.com', '098098098098', '$2b$09$mOllwWGOnZ0qnW0q4MM2k.Tzv0yLJnOlV1UkIWs5HSnplEvWYfW9W'),
(3, 'asadfsadfassdkfjsd', 'asdkfjsdjk@gmail.vom', '12310928', '$2b$10$BaoWhmN7BMpuDH4Ml8wdTuXAHUDiBUkeD1iMhpB/RW9mvcoHLajY2'),
(4, 'aliando', 'aliando@gmail.com', '098123098', '$2b$04$BIgUxjqpXtgv7iIhgywcnOqAiLSeLHOWMBrauy6jHbGhGurjcjc8y'),
(5, 'fachri', 'fachri@gmail.com', '098098123', '$2b$04$yFUyHvTDL2ntAqX7L1Hy8ekFEx6aQC/PprGzj5VyeFscBOusdboOC'),
(6, 'Boy wiliam', 'alexander@gmail.com', '082226068782', '$2b$04$ZgFG.FzOjI7LATq.DTrPIuK3lxEwts1/Xb22D97Yk00R.1uZS1Dia'),
(7, 'rivan', 'rivan@gmail.com', '123098123', '$2b$04$WXEx6gKkX9RbXjibnBAeU.T7XJuY6KjhfXgVKd7hbAceNXNBa3zQO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
