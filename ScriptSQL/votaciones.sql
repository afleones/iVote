-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2021 a las 17:42:39
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
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `id_candidato` int(12) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `id_organo` int(2) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(100, '100', 3, 'img9.png');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(101, '101', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(102, '102', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(103, '103', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(104, '104', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(105, '105', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(106, '106', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(107, '107', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(108, '108', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(109, '109', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(110, '110', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(111, '111', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(112, '112', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(113, '113', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(114, '114', 3, 'img9.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(73153886, '1', 3, 'foto1.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(2010020220, '2', 3, 'foto1.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(2010123112, '3', 3, 'foto1.jpg');
INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES(2014222111, '4', 3, 'foto1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_usuario`
--

CREATE TABLE `estado_usuario` (
  `id_estado_usuario` int(1) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_usuario`
--

INSERT INTO `estado_usuario` (`id_estado_usuario`, `nombre`, `descripcion`) VALUES(1, 'No voto', 'El usuario no ha votado');
INSERT INTO `estado_usuario` (`id_estado_usuario`, `nombre`, `descripcion`) VALUES(2, 'autorizado', 'autorizado por jurado');
INSERT INTO `estado_usuario` (`id_estado_usuario`, `nombre`, `descripcion`) VALUES(3, 'votando', 'usuario votando');
INSERT INTO `estado_usuario` (`id_estado_usuario`, `nombre`, `descripcion`) VALUES(4, 'voto', 'finalizo el proceso votacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id_facultad` int(2) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id_facultad`, `nombre`) VALUES(1, 'Ciencias Humanas');
INSERT INTO `facultad` (`id_facultad`, `nombre`) VALUES(2, 'Ciencias de la Salud');
INSERT INTO `facultad` (`id_facultad`, `nombre`) VALUES(3, 'Ingenierias');
INSERT INTO `facultad` (`id_facultad`, `nombre`) VALUES(4, 'Ciencias Adm & Cont');
INSERT INTO `facultad` (`id_facultad`, `nombre`) VALUES(5, 'Ciencias Naturales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `id_lugar` int(2) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id_lugar`, `nombre`) VALUES(1, 'Plaza Colon');
INSERT INTO `lugar` (`id_lugar`, `nombre`) VALUES(2, 'Santillana');
INSERT INTO `lugar` (`id_lugar`, `nombre`) VALUES(3, 'Pie de la Popa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(3) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `id_lugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(1, '1', 2);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(2, '2', 1);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(3, '3', 3);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(4, '4', 1);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(5, '5', 3);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(6, '6', 1);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(7, '7', 2);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(8, '8', 1);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(9, '9', 2);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(10, '10', 1);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(11, '11', 1);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(12, '12', 2);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(13, '13', 1);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(14, '14', 1);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(15, '15', 2);
INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES(100, '100', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organo`
--

CREATE TABLE `organo` (
  `id_organo` int(2) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `organo`
--

INSERT INTO `organo` (`id_organo`, `nombre`, `descripcion`) VALUES(3, 'Consejo de Facultad', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id_programa` int(2) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `id_facultad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(1, 'Ingeniería de Sistemas', 3);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(2, 'Ingeniería Civil', 3);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(3, 'Ingeniería Industrial', 3);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(4, 'Ingeniería Agroindustrial', 3);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(5, 'Medicina', 2);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(6, 'Odontologia', 2);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(7, 'Enfermeria', 2);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(8, 'Optometria', 2);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(9, 'Nutricion', 2);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(10, 'Psicologia', 1);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(11, 'Biologia Marina', 1);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(12, 'Derecho', 1);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(13, 'contaduria publica', 4);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(14, 'EANI', 4);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(15, 'Gastronomia', 4);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(100, '', 3);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(101, '', 1);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(102, '', 4);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(103, '', 5);
INSERT INTO `programa` (`id_programa`, `nombre`, `id_facultad`) VALUES(104, '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` varchar(1) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`, `descripcion`) VALUES('A', 'ADMINISTRADOR', 'Es el super usuario....');
INSERT INTO `rol` (`id_rol`, `nombre`, `descripcion`) VALUES('D', 'DELEGADO', NULL);
INSERT INTO `rol` (`id_rol`, `nombre`, `descripcion`) VALUES('J', 'JURADO', 'Es el JURADO de votacion');
INSERT INTO `rol` (`id_rol`, `nombre`, `descripcion`) VALUES('V', 'VOTANTE', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` varchar(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nombre`, `descripcion`) VALUES('DOC', 'DOCENTE', NULL);
INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nombre`, `descripcion`) VALUES('EGR', 'EGRESADO', NULL);
INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nombre`, `descripcion`) VALUES('EST', 'ESTUDIANTE', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codigo` int(12) NOT NULL,
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

INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(100, 080000, 'voto en Blanco', '', '', '', '', 'EST', 'V', 100, NULL, 2);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(101, 080001, 'voto en Blanco', '', '', '', '', 'EST', 'V', 101, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(102, 080002, 'voto en Blanco', '', '', '', '', 'EST', 'V', 102, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(103, 080003, 'voto en Blanco', '', '', '', '', 'EST', 'V', 103, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(104, 080004, 'voto en Blanco', '', '', '', '', 'EST', 'V', 104, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(105, 080005, 'voto en Blanco', '', '', '', '', 'DOC', 'V', 100, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(106, 080006, 'voto en Blanco', '', '', '', '', 'DOC', 'V', 101, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(107, 080007, 'voto en Blanco', '', '', '', '', 'DOC', 'V', 102, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(108, 080008, 'voto en Blanco', '', '', '', '', 'DOC', 'V', 103, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(109, 080009, 'voto en Blanco', '', '', '', '', 'DOC', 'V', 104, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(110, 080010, 'voto en Blanco', '', '', '', '', 'EGR', 'V', 100, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(111, 080011, 'voto en Blanco', '', '', '', '', 'EGR', 'V', 101, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(112, 080012, 'voto en Blanco', '', '', '', '', 'EGR', 'V', 102, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(113, 080013, 'voto en Blanco', '', '', '', '', 'EGR', 'V', 103, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(114, 080014, 'voto en Blanco', '', '', '', '', 'EGR', 'V', 104, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(73153886, 73153886, 'Dany', 'Jose', 'Romero', 'Cortez', '73153886', 'EGR', 'A', 5, NULL, 4);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(1143263398, 1143263398, 'Andres', 'Felipe', 'Leones', 'Palacio', '1143263398', 'EST', 'J', 14, NULL, 2);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(2010020220, 2010020220, 'Federico', 'Fernando', 'Jurado', 'Preciado', 'federico', 'EST', 'V', 14, NULL, 4);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(2010123112, 2010123112, 'Gabriel', 'Jesús', 'Quintero', 'Fula', 'gabriel', 'DOC', 'V', 14, NULL, 4);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(2010123123, 2010123123, 'Hillary', 'Sofia', 'Barreto', 'Castaneda', 'hillary', 'EST', 'A', 14, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(2012111229, 2012111229, 'Carlos', 'Enrique', 'Castro', 'Fula', 'carlos', 'EST', 'J', 14, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(2012898782, 2012898782, 'Gustavo', 'Adolfo', 'Hernandez', 'Mendoza', 'gustavo', 'DOC', 'A', 14, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(2012999123, 2012999123, 'Kelvin', 'Jose', 'Ramos', 'Ballestas', 'kelvin', 'EGR', 'A', 15, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(2014123222, 2014123222, 'Hernan', 'Javier', 'Castillo', 'Pineda', 'hernan', 'EGR', 'A', 15, NULL, 1);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(2014222111, 2014222111, 'Ellery', 'Jose', 'Chacuto', 'Florez', 'ellery', 'EST', 'V', 15, NULL, 4);
INSERT INTO `usuario` (`identificacion`, `codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `password`, `id_tipo_usuario`, `id_rol`, `id_programa`, `id_mesa`, `id_estado_usuario`) VALUES(2016000120, 2016000120, 'Sandra', 'Mirleidis', 'Calvo', 'Calvo', 'sandra', 'EGR', 'J', 14, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voto`
--

CREATE TABLE `voto` (
  `id_mesa` int(2) NOT NULL,
  `id_candidato` int(12) NOT NULL,
  `Fecha_hora` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `voto`
--

INSERT INTO `voto` (`id_mesa`, `id_candidato`, `Fecha_hora`) VALUES(11, 73153886, 2147483647);
INSERT INTO `voto` (`id_mesa`, `id_candidato`, `Fecha_hora`) VALUES(2, 102, 2147483647);
INSERT INTO `voto` (`id_mesa`, `id_candidato`, `Fecha_hora`) VALUES(8, 2010123112, 2147483647);
INSERT INTO `voto` (`id_mesa`, `id_candidato`, `Fecha_hora`) VALUES(8, 107, 2147483647);
INSERT INTO `voto` (`id_mesa`, `id_candidato`, `Fecha_hora`) VALUES(11, 114, 2147483647);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id_candidato`),
  ADD KEY `id_organo` (`id_organo`),
  ADD KEY `id_candidato` (`id_candidato`);

--
-- Indices de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  ADD PRIMARY KEY (`id_estado_usuario`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id_facultad`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id_lugar`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`),
  ADD KEY `id_lugar` (`id_lugar`);

--
-- Indices de la tabla `organo`
--
ALTER TABLE `organo`
  ADD PRIMARY KEY (`id_organo`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id_programa`),
  ADD KEY `id_facultad` (`id_facultad`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `idRol` (`id_rol`),
  ADD KEY `id_programa` (`id_programa`),
  ADD KEY `id_mesa` (`id_mesa`),
  ADD KEY `id_estado_usuario` (`id_estado_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`) USING BTREE;

--
-- Indices de la tabla `voto`
--
ALTER TABLE `voto`
  ADD KEY `id_mesa` (`id_mesa`),
  ADD KEY `id_candidato` (`id_candidato`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  MODIFY `id_estado_usuario` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id_facultad` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id_mesa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `candidato_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `usuario` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `candidato_ibfk_2` FOREIGN KEY (`id_organo`) REFERENCES `organo` (`id_organo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `lugar` (`id_lugar`);

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id_facultad`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_programa`) REFERENCES `programa` (`id_programa`),
  ADD CONSTRAINT `usuario_ibfk_4` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`),
  ADD CONSTRAINT `usuario_ibfk_5` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`),
  ADD CONSTRAINT `usuario_ibfk_6` FOREIGN KEY (`id_estado_usuario`) REFERENCES `estado_usuario` (`id_estado_usuario`);

--
-- Filtros para la tabla `voto`
--
ALTER TABLE `voto`
  ADD CONSTRAINT `voto_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`),
  ADD CONSTRAINT `voto_ibfk_2` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
