-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Ago-2018 às 22:17
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testechamada`
--
CREATE DATABASE IF NOT EXISTS `testechamada` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testechamada`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`ID`, `nome`) VALUES
(2, 'Andre'),
(3, 'Ariane'),
(4, 'Evair'),
(5, 'Jefferson'),
(6, 'Leonardo'),
(7, 'Renan');

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamada`
--

CREATE TABLE `chamada` (
  `ID` int(11) NOT NULL,
  `cod_aluno` varchar(20) DEFAULT NULL,
  `presente` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `chamada`
--

INSERT INTO `chamada` (`ID`, `cod_aluno`, `presente`) VALUES
(49, NULL, 1),
(50, NULL, 1),
(51, NULL, 0),
(52, NULL, 0),
(53, NULL, 0),
(54, NULL, 0),
(55, NULL, 0),
(56, NULL, 0),
(57, NULL, 1),
(58, NULL, 0),
(59, NULL, 1),
(60, NULL, 1),
(61, NULL, 0),
(62, NULL, 0),
(63, NULL, 0),
(64, NULL, 0),
(65, NULL, 0),
(66, NULL, 0),
(67, NULL, 1),
(68, NULL, 0),
(69, NULL, 1),
(70, NULL, 1),
(71, NULL, 0),
(72, NULL, 0),
(73, NULL, 0),
(74, NULL, 0),
(75, NULL, 0),
(76, NULL, 0),
(77, NULL, 1),
(78, NULL, 0),
(79, NULL, 1),
(80, NULL, 1),
(81, NULL, 0),
(82, NULL, 0),
(83, NULL, 0),
(84, NULL, 0),
(85, NULL, 0),
(86, NULL, 0),
(87, NULL, 1),
(88, NULL, 0),
(89, NULL, 1),
(90, NULL, 1),
(91, NULL, 0),
(92, NULL, 0),
(93, NULL, 0),
(94, NULL, 0),
(95, NULL, 0),
(96, NULL, 0),
(97, NULL, 1),
(98, NULL, 0),
(99, NULL, 0),
(100, NULL, 1),
(101, NULL, 0),
(102, NULL, 0),
(103, NULL, 0),
(104, NULL, 1),
(105, NULL, 1),
(106, NULL, 1),
(107, NULL, 1),
(108, NULL, 1),
(109, NULL, 1),
(110, NULL, 1),
(111, NULL, 1),
(112, NULL, 1),
(113, NULL, 1),
(114, NULL, 1),
(115, NULL, 1),
(116, NULL, 1),
(117, NULL, 1),
(118, NULL, 1),
(119, NULL, 1),
(120, NULL, 1),
(121, NULL, 1),
(122, NULL, 1),
(123, NULL, 1),
(124, NULL, 1),
(125, NULL, 1),
(126, NULL, 1),
(127, NULL, 1),
(128, NULL, 1),
(129, NULL, 1),
(130, NULL, 1),
(131, NULL, 1),
(132, NULL, 1),
(133, NULL, 1),
(134, NULL, 1),
(135, NULL, 1),
(136, NULL, 1),
(137, NULL, 1),
(138, NULL, 1),
(139, NULL, 0),
(140, NULL, 0),
(141, NULL, 1),
(142, NULL, 0),
(143, NULL, 0),
(144, NULL, 0),
(145, NULL, 0),
(146, NULL, 0),
(147, NULL, 0),
(148, NULL, 0),
(149, NULL, 1),
(150, NULL, 1),
(151, NULL, 1),
(152, NULL, 0),
(153, NULL, 0),
(154, NULL, 0),
(155, NULL, 0),
(156, NULL, 1),
(157, NULL, 1),
(158, NULL, 0),
(159, NULL, 0),
(160, NULL, 0),
(161, NULL, 0),
(162, NULL, 1),
(163, NULL, 0),
(164, NULL, 0),
(165, NULL, 0),
(166, NULL, 0),
(167, NULL, 0),
(168, NULL, 0),
(169, NULL, 0),
(170, NULL, 0),
(171, NULL, 0),
(172, NULL, 0),
(173, NULL, 0),
(174, NULL, 0),
(175, NULL, 0),
(176, NULL, 0),
(177, NULL, 0),
(178, NULL, 0),
(179, NULL, 0),
(180, NULL, 0),
(181, NULL, 0),
(182, NULL, 0),
(183, NULL, 0),
(184, NULL, 0),
(185, NULL, 1),
(186, NULL, 1),
(187, NULL, 0),
(188, NULL, 0),
(189, NULL, 0),
(190, NULL, 0),
(191, NULL, 1),
(192, NULL, 1),
(193, NULL, 0),
(194, NULL, 0),
(195, NULL, 0),
(196, NULL, 0),
(197, NULL, 1),
(198, NULL, 1),
(199, NULL, 0),
(200, NULL, 0),
(201, NULL, 0),
(202, NULL, 0),
(203, NULL, 1),
(204, NULL, 1),
(205, NULL, 0),
(206, NULL, 0),
(207, NULL, 0),
(208, NULL, 0),
(209, NULL, 1),
(210, NULL, 1),
(211, NULL, 0),
(212, NULL, 0),
(213, NULL, 0),
(214, NULL, 0),
(215, NULL, 1),
(216, NULL, 1),
(217, NULL, 0),
(218, NULL, 0),
(219, NULL, 0),
(220, NULL, 0),
(221, NULL, 1),
(222, NULL, 1),
(223, NULL, 0),
(224, NULL, 0),
(225, NULL, 0),
(226, NULL, 0),
(227, NULL, 1),
(228, NULL, 1),
(229, NULL, 0),
(230, NULL, 0),
(231, NULL, 0),
(232, NULL, 0),
(233, NULL, 1),
(234, NULL, 1),
(235, NULL, 0),
(236, NULL, 0),
(237, NULL, 0),
(238, NULL, 0),
(239, NULL, 0),
(240, NULL, 0),
(241, NULL, 0),
(242, NULL, 0),
(243, NULL, 0),
(244, NULL, 0),
(245, NULL, 0),
(246, NULL, 0),
(247, NULL, 0),
(248, NULL, 1),
(249, NULL, 1),
(250, NULL, 1),
(251, NULL, 0),
(252, NULL, 0),
(253, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chamada`
--
ALTER TABLE `chamada`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chamada`
--
ALTER TABLE `chamada`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
