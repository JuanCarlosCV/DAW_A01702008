-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2018 a las 04:35:09
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fruteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frutas`
--

CREATE TABLE `frutas` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `units` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `quantity` int(9) NOT NULL,
  `price` int(9) NOT NULL,
  `country` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `frutas`
--

INSERT INTO `frutas` (`id`, `name`, `units`, `quantity`, `price`, `country`) VALUES
(1, 'mandarina', 'm', 4, 56, 'mexico'),
(2, 'mango', 'm', 6, 67, 'celaya'),
(3, 'ds', 'ds', 3, 2, 'ds'),
(4, 'ds', 'd', 3, 3, 'ceda'),
(5, 'dddd', 'ddd', 5, 5, 'ce'),
(6, 'd', 't', 5, 56, 'mexico'),
(7, 'r', 'r', 2, 67, 'acambaro'),
(8, 'ds', 'd', 3, 2, 'ds'),
(9, 'f', 'f', 4, 4, 'da'),
(10, 'Mandarina', 'm', 3, 3, 'ds'),
(11, 'CABRERA', 'g', 3, 3, 'ds');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `frutas`
--
ALTER TABLE `frutas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `frutas`
--
ALTER TABLE `frutas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
