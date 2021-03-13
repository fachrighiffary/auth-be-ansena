-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Mar 2021 pada 20.16
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
-- Struktur dari tabel `blacklist_token`
--

CREATE TABLE `blacklist_token` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `detail_job` longtext NOT NULL,
  `type` varchar(255) NOT NULL,
  `input_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `job`
--

INSERT INTO `job` (`id`, `sender`, `reciever_id`, `detail_job`, `type`, `input_date`) VALUES
(119, 2, 5, 'Bismillah', 'in', '2021-03-13 10:07:37'),
(120, 2, 5, 'Bismillah', 'out', '2021-03-13 10:07:37'),
(121, 2, 5, 'bismillah', 'in', '2021-03-13 10:10:10'),
(122, 2, 5, 'bismillah', 'out', '2021-03-13 10:10:10'),
(123, 2, 5, 'zzzzzzzzskdfsdfsdfewewe', 'in', '2021-03-13 10:11:57'),
(124, 2, 5, 'zzzzzzzzskdfsdfsdfewewe', 'out', '2021-03-13 10:11:57'),
(125, 2, 5, 'fasdfasdc', 'in', '2021-03-13 10:14:42'),
(126, 2, 5, 'fasdfasdc', 'in', '2021-03-13 10:14:42'),
(127, 2, 5, 'fasdfasdc', 'out', '2021-03-13 10:14:42'),
(128, 2, 5, 'fasdfasdc', 'out', '2021-03-13 10:14:42'),
(129, 2, 5, 'Ggyyyjjj', 'in', '2021-03-13 10:18:26'),
(130, 2, 5, 'Ggyyyjjj', 'out', '2021-03-13 10:18:26'),
(131, 2, 5, 'fasdfasd', 'in', '2021-03-13 10:25:01'),
(132, 2, 5, 'fasdfasd', 'out', '2021-03-13 10:25:01'),
(133, 2, 5, 'fasdfasd', 'in', '2021-03-13 10:25:02'),
(134, 2, 5, 'fasdfasd', 'out', '2021-03-13 10:25:02'),
(135, 2, 5, 'Semoga bisa yaa', 'in', '2021-03-13 10:27:44'),
(136, 2, 5, 'Semoga bisa yaa', 'out', '2021-03-13 10:27:44'),
(137, 2, 5, 'bismillah', 'in', '2021-03-13 10:29:55'),
(138, 2, 5, 'bismillah', 'out', '2021-03-13 10:29:55'),
(139, 2, 5, 'bismillah', 'in', '2021-03-13 10:32:46'),
(140, 2, 5, 'bismillah', 'out', '2021-03-13 10:32:46'),
(141, 2, 5, 'coba deh sekali', 'in', '2021-03-13 10:45:21'),
(142, 2, 5, 'coba deh sekali', 'out', '2021-03-13 10:45:21'),
(143, 2, 5, 'masa ga bisa bih', 'in', '2021-03-13 10:51:57'),
(144, 2, 5, 'masa ga bisa bih', 'out', '2021-03-13 10:51:57'),
(145, 2, 5, 'apaa sihhhh error mulu', 'in', '2021-03-13 10:54:15'),
(146, 2, 5, 'apaa sihhhh error mulu', 'out', '2021-03-13 10:54:15'),
(147, 2, 5, 'bismillah', 'in', '2021-03-13 10:55:34'),
(148, 2, 5, 'bismillah', 'out', '2021-03-13 10:55:34'),
(149, 2, 5, 'coba deh', 'in', '2021-03-13 10:58:39'),
(150, 2, 5, 'coba deh', 'out', '2021-03-13 10:58:39'),
(151, 2, 4, 'Uwuwjwj', 'in', '2021-03-13 10:59:24'),
(152, 2, 4, 'Uwuwjwj', 'out', '2021-03-13 10:59:24'),
(153, 2, 5, 'Kerjakan', 'in', '2021-03-13 11:18:56'),
(154, 2, 5, 'Kerjakan', 'out', '2021-03-13 11:18:56'),
(155, 2, 5, 'vdfawqwe', 'in', '2021-03-13 11:23:02'),
(156, 2, 5, 'vdfawqwe', 'out', '2021-03-13 11:23:02'),
(157, 2, 5, 'fachri', 'in', '2021-03-13 11:24:59'),
(158, 2, 5, 'fachri', 'out', '2021-03-13 11:24:59'),
(159, 2, 5, 'Dfttt', 'in', '2021-03-13 11:27:22'),
(160, 2, 5, 'Dfttt', 'out', '2021-03-13 11:27:22'),
(161, 2, 5, 'fsadfasdf', 'in', '2021-03-13 11:29:31'),
(162, 2, 5, 'fsadfasdf', 'out', '2021-03-13 11:29:31'),
(163, 2, 5, 'fsadfasdf', 'in', '2021-03-13 11:29:32'),
(164, 2, 5, 'fsadfasdf', 'out', '2021-03-13 11:29:32'),
(165, 2, 5, 'coba', 'in', '2021-03-13 11:31:31'),
(166, 2, 5, 'coba', 'out', '2021-03-13 11:31:31'),
(167, 2, 5, 'fach', 'in', '2021-03-13 11:32:58'),
(168, 2, 5, 'fach', 'out', '2021-03-13 11:32:58'),
(169, 2, 5, 'fsdf', 'in', '2021-03-13 11:34:06'),
(170, 2, 5, 'fsdf', 'out', '2021-03-13 11:34:06'),
(171, 2, 5, 'asdf', 'in', '2021-03-13 11:36:16'),
(172, 2, 5, 'asdf', 'out', '2021-03-13 11:36:16'),
(173, 2, 5, 'asf', 'in', '2021-03-13 11:37:45'),
(174, 2, 5, 'asf', 'out', '2021-03-13 11:37:45'),
(175, 2, 5, 'fdsaa', 'in', '2021-03-13 11:38:52'),
(176, 2, 5, 'fdsaa', 'out', '2021-03-13 11:38:52'),
(177, 2, 5, 'fffff', 'in', '2021-03-13 11:46:02'),
(178, 2, 5, 'fffff', 'out', '2021-03-13 11:46:02'),
(179, 2, 5, 'fasefq', 'in', '2021-03-13 11:46:48'),
(180, 2, 5, 'fasefq', 'out', '2021-03-13 11:46:48'),
(181, 2, 5, 'sdfasdf', 'in', '2021-03-13 11:49:54'),
(182, 2, 5, 'sdfasdf', 'in', '2021-03-13 11:49:54'),
(183, 2, 5, 'sdfasdf', 'out', '2021-03-13 11:49:54'),
(184, 2, 5, 'sdfasdf', 'out', '2021-03-13 11:49:54'),
(185, 2, 5, 'jjj', 'in', '2021-03-13 11:50:38'),
(186, 2, 5, 'jjj', 'out', '2021-03-13 11:50:38'),
(187, 2, 3, 'aaa', 'in', '2021-03-13 12:02:17'),
(188, 2, 3, 'aaa', 'out', '2021-03-13 12:02:17'),
(189, 2, 3, 'hehe', 'in', '2021-03-13 12:04:08'),
(190, 2, 3, 'hehe', 'out', '2021-03-13 12:04:08'),
(191, 2, 3, 'asdasdsad', 'in', '2021-03-13 12:05:05'),
(192, 2, 3, 'asdasdsad', 'in', '2021-03-13 12:05:05'),
(193, 2, 3, 'asdasdsad', 'out', '2021-03-13 12:05:05'),
(194, 2, 3, 'asdasdsad', 'out', '2021-03-13 12:05:05'),
(195, 2, 3, 'fak', 'in', '2021-03-13 12:08:52'),
(196, 2, 3, 'fak', 'out', '2021-03-13 12:08:52'),
(197, 2, 5, 'ffff', 'in', '2021-03-13 12:27:12'),
(198, 2, 5, 'ffff', 'out', '2021-03-13 12:27:12'),
(199, 2, 4, 'Hdhdh', 'in', '2021-03-13 12:29:22'),
(200, 2, 4, 'Hdhdh', 'out', '2021-03-13 12:29:22'),
(201, 2, 5, 'Halo', 'in', '2021-03-13 12:39:46'),
(202, 2, 5, 'Halo', 'out', '2021-03-13 12:39:46'),
(203, 2, 5, 'Gju', 'in', '2021-03-13 12:42:47'),
(204, 2, 5, 'Gju', 'out', '2021-03-13 12:42:47'),
(205, 2, 4, 'Rrg', 'in', '2021-03-13 12:50:58'),
(206, 2, 4, 'Rrg', 'out', '2021-03-13 12:50:58'),
(207, 2, 4, 'fffasd', 'in', '2021-03-13 12:58:37'),
(208, 2, 4, 'fffasd', 'out', '2021-03-13 12:58:37'),
(209, 2, 6, 'Ukdk', 'in', '2021-03-13 13:05:35'),
(210, 2, 6, 'Ukdk', 'out', '2021-03-13 13:05:35'),
(211, 2, 6, 'Hdn', 'in', '2021-03-13 13:06:01'),
(212, 2, 6, 'Hdn', 'out', '2021-03-13 13:06:01'),
(213, 2, 6, 'Ndi', 'in', '2021-03-13 13:06:33'),
(214, 2, 6, 'Ndi', 'out', '2021-03-13 13:06:33'),
(215, 2, 4, 'Bb', 'in', '2021-03-13 13:07:26'),
(216, 2, 4, 'Bb', 'out', '2021-03-13 13:07:26'),
(217, 2, 4, 'Hh', 'in', '2021-03-13 13:09:39'),
(218, 2, 4, 'Hh', 'out', '2021-03-13 13:09:39'),
(219, 2, 5, 'Hdn', 'in', '2021-03-13 13:10:57'),
(220, 2, 5, 'Hdn', 'out', '2021-03-13 13:10:57'),
(221, 2, 6, 'Hbn', 'in', '2021-03-13 13:11:39'),
(222, 2, 6, 'Hbn', 'out', '2021-03-13 13:11:39'),
(223, 2, 6, 'Hdb', 'in', '2021-03-13 13:11:59'),
(224, 2, 6, 'Hdb', 'out', '2021-03-13 13:11:59'),
(225, 2, 4, 'Jn', 'in', '2021-03-13 13:12:57'),
(226, 2, 4, 'Jn', 'out', '2021-03-13 13:12:57'),
(227, 2, 5, 'Gbn', 'in', '2021-03-13 13:13:24'),
(228, 2, 5, 'Gbn', 'out', '2021-03-13 13:13:24'),
(229, 2, 6, 'Tt', 'in', '2021-03-13 13:13:44'),
(230, 2, 6, 'Tt', 'out', '2021-03-13 13:13:44'),
(231, 2, 3, 'Gtt', 'in', '2021-03-13 13:14:27'),
(232, 2, 3, 'Gtt', 'out', '2021-03-13 13:14:27'),
(233, 2, 5, 'Yy', 'in', '2021-03-13 13:14:59'),
(234, 2, 5, 'Yy', 'out', '2021-03-13 13:14:59'),
(235, 2, 5, '66', 'in', '2021-03-13 13:15:18'),
(236, 2, 5, '66', 'out', '2021-03-13 13:15:18'),
(237, 2, 4, 'Hy', 'in', '2021-03-13 13:15:38'),
(238, 2, 4, 'Hy', 'out', '2021-03-13 13:15:38'),
(239, 2, 4, 'Hh', 'in', '2021-03-13 13:15:59'),
(240, 2, 4, 'Hh', 'out', '2021-03-13 13:15:59'),
(241, 2, 1, '7uj', 'in', '2021-03-13 13:16:27'),
(242, 2, 1, '7uj', 'out', '2021-03-13 13:16:27'),
(243, 2, 5, 'fasd', 'in', '2021-03-13 13:23:12'),
(244, 2, 5, 'fasd', 'out', '2021-03-13 13:23:12'),
(245, 2, 6, 'asdfas', 'in', '2021-03-13 13:24:32'),
(246, 2, 6, 'asdfas', 'out', '2021-03-13 13:24:32'),
(247, 2, 5, 'asfdqq11', 'in', '2021-03-13 13:25:06'),
(248, 2, 5, 'asfdqq11', 'out', '2021-03-13 13:25:06'),
(249, 2, 5, 'kerjakan crud', 'in', '2021-03-13 14:00:36'),
(250, 2, 5, 'kerjakan crud', 'out', '2021-03-13 14:00:36'),
(251, 5, 2, 'kerjakan fitur search', 'in', '2021-03-13 14:01:41'),
(252, 5, 2, 'kerjakan fitur search', 'out', '2021-03-13 14:01:41'),
(253, 2, 5, 'sapu rumah', 'in', '2021-03-13 14:03:45'),
(254, 2, 5, 'sapu rumah', 'out', '2021-03-13 14:03:45'),
(255, 5, 2, 'pel rumah', 'in', '2021-03-13 14:04:32'),
(256, 5, 2, 'pel rumah', 'out', '2021-03-13 14:04:32'),
(257, 5, 2, 'sapu ruang tamu', 'in', '2021-03-13 14:05:07'),
(258, 5, 2, 'sapu ruang tamu', 'out', '2021-03-13 14:05:07'),
(259, 5, 2, 'pel kantor', 'in', '2021-03-13 14:05:48'),
(260, 5, 2, 'pel kantor', 'out', '2021-03-13 14:05:48'),
(261, 2, 5, 'Kerjakan Crud transaksi', 'in', '2021-03-13 14:15:30'),
(262, 2, 5, 'Kerjakan Crud transaksi', 'out', '2021-03-13 14:15:30'),
(263, 5, 2, 'Kerjakan pencarian product', 'in', '2021-03-13 14:17:03'),
(264, 5, 2, 'Kerjakan pencarian product', 'out', '2021-03-13 14:17:03'),
(265, 2, 5, 'siapp boss', 'in', '2021-03-13 14:18:07'),
(266, 2, 5, 'siapp boss', 'out', '2021-03-13 14:18:07'),
(267, 7, 5, 'Testing', 'in', '2021-03-13 14:53:20'),
(268, 7, 5, 'Testing', 'out', '2021-03-13 14:53:20'),
(269, 5, 7, 'sipping ', 'in', '2021-03-13 14:53:43'),
(270, 5, 7, 'sipping ', 'out', '2021-03-13 14:53:43'),
(271, 7, 5, 'Kerjakan tugas hari ini', 'in', '2021-03-13 14:56:27'),
(272, 7, 5, 'Kerjakan tugas hari ini', 'out', '2021-03-13 14:56:27'),
(273, 7, 5, 'test', 'in', '2021-03-13 15:00:32'),
(274, 7, 5, 'test', 'out', '2021-03-13 15:00:32'),
(275, 7, 5, 'test', 'in', '2021-03-13 15:03:12'),
(276, 7, 5, 'test', 'out', '2021-03-13 15:03:12'),
(277, 7, 5, 'asdf', 'in', '2021-03-13 15:06:00'),
(278, 7, 5, 'asdf', 'out', '2021-03-13 15:06:00'),
(279, 7, 5, 'sdf', 'in', '2021-03-13 15:06:42'),
(280, 7, 5, 'sdf', 'out', '2021-03-13 15:06:42'),
(281, 7, 5, 'bismillah', 'in', '2021-03-13 15:07:03'),
(282, 7, 5, 'bismillah', 'out', '2021-03-13 15:07:03'),
(283, 7, 5, 'testing lagi', 'in', '2021-03-13 15:07:19'),
(284, 7, 5, 'testing lagi', 'out', '2021-03-13 15:07:19'),
(285, 5, 7, 'test', 'in', '2021-03-13 15:07:54'),
(286, 5, 7, 'test', 'out', '2021-03-13 15:07:54'),
(287, 7, 5, 'test', 'in', '2021-03-13 15:24:46'),
(288, 7, 5, 'test', 'out', '2021-03-13 15:24:46'),
(289, 5, 7, 'asdfwef', 'in', '2021-03-13 15:25:14'),
(290, 5, 7, 'asdfwef', 'out', '2021-03-13 15:25:14'),
(291, 7, 5, 'sasdf', 'in', '2021-03-13 15:25:34'),
(292, 7, 5, 'sasdf', 'out', '2021-03-13 15:25:34'),
(293, 7, 5, 'htrh trdh', 'in', '2021-03-13 15:27:27'),
(294, 7, 5, 'htrh trdh', 'out', '2021-03-13 15:27:27'),
(295, 7, 5, 'asdfasd', 'in', '2021-03-13 15:29:37'),
(296, 7, 5, 'asdfasd', 'out', '2021-03-13 15:29:37'),
(297, 7, 5, 'asdasdf', 'in', '2021-03-13 15:30:24'),
(298, 7, 5, 'asdasdf', 'out', '2021-03-13 15:30:24'),
(299, 5, 7, 'adfsdf test', 'in', '2021-03-13 15:30:38'),
(300, 5, 7, 'adfsdf test', 'out', '2021-03-13 15:30:38'),
(301, 7, 5, 'qwe', 'in', '2021-03-13 15:31:23'),
(302, 7, 5, 'qwe', 'out', '2021-03-13 15:31:23'),
(303, 7, 5, '123123', 'in', '2021-03-13 15:33:38'),
(304, 7, 5, '123123', 'out', '2021-03-13 15:33:38'),
(305, 5, 7, 'asdf', 'in', '2021-03-13 15:35:20'),
(306, 5, 7, 'asdf', 'out', '2021-03-13 15:35:20'),
(307, 5, 7, 'qweqwe', 'in', '2021-03-13 15:35:39'),
(308, 5, 7, 'qweqwe', 'out', '2021-03-13 15:35:39'),
(309, 7, 5, 'Rr4', 'in', '2021-03-13 15:36:11'),
(310, 7, 5, 'Rr4', 'out', '2021-03-13 15:36:11'),
(311, 7, 5, 'asdf', 'in', '2021-03-13 15:36:42'),
(312, 7, 5, 'asdf', 'out', '2021-03-13 15:36:42'),
(313, 7, 5, 'sadgdsfgs', 'in', '2021-03-13 15:37:12'),
(314, 7, 5, 'sadgdsfgs', 'out', '2021-03-13 15:37:12'),
(315, 5, 7, 'dasfasdfa', 'in', '2021-03-13 15:37:30'),
(316, 5, 7, 'dasfasdfa', 'out', '2021-03-13 15:37:30'),
(317, 7, 5, 'werqwer', 'in', '2021-03-13 15:37:56'),
(318, 7, 5, 'werqwer', 'out', '2021-03-13 15:37:56'),
(319, 5, 7, 'asdfasdf', 'in', '2021-03-13 15:38:18'),
(320, 5, 7, 'asdfasdf', 'out', '2021-03-13 15:38:18'),
(321, 2, 5, 'oke tugas', 'in', '2021-03-13 15:39:47'),
(322, 2, 5, 'oke tugas', 'out', '2021-03-13 15:39:47'),
(323, 2, 5, 'asdfsdfa', 'in', '2021-03-13 15:42:58'),
(324, 2, 5, 'asdfsdfa', 'out', '2021-03-13 15:42:58'),
(325, 5, 2, 'asdfasdf', 'in', '2021-03-13 15:43:15'),
(326, 5, 2, 'asdfasdf', 'out', '2021-03-13 15:43:15'),
(327, 2, 5, 'asdfasdf', 'in', '2021-03-13 15:43:39'),
(328, 2, 5, 'asdfasdf', 'out', '2021-03-13 15:43:39'),
(329, 2, 5, 'waefsafadfa', 'in', '2021-03-13 15:44:05'),
(330, 2, 5, 'waefsafadfa', 'out', '2021-03-13 15:44:05'),
(331, 7, 2, 'kerjakan CRUD', 'in', '2021-03-13 15:47:23'),
(332, 7, 2, 'kerjakan CRUD', 'out', '2021-03-13 15:47:23'),
(333, 7, 2, 'Kirim paket', 'in', '2021-03-13 15:47:47'),
(334, 7, 2, 'Kirim paket', 'out', '2021-03-13 15:47:47'),
(335, 5, 7, 'Menerjakan Project', 'in', '2021-03-13 15:48:47'),
(336, 5, 7, 'Menerjakan Project', 'out', '2021-03-13 15:48:47'),
(337, 5, 7, 'Berankat subuh', 'in', '2021-03-13 15:49:10'),
(338, 5, 7, 'Berankat subuh', 'out', '2021-03-13 15:49:10');

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
-- Indexes for table `blacklist_token`
--
ALTER TABLE `blacklist_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `blacklist_token`
--
ALTER TABLE `blacklist_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
