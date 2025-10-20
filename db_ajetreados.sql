-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Tiempo de generación: 20-10-2025 a las 18:30:07
-- Versión del servidor: 8.0.43
-- Versión de PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ajetreados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_cancion` int NOT NULL,
  `titulo_cancion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `portada_cancion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `letra_cancion` longtext COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id_cancion`, `titulo_cancion`, `portada_cancion`, `letra_cancion`) VALUES
(1, 'Prueba', 'uploads/68f67e148cf27_Gemini_Generated_Image_nburw4nburw4nbur (1).png', 'Esto es una prueba (2)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrantes`
--

CREATE TABLE `integrantes` (
  `id_integrante` int NOT NULL,
  `nombre_integrante` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `correo_electronico_integrante` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `numero_telefono_integrante` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `contrasena_integrante` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `token_integrante` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `integrantes`
--

INSERT INTO `integrantes` (`id_integrante`, `nombre_integrante`, `correo_electronico_integrante`, `numero_telefono_integrante`, `contrasena_integrante`, `token_integrante`) VALUES
(1, 'Jonathan Ramos', 'alanradax@gmail.com', '8444444444', '$2y$10$fav.6eRHEroHENABdRullOoHGsR.oLwxKCvQuMc3xyYDldJxbMa72', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `id_invitado` int NOT NULL,
  `nombre_invitado` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `correo_electronico_invitado` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `numero_telefono_invitado` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `contrasena_invitado` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `token_invitado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`id_invitado`, `nombre_invitado`, `correo_electronico_invitado`, `numero_telefono_invitado`, `contrasena_invitado`, `token_invitado`) VALUES
(1, 'Alan Ramos', 'alanramosdel@gmail.com', '8441752822', '$2y$10$kIiKnjcUnpn8uORndqe.heoOuXUKRueYfAqhJDi8901d5SbUj3vcq', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_cancion`);

--
-- Indices de la tabla `integrantes`
--
ALTER TABLE `integrantes`
  ADD PRIMARY KEY (`id_integrante`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`id_invitado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_cancion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `integrantes`
--
ALTER TABLE `integrantes`
  MODIFY `id_integrante` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `id_invitado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
