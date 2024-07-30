CREATE DATABASE  IF NOT EXISTS `petshop` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `petshop`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: petshop
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Limpeza'),(2,'Higiene'),(3,'Ração'),(4,'Brinquedos'),(5,'Roupas'),(6,'Camas e cobertores'),(7,'Casas');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especie`
--

DROP TABLE IF EXISTS `especie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especie` (
  `idEspecie` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`idEspecie`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especie`
--

LOCK TABLES `especie` WRITE;
/*!40000 ALTER TABLE `especie` DISABLE KEYS */;
INSERT INTO `especie` VALUES (1,'Gato'),(2,'Cachorro'),(3,'Papagaio'),(4,'Arara'),(5,'Hamster');
/*!40000 ALTER TABLE `especie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `Produto_idProduto` int NOT NULL,
  `qtde` int NOT NULL DEFAULT '0',
  `qtdeMinima` int NOT NULL DEFAULT '0',
  `qtdeMaxima` int NOT NULL DEFAULT '0',
  KEY `fk_Estoque_Produto1_idx` (`Produto_idProduto`),
  CONSTRAINT `fk_Estoque_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (3,9,15,23),(5,13,10,20),(6,12,10,20),(7,29,15,50),(8,7,5,15),(9,8,5,15),(10,8,10,20),(11,12,15,20),(12,23,30,50),(13,12,10,25);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `idFornecedor` int NOT NULL AUTO_INCREMENT,
  `nomeFantasia` varchar(45) NOT NULL,
  `razaoSocial` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(12) NOT NULL,
  `cnpj` varchar(14) NOT NULL,
  PRIMARY KEY (`idFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (2,'FornPets','Fornecedora de Pets','contato@fornpets.com','2198765432','98765432000199'),(3,'Pog Company','Pog Company Ltda.','pog@pogers.com','110974931586','69822969000144'),(4,'My Pet Brasil','My Pet Brasil Ltda.','contato@mypetbrasil.com','1129141594','10203622000170'),(5,'Pinscher Da Lelê','Pinscher Da Lelê',' leticiasmendanha@gmail.com','62981092620','12725014000151');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `idLogin` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `senha` varchar(70) NOT NULL,
  `data_acesso` datetime DEFAULT NULL,
  PRIMARY KEY (`idLogin`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','$2a$12$KoAC7Rq1sCUZfbGGVlbrGeLNyuANU1HexnkeZrgOJARwIR8qqqH22','2024-06-07 15:36:48');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prevent_last_login_delete` BEFORE DELETE ON `login` FOR EACH ROW BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM Login;
    IF total <= 1 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Não é possível excluir o último registro de login.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `idMarca` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) NOT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Whiskas'),(2,'GoldeN'),(3,'Pedigree'),(4,'Napi'),(5,'Chalesco'),(6,'Petz'),(7,'GranPlus'),(8,'Modernpet'),(9,'PremieR'),(10,'Akio');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet` (
  `idPet` int NOT NULL AUTO_INCREMENT,
  `Raca_idRaca` int NOT NULL,
  `Fornecedor_idFornecedor` int NOT NULL,
  `valor` decimal(6,2) NOT NULL DEFAULT '0.00',
  `qtde` int NOT NULL DEFAULT '0',
  `idade` enum('Filhote','Adulto') NOT NULL,
  PRIMARY KEY (`idPet`),
  KEY `fk_Pet_Raca1_idx` (`Raca_idRaca`),
  KEY `fk_Pet_Fornecedor1_idx` (`Fornecedor_idFornecedor`),
  CONSTRAINT `fk_Pet_Fornecedor1` FOREIGN KEY (`Fornecedor_idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`) ON DELETE CASCADE,
  CONSTRAINT `fk_Pet_Raca1` FOREIGN KEY (`Raca_idRaca`) REFERENCES `raca` (`idRaca`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES (1,11,2,590.00,2,'Adulto'),(2,6,5,890.00,4,'Filhote'),(3,9,3,1227.90,2,'Adulto'),(4,7,4,250.00,6,'Filhote'),(5,14,3,2876.75,4,'Adulto');
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int NOT NULL AUTO_INCREMENT,
  `Marca_idMarca` int NOT NULL,
  `Categoria_idCategoria` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `precoUnitario` decimal(6,2) NOT NULL,
  `Fornecedor_idFornecedor` int NOT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `marca_idx` (`Marca_idMarca`),
  KEY `fk_Produto_Categoria1_idx` (`Categoria_idCategoria`),
  KEY `fornecedor_idx` (`Fornecedor_idFornecedor`),
  CONSTRAINT `fk_Produto_Categoria1` FOREIGN KEY (`Categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE CASCADE,
  CONSTRAINT `forncedor` FOREIGN KEY (`Fornecedor_idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`),
  CONSTRAINT `marca` FOREIGN KEY (`Marca_idMarca`) REFERENCES `marca` (`idMarca`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (3,5,4,'Osso',9.99,2),(5,5,4,'Dental Bone Médio para Cães',13.40,3),(6,2,3,'Fórmula Mini Bits para Cães Adultos de Porte Pequeno Sabor Frango e Arroz',150.29,2),(7,7,3,'Gourmet Sachê para Cães Adultos Sabor Carne - 100g',3.19,2),(8,4,5,'Meia para Cães - Cores Sortidas',29.99,3),(9,8,5,'Mini Gorro de Natal para Cães e Gatos',19.99,2),(10,6,4,'Macaco de Pelúcia',39.99,3),(11,6,4,'Bicho Preguiça Pelúcia',79.99,3),(12,9,3,'Específica Golden Retriever para Cães Adultos',227.69,4),(13,10,6,'Tapete Cool Mat para Cães',99.99,4);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raca`
--

DROP TABLE IF EXISTS `raca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raca` (
  `idRaca` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `Especie_idEspecie` int NOT NULL,
  PRIMARY KEY (`idRaca`),
  KEY `fk_Raca_Especie1_idx` (`Especie_idEspecie`),
  CONSTRAINT `fk_Raca_Especie1` FOREIGN KEY (`Especie_idEspecie`) REFERENCES `especie` (`idEspecie`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raca`
--

LOCK TABLES `raca` WRITE;
/*!40000 ALTER TABLE `raca` DISABLE KEYS */;
INSERT INTO `raca` VALUES (1,'Labrador',2),(2,'Golden Retriever',2),(3,'Persa',1),(4,'Siamẽs',1),(5,'Azul',4),(6,'Pincher',2),(7,'Anão Russo',5),(8,'Pastor Alemão',2),(9,'Pug',2),(10,'Rottweiler',2),(11,'Bulldog Francês',2),(12,'Himalaio',1),(13,'Azul Russo',1),(14,'Snowshoe',1),(15,'Angorá Turco',1),(16,'Vermelha',4),(17,'Canindé',4),(18,'Anão de Campbell',5),(19,'Roborovski',5),(20,'Sírio Dourado',5);
/*!40000 ALTER TABLE `raca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorio`
--

DROP TABLE IF EXISTS `relatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatorio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sqlRelatorio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorio`
--

LOCK TABLES `relatorio` WRITE;
/*!40000 ALTER TABLE `relatorio` DISABLE KEYS */;
INSERT INTO `relatorio` VALUES (1,'Produtos Abaixo do Estoque Min.','SELECT\r 	p.idProduto as ID_do_Produto,\r 	p.nome as Produto,\r 	e.qtde Estoque_Atual,\r     e.qtdeMinima as Estoque_Minimo,\r 	e.qtdeMaxima as Estoque_Maximo\r FROM produto p\r JOIN estoque e ON p.idProduto = e.Produto_idProduto\r JOIN categoria c ON p.Categoria_idCategoria = c.idCategoria\r WHERE e.qtde <= e.qtdeMinima;'),(2,'Estoque Atual Por Categoria','SELECT \r  	c.nome as Nome_da_Categoria,\r  	SUM(e.qtde) as Estoque_Atual_Total,\r      SUM(e.qtdeMaxima) AS Capacidade_Máxima  FROM produto p\r  JOIN estoque e ON p.idProduto = e.Produto_idProduto\r  JOIN categoria c ON p.Categoria_idCategoria = c.idCategoria\r  GROUP BY p.Categoria_idCategoria ;'),(3,'Valor total de animais a venda','SELECT \n	e.nome as Especie,\n    r.nome AS Raca,\n    SUM(p.valor * p.qtde) AS ValorTotal,\n    (SELECT SUM(valor * qtde) FROM pet) AS ValorTotalGeral\nFROM \n    pet p\nJOIN \n    raca r ON p.Raca_idRaca = r.idRaca\nJOIN\n	especie e ON e.idEspecie = r.Especie_idEspecie\nGROUP BY \n    e.nome, r.nome\nORDER BY \n    e.nome, r.nome;'),(4,'Últimos acessos ao sistema','SELECT email Email, data_acesso Ultimo_acesso FROM petshop.login order by data_acesso;');
/*!40000 ALTER TABLE `relatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'petshop'
--

--
-- Dumping routines for database 'petshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-11 20:07:52
