-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2020 a las 06:05:01
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_wexty`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tam2`
--

CREATE TABLE `tam2` (
  `ID_CENTRO` char(4) NOT NULL,
  `ID_ALMACEN` char(4) DEFAULT NULL,
  `ID_ARTICULO` varchar(10) DEFAULT NULL,
  `STOCK_ACTUAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbp1`
--

CREATE TABLE `tbp1` (
  `RUC_PARTNER` varchar(12) DEFAULT NULL,
  `DEN_COMERCIAL` varchar(100) DEFAULT NULL,
  `RESPONSABLE` varchar(50) DEFAULT NULL,
  `DIRECCION_FISCAL` varchar(100) DEFAULT NULL,
  `CUENTA_ASOCIADA` char(9) DEFAULT NULL,
  `MONEDA_PREFERENCIA` char(3) DEFAULT NULL,
  `HABILITADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbp1`
--

INSERT INTO `tbp1` (`RUC_PARTNER`, `DEN_COMERCIAL`, `RESPONSABLE`, `DIRECCION_FISCAL`, `CUENTA_ASOCIADA`, `MONEDA_PREFERENCIA`, `HABILITADO`) VALUES
('1072928958', 'LA TABERNA DE GYZYM', 'GERARDO ZAPATA MANCHEGO', 'LA CURVA PRIMERA ZONA DE COLLIQUE- COMAS', '666666666', 'PEN', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tc01`
--

CREATE TABLE `tc01` (
  `ID_CENTRO` char(4) NOT NULL,
  `DENO_CENTRO` varchar(50) DEFAULT NULL,
  `DIRECCION_FISCAL` varchar(110) DEFAULT NULL,
  `TIPO_CENTRO` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tc01`
--

INSERT INTO `tc01` (`ID_CENTRO`, `DENO_CENTRO`, `DIRECCION_FISCAL`, `TIPO_CENTRO`) VALUES
('WT01', 'CENTRO WEXTY LIMA', 'Calle Coronel Inclán 237 Oficina 608, Edificio BLU Build II - Miraflores.', 'FI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tca1`
--

CREATE TABLE `tca1` (
  `ID_CENTRO` char(4) DEFAULT NULL,
  `ID_ALMACEN` char(4) NOT NULL,
  `DENO_ALMACEN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tca1`
--

INSERT INTO `tca1` (`ID_CENTRO`, `ID_ALMACEN`, `DENO_ALMACEN`) VALUES
('WT01', '0001', 'ALMACEN MERCADERIA LIMA'),
('WT01', '0002', 'ALMACEN CALIDAD LIMA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm01`
--

CREATE TABLE `tm01` (
  `id_umat` varchar(3) NOT NULL,
  `denominacion_umat` varchar(40) DEFAULT NULL,
  `texto_umat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tm01`
--

INSERT INTO `tm01` (`id_umat`, `denominacion_umat`, `texto_umat`) VALUES
('Ca', 'Caja', 'Ca'),
('kg', 'kilogramo', 'kg'),
('L', 'Litro', 'L');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm02`
--

CREATE TABLE `tm02` (
  `id_umat` varchar(4) NOT NULL,
  `denominacion_umat` varchar(40) DEFAULT NULL,
  `rango_incial` varchar(10) DEFAULT NULL,
  `rango_final` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tm02`
--

INSERT INTO `tm02` (`id_umat`, `denominacion_umat`, `rango_incial`, `rango_final`) VALUES
('HAWA', 'MERCADERIAS', '100', '1000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tma1`
--

CREATE TABLE `tma1` (
  `ID_ARTICULO` varchar(10) NOT NULL,
  `DENO_ARTICULO` varchar(50) DEFAULT NULL,
  `PRECIO_REF` double DEFAULT NULL,
  `ID_UMAT` varchar(3) DEFAULT NULL,
  `ID_UMAT2` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tma1`
--

INSERT INTO `tma1` (`ID_ARTICULO`, `DENO_ARTICULO`, `PRECIO_REF`, `ID_UMAT`, `ID_UMAT2`) VALUES
('xxx', 'articulo prueba', 1, 'Kg', 'HAWA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tam2`
--
ALTER TABLE `tam2`
  ADD PRIMARY KEY (`ID_CENTRO`),
  ADD KEY `ID_ALMACEN` (`ID_ALMACEN`),
  ADD KEY `ID_ARTICULO` (`ID_ARTICULO`);

--
-- Indices de la tabla `tc01`
--
ALTER TABLE `tc01`
  ADD PRIMARY KEY (`ID_CENTRO`);

--
-- Indices de la tabla `tca1`
--
ALTER TABLE `tca1`
  ADD PRIMARY KEY (`ID_ALMACEN`),
  ADD KEY `ID_CENTRO` (`ID_CENTRO`);

--
-- Indices de la tabla `tm01`
--
ALTER TABLE `tm01`
  ADD PRIMARY KEY (`id_umat`);

--
-- Indices de la tabla `tm02`
--
ALTER TABLE `tm02`
  ADD PRIMARY KEY (`id_umat`);

--
-- Indices de la tabla `tma1`
--
ALTER TABLE `tma1`
  ADD PRIMARY KEY (`ID_ARTICULO`),
  ADD KEY `ID_UMAT` (`ID_UMAT`),
  ADD KEY `ID_UMAT2` (`ID_UMAT2`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tam2`
--
ALTER TABLE `tam2`
  ADD CONSTRAINT `tam2_ibfk_1` FOREIGN KEY (`ID_CENTRO`) REFERENCES `tc01` (`ID_CENTRO`),
  ADD CONSTRAINT `tam2_ibfk_2` FOREIGN KEY (`ID_ALMACEN`) REFERENCES `tca1` (`ID_ALMACEN`),
  ADD CONSTRAINT `tam2_ibfk_3` FOREIGN KEY (`ID_ARTICULO`) REFERENCES `tma1` (`ID_ARTICULO`);

--
-- Filtros para la tabla `tca1`
--
ALTER TABLE `tca1`
  ADD CONSTRAINT `tca1_ibfk_1` FOREIGN KEY (`ID_CENTRO`) REFERENCES `tc01` (`ID_CENTRO`);

--
-- Filtros para la tabla `tma1`
--
ALTER TABLE `tma1`
  ADD CONSTRAINT `tma1_ibfk_1` FOREIGN KEY (`ID_UMAT`) REFERENCES `tm01` (`id_umat`),
  ADD CONSTRAINT `tma1_ibfk_2` FOREIGN KEY (`ID_UMAT2`) REFERENCES `tm02` (`id_umat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
