-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2023 a las 13:52:15
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `404acierto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `cuerpo` varchar(300) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `punt` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `cuerpo`, `id_usuario`, `punt`) VALUES
(1, 'Este es el cuerpo del comentario', 19, 3),
(2, 'Este es el cuerpo del comentario', 11, 3),
(3, 'Este es el cuerpo del comentario', 2, 3),
(4, 'Este es el cuerpo del comentario', 3, 7),
(5, 'Este es el cuerpo del comentario', 20, 3),
(6, 'Este es el cuerpo del comentario', 20, 3),
(7, 'Este es el cuerpo del comentario', 14, 8),
(8, 'Este es el cuerpo del comentario', 18, 4),
(9, 'Este es el cuerpo del comentario', 7, 1),
(10, 'Este es el cuerpo del comentario', 7, 3),
(11, 'Este es el cuerpo del comentario', 18, 9),
(12, 'Este es el cuerpo del comentario', 14, 6),
(13, 'Este es el cuerpo del comentario', 16, 5),
(14, 'Este es el cuerpo del comentario', 8, 7),
(15, 'Este es el cuerpo del comentario', 12, 5),
(16, 'Este es el cuerpo del comentario', 10, 10),
(17, 'Este es el cuerpo del comentario', 18, 8),
(18, 'Este es el cuerpo del comentario', 5, 2),
(19, 'Este es el cuerpo del comentario', 10, 6),
(20, 'Este es el cuerpo del comentario', 13, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `precio` int(3) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_comentario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `marca`, `modelo`, `precio`, `foto`, `id_comentario`) VALUES
(1, 'Adidas', 'Ultraboost', 426, '../Imagenes/Zapas/adidas_ultraboost.jpg', 13),
(2, 'Adidas', 'Superstar', 121, '../Imagenes/Zapas/adidas_superstar.jpg', 13),
(3, 'Adidas', 'NMD', 213, '../Imagenes/Zapas/adidas_nmd.jpg', 20),
(4, 'Adidas', 'Yeezy', 299, '../Imagenes/Zapas/adidas_yeezy.jpg', 20),
(5, 'Adidas', 'Stan Smith', 270, '../Imagenes/Zapas/adidas_stan.jpg', 15),
(6, 'Adidas', 'Adidas Gazelle', 12, '../Imagenes/Zapas/adidas_gazelle.jpg', 6),
(7, 'Adidas', 'EQT', 433, '../Imagenes/Zapas/adidas_eqt.jpg', 8),
(8, 'Adidas', 'Falcon', 311, '../Imagenes/Zapas/adidas_falcon.jpg', 11),
(9, 'Adidas', 'Deerupt', 482, '../Imagenes/Zapas/adidas_deerupt.jpg', 15),
(10, 'Nike', 'Air Max', 240, '../Imagenes/Zapas/nike_air_max.jpg', 16),
(11, 'Nike', 'Chunky Dunky', 1400, '../Imagenes/Zapas/nike_chunky.jpg', 12),
(12, 'Nike', 'React Element', 49, '../Imagenes/Zapas/nike_react.jpg', 10),
(13, 'Nike', 'Air Pegasus', 494, '../Imagenes/Zapas/nike_air_pegasus.jpg', 15),
(14, 'Nike', 'Blazer', 497, '../Imagenes/Zapas/nike_blazer.jpg', 4),
(15, 'New Balance', '550', 172, '../Imagenes/Zapas/nb_550.jpg', 14),
(16, 'New Balance', '574', 64, '../Imagenes/Zapas/nb_574.jpg', 18),
(17, 'New Balance', '997', 458, '../Imagenes/Zapas/nb_997.jpg', 12),
(18, 'New Balance', '996', 291, '../Imagenes/Zapas/nb_996.jpg', 19),
(19, 'New Balance', 'Fresh Foam Cruz', 166, '../Imagenes/Zapas/nb_fresh.jpg', 14),
(20, 'New Balance', '1080', 42, '../Imagenes/Zapas/nb_1080.jpg', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pfp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `clave`, `correo`, `pfp`) VALUES
(1, 'jcharette0', '1234', 'cdallicott0@t-online.de', ''),
(2, 'lquakley1', '1234', 'ghanton1@rambler.ru', ''),
(3, 'mbreitling2', '1234', 'aovanesian2@facebook.com', ''),
(4, 'acosh3', '1234', 'mfettiplace3@state.gov', ''),
(5, 'jthoresbie4', '1234', 'randersen4@pen.io', ''),
(6, 'kjosowitz5', '1234', 'gdovinson5@ucsd.edu', ''),
(7, 'pdampier6', '1234', 'tbeaven6@lycos.com', ''),
(8, 'ukleuer7', '1234', 'tmacauley7@a8.net', ''),
(9, 'bfinder8', '1234', 'cbarnshaw8@weibo.com', ''),
(10, 'apincott9', '1234', 'fdavidek9@youku.com', ''),
(11, 'tjansona', '1234', 'aarnoldia@linkedin.com', ''),
(12, 'mheballb', '1234', 'jcharkhamb@is.gd', ''),
(13, 'soakeyc', '1234', 'zbrandlic@toplist.cz', ''),
(14, 'bbeacond', '1234', 'rsiddeled@exblog.jp', ''),
(15, 'ashakeshafte', '1234', 'bburkille@cnbc.com', ''),
(16, 'murwenf', '1234', 'nmaclarenf@wufoo.com', ''),
(17, 'nsimnorg', '1234', 'ealeevyg@netscape.com', ''),
(18, 'lcaveth', '1234', 'rmaslinh@springer.com', ''),
(19, 'dmcdavitti', '1234', 'ylamartinei@symantec.com', ''),
(20, 'dvalenssmithj', '1234', 'aboobyerj@digg.com', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_comentario` (`id_comentario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_comentario`) REFERENCES `comentarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
