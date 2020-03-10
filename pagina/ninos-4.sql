-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-03-2020 a las 01:49:09
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ninos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_culto`
--

CREATE TABLE `detalle_culto` (
  `id_detalle` int(11) NOT NULL,
  `id_culto` int(11) NOT NULL,
  `id_servidor` int(11) NOT NULL,
  `id_encargado` int(11) NOT NULL,
  `fecha_hora_ingreso` datetime NOT NULL,
  `fecha_hora_salida` datetime NOT NULL,
  `observaciones` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refaccion` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE `encargado` (
  `id_encargado` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono1` int(11) NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_nino` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_nino` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `atención_especial` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` longblob DEFAULT NULL,
  `ruta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encargado`
--

INSERT INTO `encargado` (`id_encargado`, `nombre`, `apellido`, `telefono1`, `email`, `nombre_nino`, `apellido_nino`, `edad`, `atención_especial`, `foto`, `ruta`) VALUES
(33, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@gmail.com', 'Percy', 'Ortiz', 6, '', 0x2f6f70742f6c616d70702f74656d702f706870654a64556d30, 'imagenesBD/2020-03-08-08:59:46-123.jpg'),
(39, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@hotmail.es', 'Percy', 'Ortiz', 8, '', 0x2f6f70742f6c616d70702f74656d702f70687052416c414a73, 'imagenesBD/2020-03-08-11:18:04-123.jpg'),
(40, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@gmail.com', 'Percy', 'Ortiz', 7, '', 0x2f6f70742f6c616d70702f74656d702f7068704531385a5474, 'imagenesBD/2020-03-08-11:22:19-123.jpg'),
(41, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@hotmail.es', 'Percy', 'Ortiz', 7, '', 0x2f6f70742f6c616d70702f74656d702f70687054565a4f516f, 'imagenesBD/2020-03-08-11:23:49-123.jpg'),
(42, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@gmail.com', 'Percy', 'Ortiz', 7, '', 0x2f6f70742f6c616d70702f74656d702f706870674d61694e37, 'imagenesBD/2020-03-08-11:26:23-123.jpg'),
(43, 'percy', 'Ortiz', 324234234, 'percyortiz6420@hotmail.es', 'Percy', 'Ortiz', 3242, '', 0x2f6f70742f6c616d70702f74656d702f706870327a4e765069, 'imagenesBD/2020-03-08-11:31:06-123.jpg'),
(44, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@hotmail.es', 'Percy', 'Ortiz', 7, '', 0x2f6f70742f6c616d70702f74656d702f706870386c34346935, 'imagenesBD/2020-03-08-11:46:50-123.jpg'),
(45, 'percy', 'Ortiz', 40062792, 'percyortiz6420@gmail.com', 'Percy', 'Ortiz', 6, '', 0x2f6f70742f6c616d70702f74656d702f7068706369356f7962, 'imagenesBD/2020-03-08-11:48:02-123.jpg'),
(46, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@hotmail.es', 'Percy', 'Ortiz', 8, '', 0x2f6f70742f6c616d70702f74656d702f7068706972324d746f, 'imagenesBD/2020-03-09-04:02:43-123.jpg'),
(47, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@hotmail.es', 'Percy', 'Ortiz', 8, '', 0x2f6f70742f6c616d70702f74656d702f706870576c5a573865, 'imagenesBD/2020-03-09-04:05:49-123.jpg'),
(48, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@hotmail.es', 'Percy', 'Ortiz', 7, '', NULL, 'imagenesBD/2020-03-09-04:51:35-123.jpg'),
(49, 'Percy', 'Ortiz', 40062792, 'percyortiz6420@gmail.com', 'Percy', 'Ortiz', 7, '', NULL, 'imagenesBD/2020-03-09-09:30:48-123.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_servidor` int(11) NOT NULL,
  `descripción` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `fecha`, `id_servidor`, `descripción`) VALUES
(1, '2020-03-08', 1, 'Servicio 1 miércoles '),
(2, '2020-03-08', 1, 'Servicio 1 miércoles ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servidor`
--

CREATE TABLE `servidor` (
  `Id_servidor` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `DPI` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tiposervidor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servidor`
--

INSERT INTO `servidor` (`Id_servidor`, `nombre`, `apellido`, `telefono`, `DPI`, `id_tiposervidor`) VALUES
(1, 'percy', 'ortiz', 14123123, '123123', 1),
(3, 'Braulio', 'batz', 234234, '134234', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servidor`
--

CREATE TABLE `tipo_servidor` (
  `id_tiposervidor` int(11) NOT NULL,
  `Nombre` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_servidor`
--

INSERT INTO `tipo_servidor` (`id_tiposervidor`, `Nombre`) VALUES
(1, 'Coordinador'),
(2, 'Maestro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `id_servidor` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contrasena`, `id_servidor`) VALUES
(1, 'percy', '13aef0865dcae54b2e4db0067e3fd5c6', 1),
(2, 'admin', '33123123qdaefafdasdf', 2),
(3, 'percy', 'ca68e40defadf3bb4238defba2c7c852', 1),
(4, 'braulio', 'f3971e6521d54fc5a5a0566aea5aa73b', 3),
(5, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(6, 'servidor', '81dc9bdb52d04dc20036dbd8313ed055', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_culto`
--
ALTER TABLE `detalle_culto`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_culto` (`id_culto`),
  ADD KEY `id_servidor` (`id_servidor`),
  ADD KEY `id_encargado` (`id_encargado`);

--
-- Indices de la tabla `encargado`
--
ALTER TABLE `encargado`
  ADD PRIMARY KEY (`id_encargado`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `id_servidor` (`id_servidor`);

--
-- Indices de la tabla `servidor`
--
ALTER TABLE `servidor`
  ADD PRIMARY KEY (`Id_servidor`),
  ADD KEY `id_tiposervidor` (`id_tiposervidor`);

--
-- Indices de la tabla `tipo_servidor`
--
ALTER TABLE `tipo_servidor`
  ADD PRIMARY KEY (`id_tiposervidor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_culto`
--
ALTER TABLE `detalle_culto`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encargado`
--
ALTER TABLE `encargado`
  MODIFY `id_encargado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servidor`
--
ALTER TABLE `servidor`
  MODIFY `Id_servidor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_servidor`
--
ALTER TABLE `tipo_servidor`
  MODIFY `id_tiposervidor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_culto`
--
ALTER TABLE `detalle_culto`
  ADD CONSTRAINT `detalle_culto_ibfk_1` FOREIGN KEY (`id_servidor`) REFERENCES `servidor` (`Id_servidor`),
  ADD CONSTRAINT `detalle_culto_ibfk_2` FOREIGN KEY (`id_culto`) REFERENCES `servicio` (`id_servicio`),
  ADD CONSTRAINT `detalle_culto_ibfk_3` FOREIGN KEY (`id_encargado`) REFERENCES `encargado` (`id_encargado`);

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`id_servidor`) REFERENCES `servidor` (`Id_servidor`);

--
-- Filtros para la tabla `servidor`
--
ALTER TABLE `servidor`
  ADD CONSTRAINT `servidor_ibfk_1` FOREIGN KEY (`id_tiposervidor`) REFERENCES `tipo_servidor` (`id_tiposervidor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
