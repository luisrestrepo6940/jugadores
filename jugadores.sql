-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2018 a las 23:36:29
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jugadores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `Id_jugador` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(225) NOT NULL,
  `Apellido` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`Id_jugador`, `Nombre`, `Apellido`) VALUES
(1, 'Juan', 'Perez'),
(2, 'Jose', 'Benitez'),
(3, 'Jacobo', 'Perez'),
(4, 'Luis', 'Urrutia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posicion`
--

CREATE TABLE `posicion` (
  `Id_posicion` bigint(20) UNSIGNED NOT NULL,
  `Descripcion` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `posicion`
--

INSERT INTO `posicion` (`Id_posicion`, `Descripcion`) VALUES
(1, 'Defensa'),
(2, 'Delantero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_2p`
--

CREATE TABLE `rel_2p` (
  `Id_relacion` bigint(20) UNSIGNED NOT NULL,
  `id_jugador` int(11) NOT NULL,
  `id_posicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rel_2p`
--

INSERT INTO `rel_2p` (`Id_relacion`, `id_jugador`, `id_posicion`) VALUES
(1, 1, 2),
(2, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`Id_jugador`),
  ADD UNIQUE KEY `Id_jugador` (`Id_jugador`);

--
-- Indices de la tabla `posicion`
--
ALTER TABLE `posicion`
  ADD PRIMARY KEY (`Id_posicion`),
  ADD UNIQUE KEY `Id_posicion` (`Id_posicion`);

--
-- Indices de la tabla `rel_2p`
--
ALTER TABLE `rel_2p`
  ADD PRIMARY KEY (`Id_relacion`),
  ADD UNIQUE KEY `Id_relacion` (`Id_relacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `Id_jugador` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `posicion`
--
ALTER TABLE `posicion`
  MODIFY `Id_posicion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rel_2p`
--
ALTER TABLE `rel_2p`
  MODIFY `Id_relacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
