-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2023 a las 19:18:56
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
-- Base de datos: `acierto404`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`idCompra`, `idUser`, `idProd`) VALUES
(51, 22, 29),
(52, 10, 37),
(53, 8, 29),
(54, 6, 49),
(55, 4, 43),
(56, 21, 25),
(57, 48, 11),
(58, 42, 44),
(59, 46, 48),
(60, 24, 4),
(61, 28, 43),
(62, 20, 34),
(63, 19, 18),
(64, 38, 19),
(65, 43, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProd` int(11) NOT NULL,
  `nombreProd` varchar(100) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `precioProd` int(5) NOT NULL,
  `unidProd` int(2) NOT NULL,
  `talla` varchar(4) NOT NULL,
  `foto` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProd`, `nombreProd`, `marca`, `precioProd`, `unidProd`, `talla`, `foto`) VALUES
(1, 'futbol', 'nike', 331, 36, '39', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(2, 'baloncesto', 'nike', 228, 15, '47', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(3, 'futbol', 'air jordan', 108, 76, '42', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(4, 'running', 'fila', 47, 58, '38', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(5, 'running', 'fila', 82, 20, '47', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(6, 'running', 'fila', 402, 7, '45', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(7, 'baloncesto', 'reebok', 435, 67, '45', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(8, 'futbol', 'fila', 499, 81, '38', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(9, 'futbol', 'fila', 249, 75, '40', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(10, 'futbol', 'fila', 468, 95, '42', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(11, 'baloncesto', 'new balance', 406, 96, '44', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(12, 'baloncesto', 'air jordan', 257, 98, '41', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(13, 'futbol', 'fila', 133, 33, '47', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(14, 'baloncesto', 'reebok', 64, 73, '38', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(15, 'running', 'fila', 466, 12, '48', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(16, 'futbol', 'reebok', 194, 60, '44', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(17, 'running', 'converse', 41, 72, '47', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(18, 'running', 'nike', 40, 61, '42', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(19, 'futbol', 'converse', 152, 76, '45', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(20, 'baloncesto', 'adidas', 174, 30, '40', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(21, 'futbol', 'converse', 228, 68, '38', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(22, 'baloncesto', 'reebok', 148, 35, '42', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(23, 'baloncesto', 'fila', 130, 89, '44', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(24, 'futbol', 'reebok', 305, 48, '47', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(25, 'futbol', 'converse', 155, 60, '46', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(26, 'futbol', 'reebok', 219, 29, '47', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(27, 'baloncesto', 'reebok', 195, 41, '43', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(28, 'baloncesto', 'reebok', 318, 7, '38', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(29, 'futbol', 'adidas', 115, 58, '46', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(30, 'baloncesto', 'reebok', 217, 8, '44', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(31, 'futbol', 'fila', 233, 93, '41', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(32, 'futbol', 'reebok', 101, 58, '39', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(33, 'baloncesto', 'nike', 192, 59, '39', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(34, 'running', 'fila', 364, 13, '45', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(35, 'futbol', 'nike', 458, 28, '45', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(36, 'futbol', 'air jordan', 237, 79, '41', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(37, 'baloncesto', 'converse', 240, 52, '43', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(38, 'running', 'new balance', 340, 88, '43', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(39, 'baloncesto', 'nike', 105, 26, '45', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(40, 'running', 'air jordan', 481, 53, '42', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666),
(41, 'futbol', 'fila', 171, 89, '47', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(42, 'baloncesto', 'converse', 158, 52, '48', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(43, 'running', 'fila', 407, 7, '46', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(44, 'baloncesto', 'air jordan', 408, 64, '45', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(45, 'futbol', 'fila', 276, 87, '44', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(46, 'baloncesto', 'converse', 297, 58, '44', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(47, 'baloncesto', 'new balance', 496, 44, '46', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6464646464642f303030303030),
(48, 'baloncesto', 'reebok', 58, 72, '47', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f3566613264642f666666666666),
(49, 'baloncesto', 'reebok', 87, 63, '39', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6666343434342f666666666666),
(50, 'running', 'air jordan', 87, 61, '40', 0x687474703a2f2f64756d6d79696d6167652e636f6d2f313030783130302e706e672f6363303030302f666666666666);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUser` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `passw` varchar(30) NOT NULL,
  `numCompras` int(3) NOT NULL,
  `saldo` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUser`, `correo`, `username`, `passw`, `numCompras`, `saldo`) VALUES
(1, 'dlippi0@over-blog.com', 'lproffitt0', '1234', 58, 486),
(2, 'lshwenn1@forbes.com', 'bluckham1', '1234', 8, 642),
(3, 'dpiatti2@squarespace.com', 'dgalton2', '1234', 80, 715),
(4, 'cscambler3@nba.com', 'rantill3', '1234', 54, 596),
(5, 'rrolance4@fastcompany.com', 'cibel4', '1234', 81, 26),
(6, 'ylacy5@multiply.com', 'ahallock5', '1234', 12, 435),
(7, 'piashvili6@sourceforge.net', 'wnassi6', '1234', 26, 694),
(8, 'kguillard7@google.cn', 'wsacker7', '1234', 66, 895),
(9, 'ysaltman8@e-recht24.de', 'lchaudhry8', '1234', 63, 273),
(10, 'bpearle9@51.la', 'aserrier9', '1234', 19, 519),
(11, 'ykinneya@nationalgeographic.com', 'cbrainsbya', '1234', 95, 459),
(12, 'pbalamb@bbb.org', 'dkemmonsb', '1234', 79, 91),
(13, 'nmattiazzic@sciencedirect.com', 'ebrockhousec', '1234', 50, 939),
(14, 'awhittyd@unc.edu', 'bduigedd', '1234', 31, 835),
(15, 'wscandrede@nymag.com', 'ggiacomettie', '1234', 76, 889),
(16, 'jhonnicottf@aboutads.info', 'rheddef', '1234', 29, 120),
(17, 'ucohanig@wired.com', 'hmacgillicuddyg', '1234', 64, 574),
(18, 'jburderh@sourceforge.net', 'ehendriksh', '1234', 21, 968),
(19, 'gyankishini@tuttocitta.it', 'usummerladi', '1234', 87, 829),
(20, 'wloughneyj@hexun.com', 'bplastowj', '1234', 85, 960),
(21, 'lblanchek@yelp.com', 'orosenkrantzk', '1234', 30, 523),
(22, 'gokeevanl@yellowbook.com', 'spiggottl', '1234', 89, 101),
(23, 'cdwightm@mayoclinic.com', 'lebbingm', '1234', 94, 453),
(24, 'krikkardn@smh.com.au', 'lsteffann', '1234', 81, 588),
(25, 'fbrickwoodo@networkadvertising.org', 'mkleynermanso', '1234', 75, 761),
(26, 'carthurp@tripadvisor.com', 'swillavizep', '1234', 92, 987),
(27, 'ngarthlandq@soup.io', 'kfrankesq', '1234', 11, 168),
(28, 'npancastr@comcast.net', 'jbromfieldr', '1234', 48, 680),
(29, 'agrimmetts@linkedin.com', 'kmapiss', '1234', 21, 559),
(30, 'ndibiagiot@ox.ac.uk', 'tdooleyt', '1234', 71, 610),
(31, 'eprobbingsu@hostgator.com', 'mmacgloryu', '1234', 100, 569),
(32, 'jdorrancev@sbwire.com', 'fridouttv', '1234', 25, 323),
(33, 'olecountw@reverbnation.com', 'hmerrimentw', '1234', 38, 247),
(34, 'mfilippellox@hao123.com', 'mwillsonx', '1234', 35, 119),
(35, 'mbolesworthy@hp.com', 'tlainy', '1234', 1, 945),
(36, 'rcottillz@cpanel.net', 'gswantonz', '1234', 40, 856),
(37, 'cchezelle10@weather.com', 'fbowlas10', '1234', 50, 876),
(38, 'ebakewell11@bluehost.com', 'blovelady11', '1234', 90, 111),
(39, 'ycouroy12@exblog.jp', 'kcaherny12', '1234', 65, 95),
(40, 'doclovan13@ted.com', 'dpatriskson13', '1234', 80, 588),
(41, 'alinder14@opera.com', 'ehanaby14', '1234', 70, 726),
(42, 'clearoyd15@youtube.com', 'akemwall15', '1234', 72, 654),
(43, 'irene16@cpanel.net', 'cmenham16', '1234', 76, 379),
(44, 'jsteinhammer17@vistaprint.com', 'smetschke17', '1234', 76, 877),
(45, 'esummersett18@berkeley.edu', 'dlamborne18', '1234', 3, 118),
(46, 'nroseborough19@creativecommons.org', 'cramas19', '1234', 1, 990),
(47, 'astallworth1a@epa.gov', 'kantonat1a', '1234', 88, 588),
(48, 'bdambrosio1b@slate.com', 'aclyne1b', '1234', 73, 18),
(49, 'rruger1c@seesaa.net', 'bdurek1c', '1234', 31, 408),
(50, 'iginie1d@google.es', 'wveal1d', '1234', 92, 705);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idProd` (`idProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProd`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `usuario` (`idUser`) ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`idProd`) REFERENCES `producto` (`idProd`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
