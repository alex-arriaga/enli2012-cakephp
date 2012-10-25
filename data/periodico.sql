-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: periodico
-- ------------------------------------------------------
-- Server version	5.1.61-0ubuntu0.11.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Noticias','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pharetra ultrices sagittis. Aliquam rhoncus turpis vitae elit dignissim dictum. Suspendisse adipiscing nunc ut felis hendrerit a pulvinar augue feugiat. Fusce non consequat dui. Morbi non massa lorem, eget lacinia elit. Sed turpis orci, consectetur at pharetra vel, bibendum ultricies tellus. Morbi ornare commodo vestibulum.'),(2,'Slider','Contenidos para slider index'),(3,'Destacado','Destacados para mostrar en el index');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenidos`
--

DROP TABLE IF EXISTS `contenidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `cuerpo` text CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidos`
--

LOCK TABLES `contenidos` WRITE;
/*!40000 ALTER TABLE `contenidos` DISABLE KEYS */;
INSERT INTO `contenidos` VALUES (1,'Gestionan diputados recursos para escuelas indÃ­genas','La Ley General de EducaciÃ³n no da atribuciones especÃ­ficas al gobierno federal,  a los estados ni  municipios para que las escuelas cuenten con condiciones dignas para el personal docente y los alumnos, especÃ­ficamente en las escuelas rurales e indÃ­genas.  \r\n\r\nSon pocos los ayuntamientos que apoyan presupuestalmente a los Centros Escolares, y se requiere etiquetar recursos especÃ­ficos desde los  presupuestos de egresos estatales, a fin de que los municipios apliquen estas partidas para infraestructura y mobiliario.\r\n\r\nEs por ello que los diputados federales del PRI, Josefina GarcÃ­a HernÃ¡ndez y Carlos SÃ¡nchez Romero, presentaron la Iniciativa que reforma y adiciona diversas disposiciones de la Ley General de EducaciÃ³n, para garantizar condiciones dignas para los planteles de educaciÃ³n pÃºblica.','fotos/foto_middle_1.gif',1,'0000-00-00 00:00:00','2012-10-24 19:58:55'),(2,'Proin id dui quam. Mauris sem tellus, mattis non varius bibendum, varius eu metus.','Morbi in urna a urna ultrices adipiscing non a eros. Donec arcu ligula, placerat tristique ullamcorper sagittis, porta vitae risus. Maecenas bibendum, velit nec cursus lacinia, felis odio eleifend nulla, in molestie justo nisi sit amet lectus. Fusce eget dolor vel tortor sagittis congue. Phasellus dignissim sagittis justo vitae congue. Etiam diam arcu, mattis eget feugiat vel, interdum eu purus. Morbi at lacinia felis. Suspendisse eu lectus justo, nec tincidunt quam. Vestibulum quis tellus et nibh vulputate ullamcorper. Curabitur condimentum sapien id est adipiscing ut molestie mauris faucibus.','fotos/foto_1.jpg',1,'2012-10-24 19:49:41','2012-10-24 22:07:49'),(3,'Proin id dui quam. Mauris sem tellus, mattis non varius bibendum, varius eu metus.','Sed interdum, elit ac tempus venenatis, enim dolor gravida justo, quis consequat odio ligula eu elit. Curabitur in neque et nunc euismod tempus vel a nisl. Vivamus dictum, nisl eget dignissim porttitor, nibh felis cursus lorem, ut ullamcorper turpis diam sed arcu. Morbi euismod molestie ante vitae tincidunt. Vivamus iaculis egestas cursus. Nam fringilla, leo a fringilla malesuada, lacus diam dapibus felis, a sodales mi ipsum sed dolor. In commodo, tellus ut tincidunt consequat, nulla augue blandit dolor, eget adipiscing urna felis vitae nisl. Praesent rutrum ipsum sed nisi ullamcorper consequat mattis nisl hendrerit. Maecenas blandit aliquet dui, eu dignissim arcu lacinia ullamcorper. Quisque neque eros, congue a pulvinar sed, feugiat vitae libero.','fotos/foto_2.gif',2,'2012-10-24 22:11:42','2012-10-24 22:21:30'),(4,'Nulla faucibus, lacus ac malesuada vulputate, ante massa dignissim qua','Sed interdum, elit ac tempus venenatis, enim dolor gravida justo, quis consequat odio ligula eu elit. Curabitur in neque et nunc euismod tempus vel a nisl. Vivamus dictum, nisl eget dignissim porttitor, nibh felis cursus lorem, ut ullamcorper turpis diam sed arcu. Morbi euismod molestie ante vitae tincidunt. Vivamus iaculis egestas cursus. Nam fringilla, leo a fringilla malesuada, lacus diam dapibus felis, a sodales mi ipsum sed dolor. In commodo, tellus ut tincidunt consequat, nulla augue blandit dolor, eget adipiscing urna felis vitae nisl. Praesent rutrum ipsum sed nisi ullamcorper consequat mattis nisl hendrerit. Maecenas blandit aliquet dui, eu dignissim arcu lacinia ullamcorper. Quisque neque eros, congue a pulvinar sed, feugiat vitae libero.\r\n\r\nNulla faucibus, lacus ac malesuada vulputate, ante massa dignissim quam, nec auctor arcu dolor et nulla. Aliquam erat volutpat. Nullam vestibulum placerat purus fringilla elementum. Nulla enim nisl, ultrices eu hendrerit vitae, tristique quis justo. Aenean ut nisl non magna feugiat consectetur. Etiam vitae eros massa, id tempor justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pellentesque aliquam interdum. Integer lobortis scelerisque dolor, at mollis lacus pellentesque vitae. Donec suscipit tellus pharetra erat cursus a scelerisque nunc tempor.\r\n','fotos/foto_2.gif',3,'2012-10-24 22:33:12','2012-10-24 22:33:12'),(5,'DiseÃ±an, al vapor, proyecto ambiental para la cuenca del rÃ­o Necaxa','A contrarreloj, la ComisiÃ³n Nacional de Ãreas Naturales Protegidas (Conanp), Cuenca HidrogrÃ¡fica del RÃ­o Necaxa, realiza una consulta entre autoridades y grupos interesados de la regiÃ³n para definir un Programa de Manejo ambiental antes que concluya la actual administraciÃ³n federal.\r\n\r\nAsÃ­ lo informÃ³ la responsable de la oficina de la Conanp, Silvia Niembro Roca, a un grupo de vecinos del municipio de Necaxa, a pesar de que los conservacionistas tienen mÃ¡s de siete aÃ±os de presencia en la zona.\r\n\r\nEl documento, de 169 pÃ¡ginas,  fue entregado a los lugareÃ±os y se les pidiÃ³ que, en caso de tener observaciones, las hagan antes del 15 de noviembre, pues se pretende que sea aprobado antes de que finalice el gobierno de Felipe CalderÃ³n.\r\n\r\nEsto fue interpretado por algunos de los asistentes como un intento por dejarlos, en la prÃ¡ctica, fuera de la consulta, pues el tiempo otorgado para conocer el documento impide un anÃ¡lisis o discusiÃ³n a fondo.\r\n\r\nEn entrevista, Niembro Roca refiriÃ³ que la aprobaciÃ³n del Programa de Manejo posibilitarÃ¡ que en breve se pueda definir un programa de saneamiento de las represas de la cuenca del Necaxa que, especulÃ³, estÃ¡n contaminadas por las descargas directas de las aguas residuales de los municipios de Huauchinango y AcaxochitlÃ¡n, aunque dijo ignorar los Ã­ndices de contaminaciÃ³n.\r\n\r\nDe igual manera refiriÃ³ que desconoce las afectaciones causadas por la tala ilegal en el bosque de Ahuazotepec, que tambiÃ©n forma parte del Ãrea Natural Protegida, pero dijo que el Programa de Manejo puede modificar el decreto que establece la veda forestal y lograr que la explotaciÃ³n maderable sea sustentable y sostenible.\r\n\r\nDesde el aÃ±o 2000, especialistas de la Universidad Nacional AutÃ³noma de MÃ©xico diagnosticaron una posible catÃ¡strofe ecolÃ³gica en la cuenca hidrogrÃ¡fica del rÃ­o Necaxa y recomendaron tomar medidas urgentes para su saneamiento.\r\n\r\nDe acuerdo con datos entregados a este medio por la ComisiÃ³n Nacional del Agua (Conagua), a travÃ©s de la peticiÃ³n de informaciÃ³n pÃºblica 1610100233710, se destinaron 203 millones de pesos de los que sÃ³lo se gastÃ³ el 62 por ciento en la realizaciÃ³n de algunos proyectos y la ejecuciÃ³n de obras que siguen inconclusas. Del resto del dinero de esta partida, 75 millones de pesos, nadie sabe nada.','fotos/foto_3.jpg',1,'2012-10-24 22:59:34','2012-10-24 22:59:34'),(6,'Reciben mejores promedios de la BUAP 1,371 computadoras','Estudiantes de licenciatura, maestrÃ­a y doctorado de las diferentes escuelas y facultades de la BUAP obtuvieron mil 371 computadoras, por su alto desempeÃ±o acadÃ©mico, de un total de 3 mil equipos otorgados por el gobierno del estado a alumnos de 52 instituciones de educaciÃ³n superior poblanas, lo que representÃ³ el 45.7 por ciento del total.\r\n\r\nDe los mil 371 equipos obtenidos por estudiantes de la BUAP, 987 correspondieron a alumnos de licenciatura, 325 de maestrÃ­a y el resto entre estudiantes de doctorado y TÃ©cnico Superior Universitario.\r\n\r\nEn lo que va de la actual administraciÃ³n estatal, casi 6 mil alumnos de la mÃ¡xima casa de estudios en el estado, con promedios de entre 9.4 y 10, se han beneficiado con este programa, gracias a su alto desempeÃ±o acadÃ©mico.\r\n\r\nEn un acto oficial celebrado en el Centro Expositor de Los Fuertes, en el cual participÃ³ el Rector Enrique AgÃ¼era IbÃ¡Ã±ez, el gobernador Rafael Moreno Valle Rosas entregÃ³ este miÃ©rcoles 3 mil computadoras portÃ¡tiles a igual nÃºmero de alumnos de alto desempeÃ±o acadÃ©mico, con lo que suman 20 mil 500 el total otorgadas en lo que va de su administraciÃ³n.\r\n\r\nDurante la entrega simbÃ³lica de estas computadoras portÃ¡tiles, a la cual asistiÃ³ tambiÃ©n el secretario de EducaciÃ³n PÃºblica federal, JosÃ© Ãngel CÃ³rdova Villalobos, Moreno Valle Rosas anunciÃ³ la publicaciÃ³n prÃ³xima de la convocatoria para otorgar 16 mil computadoras a maestros poblanos que fueron capacitados por la BUAP.\r\n\r\nEl mandatario estatal seÃ±alÃ³ que gracias al modelo semipresencial de educaciÃ³n a distancia, ademÃ¡s de la ampliaciÃ³n de la matrÃ­cula, en los dos Ãºltimos aÃ±os se incrementÃ³ en 8.5 por ciento la cobertura en educaciÃ³n superior, en el estado de Puebla.','fotos/foto_4.jpg',1,'2012-10-24 23:00:40','2012-10-24 23:00:40'),(7,'Ocho de cada 10 delitos cometidos en Puebla no se denuncian: Conapred','De 83.3 por ciento es la â€œcifra negraâ€ de los delitos que no se denuncian en Puebla, ya que las vÃ­ctimas consideran que es â€œuna pÃ©rdida de tiempoâ€ o de plano desconfÃ­an de las autoridades, segÃºn lo revela el Reporte sobre la â€œDiscriminaciÃ³n en MÃ©xico 2012. Proceso penalâ€, elaborado por el Consejo Nacional para la PrevenciÃ³n de la DiscriminaciÃ³n (Conapred).\r\n\r\nDe manera especÃ­fica, dos de cada cinco poblanos considera que denunciar es una pÃ©rdida de  tiempo; uno de cada seis no lo hace por desconfianza de la autoridad; y una de cada 10 vÃ­ctimas considera que los trÃ¡mites son largos y difÃ­ciles.\r\n\r\nMientras uno de cada cinco vÃ­ctimas de la delincuencia considera que existe una actitud hostil de la autoridad al seÃ±alar un ilÃ­cito, tiene miedo al agresor, considera que fue vÃ­ctima de un delito de poca importancia o se abstiene de seÃ±alar su caso por miedo a la extorsiÃ³n.\r\n\r\nPuebla entre los seis estados con menor confianza en sus policÃ­as\r\n\r\nDe acuerdo con el reporte del Conapred, Puebla se ubica entre los seis estados donde los ciudadanos menos confÃ­an en sus policÃ­as, ya que sÃ³lo uno de cada 20 personas tiene confianza en esa corporaciÃ³n.','fotos/foto_5.jpg',1,'2012-10-24 23:01:37','2012-10-24 23:01:37');
/*!40000 ALTER TABLE `contenidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-24 23:18:10
