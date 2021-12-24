-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.2.40-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para pruebasofka
CREATE DATABASE IF NOT EXISTS `pruebasofka` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pruebasofka`;

-- Volcando estructura para tabla pruebasofka.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) DEFAULT NULL,
  `dificultad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla pruebasofka.categorias: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `categoria`, `dificultad`) VALUES
	(1, 'matematicas', '1'),
	(2, 'geografia', '2'),
	(3, 'tecnologia', '3'),
	(4, 'base de datos', '4'),
	(5, 'programacion', '5');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla pruebasofka.preguntas
CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(500) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_preguntas_categorias` (`id_categoria`),
  CONSTRAINT `FK_preguntas_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla pruebasofka.preguntas: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` (`id`, `pregunta`, `id_categoria`) VALUES
	(1, 'El hardware se define como la parte del computador a nivel:', 5),
	(2, 'Qué es un algoritmo?', 5),
	(3, 'El lenguaje de programación más usado para el desarrollo de videojuegos es:', 5),
	(4, 'Que lenguaje de programación es más usado de lado del servidor:', 5),
	(5, 'Para obtener el mensaje \'Hola Mundo\' en el lenguaje python se utiliza la instrucción:', 5),
	(6, 'Una base datos se define como:', 4),
	(7, 'Cuál de las siguientes instrucciones asigna clave primaria en una tabla de una base de datos?', 4),
	(8, 'De las siguientes opciones cual representa la cardinalidad que se trabaja en base de datos?', 4),
	(9, 'Cuántos sentencias SQL se utilizan en base de datos?', 4),
	(10, 'En que lenguaje se realizan las consultas para una base de datos relacional:', 4),
	(11, 'Cuál es el resultado de la sumar 4 unidades al doble producto de 3?', 1),
	(12, 'Indique cual es la raíz cuadrada de 81:', 1),
	(13, 'El resultado de la siguiente operación [2+3(3*4)-15] es:', 1),
	(14, 'De la ecuación de la recta \'y=-2m+4\' el valor de la pendiente m es:', 1),
	(15, 'AL derivar f(x)= 2x el resultado es:', 1),
	(16, 'Las redes sociales más usadas son:', 3),
	(17, 'De las siguientes opciones cual es un sistema operativo open source:', 3),
	(18, 'En qué año se creó el internet?', 3),
	(19, 'Con la combinación de las teclas ctrl+alt+supr, que instrucción ejecuta el computador :', 3),
	(20, 'La realidad aumentada se define como:', 3),
	(21, 'Cuál es la capital de Colombia?', 2),
	(22, 'Cuál es el rio más largo del mundo?', 2),
	(23, 'Cuántos continentes hay en la tierra?', 2),
	(24, 'Qué país tiene mayor número de habitantes ?', 2),
	(25, 'Cuál es el único continente que tiene tierra en cada uno de los 4 hemisferios?', 2);
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;

-- Volcando estructura para tabla pruebasofka.respuestas
CREATE TABLE IF NOT EXISTS `respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(500) DEFAULT NULL,
  `valor` int(11) DEFAULT 0,
  `id_pregunta` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_respuestas_preguntas` (`id_pregunta`),
  CONSTRAINT `FK_respuestas_preguntas` FOREIGN KEY (`id_pregunta`) REFERENCES `preguntas` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla pruebasofka.respuestas: ~96 rows (aproximadamente)
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` (`id`, `respuesta`, `valor`, `id_pregunta`) VALUES
	(1, 'Lógico', 0, 1),
	(2, 'Físico', 1, 1),
	(3, 'Las dos anteriores', 0, 1),
	(4, 'Ninguna de las anteriores', 0, 1),
	(5, 'Un programa de computador ', 0, 2),
	(6, 'Una secuencia de instrucciones para conseguir un fin exacto', 1, 2),
	(7, 'Una parte del computador', 0, 2),
	(8, 'Un componente externo del computador', 0, 2),
	(9, 'Java', 0, 3),
	(10, 'C#', 1, 3),
	(11, 'Python', 0, 3),
	(12, 'Kotlin', 0, 3),
	(13, 'Java', 1, 4),
	(14, 'C#', 0, 4),
	(15, 'Python', 0, 4),
	(16, 'Kotlin', 0, 4),
	(17, 'println("hola mundo");', 0, 5),
	(18, 'alert("Hola Mundo");', 0, 5),
	(19, 'print("Hola Mundo");', 1, 5),
	(20, 'console.write("Hola Mundo");', 0, 5),
	(21, 'Una recopilación organizada de información o datos estructurados ', 1, 6),
	(22, 'Una instancia de un objeto ', 0, 6),
	(23, 'Datos almacén en un sitio web', 0, 6),
	(24, 'ninguna de las anteriores ', 0, 6),
	(25, 'Foreing Key(\'indice\');', 0, 7),
	(26, 'Primary Key(\'indice\'); ', 1, 7),
	(27, 'constrainKey(\'indice\');', 0, 7),
	(28, 'where(\'indice\');', 0, 7),
	(29, 'Llave primaria y llave foránea ', 0, 8),
	(30, 'Uno a Uno, Muchos a Muchos, Uno a Muchos, Muchos a Uno', 1, 8),
	(31, 'update, delete, insert', 0, 8),
	(32, 'cascade, restrict, not action', 0, 8),
	(33, 'DDL, DML, DCL', 1, 9),
	(34, 'select, from, where', 0, 9),
	(35, 'update, delete, insert', 0, 9),
	(36, 'ninguna de las anteriores', 0, 9),
	(37, 'sql', 1, 10),
	(38, 'pl', 0, 10),
	(39, 'dsl', 0, 10),
	(40, 'query', 0, 10),
	(41, '10', 1, 11),
	(42, '12', 0, 11),
	(43, '8', 0, 11),
	(44, '9', 0, 11),
	(45, '18', 0, 12),
	(46, '9', 1, 12),
	(47, '3', 0, 12),
	(48, '27', 0, 12),
	(49, '17', 0, 13),
	(50, '23', 1, 13),
	(51, '30', 0, 13),
	(52, '22', 0, 13),
	(53, '2', 0, 14),
	(54, '-3', 0, 14),
	(55, '-2', 1, 14),
	(56, '4', 0, 14),
	(57, '2', 1, 15),
	(58, 'x', 0, 15),
	(59, '0', 0, 15),
	(60, '1', 0, 15),
	(61, 'Facebook, Intagram, Twitter', 1, 16),
	(62, 'Wikipedia, rincón del vago', 0, 16),
	(63, 'Google, Yahoo', 0, 16),
	(64, 'Gmail, Outlook, Hotmail', 0, 16),
	(65, 'Windows', 0, 17),
	(66, 'Linux', 1, 17),
	(67, 'Mac', 0, 17),
	(68, 'Todos los anteriores', 0, 17),
	(69, '2000', 0, 18),
	(70, '2021', 0, 18),
	(71, '1969', 1, 18),
	(72, '1996', 0, 18),
	(73, 'Abre el administrador de tareas', 1, 19),
	(74, 'Reinicia el computador', 0, 19),
	(75, 'Apaga el computador', 0, 19),
	(76, 'Formatea el computador', 0, 19),
	(77, 'Una idea del internet virtual', 0, 20),
	(78, 'Una ilusión óptica', 0, 20),
	(79, 'Una abstracción de la realidad', 0, 20),
	(80, '<html><body>Conjunto de tecnologías que permiten que un usuario <br>visualice parte del mundo real a través de un dispositivo tecnológico</body></html>', 1, 20),
	(81, 'Cali', 0, 21),
	(82, 'Barranquilla', 0, 21),
	(83, 'Bogotá', 1, 21),
	(84, 'Bucaramanga', 0, 21),
	(85, 'Amazonas', 1, 22),
	(86, 'Nilo', 0, 22),
	(87, 'Rio largo', 0, 22),
	(88, 'Yangtsé', 0, 22),
	(89, '5', 0, 23),
	(90, '6', 1, 23),
	(91, '11', 0, 23),
	(92, '3', 0, 23),
	(93, 'Rusia', 0, 24),
	(94, 'Japón', 0, 24),
	(95, 'Austria', 0, 24),
	(96, 'China', 1, 24),
	(97, 'Asia', 1, 25),
	(98, 'África', 0, 25),
	(99, 'Oceanía', 0, 25),
	(100, 'América', 0, 25);
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;

-- Volcando estructura para tabla pruebasofka.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `puntaje` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla pruebasofka.usuarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `puntaje`, `estado`, `nivel`) VALUES
	(1, 'john', 0, 'Perdio', 2),
	(2, 'john', 4100, 'Gano', 5),
	(3, 'john', 0, 'Abandono', 1),
	(17, 'juan', 4100, 'Gano', 5);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
