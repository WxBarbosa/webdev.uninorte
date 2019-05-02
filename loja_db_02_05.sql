-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Maio-2019 às 15:24
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario` bigint(20) DEFAULT NULL,
  `produto` bigint(20) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`id`, `usuario`, `produto`, `data`, `quantidade`, `valor`) VALUES
(1, 5, 10, '2019-05-02 00:00:00', 2, 320.99),
(2, 5, 82, '2019-05-02 02:54:10', 1, 80),
(3, 5, 84, '2019-05-02 02:54:35', 3, 120),
(4, 5, 87, '2019-05-02 02:55:09', 5, 400),
(5, 5, 82, '2019-05-02 08:40:14', 1, 80);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(300) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `preco` decimal(10,0) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `destaque` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `foto`, `nome`, `preco`, `tipo`, `destaque`) VALUES
(9, 'acessorios/bolsa12.png', 'Bolsa Black Acelure', '251', 'Acessorio', 0),
(10, 'acessorios/bolsa22.png', 'Bolsa Verde Osmond', '160', 'Acessorio', 0),
(11, 'acessorios/bolsa3.png', 'Bolsa Acelure', '160', 'Acessorio', 0),
(12, 'acessorios/bolsa4.png', 'Bolsa Bafelli', '300', 'Acessorio', 0),
(13, 'acessorios/bolsa5.png', 'Mochila Coruja', '85', 'Acessorio', 0),
(14, 'acessorios/bolsa6.png', 'Mochila', '150', 'Acessorio', 0),
(15, 'acessorios/bolsa7.png', 'Bolsa', '200', 'Acessorio', 0),
(16, 'acessorios/bolsa8.png', 'Bolsa Pink Mara\'s', '80', 'Acessorio', 0),
(17, 'batom/batom1.png', 'Batom Matte Sensat', '33', 'Batom', 0),
(18, 'batom/batom2.png', 'Batom Cremoso Revlon', '45', 'Batom', 0),
(19, 'batom/batom3.png', 'Batom Matte PowerFull', '80', 'Batom', 0),
(20, 'batom/batom4.png', 'Batom Matific Red', '33', 'Batom', 0),
(21, 'batom/batom5.png', 'Batom Liquido Matte Pink', '30', 'Batom', 0),
(22, 'batom/batom6.png', 'Batom Liquido Matte Cor 72', '20', 'Batom', 0),
(23, 'batom/batom7.png', 'Batom Liquido Matte Amarulla', '25', 'Batom', 0),
(24, 'batom/batom8.png', 'Batom Liquido Matte Metalic', '25', 'Batom', 0),
(25, 'camisas/blusa008.png', 'Blusa Marrom Gucci', '39', 'Camisa', 0),
(26, 'camisas/roupa2.png', 'Blusa Star Wars', '40', 'Camisa', 1),
(27, 'camisas/roupa3.png', 'Jaqueta Feminina', '120', 'Camisa', 1),
(28, 'camisas/roupa4.png', 'Moletom Cropped', '90', 'Camisa', 0),
(29, 'camisas/blusa002.png', 'Blusa Branca com Flores', '40', 'Camisa', 0),
(30, 'camisas/blusa003.png', 'Blusa Pink Floyd', '55', 'Camisa', 0),
(31, 'camisas/blusa004.png', 'Moletom da Marvel', '100', 'Camisa', 0),
(32, 'camisas/blusa005.png', 'Social Branca', '80', 'Camisa', 0),
(33, 'calcados/calcados001.png', 'Sapato Vermelho', '39', 'Calcado', 0),
(34, 'calcados/calcados002.png', 'Sapatinho Amarelo', '70', 'Calcado', 0),
(35, 'calcados/calcados003.png', 'Sapato Azul', '50', 'Calcado', 0),
(36, 'calcados/calcados004.png', 'Sapato Fino Preto', '80', 'Calcado', 0),
(37, 'calcados/calcados005.png', 'Sapato Alto Voltage', '110', 'Calcado', 0),
(38, 'calcados/calcados006.png', 'Sapatilha Fina', '30', 'Calcado', 0),
(39, 'calcados/calcados007.png', 'Sapatinho Dark-Black', '90', 'Calcado', 0),
(40, 'calcados/calcados008.png', 'Sapato  Black Piano', '100', 'Calcado', 0),
(41, 'calcados/calcados008.png', 'Sapato  Black Piano', '100', 'Calcado', 0),
(42, 'shorts/calcas001.png', 'Calça Jeans Azul', '39', 'Short', 0),
(43, 'shorts/calcas002.png', 'Calça Jeans', '40', 'Short', 0),
(44, 'shorts/calcas003.png', 'Calça Legging', '50', 'Short', 0),
(45, 'shorts/calcas004.png', 'Calça Jeans Preta', '90', 'Short', 0),
(46, 'shorts/shorts001.png', 'Short Jeans Preto', '40', 'Short', 0),
(47, 'shorts/shorts002.png', 'Short Jeans Azul', '55', 'Short', 0),
(48, 'shorts/shorts003.png', 'Short Preto', '100', 'Short', 0),
(49, 'shorts/shorts004.png', 'Short Jeans Preto', '80', 'Short', 0),
(50, 'casacos/jaqueta001.png', 'Jaqueta Jeans Claro', '70', 'Casaco', 0),
(51, 'casacos/jaqueta002.png', 'Jaqueta Esportiva Preto', '40', 'Casaco', 0),
(52, 'casacos/jaqueta003.png', 'Jaqueta Preta Longa', '110', 'Casaco', 0),
(53, 'casacos/jaqueta004.png', 'Jaqueta Jeans Azul', '70', 'Casaco', 0),
(54, 'casacos/jaqueta005.png', 'Jaqueta Branca', '80', 'Casaco', 0),
(55, 'casacos/jaqueta006.png', 'Casaco Nadador', '50', 'Casaco', 0),
(56, 'casacos/jaqueta007.png', 'Jaqueta Preta Genérica', '60', 'Casaco', 0),
(57, 'casacos/jaqueta008.png', 'Jaqueta Rosa', '80', 'Casaco', 0),
(58, 'saias/saia001.png', 'Saia Jeans', '39', 'Saia', 0),
(59, 'saias/saia002.png', 'Saia Preta', '40', 'Saia', 0),
(60, 'saias/saia003.png', 'Saia Verde', '50', 'Saia', 0),
(61, 'saias/saia004.png', 'Saia Colorida', '90', 'Saia', 0),
(62, 'saias/vestido001.png', 'Vestido Vermelho', '140', 'Saia', 0),
(63, 'saias/vestido002.png', 'Vestido Colorido', '55', 'Saia', 0),
(64, 'saias/vestido003.png', 'Vestido Preto', '100', 'Saia', 0),
(65, 'saias/vestido004.png', 'Vestido de Bolinha', '80', 'Saia', 0),
(66, 'oculos/oculos1.png', 'BanMar Pink', '120', 'Oculos', 0),
(67, 'oculos/oculos2.png', 'Óculos Blue', '80', 'Oculos', 0),
(68, 'oculos/oculos4.png', 'Óculos Red', '80', 'Oculos', 0),
(69, 'oculos/oculos3.png', 'Óculos Black', '100', 'Oculos', 0),
(70, 'oculos/oculos5.png', 'Yolako Red', '85', 'Oculos', 0),
(71, 'oculos/oculos6.png', 'Vanskar Black', '122', 'Oculos', 0),
(72, 'oculos/oculos7.png', 'Fendi Is Fendi', '200', 'Oculos', 0),
(73, 'oculos/oculos8.png', 'MaxMara Preto', '200', 'Oculos', 0),
(74, 'relogios/relogio1.png', 'Pink Hannah Martin', '60', 'Relogio', 0),
(75, 'relogios/relogio2.png', 'Relógio Dourado', '80', 'Relogio', 0),
(76, 'relogios/relogio3.png', 'Relógio Lilás', '80', 'Relogio', 0),
(77, 'relogios/relogio4.png', 'Relógio Black', '100', 'Relogio', 0),
(78, 'relogios/relogio5.png', 'Yolako Red', '85', 'Relogio', 0),
(79, 'relogios/relogio6.png', 'Vansvar Black', '122', 'Relogio', 0),
(80, 'relogios/relogio7.png', 'Relógio Branco', '200', 'Relogio', 0),
(81, 'relogios/relogio8.png', 'Yolako Dourado', '80', 'Relogio', 0),
(82, 'shorts/roupa1.png', 'Shorts Vermelho', '80', 'Short', 1),
(83, 'camisas/roupa2.png', 'Blusa Star Wars', '40', 'Camisa', 1),
(84, 'oculos/acs1.png', 'Óculos Rosa Espelhado', '40', 'Oculos', 1),
(85, 'oculos/acs2.png', 'Kit da Vult', '115', 'Oculos', 1),
(86, 'acessorios/acs3.png', 'Mochila Wonder Woman', '100', 'Acessorio', 1),
(87, 'calcados/acs4.png', 'Bota Coturno Feminina', '80', 'Calcado', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(250) NOT NULL,
  `sexo` varchar(250) NOT NULL,
  `senha` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `cpf` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `sexo`, `senha`, `email`, `cpf`) VALUES
(1, '24243234', '1', '234234', 'sfsdf@fdsfds.com', '324243243'),
(2, 'Kalita da Silva Ono', '2', '1234', 'kalita.ono@gmail.com', '14234234234'),
(4, 'asdfasdf', '1', '3234234', 'adfsf@dssf.com', '234234234'),
(5, 'Darlison da Silva Osorio', '1', '1234', 'darlison.osorio@gmail.com', '01399566202'),
(7, 'User 2', '1', '1234', 'user2@gmail.com', '12312312312'),
(8, 'Darlison Osorio', '1', '1234', 'user3@user.com', '00000000000'),
(9, 'User4', '1', '1234', 'user4@user.com', '00000000001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `produto` (`produto`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
