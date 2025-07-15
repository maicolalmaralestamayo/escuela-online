-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-07-2025 a las 02:11:23
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela-online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividads`
--

CREATE TABLE `actividads` (
  `id` bigint UNSIGNED NOT NULL,
  `actividad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` bigint UNSIGNED NOT NULL,
  `inicio` timestamp NULL DEFAULT NULL,
  `fin` timestamp NULL DEFAULT NULL,
  `activa` tinyint(1) NOT NULL DEFAULT '1',
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividads`
--

INSERT INTO `actividads` (`id`, `actividad`, `descripcion`, `usuario_id`, `inicio`, `fin`, `activa`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Actividad 1', 'Realizar resumen del tema 3', 1, '2025-05-01 14:00:00', '2025-05-31 14:00:00', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(2, 'Actividad 2', 'Realizar resumen del tema 2', 2, '2025-05-01 14:00:00', '2025-05-31 14:00:00', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(3, 'Actividad 3', 'Realizar resumen del tema 1', 1, '2025-05-01 14:00:00', '2025-05-31 14:00:00', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_alumno_aulas`
--

CREATE TABLE `actividad_alumno_aulas` (
  `id` bigint UNSIGNED NOT NULL,
  `actividad_id` bigint UNSIGNED NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `asignatura_id` bigint UNSIGNED DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_alumno_generals`
--

CREATE TABLE `actividad_alumno_generals` (
  `id` bigint UNSIGNED NOT NULL,
  `actividad_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_alumno_grados`
--

CREATE TABLE `actividad_alumno_grados` (
  `id` bigint UNSIGNED NOT NULL,
  `actividad_id` bigint UNSIGNED NOT NULL,
  `grado_id` bigint UNSIGNED NOT NULL,
  `asignatura_id` bigint UNSIGNED DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_alumno_grupos`
--

CREATE TABLE `actividad_alumno_grupos` (
  `id` bigint UNSIGNED NOT NULL,
  `actividad_id` bigint UNSIGNED NOT NULL,
  `alumno_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_calificacion_alumnos`
--

CREATE TABLE `actividad_calificacion_alumnos` (
  `id` bigint UNSIGNED NOT NULL,
  `actividad_id` bigint UNSIGNED NOT NULL,
  `alumno_id` bigint UNSIGNED NOT NULL,
  `calificacion_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_contenidos`
--

CREATE TABLE `actividad_contenidos` (
  `id` bigint UNSIGNED NOT NULL,
  `actividad_id` bigint UNSIGNED NOT NULL,
  `contenido_id` bigint UNSIGNED NOT NULL,
  `orden` smallint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividad_contenidos`
--

INSERT INTO `actividad_contenidos` (`id`, `actividad_id`, `contenido_id`, `orden`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(2, 1, 2, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(3, 2, 3, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(4, 2, 4, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(5, 3, 5, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_respuestas`
--

CREATE TABLE `actividad_respuestas` (
  `id` bigint UNSIGNED NOT NULL,
  `alumno_id` bigint UNSIGNED NOT NULL,
  `actividad_id` bigint UNSIGNED NOT NULL,
  `contenido_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `dni`, `genero_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ethyl', 'Norma', 'Glover', 'Ziemann', '99845966', 2, 'Impedit esse et reprehenderit impedit facilis cum ut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(2, 'Grover', NULL, 'Tromp', 'Rutherford', '95419044', 1, 'Modi et reprehenderit quas quia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(3, 'Paris', NULL, 'Yundt', 'Balistreri', '61403714', 1, 'Iure accusamus eaque ut eaque eligendi.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(4, 'Alex', NULL, 'Greenfelder', 'Goldner', '45801150', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(5, 'Mariane', 'Mellie', 'Doyle', 'Ratke', '70908829', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(6, 'Evangeline', 'Else', 'Hodkiewicz', 'Murazik', '84680921', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(7, 'Astrid', NULL, 'Keeling', 'Mayert', '48348193', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(8, 'Donna', NULL, 'King', 'Murray', '53716049', 2, 'Velit expedita laboriosam voluptas sapiente perspiciatis ipsa repellendus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(9, 'Roselyn', 'Reba', 'Cummerata', 'Wiza', '17928799', 2, 'Et maiores mollitia aut quae ipsa quis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(10, 'Leland', 'Johan', 'Haag', 'Schmidt', '78276730', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(11, 'Jaime', NULL, 'Fay', 'Marquardt', '13934614', 1, 'Illum facere nihil odit culpa ad est ut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(12, 'Jesus', 'Reece', 'Kuphal', 'Gleason', '85423790', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(13, 'Neva', NULL, 'Gleichner', 'Tremblay', '35991993', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(14, 'Genesis', 'Trycia', 'Hills', 'Johnston', '99114465', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(15, 'Meghan', NULL, 'Thiel', 'Crooks', '27628618', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(16, 'Armani', NULL, 'Morissette', 'Bartoletti', '28527178', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(17, 'Milan', 'Florian', 'Lowe', 'Emard', '82829431', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(18, 'Lesly', NULL, 'Wehner', 'Stiedemann', '21172695', 2, 'Modi sunt possimus libero aut excepturi explicabo.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(19, 'Michel', 'Jerod', 'Abbott', 'DuBuque', '96974730', 1, 'Voluptatibus veniam qui voluptatum consequuntur cum maxime repellat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(20, 'Paul', 'Ramon', 'Bartell', 'Thiel', '64346770', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(21, 'George', 'Augustus', 'Cronin', 'Mosciski', '25123021', 1, 'Omnis consectetur consequuntur ea nihil alias in.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(22, 'Bertram', NULL, 'Hauck', 'Durgan', '39992057', 1, 'Rem ratione minima itaque maxime aut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(23, 'Ena', NULL, 'Reynolds', 'Daniel', '78524356', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(24, 'Sandy', NULL, 'Lemke', 'Gislason', '21014983', 2, 'Consequuntur dicta molestiae enim id qui molestiae dolor tenetur.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(25, 'Archibald', 'Jeremie', 'Nikolaus', 'Jones', '47215710', 1, 'Sed autem sit provident eaque ratione.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(26, 'Payton', 'Andy', 'Murray', 'Jast', '17511828', 1, 'Ex dolorem aliquid deleniti necessitatibus eum repellendus ut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(27, 'Peggie', 'Rebecca', 'VonRueden', 'McGlynn', '50428657', 2, 'Aliquid nisi veritatis consectetur.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(28, 'Ilene', NULL, 'Romaguera', 'Cremin', '62109123', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(29, 'Mikel', NULL, 'Will', 'Zboncak', '67320141', 1, 'Dolorum aliquam est error dicta.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(30, 'Mertie', NULL, 'Langworth', 'Kassulke', '74791179', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(31, 'Peggie', 'Leonora', 'Dickens', 'Mayer', '94432475', 2, 'Et quibusdam ea quis quasi debitis debitis est.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(32, 'Gerardo', 'Jamey', 'Macejkovic', 'O\'Keefe', '91351993', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(33, 'Annabell', NULL, 'Grant', 'Shields', '18663610', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(34, 'Gideon', NULL, 'Glover', 'Jones', '24060335', 1, 'Quia numquam ut voluptates quia possimus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(35, 'Garett', 'Lisandro', 'Pollich', 'O\'Reilly', '78301239', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(36, 'Myriam', NULL, 'Dietrich', 'Pouros', '94075856', 2, 'Dolorem est non repudiandae praesentium accusamus aut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(37, 'Cody', NULL, 'Denesik', 'Howell', '25204602', 1, 'Tempore provident ipsam et quasi.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(38, 'Jamaal', NULL, 'Waelchi', 'Lemke', '74900341', 1, 'Numquam rerum fugit blanditiis minima.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(39, 'Lura', 'Mona', 'Larkin', 'Crona', '81223066', 2, 'Voluptatem est iusto ipsa cumque et natus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(40, 'Mervin', 'Easter', 'Flatley', 'Sauer', '56608951', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(41, 'Carlie', 'Carmela', 'Block', 'Lynch', '78615609', 2, 'Qui perspiciatis assumenda repudiandae.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(42, 'Declan', 'Craig', 'Littel', 'Ritchie', '78861599', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(43, 'Eda', NULL, 'Gottlieb', 'Rogahn', '68936993', 2, 'Ut dolores autem ducimus minima est.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(44, 'Stephania', 'Sienna', 'Gutmann', 'Koch', '99225586', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(45, 'Amani', NULL, 'Bayer', 'Davis', '27729055', 1, 'Debitis dolorum sunt ut perspiciatis dicta iste.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(46, 'Theodore', NULL, 'Kunze', 'Terry', '49383317', 1, 'Et enim non saepe laboriosam facere facere inventore qui.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(47, 'Justus', NULL, 'Hahn', 'Gerhold', '42546236', 1, 'Est omnis necessitatibus et perferendis asperiores nulla ipsam qui.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(48, 'Candida', NULL, 'Brekke', 'Gibson', '77688155', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(49, 'Coleman', NULL, 'Hayes', 'Rutherford', '66676031', 1, 'Quam cupiditate et nostrum ut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(50, 'Monique', NULL, 'Pfeffer', 'Conroy', '40562499', 2, 'Reprehenderit voluptates aut quas.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(51, 'Cristal', 'Ruthe', 'Littel', 'Hammes', '27947144', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(52, 'Santa', NULL, 'Bruen', 'Zieme', '30410413', 1, 'Sed aliquid perferendis ut in.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(53, 'Judy', 'Bryana', 'Ledner', 'Cruickshank', '55611579', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(54, 'Rowan', 'Ignacio', 'Gorczany', 'Lynch', '81952482', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(55, 'Kathlyn', NULL, 'Krajcik', 'Dietrich', '61132057', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(56, 'Doris', 'Curt', 'Quigley', 'O\'Connell', '87448892', 1, 'Ut dolorem ipsa et praesentium perferendis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(57, 'Broderick', NULL, 'Halvorson', 'Stark', '48073445', 1, 'Dolore odio a veritatis dolor cupiditate labore.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(58, 'Augustine', 'Rachael', 'Bergnaum', 'Abbott', '51369464', 2, 'Perferendis laudantium dolore voluptas et ratione sunt id.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(59, 'Sigurd', 'Percy', 'Hoppe', 'Adams', '31868203', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(60, 'Rhea', 'Lily', 'Kuvalis', 'Morar', '90748761', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(61, 'Beatrice', NULL, 'Will', 'Veum', '55099290', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(62, 'Reymundo', NULL, 'Connelly', 'Bailey', '46271168', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(63, 'Eric', NULL, 'Kohler', 'Stiedemann', '36219839', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(64, 'Patsy', NULL, 'Armstrong', 'Torphy', '65923213', 2, 'Neque et in sunt natus ab voluptas aliquid.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(65, 'Maci', NULL, 'Jaskolski', 'Collier', '34693255', 2, 'Similique est molestiae maxime a ipsa doloremque.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(66, 'Brisa', NULL, 'D\'Amore', 'Halvorson', '71357665', 2, 'Dolorem totam fugiat repellendus totam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(67, 'Torrey', NULL, 'Wolff', 'Kozey', '16286336', 1, 'Quia excepturi in distinctio quae sit et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(68, 'Gerson', 'Hipolito', 'Lang', 'Sipes', '89962460', 1, 'Exercitationem itaque eum cupiditate reiciendis est accusantium consequuntur.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(69, 'Erik', NULL, 'Farrell', 'West', '62182809', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(70, 'Lindsey', NULL, 'Hammes', 'Gleichner', '66694070', 1, 'Eius sint at delectus temporibus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(71, 'Gerardo', 'Lemuel', 'Kunze', 'Robel', '49351719', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(72, 'Magnus', 'Brayan', 'Grady', 'Reynolds', '53671434', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(73, 'Rafaela', 'Antonetta', 'Mosciski', 'Brown', '11437857', 2, 'Voluptas exercitationem iure voluptas aut odio.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(74, 'Ruthie', NULL, 'Streich', 'Pfannerstill', '33707811', 2, 'Sed beatae tenetur expedita ullam totam odio.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(75, 'Tiana', NULL, 'Beahan', 'Nicolas', '60833836', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(76, 'Otha', NULL, 'Orn', 'Bergstrom', '41437881', 2, 'Unde corporis et assumenda eius et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(77, 'Ivah', 'Dina', 'Hermann', 'Powlowski', '68888136', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(78, 'Athena', NULL, 'Bosco', 'Simonis', '28816007', 2, 'Est hic facere qui numquam a.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(79, 'Alexzander', NULL, 'Murphy', 'Keeling', '68400956', 1, 'Assumenda consequatur et incidunt.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(80, 'Cora', NULL, 'Bernier', 'D\'Amore', '16008318', 2, 'Et qui exercitationem sequi tempore est.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(81, 'Guido', 'Jamie', 'Tillman', 'Gaylord', '83469083', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(82, 'Alexandrea', 'Daisha', 'Fritsch', 'Deckow', '30900324', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(83, 'Carolyn', NULL, 'Witting', 'Jakubowski', '10046512', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(84, 'Malachi', NULL, 'Haley', 'Rippin', '74921062', 1, 'Nostrum aspernatur eligendi voluptas molestiae voluptatem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(85, 'Mozell', 'Alisha', 'Mayer', 'Boyle', '90642340', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(86, 'Mazie', NULL, 'Ward', 'Ritchie', '91927414', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(87, 'Grace', NULL, 'Kunze', 'Doyle', '11601577', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(88, 'Lester', NULL, 'Adams', 'Barton', '29696687', 1, 'Praesentium eum enim laborum quis molestias qui accusamus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(89, 'Alfredo', 'Alessandro', 'Mohr', 'Runte', '38885100', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(90, 'Arnaldo', NULL, 'Olson', 'Mayert', '84580517', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(91, 'Candida', NULL, 'Windler', 'Romaguera', '71045787', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(92, 'Rylee', 'Ernestine', 'Emmerich', 'Padberg', '23092351', 2, 'Corrupti ducimus repellat ratione iste quidem voluptas.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(93, 'Kamille', NULL, 'Borer', 'McLaughlin', '26621095', 2, 'Est recusandae et id provident earum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(94, 'Nichole', NULL, 'Dietrich', 'Carter', '63373465', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(95, 'Megane', 'Lavinia', 'Corwin', 'Lynch', '55689828', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(96, 'Madaline', NULL, 'Runte', 'Tromp', '76351486', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(97, 'Arielle', 'Sincere', 'Kutch', 'Bartell', '10812825', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(98, 'Destin', NULL, 'Christiansen', 'Fritsch', '45940580', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(99, 'Madge', 'Shea', 'Bogan', 'Zulauf', '57503247', 2, 'Amet nisi quia dolorum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(100, 'Sammie', 'Arthur', 'Farrell', 'Kohler', '49351652', 1, 'Nihil sed aut aut quaerat sit eum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(101, 'Floyd', NULL, 'Blick', 'Berge', '38734879', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(102, 'Emmy', 'Daphne', 'Rowe', 'Padberg', '37275931', 2, 'Dolorem veniam omnis fugit delectus magni et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(103, 'Nigel', 'Javon', 'Blanda', 'Morar', '24728027', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(104, 'Ida', NULL, 'Gusikowski', 'Rogahn', '43634447', 2, 'Iste minus qui voluptatibus necessitatibus sunt.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(105, 'Deven', NULL, 'Romaguera', 'Walter', '92000915', 1, 'Eveniet harum iusto est et aut molestiae nobis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(106, 'Sim', 'Kane', 'Jakubowski', 'Wolff', '59680408', 1, 'Similique enim laborum cupiditate incidunt ullam laborum iusto.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(107, 'Ferne', NULL, 'Bergnaum', 'Jerde', '36355855', 1, 'Dolor reprehenderit voluptatum non facere sint reprehenderit aut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(108, 'Jarrell', NULL, 'Konopelski', 'Pfeffer', '40626656', 1, 'Dolorum et inventore reprehenderit mollitia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(109, 'Mateo', NULL, 'Rempel', 'Schoen', '52091963', 1, 'In omnis eius et et facere accusamus cumque quo.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(110, 'Israel', 'Brock', 'Roob', 'Cremin', '98211399', 1, 'Accusamus a non incidunt corrupti et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(111, 'Adaline', 'Brittany', 'Lindgren', 'Bernhard', '61254552', 2, 'Neque suscipit quos illum reiciendis a.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(112, 'Brice', NULL, 'Doyle', 'Brekke', '66227486', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(113, 'Davonte', NULL, 'Klocko', 'Kihn', '38430853', 1, 'Fugiat qui vitae dolore quis saepe velit.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(114, 'Alberta', 'Mireya', 'Tillman', 'Schamberger', '30757856', 2, 'Non beatae blanditiis quis nisi eos ex quidem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(115, 'Frieda', 'Fiona', 'Welch', 'Bosco', '35403510', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(116, 'Meredith', NULL, 'Casper', 'Waelchi', '99459109', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(117, 'Reece', NULL, 'Lockman', 'Walter', '86983893', 1, 'Accusantium blanditiis voluptatem accusamus dolores et et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(118, 'Emmitt', NULL, 'Hills', 'Swift', '83118892', 1, 'Velit nihil autem quaerat facilis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(119, 'Ava', 'Rebekah', 'Wisozk', 'Beatty', '86751454', 2, 'Odio dolor veritatis eum unde mollitia hic quidem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(120, 'Jedediah', NULL, 'Heidenreich', 'Wiza', '76938857', 1, 'Assumenda ut et quis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(121, 'Kira', NULL, 'Walter', 'Schmidt', '81923004', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(122, 'Ila', NULL, 'Hartmann', 'Shields', '71109262', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(123, 'Chauncey', NULL, 'Oberbrunner', 'Champlin', '20703208', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(124, 'Corbin', NULL, 'Tillman', 'O\'Keefe', '63905888', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(125, 'Keyshawn', NULL, 'Kub', 'Hilpert', '75457204', 1, 'Sapiente ea enim occaecati et non qui.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(126, 'Bettye', NULL, 'Prosacco', 'Murazik', '17455397', 2, 'Ea voluptatem ex ratione optio deserunt dolore vitae quisquam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(127, 'Maud', NULL, 'Mayer', 'Christiansen', '33871061', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(128, 'Kathryn', NULL, 'Bayer', 'Little', '37704841', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(129, 'Catalina', 'Kasandra', 'Kreiger', 'Reichert', '28917003', 2, 'Itaque repudiandae laborum excepturi omnis laborum dolor.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(130, 'Lula', 'Juvenal', 'Luettgen', 'Jakubowski', '62946055', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(131, 'Mariah', 'Rosella', 'Bailey', 'Thompson', '36792555', 2, 'Error reiciendis autem nisi nisi qui.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(132, 'Brett', NULL, 'Yost', 'Upton', '70703737', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(133, 'Sasha', NULL, 'Lind', 'Jenkins', '95063971', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(134, 'Neal', 'Reggie', 'Leffler', 'McClure', '41089671', 1, 'Quos sit quod sit dolore.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(135, 'Sophie', NULL, 'Bednar', 'Daniel', '75330226', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(136, 'Gene', NULL, 'Wolff', 'Flatley', '76741084', 1, 'Dolorem aut maxime aut omnis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(137, 'Hiram', NULL, 'Davis', 'Gulgowski', '28192794', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(138, 'Christy', 'Neva', 'Pfeffer', 'Ondricka', '39015780', 2, 'Voluptatibus error qui cumque vel sint et quis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(139, 'Tabitha', NULL, 'Goyette', 'Nienow', '94717803', 2, 'Atque sunt rerum deleniti ad et beatae.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(140, 'Bart', NULL, 'Torp', 'Tromp', '98705195', 1, 'A et inventore voluptatem voluptatibus voluptatem saepe facilis rem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(141, 'Rebecca', 'Janice', 'Pouros', 'Ondricka', '75014526', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(142, 'Vickie', 'Annalise', 'Maggio', 'Shanahan', '66912876', 2, 'Et perspiciatis ea praesentium dolores recusandae deleniti eos placeat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(143, 'Stuart', NULL, 'Fahey', 'Emmerich', '17259905', 1, 'Harum consequatur accusamus assumenda vitae omnis laborum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(144, 'Ernesto', NULL, 'Mayer', 'Lowe', '35191546', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(145, 'Penelope', 'Fiona', 'Huels', 'Kreiger', '23046819', 2, 'Est quidem nostrum similique.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(146, 'Antonina', 'Sabina', 'Kuhn', 'Zemlak', '86197248', 2, 'Rem quia quae quod ea repudiandae doloremque saepe.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(147, 'Leonora', 'Aracely', 'Rohan', 'Schowalter', '94098303', 2, 'Ipsum est soluta sint quam illum odit adipisci hic.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(148, 'Jaquelin', NULL, 'Kunde', 'McCullough', '18092150', 2, 'Veniam doloribus nemo architecto incidunt recusandae sequi aut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(149, 'Cecil', 'Kenny', 'Weissnat', 'Fahey', '67678148', 1, 'Consequatur sequi rerum quisquam dolorem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(150, 'Gabriel', 'Quinn', 'Gleichner', 'Oberbrunner', '62701189', 1, 'Qui vero autem qui magni.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(151, 'Giuseppe', NULL, 'Schmitt', 'Eichmann', '67624902', 1, 'Omnis ipsam cum et excepturi amet cumque reprehenderit.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(152, 'Rachelle', NULL, 'Koch', 'Treutel', '32376904', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(153, 'Monte', NULL, 'Pagac', 'Schoen', '47573028', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(154, 'Mateo', 'Maurice', 'Kuvalis', 'Mills', '31906608', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(155, 'Julius', NULL, 'Reilly', 'Hermiston', '70255828', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(156, 'Pat', NULL, 'Predovic', 'Brown', '53227163', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(157, 'Holden', NULL, 'Wiegand', 'Littel', '39668544', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(158, 'Shanel', NULL, 'Dickinson', 'Metz', '74236559', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(159, 'Taylor', NULL, 'Heller', 'Rodriguez', '72488580', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(160, 'Dawn', 'Rosalind', 'Morissette', 'Sanford', '39987134', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(161, 'Brain', NULL, 'Willms', 'Collier', '12992482', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(162, 'Trent', NULL, 'Lowe', 'Greenholt', '12992035', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(163, 'Josefa', NULL, 'Wisoky', 'Reichert', '61250891', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(164, 'Yadira', NULL, 'McLaughlin', 'Wyman', '74136947', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(165, 'Julio', 'Berta', 'Ebert', 'Beatty', '35957338', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(166, 'Kiera', 'Eliza', 'Hickle', 'Reilly', '61851501', 2, 'Autem nihil odit a eos modi fugiat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(167, 'Ivy', 'Holly', 'Runolfsson', 'Howell', '86257178', 2, 'Voluptatem deleniti voluptatum ut in itaque et dolorum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(168, 'Gerry', 'Carolina', 'Fay', 'Bode', '37130623', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(169, 'Ellen', 'Leila', 'Leffler', 'Zemlak', '37729099', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(170, 'Lauretta', 'Janessa', 'Connelly', 'McKenzie', '81484508', 2, 'Laboriosam voluptatum vero eum blanditiis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(171, 'Josephine', NULL, 'Kutch', 'Rohan', '79700136', 2, 'Natus ut est maxime qui.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(172, 'Vicente', 'Marlin', 'Bednar', 'Renner', '60927668', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(173, 'Jarrett', NULL, 'Glover', 'Volkman', '10022078', 1, 'A voluptas nesciunt fugit laudantium eos necessitatibus eum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(174, 'Cicero', NULL, 'Reilly', 'Bernhard', '40093376', 1, 'Itaque qui omnis quibusdam est ipsam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(175, 'Josefina', NULL, 'Brown', 'Lebsack', '83615718', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(176, 'Valentin', 'Mose', 'Miller', 'Monahan', '90086535', 1, 'Sapiente et eum perspiciatis aut aliquam nesciunt sed.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(177, 'Bartholome', 'Garett', 'Hyatt', 'Aufderhar', '13122290', 1, 'Perferendis et sit eius ea accusamus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(178, 'Verda', NULL, 'Marvin', 'Nader', '85274358', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(179, 'Mercedes', NULL, 'Hoppe', 'Wintheiser', '45766896', 2, 'Illo vitae voluptas tempora adipisci similique eos.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(180, 'Bria', NULL, 'Zboncak', 'Howe', '66996543', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(181, 'Assunta', NULL, 'Borer', 'Heller', '60585347', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(182, 'June', 'Ursula', 'Tremblay', 'Herzog', '53795231', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(183, 'Mekhi', 'Kaleb', 'Jones', 'Krajcik', '34194471', 1, 'Ratione itaque esse animi odio.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(184, 'Euna', NULL, 'Bradtke', 'Mueller', '27311148', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(185, 'Lucas', NULL, 'Altenwerth', 'Ruecker', '66641682', 1, 'Quae illo animi nam eum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(186, 'Zoila', NULL, 'Spinka', 'Nienow', '85292899', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(187, 'Dangelo', 'Patrick', 'Corwin', 'Stroman', '52876978', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(188, 'Estefania', NULL, 'Bartoletti', 'Cremin', '95907836', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(189, 'Jovanny', 'Dennis', 'O\'Kon', 'Blanda', '65106568', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(190, 'Ezra', NULL, 'Dibbert', 'Hilpert', '12711906', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(191, 'Eddie', 'Felix', 'O\'Keefe', 'Bauch', '89667795', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(192, 'Darrin', NULL, 'Jones', 'Baumbach', '84326722', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(193, 'Nakia', NULL, 'Bernhard', 'Strosin', '85356495', 2, 'Occaecati quo commodi quisquam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(194, 'Johnathan', 'Duncan', 'Friesen', 'Fritsch', '54331479', 1, 'Illo voluptas quas saepe blanditiis sequi voluptatem rerum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(195, 'Lulu', 'Frederique', 'Gleason', 'Wintheiser', '19929257', 2, 'Nulla modi iste magni aliquid minima nesciunt.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(196, 'Anastasia', NULL, 'Hickle', 'Konopelski', '19672905', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(197, 'Lyda', NULL, 'Spencer', 'Schneider', '62274536', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(198, 'Jammie', NULL, 'Marvin', 'Harris', '54042879', 2, 'Sunt quis earum placeat similique recusandae dolorem ratione.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(199, 'Zelma', 'Roberta', 'Wisoky', 'Schuster', '53700034', 2, 'Omnis fuga aut perspiciatis nihil at reiciendis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(200, 'Etha', 'Luz', 'Lind', 'Johnson', '90303082', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(201, 'Helga', 'Rosalia', 'Hayes', 'Bailey', '79918647', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(202, 'Anjali', NULL, 'Hoeger', 'Carter', '84951906', 2, 'Exercitationem a magnam dolore aliquid tempore soluta sed.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(203, 'Missouri', 'Jana', 'Zulauf', 'Adams', '62721593', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(204, 'Beryl', 'Hildegard', 'Larson', 'Schmidt', '52706540', 2, 'Ducimus delectus voluptatum amet quo assumenda consequuntur perferendis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(205, 'Lillie', NULL, 'Klein', 'Corwin', '65213898', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(206, 'Savanna', NULL, 'O\'Kon', 'Farrell', '31571118', 2, 'Aperiam aspernatur modi in ex.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(207, 'Ezekiel', 'Laverna', 'Carter', 'Friesen', '18630163', 1, 'Alias et asperiores cupiditate accusamus quis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(208, 'Daphnee', 'Litzy', 'Schumm', 'Ortiz', '31006889', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(209, 'Giovanny', 'Jamey', 'Moore', 'Vandervort', '94646860', 1, 'Totam et et praesentium expedita eum esse doloribus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(210, 'Chester', 'Guiseppe', 'Welch', 'Schamberger', '98989157', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(211, 'Celia', 'Estelle', 'Grimes', 'Dickens', '71498238', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(212, 'Russel', 'Chris', 'Labadie', 'Reinger', '91030875', 1, 'Tempore tenetur facilis dolorem veritatis aut id.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(213, 'Micaela', NULL, 'Wunsch', 'Gutkowski', '89874907', 2, 'Quas eos beatae aliquam pariatur laboriosam a tenetur.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(214, 'Tony', NULL, 'Wiegand', 'Gleason', '30304682', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(215, 'Jamar', 'Lonny', 'Hyatt', 'Osinski', '15042667', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(216, 'Alfonso', NULL, 'Langworth', 'Stamm', '37663023', 1, 'Est consequatur omnis culpa quidem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(217, 'Hilda', 'Nella', 'Champlin', 'Gleason', '46234619', 2, 'Neque cupiditate necessitatibus accusantium sunt.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(218, 'Levi', NULL, 'Stroman', 'Ondricka', '48804167', 1, 'Consequatur quia odio harum ut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(219, 'Hilda', 'Jacky', 'Huels', 'Marquardt', '58707176', 2, 'Sit illo vitae occaecati.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(220, 'Amya', NULL, 'Herzog', 'Cummerata', '89827349', 2, 'Qui numquam qui qui quos.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(221, 'Rosie', NULL, 'Mante', 'Brakus', '79170422', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(222, 'Mark', 'Constantin', 'Kuphal', 'Rau', '95030586', 1, 'Magni adipisci aliquam est autem iste sunt.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(223, 'Joany', NULL, 'Mohr', 'Luettgen', '90082736', 1, 'Voluptas et sint sequi fugit.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(224, 'Ethan', 'Theodore', 'Stark', 'Swift', '80797448', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(225, 'Kristina', 'Veronica', 'Jacobs', 'Bauch', '13597978', 2, 'Sed temporibus aliquam reprehenderit eaque delectus et doloremque.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(226, 'Leatha', 'Isobel', 'Bayer', 'Collier', '99403998', 2, 'Suscipit incidunt qui molestiae voluptatum quas.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(227, 'Colleen', NULL, 'Hahn', 'Funk', '85108495', 2, 'Adipisci voluptatem et at eum et quidem reiciendis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(228, 'Colten', 'Lawson', 'Kling', 'Johnson', '58484792', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(229, 'Dorthy', NULL, 'Jones', 'Casper', '15558581', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(230, 'Jayden', 'Guido', 'Ernser', 'Lockman', '71594992', 1, 'Quia modi quidem distinctio ullam ratione alias occaecati.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(231, 'Turner', NULL, 'Predovic', 'Considine', '18503539', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(232, 'Keenan', NULL, 'Volkman', 'Hodkiewicz', '28861877', 1, 'Est soluta assumenda eius reiciendis placeat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(233, 'Joannie', 'Eloise', 'Kulas', 'Turner', '27129471', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(234, 'Karen', 'Danielle', 'Hickle', 'Bauch', '78517103', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(235, 'Myrtle', 'Virginia', 'Bahringer', 'Friesen', '86447362', 2, 'Ut quia eligendi iste sint deleniti.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(236, 'Natalia', 'Audrey', 'Klocko', 'Hudson', '28038682', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(237, 'Ryann', NULL, 'Kuvalis', 'Brakus', '38539121', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(238, 'Camila', 'Palma', 'Huels', 'Pollich', '86530014', 2, 'Et accusamus aliquam voluptas fugit sunt eveniet.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(239, 'Jane', NULL, 'Mills', 'Deckow', '56879605', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(240, 'Kamren', 'Lukas', 'Ankunding', 'Kling', '30206704', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(241, 'Ervin', 'Major', 'Armstrong', 'Miller', '28123826', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(242, 'Augustine', NULL, 'Spencer', 'Ledner', '49478815', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(243, 'Cary', 'Zackery', 'Heidenreich', 'Boehm', '43414217', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(244, 'Aglae', 'Madge', 'Kirlin', 'Lowe', '94976156', 2, 'Et voluptas qui magnam accusamus non.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(245, 'Henderson', NULL, 'Kiehn', 'Schneider', '39301586', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(246, 'Leonor', NULL, 'Gerhold', 'Reilly', '89524227', 2, 'Non reprehenderit et dignissimos.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(247, 'Robb', 'Landen', 'Bode', 'Dietrich', '45065593', 1, 'Accusamus occaecati molestias illo magni ut et saepe.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(248, 'Hector', 'Sterling', 'Heller', 'Larkin', '35726827', 1, 'Ea omnis quidem nulla inventore quibusdam est error.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(249, 'Obie', NULL, 'Upton', 'Welch', '61221429', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(250, 'Damon', NULL, 'Hauck', 'Kemmer', '44004004', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(251, 'Kristofer', 'Kaleigh', 'Lang', 'Johnson', '83722482', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(252, 'Elyse', NULL, 'Morissette', 'O\'Connell', '99310463', 2, 'Magnam perferendis explicabo sint architecto similique sunt.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(253, 'Jena', 'Roberta', 'Donnelly', 'Price', '59755907', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(254, 'Warren', NULL, 'Hermann', 'Beer', '15831585', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(255, 'Dean', 'Alexandre', 'Bayer', 'O\'Connell', '31892626', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(256, 'Carson', 'Ibrahim', 'Bruen', 'McClure', '74953807', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(257, 'Madyson', NULL, 'Sanford', 'Wunsch', '33830119', 1, 'Occaecati assumenda blanditiis veniam perferendis velit sit hic.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(258, 'Maudie', 'Neva', 'Volkman', 'Deckow', '29254845', 2, 'Aperiam aliquam at doloribus dolor omnis laudantium rem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(259, 'Cyrus', NULL, 'Cormier', 'Feest', '24698930', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(260, 'Hollie', 'Frieda', 'Kuvalis', 'Hoppe', '38742602', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(261, 'Katlyn', 'Litzy', 'Lindgren', 'Veum', '58555715', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(262, 'Alison', 'Leola', 'Lockman', 'Schuster', '73024779', 2, 'Ea deserunt maxime porro eum vel ab porro.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(263, 'Christ', 'Sheldon', 'Corwin', 'Emard', '42989153', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(264, 'Missouri', NULL, 'Dickinson', 'Koss', '50083985', 2, 'Velit dolor dolore inventore aut porro et necessitatibus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(265, 'Sedrick', 'Daryl', 'Gutkowski', 'Renner', '51702375', 1, 'Quasi minima earum eius delectus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(266, 'Clemens', 'Garfield', 'Simonis', 'O\'Reilly', '48265632', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(267, 'Magnolia', NULL, 'Eichmann', 'Dickens', '78528079', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(268, 'Kameron', 'Cody', 'Bogan', 'Berge', '77616063', 1, 'Explicabo et fugiat rerum eum excepturi aut ducimus vel.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(269, 'Wilhelm', NULL, 'Hill', 'Harber', '29682456', 1, 'Vel incidunt illum excepturi reprehenderit excepturi omnis nulla.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(270, 'Bernadine', 'Esmeralda', 'Hagenes', 'West', '22670896', 2, 'Voluptatem officia repellendus dolore atque.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(271, 'Selmer', NULL, 'Lakin', 'Gerlach', '74762991', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(272, 'Eunice', NULL, 'Ruecker', 'Reilly', '45998103', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(273, 'Anya', 'Gretchen', 'Willms', 'Langworth', '71786775', 2, 'Nisi ut architecto error.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(274, 'Gerardo', NULL, 'Gorczany', 'Rice', '97082686', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(275, 'Aylin', NULL, 'Beer', 'McDermott', '39404717', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(276, 'Rosella', NULL, 'Schulist', 'Schiller', '23806094', 2, 'Excepturi nihil in aut a dolor voluptas molestias.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(277, 'Madonna', 'Alexa', 'Jenkins', 'Graham', '12073364', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(278, 'Samanta', 'Frida', 'Huel', 'Jenkins', '89692350', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(279, 'Domenico', NULL, 'Becker', 'Purdy', '93740457', 1, 'Illum similique at eius accusantium.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(280, 'Ayla', 'Kaci', 'McGlynn', 'Powlowski', '84591643', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(281, 'Andreanne', NULL, 'Franecki', 'Schmitt', '76785261', 2, 'Voluptatibus vel et voluptatem ipsum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(282, 'Nikko', 'Shane', 'Gottlieb', 'Padberg', '93914493', 1, 'Tenetur ab voluptatem nisi in.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(283, 'Lesley', NULL, 'Ward', 'Russel', '52394595', 1, 'Consequuntur ut omnis repellat nisi ut perspiciatis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(284, 'Norval', NULL, 'Howell', 'Howe', '66823362', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(285, 'Haven', NULL, 'Rolfson', 'Zemlak', '72405217', 2, 'Impedit illum odit ut aut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(286, 'Ivory', NULL, 'Walker', 'Sanford', '36020882', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(287, 'Margarette', 'Filomena', 'Paucek', 'Corkery', '31528975', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(288, 'Elnora', NULL, 'Cassin', 'Hammes', '58554060', 2, 'Culpa id ipsa fugiat provident debitis sit sit.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(289, 'Liam', 'Napoleon', 'Fritsch', 'Halvorson', '77742605', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(290, 'Bart', 'Benedict', 'O\'Hara', 'Abernathy', '80032349', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(291, 'Emely', NULL, 'Davis', 'Cartwright', '59287358', 2, 'Porro consectetur accusamus impedit in aliquid quibusdam dolores.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(292, 'Rita', NULL, 'Gorczany', 'West', '82101871', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(293, 'Magdalena', NULL, 'Ratke', 'Kuhn', '61598656', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(294, 'Sigrid', 'Chad', 'Dach', 'Aufderhar', '97976645', 1, 'Quam et qui voluptas alias eaque eos dolor sit.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(295, 'Jayde', NULL, 'Powlowski', 'Schuppe', '33976083', 1, 'Ut nihil ut occaecati repudiandae quia aperiam quaerat libero.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(296, 'Pierre', 'Rafael', 'Collins', 'O\'Kon', '83282087', 1, 'Laudantium impedit non ea aliquid provident.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(297, 'Samanta', NULL, 'Hyatt', 'Stiedemann', '23804529', 2, 'Cupiditate rem maxime ipsa et illo voluptates.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(298, 'Laron', NULL, 'Lind', 'Waters', '26091573', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(299, 'Verna', 'Elyssa', 'Will', 'Hickle', '77808805', 2, 'Quidem et amet quia doloremque consequuntur et ipsa.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(300, 'Travon', 'Winfield', 'Ward', 'Ritchie', '61116053', 1, 'Qui enim aut beatae deleniti qui.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(301, 'Alex', NULL, 'McGlynn', 'Jacobson', '59014691', 1, 'Ut culpa enim autem natus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(302, 'Derrick', NULL, 'Schmidt', 'Grady', '54170195', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(303, 'Esta', 'Lera', 'Schowalter', 'Effertz', '99761976', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(304, 'Scarlett', NULL, 'Hickle', 'Parisian', '96632739', 2, 'Alias enim harum qui sequi excepturi cum sit.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(305, 'Melvina', 'Chandler', 'Reilly', 'Parker', '15166891', 1, 'Aliquam similique et a vitae.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(306, 'Jewel', 'Janice', 'Rippin', 'Ferry', '22106079', 2, 'Non corporis amet voluptatem omnis fugit eveniet perspiciatis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(307, 'Hipolito', 'Kyler', 'Raynor', 'Hilpert', '79658812', 1, 'Dicta ex sequi beatae est.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(308, 'Sydnee', NULL, 'Zulauf', 'Ryan', '28679670', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(309, 'Gabriel', NULL, 'Hauck', 'Gerlach', '80157160', 1, 'Autem enim error ab est blanditiis ut non.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(310, 'Jeremy', NULL, 'Dicki', 'Herman', '14638495', 1, 'Quibusdam quam et deserunt aut ex sit.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(311, 'Sedrick', NULL, 'Douglas', 'Green', '53239625', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(312, 'Marge', NULL, 'Ruecker', 'Swaniawski', '39752813', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(313, 'Oliver', 'Pietro', 'Jones', 'Rippin', '20837157', 1, 'Et repudiandae autem consequuntur ut dignissimos quam repellat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(314, 'Heather', NULL, 'Larson', 'Daniel', '46538213', 2, 'Voluptas asperiores aliquam fugit quam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(315, 'Elijah', NULL, 'Huel', 'Rutherford', '51070864', 1, 'Necessitatibus a et excepturi.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(316, 'Omer', NULL, 'McCullough', 'Ankunding', '45218570', 1, 'Rerum dolores accusantium voluptas quia corrupti.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(317, 'Rachel', 'Jackie', 'Kuhlman', 'Bashirian', '81256664', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(318, 'Nettie', 'Marie', 'Okuneva', 'Heathcote', '39991083', 2, 'Dolorem voluptatem repellendus neque et quae.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(319, 'Tianna', 'Mariana', 'Feeney', 'Conroy', '46510321', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(320, 'Norris', 'Adolphus', 'Lueilwitz', 'Conn', '27134323', 1, 'Aut eos consectetur magnam quia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(321, 'Naomi', NULL, 'Bergnaum', 'Wintheiser', '72315375', 2, 'Id incidunt et possimus nisi.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(322, 'Lesley', NULL, 'Upton', 'Lindgren', '35482850', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(323, 'Estelle', 'Alexandrea', 'Rodriguez', 'Streich', '73168194', 2, 'Vel atque est veniam facilis et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(324, 'Joseph', 'Neal', 'Lemke', 'Baumbach', '82912479', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(325, 'Patience', 'Noemy', 'Harvey', 'Jenkins', '81748534', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(326, 'Gregg', NULL, 'Jacobi', 'Watsica', '13489109', 1, 'Placeat porro iusto quas veniam dolore et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(327, 'Randy', NULL, 'Waelchi', 'Botsford', '57176868', 1, 'Cumque recusandae libero molestias.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(328, 'Simeon', NULL, 'Haley', 'Shields', '37010946', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(329, 'Candelario', NULL, 'Jakubowski', 'Howell', '46757416', 1, 'Cupiditate nulla molestiae eos nemo dolorem consequatur amet.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(330, 'Marianna', NULL, 'Keebler', 'Moore', '43317159', 2, 'Ut vero non quam culpa recusandae quia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(331, 'Shawn', 'Ricardo', 'Schultz', 'Treutel', '30648730', 1, 'Occaecati consequatur dolorem consequatur sit.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(332, 'Raul', NULL, 'Crooks', 'Weissnat', '37734310', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(333, 'Eugenia', NULL, 'Beahan', 'Bergstrom', '37623152', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(334, 'Adrianna', NULL, 'Feil', 'Konopelski', '54640424', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(335, 'Jennie', 'Summer', 'Larson', 'Oberbrunner', '86996708', 2, 'Minima incidunt dolorem sit eos maiores odit.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(336, 'Amie', NULL, 'Wunsch', 'Johnston', '38874048', 2, 'Ipsam ut debitis eius consequatur veritatis ut dolore voluptatem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(337, 'Hillard', 'Jaime', 'Jast', 'McKenzie', '47417074', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(338, 'Aaron', NULL, 'Deckow', 'Mertz', '94457179', 1, 'Placeat quos aliquid asperiores quas alias itaque quia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(339, 'Hilario', 'Virgil', 'Windler', 'Shanahan', '43295900', 1, 'Eum et est nemo amet aut debitis fugiat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(340, 'Nova', NULL, 'Emard', 'Breitenberg', '20514834', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(341, 'Genevieve', NULL, 'Quitzon', 'Sawayn', '85806650', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(342, 'Duane', NULL, 'Hermiston', 'Dibbert', '81794886', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(343, 'Lelah', NULL, 'Wisozk', 'Denesik', '42244889', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(344, 'Colby', 'Vern', 'Denesik', 'Abbott', '42329711', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(345, 'Tre', 'Terry', 'Hahn', 'Christiansen', '14780866', 1, 'Sapiente est numquam enim voluptas quo veniam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(346, 'Yazmin', 'Connie', 'Zieme', 'Hickle', '20182390', 2, 'Sit cupiditate sint voluptate atque.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(347, 'Thalia', NULL, 'Volkman', 'Bednar', '91385638', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(348, 'Tracy', 'Willow', 'Mitchell', 'Frami', '42051648', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(349, 'John', 'Newton', 'Shanahan', 'Kub', '29321029', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(350, 'Sofia', 'Cristina', 'Anderson', 'Gleichner', '87652806', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(351, 'Dillan', 'Bobby', 'Schaden', 'Lemke', '54436936', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(352, 'Burnice', NULL, 'Schulist', 'Larson', '91133393', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(353, 'Orin', 'Jonas', 'Hoeger', 'White', '99808685', 1, 'Sunt officiis quis et eligendi necessitatibus nemo aspernatur quae.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(354, 'Dee', NULL, 'Moore', 'Bode', '23012412', 1, 'Eligendi laboriosam harum quia et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(355, 'Claude', 'Elroy', 'Klein', 'Homenick', '45298628', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(356, 'Candelario', NULL, 'Cremin', 'Frami', '42489348', 1, 'Autem blanditiis consectetur eveniet non sit sapiente.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(357, 'Kattie', NULL, 'Daniel', 'Vandervort', '17497769', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(358, 'Reid', NULL, 'Cummings', 'Quigley', '83805105', 1, 'Quia facilis aspernatur et nihil.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(359, 'Reed', 'Grayson', 'Littel', 'Paucek', '31893575', 1, 'Reprehenderit rerum qui sed labore sapiente.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(360, 'Barton', NULL, 'Koelpin', 'Quigley', '17643877', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(361, 'Arielle', NULL, 'Casper', 'Schneider', '93761566', 2, 'Aut iste est hic libero earum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);
INSERT INTO `alumnos` (`id`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `dni`, `genero_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(362, 'Misty', 'Tia', 'Borer', 'Dickens', '57078645', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(363, 'Cortney', 'Alfreda', 'Connelly', 'Hilpert', '76275460', 2, 'Sed aliquid reprehenderit nesciunt.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(364, 'Marion', 'Marcia', 'Durgan', 'Hodkiewicz', '57379337', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(365, 'Trevor', NULL, 'Yundt', 'Cummings', '93511377', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(366, 'Susana', NULL, 'Price', 'Boyle', '66974789', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(367, 'Nat', 'Leland', 'Hauck', 'Thiel', '95339340', 1, 'Blanditiis quam sit reiciendis accusamus quaerat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(368, 'Cedrick', 'Sammy', 'Powlowski', 'Block', '21877471', 1, 'Corporis error necessitatibus minima rerum iste est.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(369, 'Mathias', NULL, 'Lindgren', 'Howe', '50670275', 1, 'Rerum culpa quia rerum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(370, 'Ivy', 'Pat', 'Emmerich', 'Steuber', '92738353', 2, 'Voluptatum unde ad expedita voluptatem qui dolore.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(371, 'Jayme', NULL, 'Marquardt', 'Paucek', '52685741', 1, 'Facilis est omnis molestiae excepturi magnam rerum tempore.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(372, 'Nadia', NULL, 'Terry', 'Dooley', '41815552', 2, 'Laborum ea ut inventore tenetur quaerat placeat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(373, 'Myrna', NULL, 'Emard', 'Sanford', '89264822', 2, 'Consequatur placeat qui rerum sed.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(374, 'Lenna', 'Vanessa', 'Reichert', 'Osinski', '17308341', 2, 'Odio repudiandae accusantium magni autem aut omnis laboriosam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(375, 'Delmer', 'Noble', 'Lesch', 'Ullrich', '89843612', 1, 'Dolorem eos odit ullam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(376, 'Flossie', NULL, 'Towne', 'Denesik', '70206087', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(377, 'Evie', 'Daniela', 'Crona', 'Klein', '21185045', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(378, 'Marc', 'Giuseppe', 'Lehner', 'Yost', '25889746', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(379, 'Melyna', NULL, 'Towne', 'Hermiston', '32857368', 2, 'Voluptas quis soluta autem quo consequatur aut atque.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(380, 'Caleb', 'Haley', 'Jacobs', 'Hayes', '12949385', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(381, 'Cielo', 'Sherwood', 'Rowe', 'Glover', '83972490', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(382, 'Gabriel', 'Donald', 'Lebsack', 'Homenick', '93659383', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(383, 'Anita', NULL, 'Schulist', 'Durgan', '11288877', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(384, 'Mikel', NULL, 'Funk', 'Conroy', '23551780', 1, 'Odio voluptates ea quasi eos atque quasi.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(385, 'Alvina', 'Amiya', 'Kling', 'Langosh', '41966660', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(386, 'Stanton', NULL, 'Kreiger', 'Donnelly', '51642675', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(387, 'Waino', NULL, 'Sauer', 'Dibbert', '67429731', 1, 'Odio enim autem vel.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(388, 'Alison', NULL, 'Jenkins', 'Gaylord', '31263182', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(389, 'Maximilian', NULL, 'Torphy', 'Leuschke', '61121227', 1, 'Blanditiis debitis cumque odit tempora praesentium ut assumenda accusamus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(390, 'Alford', NULL, 'Blick', 'Aufderhar', '82449766', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(391, 'Chad', 'Barney', 'Lueilwitz', 'Glover', '93841099', 1, 'Iste nihil tempore nesciunt quos qui sapiente et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(392, 'Richmond', 'Freddy', 'Huels', 'Jacobson', '81251300', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(393, 'Bette', 'Freda', 'Ratke', 'Kovacek', '81883883', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(394, 'Glennie', NULL, 'Prosacco', 'Wilkinson', '63689196', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(395, 'Stephan', 'Marty', 'Borer', 'Batz', '86961001', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(396, 'Hollie', 'Vivien', 'Mann', 'Cormier', '16314548', 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(397, 'Alia', NULL, 'Willms', 'Barrows', '11867561', 2, 'Laboriosam eligendi et rerum molestiae possimus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(398, 'Jose', 'Geovany', 'Bartoletti', 'Mertz', '53673342', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(399, 'Velda', 'Thora', 'Stracke', 'Oberbrunner', '23242760', 2, 'Reiciendis dolorem reiciendis aut voluptatum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(400, 'Will', NULL, 'Kohler', 'Howe', '73583605', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_tutors`
--

CREATE TABLE `alumno_tutors` (
  `id` bigint UNSIGNED NOT NULL,
  `alumno_id` bigint UNSIGNED NOT NULL,
  `tutor_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno_tutors`
--

INSERT INTO `alumno_tutors` (`id`, `alumno_id`, `tutor_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(2, 1, 2, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` bigint UNSIGNED NOT NULL,
  `inicio` timestamp NULL DEFAULT NULL,
  `fin` timestamp NULL DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`id`, `anuncio`, `descripcion`, `usuario_id`, `inicio`, `fin`, `activo`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anuncio 1', 'descripcion 1', 1, '2025-05-01 14:00:00', '2025-05-31 14:00:00', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(2, 'Anuncio 2', 'descripcion 2', 2, '2025-05-01 14:00:00', '2025-05-31 14:00:00', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(3, 'Anuncio 3', 'descripcion 3', 6, '2025-05-01 14:00:00', '2025-05-31 14:00:00', 1, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_alumno_aulas`
--

CREATE TABLE `anuncio_alumno_aulas` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_alumno_generals`
--

CREATE TABLE `anuncio_alumno_generals` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_alumno_grados`
--

CREATE TABLE `anuncio_alumno_grados` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `grado_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_alumno_grupos`
--

CREATE TABLE `anuncio_alumno_grupos` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `alumno_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_contenidos`
--

CREATE TABLE `anuncio_contenidos` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `contenido_id` bigint UNSIGNED NOT NULL,
  `orden` smallint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `anuncio_contenidos`
--

INSERT INTO `anuncio_contenidos` (`id`, `anuncio_id`, `contenido_id`, `orden`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(2, 1, 2, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(3, 2, 3, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(4, 2, 4, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(5, 3, 5, 0, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_directivo_generals`
--

CREATE TABLE `anuncio_directivo_generals` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_directivo_grupos`
--

CREATE TABLE `anuncio_directivo_grupos` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `directivo_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_docente_aulas`
--

CREATE TABLE `anuncio_docente_aulas` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_docente_generals`
--

CREATE TABLE `anuncio_docente_generals` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_docente_grados`
--

CREATE TABLE `anuncio_docente_grados` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `grado_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_docente_grupos`
--

CREATE TABLE `anuncio_docente_grupos` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `docente_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_generals`
--

CREATE TABLE `anuncio_generals` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_tutor_aulas`
--

CREATE TABLE `anuncio_tutor_aulas` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_tutor_generals`
--

CREATE TABLE `anuncio_tutor_generals` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_tutor_grados`
--

CREATE TABLE `anuncio_tutor_grados` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `grado_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_tutor_grupos`
--

CREATE TABLE `anuncio_tutor_grupos` (
  `id` bigint UNSIGNED NOT NULL,
  `anuncio_id` bigint UNSIGNED NOT NULL,
  `tutor_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` bigint UNSIGNED NOT NULL,
  `asignatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abreviatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id`, `asignatura`, `abreviatura`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Matemática', 'MAT', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 'Inglés', 'ING', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_grados`
--

CREATE TABLE `asignatura_grados` (
  `id` bigint UNSIGNED NOT NULL,
  `asignatura_id` bigint UNSIGNED NOT NULL,
  `grado_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignatura_grados`
--

INSERT INTO `asignatura_grados` (`id`, `asignatura_id`, `grado_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 1, 2, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `id` bigint UNSIGNED NOT NULL,
  `grado_id` bigint UNSIGNED NOT NULL,
  `seccion_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`id`, `grado_id`, `seccion_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 2, 1, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacions`
--

CREATE TABLE `calificacions` (
  `id` bigint UNSIGNED NOT NULL,
  `calificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abreviatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calificacions`
--

INSERT INTO `calificacions` (`id`, `calificacion`, `abreviatura`, `descripcion`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logro esperado', 'A', NULL, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(2, 'En proceso', 'B', NULL, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(3, 'En inicio', 'C', NULL, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(4, 'Logro destacado', 'AD', NULL, NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_asignatura_alumnos`
--

CREATE TABLE `calificacion_asignatura_alumnos` (
  `id` bigint UNSIGNED NOT NULL,
  `alumno_id` bigint UNSIGNED NOT NULL,
  `asignatura_grado_id` bigint UNSIGNED NOT NULL,
  `calificacion_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` bigint UNSIGNED NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `correo`, `celular`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'roberto@gmail.com', '+51 000000000', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 'diana@hotmail.com', '+51 000000001', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` bigint UNSIGNED NOT NULL,
  `contenido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` bigint UNSIGNED NOT NULL,
  `tipo_contenido_id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`id`, `contenido`, `usuario_id`, `tipo_contenido_id`, `path`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Diagrama de inanición', 1, 1, '/public/contenido.txt', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(2, 'Río meridional del Ecuador', 1, 2, '/public/contenido.mp3', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(3, 'III Conferencia Mundial del Clima', 2, 3, '/public/contenido.jpeg', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(4, 'Discurso del presidente de la asociación', 2, 4, '/public/contenido.mp4', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(5, 'Actualización de los dispositivos', 6, 5, '/public/contenido.docx', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directivos`
--

CREATE TABLE `directivos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_id` bigint UNSIGNED NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `directivos`
--

INSERT INTO `directivos` (`id`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `dni`, `genero_id`, `correo`, `celular`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Baby', NULL, 'Armstrong', 'Renner', '51836230', 2, 'baby_68@piura.edu.pe', '+51 18 499 3055', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 'Isidro', NULL, 'Sporer', 'Wunsch', '83555057', 1, 'isidro_13@piura.edu.pe', '+51 48 331 8508', 'Dolores doloribus vel ex enim quibusdam fugiat.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(3, 'Adonis', NULL, 'Volkman', 'Grady', '64970636', 1, 'adonis_36@piura.edu.pe', '+51 72 108 6289', 'Et quibusdam optio mollitia magni nihil.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(4, 'Nicholaus', NULL, 'Hirthe', 'Schmidt', '21745844', 1, 'nicholaus_98@piura.edu.pe', '+51 31 232 4635', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(5, 'Emma', 'Gregoria', 'Feeney', 'Littel', '56130495', 2, 'emma_19@piura.edu.pe', '+51 66 816 6124', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_id` bigint UNSIGNED NOT NULL,
  `aula_id` bigint UNSIGNED DEFAULT '1',
  `activo` tinyint(1) NOT NULL DEFAULT '0',
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `dni`, `genero_id`, `aula_id`, `activo`, `correo`, `celular`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chester', 'Corbin', 'Kshlerin', 'Kreiger', '20575929', 1, 1, 0, 'chester_73@piura.edu.pe', '+51 70 907 9933', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 'Suzanne', 'Gloria', 'Streich', 'Shields', '38934563', 2, 1, 0, 'suzanne_11@piura.edu.pe', '+51 18 549 7385', 'Blanditiis sequi sed officiis assumenda minima.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(3, 'Misty', NULL, 'Thompson', 'Cruickshank', '46512545', 2, 1, 0, 'misty_55@piura.edu.pe', '+51 35 839 6882', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(4, 'Matilde', 'Verna', 'Roob', 'Haley', '59529963', 2, 1, 0, 'matilde_64@piura.edu.pe', '+51 38 439 8505', 'Eum aut amet expedita quia fuga tempore.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(5, 'Nicholas', NULL, 'Keebler', 'Fahey', '49245761', 1, 1, 0, 'nicholas_60@piura.edu.pe', '+51 65 492 1490', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(6, 'Ernesto', NULL, 'Watsica', 'O\'Hara', '17036208', 1, 1, 0, 'ernesto_67@piura.edu.pe', '+51 57 202 9086', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(7, 'Sim', 'Evan', 'Leuschke', 'Labadie', '69709957', 1, 1, 0, 'sim_50@piura.edu.pe', '+51 56 994 2445', 'Itaque sit dolores laborum omnis illo id voluptas.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(8, 'Macie', 'Vernice', 'Kunde', 'Huel', '27543954', 2, 1, 0, 'macie_71@piura.edu.pe', '+51 57 823 3720', 'Sit doloribus voluptatibus est voluptate.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(9, 'Delfina', 'Alena', 'Pfeffer', 'Vandervort', '21883853', 2, 1, 0, 'delfina_52@piura.edu.pe', '+51 35 925 9005', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(10, 'Mireya', NULL, 'Block', 'Walsh', '45010177', 2, 1, 0, 'mireya_42@piura.edu.pe', '+51 50 649 6730', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(11, 'Rubye', 'Andreane', 'Kiehn', 'Hoppe', '15629844', 2, 1, 0, 'rubye_30@piura.edu.pe', '+51 91 400 7709', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(12, 'Kitty', 'Isabell', 'Mann', 'Nikolaus', '91334640', 2, 1, 0, 'kitty_18@piura.edu.pe', '+51 54 573 1157', 'In officiis voluptates veniam consectetur magnam.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(13, 'Jackson', NULL, 'Osinski', 'Russel', '76358051', 1, 1, 0, 'jackson_49@piura.edu.pe', '+51 68 746 8708', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(14, 'Guiseppe', NULL, 'Wilkinson', 'McCullough', '14927862', 1, 1, 0, 'guiseppe_55@piura.edu.pe', '+51 41 233 8839', 'Ad consequatur quis ea quia.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(15, 'Adriana', 'Danika', 'Wyman', 'Balistreri', '54527924', 2, 1, 0, 'adriana_97@piura.edu.pe', '+51 31 500 6035', 'Reiciendis quod saepe consequatur enim impedit.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(16, 'Alisa', 'Heather', 'Heidenreich', 'Jacobi', '78410856', 2, 1, 0, 'alisa_65@piura.edu.pe', '+51 86 424 5922', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(17, 'Geovanny', NULL, 'Labadie', 'Miller', '12406386', 1, 1, 0, 'geovanny_76@piura.edu.pe', '+51 29 127 2699', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(18, 'Manuel', NULL, 'Orn', 'O\'Reilly', '67402801', 1, 1, 0, 'manuel_99@piura.edu.pe', '+51 18 281 4824', 'Accusamus quisquam velit voluptate perferendis autem dicta.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(19, 'Benny', NULL, 'Reinger', 'Okuneva', '35585401', 1, 1, 0, 'benny_39@piura.edu.pe', '+51 45 297 1014', 'Sint quae repellendus quos vitae repellendus non quis.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(20, 'Kenna', 'Dahlia', 'Weimann', 'Quigley', '12411611', 2, 1, 0, 'kenna_55@piura.edu.pe', '+51 75 375 1915', 'Aut in harum aut ea ut velit.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(21, 'Gina', 'Maude', 'Thompson', 'Bernier', '44178132', 2, 1, 0, 'gina_95@piura.edu.pe', '+51 29 183 2657', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(22, 'Lucienne', 'Camille', 'Funk', 'Rogahn', '38184749', 2, 1, 0, 'lucienne_37@piura.edu.pe', '+51 60 580 3334', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(23, 'Leda', NULL, 'Hilpert', 'Keeling', '62619165', 2, 1, 0, 'leda_43@piura.edu.pe', '+51 40 301 9501', 'Culpa maiores sit eos non aut animi.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(24, 'Joel', NULL, 'McCullough', 'Kerluke', '97104619', 1, 1, 0, 'joel_22@piura.edu.pe', '+51 52 506 4908', 'Perspiciatis voluptatem minima ut aut modi est quos impedit.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(25, 'Abbigail', NULL, 'Steuber', 'Bruen', '55150722', 2, 1, 0, 'abbigail_30@piura.edu.pe', '+51 35 404 5363', 'Delectus quo velit est quae.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(26, 'Andre', NULL, 'Marquardt', 'Batz', '69712212', 1, 1, 0, 'andre_58@piura.edu.pe', '+51 84 670 7711', 'Non enim alias sed labore ea et vero.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(27, 'Zetta', 'Heloise', 'Jaskolski', 'Walker', '68357145', 2, 1, 0, 'zetta_25@piura.edu.pe', '+51 27 308 4704', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(28, 'Zackary', 'Frederick', 'Douglas', 'Cremin', '75411414', 1, 1, 0, 'zackary_74@piura.edu.pe', '+51 93 325 6757', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(29, 'Beaulah', 'Sydnee', 'Pagac', 'Runolfsdottir', '30116772', 2, 1, 0, 'beaulah_83@piura.edu.pe', '+51 86 188 3920', 'Suscipit et architecto a dolor quo ut.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(30, 'Mara', 'Millie', 'Barton', 'Cruickshank', '12857862', 2, 1, 0, 'mara_94@piura.edu.pe', '+51 21 916 4963', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` bigint UNSIGNED NOT NULL,
  `genero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abreviatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `genero`, `abreviatura`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Masculino', 'M', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 'Femenino', 'F', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id` bigint UNSIGNED NOT NULL,
  `grado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abreviatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id`, `grado`, `abreviatura`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Primero', '1ro.', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 'Segundo', '2do.', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(3, 'Tercero', '3ro.', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(4, 'Cuarto', '4to.', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(5, 'Quinto', '5to.', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(6, 'Sexto', '6to.', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_05_04_173339_create_generos_table', 1),
(2, '2025_05_04_173340_create_usuarios_table', 1),
(3, '2025_05_17_220454_create_contactos_table', 1),
(4, '2025_05_17_225929_create_asignaturas_table', 1),
(5, '2025_05_17_225929_create_grados_table', 1),
(6, '2025_05_17_225930_create_asignatura_grados_table', 1),
(7, '2025_05_17_225930_create_seccions_table', 1),
(8, '2025_05_17_225931_create_aulas_table', 1),
(9, '2025_05_17_231736_create_tutors_table', 1),
(10, '2025_05_17_231737_create_alumnos_table', 1),
(11, '2025_05_17_231738_create_alumno_tutors_table', 1),
(12, '2025_05_17_232337_create_docentes_table', 1),
(13, '2025_05_17_232400_create_directivos_table', 1),
(14, '2025_05_17_232401_create_calificacions_table', 1),
(15, '2025_05_18_015927_create_tipo_contenidos_table', 1),
(16, '2025_05_18_015928_create_contenidos_table', 1),
(17, '2025_05_18_020823_create_anuncios_table', 1),
(18, '2025_05_18_025138_create_anuncio_contenidos_table', 1),
(19, '2025_05_18_161614_create_anuncio_alumno_generals_table', 1),
(20, '2025_05_18_161623_create_anuncio_alumno_grupos_table', 1),
(21, '2025_05_18_161631_create_anuncio_alumno_aulas_table', 1),
(22, '2025_05_18_161640_create_anuncio_alumno_grados_table', 1),
(23, '2025_05_18_162318_create_anuncio_tutor_generals_table', 1),
(24, '2025_05_18_162331_create_anuncio_tutor_grupos_table', 1),
(25, '2025_05_18_162336_create_anuncio_tutor_aulas_table', 1),
(26, '2025_05_18_162346_create_anuncio_tutor_grados_table', 1),
(27, '2025_05_18_162400_create_anuncio_docente_generals_table', 1),
(28, '2025_05_18_162414_create_anuncio_docente_grupos_table', 1),
(29, '2025_05_18_162431_create_anuncio_docente_aulas_table', 1),
(30, '2025_05_18_162437_create_anuncio_docente_grados_table', 1),
(31, '2025_05_18_162745_create_anuncio_directivo_generals_table', 1),
(32, '2025_05_18_162757_create_anuncio_directivo_grupos_table', 1),
(33, '2025_05_18_164009_create_anuncio_generals_table', 1),
(34, '2025_05_18_171442_create_actividads_table', 1),
(35, '2025_05_18_171443_create_actividad_contenidos_table', 1),
(36, '2025_05_18_171445_create_actividad_alumno_generals_table', 1),
(37, '2025_05_18_171558_create_actividad_alumno_grupos_table', 1),
(38, '2025_05_18_171842_create_actividad_alumno_aulas_table', 1),
(39, '2025_05_18_172046_create_actividad_alumno_grados_table', 1),
(40, '2025_05_18_172047_create_actividad_respuestas_table', 1),
(41, '2025_05_18_174951_create_actividad_calificacion_alumnos_table', 1),
(42, '2025_05_18_180742_create_calificacion_asignatura_alumnos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccions`
--

CREATE TABLE `seccions` (
  `id` bigint UNSIGNED NOT NULL,
  `seccion` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seccions`
--

INSERT INTO `seccions` (`id`, `seccion`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 'B', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(3, 'C', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_contenidos`
--

CREATE TABLE `tipo_contenidos` (
  `id` bigint UNSIGNED NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_contenidos`
--

INSERT INTO `tipo_contenidos` (`id`, `tipo`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Documento de texto', 'Formatos .doc, .docx, .pdf, .txt, .odt, .rtf, entre otros.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(2, 'Presentación digital', 'Formatos .ppt, .pptx, .odp, .pps, .ppsx, entre otros.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(3, 'Sonido', 'Formatos .mp3, .wav, .ogg, .wma, .m4a, .midi, .opus, entre otros.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(4, 'Imagen', 'Formatos .jpeg, .jpg, .tiff, .bmp, .png, .gif, .svg, .ico, entre otros.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(5, 'Video', 'Formatos .avi, .mp4, .mkv, .mpeg, .webm, entre otros.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(6, 'Ejecutable/instalador', 'Formatos .exe, .msi, .dmg, .pkg, .apk, entre otros.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(7, 'Otro', 'Otros formatos.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutors`
--

CREATE TABLE `tutors` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_id` bigint UNSIGNED NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tutors`
--

INSERT INTO `tutors` (`id`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `dni`, `genero_id`, `correo`, `celular`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mathew', NULL, 'Hamill', 'Feeney', '56582448', 1, 'mathew_37@cole.pe', '+51 29 537 7894', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 'Estelle', 'Laura', 'Dach', 'Fay', '90013627', 2, 'estelle_86@hotmail.com', '+51 39 910 2274', 'Sed et id molestias eos dignissimos voluptatem.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(3, 'Maude', 'Dannie', 'Fay', 'Wisozk', '20304955', 2, 'maude_55@outlook.com', '+51 84 916 6950', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(4, 'Merl', NULL, 'Cruickshank', 'Shanahan', '26991987', 1, 'merl_47@outlook.com', '+51 60 900 7780', 'Quisquam sed inventore amet voluptatem molestiae reiciendis libero est.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(5, 'Marilie', 'Winifred', 'Kutch', 'Daniel', '97951105', 2, 'marilie_74@icloud.com', '+51 68 140 7104', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(6, 'Princess', NULL, 'Hettinger', 'Prosacco', '98824240', 2, 'princess_81@outlook.com', '+51 69 631 7019', 'Quidem maxime unde aliquid.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(7, 'Maegan', NULL, 'Gleichner', 'Nolan', '30877917', 2, 'maegan_98@yahoo.com', '+51 89 321 6192', 'Neque amet qui in placeat.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(8, 'Gabriel', 'Abelardo', 'Jenkins', 'Bernhard', '86452258', 1, 'gabriel_62@outlook.com', '+51 89 789 8754', 'Nihil aut aliquid consectetur totam itaque.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(9, 'Estefania', 'Lydia', 'Torp', 'Brown', '93869272', 2, 'estefania_98@outlook.com', '+51 55 470 3800', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(10, 'Hardy', 'Jaime', 'Lebsack', 'Block', '57001766', 1, 'hardy_42@gmail.com', '+51 25 969 7001', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(11, 'Santa', NULL, 'Kassulke', 'Jaskolski', '60503075', 1, 'santa_60@gmail.com', '+51 87 828 5195', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(12, 'Howell', NULL, 'Bogisich', 'Cronin', '83842490', 1, 'howell_70@hotmail.com', '+51 53 723 2120', 'Commodi facere id dolorum reprehenderit sit in.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(13, 'Tad', NULL, 'Schmeler', 'Gottlieb', '96371395', 1, 'tad_81@outlook.com', '+51 66 865 3302', 'Velit libero dolores repellendus ullam.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(14, 'Waylon', 'Victor', 'Lueilwitz', 'Donnelly', '25922252', 1, 'waylon_88@icloud.com', '+51 27 996 2446', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(15, 'Eloise', 'Tiffany', 'Ernser', 'Schmeler', '44945047', 2, 'eloise_28@icloud.com', '+51 43 195 9247', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(16, 'Robb', NULL, 'Smith', 'Koch', '43369089', 1, 'robb_13@protonmail.com', '+51 48 497 6260', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(17, 'Jesus', NULL, 'Paucek', 'Will', '80785188', 1, 'jesus_81@icloud.com', '+51 56 574 9675', 'Recusandae consectetur possimus qui corporis qui.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(18, 'Marty', 'Jennings', 'Reilly', 'Abbott', '90766990', 1, 'marty_21@hotmail.com', '+51 79 337 5519', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(19, 'Rigoberto', NULL, 'Swaniawski', 'Funk', '12963649', 1, 'rigoberto_71@icloud.com', '+51 86 146 7302', 'Accusamus deleniti voluptas iusto voluptatem quaerat doloremque.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(20, 'Talia', 'Carlie', 'Krajcik', 'Boehm', '88501054', 2, 'talia_15@outlook.com', '+51 56 519 5279', 'Et tenetur et quod consequatur quia harum.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(21, 'Jammie', 'Allie', 'Cronin', 'Sipes', '40400477', 2, 'jammie_78@yahoo.com', '+51 87 510 6195', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(22, 'Marley', 'Lavern', 'Waelchi', 'Kohler', '77065010', 1, 'marley_40@hotmail.com', '+51 22 888 8758', 'Molestiae odit fuga nulla officiis rerum natus.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(23, 'Rose', NULL, 'Bernhard', 'Bins', '54656886', 2, 'rose_67@outlook.com', '+51 58 253 6443', 'Id est rerum unde animi asperiores repellendus laborum.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(24, 'Lazaro', 'Juvenal', 'Goldner', 'Von', '80413596', 1, 'lazaro_31@hotmail.com', '+51 21 594 4315', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(25, 'Hillary', NULL, 'Schaefer', 'Muller', '66502753', 2, 'hillary_76@gmail.com', '+51 55 534 5217', 'Cupiditate magni ut in repudiandae nesciunt voluptatem.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(26, 'Ona', 'Freda', 'Wuckert', 'Welch', '93420952', 2, 'ona_28@icloud.com', '+51 49 602 7003', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(27, 'Hailie', NULL, 'Koch', 'Champlin', '42802461', 2, 'hailie_79@rau.pe', '+51 22 183 7106', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(28, 'Lyla', 'Annalise', 'Gleichner', 'Heathcote', '38157918', 2, 'lyla_73@yahoo.com', '+51 25 971 5926', 'Est harum officiis dolorum est amet.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(29, 'Newton', NULL, 'Kessler', 'Huel', '30627299', 1, 'newton_84@outlook.com', '+51 64 957 7924', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(30, 'Alyson', 'Priscilla', 'Hammes', 'Schuppe', '46812662', 2, 'alyson_75@yahoo.com', '+51 59 970 6057', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(31, 'Mariano', 'Sedrick', 'Romaguera', 'Rau', '58853260', 1, 'mariano_48@hotmail.com', '+51 61 968 8647', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(32, 'Harmony', NULL, 'Klein', 'Rosenbaum', '52302260', 2, 'harmony_34@outlook.com', '+51 79 401 7380', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(33, 'Dangelo', NULL, 'Vandervort', 'Mayer', '11349175', 1, 'dangelo_35@protonmail.com', '+51 65 566 6443', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(34, 'Miles', NULL, 'White', 'Lakin', '24702732', 1, 'miles_21@ullrich.pe', '+51 32 921 4557', 'Perspiciatis aspernatur et totam maxime perspiciatis aperiam.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(35, 'Addie', 'Amelie', 'Rolfson', 'Kuvalis', '23693410', 2, 'addie_42@protonmail.com', '+51 40 609 4380', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(36, 'Shawn', 'Derrick', 'Schuster', 'Wintheiser', '90645867', 1, 'shawn_78@outlook.com', '+51 76 744 3819', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(37, 'Jarvis', NULL, 'Mann', 'Larson', '18112520', 1, 'jarvis_11@protonmail.com', '+51 78 490 8941', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(38, 'Jaeden', 'Ben', 'Grady', 'Ratke', '79106752', 1, 'jaeden_86@outlook.com', '+51 15 117 1528', 'Quia omnis voluptas sunt quos.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(39, 'Jarrell', NULL, 'Nader', 'Leuschke', '72039403', 1, 'jarrell_83@yahoo.com', '+51 98 137 7944', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(40, 'Garland', 'Raoul', 'Wehner', 'Ward', '14464230', 1, 'garland_99@yahoo.com', '+51 89 860 2303', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(41, 'Alta', NULL, 'Kunde', 'Kshlerin', '80975653', 2, 'alta_23@gmail.com', '+51 14 156 8612', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(42, 'Hyman', 'Gus', 'Thiel', 'Dietrich', '65800331', 1, 'hyman_22@yahoo.com', '+51 78 396 8013', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(43, 'Baby', NULL, 'Funk', 'Emard', '15108249', 2, 'baby_23@icloud.com', '+51 43 987 2854', 'Quidem nulla omnis culpa rerum ea sequi rerum.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(44, 'Giuseppe', 'Green', 'Wiegand', 'Windler', '44755027', 1, 'giuseppe_34@gutmann.pe', '+51 39 414 4640', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(45, 'Jabari', 'Xzavier', 'Fay', 'Konopelski', '24002977', 1, 'jabari_77@hotmail.com', '+51 99 196 3229', 'Aliquam odit sit ad libero.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(46, 'Duane', 'Gia', 'Lang', 'Grimes', '32700874', 2, 'duane_76@protonmail.com', '+51 75 882 3343', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(47, 'Kiera', 'Eulah', 'Olson', 'Jacobi', '47832842', 2, 'kiera_69@protonmail.com', '+51 98 634 9463', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(48, 'Jerrod', NULL, 'Ferry', 'Wisoky', '60888407', 1, 'jerrod_97@icloud.com', '+51 90 958 5812', 'Quia aut quae non hic.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(49, 'Hailie', 'Ruth', 'Wehner', 'Williamson', '64098813', 2, 'hailie_58@hotmail.com', '+51 84 616 9484', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(50, 'Katelynn', 'Brenna', 'Renner', 'Cruickshank', '25890981', 2, 'katelynn_66@yahoo.com', '+51 14 299 7774', 'Maxime rerum cumque commodi ea omnis rerum id error.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(51, 'Derrick', NULL, 'Collier', 'Mosciski', '88707782', 1, 'derrick_49@hoppe.pe', '+51 23 111 4803', 'Rerum tempore nam occaecati non quia ut debitis.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(52, 'Johnny', NULL, 'Williamson', 'Bogan', '42687320', 1, 'johnny_80@hotmail.com', '+51 55 943 7602', 'Consequuntur blanditiis non veniam distinctio aperiam sunt nobis vitae.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(53, 'Rachel', NULL, 'Schoen', 'Kessler', '90002299', 2, 'rachel_42@gmail.com', '+51 95 749 7124', 'Ut labore minus nam ut.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(54, 'Dortha', 'Margarita', 'Strosin', 'Funk', '98588237', 2, 'dortha_20@gmail.com', '+51 83 306 4440', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(55, 'Mona', 'Eleanora', 'Schiller', 'Schamberger', '85207647', 2, 'mona_57@nikolaus.pe', '+51 45 203 4655', 'Sed laborum temporibus saepe et et eligendi officiis.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(56, 'Olga', NULL, 'Grimes', 'Harber', '45806360', 2, 'olga_93@yahoo.com', '+51 34 186 2474', 'Fugit sed repellendus delectus et facilis recusandae perspiciatis architecto.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(57, 'Kariane', 'Yvette', 'Shanahan', 'Kirlin', '74406962', 2, 'kariane_85@yahoo.com', '+51 65 776 9763', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(58, 'Madison', NULL, 'Maggio', 'Dibbert', '70576383', 1, 'madison_44@swift.pe', '+51 90 214 4018', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(59, 'Bettye', 'Angelita', 'D\'Amore', 'Hill', '21334460', 2, 'bettye_34@outlook.com', '+51 27 924 6186', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(60, 'Reid', 'Conner', 'Deckow', 'Rempel', '85556570', 1, 'reid_10@outlook.com', '+51 48 952 2395', 'Quidem et ratione omnis sequi beatae voluptas est.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(61, 'Nina', NULL, 'Runte', 'O\'Hara', '86685225', 2, 'nina_10@gmail.com', '+51 47 999 6306', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(62, 'Wilson', 'Wilber', 'Vandervort', 'Moen', '34580482', 1, 'wilson_83@hotmail.com', '+51 56 787 3799', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(63, 'Zander', 'Alessandro', 'Lindgren', 'Marquardt', '19144008', 1, 'zander_64@hotmail.com', '+51 23 201 7054', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(64, 'Arnaldo', 'Chadd', 'Reinger', 'Nikolaus', '95392345', 1, 'arnaldo_20@boyer.pe', '+51 68 686 2181', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(65, 'John', 'Domingo', 'Gislason', 'Turcotte', '76325099', 1, 'john_71@stiedemann.pe', '+51 58 968 6690', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(66, 'Gerard', NULL, 'Little', 'Cruickshank', '57940366', 1, 'gerard_56@outlook.com', '+51 31 544 2778', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(67, 'Jeromy', 'Esteban', 'Keeling', 'Davis', '21997786', 1, 'jeromy_79@yahoo.com', '+51 35 695 5639', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(68, 'Eli', 'Misael', 'Hermann', 'Zboncak', '38292611', 1, 'eli_21@gmail.com', '+51 22 340 7156', 'Atque labore corporis accusantium aperiam.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(69, 'Virgil', NULL, 'Bahringer', 'Hettinger', '84038266', 1, 'virgil_61@outlook.com', '+51 64 807 2073', 'Consectetur nam ut hic dignissimos.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(70, 'Lia', NULL, 'Koss', 'Gottlieb', '24416774', 2, 'lia_68@outlook.com', '+51 70 821 3816', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(71, 'Millie', 'Allene', 'Abbott', 'Mann', '73508044', 2, 'millie_95@yahoo.com', '+51 68 732 2517', 'Et sunt praesentium molestiae dolor magnam nisi.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(72, 'Otha', 'Katlynn', 'Brown', 'Grimes', '73624530', 2, 'otha_90@gmail.com', '+51 86 946 6585', 'Iste expedita at voluptatibus velit ut corporis quia provident.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(73, 'Elenor', NULL, 'Wunsch', 'Rice', '99941642', 2, 'elenor_72@yahoo.com', '+51 48 810 5831', 'Itaque voluptatem est doloribus tempora.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(74, 'Evan', NULL, 'Abbott', 'Smith', '12331191', 1, 'evan_73@leuschke.pe', '+51 36 426 2185', 'Fuga molestiae consequatur quae in omnis asperiores.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(75, 'Lennie', NULL, 'Zboncak', 'Spinka', '18461522', 1, 'lennie_66@brekke.pe', '+51 28 189 5319', 'Id voluptates veniam sunt.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(76, 'Jovani', 'Glennie', 'Hauck', 'Wilkinson', '82020874', 1, 'jovani_16@icloud.com', '+51 74 324 8105', 'Ut quas vel voluptatem qui dolorum libero et.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(77, 'Pearlie', 'Chloe', 'Runte', 'Haley', '32350288', 2, 'pearlie_91@icloud.com', '+51 18 631 7018', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(78, 'Kira', NULL, 'Kozey', 'Lynch', '55625817', 2, 'kira_44@hotmail.com', '+51 63 134 5911', 'Sit sunt quis occaecati iste eveniet sequi pariatur.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(79, 'Germaine', 'Belle', 'Frami', 'Boyle', '80543678', 2, 'germaine_93@hotmail.com', '+51 13 287 3871', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(80, 'Chelsey', NULL, 'Pouros', 'Goodwin', '89047362', 1, 'chelsey_71@gmail.com', '+51 55 806 9352', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(81, 'Kristin', NULL, 'Batz', 'Anderson', '31500266', 2, 'kristin_32@protonmail.com', '+51 33 521 3762', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(82, 'Myah', 'Pascale', 'Price', 'Stiedemann', '45090030', 2, 'myah_68@auer.pe', '+51 75 279 1770', 'Sunt omnis omnis est impedit.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(83, 'Marcella', NULL, 'Jakubowski', 'Schaefer', '35511357', 2, 'marcella_33@protonmail.com', '+51 49 629 5786', 'Magnam excepturi molestias eum cumque modi sit.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(84, 'Addie', NULL, 'Welch', 'Konopelski', '77231454', 2, 'addie_51@abbott.pe', '+51 28 683 2149', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(85, 'Ayana', 'Noemie', 'Sanford', 'Spinka', '98525758', 2, 'ayana_91@hotmail.com', '+51 14 638 8793', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(86, 'Winifred', 'Mary', 'Zieme', 'Kihn', '17379459', 2, 'winifred_56@brakus.pe', '+51 31 147 9504', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(87, 'Joel', NULL, 'Lind', 'Boyle', '93478233', 1, 'joel_83@outlook.com', '+51 51 284 6320', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(88, 'Amos', NULL, 'Metz', 'Larkin', '32711776', 1, 'amos_93@yahoo.com', '+51 63 128 7147', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(89, 'Alfreda', NULL, 'Kautzer', 'Zboncak', '18611296', 2, 'alfreda_78@outlook.com', '+51 55 870 4787', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(90, 'Krystina', NULL, 'Fadel', 'Sipes', '67602398', 2, 'krystina_60@gleichner.pe', '+51 44 811 1474', 'Inventore voluptas voluptatum et officia unde quod.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(91, 'Alice', 'Idell', 'Mueller', 'Anderson', '62176398', 2, 'alice_31@hotmail.com', '+51 39 336 5892', 'A eos rerum delectus alias.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(92, 'Halie', 'Laurine', 'Rolfson', 'Raynor', '15936237', 2, 'halie_87@robel.pe', '+51 47 880 5047', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(93, 'Bell', NULL, 'Jast', 'Sawayn', '88130681', 1, 'bell_73@hotmail.com', '+51 81 341 1136', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(94, 'Christelle', NULL, 'Wiegand', 'Mertz', '28825736', 2, 'christelle_68@bruen.pe', '+51 57 409 7244', 'Ipsa dolorum rerum mollitia voluptatem.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(95, 'Florian', 'Nathaniel', 'Lang', 'Fay', '88520738', 1, 'florian_27@yahoo.com', '+51 40 124 6698', 'Veritatis nobis aspernatur corrupti corporis ut illo qui nam.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(96, 'Tess', 'Jaida', 'Renner', 'Boyle', '37404678', 2, 'tess_17@protonmail.com', '+51 99 854 2755', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(97, 'Camila', 'Rosamond', 'O\'Conner', 'Conn', '83925053', 2, 'camila_94@gmail.com', '+51 62 976 8431', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(98, 'Cierra', NULL, 'Miller', 'Murazik', '40656290', 2, 'cierra_60@icloud.com', '+51 26 637 4653', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(99, 'Maribel', 'Rafaela', 'Hamill', 'Herman', '32287976', 2, 'maribel_58@feeney.pe', '+51 12 550 2482', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(100, 'Westley', NULL, 'Welch', 'Shanahan', '22665150', 1, 'westley_30@protonmail.com', '+51 47 254 8911', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(101, 'Lorenza', NULL, 'Kessler', 'Collins', '23731447', 1, 'lorenza_83@protonmail.com', '+51 98 596 9983', 'Expedita perspiciatis quia dignissimos iure et.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(102, 'Lysanne', 'Veda', 'Lakin', 'Cronin', '45094061', 2, 'lysanne_20@emmerich.pe', '+51 99 785 7422', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(103, 'Arturo', NULL, 'Hammes', 'Gorczany', '70708704', 1, 'arturo_63@hotmail.com', '+51 82 659 1433', 'Vel labore delectus commodi nostrum et inventore.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(104, 'Coty', NULL, 'Huel', 'Pfannerstill', '73683433', 1, 'coty_67@protonmail.com', '+51 47 457 5170', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(105, 'Marge', NULL, 'Lehner', 'Collins', '45697192', 2, 'marge_89@protonmail.com', '+51 17 813 2739', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(106, 'Caleb', 'Cooper', 'Dare', 'Pfeffer', '23277479', 1, 'caleb_72@icloud.com', '+51 90 955 2248', 'Non eligendi voluptatem est cumque vero aut ipsa.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(107, 'Pearl', NULL, 'Durgan', 'Blanda', '50808586', 2, 'pearl_66@outlook.com', '+51 73 859 6388', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(108, 'Meta', 'Myah', 'Gerhold', 'Bosco', '84066334', 2, 'meta_54@protonmail.com', '+51 43 939 1299', 'Est perspiciatis excepturi dignissimos reiciendis sed.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(109, 'Allene', 'Susie', 'O\'Hara', 'Von', '82082959', 2, 'allene_62@icloud.com', '+51 90 297 2830', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(110, 'Sabrina', 'Catalina', 'Bednar', 'Koelpin', '87245950', 2, 'sabrina_91@hotmail.com', '+51 78 635 8921', 'Rem voluptas enim ut reiciendis quaerat.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(111, 'Alaina', NULL, 'Bergstrom', 'Orn', '98515687', 2, 'alaina_70@icloud.com', '+51 10 635 8511', 'Ex et qui qui ea.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(112, 'Thaddeus', 'Owen', 'Mayert', 'Hand', '61225960', 1, 'thaddeus_29@hotmail.com', '+51 77 316 3626', 'Consectetur qui amet sunt eaque molestiae perferendis consequatur.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(113, 'Malvina', NULL, 'Mann', 'Heidenreich', '89791290', 2, 'malvina_46@icloud.com', '+51 30 119 7828', 'Tenetur earum saepe dolore sequi et voluptate nesciunt.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(114, 'Morgan', 'Isaac', 'Mohr', 'Schiller', '99850171', 1, 'morgan_62@hotmail.com', '+51 52 850 5977', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(115, 'Flavio', NULL, 'Jenkins', 'Parker', '48485509', 1, 'flavio_14@protonmail.com', '+51 88 702 6832', 'Laudantium accusamus iure quasi quia perspiciatis accusantium alias.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(116, 'Jessy', 'Declan', 'Goodwin', 'Sporer', '61750993', 1, 'jessy_92@gmail.com', '+51 46 319 4814', 'Voluptatibus vel non quas quaerat delectus soluta.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(117, 'Cleora', NULL, 'Schoen', 'Bashirian', '58996486', 2, 'cleora_17@icloud.com', '+51 25 628 3594', 'Quam eos aut fugit hic rerum autem corporis.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(118, 'Cristal', 'Aglae', 'Zulauf', 'Quitzon', '10144811', 2, 'cristal_10@outlook.com', '+51 53 591 4413', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(119, 'Ima', NULL, 'Wiegand', 'Gusikowski', '12664958', 2, 'ima_27@outlook.com', '+51 59 361 5545', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(120, 'Albertha', NULL, 'Hauck', 'Reynolds', '46708545', 2, 'albertha_31@cassin.pe', '+51 90 294 3407', 'Eveniet voluptate quasi rerum provident aut at.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(121, 'Norwood', NULL, 'Frami', 'Hyatt', '63079164', 1, 'norwood_78@yahoo.com', '+51 43 246 8317', 'Quae odio dolore ex veniam et unde.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(122, 'Syble', NULL, 'Bartell', 'Muller', '52809048', 2, 'syble_71@outlook.com', '+51 51 785 3189', 'Qui rerum tempore laudantium.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(123, 'Reid', NULL, 'Effertz', 'Parisian', '69043328', 1, 'reid_34@outlook.com', '+51 32 536 3263', 'Temporibus dolorem quos expedita nihil ipsum magni praesentium.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(124, 'Elouise', NULL, 'Kuhlman', 'Hamill', '87907775', 2, 'elouise_94@icloud.com', '+51 59 103 9110', 'Itaque dolore ea rerum odit dolor.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(125, 'Demond', NULL, 'Keebler', 'Osinski', '53236693', 1, 'demond_50@icloud.com', '+51 26 227 4375', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(126, 'Dora', NULL, 'Gorczany', 'Murray', '79216828', 2, 'dora_82@hotmail.com', '+51 60 259 7657', 'Et blanditiis soluta occaecati qui in.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(127, 'Florence', NULL, 'Pacocha', 'Hyatt', '77437493', 2, 'florence_74@outlook.com', '+51 53 837 2193', 'Cum omnis dolor a nobis a nulla ratione aperiam.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(128, 'Dashawn', NULL, 'Mayer', 'Blick', '26960284', 1, 'dashawn_95@yahoo.com', '+51 94 299 7465', 'Quia fugiat explicabo laboriosam rerum eius distinctio.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(129, 'Matteo', NULL, 'Kemmer', 'Mraz', '22422000', 1, 'matteo_97@gmail.com', '+51 25 804 4413', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(130, 'Madyson', 'Isaac', 'Connelly', 'Bradtke', '37025167', 1, 'madyson_72@protonmail.com', '+51 64 630 1179', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(131, 'Laura', NULL, 'Cassin', 'Hoeger', '51138950', 2, 'laura_42@icloud.com', '+51 84 854 4067', 'Magnam expedita deleniti quo dignissimos pariatur sit eius libero.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(132, 'Lula', 'Corbin', 'Bradtke', 'Green', '64327255', 1, 'lula_79@yahoo.com', '+51 32 522 3850', 'Voluptas id rerum est incidunt.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(133, 'Elisabeth', NULL, 'Goldner', 'Thiel', '76531375', 2, 'elisabeth_61@protonmail.com', '+51 46 679 6884', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(134, 'Jan', NULL, 'Prohaska', 'Tremblay', '34419555', 1, 'jan_65@icloud.com', '+51 19 678 5246', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(135, 'Briana', NULL, 'Blick', 'Weber', '36298000', 2, 'briana_86@feil.pe', '+51 51 918 4719', 'Error totam nulla doloremque et.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(136, 'Tressa', NULL, 'Stroman', 'Schumm', '41412914', 2, 'tressa_91@icloud.com', '+51 35 469 5331', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(137, 'Trycia', NULL, 'Kuhlman', 'Mertz', '80304864', 2, 'trycia_82@protonmail.com', '+51 41 709 5602', 'Perferendis beatae et et molestias.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(138, 'Laisha', NULL, 'Gorczany', 'Pagac', '24075577', 2, 'laisha_60@hotmail.com', '+51 12 453 6536', 'Quod asperiores eaque suscipit autem nisi voluptates.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(139, 'Myrtice', 'Savanah', 'Miller', 'Champlin', '39396762', 2, 'myrtice_10@protonmail.com', '+51 75 107 1700', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(140, 'Kyle', 'Johnson', 'Krajcik', 'Hackett', '22886290', 1, 'kyle_42@icloud.com', '+51 66 589 1615', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(141, 'Brionna', NULL, 'Cremin', 'Bernhard', '76579698', 2, 'brionna_67@icloud.com', '+51 96 419 8629', 'Vel quas impedit repellat non ut quod aperiam.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(142, 'Alayna', 'Megane', 'Zemlak', 'Kling', '91425862', 2, 'alayna_99@icloud.com', '+51 15 245 4236', 'Hic vel natus aut excepturi nisi.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(143, 'Shayne', 'Darrell', 'Crooks', 'Kunze', '37595519', 1, 'shayne_31@yahoo.com', '+51 59 702 7456', 'Rem natus aspernatur enim ut dolor.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(144, 'Otha', NULL, 'Balistreri', 'Bartoletti', '32387734', 2, 'otha_23@gmail.com', '+51 69 319 8580', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(145, 'Tom', NULL, 'Klocko', 'Swaniawski', '52935299', 1, 'tom_91@gmail.com', '+51 27 913 3111', 'Beatae quia inventore velit in molestiae quas.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(146, 'Americo', 'Bud', 'Cartwright', 'Lang', '34234753', 1, 'americo_64@yahoo.com', '+51 21 948 7117', 'Impedit qui molestiae hic.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(147, 'Kailey', 'Neha', 'Metz', 'Labadie', '44605549', 2, 'kailey_98@gmail.com', '+51 47 398 6349', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(148, 'Deanna', NULL, 'Kub', 'Christiansen', '12691519', 2, 'deanna_89@gmail.com', '+51 51 783 4528', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(149, 'Adela', 'Carlie', 'Stroman', 'Dare', '10027807', 2, 'adela_78@yahoo.com', '+51 18 858 6597', 'Blanditiis eum voluptates officiis rerum.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(150, 'Chanel', NULL, 'Bergstrom', 'Huels', '61436637', 2, 'chanel_42@kutch.pe', '+51 46 414 5757', 'Est voluptatem minima unde ea nobis quia ut cumque.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(151, 'Audie', NULL, 'Heller', 'Hermiston', '51622857', 2, 'audie_10@gmail.com', '+51 26 447 9235', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(152, 'Samir', NULL, 'Marquardt', 'Torphy', '15963996', 1, 'samir_27@outlook.com', '+51 35 219 9967', 'Nisi harum debitis dolore quidem consequatur rerum.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(153, 'Stephan', NULL, 'Grant', 'Stanton', '35897265', 1, 'stephan_48@hotmail.com', '+51 88 987 3367', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(154, 'Avery', 'Ola', 'Moen', 'Kuphal', '57813920', 1, 'avery_85@outlook.com', '+51 24 879 9597', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(155, 'Green', NULL, 'Casper', 'Bechtelar', '54727186', 1, 'green_24@protonmail.com', '+51 91 391 8667', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(156, 'Kristoffer', 'Jocelyn', 'Crist', 'Bergnaum', '33755681', 1, 'kristoffer_74@hotmail.com', '+51 29 574 1705', 'Non voluptas nostrum laboriosam ab illum commodi voluptatem ducimus.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(157, 'Olaf', 'Forest', 'Strosin', 'Homenick', '27211322', 1, 'olaf_51@icloud.com', '+51 89 211 6338', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(158, 'Rogelio', NULL, 'Upton', 'Stanton', '45146103', 1, 'rogelio_39@howell.pe', '+51 68 169 9020', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(159, 'Ernestina', NULL, 'Spinka', 'Becker', '46603848', 2, 'ernestina_95@gmail.com', '+51 19 274 4520', 'Perspiciatis velit est perferendis enim temporibus et.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(160, 'Anthony', NULL, 'Towne', 'Friesen', '43550987', 1, 'anthony_40@icloud.com', '+51 48 408 4012', 'Minima id est ad ullam numquam eos.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(161, 'Lee', 'Tommie', 'Howe', 'Marquardt', '82863861', 1, 'lee_22@outlook.com', '+51 14 536 7623', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(162, 'Shirley', 'Katelin', 'Hagenes', 'Kohler', '80400177', 2, 'shirley_33@protonmail.com', '+51 79 894 6035', 'Sint ea corporis sunt commodi doloribus impedit qui.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(163, 'Robbie', NULL, 'Champlin', 'Lueilwitz', '37459283', 1, 'robbie_11@hotmail.com', '+51 25 973 4768', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(164, 'Darrick', 'Leon', 'Kuhic', 'Kovacek', '66225589', 1, 'darrick_54@hodkiewicz.pe', '+51 19 803 3916', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(165, 'Porter', 'Dario', 'Rutherford', 'Berge', '67407555', 1, 'porter_93@yahoo.com', '+51 59 742 3408', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(166, 'Weldon', 'Reid', 'Kling', 'Kuhlman', '95041883', 1, 'weldon_57@yahoo.com', '+51 25 140 8561', 'Laborum rerum corporis omnis possimus autem.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(167, 'Katelynn', 'Anabel', 'Schuppe', 'White', '92395168', 2, 'katelynn_22@icloud.com', '+51 19 196 5519', 'Atque voluptatem non qui hic aut vero nisi beatae.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(168, 'Cristopher', NULL, 'Dickinson', 'Rowe', '84935192', 1, 'cristopher_46@icloud.com', '+51 36 452 9478', 'Ex dolor quidem totam culpa quos voluptatibus.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(169, 'Kylee', 'Claudine', 'Rau', 'Friesen', '92891115', 2, 'kylee_51@hotmail.com', '+51 28 883 5577', 'Qui quisquam quia consequatur hic.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(170, 'Emie', 'Lori', 'Dooley', 'Volkman', '52861612', 2, 'emie_57@hotmail.com', '+51 80 781 7319', 'Sit provident a eveniet recusandae rerum necessitatibus accusamus.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(171, 'Rosemary', NULL, 'Emard', 'Kulas', '92138772', 2, 'rosemary_58@protonmail.com', '+51 41 388 9711', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(172, 'Brendon', 'Jerel', 'Wunsch', 'Feeney', '59833506', 1, 'brendon_25@gmail.com', '+51 97 727 8564', 'Et molestiae quasi ut consequatur culpa et.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(173, 'Roxanne', 'Maye', 'Shields', 'Little', '61278343', 2, 'roxanne_90@icloud.com', '+51 73 632 2887', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(174, 'Michale', 'Brannon', 'Eichmann', 'Muller', '18270593', 1, 'michale_71@outlook.com', '+51 36 679 9971', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(175, 'Irma', NULL, 'Batz', 'Doyle', '90432240', 2, 'irma_27@yahoo.com', '+51 44 498 5716', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(176, 'Elwyn', NULL, 'Quigley', 'Waelchi', '69890242', 1, 'elwyn_29@outlook.com', '+51 69 688 2935', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(177, 'Myrtis', 'Emelia', 'Blick', 'McClure', '72138279', 2, 'myrtis_14@wehner.pe', '+51 49 371 9207', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(178, 'Mortimer', 'Oliver', 'Murray', 'Weber', '69799520', 1, 'mortimer_99@johnston.pe', '+51 39 657 7099', 'Dolorem magni saepe sint dolores sit a eos.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(179, 'Sylvan', NULL, 'Cartwright', 'Larson', '12052671', 1, 'sylvan_41@gmail.com', '+51 31 978 6735', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(180, 'Rachel', 'Jaquelin', 'Reichel', 'Okuneva', '41130541', 2, 'rachel_51@icloud.com', '+51 55 591 9456', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(181, 'Junius', NULL, 'Buckridge', 'Senger', '71523430', 1, 'junius_81@kiehn.pe', '+51 19 914 4970', 'Vero voluptatibus dolore ea repellat dolores similique quaerat.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(182, 'Savannah', 'Geraldine', 'Goldner', 'Schinner', '60776711', 2, 'savannah_13@yahoo.com', '+51 77 331 4866', 'Libero incidunt beatae odit qui eos sequi.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(183, 'Cordelia', NULL, 'Price', 'Hansen', '63013165', 1, 'cordelia_43@kuhlman.pe', '+51 63 875 5400', 'Voluptatum eos officia qui in.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(184, 'Elody', 'Julianne', 'Dach', 'McLaughlin', '98670114', 2, 'elody_71@protonmail.com', '+51 92 676 9405', 'Est natus ea incidunt molestias aut nam voluptatem.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(185, 'Cornell', 'Zane', 'Boyle', 'Sauer', '43289182', 1, 'cornell_67@gmail.com', '+51 75 520 2528', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(186, 'Yasmine', 'Courtney', 'Terry', 'Ritchie', '77595110', 2, 'yasmine_46@gmail.com', '+51 18 248 2506', 'Sint repellendus hic officiis quae eos ullam et.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(187, 'Norris', 'Eino', 'Halvorson', 'Marquardt', '12285782', 1, 'norris_51@icloud.com', '+51 11 732 6229', 'Quos quod non sed.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(188, 'Karlee', 'Lavina', 'Kutch', 'Medhurst', '98627563', 2, 'karlee_84@protonmail.com', '+51 81 106 4953', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(189, 'Lempi', NULL, 'Keebler', 'Bode', '29737565', 2, 'lempi_41@gmail.com', '+51 68 607 3921', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(190, 'Travon', 'Ronny', 'Connelly', 'Padberg', '58408881', 1, 'travon_90@gmail.com', '+51 96 791 6059', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(191, 'Ebba', NULL, 'Konopelski', 'Koch', '51836306', 2, 'ebba_52@yahoo.com', '+51 12 407 9233', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(192, 'Lilyan', NULL, 'Cormier', 'Schmitt', '37328715', 2, 'lilyan_55@outlook.com', '+51 47 706 4555', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(193, 'Felicita', 'Maci', 'Mosciski', 'Bahringer', '41672314', 2, 'felicita_81@gmail.com', '+51 30 361 3581', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(194, 'Haley', NULL, 'Tromp', 'Ratke', '46765592', 1, 'haley_60@gmail.com', '+51 66 210 9291', 'Nisi est temporibus doloribus.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(195, 'Cora', NULL, 'Heathcote', 'Kerluke', '55337113', 2, 'cora_18@hotmail.com', '+51 85 426 3308', 'Dolores perspiciatis velit quos expedita itaque sint quia.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(196, 'Reba', 'Virginia', 'Bruen', 'Rogahn', '41254687', 2, 'reba_86@protonmail.com', '+51 95 619 8258', 'Culpa quas consequuntur qui laudantium nisi ad commodi vel.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(197, 'Bruce', NULL, 'Ratke', 'Sporer', '49549303', 1, 'bruce_21@stracke.pe', '+51 13 108 8441', 'Ut et praesentium qui qui optio non veniam.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(198, 'Lyla', NULL, 'Waelchi', 'Wyman', '75946747', 2, 'lyla_41@yahoo.com', '+51 56 116 1270', 'Occaecati ullam voluptas alias non ut ex ut non.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(199, 'Vickie', 'Pearlie', 'Aufderhar', 'Fritsch', '42656974', 2, 'vickie_10@hotmail.com', '+51 61 407 8235', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(200, 'Parker', 'Carlo', 'Rutherford', 'Cummings', '19515768', 1, 'parker_75@upton.pe', '+51 76 922 2421', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(201, 'Nakia', 'Shyanne', 'Zulauf', 'Weissnat', '19039827', 2, 'nakia_15@outlook.com', '+51 83 609 4943', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(202, 'Jodie', NULL, 'Roberts', 'Murphy', '81537868', 2, 'jodie_50@outlook.com', '+51 12 753 2356', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(203, 'Liam', NULL, 'Stehr', 'Tremblay', '46455942', 1, 'liam_32@protonmail.com', '+51 39 689 2749', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(204, 'Francisca', 'Rebecca', 'Tillman', 'Jacobi', '46903574', 2, 'francisca_77@yahoo.com', '+51 80 192 1410', 'Cum occaecati ea dolor earum maxime sint deserunt.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(205, 'Xander', NULL, 'Hamill', 'Toy', '76071253', 1, 'xander_20@icloud.com', '+51 55 294 9394', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(206, 'Destini', NULL, 'Witting', 'Hermann', '40790378', 2, 'destini_87@icloud.com', '+51 29 269 5810', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(207, 'Ardith', NULL, 'Torp', 'Dach', '45100577', 2, 'ardith_83@hotmail.com', '+51 15 724 7193', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(208, 'Hassan', 'Royal', 'Cummings', 'Hirthe', '50575858', 1, 'hassan_71@outlook.com', '+51 80 648 2812', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(209, 'Joannie', NULL, 'Rowe', 'Cummerata', '48736220', 2, 'joannie_74@gmail.com', '+51 50 616 1749', 'Ad atque explicabo eius ut repellat sed.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(210, 'Joaquin', 'Tod', 'Wehner', 'Dibbert', '90897915', 1, 'joaquin_81@hotmail.com', '+51 13 461 8955', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(211, 'Cayla', NULL, 'Wiegand', 'Marks', '92177270', 2, 'cayla_41@icloud.com', '+51 52 770 9882', 'Culpa dicta non assumenda qui placeat quasi.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(212, 'Mohamed', 'Derrick', 'Raynor', 'Spencer', '39605966', 1, 'mohamed_30@protonmail.com', '+51 47 728 3240', 'Reprehenderit quia quibusdam nemo exercitationem cumque fugiat.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(213, 'Annabelle', 'Euna', 'Parker', 'Pollich', '31028587', 2, 'annabelle_80@lynch.pe', '+51 18 522 7818', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(214, 'Felicita', 'Estell', 'Dare', 'Wilkinson', '83536838', 2, 'felicita_66@bergnaum.pe', '+51 22 731 4093', 'Quasi suscipit consequatur distinctio ut adipisci.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(215, 'Susanna', 'Karine', 'Lueilwitz', 'Brown', '10790104', 2, 'susanna_82@protonmail.com', '+51 55 779 4683', 'Dolor impedit omnis sit ratione asperiores.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(216, 'Tom', 'Joshuah', 'Muller', 'Swaniawski', '95187043', 1, 'tom_56@icloud.com', '+51 97 836 3687', 'Ut et deserunt et sint id pariatur qui.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(217, 'Tyree', 'Joaquin', 'Flatley', 'Jones', '42380921', 1, 'tyree_27@gmail.com', '+51 88 959 5879', 'Quia velit voluptas optio et voluptatibus quidem.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(218, 'Sabina', NULL, 'Corwin', 'O\'Connell', '25784997', 2, 'sabina_79@hotmail.com', '+51 90 863 1261', 'Exercitationem voluptatem dicta exercitationem nisi quia deserunt.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(219, 'Francisca', NULL, 'Kohler', 'Heidenreich', '40045297', 2, 'francisca_29@hotmail.com', '+51 47 952 4365', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(220, 'Camron', 'Vicente', 'Bednar', 'Crooks', '68183458', 1, 'camron_12@outlook.com', '+51 33 197 2599', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(221, 'June', 'Skyla', 'Osinski', 'Murazik', '25416009', 2, 'june_35@outlook.com', '+51 72 432 6153', 'Assumenda laborum beatae esse dignissimos repudiandae occaecati.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(222, 'Verdie', NULL, 'Kuhn', 'Luettgen', '41993821', 2, 'verdie_69@frami.pe', '+51 84 577 2079', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(223, 'Brando', NULL, 'Kulas', 'Corkery', '58066834', 1, 'brando_87@gottlieb.pe', '+51 78 635 5900', 'Rerum impedit odio adipisci.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(224, 'Nina', NULL, 'Berge', 'Satterfield', '65454287', 2, 'nina_44@yahoo.com', '+51 41 157 8723', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(225, 'Sister', 'Leila', 'Bernier', 'Harber', '82260716', 2, 'sister_19@protonmail.com', '+51 66 158 6313', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(226, 'Marian', 'Trinity', 'Cassin', 'Adams', '56652211', 2, 'marian_81@icloud.com', '+51 33 975 3978', 'Delectus ut quia aut ut.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(227, 'Ryleigh', NULL, 'Ondricka', 'Carter', '34165509', 1, 'ryleigh_26@gmail.com', '+51 95 453 1955', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(228, 'Keshawn', 'Darron', 'Glover', 'Hills', '71393356', 1, 'keshawn_24@protonmail.com', '+51 57 445 5051', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(229, 'Thea', 'Gudrun', 'Weissnat', 'Konopelski', '32487749', 2, 'thea_95@yahoo.com', '+51 46 623 5162', 'Voluptatem omnis perferendis beatae.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(230, 'Tiara', NULL, 'Rippin', 'Homenick', '42730937', 2, 'tiara_70@gmail.com', '+51 38 983 9254', 'Fugit nemo aliquid ut consequuntur et reiciendis qui.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(231, 'Dudley', 'Jerald', 'Kassulke', 'Fahey', '29228879', 1, 'dudley_94@outlook.com', '+51 58 325 1671', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(232, 'Marilyne', 'Taya', 'Gottlieb', 'Fritsch', '61657110', 2, 'marilyne_18@outlook.com', '+51 87 321 8243', NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(233, 'Dane', NULL, 'Beahan', 'Schmeler', '19795364', 1, 'dane_19@gmail.com', '+51 62 564 8333', 'Dolore adipisci officiis repellendus eaque voluptates et.', '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(234, 'Steve', 'Ole', 'Yundt', 'Aufderhar', '49630051', 1, 'steve_33@rohan.pe', '+51 83 668 8802', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(235, 'Roderick', 'Gabe', 'Berge', 'Dickens', '17240574', 1, 'roderick_20@gmail.com', '+51 42 774 2369', 'Impedit dolores labore aut similique dolor est laudantium.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(236, 'Pearl', 'Berniece', 'Turcotte', 'Waelchi', '90106050', 2, 'pearl_53@yahoo.com', '+51 12 796 6030', 'Doloremque aut voluptates cum odit nobis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(237, 'Theresia', 'Rosalinda', 'Harber', 'Kuvalis', '35742538', 2, 'theresia_59@hotmail.com', '+51 28 111 8401', 'Ipsam sit dicta ut voluptates.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(238, 'Josephine', NULL, 'Pollich', 'Berge', '61229710', 2, 'josephine_97@gmail.com', '+51 18 722 1589', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(239, 'Ramiro', NULL, 'Effertz', 'Feil', '78231685', 1, 'ramiro_97@dach.pe', '+51 83 147 2026', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(240, 'Linwood', 'Sedrick', 'Crona', 'Botsford', '54389634', 1, 'linwood_69@yahoo.com', '+51 70 577 9589', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(241, 'Morgan', 'Darryl', 'Rosenbaum', 'Smitham', '71692799', 1, 'morgan_25@nienow.pe', '+51 73 989 4207', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(242, 'Jayden', NULL, 'White', 'Reilly', '55266676', 1, 'jayden_85@hotmail.com', '+51 91 754 2244', 'Ut debitis consequatur omnis culpa quo nihil illo.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(243, 'Kareem', NULL, 'Botsford', 'Halvorson', '81802993', 1, 'kareem_80@deckow.pe', '+51 46 331 1671', 'Cum similique aliquam quis et rerum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(244, 'Kari', NULL, 'Carter', 'Effertz', '62186159', 2, 'kari_56@hotmail.com', '+51 32 245 3708', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(245, 'Alessia', 'Aliya', 'Reichel', 'Dibbert', '19302105', 2, 'alessia_39@protonmail.com', '+51 66 613 7735', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(246, 'Chandler', NULL, 'Willms', 'Rempel', '67655111', 1, 'chandler_10@gmail.com', '+51 53 121 9597', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(247, 'Pinkie', NULL, 'Quitzon', 'Kuhic', '52422173', 2, 'pinkie_69@gmail.com', '+51 30 551 3361', 'Qui neque voluptatibus inventore ex voluptates id.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(248, 'Marie', 'Aida', 'Bogan', 'Veum', '78097221', 2, 'marie_19@shanahan.pe', '+51 20 473 4938', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(249, 'Alberto', NULL, 'Kling', 'Orn', '10573736', 1, 'alberto_14@yahoo.com', '+51 37 815 6909', 'Nostrum voluptate velit et repudiandae.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(250, 'Myah', NULL, 'Rath', 'Ebert', '99799246', 2, 'myah_59@yahoo.com', '+51 58 957 7580', 'Est esse deleniti et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(251, 'Shana', NULL, 'Gerlach', 'Heathcote', '84877146', 2, 'shana_69@icloud.com', '+51 70 426 2340', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(252, 'Rosetta', NULL, 'Walsh', 'Predovic', '58895835', 2, 'rosetta_35@icloud.com', '+51 49 568 9489', 'Repellendus reiciendis maiores neque.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(253, 'Eunice', 'Karlie', 'Hammes', 'Shields', '92939347', 2, 'eunice_54@protonmail.com', '+51 81 710 6756', 'Assumenda est et expedita tempora necessitatibus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(254, 'Leo', NULL, 'Cartwright', 'Johnston', '64840164', 1, 'leo_14@yahoo.com', '+51 19 855 9917', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(255, 'Ramiro', 'Tyrique', 'Gibson', 'Morissette', '27340157', 1, 'ramiro_39@gmail.com', '+51 28 780 9678', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(256, 'Mireya', NULL, 'Ankunding', 'Will', '35175984', 2, 'mireya_19@gmail.com', '+51 75 450 7789', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(257, 'Richmond', 'Brennon', 'Watsica', 'Boyle', '91697202', 1, 'richmond_50@breitenberg.pe', '+51 79 579 3661', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(258, 'Jackie', NULL, 'Veum', 'King', '16818855', 2, 'jackie_78@icloud.com', '+51 89 987 1236', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(259, 'Amalia', 'Icie', 'Anderson', 'Kub', '36039785', 2, 'amalia_71@gmail.com', '+51 37 921 1859', 'Voluptate voluptas blanditiis et nisi.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(260, 'Jacinto', NULL, 'Armstrong', 'Harvey', '71811117', 1, 'jacinto_87@hotmail.com', '+51 49 178 1150', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(261, 'Julie', NULL, 'Murphy', 'Robel', '55732197', 2, 'julie_26@yahoo.com', '+51 30 919 1154', 'Commodi animi optio odio similique placeat laboriosam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(262, 'Kris', 'Dee', 'Haag', 'Kirlin', '16948777', 1, 'kris_78@outlook.com', '+51 60 884 3619', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(263, 'Ethelyn', NULL, 'Dare', 'McCullough', '18816364', 2, 'ethelyn_88@protonmail.com', '+51 47 339 7335', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(264, 'Alison', 'Susanna', 'Lebsack', 'Thompson', '34759298', 2, 'alison_91@bahringer.pe', '+51 94 963 7310', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(265, 'Katelyn', NULL, 'Kuphal', 'Zulauf', '48268183', 2, 'katelyn_52@hotmail.com', '+51 74 343 9742', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(266, 'Zaria', NULL, 'Daugherty', 'Bechtelar', '43802800', 2, 'zaria_72@outlook.com', '+51 41 641 8780', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(267, 'Camilla', NULL, 'Botsford', 'Schneider', '40805312', 2, 'camilla_31@yahoo.com', '+51 41 865 9690', 'Architecto ut quod sapiente modi a.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(268, 'Jesse', 'Carroll', 'Rempel', 'Murphy', '77688119', 1, 'jesse_90@outlook.com', '+51 57 420 2289', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(269, 'Helga', 'Ashlee', 'Gorczany', 'Pfannerstill', '47846315', 2, 'helga_95@icloud.com', '+51 24 847 8130', 'Et necessitatibus occaecati nam ea quaerat eos porro.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(270, 'Maxie', 'Jacky', 'O\'Kon', 'Bosco', '37563373', 2, 'maxie_55@hotmail.com', '+51 39 457 9725', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(271, 'Timmy', 'Deron', 'Dicki', 'Skiles', '79495170', 1, 'timmy_76@outlook.com', '+51 44 329 3787', 'Non error nisi quis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(272, 'Stephanie', NULL, 'Stamm', 'Tillman', '73286758', 2, 'stephanie_30@protonmail.com', '+51 29 566 8136', 'Eligendi assumenda saepe labore alias.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(273, 'Olga', NULL, 'Baumbach', 'Von', '93205671', 2, 'olga_97@protonmail.com', '+51 44 523 7441', 'Laborum expedita eum nam nobis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(274, 'Dario', NULL, 'Sawayn', 'Cole', '24183620', 1, 'dario_45@outlook.com', '+51 48 560 5077', 'Iure non optio sint earum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(275, 'Baron', 'Kellen', 'Mueller', 'Gerlach', '44154637', 1, 'baron_72@protonmail.com', '+51 29 191 1893', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(276, 'Shanelle', 'Charlene', 'Beer', 'Crooks', '93329727', 2, 'shanelle_56@hotmail.com', '+51 86 243 3103', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(277, 'Ernie', NULL, 'Lueilwitz', 'O\'Connell', '89508077', 1, 'ernie_52@protonmail.com', '+51 10 540 5822', 'Et architecto voluptates dolores aut blanditiis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);
INSERT INTO `tutors` (`id`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `dni`, `genero_id`, `correo`, `celular`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(278, 'Elijah', NULL, 'Wunsch', 'Muller', '59365137', 1, 'elijah_78@king.pe', '+51 69 476 5654', 'Dignissimos et non architecto minima est autem aut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(279, 'Meggie', NULL, 'Pagac', 'Hagenes', '29714717', 2, 'meggie_49@protonmail.com', '+51 44 401 2036', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(280, 'Mathilde', 'Elnora', 'Donnelly', 'Corkery', '34821228', 2, 'mathilde_66@icloud.com', '+51 57 224 2878', 'Ex eum tempora aliquid sit quod necessitatibus numquam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(281, 'Claire', NULL, 'Rogahn', 'Nikolaus', '66257838', 2, 'claire_68@yahoo.com', '+51 32 925 7901', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(282, 'Zion', NULL, 'Ledner', 'Funk', '47931854', 1, 'zion_97@protonmail.com', '+51 21 828 4615', 'Sunt sit perspiciatis soluta.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(283, 'Pietro', NULL, 'Miller', 'Abbott', '78283144', 1, 'pietro_50@protonmail.com', '+51 47 632 3669', 'Dolorum laboriosam et tempore eum molestiae sit officia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(284, 'Boyd', 'Sydney', 'Carroll', 'Langosh', '39696777', 1, 'boyd_12@gmail.com', '+51 31 190 1716', 'Mollitia voluptatem qui commodi autem voluptatibus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(285, 'Letitia', NULL, 'Denesik', 'Runte', '86744290', 2, 'letitia_78@icloud.com', '+51 93 535 4530', 'Recusandae quibusdam inventore laborum sint non voluptatem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(286, 'Brittany', 'Cynthia', 'Abshire', 'Howe', '67956928', 2, 'brittany_20@yahoo.com', '+51 17 415 8610', 'Eaque quis aut nostrum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(287, 'Dell', NULL, 'Von', 'Lubowitz', '63338219', 1, 'dell_18@miller.pe', '+51 70 524 2014', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(288, 'Pietro', NULL, 'Beatty', 'Marks', '88509218', 1, 'pietro_27@protonmail.com', '+51 32 297 2355', 'Praesentium numquam similique qui dicta.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(289, 'Cameron', 'Delbert', 'Corkery', 'Hegmann', '44340817', 1, 'cameron_36@icloud.com', '+51 37 512 2491', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(290, 'Chloe', 'Ana', 'Waters', 'Cruickshank', '57017010', 2, 'chloe_65@icloud.com', '+51 64 575 8335', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(291, 'Myrtle', 'Aliyah', 'Kuhn', 'Homenick', '72326965', 2, 'myrtle_56@icloud.com', '+51 31 969 4034', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(292, 'Leola', 'Krystina', 'Rosenbaum', 'Hodkiewicz', '16473647', 2, 'leola_38@ratke.pe', '+51 73 720 1551', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(293, 'Candace', 'Margarita', 'Gutkowski', 'Crooks', '35681671', 2, 'candace_51@hotmail.com', '+51 15 380 2180', 'Consequuntur non accusantium optio quibusdam non libero placeat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(294, 'Gerry', NULL, 'Moen', 'Carroll', '72275250', 2, 'gerry_24@protonmail.com', '+51 43 965 1327', 'Ullam cum iusto vero in rem aut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(295, 'Derrick', NULL, 'Stiedemann', 'O\'Hara', '40853260', 1, 'derrick_92@icloud.com', '+51 50 721 3206', 'Nemo explicabo nesciunt sed quo modi deserunt qui.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(296, 'Samantha', NULL, 'Senger', 'Brown', '90893154', 2, 'samantha_18@heller.pe', '+51 33 710 3021', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(297, 'Eddie', 'Kennedi', 'Witting', 'Swift', '76422210', 1, 'eddie_60@icloud.com', '+51 77 673 5233', 'Impedit dolores cum numquam et rerum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(298, 'Marlon', 'Eloy', 'Weimann', 'Lueilwitz', '69047856', 1, 'marlon_20@protonmail.com', '+51 30 826 2110', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(299, 'Susanna', NULL, 'Grant', 'Considine', '90965233', 2, 'susanna_61@champlin.pe', '+51 40 705 9304', 'Magni excepturi nulla aut dolor nostrum.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(300, 'Kaylah', NULL, 'Jerde', 'Lueilwitz', '31547543', 2, 'kaylah_25@protonmail.com', '+51 14 996 9756', 'Vero et sit esse ut deserunt et.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(301, 'Kevin', NULL, 'Torphy', 'Olson', '97471392', 1, 'kevin_66@outlook.com', '+51 83 398 1743', 'Aut repellat cum natus repellendus aut et libero.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(302, 'Doug', NULL, 'Kassulke', 'Lebsack', '82983514', 1, 'doug_76@hotmail.com', '+51 84 158 8989', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(303, 'Reynold', NULL, 'Rau', 'Wintheiser', '38287932', 1, 'reynold_35@hotmail.com', '+51 22 868 8352', 'Quasi est maiores et ea minus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(304, 'Damion', 'Abner', 'Kutch', 'Kozey', '84080302', 1, 'damion_55@hotmail.com', '+51 40 144 7337', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(305, 'Faye', NULL, 'West', 'Hansen', '35442853', 2, 'faye_31@yahoo.com', '+51 12 337 4641', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(306, 'Zoie', NULL, 'Rolfson', 'Swift', '28998326', 2, 'zoie_84@gmail.com', '+51 64 501 8857', 'Dolorem qui totam voluptas ut tempore voluptas eos molestiae.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(307, 'Kirk', NULL, 'Bernier', 'Parker', '32890313', 1, 'kirk_12@icloud.com', '+51 74 827 5182', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(308, 'Elisabeth', 'Jennie', 'Dooley', 'Kshlerin', '65727656', 2, 'elisabeth_63@yahoo.com', '+51 44 687 3896', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(309, 'Lori', 'Maximillia', 'Adams', 'DuBuque', '83274543', 2, 'lori_14@protonmail.com', '+51 52 222 6389', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(310, 'Madelynn', NULL, 'Greenholt', 'Hansen', '64845905', 2, 'madelynn_11@outlook.com', '+51 94 922 3491', 'Expedita earum explicabo et est est reprehenderit non incidunt.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(311, 'Ernie', 'Reuben', 'Bogan', 'Walter', '70404048', 1, 'ernie_77@hotmail.com', '+51 61 451 8988', 'Quae et quia nulla sit qui sunt et quia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(312, 'Ernesto', NULL, 'Schmeler', 'Skiles', '88340741', 1, 'ernesto_78@outlook.com', '+51 73 659 9698', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(313, 'Maya', NULL, 'Lesch', 'Kub', '57651649', 2, 'maya_31@protonmail.com', '+51 20 318 8178', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(314, 'Lydia', 'Mellie', 'Gorczany', 'Stroman', '12399060', 2, 'lydia_79@yahoo.com', '+51 91 666 8471', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(315, 'Joanne', NULL, 'Padberg', 'Kutch', '87957295', 2, 'joanne_88@hotmail.com', '+51 84 779 6746', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(316, 'Delta', 'Maddison', 'O\'Reilly', 'Hoppe', '58007993', 2, 'delta_40@yahoo.com', '+51 80 191 9828', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(317, 'Laury', NULL, 'McGlynn', 'Johnston', '66040394', 2, 'laury_41@icloud.com', '+51 98 894 5241', 'Aspernatur voluptatem nobis quod adipisci.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(318, 'Eldred', 'Halle', 'Konopelski', 'Mann', '95886768', 1, 'eldred_55@gmail.com', '+51 10 402 6729', 'Voluptatem tempora praesentium est natus ipsa quia dicta.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(319, 'Libbie', 'Ebony', 'Wunsch', 'Murray', '44412918', 2, 'libbie_15@hotmail.com', '+51 75 665 7356', 'Dicta corrupti ducimus tempora est dolor qui.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(320, 'Rollin', 'Salvador', 'Casper', 'Corwin', '44915214', 1, 'rollin_59@yahoo.com', '+51 74 942 8114', 'Fugiat nihil ipsa quia delectus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(321, 'Alisha', 'Serenity', 'Goldner', 'Howe', '32055926', 2, 'alisha_78@kreiger.pe', '+51 60 537 3793', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(322, 'Jonatan', NULL, 'Heller', 'Ullrich', '68464220', 1, 'jonatan_30@lebsack.pe', '+51 70 787 2338', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(323, 'Freda', 'Ila', 'Hudson', 'Nikolaus', '67340063', 2, 'freda_98@donnelly.pe', '+51 77 821 7601', 'Aspernatur sequi voluptates dolorum voluptas neque.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(324, 'Layne', 'Lon', 'Fisher', 'Borer', '46437941', 1, 'layne_56@yahoo.com', '+51 90 829 9497', 'Sed ut autem qui aut corporis sit aliquam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(325, 'Adelia', NULL, 'Labadie', 'Jerde', '70531061', 2, 'adelia_84@icloud.com', '+51 22 592 4162', 'Iusto rem asperiores eos quis sit omnis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(326, 'Adah', 'Kenyatta', 'Cummerata', 'Rutherford', '72922069', 2, 'adah_98@hotmail.com', '+51 70 468 5348', 'Impedit non deleniti et labore minima.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(327, 'Aglae', NULL, 'Glover', 'Connelly', '38603120', 2, 'aglae_70@gmail.com', '+51 16 349 6370', 'Illum libero sint soluta repellendus consectetur ea.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(328, 'Frederique', 'Gudrun', 'Hessel', 'Rohan', '11441142', 2, 'frederique_28@protonmail.com', '+51 24 815 3505', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(329, 'Emelia', NULL, 'Legros', 'Buckridge', '53632733', 2, 'emelia_32@outlook.com', '+51 99 600 5541', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(330, 'Cordia', NULL, 'Weissnat', 'Schaefer', '60961124', 2, 'cordia_50@icloud.com', '+51 50 134 5020', 'Occaecati aut unde repellat libero.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(331, 'Dagmar', NULL, 'Luettgen', 'Corwin', '48753371', 1, 'dagmar_44@mccullough.pe', '+51 78 331 9771', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(332, 'Columbus', 'Harvey', 'Ratke', 'Wisozk', '70640171', 1, 'columbus_52@icloud.com', '+51 23 951 8474', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(333, 'Annabell', 'Jacinthe', 'Brown', 'Cronin', '35335891', 2, 'annabell_94@yahoo.com', '+51 34 170 4596', 'Omnis iste delectus ab accusamus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(334, 'Brian', 'Rylan', 'Schowalter', 'Schultz', '85579228', 1, 'brian_27@yahoo.com', '+51 37 391 5025', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(335, 'Charley', NULL, 'Kohler', 'Schaden', '93002691', 1, 'charley_43@protonmail.com', '+51 62 192 1762', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(336, 'Clemmie', 'Zoe', 'Wunsch', 'Ullrich', '74558524', 2, 'clemmie_20@yahoo.com', '+51 24 508 9929', 'Doloribus cupiditate voluptatem facere maxime ducimus ea ut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(337, 'Devonte', 'Douglas', 'Huels', 'Lind', '64075568', 1, 'devonte_65@hotmail.com', '+51 58 363 3098', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(338, 'Susana', NULL, 'Osinski', 'Prohaska', '55910533', 2, 'susana_39@protonmail.com', '+51 96 653 4680', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(339, 'Grayce', 'Ansel', 'Monahan', 'Hand', '70575788', 1, 'grayce_46@protonmail.com', '+51 44 170 8219', 'Repellendus maxime repudiandae eligendi et aut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(340, 'Nils', NULL, 'Moen', 'Casper', '11393928', 1, 'nils_92@outlook.com', '+51 65 743 2577', 'Labore ea rerum dolores quibusdam.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(341, 'Ferne', 'Javier', 'Waelchi', 'Turner', '10617632', 1, 'ferne_38@outlook.com', '+51 43 372 9834', 'Saepe nisi dolor temporibus recusandae.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(342, 'Florian', 'Mitchell', 'Auer', 'Roberts', '14386114', 1, 'florian_10@hotmail.com', '+51 12 701 8439', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(343, 'Kaci', NULL, 'Moore', 'Welch', '91515850', 2, 'kaci_11@kub.pe', '+51 60 287 7835', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(344, 'Mossie', NULL, 'Welch', 'D\'Amore', '33005108', 2, 'mossie_82@outlook.com', '+51 33 123 3266', 'Minima omnis quis molestiae aut tempora quia maiores.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(345, 'Alexa', 'Deborah', 'Donnelly', 'Flatley', '47400933', 2, 'alexa_42@yundt.pe', '+51 82 190 3297', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(346, 'Reinhold', 'Anthony', 'Stanton', 'Labadie', '70740099', 1, 'reinhold_21@purdy.pe', '+51 78 950 3590', 'Facere aut porro aut quis molestiae ut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(347, 'Myriam', NULL, 'Wilderman', 'Leffler', '69992687', 2, 'myriam_37@hotmail.com', '+51 68 747 3703', 'Saepe nostrum modi quos consequuntur perspiciatis tempora.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(348, 'Brooke', 'Darlene', 'DuBuque', 'Anderson', '27906524', 2, 'brooke_91@protonmail.com', '+51 78 821 3728', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(349, 'Ruth', 'Bessie', 'Funk', 'Schultz', '93412060', 2, 'ruth_78@hotmail.com', '+51 53 326 5839', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(350, 'Hyman', NULL, 'Bosco', 'Donnelly', '12456288', 1, 'hyman_48@gmail.com', '+51 72 886 6039', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(351, 'Taya', 'Alyce', 'Jacobi', 'Mraz', '20689764', 2, 'taya_77@protonmail.com', '+51 31 637 2089', 'Eos ipsam numquam ut.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(352, 'Camren', NULL, 'Jenkins', 'Eichmann', '41797761', 1, 'camren_82@icloud.com', '+51 52 964 1660', 'Tenetur quia voluptas beatae qui autem illo.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(353, 'Matilde', 'Dakota', 'Feil', 'Dietrich', '21758839', 2, 'matilde_28@yahoo.com', '+51 19 512 9732', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(354, 'Coy', NULL, 'Grady', 'Bednar', '56027053', 1, 'coy_36@icloud.com', '+51 38 578 7737', 'Magnam fugiat error molestiae qui corporis dolor dolor.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(355, 'Carrie', NULL, 'Johnson', 'Schmitt', '73394304', 2, 'carrie_34@gmail.com', '+51 82 216 9881', 'Asperiores dolorem deserunt necessitatibus dolores autem.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(356, 'Linda', 'Neoma', 'Runolfsson', 'Bechtelar', '43887813', 2, 'linda_82@outlook.com', '+51 32 650 2802', 'Mollitia voluptas et laudantium ut ducimus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(357, 'Brad', 'Jacinto', 'Weimann', 'Ziemann', '25553924', 1, 'brad_20@gmail.com', '+51 21 200 2114', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(358, 'Preston', 'Raheem', 'Feest', 'Beahan', '39952162', 1, 'preston_35@sporer.pe', '+51 81 997 9961', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(359, 'Noel', NULL, 'Herzog', 'Wilkinson', '35595668', 1, 'noel_99@outlook.com', '+51 23 955 9826', 'Ut facere repudiandae ratione quia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(360, 'Ole', 'Jessie', 'Hill', 'Wolf', '26515372', 1, 'ole_28@bogan.pe', '+51 67 655 1130', 'Officiis quod tenetur quo delectus omnis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(361, 'Erik', NULL, 'Glover', 'Little', '73945527', 1, 'erik_36@gmail.com', '+51 39 663 1881', 'Laboriosam itaque odit est voluptate.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(362, 'Jakob', 'Chase', 'Bednar', 'Moore', '54421242', 1, 'jakob_45@hotmail.com', '+51 71 816 7133', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(363, 'Joannie', NULL, 'Leffler', 'Heidenreich', '87591381', 2, 'joannie_25@kuhlman.pe', '+51 10 782 4782', 'Aliquam velit sed placeat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(364, 'Lavina', NULL, 'Fritsch', 'Berge', '68422398', 2, 'lavina_86@gmail.com', '+51 13 523 6997', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(365, 'Eladio', 'Damien', 'Wiza', 'Yundt', '34305235', 1, 'eladio_55@icloud.com', '+51 10 286 7803', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(366, 'Terry', 'Merritt', 'Mertz', 'Murazik', '39675236', 1, 'terry_64@icloud.com', '+51 81 396 6823', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(367, 'Myron', 'Titus', 'Bahringer', 'Bashirian', '83807626', 1, 'myron_13@icloud.com', '+51 45 481 4401', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(368, 'Rowena', 'Athena', 'Vandervort', 'Hauck', '82173818', 2, 'rowena_39@yahoo.com', '+51 21 935 8064', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(369, 'Marielle', NULL, 'Jacobi', 'Hansen', '63944179', 2, 'marielle_39@hamill.pe', '+51 85 835 7055', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(370, 'Izaiah', 'Alvah', 'Borer', 'Towne', '11529551', 1, 'izaiah_71@outlook.com', '+51 47 549 9913', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(371, 'Anna', 'Esperanza', 'Heller', 'Ritchie', '35051567', 2, 'anna_63@gmail.com', '+51 85 343 5593', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(372, 'Elise', NULL, 'Armstrong', 'Ullrich', '50837959', 2, 'elise_69@outlook.com', '+51 96 466 4024', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(373, 'Carleton', NULL, 'Koelpin', 'Stanton', '77553418', 1, 'carleton_78@mckenzie.pe', '+51 55 243 9397', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(374, 'Shanelle', 'Leann', 'Rath', 'Olson', '20095390', 2, 'shanelle_29@outlook.com', '+51 57 667 9160', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(375, 'Genevieve', 'Mazie', 'Leannon', 'D\'Amore', '91266026', 2, 'genevieve_20@outlook.com', '+51 90 855 4922', 'Deleniti temporibus veritatis aut mollitia consequatur porro praesentium dignissimos.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(376, 'Conner', 'Kristoffer', 'Sporer', 'Goyette', '47632961', 1, 'conner_73@outlook.com', '+51 26 723 5062', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(377, 'Hettie', 'Heaven', 'Stracke', 'Hintz', '33053303', 2, 'hettie_22@gmail.com', '+51 36 402 3919', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(378, 'Euna', 'Joy', 'Parker', 'Fisher', '35021370', 2, 'euna_78@yahoo.com', '+51 61 915 4804', 'Harum cumque modi veniam ipsam velit autem maiores.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(379, 'Eleanore', 'Diana', 'Ledner', 'Boyle', '11402673', 2, 'eleanore_97@block.pe', '+51 30 198 6975', 'Sit dolores voluptas officia sint inventore quia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(380, 'Marietta', NULL, 'Kulas', 'Bernier', '90440497', 2, 'marietta_30@outlook.com', '+51 80 223 6661', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(381, 'Sydney', NULL, 'Luettgen', 'Mills', '51375450', 1, 'sydney_13@protonmail.com', '+51 49 731 2517', 'Optio et molestiae et laboriosam officia.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(382, 'Lura', NULL, 'Borer', 'Nolan', '31117949', 2, 'lura_12@hotmail.com', '+51 89 771 1976', 'Qui rem placeat adipisci sed libero perferendis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(383, 'Malachi', NULL, 'Toy', 'Russel', '64558696', 1, 'malachi_57@glover.pe', '+51 86 650 5542', 'Adipisci natus praesentium deserunt necessitatibus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(384, 'Concepcion', NULL, 'Lubowitz', 'Tillman', '27648071', 2, 'concepcion_76@cummerata.pe', '+51 32 881 3620', 'Magni modi similique optio et porro.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(385, 'Jewell', NULL, 'Bogisich', 'Little', '21896918', 2, 'jewell_27@icloud.com', '+51 16 968 8203', 'Aliquam est voluptatem omnis eaque.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(386, 'Gussie', 'Elton', 'Larson', 'Balistreri', '12724925', 1, 'gussie_95@yahoo.com', '+51 52 526 9821', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(387, 'Viviane', 'Vallie', 'Christiansen', 'Wiza', '21600928', 2, 'viviane_32@gmail.com', '+51 29 175 5700', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(388, 'Nicolas', 'Cristina', 'Gulgowski', 'Howe', '82609206', 1, 'nicolas_10@protonmail.com', '+51 15 724 2709', 'Ut ex ut sed illo deserunt eos.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(389, 'Mustafa', 'Jeramy', 'Bernhard', 'Haag', '10667252', 1, 'mustafa_61@yahoo.com', '+51 89 420 4435', 'Dolorum quaerat est sint aspernatur.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(390, 'Carlotta', NULL, 'Kautzer', 'Jacobi', '43220965', 2, 'carlotta_25@protonmail.com', '+51 15 474 4770', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(391, 'Aron', NULL, 'Rosenbaum', 'Kihn', '35275274', 1, 'aron_24@hauck.pe', '+51 24 558 1079', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(392, 'Hermann', 'Bobbie', 'Heathcote', 'Sporer', '22681408', 1, 'hermann_75@oreilly.pe', '+51 32 854 4753', 'Occaecati id officia et perferendis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(393, 'Blanche', 'Rhianna', 'Weissnat', 'Brekke', '23825912', 2, 'blanche_14@yahoo.com', '+51 56 936 5472', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(394, 'Lula', 'Adonis', 'Farrell', 'Homenick', '73972438', 1, 'lula_68@gmail.com', '+51 24 856 2262', NULL, '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(395, 'Abdul', NULL, 'Ziemann', 'Upton', '94842609', 1, 'abdul_67@rosenbaum.pe', '+51 48 981 8268', 'Sunt aliquid enim quaerat.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(396, 'Norval', 'Dangelo', 'Grant', 'Gerhold', '63135586', 1, 'norval_31@protonmail.com', '+51 51 475 7414', 'Quibusdam modi excepturi quia et quam eius doloribus.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(397, 'Evelyn', 'Celestine', 'McClure', 'Lang', '30849960', 2, 'evelyn_30@protonmail.com', '+51 91 266 4626', 'Accusantium reiciendis fuga occaecati blanditiis.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(398, 'Selmer', NULL, 'Ledner', 'Jerde', '25848883', 1, 'selmer_51@yahoo.com', '+51 46 905 9850', 'Autem libero assumenda laborum distinctio.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(399, 'Kailey', NULL, 'Wolf', 'Schoen', '23166887', 2, 'kailey_87@protonmail.com', '+51 82 760 7143', 'Maxime id incidunt voluptatum excepturi aspernatur labore assumenda.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL),
(400, 'Emmalee', 'Joyce', 'Orn', 'Bechtelar', '23749651', 2, 'emmalee_22@rice.pe', '+51 67 988 9366', 'Sit quo minus doloremque quam deserunt.', '2025-07-15 06:11:04', '2025-07-15 06:11:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `dni`, `genero_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Roberto', 'David', 'González', 'Torres', '00000000', 1, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(2, 'Diana', NULL, 'Fernández', 'López', '00000001', 2, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(3, 'Sergio', NULL, 'Castañea', 'Portuondo', '00000002', 1, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(4, 'Lola', NULL, 'Fonseca', 'Martínez', '00000003', 2, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(5, 'Luis', NULL, 'Fonseca', 'Martínez', '00000004', 1, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL),
(6, 'Martín', NULL, 'Valdivia', 'Proenza', '00000005', 1, NULL, '2025-07-15 06:11:03', '2025-07-15 06:11:03', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividads`
--
ALTER TABLE `actividads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actividads_actividad_unique` (`actividad`),
  ADD UNIQUE KEY `actividads_descripcion_unique` (`descripcion`),
  ADD KEY `actividads_usuario_id_foreign` (`usuario_id`);

--
-- Indices de la tabla `actividad_alumno_aulas`
--
ALTER TABLE `actividad_alumno_aulas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actividad_alumno_aulas_actividad_id_aula_id_unique` (`actividad_id`,`aula_id`),
  ADD KEY `actividad_alumno_aulas_aula_id_foreign` (`aula_id`),
  ADD KEY `actividad_alumno_aulas_asignatura_id_foreign` (`asignatura_id`);

--
-- Indices de la tabla `actividad_alumno_generals`
--
ALTER TABLE `actividad_alumno_generals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actividad_alumno_generals_actividad_id_foreign` (`actividad_id`);

--
-- Indices de la tabla `actividad_alumno_grados`
--
ALTER TABLE `actividad_alumno_grados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actividad_alumno_grados_actividad_id_grado_id_unique` (`actividad_id`,`grado_id`),
  ADD KEY `actividad_alumno_grados_grado_id_foreign` (`grado_id`),
  ADD KEY `actividad_alumno_grados_asignatura_id_foreign` (`asignatura_id`);

--
-- Indices de la tabla `actividad_alumno_grupos`
--
ALTER TABLE `actividad_alumno_grupos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actividad_alumno_grupos_actividad_id_alumno_id_unique` (`actividad_id`,`alumno_id`),
  ADD KEY `actividad_alumno_grupos_alumno_id_foreign` (`alumno_id`);

--
-- Indices de la tabla `actividad_calificacion_alumnos`
--
ALTER TABLE `actividad_calificacion_alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actividad_calificacion_alumnos_actividad_id_alumno_id_unique` (`actividad_id`,`alumno_id`),
  ADD KEY `actividad_calificacion_alumnos_alumno_id_foreign` (`alumno_id`),
  ADD KEY `actividad_calificacion_alumnos_calificacion_id_foreign` (`calificacion_id`);

--
-- Indices de la tabla `actividad_contenidos`
--
ALTER TABLE `actividad_contenidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actividad_contenidos_actividad_id_contenido_id_unique` (`actividad_id`,`contenido_id`),
  ADD KEY `actividad_contenidos_contenido_id_foreign` (`contenido_id`);

--
-- Indices de la tabla `actividad_respuestas`
--
ALTER TABLE `actividad_respuestas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actividad_respuestas_alumno_id_actividad_id_contenido_id_unique` (`alumno_id`,`actividad_id`,`contenido_id`),
  ADD KEY `actividad_respuestas_actividad_id_foreign` (`actividad_id`),
  ADD KEY `actividad_respuestas_contenido_id_foreign` (`contenido_id`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alumnos_dni_unique` (`dni`),
  ADD KEY `alumnos_genero_id_foreign` (`genero_id`);

--
-- Indices de la tabla `alumno_tutors`
--
ALTER TABLE `alumno_tutors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alumno_tutors_alumno_id_tutor_id_unique` (`alumno_id`,`tutor_id`),
  ADD KEY `alumno_tutors_tutor_id_foreign` (`tutor_id`);

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncios_anuncio_unique` (`anuncio`),
  ADD UNIQUE KEY `anuncios_descripcion_unique` (`descripcion`),
  ADD KEY `anuncios_usuario_id_foreign` (`usuario_id`);

--
-- Indices de la tabla `anuncio_alumno_aulas`
--
ALTER TABLE `anuncio_alumno_aulas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_alumno_aulas_anuncio_id_aula_id_unique` (`anuncio_id`,`aula_id`),
  ADD KEY `anuncio_alumno_aulas_aula_id_foreign` (`aula_id`);

--
-- Indices de la tabla `anuncio_alumno_generals`
--
ALTER TABLE `anuncio_alumno_generals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anuncio_alumno_generals_anuncio_id_foreign` (`anuncio_id`);

--
-- Indices de la tabla `anuncio_alumno_grados`
--
ALTER TABLE `anuncio_alumno_grados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_alumno_grados_anuncio_id_grado_id_unique` (`anuncio_id`,`grado_id`),
  ADD KEY `anuncio_alumno_grados_grado_id_foreign` (`grado_id`);

--
-- Indices de la tabla `anuncio_alumno_grupos`
--
ALTER TABLE `anuncio_alumno_grupos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_alumno_grupos_anuncio_id_alumno_id_unique` (`anuncio_id`,`alumno_id`),
  ADD KEY `anuncio_alumno_grupos_alumno_id_foreign` (`alumno_id`);

--
-- Indices de la tabla `anuncio_contenidos`
--
ALTER TABLE `anuncio_contenidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_contenidos_anuncio_id_contenido_id_unique` (`anuncio_id`,`contenido_id`),
  ADD KEY `anuncio_contenidos_contenido_id_foreign` (`contenido_id`);

--
-- Indices de la tabla `anuncio_directivo_generals`
--
ALTER TABLE `anuncio_directivo_generals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anuncio_directivo_generals_anuncio_id_foreign` (`anuncio_id`);

--
-- Indices de la tabla `anuncio_directivo_grupos`
--
ALTER TABLE `anuncio_directivo_grupos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_directivo_grupos_anuncio_id_directivo_id_unique` (`anuncio_id`,`directivo_id`),
  ADD KEY `anuncio_directivo_grupos_directivo_id_foreign` (`directivo_id`);

--
-- Indices de la tabla `anuncio_docente_aulas`
--
ALTER TABLE `anuncio_docente_aulas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_docente_aulas_anuncio_id_aula_id_unique` (`anuncio_id`,`aula_id`),
  ADD KEY `anuncio_docente_aulas_aula_id_foreign` (`aula_id`);

--
-- Indices de la tabla `anuncio_docente_generals`
--
ALTER TABLE `anuncio_docente_generals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anuncio_docente_generals_anuncio_id_foreign` (`anuncio_id`);

--
-- Indices de la tabla `anuncio_docente_grados`
--
ALTER TABLE `anuncio_docente_grados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_docente_grados_anuncio_id_grado_id_unique` (`anuncio_id`,`grado_id`),
  ADD KEY `anuncio_docente_grados_grado_id_foreign` (`grado_id`);

--
-- Indices de la tabla `anuncio_docente_grupos`
--
ALTER TABLE `anuncio_docente_grupos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_docente_grupos_anuncio_id_docente_id_unique` (`anuncio_id`,`docente_id`),
  ADD KEY `anuncio_docente_grupos_docente_id_foreign` (`docente_id`);

--
-- Indices de la tabla `anuncio_generals`
--
ALTER TABLE `anuncio_generals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anuncio_generals_anuncio_id_foreign` (`anuncio_id`);

--
-- Indices de la tabla `anuncio_tutor_aulas`
--
ALTER TABLE `anuncio_tutor_aulas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_tutor_aulas_anuncio_id_aula_id_unique` (`anuncio_id`,`aula_id`),
  ADD KEY `anuncio_tutor_aulas_aula_id_foreign` (`aula_id`);

--
-- Indices de la tabla `anuncio_tutor_generals`
--
ALTER TABLE `anuncio_tutor_generals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anuncio_tutor_generals_anuncio_id_foreign` (`anuncio_id`);

--
-- Indices de la tabla `anuncio_tutor_grados`
--
ALTER TABLE `anuncio_tutor_grados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_tutor_grados_anuncio_id_grado_id_unique` (`anuncio_id`,`grado_id`),
  ADD KEY `anuncio_tutor_grados_grado_id_foreign` (`grado_id`);

--
-- Indices de la tabla `anuncio_tutor_grupos`
--
ALTER TABLE `anuncio_tutor_grupos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anuncio_tutor_grupos_anuncio_id_tutor_id_unique` (`anuncio_id`,`tutor_id`),
  ADD KEY `anuncio_tutor_grupos_tutor_id_foreign` (`tutor_id`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asignaturas_asignatura_unique` (`asignatura`),
  ADD UNIQUE KEY `asignaturas_abreviatura_unique` (`abreviatura`);

--
-- Indices de la tabla `asignatura_grados`
--
ALTER TABLE `asignatura_grados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asignatura_grados_asignatura_id_grado_id_unique` (`asignatura_id`,`grado_id`),
  ADD KEY `asignatura_grados_grado_id_foreign` (`grado_id`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aulas_grado_id_seccion_id_unique` (`grado_id`,`seccion_id`),
  ADD KEY `aulas_seccion_id_foreign` (`seccion_id`);

--
-- Indices de la tabla `calificacions`
--
ALTER TABLE `calificacions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calificacions_calificacion_unique` (`calificacion`),
  ADD UNIQUE KEY `calificacions_abreviatura_unique` (`abreviatura`);

--
-- Indices de la tabla `calificacion_asignatura_alumnos`
--
ALTER TABLE `calificacion_asignatura_alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calificacion_asignatura_alumnos_alumno_id_foreign` (`alumno_id`),
  ADD KEY `calificacion_asignatura_alumnos_asignatura_grado_id_foreign` (`asignatura_grado_id`),
  ADD KEY `calificacion_asignatura_alumnos_calificacion_id_foreign` (`calificacion_id`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contactos_correo_unique` (`correo`),
  ADD UNIQUE KEY `contactos_celular_unique` (`celular`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contenidos_contenido_unique` (`contenido`),
  ADD UNIQUE KEY `contenidos_path_unique` (`path`),
  ADD KEY `contenidos_usuario_id_foreign` (`usuario_id`),
  ADD KEY `contenidos_tipo_contenido_id_foreign` (`tipo_contenido_id`);

--
-- Indices de la tabla `directivos`
--
ALTER TABLE `directivos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directivos_dni_unique` (`dni`),
  ADD UNIQUE KEY `directivos_correo_unique` (`correo`),
  ADD UNIQUE KEY `directivos_celular_unique` (`celular`),
  ADD KEY `directivos_genero_id_foreign` (`genero_id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `docentes_dni_unique` (`dni`),
  ADD UNIQUE KEY `docentes_correo_unique` (`correo`),
  ADD UNIQUE KEY `docentes_celular_unique` (`celular`),
  ADD KEY `docentes_genero_id_foreign` (`genero_id`),
  ADD KEY `docentes_aula_id_foreign` (`aula_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `generos_genero_unique` (`genero`),
  ADD UNIQUE KEY `generos_abreviatura_unique` (`abreviatura`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grados_grado_unique` (`grado`),
  ADD UNIQUE KEY `grados_abreviatura_unique` (`abreviatura`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccions`
--
ALTER TABLE `seccions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seccions_seccion_unique` (`seccion`);

--
-- Indices de la tabla `tipo_contenidos`
--
ALTER TABLE `tipo_contenidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipo_contenidos_tipo_unique` (`tipo`);

--
-- Indices de la tabla `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tutors_dni_unique` (`dni`),
  ADD UNIQUE KEY `tutors_correo_unique` (`correo`),
  ADD UNIQUE KEY `tutors_celular_unique` (`celular`),
  ADD KEY `tutors_genero_id_foreign` (`genero_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_dni_unique` (`dni`),
  ADD KEY `usuarios_genero_id_foreign` (`genero_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividads`
--
ALTER TABLE `actividads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `actividad_alumno_aulas`
--
ALTER TABLE `actividad_alumno_aulas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividad_alumno_generals`
--
ALTER TABLE `actividad_alumno_generals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividad_alumno_grados`
--
ALTER TABLE `actividad_alumno_grados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividad_alumno_grupos`
--
ALTER TABLE `actividad_alumno_grupos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividad_calificacion_alumnos`
--
ALTER TABLE `actividad_calificacion_alumnos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividad_contenidos`
--
ALTER TABLE `actividad_contenidos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `actividad_respuestas`
--
ALTER TABLE `actividad_respuestas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT de la tabla `alumno_tutors`
--
ALTER TABLE `alumno_tutors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `anuncio_alumno_aulas`
--
ALTER TABLE `anuncio_alumno_aulas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_alumno_generals`
--
ALTER TABLE `anuncio_alumno_generals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_alumno_grados`
--
ALTER TABLE `anuncio_alumno_grados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_alumno_grupos`
--
ALTER TABLE `anuncio_alumno_grupos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_contenidos`
--
ALTER TABLE `anuncio_contenidos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `anuncio_directivo_generals`
--
ALTER TABLE `anuncio_directivo_generals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_directivo_grupos`
--
ALTER TABLE `anuncio_directivo_grupos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_docente_aulas`
--
ALTER TABLE `anuncio_docente_aulas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_docente_generals`
--
ALTER TABLE `anuncio_docente_generals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_docente_grados`
--
ALTER TABLE `anuncio_docente_grados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_docente_grupos`
--
ALTER TABLE `anuncio_docente_grupos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_generals`
--
ALTER TABLE `anuncio_generals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_tutor_aulas`
--
ALTER TABLE `anuncio_tutor_aulas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_tutor_generals`
--
ALTER TABLE `anuncio_tutor_generals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_tutor_grados`
--
ALTER TABLE `anuncio_tutor_grados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_tutor_grupos`
--
ALTER TABLE `anuncio_tutor_grupos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `asignatura_grados`
--
ALTER TABLE `asignatura_grados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `calificacions`
--
ALTER TABLE `calificacions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `calificacion_asignatura_alumnos`
--
ALTER TABLE `calificacion_asignatura_alumnos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `directivos`
--
ALTER TABLE `directivos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `seccions`
--
ALTER TABLE `seccions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_contenidos`
--
ALTER TABLE `tipo_contenidos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividads`
--
ALTER TABLE `actividads`
  ADD CONSTRAINT `actividads_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `actividad_alumno_aulas`
--
ALTER TABLE `actividad_alumno_aulas`
  ADD CONSTRAINT `actividad_alumno_aulas_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividads` (`id`),
  ADD CONSTRAINT `actividad_alumno_aulas_asignatura_id_foreign` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `actividad_alumno_aulas_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`);

--
-- Filtros para la tabla `actividad_alumno_generals`
--
ALTER TABLE `actividad_alumno_generals`
  ADD CONSTRAINT `actividad_alumno_generals_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividads` (`id`);

--
-- Filtros para la tabla `actividad_alumno_grados`
--
ALTER TABLE `actividad_alumno_grados`
  ADD CONSTRAINT `actividad_alumno_grados_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividads` (`id`),
  ADD CONSTRAINT `actividad_alumno_grados_asignatura_id_foreign` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `actividad_alumno_grados_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`);

--
-- Filtros para la tabla `actividad_alumno_grupos`
--
ALTER TABLE `actividad_alumno_grupos`
  ADD CONSTRAINT `actividad_alumno_grupos_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividads` (`id`),
  ADD CONSTRAINT `actividad_alumno_grupos_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`);

--
-- Filtros para la tabla `actividad_calificacion_alumnos`
--
ALTER TABLE `actividad_calificacion_alumnos`
  ADD CONSTRAINT `actividad_calificacion_alumnos_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividads` (`id`),
  ADD CONSTRAINT `actividad_calificacion_alumnos_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `actividad_calificacion_alumnos_calificacion_id_foreign` FOREIGN KEY (`calificacion_id`) REFERENCES `calificacions` (`id`);

--
-- Filtros para la tabla `actividad_contenidos`
--
ALTER TABLE `actividad_contenidos`
  ADD CONSTRAINT `actividad_contenidos_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividads` (`id`),
  ADD CONSTRAINT `actividad_contenidos_contenido_id_foreign` FOREIGN KEY (`contenido_id`) REFERENCES `contenidos` (`id`);

--
-- Filtros para la tabla `actividad_respuestas`
--
ALTER TABLE `actividad_respuestas`
  ADD CONSTRAINT `actividad_respuestas_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividads` (`id`),
  ADD CONSTRAINT `actividad_respuestas_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `actividad_respuestas_contenido_id_foreign` FOREIGN KEY (`contenido_id`) REFERENCES `contenidos` (`id`);

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `alumno_tutors`
--
ALTER TABLE `alumno_tutors`
  ADD CONSTRAINT `alumno_tutors_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `alumno_tutors_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`id`);

--
-- Filtros para la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD CONSTRAINT `anuncios_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `anuncio_alumno_aulas`
--
ALTER TABLE `anuncio_alumno_aulas`
  ADD CONSTRAINT `anuncio_alumno_aulas_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_alumno_aulas_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`);

--
-- Filtros para la tabla `anuncio_alumno_generals`
--
ALTER TABLE `anuncio_alumno_generals`
  ADD CONSTRAINT `anuncio_alumno_generals_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`);

--
-- Filtros para la tabla `anuncio_alumno_grados`
--
ALTER TABLE `anuncio_alumno_grados`
  ADD CONSTRAINT `anuncio_alumno_grados_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_alumno_grados_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`);

--
-- Filtros para la tabla `anuncio_alumno_grupos`
--
ALTER TABLE `anuncio_alumno_grupos`
  ADD CONSTRAINT `anuncio_alumno_grupos_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `anuncio_alumno_grupos_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`);

--
-- Filtros para la tabla `anuncio_contenidos`
--
ALTER TABLE `anuncio_contenidos`
  ADD CONSTRAINT `anuncio_contenidos_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_contenidos_contenido_id_foreign` FOREIGN KEY (`contenido_id`) REFERENCES `contenidos` (`id`);

--
-- Filtros para la tabla `anuncio_directivo_generals`
--
ALTER TABLE `anuncio_directivo_generals`
  ADD CONSTRAINT `anuncio_directivo_generals_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`);

--
-- Filtros para la tabla `anuncio_directivo_grupos`
--
ALTER TABLE `anuncio_directivo_grupos`
  ADD CONSTRAINT `anuncio_directivo_grupos_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_directivo_grupos_directivo_id_foreign` FOREIGN KEY (`directivo_id`) REFERENCES `directivos` (`id`);

--
-- Filtros para la tabla `anuncio_docente_aulas`
--
ALTER TABLE `anuncio_docente_aulas`
  ADD CONSTRAINT `anuncio_docente_aulas_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_docente_aulas_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`);

--
-- Filtros para la tabla `anuncio_docente_generals`
--
ALTER TABLE `anuncio_docente_generals`
  ADD CONSTRAINT `anuncio_docente_generals_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`);

--
-- Filtros para la tabla `anuncio_docente_grados`
--
ALTER TABLE `anuncio_docente_grados`
  ADD CONSTRAINT `anuncio_docente_grados_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_docente_grados_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`);

--
-- Filtros para la tabla `anuncio_docente_grupos`
--
ALTER TABLE `anuncio_docente_grupos`
  ADD CONSTRAINT `anuncio_docente_grupos_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_docente_grupos_docente_id_foreign` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`);

--
-- Filtros para la tabla `anuncio_generals`
--
ALTER TABLE `anuncio_generals`
  ADD CONSTRAINT `anuncio_generals_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`);

--
-- Filtros para la tabla `anuncio_tutor_aulas`
--
ALTER TABLE `anuncio_tutor_aulas`
  ADD CONSTRAINT `anuncio_tutor_aulas_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_tutor_aulas_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`);

--
-- Filtros para la tabla `anuncio_tutor_generals`
--
ALTER TABLE `anuncio_tutor_generals`
  ADD CONSTRAINT `anuncio_tutor_generals_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`);

--
-- Filtros para la tabla `anuncio_tutor_grados`
--
ALTER TABLE `anuncio_tutor_grados`
  ADD CONSTRAINT `anuncio_tutor_grados_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_tutor_grados_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`);

--
-- Filtros para la tabla `anuncio_tutor_grupos`
--
ALTER TABLE `anuncio_tutor_grupos`
  ADD CONSTRAINT `anuncio_tutor_grupos_anuncio_id_foreign` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncios` (`id`),
  ADD CONSTRAINT `anuncio_tutor_grupos_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`id`);

--
-- Filtros para la tabla `asignatura_grados`
--
ALTER TABLE `asignatura_grados`
  ADD CONSTRAINT `asignatura_grados_asignatura_id_foreign` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `asignatura_grados_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`);

--
-- Filtros para la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `aulas_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`),
  ADD CONSTRAINT `aulas_seccion_id_foreign` FOREIGN KEY (`seccion_id`) REFERENCES `seccions` (`id`);

--
-- Filtros para la tabla `calificacion_asignatura_alumnos`
--
ALTER TABLE `calificacion_asignatura_alumnos`
  ADD CONSTRAINT `calificacion_asignatura_alumnos_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `calificacion_asignatura_alumnos_asignatura_grado_id_foreign` FOREIGN KEY (`asignatura_grado_id`) REFERENCES `asignatura_grados` (`id`),
  ADD CONSTRAINT `calificacion_asignatura_alumnos_calificacion_id_foreign` FOREIGN KEY (`calificacion_id`) REFERENCES `calificacions` (`id`);

--
-- Filtros para la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD CONSTRAINT `contenidos_tipo_contenido_id_foreign` FOREIGN KEY (`tipo_contenido_id`) REFERENCES `tipo_contenidos` (`id`),
  ADD CONSTRAINT `contenidos_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `directivos`
--
ALTER TABLE `directivos`
  ADD CONSTRAINT `directivos_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`),
  ADD CONSTRAINT `docentes_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `tutors`
--
ALTER TABLE `tutors`
  ADD CONSTRAINT `tutors_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
