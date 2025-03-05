-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-03-2025 a las 22:33:24
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ingles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_customuser`
--

CREATE TABLE `authenticacion_customuser` (
  `id` bigint(20) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL,
  `resetToken` varchar(256) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_customuser`
--

INSERT INTO `authenticacion_customuser` (`id`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `username`, `email`, `password`, `resetToken`, `avatar`) VALUES
(1, '2024-08-27 14:27:30.685573', 1, '', '', 1, 1, '2023-10-19 11:18:51.451489', 'admin', 'admin@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$5prf.lP20mhEjXZR2PcBdeGuqNP8WUNpUEOl9.4QxVQYMSX1OIwNS', NULL, 'archivos/archivos_useravatar/13994340_5414452.jpg'),
(2, '2025-03-05 16:03:31.187119', 0, 'rastor', 'rastor', 0, 1, '2023-10-20 22:37:06.668497', 'rastor', 'rastor@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$CW/K3HdN7QnvTqJ69oAWO.z99woSK5QvMv6HnHZHDKej9CeXjmc2W', NULL, 'archivos/archivos_useravatar/peakfit.png'),
(3, NULL, 0, 'prueba', 'prueba', 0, 1, '2023-10-20 22:50:51.548558', 'prueba', 'prueba@gmail.com', 'bcrypt_sha256$$2b$12$CMV/jO/puEvS9aPUVR5FnOR8MDMFdMjEJ3pjOx1sOT5Lq/6s1rdti', NULL, ''),
(4, '2023-10-23 20:49:36.247010', 0, 'Katherin Julieth', 'RIncones Guevara', 0, 1, '2023-10-21 17:13:41.110624', 'kjrincones', 'kjrincones@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$kAM8DVnQ.VWUvvCXA.MgZ.zz8WW/lHe4ta0kILqZmQ4ZElivppbYK', NULL, ''),
(5, NULL, 0, 'afshoi', 'hipih', 0, 1, '2023-10-21 17:16:19.186311', 'asfd', 'asfd@ioh.com', 'bcrypt_sha256$$2b$12$uIlEbJnoIYMn1CkkOEVt1.y1SAB8nGc9R1SNJqB6OipLpDyQKLM7W', NULL, ''),
(6, '2023-10-21 23:08:11.555481', 0, 'jainer sailth', 'garcia hernandez', 0, 1, '2023-10-21 23:07:35.429355', 'jsailethgarcia', 'jsailethgarcia@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$SgbCof/jnfJeBtgkwHJ2yuQfA7jlCgov7Rtf3ywQL0nPMMI9gzYse', NULL, 'archivos/archivos_useravatar/logo_uniguajira_2_fxp6KcD.jpg'),
(7, '2023-10-23 22:31:04.256428', 0, 'maye', 'mejia', 0, 1, '2023-10-23 16:46:52.634204', 'maye', 'maye@gmail.com', 'bcrypt_sha256$$2b$12$zpELjR76wJLI7PKszEdspebfd3gBjBvUXc25sJGd8Y7NR85M6iWTK', NULL, ''),
(8, NULL, 0, 'Yeiris', 'Mendoza', 0, 1, '2023-10-24 09:38:11.657653', 'yeirispmendoza', 'yeirispmendoza@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$jbgqD0mD2i.2nY101FLereeaC85qb8UqMvxIpb93i8rf/DoPC2PSS', NULL, ''),
(9, '2024-04-13 10:47:46.328685', 0, 'Yair ANdres', 'Sarmiento Gil', 0, 1, '2024-04-13 10:43:58.972283', 'yasarmiento', 'yasarmiento@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$e/woBQEr./C4UVnOgE9UGOugslmpmM49mkanvkuw4jPYM4IEOLfTW', NULL, ''),
(10, '2024-04-13 10:53:50.253231', 0, 'Laura', 'Taminez', 0, 1, '2024-04-13 10:53:32.091777', 'ltaminez', 'ltaminez@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$6ieq//xYfT6Die.ylLUr1e4uw6ShrfWJiacFYuOtr28qRA8l5bx1C', NULL, ''),
(11, NULL, 0, 'pe', 'pi', 0, 1, '2025-02-07 22:48:49.435640', 'to', 'to@gmail.com', 'bcrypt_sha256$$2b$12$EGcJzKDN1qG6leITtcpBKepd/4SzKYi7NQicM7pBX1PbabdXXeQZ6', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_customuser_groups`
--

CREATE TABLE `authenticacion_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_customuser_user_permissions`
--

CREATE TABLE `authenticacion_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_documenttype`
--

CREATE TABLE `authenticacion_documenttype` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_formacion`
--

CREATE TABLE `authenticacion_formacion` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `fecha_grado` date DEFAULT NULL,
  `cert_grado` varchar(100) DEFAULT NULL,
  `nombre_institucion` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `autor_id` bigint(20) NOT NULL,
  `nivel_formacion_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_gender`
--

CREATE TABLE `authenticacion_gender` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_nivelformacion`
--

CREATE TABLE `authenticacion_nivelformacion` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_person`
--

CREATE TABLE `authenticacion_person` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `nombres` varchar(150) DEFAULT NULL,
  `apellidos` varchar(150) DEFAULT NULL,
  `identificacion` varchar(255) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL,
  `orcid` varchar(256) DEFAULT NULL,
  `url_orcid` varchar(256) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_person`
--

INSERT INTO `authenticacion_person` (`id`, `createdAt`, `updateAt`, `nombres`, `apellidos`, `identificacion`, `pais`, `orcid`, `url_orcid`, `status`, `user_id`) VALUES
(1, '2024-04-12', '2024-05-25', 'Administrador', 'Superr', '100100100', 'Colombia', '12345', '12345.com', 1, 1),
(2, '2025-02-07', '2025-02-07', 'Robert Damian', 'Quintero Laverde', '', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_resource`
--

CREATE TABLE `authenticacion_resource` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `path` varchar(256) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `method` varchar(256) NOT NULL,
  `icono` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_resource`
--

INSERT INTO `authenticacion_resource` (`id`, `createdAt`, `updateAt`, `path`, `id_padre`, `method`, `icono`, `link`, `titulo`, `status`) VALUES
(1, '2023-10-22', '2023-10-22', '/resources/', 0, 'post', 'pi pi-star', '/administrador/', 'Administrador', 1),
(2, '2023-10-22', '2023-10-22', '/resources/', 1, 'post', 'pi pi-star', 'administrador/recursos/ver', 'Recursos', 1),
(3, '2023-10-22', '2023-10-22', '/resourcesr/', 1, 'post', 'pi pi-star', '/administrador/recursos_roles/crear/', 'Asignar recursos', 1),
(4, '2023-10-22', '2023-10-22', '/roles/', 1, 'post', 'pi pi-star', '/administrador/roles/ver', 'Roles', 1),
(5, '2023-10-22', '2023-10-22', '/roles/user_roles/', 1, 'post', 'pi pi-star', '/administrador/user_roles/ver/', 'Asignar rol', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_resourcerol`
--

CREATE TABLE `authenticacion_resourcerol` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `resource_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_resourcerol`
--

INSERT INTO `authenticacion_resourcerol` (`id`, `createdAt`, `updateAt`, `status`, `resource_id`, `role_id`) VALUES
(1, '2023-10-22', '2023-10-22', 1, 1, 4),
(2, '2023-10-22', '2023-10-22', 1, 2, 4),
(3, '2023-10-22', '2023-10-22', 1, 3, 4),
(4, '2023-10-22', '2023-10-22', 1, 4, 4),
(5, '2023-10-22', '2023-10-22', 1, 5, 4),
(6, '2023-10-23', '2023-10-23', 1, 1, 1),
(7, '2023-11-15', '2023-11-15', 1, 2, 1),
(8, '2023-11-15', '2023-11-15', 1, 3, 1),
(9, '2023-11-15', '2023-11-15', 1, 4, 1),
(10, '2023-11-15', '2023-11-15', 1, 5, 1),
(11, '2024-05-25', '2024-05-25', 1, 4, 2),
(12, '2024-05-25', '2024-05-25', 1, 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_rol`
--

CREATE TABLE `authenticacion_rol` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_rol`
--

INSERT INTO `authenticacion_rol` (`id`, `createdAt`, `updateAt`, `name`, `status`) VALUES
(1, '2023-10-21', '2023-11-15', 'Super usuario', 1),
(2, '2023-10-21', '2023-11-15', 'Administrador', 1),
(3, '2023-10-21', '2023-11-15', 'Sub administrador', 1),
(4, '2023-10-21', '2023-11-15', 'Docente', 1),
(5, '2023-10-24', '2023-11-15', 'Estudiante', 1),
(6, '2023-10-24', '2023-11-15', 'Graduado', 0),
(7, '2023-10-24', '2023-11-15', 'Administrador Jefe', 0),
(8, '2023-11-15', '2023-11-15', 'prueba', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_userrol`
--

CREATE TABLE `authenticacion_userrol` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `rolesId_id` bigint(20) NOT NULL,
  `userId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_userrol`
--

INSERT INTO `authenticacion_userrol` (`id`, `createdAt`, `updateAt`, `status`, `rolesId_id`, `userId_id`) VALUES
(14, '2023-10-22', '2023-11-20', 0, 4, 1),
(15, '2023-10-22', '2023-11-20', 0, 3, 1),
(16, '2023-10-22', '2023-11-20', 0, 2, 1),
(17, '2023-10-22', '2023-10-22', 1, 1, 1),
(20, '2023-10-23', '2023-11-15', 0, 3, 6),
(21, '2023-10-23', '2023-11-15', 0, 3, 7),
(22, '2023-10-23', '2023-11-15', 0, 4, 7),
(23, '2023-10-24', '2023-11-15', 0, 3, 8),
(24, '2023-11-15', '2023-11-20', 0, 5, 1),
(25, '2023-11-20', '2023-11-20', 0, 1, 7),
(26, '2024-04-04', '2024-04-04', 1, 1, 2),
(27, '2024-04-04', '2024-04-04', 1, 2, 2),
(28, '2024-04-13', '2024-04-13', 0, 3, 9),
(29, '2024-04-13', '2024-04-13', 1, 5, 10),
(30, '2024-04-13', '2024-04-13', 0, 1, 9),
(31, '2024-04-13', '2024-04-13', 0, 2, 9),
(33, '2024-04-13', '2024-04-13', 0, 4, 9),
(34, '2024-04-13', '2024-04-13', 0, 5, 9),
(44, '2025-02-07', '2025-02-07', 1, 3, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Token', 6, 'add_token'),
(22, 'Can change Token', 6, 'change_token'),
(23, 'Can delete Token', 6, 'delete_token'),
(24, 'Can view Token', 6, 'view_token'),
(25, 'Can add token', 7, 'add_tokenproxy'),
(26, 'Can change token', 7, 'change_tokenproxy'),
(27, 'Can delete token', 7, 'delete_tokenproxy'),
(28, 'Can view token', 7, 'view_tokenproxy'),
(29, 'Can add Password Reset Token', 8, 'add_resetpasswordtoken'),
(30, 'Can change Password Reset Token', 8, 'change_resetpasswordtoken'),
(31, 'Can delete Password Reset Token', 8, 'delete_resetpasswordtoken'),
(32, 'Can view Password Reset Token', 8, 'view_resetpasswordtoken'),
(33, 'Can add user', 9, 'add_customuser'),
(34, 'Can change user', 9, 'change_customuser'),
(35, 'Can delete user', 9, 'delete_customuser'),
(36, 'Can view user', 9, 'view_customuser'),
(37, 'Can add Document Type', 10, 'add_documenttype'),
(38, 'Can change Document Type', 10, 'change_documenttype'),
(39, 'Can delete Document Type', 10, 'delete_documenttype'),
(40, 'Can view Document Type', 10, 'view_documenttype'),
(41, 'Can add Genders', 11, 'add_gender'),
(42, 'Can change Genders', 11, 'change_gender'),
(43, 'Can delete Genders', 11, 'delete_gender'),
(44, 'Can view Genders', 11, 'view_gender'),
(45, 'Can add nivel formacion', 12, 'add_nivelformacion'),
(46, 'Can change nivel formacion', 12, 'change_nivelformacion'),
(47, 'Can delete nivel formacion', 12, 'delete_nivelformacion'),
(48, 'Can view nivel formacion', 12, 'view_nivelformacion'),
(49, 'Can add Resources', 13, 'add_resource'),
(50, 'Can change Resources', 13, 'change_resource'),
(51, 'Can delete Resources', 13, 'delete_resource'),
(52, 'Can view Resources', 13, 'view_resource'),
(53, 'Can add Resources_rols', 14, 'add_resourcerol'),
(54, 'Can change Resources_rols', 14, 'change_resourcerol'),
(55, 'Can delete Resources_rols', 14, 'delete_resourcerol'),
(56, 'Can view Resources_rols', 14, 'view_resourcerol'),
(57, 'Can add Rols', 15, 'add_rol'),
(58, 'Can change Rols', 15, 'change_rol'),
(59, 'Can delete Rols', 15, 'delete_rol'),
(60, 'Can view Rols', 15, 'view_rol'),
(61, 'Can add User_rols', 16, 'add_userrol'),
(62, 'Can change User_rols', 16, 'change_userrol'),
(63, 'Can delete User_rols', 16, 'delete_userrol'),
(64, 'Can view User_rols', 16, 'view_userrol'),
(65, 'Can add formacion', 17, 'add_formacion'),
(66, 'Can change formacion', 17, 'change_formacion'),
(67, 'Can delete formacion', 17, 'delete_formacion'),
(68, 'Can view formacion', 17, 'view_formacion'),
(69, 'Can add Persons', 18, 'add_person'),
(70, 'Can change Persons', 18, 'change_person'),
(71, 'Can delete Persons', 18, 'delete_person'),
(72, 'Can view Persons', 18, 'view_person'),
(73, 'Can add Anexo', 19, 'add_anexo'),
(74, 'Can change Anexo', 19, 'change_anexo'),
(75, 'Can delete Anexo', 19, 'delete_anexo'),
(76, 'Can view Anexo', 19, 'view_anexo'),
(77, 'Can add Pqrs', 20, 'add_pqrs'),
(78, 'Can change Pqrs', 20, 'change_pqrs'),
(79, 'Can delete Pqrs', 20, 'delete_pqrs'),
(80, 'Can view Pqrs', 20, 'view_pqrs'),
(81, 'Can add tipo pqrs', 21, 'add_tipopqrs'),
(82, 'Can change tipo pqrs', 21, 'change_tipopqrs'),
(83, 'Can delete tipo pqrs', 21, 'delete_tipopqrs'),
(84, 'Can view tipo pqrs', 21, 'view_tipopqrs'),
(85, 'Can add Respuesta', 22, 'add_respuesta'),
(86, 'Can change Respuesta', 22, 'change_respuesta'),
(87, 'Can delete Respuesta', 22, 'delete_respuesta'),
(88, 'Can view Respuesta', 22, 'view_respuesta'),
(89, 'Can add Asignacion', 23, 'add_asignacion'),
(90, 'Can change Asignacion', 23, 'change_asignacion'),
(91, 'Can delete Asignacion', 23, 'delete_asignacion'),
(92, 'Can view Asignacion', 23, 'view_asignacion'),
(93, 'Can add contenido solicitud', 24, 'add_contenidosolicitud'),
(94, 'Can change contenido solicitud', 24, 'change_contenidosolicitud'),
(95, 'Can delete contenido solicitud', 24, 'delete_contenidosolicitud'),
(96, 'Can view contenido solicitud', 24, 'view_contenidosolicitud'),
(97, 'Can add estado seguimiento', 25, 'add_estadoseguimiento'),
(98, 'Can change estado seguimiento', 25, 'change_estadoseguimiento'),
(99, 'Can delete estado seguimiento', 25, 'delete_estadoseguimiento'),
(100, 'Can view estado seguimiento', 25, 'view_estadoseguimiento'),
(101, 'Can add PasosSeguimiento', 26, 'add_pasosseguimiento'),
(102, 'Can change PasosSeguimiento', 26, 'change_pasosseguimiento'),
(103, 'Can delete PasosSeguimiento', 26, 'delete_pasosseguimiento'),
(104, 'Can view PasosSeguimiento', 26, 'view_pasosseguimiento'),
(105, 'Can add revista', 27, 'add_revista'),
(106, 'Can change revista', 27, 'change_revista'),
(107, 'Can delete revista', 27, 'delete_revista'),
(108, 'Can view revista', 27, 'view_revista'),
(109, 'Can add Solicitud', 28, 'add_solicitud'),
(110, 'Can change Solicitud', 28, 'change_solicitud'),
(111, 'Can delete Solicitud', 28, 'delete_solicitud'),
(112, 'Can view Solicitud', 28, 'view_solicitud'),
(113, 'Can add seguimiento', 29, 'add_seguimiento'),
(114, 'Can change seguimiento', 29, 'change_seguimiento'),
(115, 'Can delete seguimiento', 29, 'delete_seguimiento'),
(116, 'Can view seguimiento', 29, 'view_seguimiento'),
(117, 'Can add anexos', 30, 'add_anexos'),
(118, 'Can change anexos', 30, 'change_anexos'),
(119, 'Can delete anexos', 30, 'delete_anexos'),
(120, 'Can view anexos', 30, 'view_anexos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-20 22:38:23.826289', '2', 'rastor@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 9, 1),
(2, '2023-10-21 17:20:33.682757', '1', 'Funcionario', 1, '[{\"added\": {}}]', 15, 1),
(3, '2023-10-21 17:20:38.987944', '2', 'Docente', 1, '[{\"added\": {}}]', 15, 1),
(4, '2023-10-21 17:20:43.941895', '3', 'Esudiante', 1, '[{\"added\": {}}]', 15, 1),
(5, '2023-10-21 17:21:06.219542', '4', 'Administrador', 1, '[{\"added\": {}}]', 15, 1),
(6, '2023-10-22 16:34:06.688970', '13', 'jsailethgarcia - Esudiante', 3, '', 16, 1),
(7, '2023-10-22 16:34:14.017434', '14', 'admin - Administrador', 1, '[{\"added\": {}}]', 16, 1),
(8, '2023-10-22 16:35:43.626388', '1', 'Administrador - None', 1, '[{\"added\": {}}]', 13, 1),
(9, '2023-10-22 16:36:25.894274', '2', 'Recursos - None', 1, '[{\"added\": {}}]', 13, 1),
(10, '2023-10-22 16:36:43.021902', '1', '/resources/ - Administrador', 1, '[{\"added\": {}}]', 14, 1),
(11, '2023-10-22 16:36:50.054041', '2', '/resources/ - Administrador', 1, '[{\"added\": {}}]', 14, 1),
(12, '2023-10-22 16:36:57.517623', '2', '/resources/ - Administrador', 2, '[{\"changed\": {\"fields\": [\"Resource\"]}}]', 14, 1),
(13, '2023-10-22 16:37:06.379632', '2', '/resources/ - Administrador', 2, '[]', 14, 1),
(14, '2023-10-22 16:37:12.162632', '2', '/resources/ - Administrador', 2, '[{\"changed\": {\"fields\": [\"Resource\"]}}]', 14, 1),
(15, '2023-10-22 16:41:37.982125', '3', '/resourcesr/ - Administrador', 1, '[{\"added\": {}}]', 14, 1),
(16, '2023-10-22 16:41:43.103556', '4', '/roles/ - Administrador', 1, '[{\"added\": {}}]', 14, 1),
(17, '2023-10-22 16:41:48.589590', '5', '/roles/user_roles/ - Administrador', 1, '[{\"added\": {}}]', 14, 1),
(18, '2023-10-22 23:01:00.311529', '17', 'admin - Funcionario', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(9, 'authenticacion', 'customuser'),
(10, 'authenticacion', 'documenttype'),
(17, 'authenticacion', 'formacion'),
(11, 'authenticacion', 'gender'),
(12, 'authenticacion', 'nivelformacion'),
(18, 'authenticacion', 'person'),
(13, 'authenticacion', 'resource'),
(14, 'authenticacion', 'resourcerol'),
(15, 'authenticacion', 'rol'),
(16, 'authenticacion', 'userrol'),
(6, 'authtoken', 'token'),
(7, 'authtoken', 'tokenproxy'),
(4, 'contenttypes', 'contenttype'),
(8, 'django_rest_passwordreset', 'resetpasswordtoken'),
(19, 'pqrs', 'anexo'),
(23, 'pqrs', 'asignacion'),
(20, 'pqrs', 'pqrs'),
(22, 'pqrs', 'respuesta'),
(21, 'pqrs', 'tipopqrs'),
(5, 'sessions', 'session'),
(30, 'solicitudes', 'anexos'),
(24, 'solicitudes', 'contenidosolicitud'),
(25, 'solicitudes', 'estadoseguimiento'),
(26, 'solicitudes', 'pasosseguimiento'),
(27, 'solicitudes', 'revista'),
(29, 'solicitudes', 'seguimiento'),
(28, 'solicitudes', 'solicitud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-19 11:17:07.155874'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-10-19 11:17:07.283043'),
(3, 'auth', '0001_initial', '2023-10-19 11:17:07.689691'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-10-19 11:17:07.764214'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-10-19 11:17:07.773613'),
(6, 'auth', '0004_alter_user_username_opts', '2023-10-19 11:17:07.780654'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-10-19 11:17:07.791446'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-10-19 11:17:07.794664'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-10-19 11:17:07.805178'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-10-19 11:17:07.812944'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-10-19 11:17:07.823020'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-10-19 11:17:07.847683'),
(13, 'auth', '0011_update_proxy_permissions', '2023-10-19 11:17:07.858887'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-10-19 11:17:07.867542'),
(15, 'authenticacion', '0001_initial', '2023-10-19 11:17:09.022974'),
(16, 'admin', '0001_initial', '2023-10-19 11:17:09.233956'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-10-19 11:17:09.248965'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-19 11:17:09.266930'),
(19, 'authtoken', '0001_initial', '2023-10-19 11:17:09.367512'),
(20, 'authtoken', '0002_auto_20160226_1747', '2023-10-19 11:17:09.432707'),
(21, 'authtoken', '0003_tokenproxy', '2023-10-19 11:17:09.443951'),
(22, 'django_rest_passwordreset', '0001_initial', '2023-10-19 11:17:09.581985'),
(23, 'django_rest_passwordreset', '0002_pk_migration', '2023-10-19 11:17:11.327699'),
(24, 'django_rest_passwordreset', '0003_allow_blank_and_null_fields', '2023-10-19 11:17:11.401806'),
(25, 'pqrs', '0001_initial', '2023-10-19 11:17:12.593604'),
(26, 'sessions', '0001_initial', '2023-10-19 11:17:12.656646'),
(27, 'solicitudes', '0001_initial', '2023-10-19 11:17:13.316913');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_rest_passwordreset_resetpasswordtoken`
--

CREATE TABLE `django_rest_passwordreset_resetpasswordtoken` (
  `created_at` datetime(6) NOT NULL,
  `key` varchar(64) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `user_agent` varchar(256) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('00mcdapql9lkd4vrtjla4p2eifwq1xvd', '.eJxVjstygjAUht-FdXUg3EJ3BawTFGgdBGHDBAiScFGBFkun794w3dTFWZzzX77zLaT4Y6zSj4H0KS2EZwEIT_9vGc5r0i0Cvl6HdUuLoiET7smw3rSYNuaf_rA8NlR4qJZeUJASlECVMcSlKAM1A4oCoEH0EiqGoemaphuFYUhZKUMRQizJsk4gwFCHmirx0p6UnFutxgun8Ery5VTZNqc-ddBxRpJH0YC6g5pbSEP19RRajrHmJjEDY5M1hkhOZoPYheZt2PKZscUDbagsATfIZ9-uVdc-y641URy9itx792ZX8YN68oJ82lvOrdjWHIhmj1W1a5ssCQ5Nwo6iH22UmBVNzMw6nsMmjpzKtZPKWxhdOCcnp8TRO_UZf6o_dB283dKX7owCeQ538ereZ6sda9nlLRxGffB7YH86cH8Ufn4BKmeL1w:1tgct0:UurQCbNsCO_fD2dBVKv58UDiFHdJns7wFs1rrujthGE', '2025-02-21 23:56:10.713992'),
('05hawnqdc8qlgoqbblu5em7tffk483br', '.eJxVjstygjAUht-FdetACBC6U0QKJTBVi-DGCRAk3KQCo02n794w3dTFWZzzX77zLZ3INJanaaDXE8ulFwlIT_9vKclq2s0C6fth0bI8b-iNXOmwsFvCmtWf_rA8NpRkKOdekNMCFEBTCSKFrAItBRACZFKjQNA0dUPXDTM3TSUtVCQjRBRVNSgCBBlI1xRReqWF4JbP40VQRCX98srUyVjIPPeDu0rA3MHttlpmubpb93FkeeZCmOQUjE3amDKNV41bXVjWRq0YTiwRaCM4B_A-4-F-yXFlq8HuxshhIwvvPeBYw2t8D9eZ4lveZ-7UAujChG9LXJXtcX0GGNgydhKYHLASOEGTVEuYVGeO-aYOZkYX8WPsFeTwzsJKPGWzo_-5ur0pDoohHXVr7Ca_Ja8QFz3zyx1BtymoojqJEunnF6FIil0:1tgndD:5DgRM8zBe-KElG97xw93-3NfaREd53AcbbBEbJXIkOk', '2025-02-22 11:24:35.465259'),
('0yupna9wsvircfrz3ov8mquejuagtb4j', '.eJxVjkFzgjAQhf8L58oESFR6U6w2VKAqIHhxQhIkCKIgg9Lpf28cL_Wwh9333vf2R9mT9prt24bXe8GUd0VT3v7fEkKP_PQQyPncqKVgrOAdqXmjfpREFNOn_rK8EjLSZDLOzcQwUaonhBlkbOpMIxpLgcZgCkY6I5COABwhiEBiaAwNTUJBwilFHKVjplMJrXkqe7PBtZItD-TdzpIFFZ6wcdBjzRW4wac1ohYe4uM5Ci3bVKUJJPq1SAoT8Gha4LwStAxLOT2xZKAM4SPg-DHyZpPO7Q-9a3WCbOdAem9ufoTObGK4vgOWln1hi6MsxHfHd3TXX2dxH0DHPwAnx128DW5xTqGz2AnXX908P9afT4X9LrJTsl0JL5-bajbymgvrtM8lg5uqvdS7KCj8mgcFqr43k72Wfxl0DRbtoFF-_wDXrox8:1qufKI:pQOZm8tlP4_C7chvSqzmrHAhwRnyblz42Mu_UafWi1c', '2023-11-05 15:45:34.410887'),
('0zzsdsswooa5tdibyaspcme4xgeobi43', '.eJxVjstygjAUht-FdeskXNR0V6liqNBSFcWNkxsSCN6QQdPpuzdON3VxFuf8l-98W1vSXopt24jzVnLrxYLW0_8bJawS-7tAjsemV0vOlejIWTS9cU2kGv3pD8tjQ0GawsQFog7ycpsS7pAhsjkkkOcAcjcHA5sTlw2AO_BcD1AHcq-PCANUMOYJLx9ym5nSs8gNt3i-HAzlXnkLCxow-SFDvNQYxhI3eP_lMR_3cXVcp36IesYEqH1RVCEg1iOFy4NkdVqb0cQ3gTp174FokXmxZjBeJDCad5KsJsB4r3FZObFewmixvM788MSDygCxm-nK2bwlt2yVuHGAQWR8WZ2qaLFzo5LZmcZdpF_BZn5_KtWbdZiTVSI_ygnqTVWQB2V72H-iQ3LRN6I6NN3vRp09a2uV65PfopJ2wbscWz-_38iNkQ:1qtbfb:7_gXmnkj6G4vndZK-LCzSow2dHrBpeVenwC6ppXbK3g', '2023-11-02 17:39:11.591896'),
('16q2h2ee1n7gawwihzly25u2uggo0pbq', '.eJxVjclygkAURf-FdUI1k0J2img1JRhTTLqxekKaQVFwoFP59zSVTVy8xXvvnnO_lQO69cXh1rHrgVPlQ9GUt_83jEjFTuMDtW2nNpzSmj3QlXWq1yBez__-L8uroUBdIXHmYMOxch0jaiDb0amGNJoDjZo5mOoUmWQKzKllWgAbGrUmDiIAM0IsZuU21YmUXlkue4v3_ixbRuXgF3hF-Ib7MBZQCzns4OnLIi6cwKrNEtd3VBkCWO9rXDuAZfMalmdOmqSRI5ArgSYxRyCIyDMQsyEQ22fIHxylSyCzz1B4IlhAEUSevnb9C11VshA-wvI47NOwCEpaBaICm2jZbKKjsRMB2EnHXuYlN4RjxykR-8zPUbrlm3LpqPG9roS9tdNuF1_6vRc_jq13QLj6tNy0T1wvuy-MeLWubjPl5xeeuY41:1rvfZ6:v9v3eOg2f9GRWU6286Ysgcs8xOBK9H0ryuaJe_eddLQ', '2024-04-27 10:45:16.175567'),
('1ic96x3uvesgxqu30zq1jl6tgcjruk9h', '.eJxVjUlzgjAYhv8L55YJiyK9KSINNTBaxOXihCwSFje0YDr97w3TSz18h_d7l-db2-P7Ld_fG3bdC6q9aQbQXv4_M0xKduwdfD43ei0orViLr6zR_RqLavLnP4nnhRw3uaozh1omcR3DcB3LJYBm3AEm49h2TBdQADgZcJLZ2LGGxOB8lDFCDW5he2RThk01emVccfPX20lR-slHmGcBEbEI4UpCIxKwgcflgHhwCMvzJvVCV1chkJm3KqtcwDaTChYnQeq0Viexpwp1avcFlJAOyfEDyVIirxV4PQMq20XSl2gKZVSgdu6FFxqUPbBCCepQvax204MdFT6I1ssyDrY2WqdlnKysKIHdNhkPdj3jmMrdJuR4vRBx4bd8obtfhf-5-Ih3QQKmMkXD_P2wtQKDzvzNYI7Ph3A2uV_yh7lqtZ9f9SSN8A:1rvfhO:piCVlM1iP7yjwJ7FQV2BbOsvfLX3t6s3oYNaJXu_YBI', '2024-04-27 10:53:50.257295'),
('1ijimjpr19lcir1tfh17c3hy84enufp6', '.eJxVjktzgkAQhP8L54RaHqtubopKlrAQDAHhYu2LsAJqREsklf8eTC7xMIeZ7v56vrQNPZ_KzbmVx40S2pNmaA__b4zySu5uAj0cWr1RQtTyQo-y1RcNVfXsT79b7gklbcshLhGzECxMRoVFJ8gUBjVEAQxhF2BsCmrzMbDH0IaAWYaAI0Q5YJJzKGExESYfoEdZDL3l42k_tNyQV69kLleh8vB7j41A4RbvVpA7eISrwzpxPKQPJsDMU81qBOR6VuPtXvEmaYbpqTMEmsS-BUicwaCvrmSLQfh2UTRdgsHbBdvKCmPchXEEfcf7FG51KyyJG3V5HHWk_-iyvgIkJTBLiR3EmZWnCzuck2seV0b--1TS52uvoGmkwu0S6VS9ToXtx8vVznTmaThVhIzEwkcTMwGBiy_-fM6mL8_-eaJ9_wDW_Yrp:1quJ3t:_fSwUEEMxGNKv_Q9DJUy3o2uBp13dmnktsTl0uBEWg8', '2023-11-04 15:59:09.228652'),
('2mee1qyh1ol5cvpa86v8gc88blukcqqo', '.eJxVjslugzAURf-FdRuBmezuAqSRUQDREiBskAFTzJAQSESg6r_XqJtm8aQ33HvP-xZScr9V6X2kQ8oK4U0Awsv_XUbyhp7XA-n7cdOxomjpRAY6bnYdYa3xd38anhMqMlZrLihoCUqgygSSUpSBmgFFARBRvYQKQpquaToqEJKyUoYihESSZZ1CQKAONVXioQMtObd6vV04hUfS2a6yfc48ZuPjgiWX4RGfP9TcxBpu-jg0bbThIjEDtzZrkUhjo8X1heVd2PFaiMkNXaisBifIFy_YTk7diM48MRK9i1z7cBdHdazt7Nb-cjDta7FvOBA_vOCjSYK2SmofuAsWHes0n4Id79smsZrFtY6TY32pzso4h0sS2yWJfObV_Kk-3bqZIY_K4UA_ozip5gfUxnscG4TCcjCy3K-ja4wqcBF-fgEy8YuR:1tgg1j:pu_VKIdOAhj-PGqODM8zzIxHHN72hHEpDKQhUfyfkB0', '2025-02-22 03:17:23.981897'),
('2ztsiu0le0v9kj7l2rxzrd79twwsbcr6', '.eJxVjs1ygjAUhd-FdcuEn6h0hxRtGAljiyDdMCEJJUCUihal03dvmG7q4i7uPed8535rObmcq_zS81MumPakGdrD_1tBaMMPk0C6rtelYKzlAznxXvclEe3yT79b7gkV6SsV505hObA0C8IssnBMZhCDlcBgdgnmJiM2nQN7Dm0ICstgcOYQCgpOKeSwXDCTKuiJl6q3ejwfVcuEvAVVsaYiEgHajcjAAvXo8Aqph2ao6faJFzi6MoHCPLdF6wC-X7aoPgoqE6lmJJ4KyMSeAmGcQTw2t7B2h9AbBElXQHmvuG6sKEZXPLrDxgs-2bpRhQjiuBU4zm6h6cMw3gIc-0MmQwvLVRs9U4BH1mRpNoZv01PJ-L4PSpJuRVSvHL3LUplHdZJC199u-I6N1CRlyl6qtdt_MOh_7dERLAcxQ9rPLx60jOs:1quIzs:oU30mvM2NKiNBjf4gaCNmv_rd1xlIzueUIAGOt3QM1w', '2023-11-04 15:55:00.858079'),
('324ufdjl36ywpul73in25r7zy9p3hna9', '.eJxVjkFzgjAQhf8L5-pAQiD0VrC1oQbGiqBemABBAkGs6Ih0-t8bp5d62MPue-97-62l7HKu0kvPT6kotGcNaE__bxnLG364C-x47KetKArJr-zE--lry4R0__SH5ZFQsb66c0HBS1ACBBlmpQ4ByoBpAuxwu8Sm41i2ZdlO4ThGVkKsY8wMCG2OAcM2tpChoCdeqt5qcu5Ui0Lym19l81yEwifrkRiBID05fKLcIxZpjpvY852pMukZOMtMOjrfuJLUncjbuFUzMk8F2ti8B2iUj-GsQXRGjHB1FSx505V3CEZqhtEehdEaLTz_q5g3qpDAIKEDHeM6mEkZRFTfzfbXbbRF27pqab3VaRK0NFmCcHV_Kh53G79kyVKEtXqqGrpJvsogMVwPI_CxProruKikW8tbfMH-eze88A5aaUu1n1-DXYmK:1tgcj9:LjPSjZQ0iq40ZgkN5Scw9ueiJAsJQcZUR3Ardb0GQOE', '2025-02-21 23:45:59.836827'),
('3hmdc96nf20eeitlnu8gge8f76v283za', '.eJxVjktzgjAUhf8L6-pAeCVdguKENjAo8towAcIQHkpBa0un_72x3dTFXdx7zvnO_ZJyer00-XVmU84r6VkC0tP_W0HLjp3uAh3HeT3wqurZjU5sXm8HynvrT39YHgkNnZs7F1SsBjXQVQppLatAL4CmAYiYWUMNIcM0DBNVCClFrUIZQqqoqskgoNCEhq4I6MRq0dusLmfRIpDs022KXcl97uLjghWP4xmf9nppYwN3YxLZLloLk1yAS1_0SGaJ1eP2zMshGsQs1BaBIdLuARKWi7_pdG_pFu9w4zR2ZOH98Bai-WGnei1RXm33rdp1ohADL8YgCzFIwVEhYSqT0OF-mKpe7HSkjYastToyBB_p71PRkiVuTeOA-614CtvFzoHmPLnvKSLGGW0O-n4V5kH-Yuoo2s55YNVZMh6Ko_T9A4ToiQg:1tgeix:n8_14QxCRZUqeAw6onVZCnTTHhnZJZ17afZbtCFz_C0', '2025-02-22 01:53:55.241230'),
('3moiam9yfoemq11gj8h2au2qaf64fn2o', '.eJxVjs1ygjAUhd-FdXUg_CXdKSiGMTAqFWHDBAgSBLWiRej03Rumm7q4i3vPOd-531JCH_cyebTslvBcepeA9Pb_ltLsxM6jQK_XdtrwPK9ZR2-snS4ayuv5n_6yvBJK2pYjF-SsAAXQVQppIatAT4GmAYiYWUANIcM0DBPlCClpoUIZQqqoqskgoNCEhq4I6I0Vorec3C-iRSBZ75apk3Gfu_hjwIrHcYvPWz2zsIFP18PectFUmOQU3Ou0RjI7zGtcXXjW7BsxA7VEoNlrY4AE2eAHs44Ex570HafhUhbepzcQndizpxfgYW25n7lzEoW4J3ak-0EGiL2Qo-Eox07Mo2pbxmF8ikKieOGyisBG8XfjU_shPrgFDTfcr8RTgdF1vfdlO4eVHZybyZGQx9q3Jko8TFYXlc2RoUQ79EzmrfTzC-SEick:1tgfjf:J2PKrDQVCU3sbvZD2bBOgYI9KKDgNRah2pdFP72iPt4', '2025-02-22 02:58:43.746489'),
('3vgw8lyla286y9e8pvd4w2ntqemxmk9q', '.eJxVjktzgjAUhf8L69aBhEfoUqxOaANjB1HYMAESEx5qxUdJp_-9Ybqpi7u495zznfttFPR6EcV1YOdC1saLAYyn_7eSVi07TAI9nYZZL-u6Y3d6ZsPstaeym__pD8sjQdBBTFxQMw44cCBFlJsQOCWwbYB85nFk-77rua7n175vlRwiEyFqQegxBCjykOtYGnpmXPeK58tRt2gkG0NRrioZyxBvFLYiiQd8-HCqALu4Pe3SIPRn2mSW4NKVnW-y3bzDzVFWfdrrUTTQgT61pwBJKhUvWocsMIzGu6Tbpam9X5EidpzsnTip4HsQftarVhdi7YtE3sy7fNGOeUNM0lROvCIwTzKVqY0dJaLL-lSQcXoqVfku5HS7lnGjnyJZ9BYeyHpZbveqviHVj8LjHZ7f7rjAOGK2ui5v7ebZQ8bPL88tiwM:1tgcjR:gKdE_ppmBDEyfPw7PQ-raSrJHG2UZ9GCuv1Jhgrz7KA', '2025-02-21 23:46:17.747337'),
('3x3p4vz8dd0k0ggxjclq8zg8ost3ez3o', '.eJxVjktzgjAUhf8L69ZJgKh0V3nYMCXUjoCyYUISmiBRKz6QTv97sd3UxV3ce875zv0yCno6yuLUikOhuPFkQOPh_62kbCO2N4Hu9-1IK84bcaEH0Y58TVUz-9PvlnuCpK0c4sIpLQdVZkm5RaeOySGFvAKQ2xWYmJzabALsCbIRKC3I0dihDJSCMSRQNeUmG6AHUQ298vG4G1puyGsoyzlTsQpx0mNIFG7x9h0xF4_xZr9K3dAZDSZQmsembBwgVrMG1zvFdKqH6ak7BHRq3wLRkl2Jx2zS-zByL4pmARi8HekxIP2HGXvJ5dUNP_l8cyvUeZZYcZbL2COK6ATky2drXftdVKf1OlsAMvcvuReo6PeptM9XYUWzhYrrwBlx-dJJD2dv8no-BN3UCqO9xZbF2SeoQLmu4cr1id5Byza-fwDXuov3:1sj1qk:cSg1fsFCLzsUpxSA0SpFmEAj0T6uM7ROAjFPMEY3zns', '2024-09-10 14:27:30.845992'),
('4749q2szwb4qkwwyozhvyih0a814j9s0', '.eJxVTk9vgjAU_y6cp4FCod1RUFYyaHSK4MUUKFKg6gTj1mXffTVe5uEl773f3x9jz65js78O_LIXlfFqAOPl_69gZcePd4Cdz8NUiqrq-Y1d-DCdSyb62QN_Op4dGjY0d19Q8RrUANoMsdq0ASyA4wCEuVcjB2PXc10PVxhbRW0jEyFm2bbHEWDIQy60tOmF1zq3mYwnnaIt-XfUFGEpqIjIRhErEWQgxxUsfeKS7pylfoSnmmQWYOyLHps8m_WkPYlSplKPYr4WyNS5C-J1qWjQwTiYA-rfBNsuTM39SlTs0PUB0iB33v3oswo7HUhArg5WvF3COFzCJJybuyC383bX0qCXegexylXcLtpHqVTtsqhm26WgrS7lHxTr0Cb1ymgisjCB9OONjxMpWU_KlKJVyFsuuq8JG4zfP0cQiZc:1tgchg:x58jZbsgTtgXQnE5zbUvIzjPV459WOHzzbFgzz0-wVs', '2025-02-21 23:44:28.581960'),
('4lszqymxhephhcxe3rmhrioddinuuw9x', '.eJxVjctygjAUht-FdcuEQFS6qwoMVGBsvRA2TEhCcwG14pVO370w3dTFWfznv3zfRkHOJ1GcW34sJDNeDMt4-v8rCdV8NxjkcGjNRjJW8ys58tb0GiLr6Z__IB4XBGlFX-duabuogiVhNpm4kFnEYhWwmFOBMWTEoWPgjJGDQGlbDI1cQkHJKUUcVRMGaT965FXPFc-nfU8ZJu-RKAMqUxmF6y60Ehm24e4d0Vk4CvUh28wi1-xDoISnuqxdwLNpHaq9pM2m6a8js77QbJyhEK8wSuevKOk0TD-ukmx90GdvidJOPNd2ojBazKIvFugBKHL13uSBd8fQl7nSAHdM4WZppfNPGHfawRCjfJWoeGDsNl2eRRXZLmWqfNcUwhGet-6O58nNRTnSC3xRODs1fr0qlnkU2DV4y0YpvbTGzy-6M4xD:1qv2m5:Sa7TqmmwI2OIUauenuBOr_CnhhkWyVRRxqoFVxPbzdQ', '2023-11-06 16:47:49.655351'),
('4m57i09sb7mk7o8zm8hd1yp8sodvvt0w', '.eJxVTstygjAU_RfWrRPCK-lStEyYBkZFUDdMgCDhoVSkIE7_vbHd1MVd3PO-KzHrr0Xcd_wSi0x5U6Dy8h9LWFrx04NgbdvNGpFlNR_YhXezZcNEPf_jn57nhIJ1xSMXZjyHOTQ0hlgONGgkUNchwtzKkY6xaZmmhTOM1STXEECIqZpmcQQZspBpqDL0wnPZW7xez7JFRvKbWyROKnzhku1EVE-QjpzWRmoTk1TtLrRdPJMikMBrndQY8N28JuVZpE3YyJuYLQ1NqD8MNEgnf1EZNFgBTwyCRe9AakdvorofVKPE4YftfmZOJQuJShfHgUZU30fL6eDsAV14tR8sx4PjlRSuBlpSjU5FTX9HhdNh5-YsWgm_lKMGKzpuB1b2pKdDBG7e6KO232Rrp7DczdpL6VcfB4SzYK98_wDIs4si:1tgd2I:bUpLHkwSgSftey52KH5pObpD9mkZwG_QC2MsiM0Y2bg', '2025-02-22 00:05:46.777119'),
('4n9swvy9plnsquey3t1liw15k4y4xvhx', '.eJxVTslygjAYfhfOrQNhS3qruEwYA7UiChcngWDCYinoKHT67o3tpR7-w__tX9qBXs7icOl5d5C59qIB7ek_xmhW8dOdoG3bTxqZ5zW_0o73k3lDZT394x-exwRBe3HPBTkvQAFsk0Ja6CawGbAsABF3C2gh5LiO46IcIYMVJtQhpIZpuhwCCl3o2IYK7XihesXz-UO1qEg--IItMxlKH29HbAQS9_j0bmcednDV7mPPRxMl0hk416xGOt9Pa1x-yKyJG3Uj9ZShia27gUTZGM4qm0QYBJurpLuFrrS3YCRWGFXXMEqMled_5stKFeJrUC5EGs2tpEwGspvrQbkew2VQk1kFSHS8KVwPIjIkv6PiMd37Bd2tZViqUV01NKVYLVBarhA5ijS4WeusOrJ-jDdN8jq7bN9Y2dpmTrTvH-2zi3U:1tgczN:3CR9R7lnmp0iFD_n9PWO5wQU_DJsMihycHNu6uhgWXg', '2025-02-22 00:02:45.214844'),
('4vnl4v8wu41karx7rilpcjdmkc8kkhc5', '.eJxVjs1ygjAUhd-FdXUgJJB0p2htaIGpIoobJkCQCFEr_tR0-u4N001d3MW955zv3G8jY5dznV06fspEaTwbwHj6f8tZ0fB9L7DjsRtKUZYtv7ET74ZTyUQ7_tMflkdCzbq654KSV6ACyGaYVaYNUA4gBJhwt8KQEMd1HJeUhFh5ZWMTY2bZtssxYNjFDrI09MQr3VsPzgfdopH87tf5rBCR8OlSUSsUtKP7OSo86tDmuE48nwy1yczBuc1bYvL1uKW7gyhkIvUo5umATGAfCOJCRZMGRvEWRIubYKsXU3u_QhX0NxTGKXr3_M9y1uhCilI1gkHcgEAlcjOjZigDlEqKollgp2prhfFUhXJphn3HPlGbtV-x1YeIdvqpYkvs-cSZYwgLky8meLD6yOryXt6TKz1cX90pbt03z4LdyPj5BUfziDw:1tgccr:XvRvidVYRT41YUwf2MgKUVabQXtnDkyWNsTGbZ7DkCI', '2025-02-21 23:39:29.992497'),
('5egd9fwk6ux2ybyam3hm274kuy5uf3th', '.eJxVjktzgkAQhP8L58Ta5aGSW8RHLclCqYjChdoXssiqEQxCKv89a3KJhznMdPfX82Vk5NoU2bUWl0xy48WAxtP_GyXsII53gZzP9UBJzivRkouoBzNFZDX50x-WR0JB6kLHhUst18lNSrhFxq7JIYE8B5DbORiZnNhsBOyRYzuAWpA7Q5cwQAVjjnDyMTeZhl5ErnuL5-akW-7Izi_ogslQ-mjTIxhIVKPjymEeGqLDeRd7vjvQJkDNpqKVC8RuUqHyJJmKlZ6eeDqgYvsewBG74X4Gccns0Gsl2c6B9t6CftbjaNMF07397vkffHG4F8pwgW7pQmvlvsXREiQl7hKFuzTa20G0gXjrl7hM-uT3qbhPd35OtksZlnN38BavcdCMsna6S5rcquS6OC7zs1odaZeGzlQ1s1ertZrPbW18_wBKTI4i:1rwDDk:gNI6RkbBuudMekhWaCToKCl3uJLu9riyqWrK_WMQuUA', '2024-04-28 22:41:28.174994'),
('5nulbk5d7gp75jch5xgj53ynu3fd4ybc', '.eJxVjstygjAUht-FdXVCuCVdApbCNFCUgrhhAoQhXEQFq6XTd2-YburiLM75L9_5ljJ6nersOrJLxkvpWYLS0_9bTouWHReBnk7juudl2bEbvbBxvekp78w__WF5bKjpWC-9sGQVrKCmUEQroEAth6oKEWZGhVSMdUPXDVxiLOeVggBCVFYUgyFIkYF0TRalF1YJbr2aBkERlezLq3On4AH33I_ZlX3uju5xqxWWq7vtaR9bHl4LE8jh1OUdBmxvdm4z8KKPezEztUSgj9UlQKJiDuxWI3YKg92N0-QFCO_dn4kaRO2NzKn2Znnn0mkF0J39xmx8GGpp1LXESYEPN0qahGqakLtvp4DYZktmcjssjGM8H_ZeRZOQB4146l1HzhXsDmblQDBaIBr5arMd7eGc5U3Jk6n_1NnwqsJVKP38Anr3iUE:1tgcpl:JbrJRXrAoPxisppOqPDCNUlinkVvernMYbX0YPE17X8', '2025-02-21 23:52:49.526594'),
('61xdmdhr64ngm6i76s29fcxw9a5hyl8m', '.eJxVjkt3gjAQhf8L69YD4ZV0p_gKbeBoEdANJ5BQwkNRtCo9_e8N7aYuZjFz7_3ufCkJvZyL5NLxUyKY8qIA5en_LaVZxfeDQNu2GzWCsZpf6Yl3o1lDRT350x-WR0JBu2LgAsZzkANTp5Dmqg7MFBgGgIjbOTQQsmzLshFDSEtzHaoQUk3XbQ4BhTa0TE1CTzyXvcXz-SBbJJLf3SJdZMIXLt70WPME7vB-bWYOtnDVxqHjopE0qSk412mNVB5PalweRNaEjZyeOjLQhMYQIEHW-9PKJMFK89-vgkZzVXpvXk8MP6huJNiYb457ZItqKBTbHl9JudLIYl15EVG9Kdb9YKyR4AP4U1Z6kVeRZqbtfp8K-13s5jRaCb-UTxUYHJdJ3KK5QHW3Som7ZS4wHS8afxr35aXtGoOBZqy-EuX7B4NLiU4:1tgd2V:JEwm_u3q66vj-FoEcjOI-ojdm53y10_dT409EIMB0_M', '2025-02-22 00:05:59.968175'),
('6jjeimr4gwcucxt1lmius2p5o686pckk', '.eJxVjkmTgjAQhf8L59FKgKiZo7hUKMGNQeVCZUMSiBuuTM1_H6i5jIc-dL_3vtffVkpv1zy9VfKSKmF9WtD6-H9jlBfy0Ar0dKq6RglRyge9yKo7NlSVwz_9bXkn5LTKm7jEzMEosxkVDh1gW0AKRQagcDPQtwV1eR-4feQiwBwoUA9TDpjkHEmUDYTNG-hFZk1v3rkem5YW-fJzNuVqrnzyVRMYKlKRwwpxj_RIcdrGno-7jQkw-1qyEgO5HZZEHxU3sWmmpl4TMLHbBoJoh8K6eAXRHoXqoehmAhrvM9SFM4_IM4wKe-b5ZzEt2sIiMeQRjvYw1H4Z6D0IIl_vzMqEZgcDHetgtHzNozFM1u1TcZ1s_YxulmquJ7i7IIOFc6KeuLPzXWOIRWcHqng5TWj6Ws8wtAsNvYdYr4n18wsVuoxX:1quIyC:1hwZ1tPNNXGriwZU71sxdo2EI9kAU8L68iKosvfSKdA', '2023-11-04 15:53:16.689738'),
('6la7oc4ngoh4s0fqm1a0tqr5nthxvan0', '.eJxVTstugkAU_RfW1cDAwEx3CpVCBIJBXhszwBCGh4BgrDT99w7ppi7u4tzz_BYu5D5Xl_tEbxdWCO8CEN7-_zKSN_S6EmQYpm3HiqKlD3Kj0_ajI6zd__Ev4DWhIlO15oKClqAEUCaIlKIMYAYUBSBMtRIpGKuaqmq4wFjKShmJCBFJljWKAEEaUqHEQ2-05L3VZu55C4-kT7vKzJx5zLbOiyW5zJqs6wnmuqVazRCHuo23XCRmYG6zFos03rdW3bO8Czt-C9G5oQuV1eAE-eIZDXQCR_T0ByPRQeTaL3dxFC9ovhzDV466PRZmwwutZwLcOo38xV3OohfsRI7bJDi1qZHWXnSGDvChY4aN81xHhUsa2yWJfObVfFT8GeogGWE1P0e1sINDPqqbTbK_Rz3MmkQ2j-Ywn-jOsHvh5xeC-ol8:1tgd0i:AogH4hBALIbmoASk7TXBVbyMyFM94HiHCh6-MvndwLw', '2025-02-22 00:04:08.751285'),
('6omzp0jrdcx8285vs0xz6506a50nbmuw', '.eJxVTstygjAU_RfWlQmPAOmuWnHCFKkVUdk4IQkmPHyAjJpO_71xuqmLO2fuPa_7bezIcBG7oefdTjLj1fCMl_-3gtCaHx4EOZ16s5WMNfxKOt6b05bIZvzHPy3PCYL0QtsZ8woLWDYqfNuGXlCWnAbcBxZFACGvLCCzLAcErguBU_qu4wWIBJRT5FEYUF-HdrzUvWJ0OeoWHcnvkShmVCYywiuFrbnEPT58QTrBHq5Pm2wSIVOLQGFfmqJBgG_GDa6OkrZZq0eRiTa0mfswxOkWzlUN9MB4eZVkHQKtvc2r2knShaPx9jGJzmxW60KstpVo8zYUsZqCOH0DGt0kjUHeLuytYiJP9yBZx3C-fDyVqXwTlWS9kEmVIxPaQ0ohB-HUFh08hCt1W5H38jg69GHS9MP1fN9fWLn4VLHx8wuRzowJ:1quPl5:5T5NmkRg6Uy6L18O3onLoRtqYz87PVIeJGWVhX_N6S0', '2023-11-04 23:08:11.573107'),
('6uqa515d5r30ixymb9qgnxp64ic901ek', '.eJxVjktzgjAQx78L55ZJgKD0VvAxYWqoVp4XZ0mChIe1oqPS6XcvTC_1sIfd_-O339oOLudyd-nkaaeE9qJh7en_LQdey8MowPHY6a0SopFXOMlOn7egGvdPf1geG0royiEundx0SGHkIEyYOobAgEWBsLAKNDEEWHyCrAmxCMpNLIjtAEe55JxIUkyFwYfSkywGbvl8_hwoY-XdL_MlV4HyadhTzBTt6GFDuEdtWh-TyPMdfTCh3Dg3eeMgmbgNrT4Vb6N2mB68IdBG1hhYbfltVdU42HLCvKuCeIEG743183uwDQmb1ejN87_Esh6BisVpz9r1LYuplRprxGajj-Ng5jZpFfZZzErWZmV6H5-K-izxC4jXKqgWjv7eFnv-sQ8Wl0CF2WGD--nGDsorHAzvtbZNcJMa5nQV11T7-QUCUoyt:1rvP0w:hzVT7jhsMwdmQj-xJlD2WqoERj038T0QY-9veiXlcnw', '2024-04-26 17:04:54.231493'),
('74150b8g6azqoup51m2b8pht76khejt2', '.eJxVjktzgjAUhf8L65YJj6h0p6AOtEB9gOKGCUmQ8BB5WDSd_veG6aYu7uLec8537rcUo1ufxbeOtjEj0pukSC__bwnCBb2MArpeO7lihJR0QC3t5GWFWLn405-WZ0KGukzEqZFoBkzVBBENzQyVKEghKVCInoKpSpCOp0CfQh2CRFMInBgIg4RiDClMZ0TFAtrSVPRmr30tWkbkw8mSNWY-c-yA24rH7M6-bCE27YldXI-h6RiyMIFE7cukNAA9Lko7rxmuwkoMR6YIVKE-Btw9vrv5eXB5MXjmwNBhBYT37vHlw7fm3Mvn4MN0GrIuRKEN3ByD6LDNfcsrPe6Ck7Xh0d4pokM0-PsCuutT6VuB4j3Gp0J-OjopOmyYn68MuY7PU5K9oxzvWrXZfNUEdSsaND3UfO4GbjfvP3fs3qTeTPr5BWbIjig:1rukSa:kcDGQ98qkoq3OMEK_C_JiA-NSsmVBZbsWtsAFqEbhyQ', '2024-04-24 21:46:44.868895'),
('77gj7ahatvxp55rlf9bb8alha4f1zk39', '.eJxVjklvgzAQhf8L5zYyZrN7S0iKjGIQFVtyiQwYYZYskAhC1f9eo16awxxm3pvvvW_lxB736vQYeH8ShfKhQOXt_y1jecPPi8Cu12HViaJo-ch6Pqx2HRPt5k9_WV4JFRuqhQsLXsISGhpDrAQaNDKo6xBhbpVIx9i0TNPCBcZqVmoIIMRUTbM4ggxZyDRUCe15KXOr9_tFpkgkf7pV5uTCFy6JZqJ6ggzk_GXkNjFJc01j28UraQIZvLdZiwFPNy2pLyLv4k7OzGz50MX68kDDfPa3jUHD4Onbo2DJJ5DeyZup7ofNREOi7233VjiNDCTasd4B2kUzDaPZ2xJwCBt4SILJqwPVq6XuRPohcWv6XErF8zF1S5YEwq9lKSsXgKZ6uT5HmDIVgvtt9PPb-_q8HQPHj3uXTbMY-_2eKj-_pR2KKw:1tgd20:EANYgEBR3raOHjBWhTOiZehxl1g-MoXBUCbr5VUpZ_g', '2025-02-22 00:05:28.724249'),
('7le3lyb4j6f25rcb5cf9g3yo9yjwc063', '.eJxVjktvgzAQhP8L5zYy5mV6SyChRjWoCZDHJTJghMEQCqRJqfrfa9RLc9jD7sx8s9_KmV7H8nwdWH_mufKiQOXp_y2lWc3aWaBdNywanueC3WjPhsW6oVys_vSH5ZFQ0qGcuTBnBSygoVFEC6BBI4W6DpHNrALptm1apmnZuW2raaEhgBBVNc1iCFJkIdNQJbRnhewtn8eLbJFI9uWXqZfxkPs4nrAacDzgdmtkDjZx3R0Sx7cX0gRSOIpU2IAdVgJXF541SSNnoo4MNIk-B0iUTaFbGySK1cC5cbrfAOm9BxPRw6i-kyoGb47_kXu1LMT3wD3CMFrqAdyWQUXAyY2lb1OFLjaIl4hj4wviHeFpNz-VTKeDX9D9Ow8r-VTcg09kFqV3ZcTNo1Y3eSLQshy3Y-i34666ge51KTZr_6L8_AJgp4mE:1tgd42:G6n1-EIe-PSuXr_VerZqj_CpJnN0JTlaWOMC9z-Qx3E', '2025-02-22 00:07:34.259218'),
('814p5upjuqypmanwdkalosj6ns54fiun', '.eJxVjclygkAURf-FdUI1Da2SXcQhTQmYFPOG6glpGtCIlpFU_j1Q2cTFW9x3h_OtFeR6qYprL86F5NqLZmhP_3-UMCW6ySCnU6-3kvNG3MhZ9Pq6JbJZ_vkP4nGhIn011oVNTRuVkBJukoUNuUEMXgKDWyWYQ04sNgfWHFkIUNPgaGYTBqhgDAlULjhk4-hZlCO3er4cR8o0eXcrumUykC6OBmz4Eve4-0DMwTOsTmnsuLY-hgCFl4Y2NhDpssH1UbI2bscbiDMW2tiaCl6YIX9Q9yBcQ1_eJEk2YMx--bUygxBbwSqDO8f95Fs1AZUP14Zfu22wdSsvjEA2KJjVGHmrDGThAeSrXOZJBP2J0cVDnrolSd5lUG9sXYl9Gvg5fCUl2UeJMdtlXeUosBw2QtGD69Vhit664pL02s8vdmaLWQ:1quKrS:L2rQNopwbyyccCctIkQ5OHGdXmUO1_-s6AgB5jI6sG0', '2023-11-04 17:54:26.237761'),
('82gp5zz8z1gmj0pyr7wfals5rs3bdgp2', '.eJxVjMsKwjAQRf8layl5jWlcCn5HmMxMSLCV0lhciP-u4sYuzz3c81QJt3tNW5c1NVYnZdThf8tIV7l9BS5LH-bGPMkDV-nDZcY2nX9-B_tCxV4_d4nZRSg2Izsco2WDhos27IsOltFT0D6AB52dYThGJJ2FCATKyJbU6w0tNjjL:1qv81S:PmUs81xQ9dJjX58wYn5-juSpSHsTD-oLIsyWFljD7Og', '2023-11-06 22:24:02.593889'),
('889ty8v3jr17dx8xdod6vhaacchbtosi', '.eJxVjstygjAUht-FdXVCuIXuFKwTpoGx5erGCRBKuCiC1ppO371huqmLszjnv3znWznQ66U-XCc2HnipPCtQefp_y2nRsuMs0GGYlj0vy47d6Mim5aanvFv_6Q_LY0NNp3ruhSWrYAUNjSJaAQ0aOdR1iGxmVUi3bdMyTcsubVvNKw0BhKiqaRZDkCILmYYqS0dWSW69uJwkRVayu1fn24IH3MORwKrP8YSPb0bhYBO3Qxo7nr2UJpDDS5d3NmDpusPNiRd93MsR1JGBPtbnAAkLEYQrQRqiEufGafICpPfLF8QgLrkTN7q9Ot653LYSiEWQZGDfb4TfbLQgxCBwMQy2OxG40d0PWzVrMMgE1sjMOMZin3oVTXY8aORTxg4U7oev76mLVqOf1PUaqmfj00wH7T0joPJFGRlXdVFGys8vf5uIvQ:1tgng2:HdWYA2tn0oXTmsp9EDdOUztc41ZIoRa494TDjNHk9V0', '2025-02-22 11:27:30.172416'),
('8v9hcjm36rp45vbtl3wdp7kcth6ai4b8', '.eJxVjktzgjAUhf8L69aB8Eq6q1Cd0CaoxefGCZCUAFErqEin_71x3NTFXdx7zvnO_TG27NQW21PDj1uZGy8GMJ7-31KWVXx3E9jh0AyUzPOaX9iRN4M3xWQ9vOsPyyOhYE1x44KcCyCAazPIhGkDNwWOAyDivoAOQp7veT7KEbJSYUMTQmbZts8hYNCHnmtp6JEL3Vs8t3vdopH8GhXpOJOxjPC8xxaVuMG7mZsF2MPVYbUIIjTQJjMFbZ3WyOSrYY3LvczUQunpWaADauHcAiTJ-jisXJLMr1ReJFuOTO3taE-cOKk6UmLwEUTf-bjShbjfhHObhGtAyqmtPSYBtFxr3yYZKZJ8AZqQjqiZuj-16DerSLDlVMalfuoMc7L8nEAKW3mKJ7vwVVRrqtIS7sW0C11SWGcKZVC8Q-P3D-O6ipM:1tgd3a:IeyqYSDSCfbzPRISLCfLde3WqiLGZfTmerUes6JD6SY', '2025-02-22 00:07:06.847476'),
('8vupw1h40rilwv8cxv82hdbfrabo6iki', '.eJxVTstygjAU_RfWLRMwCOkOEWkYgdHyUDdOSIKEh1LRqnT67w3TTV2cxT3P-63syfVS7q89P-8FU94UTXn5z-WE1vw4CqTrerUVjDX8Rs68V92WiGb2pz8dzw0l6UsZ5yifIKPQc8ImxEI604jGCqAxWABTZwRSE0DTgAbIJxozpohQkHNKDW4UFtOpLD3zQu6Wr5eTXBkrH36Ze1REwsfJgLVQ4B4f1wZ18BTX3SZ1fKRKE8j1S5M3CPDNrMHVSdA2bSUG4shAm8IxEMT0FsxtGFa2ETg3QbIFkN57ONiSP2jhUN-Wjv_JvFoOYhjo23sUN-WudUEYJyCKQyFRRpkLQy95RJ5fB3N3CB7jU-mw2_gFyVYiqhZIPVTWaqejRYbfPzq36jhabmdtkUy37frLddygtjzzuLRjelJ-fgGtnouN:1r3NyZ:UcKAXu06xukXMp6qE-F1bov0TFgsSzzQFmKgsYy-TIc', '2023-11-29 17:03:11.038133'),
('927kc7p3wtzbkqo521xonljt5p81dmk8', '.eJxVjctygjAUht-FdWVCICLdKfUSpuBgEYGNE5IgEaIoOCqdvnvDdFMXZ_Gf__J9a3ty68r9reXXvWDau2Zob_9_OaEVPw0GaZpWl4Kxmt_Jlbf6XBJRz_78F_G6UJK2VHXu5KaDCpgTZpKJA5lBDFYAg1kFsCEjFrWBZSMLgdw0GBo7hIKcU4o4KiYMUjV65YXilqPurCjD5NMr8yUVa-HhbY-NQOAWnzaIuniMqyaJXc_RVQjksKvz2gE8mdX4eBZUxlJdT1xVkLE1FPwoReuP-SOIpjBw74LsFkBlH8GxsvxoDoI-BZ-ud2HLSgEx8ne-kcqN9OH2HuxC5fvPVIYwO85ECkMY9NtnEB36bGCc4j5LvILsQrE-Lhx9WnkP-WVeb2i1qJLRBDL37HUhzex0WVe4a2IztZvDBa-22s8vfw6Lrg:1qv7Do:UE0UaVfrArsj74VUAh2PGczZkteMLmnAxg1HX11eP2Y', '2023-11-06 21:32:44.445861'),
('9pw0vhqzfwe6j3qt244xk28pudd0bn2b', '.eJxVTstygjAU_RfWrQPhlXRXUWlogakiQjdMgEQCRC1gVTr994bppi7u4p73t5KR81Bl5552GS-VJwUoD_-xnBQNPUwEOZ36meBl2dIL6Wg_WwrC2_kff_fcJ1Skr6ZcUFIGGDB1AglTdWDmwDAARNRm0EDIsi3LRiVCWs50qEJINF23KQQE2tAyNRnaUSZ7q8fhKFtkJL15Ve4WPOQe3o5YCzju8WFtFg62cHNKYsdDMylSczC0eYtUmsxbXB95IWIhbySONIjYmAx-VIzhojH9aDsGtwsnu5Uqtddg9I0waq5-7etvjvdZuo0sxCCMPJ7WEnfXdToWagoCHi4KELq-9AQicFPdF0vD30yj4vEj8RjZvfOwlqOGcfO64nvEGIkOJID8Kwk7O3l5vsQZ3ru9nhvWatcZteiVn18EJosD:1tgd3l:NBndXPBjqXg8qoeHtJEVG8Qu97q1W236EvncLOp0yfU', '2025-02-22 00:07:17.727264'),
('a9yuwhgvadjp389ikm6mgkpbbm6lqpoo', '.eJxVjktzgjAUhf8L69YJ4ZV0hyg0TIGhQ1HYOAGChIeo6GDT6X9vHDd1cRf3nnO-c3-UHb1emt11Yucdr5Q3BSov_28FLTt2uAv0eJwWA6-qns30zKbFeqC8Xz70p-WZ0NCpuXNhxWpYQ0OjiNZAg0YBdR0izKwa6RiblmlauMJYLWoNAYSoqmkWQ5AiC5mGKqFnVsve5vUyyhaJZN9-U3glj7hPvgRRQ04mcvg0SoeYpDtuU8fHC2kCBbz0RY8B2y570o68HNJBjqCODAypfg8ESSmixJ6DZD2HzszpxgXSewtFYAQre45WNvhw_FPldbKQqFkbg2AV9qEXdhmMQSY--yyxgfRLb3ALvLzJW3t-PJWKfOvXdBPzqJVPNWLuIK4yVJKx2mNjHl3h9jf3PWf63u6aso1PONdNe5kpv3-y4IpS:1tgfY4:Av_fgeThmAH5A1tRSX5HL94TuRh8GSgqkVsbMUahLBc', '2025-02-22 02:46:44.913682'),
('bhkxqpovai58qrwcsabg3jhrnec621fo', '.eJxVjktzgjAUhf8L6-pAeCXdCagDLaQq4mPjJBBKeCgFHJBO_3vDdFMXd3HvOec791u6kHuXXe4tay48kV4lIL38v1ESF-w6CaSu23nFk6RkPWlYO19WhJfWn_60PBMy0mYTFyQsBSnQVQJJKqtAp0DTAETMTKGGkGEahokShBSaqlCGkCiqajIICDShoSsC2rBU9Gaz7iZaBJI9vIyuY4655-5HVwm427rXrR7bruEW9TGyPTQXJpmCrqQlktnRKt38xuMqqsSMxBaBKtKmgB_GI3YK3Xc2Q7DrOTmsZOEdgtHXcFj0frhU3m3vK1kXUyEPwsXDPwR54HgFDhfyKXRFfqHgMOF-aPEgX1Wn0eKn3fRUNJ6PXkoOG45z8RQaqm6rjbi84dWONp-zPqs8hxbOYig9dW-dFa2mb8vt-qOVfn4B1DeKkw:1tgclf:dnq9liz4SGAz0fWFVWy6nlHock-_I1xakwWSMdQocO8', '2025-02-21 23:48:35.446099'),
('ccopt4ku39c518ob3gp941otlxvq9nla', '.eJxVjctygjAUht-FdeuEQFS6q3iZUAmtiqIbJzdKgHhDitLpuzdMN3VxFue_fd_WntbXbF9X8rJXwnqxbOvpv8YoL-ShM-jpVPW0EqKUDb3IqjfRVJWjP__heVzIaJWZuvSY46EUMiocOvSgsKktUmALNwUDKKjLB8AdIBcB5tgC9T3KAZOcI4nSoYDcjF5karjZ8_VoKN3kPcjYjKtIBThusU0UrvBhgbiP-7g4JWs_8HomBBi8lqz0gExGJc6Piuu1NtdS3xT02u0K4WqLSFvcwzy2yb1RdDMFJnsjeeFEK9zpztwPzmJWGCBGWx024Wxy2-ppTsYhCDeTJhpjSNoJDNsPm-hpuRtnJekYh3W7S4KUbj5UlE-9Xj-HZ5zX8bKZSU_X-TyKF5c3mHy-s4W__Hq943qwEg4k46318wv6W4xR:1quJ8r:53RIpG_IxXztf331n2GTji9Oprd3H-ju2QeHE9U5l1s', '2023-11-04 16:04:17.521450'),
('cewgp3or30s83mbdj1i60udohhwns679', '.eJxVTsl2gjAU_RfWrScBotJdRdGggLWKw8aTCQkSJ7RKevrvDaebuniL--74bW3J7Zpvb5W4bCW33ixovfz_UcL24tAQ5HSqWkpyXoo7uYiqNVBElr0__gk8J-Skyo1deNTxUGZTwh3S9WwOCeQZgNzNQMfmxGUd4HaQiwB1IEdtjzBABWNIoKzLbWZCLyIzvfnr9Whamsg6zOmQyUSGeKExjCWu8GGGmI_beH9apX7otYwIUPta0tIDYtUrcXGUTKXKnCa-MajUbQzRnD0i_V5HmsFI3iVZBsBoH7Ee6KiPddxf1BM_PPPh3hRiJ1YzFc0XaK2ZnfR3IC4iuC4GMFJpERu8KVi9LrhcfzajUr1ZhRlZfsikCLxWGpTFeDKGvfsuGI2nj2TjTkMcZLvER5crZXr-dZaqnaPR3vr5BT5XjUg:1rvfeW:ygf1-_B7CHh0goDt8NHLxApku-WoRVRvcPR7jCY19kw', '2024-04-27 10:50:52.446118'),
('cksldujuydzrsmfnjpt3jfvh3092nvfh', '.eJxVjkFzgjAQhf8L59aBQCDpEaxOmCKFAVQuToBQAkQQZFQ6_e8N00s97GH3vfe9_VZOdLpWp2lkw4kXypsClJf_t4zmDTsvAu37cSV4UbTsRgc2rt4F5a39pz8tz4SKjtXCBQUrQQmgThEtVR3ADBgGQJhZJTIwNi3TtHCBsZaVOlIRopquWwwBiixkQk1CB1bK3ur12skWiWQPt8q2Ofe5S-KZaDtORnIOYe4QkzT9IXFcvJImNQPXNmuxyg52S-qO5yIRcmbqyIBIjCXgRfnsrxvorQPNe9w43W9U6b3vZs_wo-bmRfH84biXYtsshXUabZp0LTNRbKSCqOmWPI4iBl4dCg8E2jHKYVp_weNjeSqZ04Nb0n3A_Vo-VQeW3Zm41ITdu8i9Tz4O4x2MsRlGwTDBru108nlxdb1Rfn4B0HmJ1Q:1tgcmH:XiIU5H5wIorn0XJKoN9kBMhoJToA1tMqhtPFJw0fgJk', '2025-02-21 23:49:13.091050'),
('d05hbm59m9ll5c5lkhggpbsdz7nv970v', '.eJxVjktzgjAUhf8L65YJj6h0KSoTxsDYBgQ3TkiCJIAvcFQ6_e8N001d3MW955zv3G9jT299tb914rqX3PgwLOPt_62grBbHUaDnc2e2kvNG3OlVdOaypbKZ_-kvyyuhol2l48IrHA-WdkG5Q2eezS1q8RJY3C3B1ObUZVPgTqELQeFYHE48ykAhGIMCljNuMw29ilL3Vu_9SbeMyGdYFQGTsQxRMiArkqhDx0_IfDRB9TlL_dAztQkUdt8UjQdENm-QOknWpq2egfo60KbuGMAkh9FQPzFJQOzfJd2ugPY-IlU7MUEPrDbu2g8vPKh1IXIxYU6uEhgv8kdElmCnkBUTPERBqCJyuGOCnnjBq-g5PpUOuyws6XYjY7XyTJXXPYSwltGCI7IJ10B-ZY7KDwz3zEl28Yx-3S5ZEHrM-PkFxLuL_g:1quIsa:6uLehSAlkH0gvnsY6M_Umkbr-gW-PvPn24HUt_3e1dI', '2023-11-04 15:47:28.428392'),
('dglzj7691167vf19k73x9fbvxo30be9m', '.eJxVTktzgjAQ_i-cWyYgEekNQZlgE6pVUC9OSEKJgC900HT63xuml3rYmd3vud_Gjt6u5e7WistOcuPNsIyX_1hOWSUOPUFPp9ZsJOe16OhFtOakobIe__FPx3NCSdtS24WXDzxY2DnlAzrybG5RixfA4k4BXJtTh7nAcaEDQT6wOBx6lIFcMAYFLEbcZjr0IgrdW75ej7qlj3zEZR4xmcgYrRSyiEQtOiwgC9AQVad1GsSeqUUgt691XntArMc12h8la9JGj6KBNjSp0xvwknU4nEOs_Dv-7CTNpkBr70T5HQmrB1GT-3sQn3lU9YU1UQuZRCsHL3m9yeZgky2qJNzK7R5DbBO9-wMSkQY_-qdStV3HBc3mMtlPPRNvVL08NyiZjT5icqXpZEWDjPlQyqibTeNsfrcrjFo3_DJ-fgEn1Yy0:1r55pn:YdXvV0tPfqWqQKuf0GQRw8cfekmeZOK4HoNLVYjeA40', '2023-12-04 10:05:11.476907'),
('dgrkmq29p0bhgibppotx3wat8aotbhfp', '.eJxVjs1ygjAUhd-FdetA-AvdVVALY2AsCMLGCZCUQKJWdLTp9N0bppu6uIt7zznfud_aHl8v3f46kvOetdqLBrSn_7caNwM5TAI-ncaZYG3LyQ2fyThbCMz4_E9_WB4JHR67iQtaQgEFtokhproJ7BpYFoAecSm0PM9xHcf1Ws8zampCHUJsmKZLIMDQhY5tKOiZUNXbPV-OqkUhyVfU1auGJSwKtzI0YhaO4eHdbvzQCYfTLvcjb6ZMeg0uvOaeTnZzHvZH1ohcqJHYVwGRW1MAZY1MgsGKg62N0hvDxVJX3nsskZVkHzrqh_vajz7b1TAV9qWshrKveCwXRiw2etUv7DLjHMnwhoKYo2J7RwDJOJ2eymW1iyguNizp1VPFWBl6SrvrmyEITl6DLikbsIZjkL3PMYVBkFzzSohlOmg_v_f8iso:1tgbFj:TT23yA4HBh5dcwdYux20yBp9uE7vlYwa59ZrTdv35r0', '2025-02-21 22:11:31.959562'),
('dl4bl2fhxg5jx8ss52bjwpd1jc2pyqls', '.eJxVjktzgkAQhP8L54RacFckNwE1UFmISlC8WPuiWGB9oSGSyn_PUrnEwxxmuvvr-Tb25HYt97dWXPaSGy-GZTz9v1HCanEYBHI6taaSnDeiIxfRmjNFZOP96Q_LI6EkbanjwqUjFxU2JXxEJq7NLWLxAlgcFsCxOYHMAdBBEAE6sjgau4QBKhhDAhUTbjMNvYhC95bP16NuGZD3qKQLJhMZhR99aMUybMPDCjE_HIf1aZv5kWtqE6D2taGNC8TWa8LqKJnKlJ6e-DqgMjgEcJqjJJiOkoB1WHaSbOZAe7_iqoY4YDAOpvc3PzrzRa0Lwy6vvBpXeYeDTO0WSxCnmcpT3GE77_EmB7ugLJOUq3g9PJX1u21UkM1SJtXcNZ10PnOCi_e5gPvxDbzy83T-DgEHSPJsNbY38pBO185ZrTrj5xetMYtN:1quxlK:X5B6lkiFJhqSq3WFVh-7iSlymjvlnkHKP4r_Nivza8Y', '2023-11-06 11:26:42.324643'),
('dnxnncw6m4m4subhx4zjc9vaum70wmyi', '.eJxVjctygjAUht-FdcsEBJXuKqhNNKAUUNk4uVGioFawSjp998bppi7O4j__5fs2tuTSlttLI85byY0XwzKe_v8oYXtxuBvkdGrMWnJeiSs5i8Yc10RWoz__QTwulKQpdV14tOe5hU0J75GhZ3OLWLwAFncKMLA5cdgAOAPXcQHtWdzte4QBKhhzhVsMuc306FkUmls-t0dNuU92qKRTJiOJYKqgFUrYwEPsMh_24f60znzkmToEqN1WtPKAWI8quDtKVme1PkV8Xagz517ACbth9drhHetwd5VkNQE6ewvVWOEAdmEA1dxHn3y610B4i5KNm09hhwMkQ3sJ8mQJooDZecBlnqRWNI3LKPhQ0Z1xyFS-RgVZLWW0m3hm87WYxRV9e7cr3oTz7XxEWhRP0HpOy94xnfkpmyxSrG4bbPz8AjfojOQ:1rvfNv:bdS2YAzSgHyG_1vvli2LfPDrwpEzU5At2AtyLwD-oOU', '2024-04-27 10:33:43.197940'),
('dvjnucctq0rkcmllp5082wc7ur16355u', '.eJxVjstygjAUht-FdcsEJCjdKSgTLDC1yG3jhCSUcFELqEin797QburiLM75L9_5kg740heHS8faA6fSi6RIT_9vGSYVO04CPp87ueGU1uyGW9bJ6wbzevWnPyyPDQXuChFnRjYzYK5mmM7wwlCpghWaA4VqOZirFGtkDrQ51CDIZgqFuoEJyBghkMF8QVUiSluWC27x3J8EZaq8O0VmE-5zB-1HpHgcdei4g8REOqrOcWg6hixMIFP7OqsNwOJVjcoTJ03YiBmxKQJNqE0BN0igN1Z3N1gr7v3GcbQBwjt4ZTXzA3Tzrf34ajqf1K4mYJmUu8pr3MEPksG1PoDXIJBEYSP8g2sno2-nZWotx_T3qXBMYyfH0Rv3y40h1xa1ltf-OdJV67rVuxbY5nBM43KIt-9B0puBsdUcxMmmkr5_AEo4jT0:1quImD:9z9hPA86q0ewaharQ6YRZNwj24Sdgl_4enNVjbJySAo', '2023-11-04 15:40:53.693648'),
('egeibgm42luqz3h67oxafdz0endyhb7h', '.eJxVjktzgkAQhP8L52jB8lpyFJFAhSUqgnChFlhgeSgBjEIq_z1L5RIPc5jp7q_nm4vxbSzj20D6mGbcKwe4l_-3BKc1uSwC7rph3dIsa8gd92RYGy2mzeZPf1qeCSUeyoULMpKDHMgihjjnRSAnQJIA1IiaQ0nTFFVRVC3TNCHJRchDiAVRVAkEGKpQkQUG7UnOesvVeGUtDEkmu0zMlLrUtk6zJSBqDdblIKe6pVh1d_Z1W1szE5-AsUkajSfnTWNVV5q2fstmxjoLtL60BBwvnd1tLSGveKDpTnGw45n3gWZHcr1CQJ4hvuv2Z2bWrNACkbfnQ6-YkelI0TblUbUrw-DQRK3BO3NThcFpQoFfOsflKX-OznaOgz11K_aUbPbd29Vz0OU0OPd2dSwyPTam7uMr7Cob-If4Swf6aK-yPffzC-Aaitw:1tgbZV:MyTvdN6WYZ2m3XTnBC9BBC3O0htJ9ZOf0FNa0-BpZ18', '2025-02-21 22:31:57.201992'),
('ehde4pxahqkr8fjhwjq33hhe3wr7gg99', '.eJxVjktzgjAUhf8L6-okPBS6q1RtmAZGRV4bJyRBwssHOmI6_e-N0y7q4i7uPed8535pO3K9lLtrz887wbRXDWov_285oTXvHgI5HvtxKxhr-I2ceT-et0Q0s1_9aXkmlKQvVZw7ueFYhZ4TZhDb0RkkkBUAMrMAU50Rk06BObVMC-QGZNbEIRTknFKLW4XNdKqgZ16o3nJ0OaiWB_LulfmSikB4aCsR9AXqUbe2qIsmqD4mkes5Y2UCuX5p8sYBPJk1qDoI2katGklcFWgj8xHAYWr5sr7jcCUD9yZIvADKO_hVbQQhGnCIzU_XO7FlrQoRzNqowvIN-hW64SoFqcxEGs7N4J0afru9pbFXpzr-eyqSWeIVJF6JoFo44xGRZbKp2nQDh5W-P61tP8Cxja8G_hhgM-_CUReK7CDNvfb9A_nhjHs:1quIqo:nhLwqXFABq9xIye6dTLR7dsf7pSTJtabfqexRsWtwxM', '2023-11-04 15:45:38.428411'),
('eigyv3t813fr8nam6i56zfpgzqp7k30j', '.eJxVjkt3gjAQhf8L69YDIUDSnYJ6ggV8IIobT4Ag4aEUsCg9_e-N7aYuZjFz7_3ufElHeu2y47VlzZEn0psEpJf_t4jGBTs_BFrX7ajiSVKynjasHU0rysvJn_60PBMy2mYPLkhYClKgqRTRVFaBFgEIAcLMSBHEWDd03cAJxkqUqkhGiCqqajAEKDKQrikC2rBU9Gav3UW0CCS721k0j7nHbbIdiOJy0pLzWotNopOi3gemjUfCJEegK6MSy2w_KUl-4XEVVGIGaopAFcBHwPHjwbMK6OYn2TF7TnczWXhv7uBAzz8B11_176b9kcyLRyH3_FnpWVkRVmse5lP5YI2H0A-KMCfQnW-BY42VEDgw_H0qGA57O6W7Ffdy8RT-bMppg7r7crywSHNcHkgNo7butGw-jWp70W17-7S5ba4X6fsHtuyK2A:1tgbq0:mb5BFTgAmItRfpkX6UT-Xwk118pn-jMzj34Mk8Nrb78', '2025-02-21 22:49:00.040453'),
('eqbxznf89gt6zrg2pynsz8k22069kwgn', '.eJxVTltvgjAU_i88b6YUhHZvA8GUCGROub2QAu0oFG9oVJb999XsZT6cnJzzXb-1kl7ObXkZ2akUjfamQe3l_6-idc92D4AeDuNsEE0j2ZWe2DjzBiqk84c_Hc8OLR3bhy9sGIcczg2KKAcGnFfQNCHCzObIxNiyLcvGDcZ6xQ0EEKK6YdgMQYpsZM11ZXpiXOW2r-e9SlGW7B601bIWsQjIdiJ6JMhIdut57RKL9IcscQM8UyRQwbOsJAYscyTp9qIekkHNRF0lGBLzIQg39RQvejOcyC38vAqa-kBxb9EUmvHm6x5vvNvKDY7NsleBRM_TRBapB_JNIKN0C4pl0MWLRIadVDu_5V2uh5Mvo_ujVDIVWcBp-iHiTpVaFNzgHqmZ79f3yHl3SsJKQRr3uPIOq9fe64XZGsM6q4H28wsDrYqv:1tgatT:l-0AkAtYE-m7h4k87i507fInlLITiMoOD0ulUrnHLS8', '2025-02-21 21:48:31.373609'),
('eud0nqutgo9wkj5tchmqakopo2smlvyf', '.eJxVjktzgjAUhf8L6-okGNB0V0FtqJjqKAgbJy-G8PCFDkqn_72x3dTFXdx7zvnO_bJ27HrJd9dGnXdaWq8WtF7-3zgTpdo_BHY8Nv1aS1mplp1V05_UTFfjP_1peSbkrMlNXGE-wE5mcyYHbIRtCRmUGYASZWBoS4bEEKChgxzAB1A6LmYCcCWEo5xsJG1hoGeVmd68dzmYlgfyHuR8JjTVAdl0BC40ach-5QiPuKQ8biMvwH1jAty-VLzCQG3HFSkOWtRRbaZjngnUEXoEwnXiUH8CqZ-01Gs1i6fAeG-LokTheoPC7g3NveAkZ6UpJDCJSZvWk1s6I4M0JiCMl_dkTVBaJLfEXnbhelpQP8rD36eiLt0GGYuXmhZT3HeVDxu6WNGb69ofBT5v4Fid4vf2QMs5jvNP0IuSPPDvvLG-fwBvfYs0:1qvIY9:08kugmh75ho8f5l3toQNcvjELAZE4ck3MuKYBt0Zn_A', '2023-11-07 09:38:29.016973'),
('f1xeulbulqel5oyfsa02qcupqagkr2ac', '.eJxVjslSg0AQht-Fs6Zg2AZvBhICCgiyhUtqgCEMWwhgkWD57g7lxRz60P0vX38zJ_Q1laevEQ8nkjMvDGCe_t9SlNW4WwXU9-OmJXne4BkNeNzsWkSa7Z_-sDw2lGgs116Q4wIUQOQRRAXLAzEFggCgguUCCooiyZIkK7micGnBQxZCxPG8jCFAUIaSyNHSAReUWz5PF0qhlfhulqmeEYeYRrAYnE2M0eg8MVMNyaj7OFRNZUNNbAqmJm0UFsfbxqguJGvDls6CVBpoQ2ENWH62OFotWn4w22QmKNqz1HuzF0tw_PpmVa_gXTWvuV5ToDHb2hlYuguOUUISbcc6WnY7Vvvm6Lt3e8kWe9mWjm4Be2V04ZLEZoEilzgVfSpiWV_qS8-LD8WoOx2xh4_0LPVvJgySuJ4-3QM4y54QXgPm5xflX4pp:1tgd3G:eqFY9gJjW6MCBlDdz3ja2Y7r9AlIMjVW69usLmYl7h8', '2025-02-22 00:06:46.415517'),
('f6cw8buv6a9773jugz1nb5gfpyqqnwmr', '.eJxVjktzgkAQhP8L50AtL5UcxUctFUATROBi7QtYYIUIRiCV_x6oXOJhDjPd_fV8Sxd07_LLvWW3C6fSq6RKL_9vGJGSXWcBNU2rCE5pxR7oxlplKxCv1n_60_JMyFGbT3FmYd0yUw0jqqOVpVEVqTQFKjVSsNQoMsgSGEvTMAHWVWouLEQAZoSYzExXVCMT9MbSqTeXu3pqmZGDk-M94T534GmEqsdhC6_vJrHhApZNFNqOpUwmgLWuwpUFWLSuYFFzIkIxzYjsKSBCYw64AendAmreWBoef3B03oHJ23vjdnCLWPeKTHuznU-6L-fC3N84RbKpqlgkeXx2gTuSPg52uVecgKtBM9kfdU_Eo_cxPxWOSeSk6HzkfrGzlIavQWxniRwcVjXoIz8b3DTEnWp0cnn4GuBHLWPBgnqRST-_IgGNAQ:1rsV2k:qnmDGfWWMeR_w3yOnRp7FVnxy6DHYNLWZ7hrK5SxZCc', '2024-04-18 16:54:46.428193'),
('f7mmkc9rxdwfhnzwkt44bbg14hs4ooel', '.eJxVTstygjAU_RfWlUmAqHSnoBSGx6gI4oYJSRjCQy1oQTr994bppi7O4p7n_ZZS_LgX6aNjbcqp9C5B6e0_l2FSscsk4NutkxtOac163LJO3jSY1-s__eV4bShwV4g40zNVR7mSYaripa5QiCHNAaRaDhYKxRpZAG2BNAQyFVI01zEBGSMEMZQvqUJEactysVvM7lexMlU-nSKzCA-4Yx9HG_rc7uzLHhHDntvV7RQZji4LE8iUe53VOmCndW2XV06aqBEYsSECTaRNAS8kvWeuYBASxec9x_EWCO_gjyvBH5FvJoprOJ_UqqbBxovPpWcmKAmJgA3OlqcEJhkC00N-WMHA8p5JuRn8w_RUNJ5PTo7jHQ_KrS4Pj8h1LmZnBEN3PKRh_xGrX9shnBUu3vPNEMCWNYfE3VmV9PMLkS6MDg:1r3H7y:luWRJ8nI2jLQ1nG6GIChBkr-XiuZ_3X85liUidSCCzg', '2023-11-29 09:44:26.632658'),
('fkqtsdd7o5afjn2h2wsdifs1sliunmnk', '.eJxVjctygjAUht-FdcsECCLdIagTpoHasaDZOCEJJVwUxQ6aTt-9Ybqpi7P4z3_5vo0D_bpWh69BXA6SGy-GZTz9_xWUNeI4GbTvB7OTnLdipBcxmMuOynbx5z-Ix4WKDpWuC79wfLe0C8odOvdtblGLl8DisASezSlkHoCeC11QOBZ3Zz5loBCMucIt59xmevQiSs2tnq8nTZkm73FVrJlMZYw-FLISiQZ0fHdZiGao6XdZGPumDoHCvrZF6wOxW7SoPknWZZ0-RUNd6DI4FfCW3bAK7lg1IJGjpPkK6OwtUUuFI6SSemO_hvGZrxsNRBapEUzU541EbCRRAHBOun2-AXhLGpzvxyTCKo0ClUyMY6bILi5pvpFpvfJNZu8R4SdIaP42kvq8dXqF3bvHPSXSFiwgUdibK0vJwPj5BUIzjQg:1rvfhe:gCuiBXX7FlFhwuQuQ9Ww2eCUHdF1D6lPFN5BRHFytuM', '2024-04-27 10:54:06.553710'),
('fxj2kjc656hbg2bzbi2uu8b8ycws6wia', '.eJxVjs1ygjAUhd-FdXUgBEi6U7BOGIHxD5SNEyCRAEErWpVO371huqmLu7j3nPOd-60d6O1aHm4duxxEob1rQHv7f8toXrN2EOj53I2lKIqG3emFdeOZpKKZ_ukvyyuhpF05cEHBOODAMimiXDeBlQEIAcLM4QhibDu27eACYyPjJtIRooZpOgwBihxkW4aCXhhXveXoelItCsmefpnNcxEJn2x7YoSCdKRdWblLbFKfd7Hr47Ey6Rm4NlmDdbabNqQ6iVzGUk1PXRWQMRwCwSbvI6-2Am__DMRd0ORDV95H2Acw2tT3oCfPhet_FvN6KKyCzRGk1UwPvdkzBFs93Bxh5AUwlXtjn-wfqVxVaRKKaD08Fffpzuc0WYqoUk9NJ5XEROazSejdGtiG65Z_RdVimY0e9aMd9XJUBXHP4UnXfn4B7LKK9w:1tgcp0:8fV0LvGZad6-UcdKpwY73zSmNNavr_Y7YsSirlRtWdg', '2025-02-21 23:52:02.184989'),
('g4d6klx5hn7vspxp0kyrrbz6urt56877', '.eJxVTktzgjAQ_i-cqwPhlfSmYG1ogWoRwQsTIEiAqBUZhE7_e8P0Ug87O7vf81tKSHcrk66l14Tl0rMEpKf_v5RkNT1NALlc2jlned7QnlxpO19xwprlH_5wPDqUpC0nX5DTAhRAVwkkhawCPQWaBiCiZgE1hAzTMEyUI6SkhQplCImiqiaFgEATGroiTK-0ELnl7HYWKcKSDk6ZrjPmMwfvRqx4DLf4tNUzCxu4vkSh5aC5IMkpuDVpg2QaLRtcnVnGQy5mJJYQ8FCbBG6Qjb5d666d3V3WM7J_kQX37o2u5gd179mr4d1yvvJ1LQKx6tvHu1e5g1u5sh_s5LhqeLx36oO9UOPqwMXW46Cs_M-pVDgeIqcg-w3zK1HKjz4WfNNxbRwCnmwZ3HaV5jbdMVoAHZfm7Pi2jIf8tb9l0s8vCZiLNQ:1tgcqS:nKdJd3ZyerREh8EwRrBKBw181vUFvuLs8mw5Bo5fD-c', '2025-02-21 23:53:32.337007'),
('gzjjs1bh22961e6bbaa2qsgm8rwu5a74', '.eJxVjctygjAUht-FdXUSIGq68z6hJVYroGyckIQSIGpFK6bTd2-cburiLP7zX75vZ8cu52J3aeRpp4Tz7EDn6f8vY7yS-7vBjsemq5UQtbyyk2y6U81UPfrzH8TjQsGawtYlzjyMcjdjwmMD7ArIoMgBFH4O-q5gPu8Dv498BDIPCtTDjINMco4kygfC5Xb0JHPLLTrng6XcJ29Bkc25WqiARIZAqkhD9ivEx6RHquMmHge4a0Mgc891VmMgN6OalAfFdaztGTa2BR3790K45i0tQ0TN1tD3q2LJDNhsS83UDU3lhSaEr-PgU8wrCyQmnfA2nSw9mpDbds1BmkRwq6OWutOWruOSuhFK9RKEd8Y-NukmyFmyVItyhruzg9D5oAMXOIcvHtJJ73z5Wke47C1XhdxEIvzAYvQ2rIZX5-cX8PCL5A:1s9pLz:g_7sxY64gdAUFlT5g675lOMyrlWWC3s3vbnw5YmbZ3E', '2024-06-05 12:02:15.603330'),
('h8jdqek7lw3dsz4et9pqv5z2vnflgaw8', '.eJxVjktzgjAUhf8L6-pAeCXdKVqatMFHFcUNEyBMwkMUdFA6_e-N001d3MW955zv3G8tZteLiK8db2OZaa8a0F7-3xKWlvz4ENjp1I1rmWUV71nLu_G8ZrKa_ulPyzNBsE48uCDjOciBbTLIct0EdgIsC0DE3RxaCDmu47goQ8hIchPqEDLDNF0OAYMudGxDQVueq14xujSqRSH5nYjET-VCErwdsBFI3OHj2k497ODytA89gsbKpCfgUiUV0vl-WuGikWkd1moG5qlAHVqPAN2kw2Iz6WlRGtTrJdu96cp7CwZq09nkHhTb_tMj58wvVSG-R8oXFevqsKNWMJvoFMxvUZH2dAjrxWwLDn6kU5-I4OvxVDgc9iRnu5VcFOopOJ8MZHnpm208Wr7f1jY4L1cbhqZnsRfRpiXxdMCJk3zIRvv5BeJIip4:1tgg1q:RkZbnW3J1-EhurpcGymeKfpn_sr6BVwoaw7DcQrthyA', '2025-02-22 03:17:30.844419'),
('hayoz00nom3twtowk2cum9inddrftmk5', '.eJxVjktvgzAQhP8L5yYC87J7a6CloAAKSYDmggwYYcyrgShA1f9eo1yawx52Z-ab_RESfBvL5DaQa0Jz4VUAwsv_W4ozRtpVwH0_bBua5zW54ysZtu8NpvXuoT8tz4QSD-XKBTkpQAFUGUNciDJQU6AoACKiF1BBSNM1TUc5QlJayFCEEEuyrBMIMNShpkoceiUF7y03Y8dbOJLMTplaGfWpY58XW_KoPdhtoGaGrdmsj0PDQVtuElMw1mmNRBLvarvqaNaEDZ8FGzzQhMoacE_Z4ptM9cy32T3eKY4-RO6dvMVV_BNbvMWe9obznVtsLSw9M2i8yKlc06ku1kH8WnLmRwF1q2x2KzZ7Vlj5ZkgfT4XLJXYKHB2oX_Gn1P3Qb1oYy4Chs0M_rXSaWk8LOks2qQVGQx7GoMqOXcKE3z8lUYti:1tgdhp:1ucZf5UrXjPCGf6VF2G1V-zQQw1bBTxqyiPk-hZLIZQ', '2025-02-22 00:48:41.957252'),
('hl13m970hf224pajftiiobdwzrs6xjsj', '.eJxVTstygjAU_RfWrQPhFboTUCepwMBQUDZOgETCQyxoqXT6743tpi7O4p7n_ZIO5HqpDteRDgdeSi8SkJ7-czkpGnq6C-R8HhcdL8uWTmSg42LVEd7af_rD8dhQkbG694KSMsCArhJImKwCPQeaBqBFTQY1yzJMwzCt0rKUnKlQhpAoqmpSCAg0oaEronSgTOxWz5derIhKesNVvil4wDF6m5HiczSiU6QXDjJQc94lDrYWwiTn4NLmrSXTnd2iuudFl3QCM3FEoEu0e8CLizlwGy2IG9l3Jk7StSy8n_7sCe6o-3Uobx38Xm4aMYgmb45qzy0-93PUZaknZ_FR2cfN5LkCs829OFSzDa6836eSOdthRtKQB7V4Su19uw63rF-y9cnVssE2bjheRk6yStcRND5KnOb-K66QJn3_ANwIig8:1tgce4:7l_Sag7FzlFSrjxBY0jyuKF4Af6VVFj9zux2MvafmGg', '2025-02-21 23:40:44.124978'),
('hs1f3sd8iy3kpp075bzhs0zdur10p2f4', '.eJxVjstWgzAQht-FtfZAuCXuWqAYlKCVAmXDCRBKCpRaqlQ8vrvhuLGLWcz8l2--pYx-XOrsY2DnjJfSgwSku_-3nBYNO84CPZ2GRcfLsmUjPbNh4XSUt6s__Wa5bajpUM-9oGQVqICuUkgrWQV6DjQNQMTMCmoIGaZhmKhESMkrFcoQUkVVTQYBhSY0dEWUnlkluPX9pRcUUcm-vDp3Cx5wD28nrBCOB3zc6IWFDdycksjy0EKY5Bxc2rxFMktWLT70vOiiTsxELRHoIm0O-GExBXaj-_Z-8q2R03gtC--VTL4WhM1IQn98trz30m0EEE-pTTixl0rgOkoaNnLq-uPugPXU3nQk3snksGqJ62jBzDhGU5p4FY1feXAQTwW7x8zZeHhJYrcj28CL3q7R6LysjSL-TJbNk9_TqET9ed9LP7-ea4ns:1tgcsM:4IJHsYrBUB5oIm1mFjs6M2iJBNv1SxHl4nqNohmjhe0', '2025-02-21 23:55:30.474835'),
('igxk9fxpb2ta6vyd6agm61an0w0mu4jt', '.eJxVjktzgjAUhf8L69YJj4h0iUWaqKAt8nDjhDyGCKgVrZBO_3vjdFMXd3HvOd8599vYkeul2l07ft5JZrwYpvH0_1YSWvPDXSCnUzdqJWMNv5Ez70ZBS2Tj_-kPy2NCRbpK49wrbQ8KqyTMJhPPYiYxmQAmcwRwLUYc6gLHhQ4EpW0yOPYIBSWnFHIoJsyiOvTMhe6tni9H3XKPHHBVhlTGEqONQmYkUYcO75BO0RjVpzydYm-kTaC0Lk3ZeIDnfoP2R0nbtNWjyFQDbercgWVC--W-tqJXZMYfN0myGdDePlLBECeFipMNXEzxJwtrXYhUoeqhSJZ2lAVQc6BoN33R4qZQaR0nrIrCbV0kRR8N96dStc2xINlaxvuZN9qZmNDg7Yaq-dXvslmTBjhTAIuFh-Z5JPJV-CX8Ve_O18bPL1BejWY:1rvQAx:XJ62vT9whbLjq8XXU8LGu47Skpl6rXp9WrsbD4tp2Bs', '2024-04-26 18:19:19.667776'),
('iqf74pncjx3oesc5e5bsn3jbia1k5yrr', '.eJxVjslygkAQht-Fc6SGTSQ3JWqGyFAxiODFmo0wLG5ohEnl3TNULvHQh-5_-fpb2-PbtdjfWn7ZC6Y9a4b29P9GMK34YRDw6dTqjWCs5nd84a0-b7CoZ3_6w_LYUOC2UHHuEctzcpNgZuGJZzIDGywHBrNz4JoM29QFtuvYDiCWwZyxhykgnFKHO_mEmVSVXniuuMXoelSUobIPCrKkIhIB3EhoIAFbeFg71IdjWJ3SxA88XZkAMa81qT3A01kNy6OgTdKokdhXgSaxh0AYZw6SVY_KzIr8u8DbBVDeDpWVFcXQDCW1V35wZstqABa77cYKTdij5fyOJAThy6cdxUjsmkCgOBGZnHeh4kQfw1OJ3KVBjrfvIioXnr4ef_UdDEaHavoK67RzsbSSFJ3JKZgm_I333SLzVsIEvNJ-fgHzuozT:1quKDK:2J1m89uLRqPBJW92jnl2g-IEb6SeuS2U0dn2Il_HEGk', '2023-11-04 17:12:58.691214'),
('j0fxysn0caqwfow5y5v3m7qkjjuu6oqx', '.eJxVjU1TgzAURf8La8uEj5TirgVaYQSsIi3dMCEJEkIoQr_E8b8bxo1dvMV79517vpUcnU9Vfh5onzOiPCqa8vD_ViDMaTsFqOsGVTBCGnpFPR1UTyDWrP7yu-W-oUJDJXFqF4YNS71AxEALWyca0kgJNGKWwNIJMrEFTAuaEBSGRuDcRhgUFGNIYbkgOpalPS2lt5qdjtIyVX4FVbHBLGaB_z76WsT8wW9fIXb8uc-7feoEtiqfQKGfmqKxAd2vGr8-MixSIWdEjgREak5AmGQwdpe3MPFvkXNlaLcG8vcW1dwMXe8aJx54doJPsuGTkMcJEbH7IZmmCd0MZPWBZSISofD0bLc1Y5fDSA94NDnadDzsgxLttiyu17a6NsqVfjg-bbp26Gvj0hkONzWHv1ULL7xk4UvdWDmd2WxcKj-_lW2LYA:1qugCo:e02IFVncfCbyOyZaa6nmR0U3h_du9r2j4TkBlNBlQGo', '2023-11-05 16:41:54.570526'),
('j3xw01xugmsr9dmq8o7lngkoxtrdj7os', '.eJxVUMlygkAQ_RfOkRoGUMlNiZKhAlSiYbtQsxEGBjWiEUjl3zNULvHQh9dv6-pvrcDXS1VcO34uBNMeNUN7-L8jmDb8MBH4dOr0VjAm-Q2feadvWizk-o-_A_cJFe4qZecOMR27hAQzEy8dyAxssBIYzCrBAjJs0QWwFrZlA2IazJ47mALCKbW5XS4ZpCr0zEvVW80uR9UyRQ5-RTwqIuGj9xEZoUAdOrzZ1EVz1JzS2PUdXYkAgRdJpAN4upaoPgraxq2aEbvK0MbWZAj2tA9qBKP9agh2N4GTLVDaPhw3Q1BnVjii_sX1P5nXqEIEwiQz8_3KzOq4yqDCUHk9dIuSXGZ13gRPH0bgxTIbpqPiMU_9EievIqq3jl6QoSKz7S5CX8Q2N8-uh_KVehYfWfpFryZkoVz1aevgpfbzC9bLjEo:1rsVJR:hUS0q3fOjHJ95IcXUVlx8ks0hO338AzXSEEqPpDqWZg', '2024-04-18 17:12:01.933713'),
('jqum3mngzr7d0tqfnrydxbz68a05a6jj', '.eJxVjctygjAUht-FdcskSES6q4BMmAJjiyBsmJAECRdB0BHp9N0L001dnMV__sv3LaXkdi3S28D7VDDpTYLSy_9fRmjFz4tBum6QG8FYze-k54NsNUTU2z__STwvFGQo5jrXs5WOciUjbEU2usIggSwHkKk50BRGVKoBVUMqAtkKMrTWCQUZpxRxlG-YQufRnuczt3i9tjNlmXw4RWZT4QsHHyYMPYEHfP5E1MBrXHXH0HB0eQ6BTLnWWa0DftzWuGwFbcJmvokYc6EJ1aXgBjHyTWt0gxNyxV2QaAfm7OiVleoG1ugF1ePDcC7Mrhag8O1QeBFWkhJDdzoBt0yauHQn33Qq33aaODiMvunV_sI4h1NydHIS7YVf7nQZ1PQ0dWDf41Q3QeeEsfXIIYJfdWV9vSeHqNKMS9h6G9JKP7_x7Yxf:1qv6Oe:cH7ChiDbbKOUhOdPhXNwc89L4PH5_KHxg-83B6uwxU0', '2023-11-06 20:39:52.086093'),
('kc5bsnz1vfuvuqw4asm1fceeaqoimjfg', '.eJxVTslugkAYfhfOLRmQEelNNjNUoCgF4WJmIwybVmxUmr57x3iph__wf_uPssff53r_PfLTXjDlTdGUl_8YwbTlw53Ax-Oo9oKxjl_wiY-q12PR2Q_-6XlOqPFYSzu3yMyClU4wm-GFpTMNa6wCGjMqYOoMG9QEhgkNCMhMY3BuYQoIpxRyWC2YTmXoiVeyt349H2TLPfIW1GRFRSwC9DkhLRJoRMMGUgfNUXvcZU5gqVIEiH7uSGcBvrM71BwE7bNe3oQdaegz424I0wLG7vIaui0ItxeBcx9I7TVqWiN0vUvUJNe1E3yxVSsLEQwbCkrXbovUA1HugWLym6Kx6yi1-7KR2MqDYe7Xj1HZVO6CCueJiBvfUpMyHvuWxHmiD1EfvK9NXtpb87C5uVOu-QwswQINH8ssBcrvH4faitA:1qug8P:bXa7OnHgC7mGQegWYCtD-Py7cRZ0EkZjAJnL26AVdh0', '2023-11-05 16:37:21.376965'),
('kyp80jcz31jnfbhvapt0nyr63us205mw', '.eJxVjctygjAUht-FdcskXES6FJWGKaEqF3HDhCQMIaAoOlY6ffeG6aYuzuI__-X71gpyu9bFbeCXQjDtTYPay_9fSajkx8kgfT_onWCs5Xdy4YO-6ohoF3_-k3heqMlQqzp3S9O1K6MkzCRz12CQQFYByKwKOAYjFnWA5diWDUoTMnvmEgpKTqnN7WrODKpGL7xS3Pr1elKUafIR1KVPRSQClIwIYoEGdNza1EMzJPt96gWurkKgNK5t2bqA7xctak6CdmmnbiSeKnSpNRXCOLfxSGEYIxiKuyDZGqjsF26kicfkHsXJ48MLzsyXE1DmDZahoaD-tg2XG4DHbZM3tcRZCHGzqMOYgkOWG3hiHNPxsA8qkm1E1Kxd3XOifNnvUIEIk_08advP3S7z-pmJ3j3sj5ZzWp0jWBwjS_v5BcZti3M:1qtaZs:qxPTW7bPKLkiwAUhkoqxZGBARXV9kg52lGvzARGRbqE', '2023-11-02 16:29:12.263412'),
('lrj0oz82j8lx0jy8wb5q47uhv8mjhqrq', '.eJxVTslygjAYfhfOlYmBgOlNcZkwjYyKuFycLKSERajooHT67o3TSz38h2__v60Tu12z061NLyctrXfLtd7-c5yJIj0_BdY0rV1pKcu0Y5e0tWcV0-XkT38Brw0ZazMTx6nwfCUYEK7yh4iDIYAelyOG4Aj7WHEElcMRAAaNMIICudxzHImx8rnjYFN6SZXZzQbX2qyYyvQRZnwhdKRDsu3JcKlJS85rJALikaLZJ0GIbWMCHF5LXmKQ7iclyWstqqQy17PABKrEfQZofEDRdHan-cpZ6k6z3RwY732ZFy6NZw8aC_gRhF9yUZhBAg_x-EHzMKMx6Q_5GNB8Xh0qAumOgmj6-TBcF8UyX26eTyX9cR8qtlvpKF9jG7VEdWdvV9VeAbrmgjZb6tdHtZGtOMEuDCR3pwNFVUusn1-BQ4tO:1qv6Y4:JdzLlBxkl90WksrYOfaGiABDCEjaeTFB94465NyVP14', '2023-11-06 20:49:36.254515'),
('m51pzca823ad3tyafjo3uwhwlnq5dbyi', '.eJxVjstygjAUht-FdcsEJCrdIaATpkCryG3jhCSUcPEGjphO371huqmLszjnv3znWzng21Adbj27HjhV3hRNefl_KzBp2HES8Pncqx2ntGV3fGW96naYt6s__Wl5bqhwX8k4M4uZCUu9wHSGl6ZONazREmjUKMFCp9ggC2AsoAFBMdMonJuYgIIRAhksl1QnsvTKSsmtXoeTpEyVD68qNoSH3EN7gbSAox4dt5DYaI6acxrbnqlKEyj0oS1aE7B01aL6xEkXd3IEtmWgi40p4EcZDB13DBw0-vad42QNpHcM6sbwI1eEkXt_t70L3TQSiESmS2C01_0k03LnC-TRtslqVwscMmai7QJhgUC0TbCbnopFnnolTj55WK9NtRmuieV-5hU2hxqi8QOniF7ipt1vN6LfseODW94YBpVjKT-_2wuNNw:1qv702:V_vI_5JVl02Uq2_qVf6lUcokOGI-Vz1X1-B8h0Cp4v4', '2023-11-06 21:18:30.746248'),
('m77apfrhfg7z6wf7itnbgjkrgu6tszl6', '.eJxVjktzgjAUhf8L69aB8Eq6lCoFmzBWymvDBAgSeUhFRen0vzdMN3VxF_eec75zv6WUXs5VehnYKeWF9CIB6en_LaN5zbpZoH0_LFpeFA0b6YkNi1VLebP80x-WR0JFh2rmgoKVoAS6SiEtZRXoGdA0ABEzS6ghZJiGYaICISUrVShDSBVVNRkEFJrQ0BUBPbFS9FbP56NoEUh2d6vMzrnHXedzchTCncHpPvTccgyn7qPActFCmOQMnJusQTKLlo1zOPK8DVoxE7VEoA20OYD9fPJea83z9xPZjZyGa1l4b2TC800nPlbeLfersOu5sE38fCR20sQhvsX-So4Pe9WzHYCnXPVCPOI21kiIZTJ3dMGURG5Jwy33DuKpDt_NDdK2ysfGShgP1vcViZQ-LYpxf6UN3pq5uwvJ2zUdpZ9fuWaKSg:1tgccJ:Y-q4wNNoUQaIZC_kWWGp4kLnYNzmqavXxgbqYc_KGdM', '2025-02-21 23:38:55.871334'),
('mcu8ih5wrc42i66hyuqoem2fgqgu6dig', '.eJxVjUFzgjAUhP8L58oAIQi9FawO0MDYCqgXJyRhCAG0gKNNp_-9YXqphz28t7vffmsnfJ3q03Vkw4lT7Vlbak__fyUmgvWzgS-XUe84pS274YGN-muHeev_-Q_HI6HGY63qBvGgZTuuy6BRuqByCasqxzSph21iLh0IQelgSKBFlhCTipqAAsaIw0rg2WCGDqxSu_ViOqsVhWRfUV1uCE95FGYyNBMejmH_DkkQOqG47PMg8nQVMkprasvWM9jeb8PmzEmXd0oSB6rQ5fZcQLsDTFcvMJHCSIMbx8XaUNl70ggbrQRImq39FkSfdCPUYAiSAt3TDZLIUmqEgSSxD926RrtMHpvMOhS5UCx4nDf6XB73UYWLLU8b6ulyyJr7gsqexBxn4moVNAY17hEZ-YffTin0qB_zyIzP2s8ve9-Mqg:1qv2lk:uUKPCzr44irCwTBNdKiEgXKxGkfQ-ZgrF5yYFo4mkoc', '2023-11-06 16:47:28.737142'),
('mvve3dojmy79xlz2j90cjt95t7jqt0zz', '.eJxVjctygjAUht-FdeskQFS6BKsTWuKoyG3DhCRIuCgFrZRO371huqmLs_jPf_m-tZTerkV660WXSq69aFB7-v_LKKvEeTJo2_azRnJeizvtRD97bais7T__QTwuFLQvVF1YmWGhXM8oN-jS0jmkkOcAcjMHC51Tky2AuUAmApkBOZpblIFMMIYEypdcZ2q0E7niFs_Xi6JMk19ukW2Y3EoXH0cMicQ9Pu8Rc_AcV20UOK41UyGQ6dc6qy0gIrvG5UWyJmjUjdRRhSYwp4Lnx4iMDHq-B7aHu6ThGqjsQMrKIONx8FY79O64H3xTKSCGcZkUSXM0vPFkxCUDib9vtn5Sx35Qks1Oj0OskzIevIlxDsYkcnMa7uS2XFuzw2CfCP5sa7tedas2IkYDyVE-324kpXH0ZuvB4JpjiPZA-_kF0CiMFA:1qtabR:IK3-OI0kdnh5k0y-g6_jRGVnCO71DhSBBEgAHCEl_WY', '2023-11-02 16:30:49.086151'),
('mz49ito71aywv0rw9wfs66dvgw1xumi0', '.eJxVTktvgkAQ_i-cq1lWUOmtIupuBYJBEC9mX8jyUBQMStP_3rW91MMkM99zvrQDubXZ4daI60Fy7V3Ttbf_GCWsEKcnQeq6GVaS81J05CqaoVMRWc7--JfjNSEjTabswqIjy0whJXxEphbkOtF5CnRupGACOTHYBBgT0zABHencHFuEASoYM4WZTjlkKvQqUtWbDdqzanlGPnBGl0z6EqNtj3RPogadNiaz0RgV9S6ysTVUIkBhW9LSAmI3K1F-lqyKKjU9sZWhioynwQ0T0587dzcPgGt3ksQLoLR3Ly8MN3Qebhh0axtf-LJQhQgqHHhx0CUx6vdqT2KcJ-ER-vNN7sb70p_PKi_Emfv7VNTvdzglcSD9fKGeYo7erz_PvLn4aLq1aESrOiNwFR5F0EoX1-nHfZCvtkmhff8A4NaM7g:1qv6XU:yT9TCuiEQ1D40qjxrl1tEcXuVcxP3oXDW1PtgTrUJIY', '2023-11-06 20:49:00.257451'),
('nkfl86rnobabdtrl8j2m4136ha7ni9dt', '.eJxVTjlygzAUvQt14hFik9LZ4AVixDiDMaHxCBBBgLyAN8jk7hGTJi5e8f9bv5U9vV7K_bVj7Z7nypsClZf_v5RmNTuMBD2duonged6wO21ZN5kLypvZH_90PCeUtCvHXJizAhbQ0CiiBdCgkUJdhwgzq0A6xqZlmhbOMVbTQkMAIapqmsUQpMhCpqHK0JYVsrd8vRxli4xkvVemy4wH3HO3g6sS7nbu4cPIbNd061Mc2R6eSBFI4aVJGwxYPGvc6sgzEQmJgdrSICJ9NPhhNgROrZPQ1f3-zuluAaT2QQZfD8IvIDGsbe-cL-uxsCGQlCQkwhc-SJw5IA5pRo3vJIKEU5CI7YOESUX6cVQ0JLFX0N2GB5UctZrmqr9JAKrBbbW-vbP-Oluo8XlpVFFD2x7rm0OsfhYgmCo_v7KiidU:1tgbQt:Bwe5MHmrz5pTP0wzNYjhIN0rzO3tdViYyG7m-3N1Ga0', '2025-02-21 22:23:03.434286'),
('nkmt626m8hjlurl3taupzl349lnimweh', '.eJxVTklvgkAU_i-cCxlWpbcKSqAM1AWkXsysYVjUigah6X_vkF5qXt7he9_2vpUjut_K471j16OgyquiKy__bxiRmp0mAl0undYKShvWoyvrtGWLRLP445_Ac0KJulLamYtN1-YGRtREc9egOtIpBzq1OJgZFFlkBqyZbdkAmzq1HRcRgBkhNrP5nBpEhl4Zl72lejvLlilyiEocEJGKKMzGUE9E2IWnjU280AnrS5F7katJEcDGrcGNC1ixaMLqLEibt3JH5ElDm1uTAe7IA45vAxyXerLtBdqvgNQ-knE5Qj8cUj_TYy_6okE9FYpktyphuwaHABpyQOrX9mebgcSPKlg1dVJBILF52E5P5eOhiDjar0VarVytzbZ-FDcfrspZaRVjzIdYBO98QxxVrRyzuz88vOthn_TKzy_EmIv_:1rvfUt:Rgf33IWO_3Q6B_lquLfCGB2fsEO2rnW3onekHHGhuhk', '2024-04-27 10:40:55.360549'),
('nrpqj4nlebbfwm5cgd87amt0wkij5ck8', '.eJxVjktzgjAUhf8L65YJLzHdKQ8nTAnFKj42TkiCRINawaLp9L83tpu6uIt7zznfuV_Ghly6enNp-XkjmPFiWMbT_1tJ6J4f7gI5nVqzEYxJ3pMzb82oIUKO__SH5ZFQk7bWcQ5LB3qVXRLmkCG0mUUsVgGLuRXwbUZc6gPX91wPlI7FvAEkFJScUo971ZDZVEPPvNK99XN31C135C2pywkVmUjQXCELC9Siw9SjARqg_WlZBAk0tQmUdidLCQFfjiXaHQVtikaPIoEONIV7D6Qzek132x6HI5C994IsYqC9V6yiWxaOFFa59xokH2yy14VIZZO0Xyl0Sxf5FdtzgENkZ-FYYoUbPNtaqVoLHObO6vepQq2XSUUWuch2MTT9y_TzePF7p6KojuAt9Nd-JRMpoS8PEbXFSjnxKe7e2tz4_gEXBYzs:1rukUv:tc0sTNeXhhpYlHcud4EuO-qAXGb_SzptjJ-aIRfu7-E', '2024-04-24 21:49:09.071237'),
('obm20vn73k2jhp2lvzoe53fl7knqvxpa', '.eJxVjkFzgjAQhf8L59bBECD0JqI2jITRUlAvToAgEaIIONR0-t8bppd62MPue-97-60d6b0vj_eOtUeea28a0F7-31KaVewyCrRpuongeV6zgbasmywE5bX7pz8tz4SSduXIBTkrQAFMgyJa6AYwUwAhQA6zCwQdx7Ity3Zyx5mmhYF0hOjUMGyGAEU2ssypgrasUL3la39VLQrJHn6ZrjIech9_SjwlHHf4sjWzObZw1eziue9MlElPQV-ntaOznVvj85VnIhZqJJ2rgIjhGAiiTIbRbAi80xA8Bk6Tpa68X0QGZuDNBhLN5Hru3_JVpQqxSQQpiVgA4lWSJFgPvGrYn5f1PtmWh3MGSVSZgYxF8BifiuVh5xc02fDwrJ4S9RW-w135GhrZKfR4XrkuXLsrN1yn3Y1u2m4Lm_6j3ruD9vMLFcuLOg:1tgfTD:ZHi6VnT5r408RskrUveCyYOI_JsQIP1jcqR4luoNXQU', '2025-02-22 02:41:43.396022'),
('p03uwe5yxoyq7mexpp6zvcamb2pcr4wd', '.eJxVjs1ygjAUhd-FdWFCAJXuFNRJaqAqirBhQhJKDPiHjmin716YburiLu4953znfmsZvV3L7NaISya59q6Z2tv_W06ZEodeoKdTY9SS80rc6UU0xrSmspr86S_LK6GkTdnFhZtbrlPAnHKLjlzITWryApjcLsAQcmqzIbCHju2A3DK5M3ApA7lgzBFOMeKQddCLKLreUr8eu5Ye-cBlPmcylBhtnsgMJGrQYeUwDw2QOu22HnaNzgRyeK3yygViN6nQ_ihZva27eVKvC9Rbuw-QKHFCf9ySCEHi3SWNZ6DztsFe2cSf3sMouS88fOZz1ReqNPqyyHNSEYisdL4BZB6oJF6pMA5U6ieP1K9UUKM2WPdPbZ_pDhc0XspwP3ONxLbO7IpjXT8DHxKRLjJ9n5hFvNQxG2BIWvwxtofr6HOk_fwCjoOKbw:1qugDY:YoCNlxeI9owfm8RWigQv40r0h2eGaCrAY86Z55u3WBg', '2023-11-05 16:42:40.480383'),
('p2wvikgxpil4wfcrwaph1wxuj447l10u', '.eJxVjkFzgjAQhf8L59aBQCDpUWidUIGxRUQvTCBBYoii6FDp9L83TC_1sIfd99739tso6O3aFLeeXwrBjBcDGE__byWtJD9OAu26fqYEYy0f6IX3s1dFRTv_0x-WR0JD-2biAsZrUANoU0Rr0wawBI4DEOZejRyMXc91PcwwtsraRiZC1LJtjyNAkYdcaGnohde6t3m-nnSLRvJ72JSLSiQiJOuRWLEgPTl-wMonLpFdnvkhnmmTWYJrW7bY5Pm8JYeTqFSm9IzU1wGVOVMgSqsxCSSMAgJjMQi6eTO19yseIydJ9zBJJVj64ZktpC4kThysh60i992Byeggzd1mNSbpeohHJuMggnE6F1GwB9v79FQ27vKwppuVSA76qYIt008wLzJZmS5kuUpKhW--A8xGde-XzDqfwy4vh501GD-_yl-KnQ:1tgcjk:B2nQUQxVilsY-9GjMYLbI5TA__vJBoxpsAPDqXG5Y60', '2025-02-21 23:46:36.186370'),
('pg7jcf3kogscaqpzkefjw798mdz7avzh', '.eJxVjs1ygjAUhd-FdWXCT0S6UwYtTEmqIogbJyTBBIhS0aHS6bsXppu6uIt7zznfud_akdxv4nhv-fUomfaqGdrL_1tOaMXPo0CaptWVZKzmHbnyVvcVkfXiT39angmCtGKIcze3XFiYOWEWmbkmM4jBCmAwuwCOyYhNHWA70IYgtwwGpy6hIOeUQg6LGTPpAL3yYugVk9tlaBmRj1DkKyqxDINdHxhIBm1w3kDqBdOgavaJF7r6YAK5eavz2gV8v6iD8iKpStQwPfGGgErsMRDFGUQ9BTg-WXjbSZIuweD9QmVloX4NUUzhuxd-slU1FgoU1wqvdn3Wb-pI-SArfRunqMZp9ojMoEMpUlF6kNF2fCrpD_uwIOla4nLp6o-r-JibxJmrCKMMC3uSvAnHL5tOLg9rXN7JKd4li1sXV9rPL-fVjNo:1qtaDk:iiao_fhNF18bUmhXaD7sFa5PFQXgdgT7yad-BomsUc8', '2023-11-02 16:06:20.339114'),
('phrt5ydoij0cfsnwonl2kyoa0djm8c3h', '.eJxVjctugzAQRf-FdYvMwwS6S4AgowJKmkBgExnbFJtHHiQqoeq_16ibZjGLmTv3nG_liO-3-ngf2PXIqfKmLJSX_7cSk4b1c4DP50HtOKUt-8JXNqh-h3m7-suflmdCjYda1gFxoG5ats0gKG2jsgmrKkvTqINNoi0sCI3SwpBAnSwgJhXVDGowRixWGo5pzNArq6S3fr2dpEUi2SOsy4DwhIdoPyEt5mhA_RYSF1moOR9SN3RU-QRK_daWrQPYYdUiceKkSzs5E3ZloUvNuRDtcph4_ph4ez12vzjO1kD-jrFozGjnm5HIwbsbXmjQSCF6RIKAXHyORYAeiUdAITZTnhU817dd7NUiCXw98dImnh19OhWHsMLZhieCOio4rbeuxBl2AdvQK8ws0MYpoNEyX9b0Q-t1dkGXFa66Qfn5BTl2ixA:1qv88G:NijzWwMzYztP9cj1F3cr_ZT1uwmyXS4X4gi-yPvEjMo', '2023-11-06 22:31:04.345370'),
('pr273ut85r2abruokchw7mnmz5wounie', '.eJxVjklzgkAQhf8L52gNm0iO4pKhhEkMqHihZiMMMC6ApU4q_z1D5RIPfeh-732vv40cX_syv3a8zQUzXg3TePl_I5jW_DgI-HzuxlIw1vAbbnk3Xkgsmtmf_rQ8E0rclTrOfWL7bmERzGw89S1mYpMVwGROATyLYYd6wPFcxwXENpk78TEFhFPqcreYMotqaMsL3VuO-pNuGZCPsCQrKpAIYaqgGQvYwePGpQGcwPq83wahP9YmQKy-IY0P-H7WwOokqNxKPQoHOiC3zhCIksyNVf1AyQLEwU3g3RJo7z2uahsl0EHzD7AOwgtb1boQmocqu8cqdSIVlpFKQVR93VEyqw5JrbIqvUXJUmaKyexzeGqrDvuwwLsPgaqlP5Yeg3XWsxKg0XzZbuTGfr-IUc7rtYV6-04s8tYcI7vbnIyfXwfajR8:1quKr6:xHZ190MJ7PY7s42bTf0yz5E4WS3T2_EM9ZC2ilcY5k8', '2023-11-04 17:54:04.879184'),
('q69kcofaq42tiuyjg80qteqoplz7w653', '.eJxVjklXgzAUhf8La-2BMCXuWkQMlmIpZeimJ5AgYegAeFrw-N9NdWMXb_Hevfe770vak8-h3H_2rNtzKj1JQHr4f8tIXrPDTSCnUz9rOaUNu5CO9TO7JbxZ_Ol3yz2hJH154wLKClAAXSWQFLIK9AxoGoCImQXUEDJMwzARRUjJChXKEBJFVU0GAYEmNHRFQDtWiN7ycTiKFoFko1tmTs597uLthJUVxz0-BHpuYQPXpySyXDQTJjkDQ5M1SGbJosHVkedt1IqZiCUCbaTdAl6YT_5zrXthKq82F07iF1l4r6vJ0_ywvnrTWlla7pk6tSjEY1qtx12Lr368nbxqLnsOBmmV6uk0B36Mwa7dql5Yq-nvU9G0S9yCxGvuV-Ip6y2ooWNXr8GHk-im-d67ox94BHVgXi9povsDxRv7eF7a0vcPvDmJuA:1tgd5V:JdGobnE-0XbEQ4P4U8oKkBO-DSSiJ2NvtsCA7lfPdQs', '2025-02-22 00:09:05.301722'),
('r34vgtx6xpczst9kmx5i7nb06od4smt5', '.eJxVTslygjAYfhfOLRM2lR7BasMUGKyyXZyQRULABXCBTt-9YXqph__w_d_6rezRtS_31462e06UN0VTXv7_CoQFPU4EOp87teGE1PSOWtqp7w3itfPHP4HnhBJ1pbRTuzBsi-kFIgZa2DrRkEYY0IjJwFwnyMRzYM4t0wKFoRFrZiMMCoqxRS22IDqWoS1lsrd87U-yZYocvLJYYx5yD-5GqAUcdvC4sbALZ1Cc09j1bFWKQKH3dVHbgKZODasTx03cyBuRKw1NbE4Gf5tZwSgGf4tB6N45SlZAah9BJYxwCx_BMjI_Xe9C1kIWQsOvpHaZi3wZCH8UIGt2Y1Y5PFhHRl4dBon1MPG17GsaFY956jGURDysVrZ6a9tHGsSPPEtOTY37035tuobDNjd2GHB4SFl0PV84-dgI5ecXL2qOaw:1quIvo:VZBhfLjUksKJw26flYlF_kRkC8bIjiAZy7ufj7kf9M0', '2023-11-04 15:50:48.213748'),
('r3b1d8r5vz1ovxtoyy8rl1a0wzgaa6v4', '.eJxVjs1ygjAUhd-FdcuEQFS6U0QNlTDWiOKGCUmQ8KMW7Kh0-u6N001d3MW955zv3G8jZV-XIv3qZJsqYbwZlvHy_5YxXsnjQ2Dnc2c2SohaXlkrO9NvmKonf_rT8kwoWFfouHQz20U5zJiw2ciFwmKWyIElnBwMoWAOHwJniBwEMtsSaOAyDjLJOZIoHwnINbSVue4tXi8n3fJA3oMim3MVqQBvemwRhTt8_EDcwwNcnXexF7imNoEMXuqsdoHcTWpcnhRv4kZPzzwdaGLnEQhpgkhf3Ul_uIbrq2LbGdDeGykrO6LYJnR8W3rBp5hXuhCjiFY96WcVgfiWwBAk5eGW0H0RwpW1p3UTTTEk1IfJ-vFU3O93Qc62KxWVM9fctv0h3bg0R9vVeLGcyoug_mruNQMP0PacOnG9SPzlOxl3xs8vAq2L_w:1quKVR:Yt81RgpA9JU-nT13nYxTjsbW4ZmzJOJiP6lsOUIwIjM', '2023-11-04 17:31:41.623472'),
('r3v7p8ledjup0vliyn3g5weq3pdua8na', '.eJxVjslygzAQRP-Fc-ICsYncYrBBxKBKgtkulABhZMB2jFel8u8RlUt8mMNMd7-eb6kg51NbnEd6LFgtvUhAevp_K0nV0d0kkMNhnA2srnt6JUc6zhYDYf38T39YHgktGduJC2ragAboKoGkkVWgl0DTALSo2UDNsgzTMEyrtiylbFQoQ0gUVTUpBASa0NAVAT3SRvS2z6e9aBFIevfb0q0YZj5ac6SEDI1o96FXNjJQd0hj27dmwiSX4NSXvSXTdN6j7Z5VQzyI4cQWgSHWpkAQVRw7nR44ryC0r4wkS1l4byEPNBxt9JBn8sr2v2q3E4VIyZ22D5Psht1li5NADiMEcJJv8yS7hy7iuVPd82RxCz-np2Kep35DkneGt-IpfAnQW9E8r1J8AZ43yD3z-Mb3MvMylL5rFOsTr2g0Yh5IP7-O84pv:1tgcg0:D_7n9PPRehP-BQWQljLlwalSKR_wK7ClzHN0sL2Ft8E', '2025-02-21 23:42:44.425439'),
('r6l02jqar3q97k161bfpgso81ca659z5', '.eJxVTstygjAU_RfWrQPhFbpTpDRMgyNSEDZMgADhJQWtSqf_3jDd1MVdnHue30JCLucquUx0TFguvAhAePr_S0nW0H4hyDBMq47leUuvZKTTyuoIazd__AN4TKjIVC25IKcFKIAqE0gKUQZqChQFQIPqBVQMQ9M1TTdyw5DSQoYihESSZZ1CQKAONVXioSMteG_1fD7xFh5J706V2hnbMQd9zEhyGZpQ76mZiTTUDMfAdIwVF4kpOLdpa4j0uGlRfWJZF3T8ZmJyQxcoiwH72bzbNireRio-XBkJX0WuvbkzVnZ-c8Vzc3s3nc_cbnghUmJ_L8X1Woo7S3HrtRh36B7VfASIZteOGxxijksRLx19MMdHpyDhnu1qPsq3va-Q6NZY4WvivHqlNwd7qSzHy6mP_EM--OXbtrWm0smEn1_Oc4sq:1tgcq7:8xRteeiDKnP0NgLlMxkGnWJpi4_kUl9AnUw76k7TXfo', '2025-02-21 23:53:11.776679');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('sgklpr8kg47u9w19ggafkdoigpe7p7m2', '.eJxVjclygkAURf-FdWJ1N6CSnTIYSICSIA4bqyekG1AUFSGVfw9UNnHxFvfd4Xwre3y7ZvtbzS97wZQ3BSov_38E05wfBwNXVT0qBWMFb_CF1yO7xKKY__lP4nkhw3XW17lBVENPEcFMxVMDMYghSwFkWgomiGGNToA20TUdEBUyfWxgCginVOd6OmWI9qMXnvbc7PV66inDZOtlZEFFKDx31bkwEG7tHiOdmu7YzatNYnrGqA8Bgq4FKQzAN_PClSdBy6Tsr8NmXygTbSj4MW18a6n78oCCr0bgtQP67CPoZk1g5W0Qb-Gn6Z3ZIh-AxW7tiF3s5b6MZGAdwBa5TRgncovsR2it1MCK5FbaD39gHJNut_FSvF6KUDrG6GMR5nYF6uvMP7UQVRoJnd2NGhl-l_dIPba2dX4IeFjcl8rPL--jjMA:1r55nR:hvBKOBwJcMXJwHQ_BSJsdse8NcfVqddOBn5ezUHZsY8', '2023-12-04 10:02:45.653489'),
('shvwhuq2qpghtjar14oa5lsctcyiorto', '.eJxVTstygjAU_RfW1YHwCt1VQIVpYKyA0g0TIJEAUSs4CJ3-e8N0Uxdnce95fksZvvdVdu_ILWOl9CoB6eX_L8dFQ84zga_XbslZWbZkwDfSLV2OWbv645-O54QKd9WcC0pCAQW6iiGmsgr0HGgagBYxKdQsyzANw7RKy1JyqkIZQqyoqkkgwNCEhq6I0Buhorda9BfRIiLJ6Ff5pmAh87148pSAeZ13_tAL2zO85npMbN9aCpGcg77NW0smx1Xr1RdW8IQLTNgWBp5oswFFxRQ6jY6inY72A8OHtSy0j2BCWhg1DyTwbvtf5aaZC3kAkirluyGIUhA6Jzmo3UdalxxNb2M6ndQUxCNyPIDGeVQyfR59ig87FtZiVO3GxkLbKFsHrgk_r_q82vqJsvbdyER7uwoj315k95jGg_TzC-Aciek:1tgd31:fpopwgC891ZhnoF5Yi5ktoNDttVU1gW7l5pPh2dazPM', '2025-02-22 00:06:31.721834'),
('sko3t92rvwejbyzr74d4qejjpdbo9vyn', '.eJxVjklzgjAUx78L55YJIVHTW0VxwghUpyJycbJRwuKGS6HT797YXurhHd77L7_3ZW3Z5VxsL606bbW0XizHevp_40xUancX2OHQ2o2WslY3dlKtPW2Yrsd_-sPy2FCwtjBxRbhLcA45ky4bESgd5sgcOBLlYAglQ2II0BAjDLjrSDwgTACuhMAK5yMJhSk9qdxwi-fz3lDulV1Q8JnQsQ7oqqdOpGlLd0ssPDqg1SFNvIDYxgQ4PNe8JkCl45qWey2apDHTM88EmgTdA-H7BseTKQwnGxR1N83WPjDez6iskNFuYf_hzr3gKGeVAVKYzbI6moVd1iycqF-BcO0Xm3IDYuONYNZE_WsXTyqY_T6V9Fka5Gy90HHpE3soiRvo3cFDmV-2b0HHlnx6PqYp5dV8gDGpruPMUetrhKzvH64ei9Q:1qvJ5f:pftN6xz2z7Qg0WJDqXUOl7d8Za8-UrhfS33Ux70XzOg', '2023-11-07 10:13:07.965451'),
('sn3b0mr3a0rsr3webrv807jllly3nvqx', '.eJxVjstygjAUht-FdetAuIXuKlgnmQLVARQ2TiBBwkURdNB0-u4N001dnMU5_-U738qB3K7V4Tay4cCp8qYA5eX_LSdFw06zQPp-XHSc0pZNZGDjYtUR3i7_9KfluaEiYzX3AspKUAJTJ5CUqg7MHBgGgA6zS2g4jmVblu1Qx9HyUocqhETTdZtBQKANLVOTpQMrJbd6vZ4lRVayB67ydcFDjlEskBZwNKLT1ixcZKGm3ycudhbSpObg2uato7L9skX1mRdd0skRxJWBLjHmgB8VIvQa0_eQ5rsTJ7sPVXrvgfCNMDqaYRRPny6-0HUjgcjwu40IvFgPBLqnIlazGvN0twGhh-u0TkFab9sAbKtsZpwSke1xSXYbHtbyKVQDGn0FNF2b7y0EYaJaYkexpyb43BB9VfeXx_I43PVsUn5-AYoNidc:1tgcj0:0zFl5T0gC-fph-f_yJ1PmNv1FoySwMrbWnS27swA0Xc', '2025-02-21 23:45:50.162984'),
('snqzdukz68cnmtbrhqbziqlpb1bqajrj', '.eJxVjktzgjAUhf8L69aB8Eq6FKyFERhbXrJhEggSAkpBq9Dpf2-YburiLu4953znfks5vl7q_DrSIWel9CIB6en_jeCC09Mi4L4fVx0ry5be8EDH1abDrF3_6Q_LI6HGY71wQUkrUAFdxRBXsgp0AjQNQETNCmoIGaZhmKhESCGVCmUIsaKqJoUAQxMauiKgA61Eb_18OYsWgaSTW5NtwQLmOtHsKD5zRuf0rheWYzi8T2PLRSthkgm4tKRFMk3XrdOcWdHFnZgZWyLQxdoS8MJiDmyue3ak-x83hpNXWXjv_uxpQchvXsOVneV-llu-FHI_9LtDsrn7SVz74UbOmuMU2C7PEr_JwiM4hMfp0EWKNy1PxXOWuhVO9ixoxFOyoaVkqJ9pidwvdJbfWo0NvI9IrpOtZdxJaiu1tev3XiT9_ALqSYqM:1tgcoZ:cKBycW9goMHZEHorUTYQGk7C-yPEdFe943EWEFxaA_w', '2025-02-21 23:51:35.650310'),
('sxpqqrepjsgnj6jpymx2r8ukqi7ihlcb', '.eJxVTktzgjAQ_i-cqxNioqa3go-CBWtHULw4eVESQK1gUTr97w3tpR52dvZ77pe1p5c6218qed4rYT1atvXwH2OU5_LQEfR0qvqlEqKQDT3Lqj8tqSqcP_7uuE_IaJUZuyRsQHAKGRUDOiZQ2NQWKbAFSsEICor4CKARRhiwgS3wkFAOmOQcS5yOBeQm9CxT05v16qNp6SJvfsbmXC2V70WtZ4fKq7zDG-auN_Ty0zZ2fdI3IsBgXbCCALl1Ck8fFS_j0kxLXWMoY9QZgnWCl5MpDCb5IHQbRTczYLTXUOfIcE2oOXhx_Q8xz7tCnegcJzACwWTVJqXZ2lFJmVzDNmp26ycUtnEeQq8Jfp-K293WT-lmpZZ6RvpEwncdHXoVr4NPcUP18yrSwXy0iCKwwmzxynWJROimDre-fwC4Zown:1qvJAI:El3fw2YfOlpMrirBxKMnnbDYs6iAEZRHnF5L0tuX0f4', '2023-11-07 10:17:54.148655'),
('t9hc9azvhipitk8q42lk05o2wakugmrz', '.eJxVjctugkAUht-FdWuGkVHprlIhQwoEK6BuzNwow72AEWn67h3STV2cxX_-y_etXch1yC7XXnQXybUXTdee_v8oYYWoZ4O0bb-oJOeluJFO9ItdRWS5_fMfxONCRvpM1YVJlyZKISV8STYm5DrReQp0bqRgDTkx2BoYa2QgQJc6RyuTMEAFY0igdMMhU6OdSBU3ex4aRZkn725GHSYD6eJowrovcY_rPWIWXuGiPcaWay5UCFA4lLQ0gThuS5w3klVxpW4ilipUsTEXvAMb_fyE_Ldo6X_cJElsoLKjP-2gnxfAy5n-brlf3CkUEI-Bg3Wv2gEvCUcPRuCce-CU20Xg7MbgsK_83Lt7jlueZ0YdT-ejm5IklEFum4sgDGEHG8KoP0xn4bZRUn7CU4musV2Hcd1E0WE0bG6zV-3nF7SvjFk:1sB4bM:qqv9xpaAfG1BZOW4AGHfnEpji5MUR9_97isV1n1VILg', '2024-06-08 22:31:16.052298'),
('tfvp0p86j37jn6r84x240z7keeddpfwe', '.eJxVjs1ygjAUhd-FdetA-Eu6E7BOGAm1VbFsmACJBIhaURE6fffG6aYu7uLec8537reW0cu5yi4dO2Wi1F40oD39v-W0aNj-LtDjsZtIUZYt6-mJdZOZpKL1_vSH5ZFQ0a66c0HJOODANimkXDeBnQPLAhAxl0MLIcd1HBeVCBk5N6EOITVM02UQUOhCxzYU9MS46q2ezwfVopBsCKt8XohYhHg9YoMI3OH9u1342MHNcbvxQzRRJj0H5zZvkc62XovrgyjkRqoZqa8CcmPdA9GqGOOgsaOgGMjQC5q86sp7I2NkxaumJwE2F374Vc4bVYhNEngyDaY2qadDlER6GqxBvEpbkiyVt5Vk3PVkvuzTj_tTmzHdhpwmSxHX6qnrGbnMW9xaz5Of9XFIdpLf1nGfneorfSv82faQvw88lelU-_kF8RKL_w:1tgcqh:Uz2JyBR-hWvVy7acfvEadcfMDz7RbR0XNHpzYfh6w2Y', '2025-02-21 23:53:47.007878'),
('tgvfgjbb9ntnwzrl1l3c9ir9z6ytz4vz', '.eJxVUElzgjAU_i-cqxPCkqQ3xWVgGhwVAb0wIYQhLGoFR6TT_97QXurhHd771nlfWsLuXZHcW3FLZKa9a1B7-39LGa_EeQTY9dpOG5lltXiwm2iny4bJev6HvyyvDgVri9EXZiKHObQMhlkODGil0DQhJgLl2CTERraNSEaInuYGBhgz3TCQwJBhhG1LV6Y3kavcYtJdVIqyFE-vSNdcbqTnHgZX96XbuuedxR3XdqtrHDoemSoSSGFXpzUBIp7XbnmRvAkbNQNzlKAJzVFAAw5o4D42i6qn-4dk0Qoobu8P256WM9Mvl_2H431m62oMLOh6a9HoJP1gBmlEwTGYGceA66eyrumwk3SxBLTZguNvqXA4xV7Ooq3clGMpuVK_OlwMBEkXs8SGYdmJCdiTc4xCXpeQZD1coWfMte8fopCJcQ:1tpvtr:udt_dSHCwBzKzGY-XPkcn86pn5c2WENDNSlRsXNvEWk', '2025-03-19 16:03:31.856258'),
('tiu3lq9r8wjbk0pzn590yli27pk5vm38', '.eJxVjktXgzAQhf8La-0J4ZW4a8FiUED7ppueAKEJIW0tVSwe_7vhuLGLWczce78738aOflz47qNl550ojQcDGnf_bzktJDsMAj2d2pESZdmwjp5ZO3pUVDSTP_1muSVw2vKBC0tWwQo6FkW0AhZ0cmjbEGHmVcjG2PVc18MlxmZeWQggRE3L8hiCFHnIdUwNPbNK9_L7y1G3aCS7RjwPC5GKiCx7YiaCtOQwcwqfuESeNis_wiNtAjm8NHmDAdtMGlIfRaFWSk9PfR1QK3sIxIuiTwPpxIG0k3kn6HoKtPcr6WM7Xcguqffmix-9l6HUhcSJVWZtg_11qyIR1xlIgkmTqRhk9axOemmnAedxuATZdXhq1W83UUXXbyKt9VNAKW_dycScnsPtcs-9pzGRHf8U_uL5tSnUgeOLOe6juXc0fn4B3SGK5A:1tgcur:gkFb_64-ghH79yDiQlIcL_sjd4w_I-9-l0YzlkyUa7c', '2025-02-21 23:58:05.081097'),
('tj04099tkdvbbmg4aootkoe44dd8sdgg', '.eJxVjrlygzAQht-FOvGAuERK44QRiUzwYDA0jABhicsHOBgyefeISRMXW-z-x7ffUkpuA0tvPb2mvJBeJCA9_b9lJK9ptwjkfO5XLS-Kho7kSvvVa0t4s_7TH5bHBkZ6tvSCgpagBLpKICllFegZ0DQALWqWULMswzQM0yosS8lKFcoQEkVVTQoBgSY0dEWUXmkpuOx5OAmKqKSTyzIn5x530X5GypajHnU7PbeRgerzIbRdayVMcgaGJmssmR7WDapOPG_DVsxMbBFoQ20J4CCfvU2te4GvY3vkJHqThfe-nbHmBbWOg3r8sN1L4dQLsE42ResFeIoBVpNoL2Nnxz1ny_AcqzjyJxwc7ziKtWRhdOGcHNySRD73KvHU_hgxlVUpai7HbjsE86xFTvp1RbJ_ewfTZ8yoko9hhYaT9PMLzUWLWQ:1tgf82:ABgPq8yk8bL0iWmi6-k5oRH9jjyOrkv9tmGqS0JVQ0c', '2025-02-22 02:19:50.464076'),
('tqdq3x1gsic0xcns1lclh97giwvts2al', '.eJxVjktzgkAQhP8L58RaVkDITVGpJS7GxBdcrH3KIvhCI2wq_z1rcomHOcx099fzZW3I9ZJvrrU4bxS3XqzAevp_o4TtxP4ukOOx7lSK81LcyFnUnVFFVDn40x-WR0JO6tzEfUqk7PXcLgm6EEICXEq5sAPGJCM2daSQzOG864Me8yi3A1dI4nPPo4Az6d-hZyFNb_58OZgWgxRtnNOIqamK0UIjO1GoRvt3l4XIQ7vjehnGQceYAIWXkpYBEOtBiYqDYtWyMqNJaALV0rkH8Jw1WPdbrBcwUTdFVmNgvE2iRxoPkcZFCidhfOLRzhSiZholeTbfOglMiqxgIJvPdLpCAA8ZwKusSuZZiWHapr9PLXW2jiVZzdS0KIOOXLNwvBi0_TFr4n7_0-kWg217CfDHaV9MRvDttQpnn1ExQ8j6_gGNjI4i:1rvfbW:XWRP5pgFHHWbirrvpsZC1Q5qzfelBu48unHXkcHUVxo', '2024-04-27 10:47:46.328685'),
('tv5v60pqmr2p76eqqr8tblintnrfq3ky', '.eJxVjklzgkAQhf8L54QaNpHcFJcMkaES2S_WbIRhcQEVJZX_Hkgu8dCH7vfe9_pL2uHLOd9dWt7sBJNeJEV6-n8jmJZ8Pwr4eGzlWjBW8Q43vJWXNRbV_E9_WB4JOW7zIc4tollGphLMNDy1VKZghWVAYXoGTJVhnZpANw3dAERTmDGxMAWEU2pwI5sylQ7QhmdDb_58PgwtI_Lu5GRNhSccGPRQQQK2cP9hUBtOYHmMQ9ux5MEEiHquSGUBHs8rWBwErcN6mB7bQ6AO9THg-omBeqq4Pry7didwtAKD94aKUkN90Hk-7Da2c2Lrciws0oWrIz-4IX92T4tPgNQ0TyIIkshVPT-v0aK8uf6yT36fCvs0djIcvQuvWFlyh3r-Zm3sZjszr3vlerrNnK3w0s3klNp9LC4BOVT2a7OJD9L3DwrgjWk:1qtaZM:OrIfdTpc0FQV7baVM-mpW8okSeqhXa4I2iDovlZdp1E', '2023-11-02 16:28:40.322263'),
('ue9y0f6lxd7mv1538duteszaqxxifx07', '.eJxVTktzgjAQ_i-cqwPhlfRWtDphDAwtonBxAiQlPNSKVkin_71heqmHndnd7_mtHejtWh1uPbscRKk9a0B7-v_LadGw4wTQ87mfd6IsW3anF9bPXzsqWu8PfzgeHSraV5MvKBkHHNgmhZTrJrBzYFkAIuZyaCHkuI7johIhI-cm1CGkhmm6DAIKXejYhjK9MK5yq9n1pFKUJRv9Kl8XIhQ-3kpsBAL3-PhmFwvs4Oa8TxY-miuSnoNrm7dIZ3uvxfVJFF3SqZF0oQRdYk0CEhcyXDY2idM7EXdBdytdcYdAEiuMm4HIl3Gz8D_LdTMFtsFuO6TywyBLtcdbPZBVncYNyGJskTqpsjiVab2V6TiVSmS29zndRSKsVanZKbNJP7wLPHr9bGWIiEUiyoeg2WTcQCM1v3KP7HkNIu3nF1rvi-c:1tgd4o:ycg4COuDXsbKEusY7VMCwu8DZpYCFxPURFsgiik7D30', '2025-02-22 00:08:22.806137'),
('uk791q74hrn6sv8jsqmk3y1ze4uaozt3', '.eJxVjUlzgjAYhv8L59ZJgIj0prhMGAyjg6JcnJAECYsbLpBO_3vD9FIP3-F7t-fbONDHPT88GnE7SG58GdD4-K-llJXi1Bv0cmkGteS8Ei96E81gVlNZTf78t-d9IadNruvCTS0XZWZKuUVHrskhhTwDkNsZcExObeYA20E2AqkFORq6lIFUMIYEykbcZHr0JjLNzT_vZ03pJzs_TxdMhtLHG4UhkbjBpzViHh7i8rLber470CGQmvcqrVwgdpMKF2fJ6m2tT1FPF-qt3ReW0R4RxSCJNpB4L0njOdDZlhSlRdQGLosNCDz_yhdlD6zDxUol8axNiqMKYwyWCr_CqdbjZUeisZnUJCcKo6RnnLYq2fkZjVcyLObuYO91KrpawSlaee30OKaRbbVPf90JR7V2x4PmeZ8FbhJIYPz8AuN7jN8:1qtbhG:8_7wI1nYEt9wI6d4yfhyj2D2bfyW50sygvJa9uKt36s', '2023-11-02 17:40:54.313745'),
('uwjkq4tgr3ani80yzac830fmqx14efmq', '.eJxVTstygjAU_RfW1QmPiHSntGqYiiMqAhsnJAECCT4QH3T67w3TTV3cxbnn-a0dcHstDm3DLgdOtXdN197-_1JMKlb3BD6dmqHklAp2xxfWDD8l5mL6x7-A14QCN4WyMyc1HZgZKaYmHjsG1bFOM6BTKwO2QbFFbGDZ0IIgNXUKRw4mIGWEQAazMTWICr2wTPUWg-tRtfSRT69I54SvuId2HdJ9jhpUB5C4aISqUxS6njNUIpAaV5EKB7BoKlB55ESGUl2HXWWQodUbltsY-h3Rl1sEl5s7x_sZUNqHX1am3-3uq231-HK9M51XfaHwZVAlEikuB6v9GiQytuItsfxy8kjmCMT73SPuQrF89qPCLom8DO_XfFXO1KjD07590Bubx3V0jfzFIED5Qm_lZl2LZpK3Tm7C4JzsXEv7-QUduY0s:1qtaaV:NaYtlmp0rBM-cIP-ZiDYl876gacaLUjKU4D-VugwAkc', '2023-11-02 16:29:51.774456'),
('vddy4t5f7v8x0mom476gskq9jxoe9jdu', '.eJxVjslygzAQRP-Fc-wCsUm52XgTjsBJMNi5UAJEEJsX7CIolX-PqFziwxxmuvv1fCsxvd-K-N6xa8wz5VkBytP_W0LTirWjQM_nbtrwLKtZT6-smy4byuv5n_6wPBIK2hUjF2QsBzkwdQpprurATIBhAIiYnUMDIcu2LBtlCGlJrkMVQqrpus0goNCGlqlJ6JXlsreY3E6yRSLZ4BbJOuU-d_FeYM3juMPtm5k62MLV-RA6LppKk5qAW53USGWHeY3LE0-bsJEjqCMDTWiMARKkwg9mPRFLzXvvOY1WqvR-eYKYZDEb_MVee3HcS7auZCE2iGSQKKyO5bEnwafqB8feXxPTCyrdC2aGV65KD-CBDONTofg4uDmNXrlfyqc61AptF9Zmwq1qk3lqvMB7_dJ2fXQJt5s8qJaCnibbHemVn1-49op6:1tgg59:-hkVU7Nv3UPJw7sk3y2vi2sMYDLHYJe0YfwS52mMqRQ', '2025-02-22 03:20:55.675463'),
('vyf6nfw9azy05g5fznuywcwfa3do5lms', '.eJxVTsl2gjAU_RfW1RMiUdNdxSlYoNbI4MYTklDCoFS0KD3998bTTV28xX13_Db27HLO9pdGnvZKGM-GaTz9_yWMF_JwJ1hdN_1KCVHKlp1k059VTJWTP_4BPCZkrMm0XeJkgFEKEyYGbIyhMJkpUmAKKwUjKJjFR8AaIQuBZGAKNMSMg0RyjiRKxwJyHXqSqe7NeuejbrlH3pwsWXDlK4dsO2J6ijTk8I64TYakqKPAdnBfi0ACz2VSYiCjSUnyo-JVUOnrmK0NVWDdDS6NkT99ubqUIG_TKhbOgdZevbyw3Oms9WlhvtrOp1gUupAM4tDL3dBTOxq3LlyDHS0Ln27buHJUDPWYapd7-ezmbe6jgm4XOSkL18rP57hPsy8cNdGKRpc6fquz1RGHQ4h7S9SNaW_Zu36Yo2It4KwDxs8vrNmLVQ:1qugE7:GszCk57_kAUd_8TD15KlsrwiFtUKw1aWV7D5CmNcDY4', '2023-11-05 16:43:15.691721'),
('weuu855yad6qlyljv152vzw53jjjippa', '.eJxVjkFzgjAQhf8L5-pASCD0VqHSYIGqFMWLEyBADAiKjkqn_72xvdTDHnbfe9_bL2VLz6dqe-7Zcctz5VkBytP_W0ozwfZ3gXZdP254ntfsQo-sH782lNeTP_1heSRUtK_uXJCzAhQA6RTTQtUBSgGEAFvMLDC0LMM0DNPKLUtLCx2rGFNN102GAcUmNpAmoUdWyN5qdGpli0Sym1elbsZD7pHPgWgBJz3ZL1BmE4OIbh3bnjWWJjUFpzqtLZWtJzXZtTxr4kbOQG0ZaGJ4D_hRNoSOQL5TQv924XQ1VaX3Ggw-DCNxCaJyeLe9Q-4KWUhuyeCJACQw2GUocDI1aYiWNDGXfuSDuRY44uJHPtz8PhUPm7VX0NWchzv5FNDa5dLcqPGb2yyzMtFaqh_cjohpOb86H93LaLboEMmTGVS-fwDKPomy:1tgctD:mEdNvfR7b1Mp-5VamGWSHEDDaG4aNxCxEbdJtIUIcaA', '2025-02-21 23:56:23.670290'),
('whmlvbjs982iuq1xu8d27h0bannt1j7s', '.eJxVTslygjAYfhfOrQNhS3pTXCa0SFXKdmECBIkBF8CRptN3b2wv9fAf_m__UjJyHers2tMuY6XyogDl6T-Wk4LT450g53M_aVlZNvRGOtpPFi1hzeyPf3geE2rS1_dcUNIKVMDUCSSVqgMzB4YBIKJ2BQ2ELNuybFQipOWVDlUIiabrNoWAQBtapiZDO1rJ3vp5OMkWGUk_3TpfFcxnLv4QWFsz3OPj1iwcbGF-jkPHRRMpUnMwNHmDVBrPGnw4saINW3mCONLQhsbd4AWF8Ofc9IKN7u1ujERLVWrHtfAMP-Cj5Mc3x72UKy4LMUgOnpqAbeOJZZO0iZrOl40fFBLHN0-kPAkw8NrFLf0dFYo0disSbZh_kKOi5N2hqdj3iPCobsNq3u1KY1MOfHTj6evJnSKSXWa52O6V7x_7toun:1tgd2h:4TcQbn8Zx2UQ2Fs2naVYbzJV1MkgPdhhbBnBjFhapCQ', '2025-02-22 00:06:11.522628'),
('wkoszkz64ppfbinolpbzg5xrkyz8dtsm', '.eJxVjktzgkAQhP8L50jtIquSWyRoLRGISlC4UPtClpcoWqCp_PeslUs8zGGmu7-eby0l10ueXjtxTiXXXjWovfy_UcJK0TwE0radXkvOK9GTs-h0pyaymv_pT8szISddruLComMLZQYlfExmlsEhgTwDkJsZmBqcmGwKzCkyEaBjyNHEIgxQwRgSKJtxgynoWWSqNx9djqrlgby5OV0yGUgXf90x9CXucLNBzMYTXLb7yHYtXZkANS4VrSwg9vMKF0fJ6qhWcye2CtSR-Qh4YYz8e3nzQjZ4di_JbgGUd_CLchyEePDfnX5luye-LFUh7oOlg-LQgbGR1H6IgV-wPi7Wpl8czKQoB38XVV5Y1cH28VR0T_ZuRnZrGRQLSz99hpCvNv0h6U55v87hhZ6HrWU3zuTj2oze8nm2zVoM0oOn_fwCLReNbg:1quIvC:1b5Jv0hzH6I6CYpYa0YPtz75e9oFdZCtBfOalqSmT3c', '2023-11-04 15:50:10.171552'),
('wpzbmmbzgy8lvzv3lvv24ar4lf2wj599', '.eJxVTstygjAU_RfW1YHwCt0pWAsjoA4PccMESEp4iAoOkk7_vWG6qYu7OPc8v4UUPYYyffT4ntJCeBeA8Pb_l6G8xpeZQNdrv2xpUTR4RHfcLzctos36j38Brwkl6ss5FxSYAAJUGUFERBmoGVAUAA2sE6gYhqZrmm4UhiFlRIYihEiSZR1DgKAONVXioXdMeG-5GDrewiPx5JTZNqc-deyQ2ZJH7d6-HNXctDW7vp4i0zGWXCRmYGiyxhDxad3YVUfzNmr5MWRyQxsps8ENcuZbtepaydMzR4riD5Frnx5zFT-oR5dtxJ3p3IptPRdSL45aLwgnt0oUj9ViEqxYErvT2UomjkffOshJdWDJNI-K2PnkEBQfqF_xUR3hS2RJXwzgkS9ci91G87jfdasdnCb_M1U3xz7cH7xQ_BJ-fgEjL4sV:1tgcos:juuij3yd1XtA6egAHTWSi-Six85ie8_0ts-zd5SFN7U', '2025-02-21 23:51:54.888870'),
('xezimjje1ypxu7saju30edm03x2jnjgb', '.eJxVjs1ygjAUhd-FdWUCJGK6qyA0tMCIFoWNE5Ig4UetYFU6fffCdFMXd3HvOec791vZ0UtX7C6tOO8kV54VTXn6f8soq8RhFOjp1KqN5LwWV3oWrbpoqKznf_rD8kgoaFsMcYEzA6Nczyg36AzrXKMaz4HGYQ5MnVPITABNBBHIDI2jKaYMZIIxJFA-4zoboGeRD73FpDsOLSPy7hWZy2QoPfLREy2QpCWHCDGLTEl12saWh9XBBDK9q7MaA7Gd16Q8StbEzTA9tYZAE8Mx4K8TFNovKCgXMLhfJd04YPDegrKCvl1pob033i3vk7vVWCiD3imTxqlCN639hgDf9YrQTot0vTf8zbJPy6hISnZLVuNTcZ9uvZxuljIsHaxGgRO9av5lbSaXJHK7DnbxNMdwBbF1IEudf92Pm3TSLN6g8vMLrZmLqQ:1qv2JL:683pvvnNl_Gd1urAHxKGi7DQTKXLJi-I3Kv8rpzyVVo', '2023-11-06 16:18:07.593498'),
('xs3v7jyydwnmq9y2mcdkpobmlhljhjhs', '.eJxVTslWwjAU_ZeulZMO0NYdFIQUksrMYcPJaAMNIAVb4vHfTXUji7t4745fzo7crvnuVorLTnHnxYmdp_8_SthBHBuCnM9lSyvOC1GRiyhbA01U0fvjH47HhJyUubVHlEgZhm2fxL7neQS0KeXCjRmTjLg0kEKygHM_AiHrUO7GbSFJxDsdCjiTURN6EdL25s_Xk22xkeKe5nTIVKZSuDTQxQqW8DhrswR24OG8WSVp3LIiQL1rQYsYiE2vgPuTYnqlLQxJrEGvgsaAFqxGpntHBrlZUimyfgVWW2MzMKgPLZbBJEk_-PDQFOpsMQ2w6dbbPta4vwTIvFfZGgW4DytsCo1MvseLqYd-R63MdpNKsp6qbF_ErclnUfVCf7J-Gy3Gaam7PNqS3fEucD0PKjOf1WA0G4nx8K10vn8AjZ-OrQ:1rvfYA:UJH_uMdYzVMWrVV7L6qeHbUPIW3eUglJtnSIpbBWxFI', '2024-04-27 10:44:18.422873'),
('xs7ldh0aogphe3i47md0belnpgy09uw3', '.eJxVjktTgzAUhf8La-1AeAV3lj4MFRhry6MbJkBSQgit0FrB8b8bxo1d3MW959zvnG8lw9dLlV170mWsVJ4UoDz8v-W44KSdBHw-9zPByrIhN9yRfrYUmDXzP_1uuSdUuK8mLigJBRSYOoaYqjowc2AYADrEptBwHMu2LNspHUfLqQ5VCLGm6zaBAEMbWqYmoR2hMrd6vJxkikSSwavydcFC5qH9iLSAoR61W7NwkYX4OYlcz5lJk5qDS5M3jkqSeYPqEytEJOSM2JUPIjKmB39XjOGCG-GOS9CN4XilSu9XMPrydjSDeg9eXe-jXPMpkIeLpemDgKciHQOA1EAEIo1TENRRk9Ze5S_4cIjR4L9PpaLxkHgUx28srGUpPCfHrE1XFgJtt32JXbqhm6WmFW5dX4YOlaX7rJPk8_G6V35-AbiRil4:1tgceG:i7BVCOdh9qPPQND1jlS7eiNZyW4PeE9kwuj4kNbEqko', '2025-02-21 23:40:56.399182'),
('xwu7drtypmuo7dkgiqyjst7x3xknb82t', '.eJxVjslygzAQRP-Fc-wCsYkcDcQRZcBOzHqhBAgjNi9AjEnl3yMql_gwh5nufj3fXILHoUzGntwSmnOvHOBe_t9SnNWkWwR8ufTrluZ5Q-74Rvq12WLabP70p-WZUOK-XLggJwUogCxiiAteBHIKJAlAjagFlDRNURVF1XJNE9JChDyEWBBFlUCAoQoVWWDQGylYb7kazqyFIcnDKtNtRl1qIW9GgkNRj7oPOdORgupL6OuWtmYmPgVDkzYaT8JNg6ozzVq_ZTNjnQVaX1oC9jGbXaOWbcOcbP1OcfDGM-_kzLbkHk-ya5j3nW5d823NCtFkHz0hZuNU5uy0Ju8acR21SIiAN0eBJ8fVYYqqk2gvHZ0_x6FV4OBA3Yo99fmo20O6vY5fq8oLx_1t0t93l12XTuEwyfso8Ssp1oNikyDu5xfHoIsZ:1tgcgk:apsosa0mSVVKv2jU6EIBywUxzGfWtCw22sjRFTwlfHM', '2025-02-21 23:43:30.048033'),
('xxlybf1muq0ct2eluhribpnqmo4izmlj', '.eJxVTktzgjAQ_i-cqwPhFXpTogyMkFopWC5MgFACRKnRwdLpf2-YXuphZ2f3e34rObldm_wm6CVnlfKsAOXp_68gZUdPM0CGQSw5q6qejuRCxXLDCevXf_jD8ejQENHMvqCiNaiBqRNIalUHZgEMA0CH2jU0HMeyLct2KsfRilqHKoRE03WbQkCgDS1Tk6YXWsvcZnE9yxRpSb-CpvBKhlngv02-FjFf-KdXs3R9y--GY-IGzlKS1AJc-6J3VHpc9357ZiVPuJyJuFLAE2MWhHE5YdSZIVpN2B0ZSbeq5N6jKTRw_GHOe-cGn5XXzYE99jYmRmv-Pm1ZFJdqhnqOUaiHaA8wWo04DroMvbbRYS6VTNkxqEm6Z7iVpXwxDvdkBJYWZ8H-INIXwCLGYZlqeVoaRebtxr6z2kUnlJ9fg8mJ0g:1tgcfa:QJr9TfIcYJ1fqe868wd5oJB3ZKcKy2tyVNxuRsEbMVw', '2025-02-21 23:42:18.763086'),
('y6ypt41y15khzm8jqq70xjz117bxvniu', '.eJxVjktzgkAQhP8L58TaXViU3BTFWipIogjKxdoXxcLiCyyUVP57ILnEwxxmuvvr-TIO9Nbkh1strwcljDcDGi__b4zyUh4HgZ7P9ahSQmjZ0qusR4uKKj3705-WZ0JO67yPS4eZDs4Qo8KkEwcJSKHIABRWBsZIUIuPgTXGFgbMhALbDuWASc6xxNlEIN5DrzLre_PX5tS3DMiHn7MlV6HyybYjcKVITY5rzF1ik_K8i13fGfUmwFCjmXaA3M00KU6KV3HVT0fdPlDF1hAIIn4PihKt5sRcbVpFEw_03vuqWzzCaN-FEYfvrn8Ry3Io1OlyXaZzL98XizadB2BfeUUYaZUmqQ66LQoHXlfi4PepuEt3fkaTTxUWnjMaPhHowNqjlXAdxHaCL5jjaaZIM-VAfhwRjDb25ZZbxvcPIqiMqg:1rvQBD:KmW6jZmb9Mv_leDH-tUKyOtA7zOPfKT73JvBEchm9Qc', '2024-04-26 18:19:35.371296'),
('yhddsdznv8ocmreparvd9sbjj1xzwpzq', '.eJxVjctygjAUht-FdWVCIGq6U0QKU2BsBYENE5Ig4aIoOhY6ffeG6aYuzuI__-X7VjJyv5XZvefXTDDlVdGUl_-_nNCanyaDdF2vtoKxhj_Ilfeq1RLRrP_8J_G8UJK-lHWOcx2jAuaE6WSJIdOIxgqgMaMAC8iIQRfAWCADgVzXGJpjQkHOKUUcFUsGqRy98kJyy9ntLCnT5OCWuU1FIFwnHB3NF07vnD4QNZ25U3dxZLpYlSGQw1uTNxjweN041VnQNmrljcSUhTYypoK3T5A_HqG3CaH_-RDksAUy--VXtR5skodXJdq76V6YXU_Ayh9ZlW6SMdgfB68KQQITmTuiYL8bUttCPnRAam9Lb2KcojGN3YIcdiKotlgdAOlTeJ_Fb1VodVlheUXbX2YWxtmxXukmHFZd_DXvM1wrP7-jyYuW:1qu30z:o-AGXwJf1Vud6Z4R87ExtrfX4LtCgK5p1QVb2oNbXSU', '2023-11-03 22:51:05.684871'),
('yiow50jxe6b6zqsoxdgyrc8swxeapmio', '.eJxVjs1ygjAUhd-FdetA-Eu6FNSGFqiWArpxAgklIagFHZBO371xuqmLu7j3nPOd-63tyeVc7y896_acak8a0B7-3wpSNuxwE8jp1M9aTqlkA-lYP1u0hMv5n3633BNq0tc3LqCsAhWwTQJJpZvALoBlAYiYW0ELIcd1HBdRhIyiMqEOITFM02UQEOhCxzYUtGOV6q0fz0fVopDsGtTFquQxD_DHhI2I4x4fNnbpYQc3pzz1AjRTJr0AZ1lIpLN8LrE48rJNWzUT8VSgTa1bIEzKKfYbO_Sba8gHTrKlrrxjNIVWnDRDJPD11Qu-6KpRhXiM_I3cJltjJxZDNC30rfgcY7-0t20k4mQpQkFllGEzer89lU67PKhItuaxUE8duOic3frZKDEe8eZc08I2NvZax0tJd7kp0Usw5m9-Nh-0n18xrYrw:1tgctq:ik8Q6VKrnmoqZFnLjR1OZKIGmyLm00vl7DovAj6PvH4', '2025-02-21 23:57:02.508204'),
('ylllap8apyrx7mcjwo1h3bs2ghn9ntu8', '.eJxVjslygzAQRP-Fc-ICsUm5BfACZUHswmC4uASIIDY7xhSxUvn3iOQSH-Yw092v50s6kfFWncaBXk-skF4kID39v2Ukb2g_C-RyGRYdK4qWTuRKh8WyI6y1_vSH5ZFQkaGauaCgJSiBrhJISlkFegY0DUBEzRJqCBmmYZioQEjJShXKEBJFVU0KAYEmNHRFQK-0FL3V8-0sWgSS3r0qW-csYJ574K7iM3dw-72e267hNpdjZHtoIUxyBm5t1iKZHq3Wrc8s76JODCe2CHSRNgdwmPMgfOW4TkBgT4zEK1l4P32OdezgO-aJtrW9j2LdzIUt7tLGjyMWrNMqjXdyUvttEu94Ei657-wFxdVw2Kjp71MRT49eSeIdC2rxVBb1-cbJFTgxbI1OwTfevvMP07Zf6cPzYOmbd6Ygz3sbD9L3D_gQio4:1tgnlA:k8sscl6pPHCkrIpVzfSpSp_fAPfGWbJenZJAIpsBAO8', '2025-02-22 11:32:48.184914'),
('yrzlof71c7yraycstx60ttwpf0rqqo8x', '.eJxVjktvgzAQhP8L5zYC87J7S6CNTApWXoTkggwYYWNCColIqfrfa9pLc9jD7sx-M19aSm_XKr31rEt5ob1oQHv6f8toXrPzJNDLpZ81vCgkG2jH-tlrQ7lc_OkPyyOhon01cUHBSlAC26SQlroJ7AxYFoCIuSW0EHJcx3FRgZCRlSbUIaSGaboMAgpd6NiGgnasVLnV87VVKQrJPoMqW-ac8ADvR2xEHPf4vLFzDzu4viSxF6CZMukZuMpMIp0lC4lFy_MmbtSM1FMPTWxND-EuH4lf26G_Nok3cHp405X3Ho2hRXb1oHTr3Qs-imWtArEe-Sd5bH41PQR7PRLh51FU4rSTgviyIbtwIIdYRNupVDyekqCkhzUnQpXatLfWzDbO3ZgXbDjSYjs_g1Xds70YrdUCdwZqRC5TkmDt-wfAlYrS:1tgcmg:e2wQGyNRglo-aw3QB2RHLAq4GjGu8j0qceWoohf7kjQ', '2025-02-21 23:49:38.625631'),
('z3ii3uoe6w9d7t9wice2pzy55ktophbn', '.eJxVjctygjAUht-FdcuES0S6q6gMtEB1FIWNE5Jgwk0LUiSdvnvDdFMX_-Kc__J9KyfU39ip72h74kR5UTTl6f8vQ7ikzWSg67VTa05IRQfU0k5d1YhXiz__4XhcYKhjsk7tzLBhrmeIGGhu60RDGsmBRswcWDpBJraAaUETgszQCJzZCIOMYgwpzOdEx3K0pbnksufbRVKmydFnmYt5xH1vLzwt5F7nNVuIHW_mlddj7Pi2KkMg029VVtmAHheVV1w4ruNaSiBHFurYnArBLoGhwFq4w3o4Dhwd1kBm72FRGqHYa-EyMd4d_5O45QRkkZuMiXiFqetXoViB6JByKZa6Gz3deSIoyjEQ2yKaGE0s0qOfo8OGR8XaVhu7Wfr1PbC6mTXqH_cVa1B6PrdvwzInufG573q26Zsh-jorP7_5FI3l:1qtbkh:ppWI-oNB_IziRAyDRgXh0hZsgouYwLIk3fpKtCFa0Pg', '2023-11-02 17:44:27.256992'),
('zaa4vqkqv6fbw4q5nt25et6yqjxmazs2', '.eJxVjklzgkAQhf8L50gNy6jkFhHJTGQoN1wu1mwUA4wbGoVU_nsgucRDH7rfe9_rL2NPb9dsf6vkZa-E8WpYxsv_G6O8kIdOoKdTZWolRCnv9CIrM9BUlaM__Wl5JmS0ytq49JjjwdRmVDh06NnCopZIgSXcFAxsQV0-AO4AuhAwxxKw71EOmOQcSpgOhc1b6EWmbW_Wux7blg5Z44yFXMUKo1WDLKJQhQ5zyH3UR8Vpk_jYM1sTYPa1ZKUH5GZUovyouE50Ow3124BO3C4QLfkjygsrHhc18e-Krieg9T5IE9TxcuWSHIGpj88iLLpCTfLA3q4nOspxEYUzQMZvMF6WKlpiRfTWjvRcE3undr9PJc1ug1O6nqk4n3hmFX6wg1x8ztDijsviQkV6uqL3sJnVovA16TtWL5gGjJ7vxvcPB76NGQ:1rvOmu:eCp1LPMcSPegB0wTF3OzcmDStusZzh8hfIjrf9kKuXU', '2024-04-26 16:50:24.942047'),
('zcvgu1ya0iyj6bfwphnkuw0cp8m7hhwm', '.eJxVjktvgzAQhP8L5zaC5WX3lkCCjGJQUgokl8iAAQfIi0S0VP3vNeqlOexhd2a-2W_lwB73-vDo-e0gCuVNAeXl_y1jecNPk8Aul37WiaJo-cBuvJ8tOybaxZ_-tDwTatbXExcKXkIJps4QK1UdzAwMAxDmdokMjC3bsmxcYKxlpY5UhJim6zZHwJCNLFOT0BsvZW_9ej_LFonkX36debkIhU8-RqIFgvTktDVzh1ikuaSx4-OZNKkZ3NusxSpPFy05nkXexZ2ckTky0MXGFKBRPoZuY1I316kYBEtWqvR-BiM1wqgZAjf_Wjv-tfCaqbAOklVLYTmEUQVhNFd3EIswIkCToN0n24Z6vgiizbh7n56Kx33qlyzZiPAon6poQwOilhCt17oFHqTY1sbYNDq8PrlGNUB1TYeRu8lc-fkFkXWJAg:1tgcrQ:VYbq0wlUBsSl6GgcOnEn_Zq9A5nLtglzna_sV6bIKkQ', '2025-02-21 23:54:32.924375'),
('zmztxykx831zgsadgiii63emifsgsvwt', '.eJxVjktTgzAUhf8La-1AeAV3Fkon2CRjB-ljwwQIEgK0Ah0qjv_dVDd2cRf3nnO-c7-0lF3GKr0MvE9FoT1pQHv4f8tYLnl3E9j5PCxaURQNn1jPh8WqZaJZ_ul3yz2hYkN144KCl6AEtskgK3UT2BmwLAA97pbQ8jzHdRzXKzzPyEoT6hAywzRdDgGDLnRsQ0F7Xqre6nE8qRaF5J9Rla1zQUWE3mZkEIEG1G3t3EcOkud94kfeQpn0DIxN1ng63y8bVJ9E3iatmpn5KtAm1i2A43ymgbRx8GwSMQm2C3XlvZIZWzR-t8mcg40ffRRrqQoRONbYIHMhjy2-klrqNIgEXYeSBiuAQSQxCGsSY-Pw-1QyH_dRyXavgtbqqQ1DGdcP-zzOqXnAL2lfj8Tt7KmjrHdCq-EnOG0dcemh9v0DhTiJ4g:1tgcgC:d4Rhylgjz6vWnSndIBwjIk-Ez4ururGN1t5e5wwJBlU', '2025-02-21 23:42:56.884602');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_anexo`
--

CREATE TABLE `pqrs_anexo` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `nombre_ane` varchar(256) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_asignacion`
--

CREATE TABLE `pqrs_asignacion` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `fecha_asignacion` date NOT NULL,
  `asignadoId_id` bigint(20) NOT NULL,
  `pqrs_id` bigint(20) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_pqrs`
--

CREATE TABLE `pqrs_pqrs` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `titulo` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `persona_id` bigint(20) NOT NULL,
  `tipopqrs_id` bigint(20) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_respuesta`
--

CREATE TABLE `pqrs_respuesta` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `anexo_id` bigint(20) NOT NULL,
  `pqrs_id` bigint(20) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_tipopqrs`
--

CREATE TABLE `pqrs_tipopqrs` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `tipo` varchar(256) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_anexos`
--

CREATE TABLE `solicitudes_anexos` (
  `id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `solicitudId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_contenidosolicitud`
--

CREATE TABLE `solicitudes_contenidosolicitud` (
  `id` bigint(20) NOT NULL,
  `resumen` varchar(1500) NOT NULL,
  `palabras_claves` varchar(256) NOT NULL,
  `abstract` varchar(256) NOT NULL,
  `Keywords` varchar(256) NOT NULL,
  `introduccion` varchar(2000) NOT NULL,
  `materi_metodos` varchar(2000) NOT NULL,
  `result_discu` varchar(2000) NOT NULL,
  `agradecimientos` varchar(1500) NOT NULL,
  `literact_citada` varchar(2000) NOT NULL,
  `archivo_adjunto` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_estadoseguimiento`
--

CREATE TABLE `solicitudes_estadoseguimiento` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_pasosseguimiento`
--

CREATE TABLE `solicitudes_pasosseguimiento` (
  `id` bigint(20) NOT NULL,
  `nivel` int(11) NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `dias_programacion` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_revista`
--

CREATE TABLE `solicitudes_revista` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(1500) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_seguimiento`
--

CREATE TABLE `solicitudes_seguimiento` (
  `id` bigint(20) NOT NULL,
  `fecha_asignacion` date DEFAULT NULL,
  `fecha_programacion` date DEFAULT NULL,
  `fecha_evaluacion` date DEFAULT NULL,
  `correciones` varchar(100) DEFAULT NULL,
  `formato_evaluacion` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `cambio_relevante` tinyint(1) NOT NULL,
  `estado_seguimiento_id` bigint(20) DEFAULT NULL,
  `pasos_seguimiento_id` bigint(20) DEFAULT NULL,
  `responsableId_id` bigint(20) DEFAULT NULL,
  `solicitudId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_solicitud`
--

CREATE TABLE `solicitudes_solicitud` (
  `id` bigint(20) NOT NULL,
  `titulo_articulo` varchar(200) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `afiliacion` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `contenidoSolicitud_id` bigint(20) DEFAULT NULL,
  `revista_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_solicitud_autores`
--

CREATE TABLE `solicitudes_solicitud_autores` (
  `id` bigint(20) NOT NULL,
  `solicitud_id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authenticacion_customuser`
--
ALTER TABLE `authenticacion_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `authenticacion_customuser_groups`
--
ALTER TABLE `authenticacion_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authenticacion_customuse_customuser_id_group_id_acbdc37a_uniq` (`customuser_id`,`group_id`),
  ADD KEY `authenticacion_custo_group_id_31774927_fk_auth_grou` (`group_id`);

--
-- Indices de la tabla `authenticacion_customuser_user_permissions`
--
ALTER TABLE `authenticacion_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authenticacion_customuse_customuser_id_permission_e70b967a_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `authenticacion_custo_permission_id_f38934e1_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `authenticacion_documenttype`
--
ALTER TABLE `authenticacion_documenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authenticacion_formacion`
--
ALTER TABLE `authenticacion_formacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authenticacion_forma_autor_id_3a5a4a79_fk_authentic` (`autor_id`),
  ADD KEY `authenticacion_forma_nivel_formacion_id_c29cd02f_fk_authentic` (`nivel_formacion_id`);

--
-- Indices de la tabla `authenticacion_gender`
--
ALTER TABLE `authenticacion_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authenticacion_nivelformacion`
--
ALTER TABLE `authenticacion_nivelformacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authenticacion_person`
--
ALTER TABLE `authenticacion_person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identificacion` (`identificacion`),
  ADD UNIQUE KEY `authenticacion_person_nombres_identificacion_8baedbae_uniq` (`nombres`,`identificacion`),
  ADD KEY `authenticacion_perso_user_id_d4e3c51d_fk_authentic` (`user_id`);

--
-- Indices de la tabla `authenticacion_resource`
--
ALTER TABLE `authenticacion_resource`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authenticacion_resourcerol`
--
ALTER TABLE `authenticacion_resourcerol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authenticacion_resou_role_id_0c8f3df5_fk_authentic` (`role_id`),
  ADD KEY `authenticacion_resou_resource_id_dcf90ece_fk_authentic` (`resource_id`);

--
-- Indices de la tabla `authenticacion_rol`
--
ALTER TABLE `authenticacion_rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `authenticacion_userrol`
--
ALTER TABLE `authenticacion_userrol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authenticacion_userrol_userId_id_rolesId_id_549f1034_uniq` (`userId_id`,`rolesId_id`),
  ADD KEY `authenticacion_userr_rolesId_id_860031e1_fk_authentic` (`rolesId_id`);

--
-- Indices de la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_authentic` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_rest_passwordreset_resetpasswordtoken`
--
ALTER TABLE `django_rest_passwordreset_resetpasswordtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_rest_passwordreset_resetpasswordtoken_key_f1b65873_uniq` (`key`),
  ADD KEY `django_rest_password_user_id_e8015b11_fk_authentic` (`user_id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `pqrs_anexo`
--
ALTER TABLE `pqrs_anexo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_anexo_userCreate_id_40527a1a_fk_authentic` (`userCreate_id`),
  ADD KEY `pqrs_anexo_userUpdate_id_89e0b248_fk_authentic` (`userUpdate_id`);

--
-- Indices de la tabla `pqrs_asignacion`
--
ALTER TABLE `pqrs_asignacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_asignacion_asignadoId_id_a34a1e8d_fk_authentic` (`asignadoId_id`),
  ADD KEY `pqrs_asignacion_pqrs_id_77160a21_fk_pqrs_pqrs_id` (`pqrs_id`),
  ADD KEY `pqrs_asignacion_userCreate_id_f9e1b3f9_fk_authentic` (`userCreate_id`),
  ADD KEY `pqrs_asignacion_userUpdate_id_5e9bfd35_fk_authentic` (`userUpdate_id`);

--
-- Indices de la tabla `pqrs_pqrs`
--
ALTER TABLE `pqrs_pqrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_pqrs_tipopqrs_id_93883a56_fk_pqrs_tipopqrs_id` (`tipopqrs_id`),
  ADD KEY `pqrs_pqrs_userCreate_id_e35a68ac_fk_authenticacion_customuser_id` (`userCreate_id`),
  ADD KEY `pqrs_pqrs_userUpdate_id_38742320_fk_authenticacion_customuser_id` (`userUpdate_id`),
  ADD KEY `pqrs_pqrs_persona_id_73f59a2c_fk_authenticacion_customuser_id` (`persona_id`);

--
-- Indices de la tabla `pqrs_respuesta`
--
ALTER TABLE `pqrs_respuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_respuesta_anexo_id_69e86075_fk_pqrs_anexo_id` (`anexo_id`),
  ADD KEY `pqrs_respuesta_pqrs_id_890c9414_fk_pqrs_pqrs_id` (`pqrs_id`),
  ADD KEY `pqrs_respuesta_userCreate_id_4e037754_fk_authentic` (`userCreate_id`),
  ADD KEY `pqrs_respuesta_userUpdate_id_2d68100c_fk_authentic` (`userUpdate_id`);

--
-- Indices de la tabla `pqrs_tipopqrs`
--
ALTER TABLE `pqrs_tipopqrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_tipopqrs_userCreate_id_599e216c_fk_authentic` (`userCreate_id`),
  ADD KEY `pqrs_tipopqrs_userUpdate_id_288b0599_fk_authentic` (`userUpdate_id`);

--
-- Indices de la tabla `solicitudes_anexos`
--
ALTER TABLE `solicitudes_anexos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitudes_anexos_solicitudId_id_69959b43_fk_solicitud` (`solicitudId_id`);

--
-- Indices de la tabla `solicitudes_contenidosolicitud`
--
ALTER TABLE `solicitudes_contenidosolicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes_estadoseguimiento`
--
ALTER TABLE `solicitudes_estadoseguimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes_pasosseguimiento`
--
ALTER TABLE `solicitudes_pasosseguimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes_revista`
--
ALTER TABLE `solicitudes_revista`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`) USING HASH;

--
-- Indices de la tabla `solicitudes_seguimiento`
--
ALTER TABLE `solicitudes_seguimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitudes_seguimie_estado_seguimiento_i_fa288205_fk_solicitud` (`estado_seguimiento_id`),
  ADD KEY `solicitudes_seguimie_pasos_seguimiento_id_aa6f59ea_fk_solicitud` (`pasos_seguimiento_id`),
  ADD KEY `solicitudes_seguimie_responsableId_id_69cd91ad_fk_authentic` (`responsableId_id`),
  ADD KEY `solicitudes_seguimie_solicitudId_id_4e826602_fk_solicitud` (`solicitudId_id`);

--
-- Indices de la tabla `solicitudes_solicitud`
--
ALTER TABLE `solicitudes_solicitud`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contenidoSolicitud_id` (`contenidoSolicitud_id`),
  ADD KEY `solicitudes_solicitu_revista_id_9c68e774_fk_solicitud` (`revista_id`);

--
-- Indices de la tabla `solicitudes_solicitud_autores`
--
ALTER TABLE `solicitudes_solicitud_autores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitudes_solicitud_au_solicitud_id_customuser__6c024ad2_uniq` (`solicitud_id`,`customuser_id`),
  ADD KEY `solicitudes_solicitu_customuser_id_79b3ffc6_fk_authentic` (`customuser_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authenticacion_customuser`
--
ALTER TABLE `authenticacion_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `authenticacion_customuser_groups`
--
ALTER TABLE `authenticacion_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authenticacion_customuser_user_permissions`
--
ALTER TABLE `authenticacion_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authenticacion_documenttype`
--
ALTER TABLE `authenticacion_documenttype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authenticacion_formacion`
--
ALTER TABLE `authenticacion_formacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authenticacion_gender`
--
ALTER TABLE `authenticacion_gender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authenticacion_nivelformacion`
--
ALTER TABLE `authenticacion_nivelformacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authenticacion_person`
--
ALTER TABLE `authenticacion_person`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `authenticacion_resource`
--
ALTER TABLE `authenticacion_resource`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `authenticacion_resourcerol`
--
ALTER TABLE `authenticacion_resourcerol`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `authenticacion_rol`
--
ALTER TABLE `authenticacion_rol`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `authenticacion_userrol`
--
ALTER TABLE `authenticacion_userrol`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `django_rest_passwordreset_resetpasswordtoken`
--
ALTER TABLE `django_rest_passwordreset_resetpasswordtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_anexo`
--
ALTER TABLE `pqrs_anexo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_asignacion`
--
ALTER TABLE `pqrs_asignacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_pqrs`
--
ALTER TABLE `pqrs_pqrs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_respuesta`
--
ALTER TABLE `pqrs_respuesta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_tipopqrs`
--
ALTER TABLE `pqrs_tipopqrs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_anexos`
--
ALTER TABLE `solicitudes_anexos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_contenidosolicitud`
--
ALTER TABLE `solicitudes_contenidosolicitud`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_estadoseguimiento`
--
ALTER TABLE `solicitudes_estadoseguimiento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_pasosseguimiento`
--
ALTER TABLE `solicitudes_pasosseguimiento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_revista`
--
ALTER TABLE `solicitudes_revista`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_seguimiento`
--
ALTER TABLE `solicitudes_seguimiento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_solicitud`
--
ALTER TABLE `solicitudes_solicitud`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_solicitud_autores`
--
ALTER TABLE `solicitudes_solicitud_autores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authenticacion_customuser_groups`
--
ALTER TABLE `authenticacion_customuser_groups`
  ADD CONSTRAINT `authenticacion_custo_customuser_id_c89cd774_fk_authentic` FOREIGN KEY (`customuser_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `authenticacion_custo_group_id_31774927_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `authenticacion_customuser_user_permissions`
--
ALTER TABLE `authenticacion_customuser_user_permissions`
  ADD CONSTRAINT `authenticacion_custo_customuser_id_a88f482e_fk_authentic` FOREIGN KEY (`customuser_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `authenticacion_custo_permission_id_f38934e1_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `authenticacion_formacion`
--
ALTER TABLE `authenticacion_formacion`
  ADD CONSTRAINT `authenticacion_forma_autor_id_3a5a4a79_fk_authentic` FOREIGN KEY (`autor_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `authenticacion_forma_nivel_formacion_id_c29cd02f_fk_authentic` FOREIGN KEY (`nivel_formacion_id`) REFERENCES `authenticacion_nivelformacion` (`id`);

--
-- Filtros para la tabla `authenticacion_person`
--
ALTER TABLE `authenticacion_person`
  ADD CONSTRAINT `authenticacion_perso_user_id_d4e3c51d_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `authenticacion_resourcerol`
--
ALTER TABLE `authenticacion_resourcerol`
  ADD CONSTRAINT `authenticacion_resou_resource_id_dcf90ece_fk_authentic` FOREIGN KEY (`resource_id`) REFERENCES `authenticacion_resource` (`id`),
  ADD CONSTRAINT `authenticacion_resou_role_id_0c8f3df5_fk_authentic` FOREIGN KEY (`role_id`) REFERENCES `authenticacion_rol` (`id`);

--
-- Filtros para la tabla `authenticacion_userrol`
--
ALTER TABLE `authenticacion_userrol`
  ADD CONSTRAINT `authenticacion_userr_rolesId_id_860031e1_fk_authentic` FOREIGN KEY (`rolesId_id`) REFERENCES `authenticacion_rol` (`id`),
  ADD CONSTRAINT `authenticacion_userr_userId_id_6305d6aa_fk_authentic` FOREIGN KEY (`userId_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_authenticacion_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `django_rest_passwordreset_resetpasswordtoken`
--
ALTER TABLE `django_rest_passwordreset_resetpasswordtoken`
  ADD CONSTRAINT `django_rest_password_user_id_e8015b11_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_anexo`
--
ALTER TABLE `pqrs_anexo`
  ADD CONSTRAINT `pqrs_anexo_userCreate_id_40527a1a_fk_authentic` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_anexo_userUpdate_id_89e0b248_fk_authentic` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_asignacion`
--
ALTER TABLE `pqrs_asignacion`
  ADD CONSTRAINT `pqrs_asignacion_asignadoId_id_a34a1e8d_fk_authentic` FOREIGN KEY (`asignadoId_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_asignacion_pqrs_id_77160a21_fk_pqrs_pqrs_id` FOREIGN KEY (`pqrs_id`) REFERENCES `pqrs_pqrs` (`id`),
  ADD CONSTRAINT `pqrs_asignacion_userCreate_id_f9e1b3f9_fk_authentic` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_asignacion_userUpdate_id_5e9bfd35_fk_authentic` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_pqrs`
--
ALTER TABLE `pqrs_pqrs`
  ADD CONSTRAINT `pqrs_pqrs_persona_id_73f59a2c_fk_authenticacion_customuser_id` FOREIGN KEY (`persona_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_pqrs_tipopqrs_id_93883a56_fk_pqrs_tipopqrs_id` FOREIGN KEY (`tipopqrs_id`) REFERENCES `pqrs_tipopqrs` (`id`),
  ADD CONSTRAINT `pqrs_pqrs_userCreate_id_e35a68ac_fk_authenticacion_customuser_id` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_pqrs_userUpdate_id_38742320_fk_authenticacion_customuser_id` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_respuesta`
--
ALTER TABLE `pqrs_respuesta`
  ADD CONSTRAINT `pqrs_respuesta_anexo_id_69e86075_fk_pqrs_anexo_id` FOREIGN KEY (`anexo_id`) REFERENCES `pqrs_anexo` (`id`),
  ADD CONSTRAINT `pqrs_respuesta_pqrs_id_890c9414_fk_pqrs_pqrs_id` FOREIGN KEY (`pqrs_id`) REFERENCES `pqrs_pqrs` (`id`),
  ADD CONSTRAINT `pqrs_respuesta_userCreate_id_4e037754_fk_authentic` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_respuesta_userUpdate_id_2d68100c_fk_authentic` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_tipopqrs`
--
ALTER TABLE `pqrs_tipopqrs`
  ADD CONSTRAINT `pqrs_tipopqrs_userCreate_id_599e216c_fk_authentic` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_tipopqrs_userUpdate_id_288b0599_fk_authentic` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `solicitudes_anexos`
--
ALTER TABLE `solicitudes_anexos`
  ADD CONSTRAINT `solicitudes_anexos_solicitudId_id_69959b43_fk_solicitud` FOREIGN KEY (`solicitudId_id`) REFERENCES `solicitudes_solicitud` (`id`);

--
-- Filtros para la tabla `solicitudes_seguimiento`
--
ALTER TABLE `solicitudes_seguimiento`
  ADD CONSTRAINT `solicitudes_seguimie_estado_seguimiento_i_fa288205_fk_solicitud` FOREIGN KEY (`estado_seguimiento_id`) REFERENCES `solicitudes_estadoseguimiento` (`id`),
  ADD CONSTRAINT `solicitudes_seguimie_pasos_seguimiento_id_aa6f59ea_fk_solicitud` FOREIGN KEY (`pasos_seguimiento_id`) REFERENCES `solicitudes_pasosseguimiento` (`id`),
  ADD CONSTRAINT `solicitudes_seguimie_responsableId_id_69cd91ad_fk_authentic` FOREIGN KEY (`responsableId_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `solicitudes_seguimie_solicitudId_id_4e826602_fk_solicitud` FOREIGN KEY (`solicitudId_id`) REFERENCES `solicitudes_solicitud` (`id`);

--
-- Filtros para la tabla `solicitudes_solicitud`
--
ALTER TABLE `solicitudes_solicitud`
  ADD CONSTRAINT `solicitudes_solicitu_contenidoSolicitud_i_c5d7b09e_fk_solicitud` FOREIGN KEY (`contenidoSolicitud_id`) REFERENCES `solicitudes_contenidosolicitud` (`id`),
  ADD CONSTRAINT `solicitudes_solicitu_revista_id_9c68e774_fk_solicitud` FOREIGN KEY (`revista_id`) REFERENCES `solicitudes_revista` (`id`);

--
-- Filtros para la tabla `solicitudes_solicitud_autores`
--
ALTER TABLE `solicitudes_solicitud_autores`
  ADD CONSTRAINT `solicitudes_solicitu_customuser_id_79b3ffc6_fk_authentic` FOREIGN KEY (`customuser_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `solicitudes_solicitu_solicitud_id_20545c2c_fk_solicitud` FOREIGN KEY (`solicitud_id`) REFERENCES `solicitudes_solicitud` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
