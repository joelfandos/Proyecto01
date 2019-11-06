-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2019 a las 20:14:36
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
CREATE DATABASE IF NOT EXISTS `bd_proyecto01` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_proyecto01`;

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
(1, 'sala_multidisciplinaria', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg', 2),
(2, 'sala_multidisciplinaria', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg', 2),
(3, 'sala_multidisciplinaria', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg', 2),
(4, 'sala_multidisciplinaria', 1, 'Sala para hacer yoga, baile, presentaciones...', 'fotos/foto2.jpg', 2),
(5, 'sala_info01', 1, 'Sala de ordenadores para hacer informatica o distracciones.', 'fotos/foto3.jpg', 2),
(6, 'sala_info02', 1, 'Sala de ordenadores para hacer informatica o distracciones.', 'fotos/foto3.jpg', 2),
(7, 'taller_cocina', 1, 'Sala dedicada a los talleres de cocina.', 'fotos/foto4.jpg', 2),
(8, 'despacho01', 1, 'Despacho para utilizarlo en entrevistas.', 'fotos/foto5.jpg', 1),
(9, 'despacho02', 1, 'Despacho para utilizarlo en entrevistas.', 'fotos/foto5.jpg', 2),
(10, 'salon_actos', 1, 'Salón dedicado para hacer actos con un gran número de personas.', 'fotos/foto6.jpg', 1),
(11, 'sala_reuniones', 1, 'Sala para cualquier tipo de reuniones.', 'fotos/foto7.jpg', 1),
(12, 'proyector01', 2, 'QKK AK-80', 'fotos/foto8.jpg', 1),
(13, 'proyector02', 2, 'QKK AK-80', 'fotos/foto8.jpg', 1),
(14, 'portatil01', 2, 'HP OMEN 15-dc1023ns', 'fotos/foto9.jpg', 1),
(15, 'portatil02', 2, 'HP OMEN 15-dc1023ns', 'fotos/foto9.jpg', 1),
(16, 'portatil03', 2, 'HP OMEN 15-dc1023ns', 'fotos/foto9.jpg', 1),
(17, 'movil01', 2, 'Iphone 11', 'fotos/foto10.jpg', 1),
(18, 'movil02', 2, 'Iphone 11', 'fotos/foto10.jpg', 1);

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
(1, '2019-11-05 20:28:22', '0000-00-00 00:00:00', 1, 'miguel'),
(2, '2019-11-05 20:30:20', NULL, 1, 'MIGUEL'),
(3, '2019-11-05 20:50:38', NULL, 2, 'miguel'),
(4, '2019-11-06 16:59:44', NULL, 1, 'miguel'),
(5, '2019-11-06 17:53:58', NULL, 1, 'miguel'),
(6, '2019-11-06 17:54:07', NULL, 4, 'miguel'),
(7, '2019-11-06 17:54:10', NULL, 2, 'miguel'),
(8, '2019-11-06 17:57:09', NULL, 3, 'miguel'),
(9, '2019-11-06 18:03:41', NULL, 5, 'miguel'),
(10, '2019-11-06 18:25:46', NULL, 6, 'miguel'),
(11, '2019-11-06 19:25:47', NULL, 9, 'miguel'),
(12, '2019-11-06 19:26:15', NULL, 7, 'miguel');

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
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
