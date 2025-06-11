-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-06-2025 a las 17:15:25
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
  `inicio` timestamp NOT NULL,
  `fin` timestamp NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividads`
--

INSERT INTO `actividads` (`id`, `actividad`, `descripcion`, `usuario_id`, `inicio`, `fin`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Actividad 1', 'Realizar resumen del tema 3', 1, '2025-05-01 14:00:00', '2025-05-31 14:00:00', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(2, 'Actividad 2', 'Realizar resumen del tema 2', 2, '2025-05-01 14:00:00', '2025-05-31 14:00:00', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(3, 'Actividad 3', 'Realizar resumen del tema 1', 1, '2025-05-01 14:00:00', '2025-05-31 14:00:00', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL);

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
(1, 1, 1, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(2, 1, 2, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(3, 2, 3, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(4, 2, 4, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(5, 3, 5, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL);

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
  `usuario_id` bigint UNSIGNED NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `usuario_id`, `aula_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 1, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(2, 5, 2, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL);

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
(1, 1, 1, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(2, 1, 2, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id` bigint UNSIGNED NOT NULL,
  `usuario_id` bigint UNSIGNED NOT NULL,
  `inicio` timestamp NOT NULL,
  `fin` timestamp NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`id`, `usuario_id`, `inicio`, `fin`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2025-05-01 14:00:00', '2025-05-31 14:00:00', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(2, 2, '2025-05-01 14:00:00', '2025-05-31 14:00:00', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(3, 6, '2025-05-01 14:00:00', '2025-05-31 14:00:00', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL);

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
(1, 1, 1, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(2, 1, 2, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(3, 2, 3, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(4, 2, 4, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(5, 3, 5, 0, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL);

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
(1, 'Matemática', 'MAT', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(2, 'Inglés', 'ING', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL);

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
(1, 1, 1, NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(2, 1, 2, NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL);

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
(1, 1, 1, NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(2, 2, 1, NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL);

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
(1, 'A', 'A', NULL, NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(2, 'B', 'B', NULL, NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(3, 'C', 'C', NULL, NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(4, 'AD', 'AD', NULL, NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL);

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
(1, 'roberto@gmail.com', '+51 000000000', NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(2, 'diana@hotmail.com', '+51 000000001', NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL);

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
(1, 'Diagrama de inanición', 1, 1, '/public/contenido.txt', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(2, 'Río meridional del Ecuador', 1, 2, '/public/contenido.mp3', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(3, 'III Conferencia Mundial del Clima', 2, 3, '/public/contenido.jpeg', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(4, 'Discurso del presidente de la asociación', 2, 4, '/public/contenido.mp4', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL),
(5, 'Actualización de los dispositivos', 6, 5, '/public/contenido.docx', NULL, '2025-06-11 20:08:33', '2025-06-11 20:08:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directivos`
--

CREATE TABLE `directivos` (
  `id` bigint UNSIGNED NOT NULL,
  `usuario_id` bigint UNSIGNED NOT NULL,
  `contacto_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `directivos`
--

INSERT INTO `directivos` (`id`, `usuario_id`, `contacto_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(2, 2, 2, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint UNSIGNED NOT NULL,
  `usuario_id` bigint UNSIGNED NOT NULL,
  `contacto_id` bigint UNSIGNED NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `usuario_id`, `contacto_id`, `aula_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 1, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(2, 6, 2, 2, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL);

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
(1, 'masculino', 'M', NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(2, 'femenino', 'F', NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL);

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
(1, 'Primero', '1ro.', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(2, 'Segundo', '2do.', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(3, 'Tercero', '3ro.', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(4, 'Cuarto', '4to.', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(5, 'Quinto', '5to.', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(6, 'Sexto', '6to.', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL);

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
(1, '2025_05_04_173338_create_rols_table', 1),
(2, '2025_05_04_173339_create_generos_table', 1),
(3, '2025_05_04_173340_create_usuarios_table', 1),
(4, '2025_05_17_220454_create_contactos_table', 1),
(5, '2025_05_17_225929_create_asignaturas_table', 1),
(6, '2025_05_17_225929_create_grados_table', 1),
(7, '2025_05_17_225930_create_asignatura_grados_table', 1),
(8, '2025_05_17_225930_create_seccions_table', 1),
(9, '2025_05_17_225931_create_aulas_table', 1),
(10, '2025_05_17_231736_create_tutors_table', 1),
(11, '2025_05_17_231737_create_alumnos_table', 1),
(12, '2025_05_17_231738_create_alumno_tutors_table', 1),
(13, '2025_05_17_232337_create_docentes_table', 1),
(14, '2025_05_17_232400_create_directivos_table', 1),
(15, '2025_05_17_232401_create_calificacions_table', 1),
(16, '2025_05_18_015927_create_tipo_contenidos_table', 1),
(17, '2025_05_18_015928_create_contenidos_table', 1),
(18, '2025_05_18_020823_create_anuncios_table', 1),
(19, '2025_05_18_025138_create_anuncio_contenidos_table', 1),
(20, '2025_05_18_161614_create_anuncio_alumno_generals_table', 1),
(21, '2025_05_18_161623_create_anuncio_alumno_grupos_table', 1),
(22, '2025_05_18_161631_create_anuncio_alumno_aulas_table', 1),
(23, '2025_05_18_161640_create_anuncio_alumno_grados_table', 1),
(24, '2025_05_18_162318_create_anuncio_tutor_generals_table', 1),
(25, '2025_05_18_162331_create_anuncio_tutor_grupos_table', 1),
(26, '2025_05_18_162336_create_anuncio_tutor_aulas_table', 1),
(27, '2025_05_18_162346_create_anuncio_tutor_grados_table', 1),
(28, '2025_05_18_162400_create_anuncio_docente_generals_table', 1),
(29, '2025_05_18_162414_create_anuncio_docente_grupos_table', 1),
(30, '2025_05_18_162431_create_anuncio_docente_aulas_table', 1),
(31, '2025_05_18_162437_create_anuncio_docente_grados_table', 1),
(32, '2025_05_18_162745_create_anuncio_directivo_generals_table', 1),
(33, '2025_05_18_162757_create_anuncio_directivo_grupos_table', 1),
(34, '2025_05_18_164009_create_anuncio_generals_table', 1),
(35, '2025_05_18_171442_create_actividads_table', 1),
(36, '2025_05_18_171443_create_actividad_contenidos_table', 1),
(37, '2025_05_18_171445_create_actividad_alumno_generals_table', 1),
(38, '2025_05_18_171558_create_actividad_alumno_grupos_table', 1),
(39, '2025_05_18_171842_create_actividad_alumno_aulas_table', 1),
(40, '2025_05_18_172046_create_actividad_alumno_grados_table', 1),
(41, '2025_05_18_172047_create_actividad_respuestas_table', 1),
(42, '2025_05_18_174951_create_actividad_calificacion_alumnos_table', 1),
(43, '2025_05_18_180742_create_calificacion_asignatura_alumnos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` bigint UNSIGNED NOT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `rol`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Directivo', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(2, 'Docente', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(3, 'Tutor', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(4, 'Alumno', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL);

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
(1, 'A', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(2, 'B', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL),
(3, 'C', NULL, '2025-06-11 20:08:31', '2025-06-11 20:08:31', NULL);

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
(1, 'Documento', 'Documentos en formato .doc, .docx, .pdf y otros.', '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(2, 'Presentación digital', 'Documentos en formato .ppt, .pptx y otros.', '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(3, 'Audio', 'Archivos de audio en formato .mp3. y otros', '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(4, 'Imagen', 'Archivos de imagen en formato .jpg, .jpeg, .png y otros.', '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(5, 'Video', 'Archivos de imagen en formato .mp4 y otros.', '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(6, 'Otro tipo de fichero', 'Otro tipo de ficheros.', '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutors`
--

CREATE TABLE `tutors` (
  `id` bigint UNSIGNED NOT NULL,
  `usuario_id` bigint UNSIGNED NOT NULL,
  `contacto_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tutors`
--

INSERT INTO `tutors` (`id`, `usuario_id`, `contacto_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(2, 4, 2, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL);

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
  `rol_id` bigint UNSIGNED NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `dni`, `genero_id`, `rol_id`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Roberto', 'David', 'González', 'Torres', '00000000', 1, 1, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(2, 'Diana', NULL, 'Fernández', 'López', '00000001', 2, 2, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(3, 'Sergio', NULL, 'Castañea', 'Portuondo', '00000002', 1, 3, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(4, 'Lola', NULL, 'Fonseca', 'Martínez', '00000003', 2, 4, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(5, 'Luis', NULL, 'Fonseca', 'Martínez', '00000004', 1, 4, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL),
(6, 'Martín', NULL, 'Valdivia', 'Proenza', '00000005', 1, 2, NULL, '2025-06-11 20:08:32', '2025-06-11 20:08:32', NULL);

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
  ADD KEY `alumnos_usuario_id_foreign` (`usuario_id`),
  ADD KEY `alumnos_aula_id_foreign` (`aula_id`);

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
  ADD KEY `directivos_usuario_id_foreign` (`usuario_id`),
  ADD KEY `directivos_contacto_id_foreign` (`contacto_id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docentes_usuario_id_foreign` (`usuario_id`),
  ADD KEY `docentes_contacto_id_foreign` (`contacto_id`),
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
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rols_rol_unique` (`rol`);

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
  ADD KEY `tutors_usuario_id_foreign` (`usuario_id`),
  ADD KEY `tutors_contacto_id_foreign` (`contacto_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_dni_unique` (`dni`),
  ADD KEY `usuarios_genero_id_foreign` (`genero_id`),
  ADD KEY `usuarios_rol_id_foreign` (`rol_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `seccions`
--
ALTER TABLE `seccions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_contenidos`
--
ALTER TABLE `tipo_contenidos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  ADD CONSTRAINT `alumnos_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`),
  ADD CONSTRAINT `alumnos_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

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
  ADD CONSTRAINT `directivos_contacto_id_foreign` FOREIGN KEY (`contacto_id`) REFERENCES `contactos` (`id`),
  ADD CONSTRAINT `directivos_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`),
  ADD CONSTRAINT `docentes_contacto_id_foreign` FOREIGN KEY (`contacto_id`) REFERENCES `contactos` (`id`),
  ADD CONSTRAINT `docentes_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `tutors`
--
ALTER TABLE `tutors`
  ADD CONSTRAINT `tutors_contacto_id_foreign` FOREIGN KEY (`contacto_id`) REFERENCES `contactos` (`id`),
  ADD CONSTRAINT `tutors_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`),
  ADD CONSTRAINT `usuarios_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `rols` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
