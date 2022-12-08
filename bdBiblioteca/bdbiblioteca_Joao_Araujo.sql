-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Set-2022 às 13:19
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdbiblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nome_autor` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id_autor`, `nome_autor`, `pais`) VALUES
(1, 'Frank Herbert', 'EUA'),
(2, 'Olga Ravn', 'Dinamarca'),
(3, 'Richard Morgan', 'EUA'),
(4, 'Daniel Silva', 'EUA'),
(5, 'José Rodrigues dos Santos', 'Portugal'),
(6, 'Stephen King', 'EUA'),
(7, 'Joana Marques', 'Portugal'),
(8, 'Ricardo Araújo Pereira', 'Portugal'),
(9, 'Juliet Marillier', 'Alemanha'),
(10, 'Chloe Gong', 'França'),
(11, 'TJ Klune', 'França'),
(12, 'David Costa', 'Brasil'),
(13, 'V.E. Schwab', 'Alemanha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `contato` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `email`, `contato`) VALUES
(1, 'Miguel Antunes', 'mantunes187@gmail.com', 912456789),
(2, 'Armindo Guterres', 'armindo.1963@live.com.pt', 921568793),
(3, 'Rita Rodrigues', 'ritinha111@gmail.com', 963184687),
(4, 'Larissa Ventura', 'lariss_ventura@hotmail.com', 963215897),
(5, 'Roberto Fragoso', 'robfrag@yahoo.com', 928649873),
(6, 'Adélia Custódio', 'adeliaamcustodio@hotmail.com', 913254893),
(7, 'Sofia Velasquez', 'velasquez.sof333@live.com.pt', 916588731),
(8, 'Delfim Pestana', 'pestanas1978@gmail.com', 936544486),
(9, 'Vânia Quaresma', 'vania.quaresma.77@yahoo.com', 926888369),
(10, 'Maria Pardo', 'pardo_maria@hotmail.com', 913654879),
(11, 'Wilson Guimarães', 'wwwilsonnn1994@gmail.com', 963211548),
(12, 'Nilton Godinho', 'nilton_god_@hotmail.com', 923345869),
(13, 'Clara Dantas', 'clarinha2000_1@live.com.pt', 915487358),
(14, 'Emanuel Rocha', 'emanuelonrocks@gmail.com', 962144487),
(15, 'Mark Raposo', 'markfoxx@hotmail.com', 935587694),
(16, 'Tiago Pacheco', 'tigas_pacheco@yahoo.com', 916687943),
(17, 'Raquel Caldas', 'caldas.raquel2001@live.com.pt', 923648776),
(18, 'Miriam Figueiras', 'miri_figueiras4321@hotmail.com', 913478282),
(19, 'Carlos Teixeira', 'carlosjrteixeira@gmail.com', 963188413);

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id_editora` int(11) NOT NULL,
  `nome_editora` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id_editora`, `nome_editora`) VALUES
