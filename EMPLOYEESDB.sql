-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-09-2019 a las 18:02:35
-- Versión del servidor: 10.3.15-MariaDB-1
-- Versión de PHP: 7.3.4-2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `EMPLOYEESDB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DEPARTMENTS`
--

CREATE TABLE `DEPARTMENTS` (
  `num` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `DEPARTMENTS`
--

INSERT INTO `DEPARTMENTS` (`num`, `name`) VALUES
(10, 'ACCOUNTING'),
(20, 'RESEARCH'),
(30, 'SALES'),
(40, 'PRODUCTION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EMPLOYEES`
--

CREATE TABLE `EMPLOYEES` (
  `num` int(11) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `dept_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `EMPLOYEES`
--

INSERT INTO `EMPLOYEES` (`num`, `surname`, `name`, `occupation`, `manager`, `begin_date`, `salary`, `commission`, `dept_num`) VALUES
(1000, 'PITT', 'BRAD', 'OWNER', NULL, '1984-01-01', 104000, NULL, 20),
(7369, 'REDLEAF', 'JANE', 'EMPLOYEE', 8001, '1990-12-17', 104000, NULL, 20),
(7499, 'DERN', 'BRUCE', 'SALESMAN', 7698, '1990-02-20', 15000, 390, 30),
(7521, 'ROBINSON', 'SARAH', 'SALESMAN', 7782, '1991-02-22', 16250, 650, 30),
(7566, 'DI CAPRIO', 'LEONARDO', 'MANAGER', 1000, '1991-04-02', 29000, NULL, 20),
(7654, 'HERRIMAN', 'DAMON', 'SALESMAN', 7698, '1991-09-29', 16000, 1020, 30),
(7698, 'BRONSON', 'CHARLES', 'MANAGER', 1000, '1991-05-01', 30050, NULL, 30),
(7782, 'ROBBIE', 'MARGOT', 'MANAGER', 1000, '1991-06-09', 28850, NULL, 10),
(7788, 'MADISON', 'MIKEY', 'ANALYST', 8000, '1991-11-09', 30000, NULL, 20),
(7844, 'DUNHAM', 'LENA', 'SALESMAN', 7698, '1991-09-08', 13500, 0, 30),
(7876, 'RITTEN', 'REBECCA', 'EMPLOYEE', 7788, '1991-09-23', 14300, NULL, 20),
(7900, 'COLLINS', 'CLIFTON', 'EMPLOYEE', 8001, '1991-12-03', 13350, NULL, 30),
(7902, 'ROWLING', 'KANSAS', 'ANALYST', 8000, '1991-12-03', 30000, NULL, 20),
(7934, 'HARRIS', 'DANIELLE', 'EMPLOYEE', 8001, '1992-01-23', 16900, NULL, 10),
(8000, 'QUALLEY', 'MARGARET', 'MANAGER', 1000, '1991-01-09', 28850, NULL, 20),
(8001, 'FANNING', 'DAKOTA', 'MANAGER', 1000, '1992-06-10', 28850, NULL, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DEPARTMENTS`
--
ALTER TABLE `DEPARTMENTS`
  ADD PRIMARY KEY (`num`);

--
-- Indices de la tabla `EMPLOYEES`
--
ALTER TABLE `EMPLOYEES`
  ADD PRIMARY KEY (`num`),
  ADD KEY `dept_num` (`dept_num`),
  ADD KEY `manager` (`manager`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `EMPLOYEES`
--
ALTER TABLE `EMPLOYEES`
  ADD CONSTRAINT `EMPLOYEES_ibfk_1` FOREIGN KEY (`dept_num`) REFERENCES `DEPARTMENTS` (`num`),
  ADD CONSTRAINT `EMPLOYEES_ibfk_2` FOREIGN KEY (`manager`) REFERENCES `EMPLOYEES` (`num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
