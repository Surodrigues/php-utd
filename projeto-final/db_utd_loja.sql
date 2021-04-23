-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 22-Abr-2021 às 21:36
-- Versão do servidor: 8.0.24
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_utd_loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Categoria`
--

CREATE TABLE `Categoria` (
  `codcategoria` int NOT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Cidade`
--

CREATE TABLE `Cidade` (
  `codcidade` int NOT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Entrada`
--

CREATE TABLE `Entrada` (
  `codentrada` int NOT NULL,
  `Transportadora_codtransportadora` int DEFAULT NULL,
  `dataped` date DEFAULT NULL,
  `dataentr` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  `frete` double DEFAULT NULL,
  `numnf` int DEFAULT NULL,
  `imposto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Fornecedor`
--

CREATE TABLE `Fornecedor` (
  `codfornecedor` int NOT NULL,
  `Cidade_codcidade` int DEFAULT NULL,
  `fornecedor` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `num` int DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `contato` varchar(255) DEFAULT NULL,
  `cnpj` char(18) DEFAULT NULL,
  `insc` varchar(255) DEFAULT NULL,
  `tel` char(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ItemEntrada`
--

CREATE TABLE `ItemEntrada` (
  `coditementrada` int NOT NULL,
  `Produto_codproduto` int DEFAULT NULL,
  `Entrada_codentrada` int DEFAULT NULL,
  `lote` varchar(255) DEFAULT NULL,
  `qdte` int DEFAULT NULL,
  `valor` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ItemSaida`
--

CREATE TABLE `ItemSaida` (
  `coditemsaida` int NOT NULL,
  `Saida_codsaida` int DEFAULT NULL,
  `Produto_codproduto` int DEFAULT NULL,
  `lote` varchar(255) DEFAULT NULL,
  `qdte` int DEFAULT NULL,
  `valor` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Loja`
--

CREATE TABLE `Loja` (
  `codloja` int NOT NULL,
  `Cidade_codcidade` int DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `num` int DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `tel` char(14) DEFAULT NULL,
  `insc` varchar(255) DEFAULT NULL,
  `cnpj` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Produto`
--

CREATE TABLE `Produto` (
  `codproduto` int NOT NULL,
  `Categoria_codproduto` int DEFAULT NULL,
  `Fornecedor_codfornecedor` int DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `controlado` tinyint(1) DEFAULT NULL,
  `qtdemin` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `Produto`
--

INSERT INTO `Produto` (`codproduto`, `Categoria_codproduto`, `Fornecedor_codfornecedor`, `descricao`, `peso`, `controlado`, `qtdemin`) VALUES
(5, NULL, NULL, 'macarrão', 200, 1, 10),
(10, NULL, NULL, 'Farinha', 1, 1, 15),
(13, NULL, NULL, 'Farinha', 200, 1, 15),
(14, NULL, NULL, 'Arroz', 2, 1, 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Saida`
--

CREATE TABLE `Saida` (
  `codsaida` int NOT NULL,
  `Loja_codloja` int DEFAULT NULL,
  `Transportadora_codtransportadora` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `frete` double DEFAULT NULL,
  `imposto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_notes`
--

CREATE TABLE `tb_notes` (
  `id_note` int NOT NULL,
  `note_value` float(6,2) DEFAULT NULL,
  `note_desc` varchar(255) DEFAULT NULL,
  `note_date` date DEFAULT NULL,
  `note_created_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_profiles`
--

CREATE TABLE `tb_profiles` (
  `id_profile` int NOT NULL,
  `profile_name` varchar(20) NOT NULL,
  `profile_desc` varchar(255) NOT NULL,
  `profile_page` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_profiles`
--

INSERT INTO `tb_profiles` (`id_profile`, `profile_name`, `profile_desc`, `profile_page`) VALUES
(1, 'Administrador', 'Admin da Poha Toda', 'admin.php'),
(2, 'Funcionário', 'Pião', 'func.php'),
(3, 'Cliente', 'O cara mais chato de todos', 'client.php'),
(4, 'Cliente', 'O cara mais chato de todos', 'client.php'),
(5, 'Super Admin', 'Caf&eacute;, &Aacute;gua', 'super_admin.php'),
(6, 'Super Admin 2', 'Caf&eacute;, &Aacute;gua', 'super_admin.php'),
(7, 'Super Admin 3', 'CafÃƒÂ©, ÃƒÂgua', 'super_admin.php'),
(8, 'Super Admin 4', 'Café, Água', 'super_admin.php');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` int NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_birth` date DEFAULT NULL,
  `user_cpf` varchar(25) DEFAULT NULL,
  `user_phone` varchar(25) DEFAULT NULL,
  `user_cellphone` varchar(25) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `user_limit` int DEFAULT NULL,
  `user_created_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `user_name`, `user_email`, `user_password`, `user_birth`, `user_cpf`, `user_phone`, `user_cellphone`, `user_address`, `user_limit`, `user_created_in`, `profile_id`) VALUES
(1, 'Anthony', 'anthony@email.com', '$2y$10$5Ac.tC/syFSa.dOvpdaryOkIRTBzVoaP/laSW9MLU4o1Q9av6Rb5m', '2019-12-01', '123.123.123-00', '(85) 3099-0000', '(85) 99990-0001', 'Rua Bem Alí', 0, '2019-12-18 13:42:21', 1),
(2, 'Pattricia da Silva de Moura', 'paty@email.com', '$2y$10$cBynHBLrsabx1rCgqQsxvuo4QBZSFRhY6G6On9L/39wSG0i7awdUO', '2001-01-01', '12312312312321', '(85) 3099-0268', '213123213132', 'Rua Bem AlÃ­, 23', NULL, '2019-12-18 13:45:32', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Transportadora`
--

CREATE TABLE `Transportadora` (
  `codtransportadora` int NOT NULL,
  `Cidade_codcidade` int DEFAULT NULL,
  `transpotadora` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `num` int DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `cnpj` char(18) DEFAULT NULL,
  `insc` varchar(255) DEFAULT NULL,
  `contato` varchar(255) DEFAULT NULL,
  `tel` char(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`codcategoria`);

--
-- Índices para tabela `Cidade`
--
ALTER TABLE `Cidade`
  ADD PRIMARY KEY (`codcidade`);

--
-- Índices para tabela `Entrada`
--
ALTER TABLE `Entrada`
  ADD PRIMARY KEY (`codentrada`),
  ADD KEY `Transportadora_codtransportadora` (`Transportadora_codtransportadora`);

--
-- Índices para tabela `Fornecedor`
--
ALTER TABLE `Fornecedor`
  ADD PRIMARY KEY (`codfornecedor`),
  ADD KEY `Cidade_codcidade` (`Cidade_codcidade`);

--
-- Índices para tabela `ItemEntrada`
--
ALTER TABLE `ItemEntrada`
  ADD PRIMARY KEY (`coditementrada`),
  ADD KEY `Produto_codproduto` (`Produto_codproduto`),
  ADD KEY `Entrada_codentrada` (`Entrada_codentrada`);

--
-- Índices para tabela `ItemSaida`
--
ALTER TABLE `ItemSaida`
  ADD PRIMARY KEY (`coditemsaida`),
  ADD KEY `Saida_codsaida` (`Saida_codsaida`),
  ADD KEY `Produto_codproduto` (`Produto_codproduto`);

--
-- Índices para tabela `Loja`
--
ALTER TABLE `Loja`
  ADD PRIMARY KEY (`codloja`),
  ADD KEY `Cidade_codcidade` (`Cidade_codcidade`);

--
-- Índices para tabela `Produto`
--
ALTER TABLE `Produto`
  ADD PRIMARY KEY (`codproduto`),
  ADD KEY `Categoria_codproduto` (`Categoria_codproduto`),
  ADD KEY `Fornecedor_codfornecedor` (`Fornecedor_codfornecedor`);

--
-- Índices para tabela `Saida`
--
ALTER TABLE `Saida`
  ADD PRIMARY KEY (`codsaida`),
  ADD KEY `Transportadora_codtransportadora` (`Transportadora_codtransportadora`),
  ADD KEY `Loja_codloja` (`Loja_codloja`);

--
-- Índices para tabela `tb_notes`
--
ALTER TABLE `tb_notes`
  ADD PRIMARY KEY (`id_note`);

--
-- Índices para tabela `tb_profiles`
--
ALTER TABLE `tb_profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- Índices para tabela `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_cpf` (`user_cpf`);

--
-- Índices para tabela `Transportadora`
--
ALTER TABLE `Transportadora`
  ADD PRIMARY KEY (`codtransportadora`),
  ADD KEY `Cidade_codcidade` (`Cidade_codcidade`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Categoria`
--
ALTER TABLE `Categoria`
  MODIFY `codcategoria` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Cidade`
--
ALTER TABLE `Cidade`
  MODIFY `codcidade` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Entrada`
--
ALTER TABLE `Entrada`
  MODIFY `codentrada` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Fornecedor`
--
ALTER TABLE `Fornecedor`
  MODIFY `codfornecedor` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ItemEntrada`
--
ALTER TABLE `ItemEntrada`
  MODIFY `coditementrada` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ItemSaida`
--
ALTER TABLE `ItemSaida`
  MODIFY `coditemsaida` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Loja`
--
ALTER TABLE `Loja`
  MODIFY `codloja` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Produto`
--
ALTER TABLE `Produto`
  MODIFY `codproduto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `Saida`
--
ALTER TABLE `Saida`
  MODIFY `codsaida` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_notes`
--
ALTER TABLE `tb_notes`
  MODIFY `id_note` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_profiles`
--
ALTER TABLE `tb_profiles`
  MODIFY `id_profile` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `Transportadora`
--
ALTER TABLE `Transportadora`
  MODIFY `codtransportadora` int NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `Entrada`
--
ALTER TABLE `Entrada`
  ADD CONSTRAINT `Entrada_ibfk_1` FOREIGN KEY (`Transportadora_codtransportadora`) REFERENCES `Transportadora` (`codtransportadora`);

--
-- Limitadores para a tabela `Fornecedor`
--
ALTER TABLE `Fornecedor`
  ADD CONSTRAINT `Fornecedor_ibfk_1` FOREIGN KEY (`Cidade_codcidade`) REFERENCES `Cidade` (`codcidade`);

--
-- Limitadores para a tabela `ItemEntrada`
--
ALTER TABLE `ItemEntrada`
  ADD CONSTRAINT `ItemEntrada_ibfk_1` FOREIGN KEY (`Produto_codproduto`) REFERENCES `Produto` (`codproduto`),
  ADD CONSTRAINT `ItemEntrada_ibfk_2` FOREIGN KEY (`Entrada_codentrada`) REFERENCES `Entrada` (`codentrada`);

--
-- Limitadores para a tabela `ItemSaida`
--
ALTER TABLE `ItemSaida`
  ADD CONSTRAINT `ItemSaida_ibfk_1` FOREIGN KEY (`Saida_codsaida`) REFERENCES `Saida` (`codsaida`),
  ADD CONSTRAINT `ItemSaida_ibfk_2` FOREIGN KEY (`Produto_codproduto`) REFERENCES `Produto` (`codproduto`);

--
-- Limitadores para a tabela `Loja`
--
ALTER TABLE `Loja`
  ADD CONSTRAINT `Loja_ibfk_1` FOREIGN KEY (`Cidade_codcidade`) REFERENCES `Cidade` (`codcidade`);

--
-- Limitadores para a tabela `Produto`
--
ALTER TABLE `Produto`
  ADD CONSTRAINT `Produto_ibfk_1` FOREIGN KEY (`Categoria_codproduto`) REFERENCES `Categoria` (`codcategoria`),
  ADD CONSTRAINT `Produto_ibfk_2` FOREIGN KEY (`Fornecedor_codfornecedor`) REFERENCES `Fornecedor` (`codfornecedor`);

--
-- Limitadores para a tabela `Saida`
--
ALTER TABLE `Saida`
  ADD CONSTRAINT `Saida_ibfk_1` FOREIGN KEY (`Transportadora_codtransportadora`) REFERENCES `Transportadora` (`codtransportadora`),
  ADD CONSTRAINT `Saida_ibfk_2` FOREIGN KEY (`Loja_codloja`) REFERENCES `Loja` (`codloja`);

--
-- Limitadores para a tabela `Transportadora`
--
ALTER TABLE `Transportadora`
  ADD CONSTRAINT `Transportadora_ibfk_1` FOREIGN KEY (`Cidade_codcidade`) REFERENCES `Cidade` (`codcidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
