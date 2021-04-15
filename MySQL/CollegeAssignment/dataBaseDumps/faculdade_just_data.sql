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

USE `faculdade`;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,1),(2,2),(3,3),(4,5),(5,6),(6,8),(7,9),(8,10),(9,12),(10,13),(11,14),(12,15),(13,16),(14,17),(15,18),(16,19),(17,20),(18,21),(19,22),(20,24),(21,25),(22,26),(23,27),(24,28),(25,29);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cadastro_aluno_professor_coordenador`
--

LOCK TABLES `cadastro_aluno_professor_coordenador` WRITE;
/*!40000 ALTER TABLE `cadastro_aluno_professor_coordenador` DISABLE KEYS */;
INSERT INTO `cadastro_aluno_professor_coordenador` VALUES ('Yuri Roriz','283.999.559-06','1998-01-07',1,0,0),('Mateus Cideira','488.731.559-79','2001-04-12',1,0,0),('Rodolfo Vilar','072.210.699-80','2000-08-04',1,0,0),('Alexandre Colaço','011.337.759-26','1965-08-15',0,1,0),('Ioan Sabrosa','867.953.889-21','2001-02-11',1,0,0),('Daniil Lancastre','070.389.019-07','1998-05-09',1,0,0),('Kauan Madruga','898.873.539-06','1976-02-18',0,0,1),('Evelin Charneca','146.411.179-00','1997-11-07',1,0,0),('Louisa Lameiras','795.267.339-40','2002-02-06',1,0,0),('Marta Fialho','273.808.149-58','2001-12-04',1,0,0),('Henrique Fiães','044.962.029-80','1982-08-17',0,1,0),('Maxim Tristão','870.813.799-40','1974-12-10',1,1,1),('Uriel Henriques','064.679.369-14','2002-07-26',1,0,0),('Ravi Estrada','559.483.019-74','1999-12-02',1,0,0),('Penélope Azeredo','038.923.389-73','2002-06-07',1,0,0),('Dora Lisboa','841.446.019-43','1998-12-27',1,0,0),('Leonor Vilariça','964.601.139-04','1998-09-26',1,0,0),('Eusébio Lalanda','778.863.619-38','1993-12-14',1,1,0),('Anabela Anjos','031.028.799-50','2000-01-18',1,0,0),('Zayn Roriz','848.161.329-02','1999-11-17',1,0,0),('Davy Barata','981.523.579-60','2002-02-10',1,0,0),('Maryam Porto','389.200.599-00','2003-02-06',1,0,0),('Margarida Catela','391.892.749-03','1981-10-25',0,1,1),('Sílvio Roçadas','071.703.649-99','2001-02-15',1,0,0),('Clara Zambujal','632.546.729-92','2002-03-16',1,0,0),('Jeremias Baldaia','606.048.779-35','2004-11-15',1,0,0),('Adriela Salgueiro','980.723.729-71','1984-12-27',1,0,0),('Piedade Carvalho','312.268.949-92','1998-09-03',1,1,0),('Fausto Toledo','035.635.039-82','2000-06-10',1,0,0);
/*!40000 ALTER TABLE `cadastro_aluno_professor_coordenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cadastro_cursos`
--

LOCK TABLES `cadastro_cursos` WRITE;
/*!40000 ALTER TABLE `cadastro_cursos` DISABLE KEYS */;
INSERT INTO `cadastro_cursos` VALUES ('Engenharia Elétrica','Maxim Tristão'),('Engenharia Civil','Maxim Tristão'),('Nutrição','Kauan Madruga'),('Farmácia','Margarida Catela');
/*!40000 ALTER TABLE `cadastro_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cadastro_disciplinas`
--

LOCK TABLES `cadastro_disciplinas` WRITE;
/*!40000 ALTER TABLE `cadastro_disciplinas` DISABLE KEYS */;
INSERT INTO `cadastro_disciplinas` VALUES ('Calculo I','Alexandre Colaço','Engenharia Elétrica',1,80),('Calculo II','Alexandre Colaço','Engenharia Elétrica',2,80),('Calculo I','Alexandre Colaço','Engenharia Civil',1,40),('Geometria','Alexandre Colaço','Engenharia Civil',2,80),('Química dos Alimentos','Henrique Fiães','Nutrição',1,80),('Química I','Henrique Fiães','Farmácia',2,40),('Biologia Celular','Henrique Fiães','Nutrição',2,80),('Química II','Henrique Fiães','Farmácia',3,40),('Biologia Celular','Henrique Fiães','Farmácia',4,80),('Calculo III','Maxim Tristão','Engenharia Civil',3,80),('Calculo IV','Maxim Tristão','Engenharia Civil',4,80),('Física I','Maxim Tristão','Engenharia Civil',1,80),('Física II','Maxim Tristão','Engenharia Civil',2,80),('Física III','Maxim Tristão','Engenharia Civil',3,80),('Empreendedorismo ','Margarida Catela','Farmácia',2,40),('Empreendedorismo ','Margarida Catela','Engenharia Civil',2,40),('Empreendedorismo ','Margarida Catela','Engenharia Elétrica',2,40),('Empreendedorismo ','Margarida Catela','Engenharia Elétrica',2,40),('Anatomia I','Eusébio Lalanda','Nutrição',1,80),('Anatomia II','Eusébio Lalanda','Nutrição',2,80),('Bioquímica','Eusébio Lalanda','Nutrição',3,80),('Alimentos','Eusébio Lalanda','Nutrição',4,40),('Anatomia I','Piedade Carvalho','Farmácia',1,80),('Anatomia II','Piedade Carvalho','Farmácia',2,80),('Higiene','Piedade Carvalho','Farmácia',3,40),('Procedimentos Clínicos','Piedade Carvalho','Farmácia',4,80);
/*!40000 ALTER TABLE `cadastro_disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cadastro_maticulas_cursos`
--

LOCK TABLES `cadastro_maticulas_cursos` WRITE;
/*!40000 ALTER TABLE `cadastro_maticulas_cursos` DISABLE KEYS */;
INSERT INTO `cadastro_maticulas_cursos` VALUES ('Yuri Roriz','Engenharia Elétrica',1),('Mateus Cideira','Engenharia Civil',1),('Rodolfo Vilar','Engenharia Elétrica',2),('Ioan Sabrosa','Engenharia Civil',2),('Daniil Lancastre','Engenharia Elétrica',1),('Evelin Charneca','Farmácia',2),('Louisa Lameiras','Engenharia Elétrica',3),('Marta Fialho','Farmácia',1),('Maxim Tristão','Engenharia Elétrica',4),('Uriel Henriques','Engenharia Civil',3),('Ravi Estrada','Farmácia',2),('Penélope Azeredo','Engenharia Elétrica',3),('Dora Lisboa','Engenharia Elétrica',4),('Leonor Vilariça','Engenharia Civil',2),('Eusébio Lalanda','Farmácia',3),('Anabela Anjos','Engenharia Civil',4),('Zayn Roriz','Engenharia Elétrica',1),('Davy Barata','Engenharia Elétrica',3),('Maryam Porto','Farmácia',4),('Sílvio Roçadas','Engenharia Civil',1),('Clara Zambujal','Engenharia Civil',3),('Jeremias Baldaia','Engenharia Elétrica',2),('Adriela Salgueiro','Engenharia Elétrica',4),('Piedade Carvalho','Nutrição',1),('Fausto Toledo','Nutrição',2);
/*!40000 ALTER TABLE `cadastro_maticulas_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `coordenador`
--

