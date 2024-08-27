CREATE DATABASE  IF NOT EXISTS `proyecto_fibra` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `proyecto_fibra`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_fibra
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENTE` varchar(100) DEFAULT NULL,
  `TELEFONO` varchar(20) DEFAULT NULL,
  `MAIL` varchar(50) DEFAULT NULL,
  `PAIS` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobros`
--

DROP TABLE IF EXISTS `cobros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobros` (
  `ID_COBRO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_FCVENTA` int(11) DEFAULT NULL,
  `MONTO` decimal(10,0) DEFAULT NULL,
  `FECHA_COBRO` date DEFAULT NULL,
  PRIMARY KEY (`ID_COBRO`),
  KEY `FK_COBROS_FACTURAS` (`ID_FCVENTA`),
  CONSTRAINT `FK_COBROS_FACTURAS` FOREIGN KEY (`ID_FCVENTA`) REFERENCES `facturas_ventas` (`ID_FCVENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobros`
--

LOCK TABLES `cobros` WRITE;
/*!40000 ALTER TABLE `cobros` DISABLE KEYS */;
/*!40000 ALTER TABLE `cobros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas_compras`
--

DROP TABLE IF EXISTS `facturas_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas_compras` (
  `ID_FCCOMPRA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_COMPRA` int(11) DEFAULT NULL,
  `MONTO` decimal(10,2) DEFAULT NULL,
  `FECHA_FACTURA` date DEFAULT NULL,
  PRIMARY KEY (`ID_FCCOMPRA`),
  KEY `FK_FCCOMPRAS_ORDEN` (`ID_COMPRA`),
  CONSTRAINT `FK_FCCOMPRAS_ORDEN` FOREIGN KEY (`ID_COMPRA`) REFERENCES `orden_compra` (`ID_COMPRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_compras`
--

LOCK TABLES `facturas_compras` WRITE;
/*!40000 ALTER TABLE `facturas_compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas_ventas`
--

DROP TABLE IF EXISTS `facturas_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas_ventas` (
  `ID_FCVENTA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_VENTA` int(11) DEFAULT NULL,
  `MONTO` decimal(10,2) DEFAULT NULL,
  `ID_VENDEDOR` int(11) DEFAULT NULL,
  `FECHA_FACTURA` date DEFAULT NULL,
  PRIMARY KEY (`ID_FCVENTA`),
  KEY `FK_FCVENTAS_ORDEN` (`ID_VENTA`),
  KEY `FK_FCVENTAS_VENDEDOR` (`ID_VENDEDOR`),
  CONSTRAINT `FK_FCVENTAS_ORDEN` FOREIGN KEY (`ID_VENTA`) REFERENCES `orden_venta` (`ID_VENTA`),
  CONSTRAINT `FK_FCVENTAS_VENDEDOR` FOREIGN KEY (`ID_VENDEDOR`) REFERENCES `vendedores` (`ID_VENDEDOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_ventas`
--

LOCK TABLES `facturas_ventas` WRITE;
/*!40000 ALTER TABLE `facturas_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fcsincobrar`
--

DROP TABLE IF EXISTS `fcsincobrar`;
/*!50001 DROP VIEW IF EXISTS `fcsincobrar`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fcsincobrar` AS SELECT 
 1 AS `ID_FCVENTA`,
 1 AS `ID_VENTA`,
 1 AS `MONTO_FACTURA`,
 1 AS `ID_VENDEDOR`,
 1 AS `FECHA_FACTURA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mejorvendedor2024`
--

DROP TABLE IF EXISTS `mejorvendedor2024`;
/*!50001 DROP VIEW IF EXISTS `mejorvendedor2024`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mejorvendedor2024` AS SELECT 
 1 AS `ID_VENDEDOR`,
 1 AS `NOMBRE`,
 1 AS `TOTAL_VENTAS`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orden_compra`
--

DROP TABLE IF EXISTS `orden_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_compra` (
  `ID_COMPRA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRODUCTO` int(11) DEFAULT NULL,
  `ID_PROVEEDOR` int(11) DEFAULT NULL,
  `PRECIO_COMPRA` decimal(10,2) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `MONTO` decimal(10,2) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  PRIMARY KEY (`ID_COMPRA`),
  KEY `FK_COMPRA_PRODUCTO` (`ID_PRODUCTO`),
  KEY `FK_COMPRA_PROVEEDOR` (`ID_PROVEEDOR`),
  CONSTRAINT `FK_COMPRA_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`),
  CONSTRAINT `FK_COMPRA_PROVEEDOR` FOREIGN KEY (`ID_PROVEEDOR`) REFERENCES `proveedores` (`ID_PROVEEDOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compra`
--

LOCK TABLES `orden_compra` WRITE;
/*!40000 ALTER TABLE `orden_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_venta`
--

DROP TABLE IF EXISTS `orden_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_venta` (
  `ID_VENTA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRODUCTO` int(11) DEFAULT NULL,
  `ID_CLIENTE` int(11) DEFAULT NULL,
  `PRECIO_VENTA` decimal(10,2) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `MONTO` decimal(10,2) DEFAULT NULL,
  `ID_VENDEDOR` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  PRIMARY KEY (`ID_VENTA`),
  KEY `FK_VENTA_PRODUCTO` (`ID_PRODUCTO`),
  KEY `FK_VENTA_CLIENTE` (`ID_CLIENTE`),
  KEY `FK_VENTA_VENDEDOR` (`ID_VENDEDOR`),
  CONSTRAINT `FK_VENTA_CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `clientes` (`ID_CLIENTE`),
  CONSTRAINT `FK_VENTA_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`),
  CONSTRAINT `FK_VENTA_VENDEDOR` FOREIGN KEY (`ID_VENDEDOR`) REFERENCES `vendedores` (`ID_VENDEDOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_venta`
--

LOCK TABLES `orden_venta` WRITE;
/*!40000 ALTER TABLE `orden_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `ID_PAGO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_FCCOMPRA` int(11) DEFAULT NULL,
  `MONTO` decimal(10,0) DEFAULT NULL,
  `FECHA_PAGO` date DEFAULT NULL,
  PRIMARY KEY (`ID_PAGO`),
  KEY `FK_PAGOS_FACTURAS` (`ID_FCCOMPRA`),
  CONSTRAINT `FK_PAGOS_FACTURAS` FOREIGN KEY (`ID_FCCOMPRA`) REFERENCES `facturas_compras` (`ID_FCCOMPRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM` varchar(200) NOT NULL,
  `PRECIO_VENTA` decimal(10,0) DEFAULT NULL,
  `PRECIO_COMPRA` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productosmasvendidos`
--

DROP TABLE IF EXISTS `productosmasvendidos`;
/*!50001 DROP VIEW IF EXISTS `productosmasvendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productosmasvendidos` AS SELECT 
 1 AS `ID_PRODUCTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `ID_PROVEEDOR` int(11) NOT NULL AUTO_INCREMENT,
  `PROVEEDOR` varchar(100) DEFAULT NULL,
  `TELEFONO` varchar(20) DEFAULT NULL,
  `MAIL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_PROVEEDOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `topcincoventas`
--

DROP TABLE IF EXISTS `topcincoventas`;
/*!50001 DROP VIEW IF EXISTS `topcincoventas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `topcincoventas` AS SELECT 
 1 AS `ID_VENTA`,
 1 AS `ID_CLIENTE`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `ID_VENDEDOR` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `TELEFONO` varchar(20) DEFAULT NULL,
  `CORREO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_VENDEDOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `fcsincobrar`
--

/*!50001 DROP VIEW IF EXISTS `fcsincobrar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fcsincobrar` AS select `f`.`ID_FCVENTA` AS `ID_FCVENTA`,`f`.`ID_VENTA` AS `ID_VENTA`,`f`.`MONTO` AS `MONTO_FACTURA`,`f`.`ID_VENDEDOR` AS `ID_VENDEDOR`,`f`.`FECHA_FACTURA` AS `FECHA_FACTURA` from (`facturas_ventas` `f` left join `cobros` `c` on((`f`.`ID_FCVENTA` = `c`.`ID_FCVENTA`))) where isnull(`c`.`ID_COBRO`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mejorvendedor2024`
--

/*!50001 DROP VIEW IF EXISTS `mejorvendedor2024`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mejorvendedor2024` AS select `v`.`ID_VENDEDOR` AS `ID_VENDEDOR`,`v`.`NOMBRE` AS `NOMBRE`,sum(`o`.`MONTO`) AS `TOTAL_VENTAS` from (`orden_venta` `o` join `vendedores` `v` on((`o`.`ID_VENDEDOR` = `v`.`ID_VENDEDOR`))) where (`o`.`FECHA` >= (curdate() - interval 1 year)) group by `v`.`ID_VENDEDOR`,`v`.`NOMBRE` order by `TOTAL_VENTAS` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productosmasvendidos`
--

/*!50001 DROP VIEW IF EXISTS `productosmasvendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productosmasvendidos` AS select `orden_venta`.`ID_PRODUCTO` AS `ID_PRODUCTO` from `orden_venta` order by `orden_venta`.`CANTIDAD` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `topcincoventas`
--

/*!50001 DROP VIEW IF EXISTS `topcincoventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `topcincoventas` AS select `orden_venta`.`ID_VENTA` AS `ID_VENTA`,`orden_venta`.`ID_CLIENTE` AS `ID_CLIENTE` from `orden_venta` order by `orden_venta`.`MONTO` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27 20:08:05