(1, 'Porto Editora'),
(2, 'LeYa'),
(3, 'Planeta'),
(4, 'Editorial Presença'),
(5, 'Gradiva'),
(6, 'Plátano Editora'),
(7, 'Edições Piaget'),
(8, 'Grupo Lidel'),
(9, 'Livros do Brasil'),
(10, 'Sextante Editora'),
(11, 'Pergaminho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id_emprestimo` int(11) NOT NULL,
  `data_devolucao` date DEFAULT NULL,
  `data_emprestimo` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimo`
--

INSERT INTO `emprestimo` (`id_emprestimo`, `data_devolucao`, `data_emprestimo`, `id_cliente`, `id_livro`) VALUES
(1, '2022-01-06', '2020-12-09', 19, 18),
(2, '2021-08-22', '2019-06-07', 7, 23),
(3, '2022-04-19', '2021-07-14', 11, 10),
(4, '2021-11-02', '2019-04-20', 4, 13),
(5, '2022-05-26', '2019-10-31', 13, 22),
(6, NULL, '2021-09-24', 13, 25),
(7, '2022-04-17', '2022-02-06', 2, 25),
(8, '2022-06-06', '2022-05-25', 17, 10),
(9, '2022-06-24', '2021-01-30', 1, 20),
(10, '2021-06-06', '2020-03-28', 10, 2),
(11, NULL, '2021-11-28', 5, 6),
(12, NULL, '2021-04-21', 16, 29),
(13, NULL, '2021-02-07', 14, 2),
(14, NULL, '2020-10-24', 10, 30),
(15, '2022-07-26', '2022-01-08', 17, 3),
(16, NULL, '2020-04-16', 13, 23),
(17, '2022-07-03', '2019-08-18', 16, 25),
(18, '2021-09-06', '2019-12-25', 19, 13),
(19, NULL, '2021-02-27', 9, 12),
(20, '2021-06-22', '2019-12-18', 7, 14),
(21, NULL, '2021-01-28', 4, 3),
(22, '2021-08-24', '2020-06-14', 13, 21),
(23, '2022-04-26', '2021-12-17', 8, 7),
(24, '2022-05-14', '2019-11-07', 6, 3),
(25, NULL, '2019-11-03', 1, 25),
(26, '2021-03-27', '2020-02-05', 14, 15),
(27, '2020-06-05', '2020-06-04', 10, 16),
(28, '2020-12-28', '2020-11-27', 13, 18),
(29, '2022-01-21', '2019-11-24', 7, 12),
(30, '2021-12-25', '2019-12-01', 3, 23);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ex1`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ex1` (
`id_cliente` int(11)
,`nome` varchar(60)
,`email` varchar(60)
,`contato` int(9)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ex2`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ex2` (
`id_livro` int(11)
,`titulo` varchar(50)
,`id_editora` int(11)
,`id_autor` int(11)
,`id_genero` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ex3`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ex3` (
`id_emprestimo` int(11)
,`id_livro` int(11)
,`id_cliente` int(11)
,`DIAS` int(7)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ex4`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ex4` (
`Livro_Autor` varchar(102)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ex5`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ex5` (
`YEAR(data_emprestimo)` int(4)
,`TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ex6`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ex6` (
`nome_editora` varchar(50)
,`QUANT` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ex7`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ex7` (
`titulo` varchar(50)
,`nome_autor` varchar(50)
,`pais` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ex8`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ex8` (
`genero` varchar(50)
,`COUNT(l.id_livro)` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ex9`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ex9` (
`nome_editora` varchar(50)
,`genero` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id_genero`, `genero`) VALUES
(1, 'Fantasia'),
(2, 'Ficção Científica'),
(3, 'Crónicas'),
(4, 'Contos'),
(5, 'Biografias'),
(6, 'Poesia'),
(7, 'Romance'),
(8, 'Policial e Thiller'),
(9, 'Humor'),
(10, 'Literatura'),
(11, 'Monografias');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id_livro` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `id_editora` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `titulo`, `id_editora`, `id_autor`, `id_genero`) VALUES
(1, 'Leão Da Insanidade', 9, 6, 2),
(2, 'Vigarista Com Pecados', 4, 13, 9),
(3, 'Companheiros Do Rio', 6, 10, 11),
(4, 'Cobras De Vento', 4, 7, 9),
(5, 'Árvores E Guardiões', 4, 11, 2),
(6, 'Agentes E Cães', 9, 3, 6),
(7, 'Influenciar Com Vigor', 3, 2, 4),
(8, 'Conquista Sem Pecado', 9, 3, 10),
(9, 'Chorando Na Tecnologia', 4, 5, 1),
(10, 'Prepare-Se Para As Minas', 7, 11, 4),
(11, 'Sacerdote Dos Perdidos', 4, 10, 7),
(12, 'Chuvas De Desejo', 6, 10, 4),
(13, 'Estrangeiros De Tristeza', 3, 10, 9),
(14, 'Estranhos De Amanhã', 6, 5, 1),
(15, 'Cobras E Defensores', 10, 9, 4),
(16, 'Ratos E Descendentes', 6, 11, 7),
(17, 'União Das Paliçadas', 5, 1, 6),
(18, 'Visão Com Asas', 11, 4, 3),
(19, 'Ainda Respirando Nas Profundezas', 7, 4, 10),
(20, 'Sons Na Minha Esposa', 7, 5, 11),
(21, 'Herói Sem Glória', 4, 12, 4),
(22, 'Falcão Do Vento', 1, 11, 10),
(23, 'Meninas Da Nação', 8, 11, 5),
(24, 'Guardiões Do Mundo', 9, 4, 8),
(25, 'Assassinos E Inimigos', 1, 7, 8),
(26, 'Humanos E Fantasmas', 10, 12, 3),
(27, 'Amaldiçoar Com Força', 3, 4, 10),
(28, 'Clímax Sem Fé', 3, 13, 7),
(29, 'Protegido Pelo Caçador', 3, 1, 6),
(30, 'Prepare-Se Para O Universo', 2, 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para vista `ex1`
--
DROP TABLE IF EXISTS `ex1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex1`  AS SELECT `cliente`.`id_cliente` AS `id_cliente`, `cliente`.`nome` AS `nome`, `cliente`.`email` AS `email`, `cliente`.`contato` AS `contato` FROM `cliente` WHERE `cliente`.`email` like '%gmail%' AND (`cliente`.`contato` like '91%' OR `cliente`.`contato` like '96%')  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `ex2`
--
DROP TABLE IF EXISTS `ex2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex2`  AS SELECT `livro`.`id_livro` AS `id_livro`, `livro`.`titulo` AS `titulo`, `livro`.`id_editora` AS `id_editora`, `livro`.`id_autor` AS `id_autor`, `livro`.`id_genero` AS `id_genero` FROM `livro` WHERE `livro`.`titulo` like '% de %' OR `livro`.`titulo` like '% do %' OR `livro`.`titulo` like '% da %''% da %'  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `ex3`
--
DROP TABLE IF EXISTS `ex3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex3`  AS SELECT `emprestimo`.`id_emprestimo` AS `id_emprestimo`, `emprestimo`.`id_livro` AS `id_livro`, `emprestimo`.`id_cliente` AS `id_cliente`, to_days(curdate()) - to_days(`emprestimo`.`data_emprestimo`) AS `DIAS` FROM `emprestimo` WHERE `emprestimo`.`data_devolucao` is nullnull  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `ex4`
--
DROP TABLE IF EXISTS `ex4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex4`  AS SELECT concat(`l`.`titulo`,', ',`a`.`nome_autor`) AS `Livro_Autor` FROM (`livro` `l` join `autor` `a` on(`l`.`id_autor` = `a`.`id_autor`))  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `ex5`
--
DROP TABLE IF EXISTS `ex5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex5`  AS SELECT DISTINCT year(`e`.`data_emprestimo`) AS `YEAR(data_emprestimo)`, count(`e`.`data_emprestimo`) AS `TOTAL` FROM `emprestimo` AS `e` GROUP BY year(`e`.`data_emprestimo`)  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `ex6`
--
DROP TABLE IF EXISTS `ex6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex6`  AS SELECT `e`.`nome_editora` AS `nome_editora`, count(`l`.`id_livro`) AS `QUANT` FROM (`editora` `e` join `livro` `l` on(`e`.`id_editora` = `l`.`id_editora`)) GROUP BY `e`.`nome_editora` HAVING count(`l`.`id_livro`) > 33  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `ex7`
--
DROP TABLE IF EXISTS `ex7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex7`  AS SELECT `l`.`titulo` AS `titulo`, `a`.`nome_autor` AS `nome_autor`, `a`.`pais` AS `pais` FROM (`livro` `l` join `autor` `a` on(`l`.`id_autor` = `a`.`id_autor`)) WHERE `a`.`pais` in ('EUA','Portugal') ORDER BY `a`.`nome_autor` ASC  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `ex8`
--
DROP TABLE IF EXISTS `ex8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex8`  AS SELECT `g`.`genero` AS `genero`, count(`l`.`id_livro`) AS `COUNT(l.id_livro)` FROM (`genero` `g` join `livro` `l` on(`g`.`id_genero` = `l`.`id_genero`)) GROUP BY `g`.`genero``genero`  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `ex9`
--
DROP TABLE IF EXISTS `ex9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex9`  AS SELECT `e`.`nome_editora` AS `nome_editora`, `g`.`genero` AS `genero` FROM ((`livro` `l` join `editora` `e` on(`l`.`id_editora` = `e`.`id_editora`)) join `genero` `g` on(`l`.`id_genero` = `g`.`id_genero`))  ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices para tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id_emprestimo`),
  ADD KEY `FK_Cliente` (`id_cliente`),
  ADD KEY `FK_Livro` (`id_livro`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `FK_Editora` (`id_editora`),
  ADD KEY `FK_autor` (`id_autor`),
  ADD KEY `FK_Genero` (`id_genero`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `id_editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `id_emprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `FK_Cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `FK_Livro` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `FK_Editora` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id_editora`),
  ADD CONSTRAINT `FK_Genero` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `FK_autor` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
