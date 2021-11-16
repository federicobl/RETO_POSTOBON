-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2021 a las 09:30:23
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sisinfo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `MaterialId` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Caracteristicas` varchar(250) NOT NULL,
  `TipoMaterialId` int(11) NOT NULL,
  `UsuarioId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`MaterialId`, `Nombre`, `Caracteristicas`, `TipoMaterialId`, `UsuarioId`) VALUES
(1, 'botellas pet', 'botellas de plastico donde se almacenan liquidos', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_reciclado`
--

CREATE TABLE `material_reciclado` (
  `MaterialRecicladoId` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `MaterialId` int(11) NOT NULL,
  `Peso` int(11) NOT NULL,
  `UsuarioId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `material_reciclado`
--

INSERT INTO `material_reciclado` (`MaterialRecicladoId`, `fecha`, `MaterialId`, `Peso`, `UsuarioId`) VALUES
(1, '2021-11-01', 1, 45, 1),
(2, '2021-11-02', 1, 65, 3),
(3, '2021-11-11', 1, 64, 2),
(4, '2021-11-08', 1, 652, 3),
(5, '2021-11-09', 1, 750, 4),
(6, '2021-11-08', 1, 753, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `TipoDocumentoId` int(11) NOT NULL,
  `TipoDocumento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`TipoDocumentoId`, `TipoDocumento`) VALUES
(1, 'Cedula de Ciudadania'),
(2, 'Tarjeta de identidad'),
(3, 'Cedula de extranjeria'),
(4, 'pasaporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomateriales`
--

CREATE TABLE `tipomateriales` (
  `TipoMaterialId` int(11) NOT NULL,
  `TipoMaterial` varchar(50) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `UsuarioId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipomateriales`
--

INSERT INTO `tipomateriales` (`TipoMaterialId`, `TipoMaterial`, `Descripcion`, `UsuarioId`) VALUES
(1, 'Plasticos', '4ce5rv6tb7yn8umi,xdxctfvygbuhnijmok', 1),
(2, 'alimentos', 'xsercdtvfygbnhujimko,', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuarios`
--

CREATE TABLE `tipousuarios` (
  `TipoUsuarioId` int(11) NOT NULL,
  `Tipousuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipousuarios`
--

INSERT INTO `tipousuarios` (`TipoUsuarioId`, `Tipousuario`) VALUES
(1, 'Gerente'),
(2, 'Coordinador'),
(3, 'Operador'),
(4, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioId` int(11) NOT NULL,
  `Documento` float NOT NULL,
  `TipoDocumentoId` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Celular` int(11) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `TipoUsuarioId` int(11) NOT NULL,
  `Contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`UsuarioId`, `Documento`, `TipoDocumentoId`, `Nombre`, `Apellido`, `Correo`, `Celular`, `Usuario`, `TipoUsuarioId`, `Contraseña`) VALUES
(1, 1071170000, 1, 'Federico', 'Bustos Londoño', 'federicobl93@gmail.com', 2147483647, 'Fbustos', 1, 'Ean123'),
(2, 849651, 1, 'bgtrvfcd', 'btrvfedcs', 'rbtvfedcs', 97465300, 'gsfds', 1, 'asdfgh'),
(3, 65465500, 1, 'federoeb', 'eervbrbeb', 'oorbneopbnert', 845698, 'Fbustos1', 2, '12345'),
(4, 974, 1, 'ctfvygbhunijmo', 'ctffvygbuhni,klp', 'vtfygbhu,kl', 52161, 'Fbustos2', 3, 'asdfghjkl');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`MaterialId`),
  ADD KEY `UsuarioId` (`UsuarioId`),
  ADD KEY `TipoMaterialId` (`TipoMaterialId`);

--
-- Indices de la tabla `material_reciclado`
--
ALTER TABLE `material_reciclado`
  ADD PRIMARY KEY (`MaterialRecicladoId`),
  ADD KEY `MaterialId` (`MaterialId`),
  ADD KEY `UsuarioId` (`UsuarioId`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`TipoDocumentoId`);

--
-- Indices de la tabla `tipomateriales`
--
ALTER TABLE `tipomateriales`
  ADD PRIMARY KEY (`TipoMaterialId`),
  ADD KEY `UsuarioId` (`UsuarioId`);

--
-- Indices de la tabla `tipousuarios`
--
ALTER TABLE `tipousuarios`
  ADD PRIMARY KEY (`TipoUsuarioId`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioId`),
  ADD KEY `TipoDocumentoId` (`TipoDocumentoId`),
  ADD KEY `TipoUsuarioId` (`TipoUsuarioId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `MaterialId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `material_reciclado`
--
ALTER TABLE `material_reciclado`
  MODIFY `MaterialRecicladoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `TipoDocumentoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipomateriales`
--
ALTER TABLE `tipomateriales`
  MODIFY `TipoMaterialId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipousuarios`
--
ALTER TABLE `tipousuarios`
  MODIFY `TipoUsuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`TipoMaterialId`) REFERENCES `tipomateriales` (`TipoMaterialId`),
  ADD CONSTRAINT `materiales_ibfk_2` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Filtros para la tabla `material_reciclado`
--
ALTER TABLE `material_reciclado`
  ADD CONSTRAINT `material_reciclado_ibfk_1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`),
  ADD CONSTRAINT `material_reciclado_ibfk_2` FOREIGN KEY (`MaterialId`) REFERENCES `materiales` (`MaterialId`);

--
-- Filtros para la tabla `tipomateriales`
--
ALTER TABLE `tipomateriales`
  ADD CONSTRAINT `tipomateriales_ibfk_1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`TipoDocumentoId`) REFERENCES `tipodocumento` (`TipoDocumentoId`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`TipoUsuarioId`) REFERENCES `tipousuarios` (`TipoUsuarioId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
