-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2018 a las 02:15:31
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_de_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `clnt_rut` varchar(10) NOT NULL,
  `clnt_nombre` varchar(30) NOT NULL,
  `clnt_apellido_p` varchar(30) NOT NULL,
  `clnt_apellido_m` text NOT NULL,
  `clnt_direccion` varchar(50) NOT NULL,
  `clnt_contacto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_combos`
--

CREATE TABLE `tbl_combos` (
  `cmbs_codigo` varchar(24) NOT NULL,
  `cmbs_nombre` varchar(30) NOT NULL,
  `cmbs_cantidad` int(11) NOT NULL,
  `cmbs_precio` int(11) NOT NULL,
  `cmbs_estado` tinyint(1) NOT NULL,
  `cmbs_fecha_inc` date NOT NULL,
  `cmbs_fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_combos`
--

CREATE TABLE `tbl_detalle_combos` (
  `dtcm_id` int(11) NOT NULL,
  `dtcm_cantidad` int(11) NOT NULL,
  `cmbs_codigo` varchar(24) NOT NULL,
  `prdc_codigo` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_ordenes`
--

CREATE TABLE `tbl_detalle_ordenes` (
  `dtrd_id` int(11) NOT NULL,
  `dtrd_cantidad` int(11) NOT NULL,
  `prdc_codigo` varchar(24) NOT NULL,
  `rdnd_codigo` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_ventas`
--

CREATE TABLE `tbl_detalle_ventas` (
  `dtvn_id` int(11) NOT NULL,
  `dtvn_cantidad` int(11) NOT NULL,
  `dtvn_precio` int(11) NOT NULL,
  `vnts_id` int(11) NOT NULL,
  `prdc_codigo` varchar(24) NOT NULL,
  `cmbs_codigo` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_familias`
--

CREATE TABLE `tbl_familias` (
  `fmls_codigo` varchar(24) NOT NULL,
  `fmls_nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='DT';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ordenes_de_compra`
--

CREATE TABLE `tbl_ordenes_de_compra` (
  `rdnd_codigo` varchar(24) NOT NULL,
  `rdnd_fecha` date NOT NULL,
  `prvd_rol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `prdc_codigo` varchar(24) NOT NULL,
  `prdc_nombre` varchar(30) NOT NULL,
  `prdc_cantidad` int(11) NOT NULL,
  `prdc_precio` int(11) NOT NULL,
  `prdc_estado` tinyint(1) NOT NULL,
  `prdc_umbral` int(11) NOT NULL,
  `prdc_fecha` date NOT NULL,
  `fmls_familia` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedores`
--

CREATE TABLE `tbl_proveedores` (
  `prvd_rol` varchar(10) NOT NULL,
  `prvd_nombre` varchar(30) NOT NULL,
  `prvd_direccion` varchar(50) NOT NULL,
  `prvd_contacto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ventas`
--

CREATE TABLE `tbl_ventas` (
  `vnts_id` int(11) NOT NULL,
  `vnts_total` int(11) NOT NULL,
  `vnts_fecha` date NOT NULL,
  `vnts_tipo_pago` varchar(20) NOT NULL,
  `clnt_rut` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`clnt_rut`);

--
-- Indices de la tabla `tbl_combos`
--
ALTER TABLE `tbl_combos`
  ADD PRIMARY KEY (`cmbs_codigo`);

--
-- Indices de la tabla `tbl_detalle_combos`
--
ALTER TABLE `tbl_detalle_combos`
  ADD PRIMARY KEY (`dtcm_id`);

--
-- Indices de la tabla `tbl_detalle_ordenes`
--
ALTER TABLE `tbl_detalle_ordenes`
  ADD PRIMARY KEY (`dtrd_id`);

--
-- Indices de la tabla `tbl_detalle_ventas`
--
ALTER TABLE `tbl_detalle_ventas`
  ADD PRIMARY KEY (`dtvn_id`);

--
-- Indices de la tabla `tbl_familias`
--
ALTER TABLE `tbl_familias`
  ADD PRIMARY KEY (`fmls_codigo`);

--
-- Indices de la tabla `tbl_ordenes_de_compra`
--
ALTER TABLE `tbl_ordenes_de_compra`
  ADD PRIMARY KEY (`rdnd_codigo`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`prdc_codigo`);

--
-- Indices de la tabla `tbl_proveedores`
--
ALTER TABLE `tbl_proveedores`
  ADD PRIMARY KEY (`prvd_rol`);

--
-- Indices de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD PRIMARY KEY (`vnts_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_combos`
--
ALTER TABLE `tbl_detalle_combos`
  MODIFY `dtcm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_ordenes`
--
ALTER TABLE `tbl_detalle_ordenes`
  MODIFY `dtrd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_ventas`
--
ALTER TABLE `tbl_detalle_ventas`
  MODIFY `dtvn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  MODIFY `vnts_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
