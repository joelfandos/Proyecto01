-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2019 a las 18:36:34
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

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
CREATE DATABASE IF NOT EXISTS `bd_proyecto01` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_proyecto01`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

CREATE TABLE `incidencia` (
  `id_incidencia` int(11) NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `id_recurso_fk` int(11) NOT NULL,
  `usuario_fk` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `incidencia`
--

INSERT INTO `incidencia` (`id_incidencia`, `fecha_entrega`, `fecha_devolucion`, `descripcion`, `id_recurso_fk`, `usuario_fk`) VALUES
(9, '2019-11-08 17:38:01', '2019-11-08 17:53:49', 'test', 1, 'miguel'),
(10, '2019-11-08 17:53:10', '2019-11-08 17:53:45', 'test', 9, 'miguel'),
(11, '2019-11-08 17:53:57', '2019-11-08 17:54:02', 'test', 1, 'miguel'),
(12, '2019-11-08 18:08:16', NULL, 'test', 1, 'marc'),
(13, '2019-11-08 18:08:29', NULL, 'test', 1, 'marc'),
(14, '2019-11-08 18:12:35', NULL, 'test', 1, 'marc'),
(15, '2019-11-08 18:27:12', '2019-11-08 18:27:38', 'REVISAR', 5, 'marc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id_recurso` int(2) NOT NULL,
  `recurso` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo` int(1) NOT NULL,
  `descripcion` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id_recurso`, `recurso`, `tipo`, `descripcion`, `imagen`, `status`) VALUES
(1, 'Sala Multidisciplinaria 1', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg', 1),
(2, 'Sala Multidisciplinaria 2', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg', 1),
(3, 'Sala Multidisciplinaria 3', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg', 1),
(4, 'Sala Multidisciplinaria 4', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg', 1),
(5, 'Sala de Informática 1', 1, 'Sala de ordenadores para hacer informatica o distracciones.', 'fotos/foto3.jpg', 1),
(6, 'Sala de Informática 2', 1, 'Sala de ordenadores para hacer informatica o distracciones.', 'fotos/foto3.jpg', 1),
(7, 'Taller de Cocina', 1, 'Sala dedicada a los talleres de cocina.', 'fotos/foto4.jpg', 1),
(8, 'Despacho 1', 1, 'Despacho para utilizarlo en entrevistas.', 'fotos/foto5.jpg', 1),
(9, 'Despacho 2', 1, 'Despacho para utilizarlo en entrevistas.', 'fotos/foto5.jpg', 1),
(10, 'Salón de Actos', 1, 'Salón dedicado para hacer actos con un gran número de personas.', 'fotos/foto6.jpg', 1),
(11, 'Sala de Reuniones', 1, 'Sala para cualquier tipo de reuniones.', 'fotos/foto7.jpg', 1),
(12, 'Proyector 1', 2, 'QKK AK-80', 'fotos/foto8.jpg', 1),
(13, 'Proyector 2', 2, 'QKK AK-80', 'fotos/foto8.jpg', 1),
(14, 'Portátil 1', 2, 'HP OMEN 15-dc1023ns', 'fotos/foto9.jpg', 1),
(15, 'Portátil 2', 2, 'HP OMEN 15-dc1023ns', 'fotos/foto9.jpg', 1),
(16, 'Portátil 3', 2, 'HP OMEN 15-dc1023ns', 'fotos/foto9.jpg', 1),
(17, 'Móvil 1', 2, 'Iphone 11', 'fotos/foto10.jpg', 1),
(18, 'Móvil 2', 2, 'Iphone 11', 'fotos/foto10.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `id_recurso_fk` int(11) NOT NULL,
  `usuario_fk` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `fecha_entrega`, `fecha_devolucion`, `id_recurso_fk`, `usuario_fk`) VALUES
(5, '2019-11-06 17:53:58', '2019-11-08 15:22:02', 1, 'miguel'),
(6, '2019-11-06 17:54:07', '2019-11-08 15:22:07', 4, 'miguel'),
(7, '2019-11-06 17:54:10', '2019-11-08 15:22:04', 2, 'miguel'),
(8, '2019-11-06 17:57:09', '2019-11-08 15:21:58', 3, 'miguel'),
(9, '2019-11-06 18:03:41', '2019-11-08 15:22:06', 5, 'miguel'),
(10, '2019-11-06 18:25:46', '2019-11-08 15:21:56', 6, 'miguel'),
(11, '2019-11-06 19:25:47', '2019-11-08 15:22:09', 9, 'miguel'),
(12, '2019-11-06 19:26:15', '2019-11-08 15:21:54', 7, 'miguel'),
(13, '2019-11-08 15:23:15', '2019-11-08 15:23:29', 1, 'miguel'),
(14, '2019-11-08 15:24:19', '2019-11-08 15:26:26', 8, 'joel'),
(15, '2019-11-08 16:33:59', '2019-11-08 16:34:02', 1, 'miguel'),
(16, '2019-11-08 16:34:06', '2019-11-08 16:34:08', 1, 'miguel'),
(17, '2019-11-08 16:35:25', '2019-11-08 16:35:29', 1, 'miguel'),
(18, '2019-11-08 17:07:38', '2019-11-08 17:08:33', 13, 'miguel'),
(19, '2019-11-08 17:08:41', '2019-11-08 17:09:02', 13, 'miguel'),
(20, '2019-11-08 17:09:55', '2019-11-08 17:09:58', 14, 'miguel'),
(21, '2019-11-08 17:10:02', '2019-11-08 17:10:05', 15, 'miguel'),
(22, '2019-11-08 18:08:14', '2019-11-08 18:08:16', 1, 'marc'),
(23, '2019-11-08 18:08:27', '2019-11-08 18:08:29', 1, 'marc'),
(24, '2019-11-08 18:12:32', '2019-11-08 18:12:35', 1, 'marc'),
(25, '2019-11-08 18:23:16', '2019-11-08 18:23:29', 2, 'joel'),
(26, '2019-11-08 18:25:24', '2019-11-08 18:31:34', 12, 'marc'),
(27, '2019-11-08 18:26:54', '2019-11-08 18:27:12', 5, 'marc'),
(28, '2019-11-08 18:30:17', '2019-11-08 18:30:20', 3, 'marc'),
(29, '2019-11-08 18:31:39', '2019-11-08 18:31:41', 4, 'marc'),
(30, '2019-11-08 18:32:40', '2019-11-08 18:32:42', 5, 'marc'),
(31, '2019-11-08 18:33:56', '2019-11-08 18:33:58', 6, 'marc'),
(32, '2019-11-08 18:34:50', '2019-11-08 18:34:52', 7, 'marc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(1, 'LIBRE'),
(2, 'OCUPADO'),
(3, 'REPARACIÓN');

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
(1, 'espacios'),
(2, 'electronica');

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
('joel', '81dc9bdb52d04dc20036dbd8313ed055', 1, 'Joel', 'Fandos', 'joel@gmail.com'),
('marc', '81dc9bdb52d04dc20036dbd8313ed055', 1, 'Marc', 'Camós', 'marc@gmail.com'),
('miguel', '81dc9bdb52d04dc20036dbd8313ed055', 2, 'Miguel', 'Conchouso', 'miguel@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD PRIMARY KEY (`id_incidencia`);

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
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

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
-- AUTO_INCREMENT de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  MODIFY `id_incidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
