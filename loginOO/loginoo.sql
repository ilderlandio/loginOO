-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 23-Mar-2022 às 16:15
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loginoo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `useradmin`
--

DROP TABLE IF EXISTS `useradmin`;
CREATE TABLE IF NOT EXISTS `useradmin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `useradmin`
--

INSERT INTO `useradmin` (`id`, `usuario`, `senha`) VALUES
(1, '$2y$10$QI2VFYAdAWFZf4qCXdjVC.XajbNU0.V2fptFqpojW7qCNAw2v7/e2', '$2y$10$h5F1EwiIlpD2LqYCP9VItum7z1QkGscU6qG98WJWlYxG0w60e7p/O');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `senha`, `email`) VALUES
(2, '$2y$10$GjhJut.RDfb0mj6.qmvDO.bV24NbM8mKW9pbUD4MlU1OCY8Rx64ZG', '$2y$10$xMwbYXyWmJloDQA8rv6Chu1rHewOGEGhoRidX/XPzgcyx7r3OTvEy', 'joao@gmail.com'),
(3, '$2y$10$2WV0pN9l48JSLRZCh84u3u0K.uMhRPSInhW3JfPHzQBcCEyD4BDv6', '$2y$10$CDP0Eju4H7RCvvpG1CWs7eV9AB0mejnWKWXsMDxJmNqgHWMoBUh0O', 'aline@gmail.com'),
(4, '$2y$10$aNzhmM9bjf6N2rSrrmIG5e25khNFZwC1lUcmlf9rpxRYjURPw0ynS', '$2y$10$gn30gXeNu4vf2r6MqEBz9eTZdNyN.O.RPwpiapdSue5YrIko6fDFC', 'marcao@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
