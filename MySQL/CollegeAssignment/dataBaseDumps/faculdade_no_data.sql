-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: faculdade
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `faculdade`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `faculdade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `faculdade`;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `ID_Aluno` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int DEFAULT NULL,
  PRIMARY KEY (`ID_Aluno`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `pessoa` (`ID_Pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cadastro_aluno_professor_coordenador`
--

DROP TABLE IF EXISTS `cadastro_aluno_professor_coordenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_aluno_professor_coordenador` (
  `Nome` varchar(25) NOT NULL,
  `CPF` varchar(25) NOT NULL,
  `Data_nascimento` date DEFAULT (_utf8mb4'1900/01/01'),
  `Aluno` tinyint(1) DEFAULT NULL,
  `Professor` tinyint(1) DEFAULT NULL,
  `Coordenador` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cadastro_cursos`
--

DROP TABLE IF EXISTS `cadastro_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_cursos` (
  `Nome` varchar(25) NOT NULL,
  `Coordenador` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cadastro_disciplinas`
--

DROP TABLE IF EXISTS `cadastro_disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_disciplinas` (
  `Nome` varchar(25) NOT NULL,
  `Professor` varchar(25) NOT NULL,
  `Curso` varchar(25) NOT NULL,
  `Periodo` int NOT NULL,
  `Carga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cadastro_maticulas_cursos`
--

DROP TABLE IF EXISTS `cadastro_maticulas_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_maticulas_cursos` (
  `Nome` varchar(25) NOT NULL,
  `Curso` varchar(25) NOT NULL,
  `Periodo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coordenador`
--

DROP TABLE IF EXISTS `coordenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coordenador` (
  `ID_Coordenador` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int DEFAULT NULL,
  PRIMARY KEY (`ID_Coordenador`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  CONSTRAINT `coordenador_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `pessoa` (`ID_Pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `ID_Curso` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(25) DEFAULT NULL,
  `ID_Coordenador` int DEFAULT NULL,
  PRIMARY KEY (`ID_Curso`),
  KEY `ID_Coordenador` (`ID_Coordenador`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`ID_Coordenador`) REFERENCES `coordenador` (`ID_Coordenador`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `ID_Curso_Disciplina` int NOT NULL AUTO_INCREMENT,
  `ID_Curso` int DEFAULT NULL,
  `ID_Disciplina` int DEFAULT NULL,
  `Periodo` int DEFAULT NULL,
  `Carga_Horaria` int DEFAULT NULL,
  PRIMARY KEY (`ID_Curso_Disciplina`),
  KEY `ID_Curso` (`ID_Curso`),
  KEY `ID_Disciplina` (`ID_Disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`ID_Curso`) REFERENCES `curso` (`ID_Curso`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`ID_Disciplina`) REFERENCES `disciplina` (`ID_Disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `ID_Disciplina` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(25) DEFAULT NULL,
  `ID_Professor` int DEFAULT NULL,
  PRIMARY KEY (`ID_Disciplina`),
  KEY `ID_Professor` (`ID_Professor`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`ID_Professor`) REFERENCES `professor` (`ID_Professor`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `disciplina_executada`
--

DROP TABLE IF EXISTS `disciplina_executada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_executada` (
  `ID_Disciplina_Executada` int NOT NULL AUTO_INCREMENT,
  `ID_Aluno` int DEFAULT NULL,
  `ID_Curso_Disciplina` int DEFAULT NULL,
  `Nota_Avaliação_1Bimestre` float(4,2) DEFAULT NULL,
  `Nota_Avaliação_2Bimestre` float(4,2) DEFAULT NULL,
  `Nota_Avaliação_Final` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Disciplina_Executada`),
  KEY `ID_Aluno` (`ID_Aluno`),
  KEY `ID_Curso_Disciplina` (`ID_Curso_Disciplina`),
  CONSTRAINT `disciplina_executada_ibfk_1` FOREIGN KEY (`ID_Aluno`) REFERENCES `aluno` (`ID_Aluno`),
  CONSTRAINT `disciplina_executada_ibfk_2` FOREIGN KEY (`ID_Curso_Disciplina`) REFERENCES `curso_disciplina` (`ID_Curso_Disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matricula_curso`
--

DROP TABLE IF EXISTS `matricula_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula_curso` (
  `ID_Matricula` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int DEFAULT NULL,
  `ID_Aluno` int DEFAULT NULL,
  `ID_Curso` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`ID_Matricula`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  KEY `ID_Aluno` (`ID_Aluno`),
  KEY `ID_Curso` (`ID_Curso`),
  CONSTRAINT `matricula_curso_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `pessoa` (`ID_Pessoa`),
  CONSTRAINT `matricula_curso_ibfk_2` FOREIGN KEY (`ID_Aluno`) REFERENCES `aluno` (`ID_Aluno`),
  CONSTRAINT `matricula_curso_ibfk_3` FOREIGN KEY (`ID_Curso`) REFERENCES `curso` (`ID_Curso`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `ID_Pessoa` int NOT NULL AUTO_INCREMENT,
  `Primeiro_nome` varchar(25) NOT NULL,
  `Ultimo_nome` varchar(25) NOT NULL,
  `CPF` varchar(25) NOT NULL,
  `Data_nascimento` date DEFAULT (_utf8mb4'1900/01/01'),
  PRIMARY KEY (`ID_Pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `ID_Professor` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int DEFAULT NULL,
  PRIMARY KEY (`ID_Professor`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `pessoa` (`ID_Pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-13 19:48:27
