-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11-Maio-2021 às 19:58
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `empresa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`IdCategoria`, `Tipo`) VALUES
(1, 'Bebidas'),
(2, 'Condimentos'),
(3, 'Confeitos'),
(4, 'Laticínios'),
(5, 'Grãos/Cereais'),
(6, 'Carnes/Aves'),
(7, 'Hortigranjeiros'),
(8, 'Frutos do Mar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE IF NOT EXISTS `fornecedor` (
  `IdFornec` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(150) DEFAULT NULL,
  `Endereco` varchar(60) DEFAULT NULL,
  `Cidade` varchar(15) DEFAULT NULL,
  `Cep` varchar(10) DEFAULT NULL,
  `Pais` varchar(15) DEFAULT NULL,
  `CodProd` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdFornec`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`IdFornec`, `Nome`, `Endereco`, `Cidade`, `Cep`, `Pais`, `CodProd`) VALUES
(1, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', '450000', 'Alemanha', 2),
(2, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', '450000', 'Mexico', 3),
(3, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', '450000', 'Mexico', 4),
(4, 'Around the Horn', '120 Hanover Sq.', 'London', '480000', 'UK', 1),
(5, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Paris', '480000', 'France', 5),
(6, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', '480000', 'Barem', 7),
(7, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', '480000', 'Alemanha', 14),
(8, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', '28023', 'Espanha', 1),
(9, 'Bon app ', '12, rue des Bouchers', 'Marseille', '13008', 'França', 2),
(10, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canadá', 1),
(11, 'B s Beverages', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'Reino Unido', 4),
(12, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina', 6),
(13, 'Centro comercial Moctezuma', 'Sierras de Granada 9993', 'México D.F.', '05022', 'México', 8),
(14, 'Chop-suey Chinese', 'Hauptstr. 29', 'Bern', '3012', 'Suíça', 9),
(15, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brasil', 3),
(16, '211', '1', '1', '1', '1', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `IdProduto` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(80) DEFAULT NULL,
  `Preco` double DEFAULT NULL,
  `Unidade` varchar(12) DEFAULT NULL,
  `CodCateg` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProduto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`IdProduto`, `Descricao`, `Preco`, `Unidade`, `CodCateg`) VALUES
(1, 'Fita adesiva 3m', 66, '34', 3),
(2, 'Ferro 3/8 construção civil', 43, '54', 1),
(3, 'Tubulação PVC 2 pol', 48, '63', 2),
(4, 'Mesa table 45 x 76', 43, '5', 8),
(5, 'Paquimetro Rus Liv Tx', 43, '21', 1),
(6, 'Chave turquesa 67 A', 8, '76', 3),
(7, 'Chave estrela bifocal 5', 32, '134', 6),
(8, 'Book kit manual 56', 34, '22', 4),
(9, 'Fita dupla face 3m', 21, '34', 2),
(10, 'Espassor hidro oil', 76, '9', 5),
(11, 'Balance trik liz 5', 21, '67', 2),
(12, 'Balance 78', 1, '1', 2),
(17, 'Smart Tv Lg', 2000, '1', 3),
(18, 'Smart Phone', 54, '6', 5),
(19, '55', 5, '5', 4),
(20, '76', 5, '4', 5),
(21, 'CANETA', 5, '1', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
