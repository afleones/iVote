-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2021 a las 23:52:27
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
  `id_candidato` bigint(15) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `id_organo` int(2) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`id_candidato`, `numero`, `id_organo`, `foto`) VALUES
(110, '1', 3, 'img9.jpg'),
(104747451033, '2', 3, '1047474510.jpg'),
(105167578233, '3', 3, '1051675782.jpg');

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

INSERT INTO `estado_usuario` (`id_estado_usuario`, `nombre`, `descripcion`) VALUES
(1, 'No voto', 'El usuario no ha votado'),
(2, 'autorizado', 'autorizado por jurado'),
(3, 'votando', 'usuario votando'),
(4, 'voto', 'finalizo el proceso votacion');

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

INSERT INTO `facultad` (`id_facultad`, `nombre`) VALUES
(1, 'Ciencias Sociales y Humanas'),
(2, 'Ciencias de la Salud'),
(3, 'Ciencias e Ingenierias'),
(4, 'Ciencias Administrativas, Economicas y Contables'),
(5, 'Ciencias Naturales');

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

INSERT INTO `lugar` (`id_lugar`, `nombre`) VALUES
(1, 'Plaza Colon'),
(2, 'Santillana'),
(3, 'Pie de la Popa');

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

INSERT INTO `mesa` (`id_mesa`, `nombre`, `id_lugar`) VALUES
(1, '1', 2),
(2, '2', 1),
(3, '3', 3),
(4, '4', 1),
(5, '5', 3),
(6, '6', 1),
(7, '7', 2),
(8, '8', 1),
(9, '9', 2),
(10, '10', 1),
(11, '11', 1),
(12, '12', 2),
(13, '13', 1),
(14, '14', 1),
(15, '15', 2),
(100, '100', 1);

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

INSERT INTO `organo` (`id_organo`, `nombre`, `descripcion`) VALUES
(3, 'Consejo de Facultad', NULL);

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

