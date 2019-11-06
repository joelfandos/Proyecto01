-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2019 a las 20:31:37
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_proyecto01`
--
CREATE DATABASE IF NOT EXISTS `bd_proyecto01` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `bd_proyecto01`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id_recurso` int(11) NOT NULL,
  `recurso` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo` int(1) NOT NULL,
  `descripcion` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id_recurso`, `recurso`, `tipo`, `descripcion`, `imagen`) VALUES
(1, 'Sala Multidisciplinaria 1', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg'),
(2, 'Sala Multidisciplinaria 2', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg'),
(3, 'Sala Multidisciplinaria 3', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg'),
(4, 'Sala Multidisciplinaria 4', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg'),
(5, 'Sala de Informática 1', 1, 'Sala de ordenadores para hacer informatica o distracciones.', 'fotos/foto3.jpg'),
(6, 'Sala de Informática 2', 1, 'Sala de ordenadores para hacer informatica o distracciones.', 'fotos/foto3.jpg'),
(7, 'Taller de Cocina', 1, 'Sala dedicada a los talleres de cocina.', 'fotos/foto4.jpg'),
(8, 'Despacho 1', 1, 'Despacho para utilizarlo en entrevistas.', 'fotos/foto5.jpg'),
(9, 'Despacho 2', 1, 'Despacho para utilizarlo en entrevistas.', 'fotos/foto5.jpg'),
(10, 'Salón de Actos', 1, 'Salón dedicado para hacer actos con un gran número de personas.', 'fotos/foto6.jpg'),
(11, 'Sala de Reuniones', 1, 'Sala para cualquier tipo de reuniones.', 'fotos/foto7.jpg'),
(12, 'Proyector 1', 2, 'QKK AK-80', 'fotos/foto8.jpg'),
(13, 'Proyector 2', 2, 'QKK AK-80', 'fotos/foto8.jpg'),
(14, 'Portátil 1', 2, 'HP OMEN 15-dc1023ns', 'fotos/foto9.jpg'),
(15, 'Portátil 2', 2, 'HP OMEN 15-dc1023ns', 'fotos/foto9.jpg'),
(16, 'Portátil 3', 2, 'HP OMEN 15-dc1023ns', 'fotos/foto9.jpg'),
(17, 'Móvil 1', 2, 'Iphone 11', 'fotos/foto10.jpg'),
(18, 'Móvil 2', 2, 'Iphone 11', 'fotos/foto10.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `incidencias` (
  `id_incidencia` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `descripcion` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `id_recurso_fk` int(11) NOT NULL,
  `usuario_fk` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id_tipo`, `tipo`) VALUES
(1, 'Inmuebles'),
(2, 'Electrónica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_usu` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `password`, `tipo_usu`, `nombre`, `apellido`, `email`) VALUES
('joel', '81dc9bdb52d04dc20036dbd8313ed055', 0, 'Joel', 'Fandos', 'joel@gmail.com'),
('marc', '81dc9bdb52d04dc20036dbd8313ed055', 0, 'Marc', 'Camós', 'marc@gmail.com'),
('miguel', '81dc9bdb52d04dc20036dbd8313ed055', 0, 'Miguel', 'Conchouso', 'miguel@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id_recurso`),
  ADD KEY `tipo_fk` (`tipo`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `recurso_fk` (`id_recurso_fk`),
  ADD KEY `reserva_fk` (`usuario_fk`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD CONSTRAINT `tipo_fk` FOREIGN KEY (`tipo`) REFERENCES `tipos` (`id_tipo`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `recurso_fk` FOREIGN KEY (`id_recurso_fk`) REFERENCES `recursos` (`id_recurso`),
  ADD CONSTRAINT `reserva_fk` FOREIGN KEY (`usuario_fk`) REFERENCES `usuarios` (`usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
