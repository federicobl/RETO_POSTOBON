-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2021 a las 15:42:51
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

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
  `MaterialId` float NOT NULL,
  `Nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `TipoMaterialId` float NOT NULL,
  `UsuarioId` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`MaterialId`, `Nombre`, `TipoMaterialId`, `UsuarioId`) VALUES
(1, 'dfghjklñ', 1, 1),
(2, 'dfghjklñ', 1, 1),
(3, 'dfghjklñ', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_reciclado`
--

CREATE TABLE `material_reciclado` (
  `Material_RecicladoId` int(11) NOT NULL,
  `Fecha_inicio` datetime NOT NULL,
  `MaterialId` float NOT NULL,
  `Cantidad_kilos` float NOT NULL,
  `Fecha_fin` int(11) NOT NULL,
  `UsuarioId` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `TipoDocumentoId` float NOT NULL,
  `TipoDocumento` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
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
  `TipoMaterialId` float NOT NULL,
  `TipoMaterial` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `UsuarioId` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipomateriales`
--

INSERT INTO `tipomateriales` (`TipoMaterialId`, `TipoMaterial`, `descripcion`, `UsuarioId`) VALUES
(1, 'plasticos', 'zesxrdctfvgybhunjimk', 1),
(2, 'otro', 'sxrdctfvygbuhnijmok,pl.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `TipoUsuarioId` float NOT NULL,
  `TipoUsuario` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`TipoUsuarioId`, `TipoUsuario`) VALUES
(1, 'Gerente'),
(2, 'Coordinador'),
(3, 'Operador'),
(4, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `UsuarioId` float NOT NULL,
  `Documento` float NOT NULL,
  `TIpoDocumentoId` float NOT NULL,
  `Nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Apellido` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Correo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Celular` float NOT NULL,
  `Usuario` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `TipoUsuarioId` float NOT NULL,
  `Password1` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`UsuarioId`, `Documento`, `TIpoDocumentoId`, `Nombre`, `Apellido`, `Correo`, `Celular`, `Usuario`, `TipoUsuarioId`, `Password1`) VALUES
(1, 1071170000, 1, 'Federico', 'Bustos Londoño', 'federicobl93@gmail.com', 3134400000, 'Fbustos', 4, 'Fedebulo25'),
(2, 849651, 1, 'bgtrvfcd', 'btrvfedcs', 'rbtvfedcs', 97465300, 'gsfds', 4, 'asdfgh'),
(3, 65465500, 1, 'federoeb', 'eervbrbeb', 'oorbneopbnert', 845698, 'asdfgh', 2, 'asdfghj');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`MaterialId`),
  ADD KEY `TipoMaterialId` (`TipoMaterialId`),
  ADD KEY `UsuarioId` (`UsuarioId`);

--
-- Indices de la tabla `material_reciclado`
--
ALTER TABLE `material_reciclado`
  ADD PRIMARY KEY (`Material_RecicladoId`),
  ADD KEY `UsuarioId` (`UsuarioId`),
  ADD KEY `MaterialId` (`MaterialId`);

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
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`TipoUsuarioId`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`UsuarioId`),
  ADD KEY `TipoUsuarioId` (`TipoUsuarioId`),
  ADD KEY `TIpoDocumentoId` (`TIpoDocumentoId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `MaterialId` float NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `material_reciclado`
--
ALTER TABLE `material_reciclado`
  MODIFY `Material_RecicladoId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `TipoDocumentoId` float NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipomateriales`
--
ALTER TABLE `tipomateriales`
  MODIFY `TipoMaterialId` float NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `TipoUsuarioId` float NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `UsuarioId` float NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`TipoMaterialId`) REFERENCES `tipomateriales` (`TipoMaterialId`),
  ADD CONSTRAINT `materiales_ibfk_2` FOREIGN KEY (`UsuarioId`) REFERENCES `usuario` (`UsuarioId`);

--
-- Filtros para la tabla `material_reciclado`
--
ALTER TABLE `material_reciclado`
  ADD CONSTRAINT `material_reciclado_ibfk_1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuario` (`UsuarioId`),
  ADD CONSTRAINT `material_reciclado_ibfk_2` FOREIGN KEY (`MaterialId`) REFERENCES `materiales` (`MaterialId`);

--
-- Filtros para la tabla `tipomateriales`
--
ALTER TABLE `tipomateriales`
  ADD CONSTRAINT `tipomateriales_ibfk_1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuario` (`UsuarioId`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`TipoUsuarioId`) REFERENCES `tipousuario` (`TipoUsuarioId`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`TIpoDocumentoId`) REFERENCES `tipodocumento` (`TipoDocumentoId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
