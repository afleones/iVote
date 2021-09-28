-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2021 a las 20:35:42
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id_programa` int(2) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_facultad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES
(1, 'Ingenieria de Sistemas', 3),
(2, 'Ingenieria Civil', 3),
(3, 'Ingeniería Industrial', 3),
(4, 'Ingenieria Agroindustrial', 3),
(5, 'Medicina', 2),
(6, 'Odontologia', 2),
(7, 'Enfermeria', 2),
(8, 'Optometria', 2),
(9, 'Nutricion', 2),
(10, 'Psicologia', 1),
(11, 'Biologia Marina', 1),
(12, 'Derecho', 1),
(13, 'contaduria publica', 4),
(14, 'Administracion de Negocios Internacionales', 4),
(15, 'Gastronomia', 4),
(16, 'Especializacion en Pediatria', 2),
(17, 'Esp. en psico clin del niño y adolesc', 2),
(18, 'Esp. en seguridad y salud trab', 2),
(19, 'Esp. en neurologia clinica', 2),
(20, 'Esp. en anestesiologia', 2),
(21, 'Esp. en cirugia general', 2),
(22, 'Esp. en cirugia plastica estetica y reconstructiva', 2),
(23, 'Esp. en ginecologia y obstetricia', 2),
(24, 'Esp en medicina Interna', 2),
(25, 'Esp. en oftalmologia', 2),
(26, 'Esp. en pediatria', 2),
(27, 'Maestria en Epidemiologia', 2),
(28, 'Esp. contratacion estatal', 1),
(29, 'Esp. en derecho medico', 1),
(30, 'Esp. en auditoria en salud', 2),
(31, 'Esp. resp contractual y extracontractual', 1),
(32, 'Esp. resp social organizacional', 1),
(100, '', 3),
(101, '', 1),
(102, '', 4),
(103, '', 5),
(104, '', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id_programa`),
  ADD KEY `id_facultad` (`id_facultad`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id_facultad`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