LOCK TABLES `coordenador` WRITE;
/*!40000 ALTER TABLE `coordenador` DISABLE KEYS */;
INSERT INTO `coordenador` VALUES (1,7),(2,12),(3,23);
/*!40000 ALTER TABLE `coordenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia Elétrica',2),(2,'Engenharia Civil',2),(3,'Nutrição',1),(4,'Farmácia',3);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
INSERT INTO `curso_disciplina` VALUES (1,2,1,1,40),(2,1,1,1,80),(3,1,2,2,80),(4,2,3,1,40),(5,1,3,1,80),(6,2,4,2,80),(7,3,5,1,80),(8,4,6,2,40),(9,4,7,4,80),(10,3,7,2,80),(11,4,8,3,40),(12,4,9,4,80),(13,3,9,2,80),(14,2,10,3,80),(15,2,11,4,80),(16,2,12,1,80),(17,2,13,2,80),(18,2,14,3,80),(19,1,15,2,40),(20,1,15,2,40),(21,2,15,2,40),(22,4,15,2,40),(23,1,16,2,40),(24,1,16,2,40),(25,2,16,2,40),(26,4,16,2,40),(27,1,17,2,40),(28,1,17,2,40),(29,2,17,2,40),(30,4,17,2,40),(31,1,18,2,40),(32,1,18,2,40),(33,2,18,2,40),(34,4,18,2,40),(35,4,19,1,80),(36,3,19,1,80),(37,4,20,2,80),(38,3,20,2,80),(39,3,21,3,80),(40,3,22,4,40),(41,4,23,1,80),(42,3,23,1,80),(43,4,24,2,80),(44,3,24,2,80),(45,4,25,3,40),(46,4,26,4,80);
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Calculo I',1),(2,'Calculo II',1),(3,'Calculo I',1),(4,'Geometria',1),(5,'Química dos Alimentos',2),(6,'Química I',2),(7,'Biologia Celular',2),(8,'Química II',2),(9,'Biologia Celular',2),(10,'Calculo III',3),(11,'Calculo IV',3),(12,'Física I',3),(13,'Física II',3),(14,'Física III',3),(15,'Empreendedorismo ',5),(16,'Empreendedorismo ',5),(17,'Empreendedorismo ',5),(18,'Empreendedorismo ',5),(19,'Anatomia I',4),(20,'Anatomia II',4),(21,'Bioquímica',4),(22,'Alimentos',4),(23,'Anatomia I',6),(24,'Anatomia II',6),(25,'Higiene',6),(26,'Procedimentos Clínicos',6);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `disciplina_executada`
--

LOCK TABLES `disciplina_executada` WRITE;
/*!40000 ALTER TABLE `disciplina_executada` DISABLE KEYS */;
INSERT INTO `disciplina_executada` VALUES (1,1,2,NULL,NULL,NULL),(2,1,5,NULL,NULL,NULL),(3,2,1,NULL,NULL,NULL),(4,2,4,NULL,NULL,NULL),(5,2,16,NULL,NULL,NULL),(6,3,3,NULL,NULL,NULL),(7,3,19,NULL,NULL,NULL),(8,3,20,NULL,NULL,NULL),(9,3,23,NULL,NULL,NULL),(10,3,24,NULL,NULL,NULL),(11,3,27,NULL,NULL,NULL),(12,3,28,NULL,NULL,NULL),(13,3,31,NULL,NULL,NULL),(14,3,32,NULL,NULL,NULL),(15,4,6,NULL,NULL,NULL),(16,4,17,NULL,NULL,NULL),(17,4,21,NULL,NULL,NULL),(18,4,25,NULL,NULL,NULL),(19,4,29,NULL,NULL,NULL),(20,4,33,NULL,NULL,NULL),(21,5,2,NULL,NULL,NULL),(22,5,5,NULL,NULL,NULL),(23,6,8,NULL,NULL,NULL),(24,6,22,NULL,NULL,NULL),(25,6,26,NULL,NULL,NULL),(26,6,30,NULL,NULL,NULL),(27,6,34,NULL,NULL,NULL),(28,6,37,NULL,NULL,NULL),(29,6,43,NULL,NULL,NULL),(30,8,35,NULL,NULL,NULL),(31,8,41,NULL,NULL,NULL),(32,10,14,NULL,NULL,NULL),(33,10,18,NULL,NULL,NULL),(34,11,8,NULL,NULL,NULL),(35,11,22,NULL,NULL,NULL),(36,11,26,NULL,NULL,NULL),(37,11,30,NULL,NULL,NULL),(38,11,34,NULL,NULL,NULL),(39,11,37,NULL,NULL,NULL),(40,11,43,NULL,NULL,NULL),(41,14,6,NULL,NULL,NULL),(42,14,17,NULL,NULL,NULL),(43,14,21,NULL,NULL,NULL),(44,14,25,NULL,NULL,NULL),(45,14,29,NULL,NULL,NULL),(46,14,33,NULL,NULL,NULL),(47,15,11,NULL,NULL,NULL),(48,15,45,NULL,NULL,NULL),(49,16,15,NULL,NULL,NULL),(50,17,2,NULL,NULL,NULL),(51,17,5,NULL,NULL,NULL),(52,19,9,NULL,NULL,NULL),(53,19,12,NULL,NULL,NULL),(54,19,46,NULL,NULL,NULL),(55,20,1,NULL,NULL,NULL),(56,20,4,NULL,NULL,NULL),(57,20,16,NULL,NULL,NULL),(58,21,14,NULL,NULL,NULL),(59,21,18,NULL,NULL,NULL),(60,22,3,NULL,NULL,NULL),(61,22,19,NULL,NULL,NULL),(62,22,20,NULL,NULL,NULL),(63,22,23,NULL,NULL,NULL),(64,22,24,NULL,NULL,NULL),(65,22,27,NULL,NULL,NULL),(66,22,28,NULL,NULL,NULL),(67,22,31,NULL,NULL,NULL),(68,22,32,NULL,NULL,NULL),(69,24,7,NULL,NULL,NULL),(70,24,36,NULL,NULL,NULL),(71,24,42,NULL,NULL,NULL),(72,25,10,NULL,NULL,NULL),(73,25,13,NULL,NULL,NULL),(74,25,38,NULL,NULL,NULL),(75,25,44,NULL,NULL,NULL);
/*!40000 ALTER TABLE `disciplina_executada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `matricula_curso`
--

LOCK TABLES `matricula_curso` WRITE;
/*!40000 ALTER TABLE `matricula_curso` DISABLE KEYS */;
INSERT INTO `matricula_curso` VALUES (1,1,1,1,1),(2,2,2,2,1),(3,3,3,1,2),(4,5,4,2,2),(5,6,5,1,1),(6,8,6,4,2),(7,9,7,1,3),(8,10,8,4,1),(9,12,9,1,4),(10,13,10,2,3),(11,14,11,4,2),(12,15,12,1,3),(13,16,13,1,4),(14,17,14,2,2),(15,18,15,4,3),(16,19,16,2,4),(17,20,17,1,1),(18,21,18,1,3),(19,22,19,4,4),(20,24,20,2,1),(21,25,21,2,3),(22,26,22,1,2),(23,27,23,1,4),(24,28,24,3,1),(25,29,25,3,2);
/*!40000 ALTER TABLE `matricula_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Yuri','Roriz','283.999.559-06','1998-01-07'),(2,'Mateus','Cideira','488.731.559-79','2001-04-12'),(3,'Rodolfo','Vilar','072.210.699-80','2000-08-04'),(4,'Alexandre','Colaço','011.337.759-26','1965-08-15'),(5,'Ioan','Sabrosa','867.953.889-21','2001-02-11'),(6,'Daniil','Lancastre','070.389.019-07','1998-05-09'),(7,'Kauan','Madruga','898.873.539-06','1976-02-18'),(8,'Evelin','Charneca','146.411.179-00','1997-11-07'),(9,'Louisa','Lameiras','795.267.339-40','2002-02-06'),(10,'Marta','Fialho','273.808.149-58','2001-12-04'),(11,'Henrique','Fiães','044.962.029-80','1982-08-17'),(12,'Maxim','Tristão','870.813.799-40','1974-12-10'),(13,'Uriel','Henriques','064.679.369-14','2002-07-26'),(14,'Ravi','Estrada','559.483.019-74','1999-12-02'),(15,'Penélope','Azeredo','038.923.389-73','2002-06-07'),(16,'Dora','Lisboa','841.446.019-43','1998-12-27'),(17,'Leonor','Vilariça','964.601.139-04','1998-09-26'),(18,'Eusébio','Lalanda','778.863.619-38','1993-12-14'),(19,'Anabela','Anjos','031.028.799-50','2000-01-18'),(20,'Zayn','Roriz','848.161.329-02','1999-11-17'),(21,'Davy','Barata','981.523.579-60','2002-02-10'),(22,'Maryam','Porto','389.200.599-00','2003-02-06'),(23,'Margarida','Catela','391.892.749-03','1981-10-25'),(24,'Sílvio','Roçadas','071.703.649-99','2001-02-15'),(25,'Clara','Zambujal','632.546.729-92','2002-03-16'),(26,'Jeremias','Baldaia','606.048.779-35','2004-11-15'),(27,'Adriela','Salgueiro','980.723.729-71','1984-12-27'),(28,'Piedade','Carvalho','312.268.949-92','1998-09-03'),(29,'Fausto','Toledo','035.635.039-82','2000-06-10');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,4),(2,11),(3,12),(4,18),(5,23),(6,28);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-13 19:50:32