INSERT INTO `rol` (`id_rol`, `nombre`, `descripcion`) VALUES
('A', 'ADMINISTRADOR', 'Es el super usuario....'),
('D', 'DELEGADO', NULL),
('J', 'JURADO', 'Es el JURADO de votacion'),
('V', 'VOTANTE', NULL);

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

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nombre`, `descripcion`) VALUES
('DOC', 'DOCENTE', NULL),
('EGR', 'EGRESADO', NULL),
('EST', 'ESTUDIANTE', NULL);

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
(100, '80000', 'voto en Blanco', '', '', '', '', 'EST', 'V', 100, NULL, 2),
(101, '80001', 'voto en Blanco', '', '', '', '', 'EST', 'V', 101, NULL, 1),
(102, '80002', 'voto en Blanco', '', '', '', '', 'EST', 'V', 102, NULL, 1),
(103, '80003', 'voto en Blanco', '', '', '', '', 'EST', 'V', 103, NULL, 1),
(104, '80004', 'voto en Blanco', '', '', '', '', 'EST', 'V', 104, NULL, 1),
(105, '80005', 'VB, Ing DOC', '', '', '', '', 'DOC', 'V', 100, NULL, 1),
(106, '80006', 'voto en Blanco', '', '', '', '', 'DOC', 'V', 101, NULL, 1),
(107, '80007', 'VB, adm&cont DOC', '', '', '', '', 'DOC', 'V', 102, NULL, 1),
(108, '80008', 'VB C. Natural es DOC', '', '', '', '', 'DOC', 'V', 103, NULL, 1),
(109, '80009', 'voto en Blanco', '', '', '', '', 'DOC', 'V', 104, NULL, 1),
(110, '80010', 'voto en Blanco', '', '', '', '', 'EGR', 'V', 100, NULL, 1),
(111, '80011', 'voto en Blanco', '', '', '', '', 'EGR', 'V', 101, NULL, 1),
(112, '80012', 'voto en Blanco', '', '', '', '', 'EGR', 'V', 102, NULL, 1),
(113, '80013', 'voto en Blanco', '', '', '', '', 'EGR', 'V', 103, NULL, 1),
(114, '80014', 'voto en Blanco', '', '', '', '', 'EGR', 'V', 104, NULL, 1),
(73153886, '73153886', 'Dany', 'Jose', 'Romero', 'Cortez', '73153886', 'EGR', 'V', 1, 1, 4),
(1143263398, '1143263398', 'Andres', 'Felipe', 'Leones', 'Palacio', '1143263398', 'EGR', 'V', 5, NULL, 2),
(2010020220, '2010020220FD', 'Federico', 'Fernando', 'Jurado', 'Preciado', 'federico', 'EGR', 'V', 1, NULL, 2),
(2010123112, '2010123112', 'Gabriel', 'Jesús', 'Quintero', 'Fula', 'gabriel', 'DOC', 'V', 5, NULL, 2),
(2010123123, '2010123123', 'Hillary', 'Sofia', 'Barreto', 'Castaneda', 'hillary', 'EST', 'A', 14, NULL, 1),
(2012111229, '2012111229', 'Carlos', 'Enrique', 'Castro', 'Fula', 'carlos', 'EST', 'J', 14, NULL, 1),
(2012898782, '2012898782', 'Gustavo', 'Adolfo', 'Hernandez', 'Mendoza', 'gustavo', 'DOC', 'A', 14, NULL, 1),
(2012999123, '2012999123', 'Kelvin', 'Jose', 'Ramos', 'Ballestas', 'kelvin', 'EGR', 'A', 15, NULL, 1),
(2014123222, '2014123222', 'Hernan', 'Javier', 'Castillo', 'Pineda', 'hernan', 'EGR', 'A', 15, NULL, 1),
(2014222111, '2014222111', 'Ellery', 'Jose', 'Chacuto', 'Florez', 'ellery', 'EST', 'V', 15, NULL, 4),
(2016000120, '2016000120', 'Sandra', 'Mirleidis', 'Calvo', 'Calvo', 'sandra', 'EGR', 'J', 14, NULL, 1),
(7315388654, '73153886', 'Dany', 'Jose', 'Romero', 'Cortez', '73153886', 'EST', 'V', 3, 1, 2),
(7315388664, '73153886', 'Dany', 'Jose', 'Romero', 'Cortez', '73153886', 'EST', 'V', 5, 1, 2),
(104747451033, '1047474510', 'Paola', 'Andrea', 'Charry', 'Gonzalez', '0000049584', 'EGR', 'V', 3, 1, 2),
(105167578233, '1051675782', 'Jaime', '', 'Facio Lince', 'Garcia', '0000027189', 'EGR', 'V', 3, 1, 2),
(114326339833, '1143263398', 'Andres', 'Felipe', 'Leones', 'Palacio', '1143263398', 'EGR', 'J', 3, NULL, 4),
(2010123112144, '2010123112', 'Gabriel', 'Jesús', 'Quintero', 'Fula', 'gabriel', 'EGR', 'V', 1, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voto`
--

CREATE TABLE `voto` (
  `id_mesa` int(2) NOT NULL,
  `id_candidato` bigint(15) NOT NULL,
  `Fecha_hora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `voto`
--

INSERT INTO `voto` (`id_mesa`, `id_candidato`, `Fecha_hora`) VALUES
(1, 104747451033, '2021-09-28 15:00:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id_candidato`) USING BTREE,
  ADD KEY `id_organo` (`id_organo`);

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
  ADD PRIMARY KEY (`identificacion`),
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
  ADD CONSTRAINT `candidato_ibfk_2` FOREIGN KEY (`id_organo`) REFERENCES `organo` (`id_organo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `candidato_ibfk_3` FOREIGN KEY (`id_candidato`) REFERENCES `usuario` (`identificacion`) ON UPDATE CASCADE;

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
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_programa`) REFERENCES `programa` (`id_programa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_4` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_5` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_6` FOREIGN KEY (`id_estado_usuario`) REFERENCES `estado_usuario` (`id_estado_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `voto`
--
ALTER TABLE `voto`
  ADD CONSTRAINT `voto_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`),
  ADD CONSTRAINT `voto_ibfk_2` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
