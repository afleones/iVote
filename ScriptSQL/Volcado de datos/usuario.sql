-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2021 a las 00:04:23
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
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `identificacion` bigint(15) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `nombre1` varchar(30) NOT NULL,
  `nombre2` varchar(30) NOT NULL,
  `apellido1` varchar(30) NOT NULL,
  `apellido2` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `id_tipo_usuario` varchar(3) NOT NULL,
  `id_rol` varchar(1) NOT NULL,
  `id_programa` int(2) NOT NULL,
  `id_mesa` int(3) DEFAULT NULL,
  `id_estado_usuario` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES
(100, '80000', 'VB Ing EST', '', '', '', '', 'EST', 'V', 100, NULL, 2),
(101, '80001', 'VB C. Humanas EST', '', '', '', '', 'EST', 'V', 101, NULL, 1),
(102, '80002', 'VB Adm & Cont EST', '', '', '', '', 'EST', 'V', 102, NULL, 1),
(103, '80003', 'VB C. Naturales EST', '', '', '', '', 'EST', 'V', 103, NULL, 1),
(104, '80004', 'VB C. Salud EST', '', '', '', '', 'EST', 'V', 104, NULL, 1),
(105, '80005', 'VB, Ing DOC', '', '', '', '', 'DOC', 'V', 100, NULL, 1),
(106, '80006', 'VB, C. Humanas DOC', '', '', '', '', 'DOC', 'V', 101, NULL, 1),
(107, '80007', 'VB, adm&cont DOC', '', '', '', '', 'DOC', 'V', 102, NULL, 1),
(108, '80008', 'VB C. Natural es DOC', '', '', '', '', 'DOC', 'V', 103, NULL, 1),
(109, '80009', 'VB, C. Salud DOC', '', '', '', '', 'DOC', 'V', 104, NULL, 1),
(110, '80010', 'VB Ing EGR', '', '', '', '', 'EGR', 'V', 100, NULL, 1),
(111, '80011', 'VB C. Humanas EGR', '', '', '', '', 'EGR', 'V', 101, NULL, 1),
(112, '80012', 'VB Adm&Cont EGR', '', '', '', '', 'EGR', 'V', 102, NULL, 1),
(113, '80013', 'VB C. naturales EGR', '', '', '', '', 'EGR', 'V', 103, NULL, 1),
(114, '80014', 'VB C. Salud EGR', '', '', '', '', 'EGR', 'V', 104, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`identificacion`),
  ADD KEY `idRol` (`id_rol`),
  ADD KEY `id_programa` (`id_programa`),
  ADD KEY `id_mesa` (`id_mesa`),
  ADD KEY `id_estado_usuario` (`id_estado_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`) USING BTREE;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_programa`) REFERENCES `programa` (`id_programa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_4` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_5` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_6` FOREIGN KEY (`id_estado_usuario`) REFERENCES `estado_usuario` (`id_estado_usuario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
