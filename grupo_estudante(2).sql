-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Dez-2020 às 14:11
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `grupo_estudante`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis_acesso`
--

CREATE TABLE `niveis_acesso` (
  `nivel_acesso_id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `criado` datetime NOT NULL,
  `alteracao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `niveis_acesso`
--

INSERT INTO `niveis_acesso` (`nivel_acesso_id`, `nome`, `criado`, `alteracao`) VALUES
(1, 'administrador', '2020-12-21 11:54:26', NULL),
(2, 'financeiro', '2020-12-21 11:54:26', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacoes`
--

CREATE TABLE `situacoes` (
  `situacao_id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `criado` datetime NOT NULL,
  `alteracao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `situacoes`
--

INSERT INTO `situacoes` (`situacao_id`, `nome`, `criado`, `alteracao`) VALUES
(1, 'activo', '2020-12-21 12:05:24', NULL),
(2, 'inativo', '2020-12-21 12:05:24', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `criado` datetime NOT NULL,
  `alteracao` datetime DEFAULT NULL,
  `situacao_id` int(11) NOT NULL,
  `nivel_acesso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nome`, `email`, `criado`, `alteracao`, `situacao_id`, `nivel_acesso_id`) VALUES
(1, 'jussy', NULL, '2020-12-21 12:07:05', NULL, 1, 1),
(2, 'teumiro', NULL, '2020-12-21 12:07:05', NULL, 2, 2),
(3, 'julce', NULL, '2020-12-22 12:59:20', NULL, 2, 2),
(4, 'silvio', NULL, '2020-12-22 12:59:20', NULL, 1, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `niveis_acesso`
--
ALTER TABLE `niveis_acesso`
  ADD PRIMARY KEY (`nivel_acesso_id`);

--
-- Índices para tabela `situacoes`
--
ALTER TABLE `situacoes`
  ADD PRIMARY KEY (`situacao_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `situacao_id` (`situacao_id`),
  ADD KEY `nivel_acesso_id` (`nivel_acesso_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `niveis_acesso`
--
ALTER TABLE `niveis_acesso`
  MODIFY `nivel_acesso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `situacoes`
--
ALTER TABLE `situacoes`
  MODIFY `situacao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`situacao_id`) REFERENCES `situacoes` (`situacao_id`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`nivel_acesso_id`) REFERENCES `niveis_acesso` (`nivel_acesso_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
