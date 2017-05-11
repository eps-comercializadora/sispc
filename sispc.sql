-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2017 at 08:44 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispc`
--
CREATE DATABASE IF NOT EXISTS `sispc` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `sispc`;

-- --------------------------------------------------------

--
-- Table structure for table `capacidades`
--

DROP TABLE IF EXISTS `capacidades`;
CREATE TABLE `capacidades` (
  `id_capacidad` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `cap_horneado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cap_almacen` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cap_instalada` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `capital` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `id_estado`, `ciudad`, `capital`) VALUES
(1, 1, 'Maroa', 0),
(2, 1, 'Puerto Ayacucho', 1),
(3, 1, 'San Fernando de Atabapo', 0),
(4, 2, 'Anaco', 0),
(5, 2, 'Aragua de Barcelona', 0),
(6, 2, 'Barcelona', 1),
(7, 2, 'Boca de Uchire', 0),
(8, 2, 'Cantaura', 0),
(9, 2, 'Clarines', 0),
(10, 2, 'El Chaparro', 0),
(11, 2, 'El Pao Anzoátegui', 0),
(12, 2, 'El Tigre', 0),
(13, 2, 'El Tigrito', 0),
(14, 2, 'Guanape', 0),
(15, 2, 'Guanta', 0),
(16, 2, 'Lechería', 0),
(17, 2, 'Onoto', 0),
(18, 2, 'Pariaguán', 0),
(19, 2, 'Píritu', 0),
(20, 2, 'Puerto La Cruz', 0),
(21, 2, 'Puerto Píritu', 0),
(22, 2, 'Sabana de Uchire', 0),
(23, 2, 'San Mateo Anzoátegui', 0),
(24, 2, 'San Pablo Anzoátegui', 0),
(25, 2, 'San Tomé', 0),
(26, 2, 'Santa Ana de Anzoátegui', 0),
(27, 2, 'Santa Fe Anzoátegui', 0),
(28, 2, 'Santa Rosa', 0),
(29, 2, 'Soledad', 0),
(30, 2, 'Urica', 0),
(31, 2, 'Valle de Guanape', 0),
(43, 3, 'Achaguas', 0),
(44, 3, 'Biruaca', 0),
(45, 3, 'Bruzual', 0),
(46, 3, 'El Amparo', 0),
(47, 3, 'El Nula', 0),
(48, 3, 'Elorza', 0),
(49, 3, 'Guasdualito', 0),
(50, 3, 'Mantecal', 0),
(51, 3, 'Puerto Páez', 0),
(52, 3, 'San Fernando de Apure', 1),
(53, 3, 'San Juan de Payara', 0),
(54, 4, 'Barbacoas', 0),
(55, 4, 'Cagua', 0),
(56, 4, 'Camatagua', 0),
(58, 4, 'Choroní', 0),
(59, 4, 'Colonia Tovar', 0),
(60, 4, 'El Consejo', 0),
(61, 4, 'La Victoria', 0),
(62, 4, 'Las Tejerías', 0),
(63, 4, 'Magdaleno', 0),
(64, 4, 'Maracay', 1),
(65, 4, 'Ocumare de La Costa', 0),
(66, 4, 'Palo Negro', 0),
(67, 4, 'San Casimiro', 0),
(68, 4, 'San Mateo', 0),
(69, 4, 'San Sebastián', 0),
(70, 4, 'Santa Cruz de Aragua', 0),
(71, 4, 'Tocorón', 0),
(72, 4, 'Turmero', 0),
(73, 4, 'Villa de Cura', 0),
(74, 4, 'Zuata', 0),
(75, 5, 'Barinas', 1),
(76, 5, 'Barinitas', 0),
(77, 5, 'Barrancas', 0),
(78, 5, 'Calderas', 0),
(79, 5, 'Capitanejo', 0),
(80, 5, 'Ciudad Bolivia', 0),
(81, 5, 'El Cantón', 0),
(82, 5, 'Las Veguitas', 0),
(83, 5, 'Libertad de Barinas', 0),
(84, 5, 'Sabaneta', 0),
(85, 5, 'Santa Bárbara de Barinas', 0),
(86, 5, 'Socopó', 0),
(87, 6, 'Caicara del Orinoco', 0),
(88, 6, 'Canaima', 0),
(89, 6, 'Ciudad Bolívar', 1),
(90, 6, 'Ciudad Piar', 0),
(91, 6, 'El Callao', 0),
(92, 6, 'El Dorado', 0),
(93, 6, 'El Manteco', 0),
(94, 6, 'El Palmar', 0),
(95, 6, 'El Pao', 0),
(96, 6, 'Guasipati', 0),
(97, 6, 'Guri', 0),
(98, 6, 'La Paragua', 0),
(99, 6, 'Matanzas', 0),
(100, 6, 'Puerto Ordaz', 0),
(101, 6, 'San Félix', 0),
(102, 6, 'Santa Elena de Uairén', 0),
(103, 6, 'Tumeremo', 0),
(104, 6, 'Unare', 0),
(105, 6, 'Upata', 0),
(106, 7, 'Bejuma', 0),
(107, 7, 'Belén', 0),
(108, 7, 'Campo de Carabobo', 0),
(109, 7, 'Canoabo', 0),
(110, 7, 'Central Tacarigua', 0),
(111, 7, 'Chirgua', 0),
(112, 7, 'Ciudad Alianza', 0),
(113, 7, 'El Palito', 0),
(114, 7, 'Guacara', 0),
(115, 7, 'Guigue', 0),
(116, 7, 'Las Trincheras', 0),
(117, 7, 'Los Guayos', 0),
(118, 7, 'Mariara', 0),
(119, 7, 'Miranda', 0),
(120, 7, 'Montalbán', 0),
(121, 7, 'Morón', 0),
(122, 7, 'Naguanagua', 0),
(123, 7, 'Puerto Cabello', 0),
(124, 7, 'San Joaquín', 0),
(125, 7, 'Tocuyito', 0),
(126, 7, 'Urama', 0),
(127, 7, 'Valencia', 1),
(128, 7, 'Vigirimita', 0),
(129, 8, 'Aguirre', 0),
(130, 8, 'Apartaderos Cojedes', 0),
(131, 8, 'Arismendi', 0),
(132, 8, 'Camuriquito', 0),
(133, 8, 'El Baúl', 0),
(134, 8, 'El Limón', 0),
(135, 8, 'El Pao Cojedes', 0),
(136, 8, 'El Socorro', 0),
(137, 8, 'La Aguadita', 0),
(138, 8, 'Las Vegas', 0),
(139, 8, 'Libertad de Cojedes', 0),
(140, 8, 'Mapuey', 0),
(141, 8, 'Piñedo', 0),
(142, 8, 'Samancito', 0),
(143, 8, 'San Carlos', 1),
(144, 8, 'Sucre', 0),
(145, 8, 'Tinaco', 0),
(146, 8, 'Tinaquillo', 0),
(147, 8, 'Vallecito', 0),
(148, 9, 'Tucupita', 1),
(149, 24, 'Caracas', 1),
(150, 24, 'El Junquito', 0),
(151, 10, 'Adícora', 0),
(152, 10, 'Boca de Aroa', 0),
(153, 10, 'Cabure', 0),
(154, 10, 'Capadare', 0),
(155, 10, 'Capatárida', 0),
(156, 10, 'Chichiriviche', 0),
(157, 10, 'Churuguara', 0),
(158, 10, 'Coro', 1),
(159, 10, 'Cumarebo', 0),
(160, 10, 'Dabajuro', 0),
(161, 10, 'Judibana', 0),
(162, 10, 'La Cruz de Taratara', 0),
(163, 10, 'La Vela de Coro', 0),
(164, 10, 'Los Taques', 0),
(165, 10, 'Maparari', 0),
(166, 10, 'Mene de Mauroa', 0),
(167, 10, 'Mirimire', 0),
(168, 10, 'Pedregal', 0),
(169, 10, 'Píritu Falcón', 0),
(170, 10, 'Pueblo Nuevo Falcón', 0),
(171, 10, 'Puerto Cumarebo', 0),
(172, 10, 'Punta Cardón', 0),
(173, 10, 'Punto Fijo', 0),
(174, 10, 'San Juan de Los Cayos', 0),
(175, 10, 'San Luis', 0),
(176, 10, 'Santa Ana Falcón', 0),
(177, 10, 'Santa Cruz De Bucaral', 0),
(178, 10, 'Tocopero', 0),
(179, 10, 'Tocuyo de La Costa', 0),
(180, 10, 'Tucacas', 0),
(181, 10, 'Yaracal', 0),
(182, 11, 'Altagracia de Orituco', 0),
(183, 11, 'Cabruta', 0),
(184, 11, 'Calabozo', 0),
(185, 11, 'Camaguán', 0),
(196, 11, 'Chaguaramas Guárico', 0),
(197, 11, 'El Socorro', 0),
(198, 11, 'El Sombrero', 0),
(199, 11, 'Las Mercedes de Los Llanos', 0),
(200, 11, 'Lezama', 0),
(201, 11, 'Onoto', 0),
(202, 11, 'Ortíz', 0),
(203, 11, 'San José de Guaribe', 0),
(204, 11, 'San Juan de Los Morros', 1),
(205, 11, 'San Rafael de Laya', 0),
(206, 11, 'Santa María de Ipire', 0),
(207, 11, 'Tucupido', 0),
(208, 11, 'Valle de La Pascua', 0),
(209, 11, 'Zaraza', 0),
(210, 12, 'Aguada Grande', 0),
(211, 12, 'Atarigua', 0),
(212, 12, 'Barquisimeto', 1),
(213, 12, 'Bobare', 0),
(214, 12, 'Cabudare', 0),
(215, 12, 'Carora', 0),
(216, 12, 'Cubiro', 0),
(217, 12, 'Cují', 0),
(218, 12, 'Duaca', 0),
(219, 12, 'El Manzano', 0),
(220, 12, 'El Tocuyo', 0),
(221, 12, 'Guaríco', 0),
(222, 12, 'Humocaro Alto', 0),
(223, 12, 'Humocaro Bajo', 0),
(224, 12, 'La Miel', 0),
(225, 12, 'Moroturo', 0),
(226, 12, 'Quíbor', 0),
(227, 12, 'Río Claro', 0),
(228, 12, 'Sanare', 0),
(229, 12, 'Santa Inés', 0),
(230, 12, 'Sarare', 0),
(231, 12, 'Siquisique', 0),
(232, 12, 'Tintorero', 0),
(233, 13, 'Apartaderos Mérida', 0),
(234, 13, 'Arapuey', 0),
(235, 13, 'Bailadores', 0),
(236, 13, 'Caja Seca', 0),
(237, 13, 'Canaguá', 0),
(238, 13, 'Chachopo', 0),
(239, 13, 'Chiguara', 0),
(240, 13, 'Ejido', 0),
(241, 13, 'El Vigía', 0),
(242, 13, 'La Azulita', 0),
(243, 13, 'La Playa', 0),
(244, 13, 'Lagunillas Mérida', 0),
(245, 13, 'Mérida', 1),
(246, 13, 'Mesa de Bolívar', 0),
(247, 13, 'Mucuchíes', 0),
(248, 13, 'Mucujepe', 0),
(249, 13, 'Mucuruba', 0),
(250, 13, 'Nueva Bolivia', 0),
(251, 13, 'Palmarito', 0),
(252, 13, 'Pueblo Llano', 0),
(253, 13, 'Santa Cruz de Mora', 0),
(254, 13, 'Santa Elena de Arenales', 0),
(255, 13, 'Santo Domingo', 0),
(256, 13, 'Tabáy', 0),
(257, 13, 'Timotes', 0),
(258, 13, 'Torondoy', 0),
(259, 13, 'Tovar', 0),
(260, 13, 'Tucani', 0),
(261, 13, 'Zea', 0),
(262, 14, 'Araguita', 0),
(263, 14, 'Carrizal', 0),
(264, 14, 'Caucagua', 0),
(265, 14, 'Chaguaramas Miranda', 0),
(266, 14, 'Charallave', 0),
(267, 14, 'Chirimena', 0),
(268, 14, 'Chuspa', 0),
(269, 14, 'Cúa', 0),
(270, 14, 'Cupira', 0),
(271, 14, 'Curiepe', 0),
(272, 14, 'El Guapo', 0),
(273, 14, 'El Jarillo', 0),
(274, 14, 'Filas de Mariche', 0),
(275, 14, 'Guarenas', 0),
(276, 14, 'Guatire', 0),
(277, 14, 'Higuerote', 0),
(278, 14, 'Los Anaucos', 0),
(279, 14, 'Los Teques', 1),
(280, 14, 'Ocumare del Tuy', 0),
(281, 14, 'Panaquire', 0),
(282, 14, 'Paracotos', 0),
(283, 14, 'Río Chico', 0),
(284, 14, 'San Antonio de Los Altos', 0),
(285, 14, 'San Diego de Los Altos', 0),
(286, 14, 'San Fernando del Guapo', 0),
(287, 14, 'San Francisco de Yare', 0),
(288, 14, 'San José de Los Altos', 0),
(289, 14, 'San José de Río Chico', 0),
(290, 14, 'San Pedro de Los Altos', 0),
(291, 14, 'Santa Lucía', 0),
(292, 14, 'Santa Teresa', 0),
(293, 14, 'Tacarigua de La Laguna', 0),
(294, 14, 'Tacarigua de Mamporal', 0),
(295, 14, 'Tácata', 0),
(296, 14, 'Turumo', 0),
(297, 15, 'Aguasay', 0),
(298, 15, 'Aragua de Maturín', 0),
(299, 15, 'Barrancas del Orinoco', 0),
(300, 15, 'Caicara de Maturín', 0),
(301, 15, 'Caripe', 0),
(302, 15, 'Caripito', 0),
(303, 15, 'Chaguaramal', 0),
(305, 15, 'Chaguaramas Monagas', 0),
(307, 15, 'El Furrial', 0),
(308, 15, 'El Tejero', 0),
(309, 15, 'Jusepín', 0),
(310, 15, 'La Toscana', 0),
(311, 15, 'Maturín', 1),
(312, 15, 'Miraflores', 0),
(313, 15, 'Punta de Mata', 0),
(314, 15, 'Quiriquire', 0),
(315, 15, 'San Antonio de Maturín', 0),
(316, 15, 'San Vicente Monagas', 0),
(317, 15, 'Santa Bárbara', 0),
(318, 15, 'Temblador', 0),
(319, 15, 'Teresen', 0),
(320, 15, 'Uracoa', 0),
(321, 16, 'Altagracia', 0),
(322, 16, 'Boca de Pozo', 0),
(323, 16, 'Boca de Río', 0),
(324, 16, 'El Espinal', 0),
(325, 16, 'El Valle del Espíritu Santo', 0),
(326, 16, 'El Yaque', 0),
(327, 16, 'Juangriego', 0),
(328, 16, 'La Asunción', 1),
(329, 16, 'La Guardia', 0),
(330, 16, 'Pampatar', 0),
(331, 16, 'Porlamar', 0),
(332, 16, 'Puerto Fermín', 0),
(333, 16, 'Punta de Piedras', 0),
(334, 16, 'San Francisco de Macanao', 0),
(335, 16, 'San Juan Bautista', 0),
(336, 16, 'San Pedro de Coche', 0),
(337, 16, 'Santa Ana de Nueva Esparta', 0),
(338, 16, 'Villa Rosa', 0),
(339, 17, 'Acarigua', 0),
(340, 17, 'Agua Blanca', 0),
(341, 17, 'Araure', 0),
(342, 17, 'Biscucuy', 0),
(343, 17, 'Boconoito', 0),
(344, 17, 'Campo Elías', 0),
(345, 17, 'Chabasquén', 0),
(346, 17, 'Guanare', 1),
(347, 17, 'Guanarito', 0),
(348, 17, 'La Aparición', 0),
(349, 17, 'La Misión', 0),
(350, 17, 'Mesa de Cavacas', 0),
(351, 17, 'Ospino', 0),
(352, 17, 'Papelón', 0),
(353, 17, 'Payara', 0),
(354, 17, 'Pimpinela', 0),
(355, 17, 'Píritu de Portuguesa', 0),
(356, 17, 'San Rafael de Onoto', 0),
(357, 17, 'Santa Rosalía', 0),
(358, 17, 'Turén', 0),
(359, 18, 'Altos de Sucre', 0),
(360, 18, 'Araya', 0),
(361, 18, 'Cariaco', 0),
(362, 18, 'Carúpano', 0),
(363, 18, 'Casanay', 0),
(364, 18, 'Cumaná', 1),
(365, 18, 'Cumanacoa', 0),
(366, 18, 'El Morro Puerto Santo', 0),
(367, 18, 'El Pilar', 0),
(368, 18, 'El Poblado', 0),
(369, 18, 'Guaca', 0),
(370, 18, 'Guiria', 0),
(371, 18, 'Irapa', 0),
(372, 18, 'Manicuare', 0),
(373, 18, 'Mariguitar', 0),
(374, 18, 'Río Caribe', 0),
(375, 18, 'San Antonio del Golfo', 0),
(376, 18, 'San José de Aerocuar', 0),
(377, 18, 'San Vicente de Sucre', 0),
(378, 18, 'Santa Fe de Sucre', 0),
(379, 18, 'Tunapuy', 0),
(380, 18, 'Yaguaraparo', 0),
(381, 18, 'Yoco', 0),
(382, 19, 'Abejales', 0),
(383, 19, 'Borota', 0),
(384, 19, 'Bramon', 0),
(385, 19, 'Capacho', 0),
(386, 19, 'Colón', 0),
(387, 19, 'Coloncito', 0),
(388, 19, 'Cordero', 0),
(389, 19, 'El Cobre', 0),
(390, 19, 'El Pinal', 0),
(391, 19, 'Independencia', 0),
(392, 19, 'La Fría', 0),
(393, 19, 'La Grita', 0),
(394, 19, 'La Pedrera', 0),
(395, 19, 'La Tendida', 0),
(396, 19, 'Las Delicias', 0),
(397, 19, 'Las Hernández', 0),
(398, 19, 'Lobatera', 0),
(399, 19, 'Michelena', 0),
(400, 19, 'Palmira', 0),
(401, 19, 'Pregonero', 0),
(402, 19, 'Queniquea', 0),
(403, 19, 'Rubio', 0),
(404, 19, 'San Antonio del Tachira', 0),
(405, 19, 'San Cristobal', 1),
(406, 19, 'San José de Bolívar', 0),
(407, 19, 'San Josecito', 0),
(408, 19, 'San Pedro del Río', 0),
(409, 19, 'Santa Ana Táchira', 0),
(410, 19, 'Seboruco', 0),
(411, 19, 'Táriba', 0),
(412, 19, 'Umuquena', 0),
(413, 19, 'Ureña', 0),
(414, 20, 'Batatal', 0),
(415, 20, 'Betijoque', 0),
(416, 20, 'Boconó', 0),
(417, 20, 'Carache', 0),
(418, 20, 'Chejende', 0),
(419, 20, 'Cuicas', 0),
(420, 20, 'El Dividive', 0),
(421, 20, 'El Jaguito', 0),
(422, 20, 'Escuque', 0),
(423, 20, 'Isnotú', 0),
(424, 20, 'Jajó', 0),
(425, 20, 'La Ceiba', 0),
(426, 20, 'La Concepción de Trujllo', 0),
(427, 20, 'La Mesa de Esnujaque', 0),
(428, 20, 'La Puerta', 0),
(429, 20, 'La Quebrada', 0),
(430, 20, 'Mendoza Fría', 0),
(431, 20, 'Meseta de Chimpire', 0),
(432, 20, 'Monay', 0),
(433, 20, 'Motatán', 0),
(434, 20, 'Pampán', 0),
(435, 20, 'Pampanito', 0),
(436, 20, 'Sabana de Mendoza', 0),
(437, 20, 'San Lázaro', 0),
(438, 20, 'Santa Ana de Trujillo', 0),
(439, 20, 'Tostós', 0),
(440, 20, 'Trujillo', 1),
(441, 20, 'Valera', 0),
(442, 21, 'Carayaca', 0),
(443, 21, 'Litoral', 0),
(444, 25, 'Archipiélago Los Roques', 0),
(445, 22, 'Aroa', 0),
(446, 22, 'Boraure', 0),
(447, 22, 'Campo Elías de Yaracuy', 0),
(448, 22, 'Chivacoa', 0),
(449, 22, 'Cocorote', 0),
(450, 22, 'Farriar', 0),
(451, 22, 'Guama', 0),
(452, 22, 'Marín', 0),
(453, 22, 'Nirgua', 0),
(454, 22, 'Sabana de Parra', 0),
(455, 22, 'Salom', 0),
(456, 22, 'San Felipe', 1),
(457, 22, 'San Pablo de Yaracuy', 0),
(458, 22, 'Urachiche', 0),
(459, 22, 'Yaritagua', 0),
(460, 22, 'Yumare', 0),
(461, 23, 'Bachaquero', 0),
(462, 23, 'Bobures', 0),
(463, 23, 'Cabimas', 0),
(464, 23, 'Campo Concepción', 0),
(465, 23, 'Campo Mara', 0),
(466, 23, 'Campo Rojo', 0),
(467, 23, 'Carrasquero', 0),
(468, 23, 'Casigua', 0),
(469, 23, 'Chiquinquirá', 0),
(470, 23, 'Ciudad Ojeda', 0),
(471, 23, 'El Batey', 0),
(472, 23, 'El Carmelo', 0),
(473, 23, 'El Chivo', 0),
(474, 23, 'El Guayabo', 0),
(475, 23, 'El Mene', 0),
(476, 23, 'El Venado', 0),
(477, 23, 'Encontrados', 0),
(478, 23, 'Gibraltar', 0),
(479, 23, 'Isla de Toas', 0),
(480, 23, 'La Concepción del Zulia', 0),
(481, 23, 'La Paz', 0),
(482, 23, 'La Sierrita', 0),
(483, 23, 'Lagunillas del Zulia', 0),
(484, 23, 'Las Piedras de Perijá', 0),
(485, 23, 'Los Cortijos', 0),
(486, 23, 'Machiques', 0),
(487, 23, 'Maracaibo', 1),
(488, 23, 'Mene Grande', 0),
(489, 23, 'Palmarejo', 0),
(490, 23, 'Paraguaipoa', 0),
(491, 23, 'Potrerito', 0),
(492, 23, 'Pueblo Nuevo del Zulia', 0),
(493, 23, 'Puertos de Altagracia', 0),
(494, 23, 'Punta Gorda', 0),
(495, 23, 'Sabaneta de Palma', 0),
(496, 23, 'San Francisco', 0),
(497, 23, 'San José de Perijá', 0),
(498, 23, 'San Rafael del Moján', 0),
(499, 23, 'San Timoteo', 0),
(500, 23, 'Santa Bárbara Del Zulia', 0),
(501, 23, 'Santa Cruz de Mara', 0),
(502, 23, 'Santa Cruz del Zulia', 0),
(503, 23, 'Santa Rita', 0),
(504, 23, 'Sinamaica', 0),
(505, 23, 'Tamare', 0),
(506, 23, 'Tía Juana', 0),
(507, 23, 'Villa del Rosario', 0),
(508, 21, 'La Guaira', 1),
(509, 21, 'Catia La Mar', 0),
(510, 21, 'Macuto', 0),
(511, 21, 'Naiguatá', 0),
(512, 25, 'Archipiélago Los Monjes', 0),
(513, 25, 'Isla La Tortuga y Cayos adyacentes', 0),
(514, 25, 'Isla La Sola', 0),
(515, 25, 'Islas Los Testigos', 0),
(516, 25, 'Islas Los Frailes', 0),
(517, 25, 'Isla La Orchila', 0),
(518, 25, 'Archipiélago Las Aves', 0),
(519, 25, 'Isla de Aves', 0),
(520, 25, 'Isla La Blanquilla', 0),
(521, 25, 'Isla de Patos', 0),
(522, 25, 'Islas Los Hermanos', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_emp`
--

DROP TABLE IF EXISTS `email_emp`;
CREATE TABLE `email_emp` (
  `id_email` int(11) NOT NULL,
  `id_propietario` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `email_emp`
--

INSERT INTO `email_emp` (`id_email`, `id_propietario`, `email`, `tipo`) VALUES
(27, 1, 'correo 1', 'empresa');

-- --------------------------------------------------------

--
-- Table structure for table `email_gere`
--

DROP TABLE IF EXISTS `email_gere`;
CREATE TABLE `email_gere` (
  `id_email` int(11) NOT NULL,
  `id_propietario` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `email_gere`
--

INSERT INTO `email_gere` (`id_email`, `id_propietario`, `email`, `tipo`) VALUES
(16, 51, 'correo 2 dueño', 'propietario'),
(17, 52, 'asdasd@sadfsf.com', 'encargado');

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `id_parroquia` int(11) NOT NULL,
  `codigo_sica` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `rif` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `razon_social` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_ente` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `circuito` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `id_parroquia`, `codigo_sica`, `tipo`, `rif`, `razon_social`, `tipo_ente`, `circuito`) VALUES
(1, 807, '001', 'J', '2057420569', 'Panaderìa Pastelerìa y Charcuterìa Casanay C A', '42-Panadería y Pasteleria', 'c1');

-- --------------------------------------------------------

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `iso_3166-2` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estados`
--

INSERT INTO `estados` (`id_estado`, `estado`, `iso_3166-2`) VALUES
(1, 'Amazonas', 'VE-X'),
(2, 'Anzoátegui', 'VE-B'),
(3, 'Apure', 'VE-C'),
(4, 'Aragua', 'VE-D'),
(5, 'Barinas', 'VE-E'),
(6, 'Bolívar', 'VE-F'),
(7, 'Carabobo', 'VE-G'),
(8, 'Cojedes', 'VE-H'),
(9, 'Delta Amacuro', 'VE-Y'),
(10, 'Falcón', 'VE-I'),
(11, 'Guárico', 'VE-J'),
(12, 'Lara', 'VE-K'),
(13, 'Mérida', 'VE-L'),
(14, 'Miranda', 'VE-M'),
(15, 'Monagas', 'VE-N'),
(16, 'Nueva Esparta', 'VE-O'),
(17, 'Portuguesa', 'VE-P'),
(18, 'Sucre', 'VE-R'),
(19, 'Táchira', 'VE-S'),
(20, 'Trujillo', 'VE-T'),
(21, 'Vargas', 'VE-W'),
(22, 'Yaracuy', 'VE-U'),
(23, 'Zulia', 'VE-V'),
(24, 'Distrito Capital', 'VE-A'),
(25, 'Dependencias Federales', 'VE-Z');

-- --------------------------------------------------------

--
-- Table structure for table `gerencia`
--

DROP TABLE IF EXISTS `gerencia`;
CREATE TABLE `gerencia` (
  `id_gerencia` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nacionalidad` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `sexo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `gerencia`
--

INSERT INTO `gerencia` (`id_gerencia`, `id_empresa`, `nacionalidad`, `cedula`, `nombres`, `apellidos`, `sexo`, `tipo`) VALUES
(51, 1, 'V', '20574205', 'angel charlot', 'pavan', 'M', 'propietario'),
(52, 1, 'V', '20574205', 'angel charlot', 'pavan', 'M', 'encargado');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `ip` varchar(12) NOT NULL,
  `controlador` varchar(30) NOT NULL,
  `metodo` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `id_usuario`, `ip`, `controlador`, `metodo`, `fecha`, `hora`) VALUES
(1, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:16:18'),
(2, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:18:47'),
(3, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:19:41'),
(4, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:19:50'),
(5, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:20:05'),
(6, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:22:09'),
(7, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:24:56'),
(8, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:26:59'),
(9, 1, '127.0.0.1', 'app', 'permisos_ch', '2017-05-09', '22:27:05'),
(10, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:27:06'),
(11, 1, '127.0.0.1', 'app', 'permisos_ch', '2017-05-09', '22:27:08'),
(12, 1, '127.0.0.1', 'app', 'permisos_ch', '2017-05-09', '22:27:10'),
(13, 1, '127.0.0.1', 'app', 'permisos_ch', '2017-05-09', '22:27:10'),
(14, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:27:11'),
(15, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:27:19'),
(16, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:27:23'),
(17, 1, '127.0.0.1', 'app', 'updonw', '2017-05-09', '22:37:28'),
(18, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:37:29'),
(19, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:37:35'),
(20, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:37:37'),
(21, 1, '127.0.0.1', 'login', 'cerrar', '2017-05-09', '22:37:41'),
(22, NULL, '127.0.0.1', 'login', 'index', '2017-05-09', '22:37:41'),
(23, NULL, '127.0.0.1', 'login', 'index', '2017-05-09', '22:37:54'),
(24, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:37:54'),
(25, 1, '127.0.0.1', 'app', 'updonw', '2017-05-09', '22:38:04'),
(26, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:38:04'),
(27, 1, '127.0.0.1', 'app', 'index', '2017-05-09', '22:38:07'),
(28, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:45:42'),
(29, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:46:48'),
(30, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:50:06'),
(31, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:50:46'),
(32, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:50:48'),
(33, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:51:26'),
(34, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:51:57'),
(35, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:51:59'),
(36, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:52:01'),
(37, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '22:52:02'),
(38, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '23:06:59'),
(39, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '23:14:39'),
(40, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '23:18:09'),
(41, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '23:24:43'),
(42, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '23:25:56'),
(43, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '23:31:58'),
(44, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '23:31:58'),
(45, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '23:31:58'),
(46, 1, '127.0.0.1', 'principal', 'index', '2017-05-09', '23:33:04'),
(47, 1, '127.0.0.1', 'login', 'cerrar', '2017-05-10', '10:05:52'),
(48, NULL, '127.0.0.1', 'login', 'index', '2017-05-10', '10:05:52'),
(49, NULL, '127.0.0.1', 'login', 'index', '2017-05-10', '10:06:21'),
(50, 2, '127.0.0.1', 'login', 'index', '2017-05-10', '10:06:21'),
(51, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:06:21'),
(52, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:07:20'),
(53, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:18:54'),
(54, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:24:33'),
(55, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:25:19'),
(56, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:25:28'),
(57, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:25:37'),
(58, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:26:00'),
(59, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:31:10'),
(60, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:31:35'),
(61, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:34:52'),
(62, 2, '127.0.0.1', 'principal', 'index', '2017-05-10', '10:35:16'),
(63, NULL, '127.0.0.1', 'login', 'index', '2017-05-10', '13:57:04'),
(64, NULL, '127.0.0.1', 'login', 'index', '2017-05-10', '13:57:10'),
(65, 1, '127.0.0.1', 'app', 'index', '2017-05-10', '13:57:10'),
(66, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '13:57:14'),
(67, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '13:57:25'),
(68, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '13:57:28'),
(69, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '13:57:36'),
(70, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '13:59:05'),
(71, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '13:59:12'),
(72, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '14:04:46'),
(73, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:04:50'),
(74, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:18:17'),
(75, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:22:21'),
(76, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:22:44'),
(77, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:23:38'),
(78, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:29:25'),
(79, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:29:56'),
(80, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:30:37'),
(81, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:30:48'),
(82, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:33:03'),
(83, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:40:41'),
(84, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '14:44:01'),
(85, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:00:12'),
(86, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:00:22'),
(87, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:03:54'),
(88, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:13:16'),
(89, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:13:31'),
(90, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:13:36'),
(91, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:14:33'),
(92, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:14:59'),
(93, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:15:37'),
(94, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:16:06'),
(95, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:16:27'),
(96, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:16:54'),
(97, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:17:07'),
(98, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:18:13'),
(99, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:22:47'),
(100, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:25:59'),
(101, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:27:46'),
(102, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:28:42'),
(103, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:29:07'),
(104, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:29:46'),
(105, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:30:01'),
(106, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:30:27'),
(107, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:34:34'),
(108, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:37:53'),
(109, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:38:35'),
(110, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:39:19'),
(111, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:40:10'),
(112, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:40:29'),
(113, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:41:11'),
(114, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:41:59'),
(115, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:43:35'),
(116, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:45:01'),
(117, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:48:56'),
(118, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:56:52'),
(119, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:57:11'),
(120, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:57:59'),
(121, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '15:58:25'),
(122, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:09:23'),
(123, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:09:46'),
(124, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:10:09'),
(125, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:10:13'),
(126, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:14:59'),
(127, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:15:04'),
(128, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:15:28'),
(129, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:15:33'),
(130, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:16:13'),
(131, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:16:17'),
(132, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:16:27'),
(133, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:25:17'),
(134, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:25:22'),
(135, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:25:28'),
(136, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:25:59'),
(137, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:26:09'),
(138, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:28:14'),
(139, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:28:19'),
(140, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:28:24'),
(141, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:29:54'),
(142, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:29:58'),
(143, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:31:25'),
(144, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:31:38'),
(145, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:34:39'),
(146, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:34:44'),
(147, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:38:43'),
(148, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:38:53'),
(149, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:41:33'),
(150, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:41:37'),
(151, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:42:02'),
(152, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:42:17'),
(153, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:42:31'),
(154, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:42:36'),
(155, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:47:04'),
(156, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:47:10'),
(157, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:47:29'),
(158, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:47:35'),
(159, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:47:42'),
(160, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:48:42'),
(161, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:48:46'),
(162, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:49:05'),
(163, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:49:10'),
(164, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:49:26'),
(165, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:55:15'),
(166, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:55:38'),
(167, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:55:58'),
(168, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '16:56:04'),
(169, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '16:59:49'),
(170, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '17:01:50'),
(171, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '17:09:03'),
(172, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '17:10:00'),
(173, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '17:11:07'),
(174, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '17:57:08'),
(175, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '17:58:39'),
(176, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:06:49'),
(177, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:11:25'),
(178, NULL, '127.0.0.1', 'login', 'index', '2017-05-10', '18:11:40'),
(179, NULL, '127.0.0.1', 'login', 'index', '2017-05-10', '18:11:49'),
(180, 1, '127.0.0.1', 'app', 'index', '2017-05-10', '18:11:49'),
(181, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '18:11:52'),
(182, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:11:55'),
(183, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:12:00'),
(184, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:14:55'),
(185, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:15:11'),
(186, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:16:40'),
(187, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:17:45'),
(188, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:32:44'),
(189, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:34:02'),
(190, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:36:14'),
(191, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:57:25'),
(192, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '18:57:46'),
(193, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:14:47'),
(194, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:15:04'),
(195, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:16:46'),
(196, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:28:08'),
(197, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '19:40:51'),
(198, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:41:00'),
(199, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:42:14'),
(200, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:42:41'),
(201, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:44:38'),
(202, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:49:12'),
(203, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:51:43'),
(204, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:52:47'),
(205, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '19:57:14'),
(206, 1, '127.0.0.1', 'app', 'index', '2017-05-10', '20:09:26'),
(207, 1, '127.0.0.1', 'login', 'index', '2017-05-10', '20:14:07'),
(208, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '20:14:07'),
(209, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:14:11'),
(210, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:33:03'),
(211, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:33:55'),
(212, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:36:54'),
(213, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:37:23'),
(214, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:37:51'),
(215, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:38:07'),
(216, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:43:38'),
(217, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:43:44'),
(218, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:44:42'),
(219, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:44:43'),
(220, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:44:51'),
(221, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:44:58'),
(222, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:45:15'),
(223, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:47:01'),
(224, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:47:02'),
(225, 1, '127.0.0.1', 'login', 'index', '2017-05-10', '20:47:26'),
(226, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '20:47:26'),
(227, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:47:28'),
(228, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '20:47:36'),
(229, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '20:47:36'),
(230, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:47:50'),
(231, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:54:58'),
(232, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:55:00'),
(233, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:55:17'),
(234, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:57:23'),
(235, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '20:57:31'),
(236, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:57:48'),
(237, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '20:59:45'),
(238, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '20:59:55'),
(239, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:02:56'),
(240, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:02:59'),
(241, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '21:03:10'),
(242, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:05:10'),
(243, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:06:28'),
(244, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '21:06:37'),
(245, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:07:40'),
(246, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:09:52'),
(247, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '21:23:06'),
(248, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:25:09'),
(249, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:28:08'),
(250, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '21:31:26'),
(251, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:31:39'),
(252, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:43:14'),
(253, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '21:43:20'),
(254, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:43:32'),
(255, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:43:35'),
(256, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '21:43:41'),
(257, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:43:43'),
(258, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '21:43:55'),
(259, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:43:56'),
(260, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:49:06'),
(261, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:49:33'),
(262, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:50:08'),
(263, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:51:28'),
(264, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '21:51:47'),
(265, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '21:52:16'),
(266, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:02:31'),
(267, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:03:40'),
(268, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '22:04:01'),
(269, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:04:39'),
(270, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:04:40'),
(271, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:07:18'),
(272, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '22:07:27'),
(273, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:09:09'),
(274, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:12:06'),
(275, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:16:33'),
(276, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '22:16:36'),
(277, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:16:58'),
(278, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '22:25:03'),
(279, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:26:17'),
(280, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '22:26:26'),
(281, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:29:44'),
(282, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '22:38:24'),
(283, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:46:52'),
(284, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:46:53'),
(285, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '22:46:59'),
(286, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-10', '22:47:00'),
(287, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-10', '22:47:12'),
(288, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:48:02'),
(289, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '22:48:12'),
(290, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-10', '22:48:17'),
(291, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-10', '22:48:20'),
(292, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '22:49:05'),
(293, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '22:55:50'),
(294, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:01:17'),
(295, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:04:11'),
(296, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:04:52'),
(297, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:06:46'),
(298, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-10', '23:09:22'),
(299, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-10', '23:09:24'),
(300, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-10', '23:09:53'),
(301, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:10:16'),
(302, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:12:55'),
(303, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:13:11'),
(304, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:23:15'),
(305, 1, '127.0.0.1', 'login', 'index', '2017-05-10', '23:24:05'),
(306, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '23:24:05'),
(307, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:24:08'),
(308, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:24:28'),
(309, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:26:26'),
(310, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:28:40'),
(311, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:31:15'),
(312, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:32:22'),
(313, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:34:43'),
(314, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:36:58'),
(315, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:37:19'),
(316, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:39:43'),
(317, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:40:16'),
(318, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '23:40:17'),
(319, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:40:19'),
(320, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-10', '23:40:40'),
(321, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:40:58'),
(322, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:42:13'),
(323, 1, '127.0.0.1', 'login', 'index', '2017-05-10', '23:51:49'),
(324, 1, '127.0.0.1', 'principal', 'index', '2017-05-10', '23:51:49'),
(325, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:51:52'),
(326, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-10', '23:52:21'),
(327, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-10', '23:52:36'),
(328, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-10', '23:52:56'),
(329, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:05:40'),
(330, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:16:48'),
(331, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:19:18'),
(332, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:20:34'),
(333, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '00:23:56'),
(334, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:24:31'),
(335, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '00:29:21'),
(336, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '00:29:23'),
(337, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '00:29:56'),
(338, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '00:30:30'),
(339, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:30:33'),
(340, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '00:33:27'),
(341, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '00:33:42'),
(342, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '00:33:42'),
(343, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:34:10'),
(344, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:36:27'),
(345, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:39:32'),
(346, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:39:47'),
(347, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:40:13'),
(348, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:41:25'),
(349, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:43:19'),
(350, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:44:50'),
(351, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:45:37'),
(352, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:46:19'),
(353, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '00:46:28'),
(354, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '00:49:40'),
(355, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '00:49:41'),
(356, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '00:49:45'),
(357, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:50:19'),
(358, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:55:15'),
(359, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:56:04'),
(360, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '00:59:00'),
(361, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '00:59:05'),
(362, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '00:59:25'),
(363, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '00:59:40'),
(364, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '00:59:41'),
(365, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '00:59:41'),
(366, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:00:20'),
(367, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:03:55'),
(368, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:04:14'),
(369, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:04:15'),
(370, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:05:13'),
(371, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:06:13'),
(372, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:06:26'),
(373, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:06:26'),
(374, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:06:27'),
(375, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:06:27'),
(376, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:07:06'),
(377, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:09:28'),
(378, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:09:47'),
(379, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:09:48'),
(380, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:09:48'),
(381, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:09:49'),
(382, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:10:40'),
(383, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:10:55'),
(384, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:10:56'),
(385, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:10:57'),
(386, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:11:06'),
(387, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:11:08'),
(388, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:12:59'),
(389, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:15:40'),
(390, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:15:46'),
(391, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:15:46'),
(392, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:15:46'),
(393, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:15:47'),
(394, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:16:54'),
(395, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:26:25'),
(396, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:27:22'),
(397, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:28:14'),
(398, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:28:15'),
(399, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:28:15'),
(400, NULL, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:28:16'),
(401, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:28:58'),
(402, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:34:27'),
(403, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:34:37'),
(404, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:35:46'),
(405, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:35:54'),
(406, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:36:14'),
(407, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:36:21'),
(408, NULL, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:36:21'),
(409, NULL, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:36:22'),
(410, NULL, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:36:22'),
(411, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:36:43'),
(412, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:38:10'),
(413, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:40:15'),
(414, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:42:18'),
(415, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:42:38'),
(416, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:42:40'),
(417, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:42:43'),
(418, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:43:04'),
(419, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:43:15'),
(420, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:45:25'),
(421, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:45:27'),
(422, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:45:30'),
(423, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:45:32'),
(424, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:45:32'),
(425, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:45:40'),
(426, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:46:15'),
(427, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:46:16'),
(428, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:46:17'),
(429, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:46:22'),
(430, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:47:43'),
(431, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:47:48'),
(432, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:47:59'),
(433, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:48:01'),
(434, NULL, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:48:05'),
(435, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:48:36'),
(436, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:48:37'),
(437, NULL, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:48:37'),
(438, NULL, '127.0.0.1', 'login', 'index', '2017-05-11', '01:50:53'),
(439, NULL, '127.0.0.1', 'login', 'index', '2017-05-11', '01:50:59'),
(440, 1, '127.0.0.1', 'app', 'index', '2017-05-11', '01:51:02'),
(441, 1, '127.0.0.1', 'principal', 'index', '2017-05-11', '01:51:06'),
(442, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:51:14'),
(443, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:53:13'),
(444, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:56:14'),
(445, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:56:16'),
(446, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:56:30'),
(447, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:57:24'),
(448, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '01:57:46'),
(449, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '01:57:56'),
(450, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '01:57:58'),
(451, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '01:58:16'),
(452, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '02:01:03'),
(453, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '02:01:21'),
(454, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '02:01:22'),
(455, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '02:01:22'),
(456, 1, '127.0.0.1', 'ingresar', 'cargar_municipio', '2017-05-11', '02:01:22'),
(457, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:23'),
(458, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:24'),
(459, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:25'),
(460, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:25'),
(461, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:25'),
(462, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:26'),
(463, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:26'),
(464, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:26'),
(465, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:26'),
(466, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:27'),
(467, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:27'),
(468, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:27'),
(469, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:27'),
(470, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:28'),
(471, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:28'),
(472, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:28'),
(473, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:28'),
(474, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:28'),
(475, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:28'),
(476, 1, '127.0.0.1', 'ingresar', 'cargar_parroquia', '2017-05-11', '02:01:29'),
(477, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '02:06:19'),
(478, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '02:07:30'),
(479, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '02:08:10'),
(480, 1, '127.0.0.1', 'ingresar', 'guardar', '2017-05-11', '02:08:38'),
(481, 1, '127.0.0.1', 'ingresar', 'index', '2017-05-11', '02:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `maquinas`
--

DROP TABLE IF EXISTS `maquinas`;
CREATE TABLE `maquinas` (
  `id_maquinaria` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `maquina` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `estatus` varchar(300) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `maquinas`
--

INSERT INTO `maquinas` (`id_maquinaria`, `id_empresa`, `maquina`, `cantidad`, `estatus`) VALUES
(12, 1, 'bandeja', '2', 'posee'),
(13, 1, 'bandeja', '2', 'posee'),
(14, 1, 'batidor', '2', 'posee'),
(15, 1, 'congelador', '2', 'posee');

-- --------------------------------------------------------

--
-- Table structure for table `materia_prima_req`
--

DROP TABLE IF EXISTS `materia_prima_req`;
CREATE TABLE `materia_prima_req` (
  `id_materia` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `harina` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `azucar` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `sal` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `manteca` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `margarina` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `levadura` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `aceite` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `materia_prima_req`
--

INSERT INTO `materia_prima_req` (`id_materia`, `id_empresa`, `harina`, `azucar`, `sal`, `manteca`, `margarina`, `levadura`, `aceite`) VALUES
(19, 1, 'asdsa', 'dsads', 'adsad', 'sadasd', 'sadas', 'dasdsad', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `enlace` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `titulo`, `enlace`) VALUES
(7, 'Inicio', 'principal'),
(8, 'Registrar', 'ragistrar');

-- --------------------------------------------------------

--
-- Table structure for table `municipios`
--

DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `municipio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `municipios`
--

INSERT INTO `municipios` (`id_municipio`, `id_estado`, `municipio`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Atabapo'),
(3, 1, 'Atures'),
(4, 1, 'Autana'),
(5, 1, 'Manapiare'),
(6, 1, 'Maroa'),
(7, 1, 'Río Negro'),
(8, 2, 'Anaco'),
(9, 2, 'Aragua'),
(10, 2, 'Manuel Ezequiel Bruzual'),
(11, 2, 'Diego Bautista Urbaneja'),
(12, 2, 'Fernando Peñalver'),
(13, 2, 'Francisco Del Carmen Carvajal'),
(14, 2, 'General Sir Arthur McGregor'),
(15, 2, 'Guanta'),
(16, 2, 'Independencia'),
(17, 2, 'José Gregorio Monagas'),
(18, 2, 'Juan Antonio Sotillo'),
(19, 2, 'Juan Manuel Cajigal'),
(20, 2, 'Libertad'),
(21, 2, 'Francisco de Miranda'),
(22, 2, 'Pedro María Freites'),
(23, 2, 'Píritu'),
(24, 2, 'San José de Guanipa'),
(25, 2, 'San Juan de Capistrano'),
(26, 2, 'Santa Ana'),
(27, 2, 'Simón Bolívar'),
(28, 2, 'Simón Rodríguez'),
(29, 3, 'Achaguas'),
(30, 3, 'Biruaca'),
(31, 3, 'Muñóz'),
(32, 3, 'Páez'),
(33, 3, 'Pedro Camejo'),
(34, 3, 'Rómulo Gallegos'),
(35, 3, 'San Fernando'),
(36, 4, 'Atanasio Girardot'),
(37, 4, 'Bolívar'),
(38, 4, 'Camatagua'),
(39, 4, 'Francisco Linares Alcántara'),
(40, 4, 'José Ángel Lamas'),
(41, 4, 'José Félix Ribas'),
(42, 4, 'José Rafael Revenga'),
(43, 4, 'Libertador'),
(44, 4, 'Mario Briceño Iragorry'),
(45, 4, 'Ocumare de la Costa de Oro'),
(46, 4, 'San Casimiro'),
(47, 4, 'San Sebastián'),
(48, 4, 'Santiago Mariño'),
(49, 4, 'Santos Michelena'),
(50, 4, 'Sucre'),
(51, 4, 'Tovar'),
(52, 4, 'Urdaneta'),
(53, 4, 'Zamora'),
(54, 5, 'Alberto Arvelo Torrealba'),
(55, 5, 'Andrés Eloy Blanco'),
(56, 5, 'Antonio José de Sucre'),
(57, 5, 'Arismendi'),
(58, 5, 'Barinas'),
(59, 5, 'Bolívar'),
(60, 5, 'Cruz Paredes'),
(61, 5, 'Ezequiel Zamora'),
(62, 5, 'Obispos'),
(63, 5, 'Pedraza'),
(64, 5, 'Rojas'),
(65, 5, 'Sosa'),
(66, 6, 'Caroní'),
(67, 6, 'Cedeño'),
(68, 6, 'El Callao'),
(69, 6, 'Gran Sabana'),
(70, 6, 'Heres'),
(71, 6, 'Piar'),
(72, 6, 'Angostura (Raúl Leoni)'),
(73, 6, 'Roscio'),
(74, 6, 'Sifontes'),
(75, 6, 'Sucre'),
(76, 6, 'Padre Pedro Chien'),
(77, 7, 'Bejuma'),
(78, 7, 'Carlos Arvelo'),
(79, 7, 'Diego Ibarra'),
(80, 7, 'Guacara'),
(81, 7, 'Juan José Mora'),
(82, 7, 'Libertador'),
(83, 7, 'Los Guayos'),
(84, 7, 'Miranda'),
(85, 7, 'Montalbán'),
(86, 7, 'Naguanagua'),
(87, 7, 'Puerto Cabello'),
(88, 7, 'San Diego'),
(89, 7, 'San Joaquín'),
(90, 7, 'Valencia'),
(91, 8, 'Anzoátegui'),
(92, 8, 'Tinaquillo'),
(93, 8, 'Girardot'),
(94, 8, 'Lima Blanco'),
(95, 8, 'Pao de San Juan Bautista'),
(96, 8, 'Ricaurte'),
(97, 8, 'Rómulo Gallegos'),
(98, 8, 'San Carlos'),
(99, 8, 'Tinaco'),
(100, 9, 'Antonio Díaz'),
(101, 9, 'Casacoima'),
(102, 9, 'Pedernales'),
(103, 9, 'Tucupita'),
(104, 10, 'Acosta'),
(105, 10, 'Bolívar'),
(106, 10, 'Buchivacoa'),
(107, 10, 'Cacique Manaure'),
(108, 10, 'Carirubana'),
(109, 10, 'Colina'),
(110, 10, 'Dabajuro'),
(111, 10, 'Democracia'),
(112, 10, 'Falcón'),
(113, 10, 'Federación'),
(114, 10, 'Jacura'),
(115, 10, 'José Laurencio Silva'),
(116, 10, 'Los Taques'),
(117, 10, 'Mauroa'),
(118, 10, 'Miranda'),
(119, 10, 'Monseñor Iturriza'),
(120, 10, 'Palmasola'),
(121, 10, 'Petit'),
(122, 10, 'Píritu'),
(123, 10, 'San Francisco'),
(124, 10, 'Sucre'),
(125, 10, 'Tocópero'),
(126, 10, 'Unión'),
(127, 10, 'Urumaco'),
(128, 10, 'Zamora'),
(129, 11, 'Camaguán'),
(130, 11, 'Chaguaramas'),
(131, 11, 'El Socorro'),
(132, 11, 'José Félix Ribas'),
(133, 11, 'José Tadeo Monagas'),
(134, 11, 'Juan Germán Roscio'),
(135, 11, 'Julián Mellado'),
(136, 11, 'Las Mercedes'),
(137, 11, 'Leonardo Infante'),
(138, 11, 'Pedro Zaraza'),
(139, 11, 'Ortíz'),
(140, 11, 'San Gerónimo de Guayabal'),
(141, 11, 'San José de Guaribe'),
(142, 11, 'Santa María de Ipire'),
(143, 11, 'Sebastián Francisco de Miranda'),
(144, 12, 'Andrés Eloy Blanco'),
(145, 12, 'Crespo'),
(146, 12, 'Iribarren'),
(147, 12, 'Jiménez'),
(148, 12, 'Morán'),
(149, 12, 'Palavecino'),
(150, 12, 'Simón Planas'),
(151, 12, 'Torres'),
(152, 12, 'Urdaneta'),
(179, 13, 'Alberto Adriani'),
(180, 13, 'Andrés Bello'),
(181, 13, 'Antonio Pinto Salinas'),
(182, 13, 'Aricagua'),
(183, 13, 'Arzobispo Chacón'),
(184, 13, 'Campo Elías'),
(185, 13, 'Caracciolo Parra Olmedo'),
(186, 13, 'Cardenal Quintero'),
(187, 13, 'Guaraque'),
(188, 13, 'Julio César Salas'),
(189, 13, 'Justo Briceño'),
(190, 13, 'Libertador'),
(191, 13, 'Miranda'),
(192, 13, 'Obispo Ramos de Lora'),
(193, 13, 'Padre Noguera'),
(194, 13, 'Pueblo Llano'),
(195, 13, 'Rangel'),
(196, 13, 'Rivas Dávila'),
(197, 13, 'Santos Marquina'),
(198, 13, 'Sucre'),
(199, 13, 'Tovar'),
(200, 13, 'Tulio Febres Cordero'),
(201, 13, 'Zea'),
(223, 14, 'Acevedo'),
(224, 14, 'Andrés Bello'),
(225, 14, 'Baruta'),
(226, 14, 'Brión'),
(227, 14, 'Buroz'),
(228, 14, 'Carrizal'),
(229, 14, 'Chacao'),
(230, 14, 'Cristóbal Rojas'),
(231, 14, 'El Hatillo'),
(232, 14, 'Guaicaipuro'),
(233, 14, 'Independencia'),
(234, 14, 'Lander'),
(235, 14, 'Los Salias'),
(236, 14, 'Páez'),
(237, 14, 'Paz Castillo'),
(238, 14, 'Pedro Gual'),
(239, 14, 'Plaza'),
(240, 14, 'Simón Bolívar'),
(241, 14, 'Sucre'),
(242, 14, 'Urdaneta'),
(243, 14, 'Zamora'),
(258, 15, 'Acosta'),
(259, 15, 'Aguasay'),
(260, 15, 'Bolívar'),
(261, 15, 'Caripe'),
(262, 15, 'Cedeño'),
(263, 15, 'Ezequiel Zamora'),
(264, 15, 'Libertador'),
(265, 15, 'Maturín'),
(266, 15, 'Piar'),
(267, 15, 'Punceres'),
(268, 15, 'Santa Bárbara'),
(269, 15, 'Sotillo'),
(270, 15, 'Uracoa'),
(271, 16, 'Antolín del Campo'),
(272, 16, 'Arismendi'),
(273, 16, 'García'),
(274, 16, 'Gómez'),
(275, 16, 'Maneiro'),
(276, 16, 'Marcano'),
(277, 16, 'Mariño'),
(278, 16, 'Península de Macanao'),
(279, 16, 'Tubores'),
(280, 16, 'Villalba'),
(281, 16, 'Díaz'),
(282, 17, 'Agua Blanca'),
(283, 17, 'Araure'),
(284, 17, 'Esteller'),
(285, 17, 'Guanare'),
(286, 17, 'Guanarito'),
(287, 17, 'Monseñor José Vicente de Unda'),
(288, 17, 'Ospino'),
(289, 17, 'Páez'),
(290, 17, 'Papelón'),
(291, 17, 'San Genaro de Boconoíto'),
(292, 17, 'San Rafael de Onoto'),
(293, 17, 'Santa Rosalía'),
(294, 17, 'Sucre'),
(295, 17, 'Turén'),
(296, 18, 'Andrés Eloy Blanco'),
(297, 18, 'Andrés Mata'),
(298, 18, 'Arismendi'),
(299, 18, 'Benítez'),
(300, 18, 'Bermúdez'),
(301, 18, 'Bolívar'),
(302, 18, 'Cajigal'),
(303, 18, 'Cruz Salmerón Acosta'),
(304, 18, 'Libertador'),
(305, 18, 'Mariño'),
(306, 18, 'Mejía'),
(307, 18, 'Montes'),
(308, 18, 'Ribero'),
(309, 18, 'Sucre'),
(310, 18, 'Valdéz'),
(341, 19, 'Andrés Bello'),
(342, 19, 'Antonio Rómulo Costa'),
(343, 19, 'Ayacucho'),
(344, 19, 'Bolívar'),
(345, 19, 'Cárdenas'),
(346, 19, 'Córdoba'),
(347, 19, 'Fernández Feo'),
(348, 19, 'Francisco de Miranda'),
(349, 19, 'García de Hevia'),
(350, 19, 'Guásimos'),
(351, 19, 'Independencia'),
(352, 19, 'Jáuregui'),
(353, 19, 'José María Vargas'),
(354, 19, 'Junín'),
(355, 19, 'Libertad'),
(356, 19, 'Libertador'),
(357, 19, 'Lobatera'),
(358, 19, 'Michelena'),
(359, 19, 'Panamericano'),
(360, 19, 'Pedro María Ureña'),
(361, 19, 'Rafael Urdaneta'),
(362, 19, 'Samuel Darío Maldonado'),
(363, 19, 'San Cristóbal'),
(364, 19, 'Seboruco'),
(365, 19, 'Simón Rodríguez'),
(366, 19, 'Sucre'),
(367, 19, 'Torbes'),
(368, 19, 'Uribante'),
(369, 19, 'San Judas Tadeo'),
(370, 20, 'Andrés Bello'),
(371, 20, 'Boconó'),
(372, 20, 'Bolívar'),
(373, 20, 'Candelaria'),
(374, 20, 'Carache'),
(375, 20, 'Escuque'),
(376, 20, 'José Felipe Márquez Cañizalez'),
(377, 20, 'Juan Vicente Campos Elías'),
(378, 20, 'La Ceiba'),
(379, 20, 'Miranda'),
(380, 20, 'Monte Carmelo'),
(381, 20, 'Motatán'),
(382, 20, 'Pampán'),
(383, 20, 'Pampanito'),
(384, 20, 'Rafael Rangel'),
(385, 20, 'San Rafael de Carvajal'),
(386, 20, 'Sucre'),
(387, 20, 'Trujillo'),
(388, 20, 'Urdaneta'),
(389, 20, 'Valera'),
(390, 21, 'Vargas'),
(391, 22, 'Arístides Bastidas'),
(392, 22, 'Bolívar'),
(407, 22, 'Bruzual'),
(408, 22, 'Cocorote'),
(409, 22, 'Independencia'),
(410, 22, 'José Antonio Páez'),
(411, 22, 'La Trinidad'),
(412, 22, 'Manuel Monge'),
(413, 22, 'Nirgua'),
(414, 22, 'Peña'),
(415, 22, 'San Felipe'),
(416, 22, 'Sucre'),
(417, 22, 'Urachiche'),
(418, 22, 'José Joaquín Veroes'),
(441, 23, 'Almirante Padilla'),
(442, 23, 'Baralt'),
(443, 23, 'Cabimas'),
(444, 23, 'Catatumbo'),
(445, 23, 'Colón'),
(446, 23, 'Francisco Javier Pulgar'),
(447, 23, 'Páez'),
(448, 23, 'Jesús Enrique Losada'),
(449, 23, 'Jesús María Semprún'),
(450, 23, 'La Cañada de Urdaneta'),
(451, 23, 'Lagunillas'),
(452, 23, 'Machiques de Perijá'),
(453, 23, 'Mara'),
(454, 23, 'Maracaibo'),
(455, 23, 'Miranda'),
(456, 23, 'Rosario de Perijá'),
(457, 23, 'San Francisco'),
(458, 23, 'Santa Rita'),
(459, 23, 'Simón Bolívar'),
(460, 23, 'Sucre'),
(461, 23, 'Valmore Rodríguez'),
(462, 24, 'Libertador');

-- --------------------------------------------------------

--
-- Table structure for table `parroquias`
--

DROP TABLE IF EXISTS `parroquias`;
CREATE TABLE `parroquias` (
  `id_parroquia` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `parroquia` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parroquias`
--

INSERT INTO `parroquias` (`id_parroquia`, `id_municipio`, `parroquia`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Huachamacare Acanaña'),
(3, 1, 'Marawaka Toky Shamanaña'),
(4, 1, 'Mavaka Mavaka'),
(5, 1, 'Sierra Parima Parimabé'),
(6, 2, 'Ucata Laja Lisa'),
(7, 2, 'Yapacana Macuruco'),
(8, 2, 'Caname Guarinuma'),
(9, 3, 'Fernando Girón Tovar'),
(10, 3, 'Luis Alberto Gómez'),
(11, 3, 'Pahueña Limón de Parhueña'),
(12, 3, 'Platanillal Platanillal'),
(13, 4, 'Samariapo'),
(14, 4, 'Sipapo'),
(15, 4, 'Munduapo'),
(16, 4, 'Guayapo'),
(17, 5, 'Alto Ventuari'),
(18, 5, 'Medio Ventuari'),
(19, 5, 'Bajo Ventuari'),
(20, 6, 'Victorino'),
(21, 6, 'Comunidad'),
(22, 7, 'Casiquiare'),
(23, 7, 'Cocuy'),
(24, 7, 'San Carlos de Río Negro'),
(25, 7, 'Solano'),
(26, 8, 'Anaco'),
(27, 8, 'San Joaquín'),
(28, 9, 'Cachipo'),
(29, 9, 'Aragua de Barcelona'),
(30, 11, 'Lechería'),
(31, 11, 'El Morro'),
(32, 12, 'Puerto Píritu'),
(33, 12, 'San Miguel'),
(34, 12, 'Sucre'),
(35, 13, 'Valle de Guanape'),
(36, 13, 'Santa Bárbara'),
(37, 14, 'El Chaparro'),
(38, 14, 'Tomás Alfaro'),
(39, 14, 'Calatrava'),
(40, 15, 'Guanta'),
(41, 15, 'Chorrerón'),
(42, 16, 'Mamo'),
(43, 16, 'Soledad'),
(44, 17, 'Mapire'),
(45, 17, 'Piar'),
(46, 17, 'Santa Clara'),
(47, 17, 'San Diego de Cabrutica'),
(48, 17, 'Uverito'),
(49, 17, 'Zuata'),
(50, 18, 'Puerto La Cruz'),
(51, 18, 'Pozuelos'),
(52, 19, 'Onoto'),
(53, 19, 'San Pablo'),
(54, 20, 'San Mateo'),
(55, 20, 'El Carito'),
(56, 20, 'Santa Inés'),
(57, 20, 'La Romereña'),
(58, 21, 'Atapirire'),
(59, 21, 'Boca del Pao'),
(60, 21, 'El Pao'),
(61, 21, 'Pariaguán'),
(62, 22, 'Cantaura'),
(63, 22, 'Libertador'),
(64, 22, 'Santa Rosa'),
(65, 22, 'Urica'),
(66, 23, 'Píritu'),
(67, 23, 'San Francisco'),
(68, 24, 'San José de Guanipa'),
(69, 25, 'Boca de Uchire'),
(70, 25, 'Boca de Chávez'),
(71, 26, 'Pueblo Nuevo'),
(72, 26, 'Santa Ana'),
(73, 27, 'Bergantín'),
(74, 27, 'Caigua'),
(75, 27, 'El Carmen'),
(76, 27, 'El Pilar'),
(77, 27, 'Naricual'),
(78, 27, 'San Crsitóbal'),
(79, 28, 'Edmundo Barrios'),
(80, 28, 'Miguel Otero Silva'),
(81, 29, 'Achaguas'),
(82, 29, 'Apurito'),
(83, 29, 'El Yagual'),
(84, 29, 'Guachara'),
(85, 29, 'Mucuritas'),
(86, 29, 'Queseras del medio'),
(87, 30, 'Biruaca'),
(88, 31, 'Bruzual'),
(89, 31, 'Mantecal'),
(90, 31, 'Quintero'),
(91, 31, 'Rincón Hondo'),
(92, 31, 'San Vicente'),
(93, 32, 'Guasdualito'),
(94, 32, 'Aramendi'),
(95, 32, 'El Amparo'),
(96, 32, 'San Camilo'),
(97, 32, 'Urdaneta'),
(98, 33, 'San Juan de Payara'),
(99, 33, 'Codazzi'),
(100, 33, 'Cunaviche'),
(101, 34, 'Elorza'),
(102, 34, 'La Trinidad'),
(103, 35, 'San Fernando'),
(104, 35, 'El Recreo'),
(105, 35, 'Peñalver'),
(106, 35, 'San Rafael de Atamaica'),
(107, 36, 'Pedro José Ovalles'),
(108, 36, 'Joaquín Crespo'),
(109, 36, 'José Casanova Godoy'),
(110, 36, 'Madre María de San José'),
(111, 36, 'Andrés Eloy Blanco'),
(112, 36, 'Los Tacarigua'),
(113, 36, 'Las Delicias'),
(114, 36, 'Choroní'),
(115, 37, 'Bolívar'),
(116, 38, 'Camatagua'),
(117, 38, 'Carmen de Cura'),
(118, 39, 'Santa Rita'),
(119, 39, 'Francisco de Miranda'),
(120, 39, 'Moseñor Feliciano González'),
(121, 40, 'Santa Cruz'),
(122, 41, 'José Félix Ribas'),
(123, 41, 'Castor Nieves Ríos'),
(124, 41, 'Las Guacamayas'),
(125, 41, 'Pao de Zárate'),
(126, 41, 'Zuata'),
(127, 42, 'José Rafael Revenga'),
(128, 43, 'Palo Negro'),
(129, 43, 'San Martín de Porres'),
(130, 44, 'El Limón'),
(131, 44, 'Caña de Azúcar'),
(132, 45, 'Ocumare de la Costa'),
(133, 46, 'San Casimiro'),
(134, 46, 'Güiripa'),
(135, 46, 'Ollas de Caramacate'),
(136, 46, 'Valle Morín'),
(137, 47, 'San Sebastían'),
(138, 48, 'Turmero'),
(139, 48, 'Arevalo Aponte'),
(140, 48, 'Chuao'),
(141, 48, 'Samán de Güere'),
(142, 48, 'Alfredo Pacheco Miranda'),
(143, 49, 'Santos Michelena'),
(144, 49, 'Tiara'),
(145, 50, 'Cagua'),
(146, 50, 'Bella Vista'),
(147, 51, 'Tovar'),
(148, 52, 'Urdaneta'),
(149, 52, 'Las Peñitas'),
(150, 52, 'San Francisco de Cara'),
(151, 52, 'Taguay'),
(152, 53, 'Zamora'),
(153, 53, 'Magdaleno'),
(154, 53, 'San Francisco de Asís'),
(155, 53, 'Valles de Tucutunemo'),
(156, 53, 'Augusto Mijares'),
(157, 54, 'Sabaneta'),
(158, 54, 'Juan Antonio Rodríguez Domínguez'),
(159, 55, 'El Cantón'),
(160, 55, 'Santa Cruz de Guacas'),
(161, 55, 'Puerto Vivas'),
(162, 56, 'Ticoporo'),
(163, 56, 'Nicolás Pulido'),
(164, 56, 'Andrés Bello'),
(165, 57, 'Arismendi'),
(166, 57, 'Guadarrama'),
(167, 57, 'La Unión'),
(168, 57, 'San Antonio'),
(169, 58, 'Barinas'),
(170, 58, 'Alberto Arvelo Larriva'),
(171, 58, 'San Silvestre'),
(172, 58, 'Santa Inés'),
(173, 58, 'Santa Lucía'),
(174, 58, 'Torumos'),
(175, 58, 'El Carmen'),
(176, 58, 'Rómulo Betancourt'),
(177, 58, 'Corazón de Jesús'),
(178, 58, 'Ramón Ignacio Méndez'),
(179, 58, 'Alto Barinas'),
(180, 58, 'Manuel Palacio Fajardo'),
(181, 58, 'Juan Antonio Rodríguez Domínguez'),
(182, 58, 'Dominga Ortiz de Páez'),
(183, 59, 'Barinitas'),
(184, 59, 'Altamira de Cáceres'),
(185, 59, 'Calderas'),
(186, 60, 'Barrancas'),
(187, 60, 'El Socorro'),
(188, 60, 'Mazparrito'),
(189, 61, 'Santa Bárbara'),
(190, 61, 'Pedro Briceño Méndez'),
(191, 61, 'Ramón Ignacio Méndez'),
(192, 61, 'José Ignacio del Pumar'),
(193, 62, 'Obispos'),
(194, 62, 'Guasimitos'),
(195, 62, 'El Real'),
(196, 62, 'La Luz'),
(197, 63, 'Ciudad Bolívia'),
(198, 63, 'José Ignacio Briceño'),
(199, 63, 'José Félix Ribas'),
(200, 63, 'Páez'),
(201, 64, 'Libertad'),
(202, 64, 'Dolores'),
(203, 64, 'Santa Rosa'),
(204, 64, 'Palacio Fajardo'),
(205, 65, 'Ciudad de Nutrias'),
(206, 65, 'El Regalo'),
(207, 65, 'Puerto Nutrias'),
(208, 65, 'Santa Catalina'),
(209, 66, 'Cachamay'),
(210, 66, 'Chirica'),
(211, 66, 'Dalla Costa'),
(212, 66, 'Once de Abril'),
(213, 66, 'Simón Bolívar'),
(214, 66, 'Unare'),
(215, 66, 'Universidad'),
(216, 66, 'Vista al Sol'),
(217, 66, 'Pozo Verde'),
(218, 66, 'Yocoima'),
(219, 66, '5 de Julio'),
(220, 67, 'Cedeño'),
(221, 67, 'Altagracia'),
(222, 67, 'Ascensión Farreras'),
(223, 67, 'Guaniamo'),
(224, 67, 'La Urbana'),
(225, 67, 'Pijiguaos'),
(226, 68, 'El Callao'),
(227, 69, 'Gran Sabana'),
(228, 69, 'Ikabarú'),
(229, 70, 'Catedral'),
(230, 70, 'Zea'),
(231, 70, 'Orinoco'),
(232, 70, 'José Antonio Páez'),
(233, 70, 'Marhuanta'),
(234, 70, 'Agua Salada'),
(235, 70, 'Vista Hermosa'),
(236, 70, 'La Sabanita'),
(237, 70, 'Panapana'),
(238, 71, 'Andrés Eloy Blanco'),
(239, 71, 'Pedro Cova'),
(240, 72, 'Raúl Leoni'),
(241, 72, 'Barceloneta'),
(242, 72, 'Santa Bárbara'),
(243, 72, 'San Francisco'),
(244, 73, 'Roscio'),
(245, 73, 'Salóm'),
(246, 74, 'Sifontes'),
(247, 74, 'Dalla Costa'),
(248, 74, 'San Isidro'),
(249, 75, 'Sucre'),
(250, 75, 'Aripao'),
(251, 75, 'Guarataro'),
(252, 75, 'Las Majadas'),
(253, 75, 'Moitaco'),
(254, 76, 'Padre Pedro Chien'),
(255, 76, 'Río Grande'),
(256, 77, 'Bejuma'),
(257, 77, 'Canoabo'),
(258, 77, 'Simón Bolívar'),
(259, 78, 'Güigüe'),
(260, 78, 'Carabobo'),
(261, 78, 'Tacarigua'),
(262, 79, 'Mariara'),
(263, 79, 'Aguas Calientes'),
(264, 80, 'Ciudad Alianza'),
(265, 80, 'Guacara'),
(266, 80, 'Yagua'),
(267, 81, 'Morón'),
(268, 81, 'Yagua'),
(269, 82, 'Tocuyito'),
(270, 82, 'Independencia'),
(271, 83, 'Los Guayos'),
(272, 84, 'Miranda'),
(273, 85, 'Montalbán'),
(274, 86, 'Naguanagua'),
(275, 87, 'Bartolomé Salóm'),
(276, 87, 'Democracia'),
(277, 87, 'Fraternidad'),
(278, 87, 'Goaigoaza'),
(279, 87, 'Juan José Flores'),
(280, 87, 'Unión'),
(281, 87, 'Borburata'),
(282, 87, 'Patanemo'),
(283, 88, 'San Diego'),
(284, 89, 'San Joaquín'),
(285, 90, 'Candelaria'),
(286, 90, 'Catedral'),
(287, 90, 'El Socorro'),
(288, 90, 'Miguel Peña'),
(289, 90, 'Rafael Urdaneta'),
(290, 90, 'San Blas'),
(291, 90, 'San José'),
(292, 90, 'Santa Rosa'),
(293, 90, 'Negro Primero'),
(294, 91, 'Cojedes'),
(295, 91, 'Juan de Mata Suárez'),
(296, 92, 'Tinaquillo'),
(297, 93, 'El Baúl'),
(298, 93, 'Sucre'),
(299, 94, 'La Aguadita'),
(300, 94, 'Macapo'),
(301, 95, 'El Pao'),
(302, 96, 'El Amparo'),
(303, 96, 'Libertad de Cojedes'),
(304, 97, 'Rómulo Gallegos'),
(305, 98, 'San Carlos de Austria'),
(306, 98, 'Juan Ángel Bravo'),
(307, 98, 'Manuel Manrique'),
(308, 99, 'General en Jefe José Laurencio Silva'),
(309, 100, 'Curiapo'),
(310, 100, 'Almirante Luis Brión'),
(311, 100, 'Francisco Aniceto Lugo'),
(312, 100, 'Manuel Renaud'),
(313, 100, 'Padre Barral'),
(314, 100, 'Santos de Abelgas'),
(315, 101, 'Imataca'),
(316, 101, 'Cinco de Julio'),
(317, 101, 'Juan Bautista Arismendi'),
(318, 101, 'Manuel Piar'),
(319, 101, 'Rómulo Gallegos'),
(320, 102, 'Pedernales'),
(321, 102, 'Luis Beltrán Prieto Figueroa'),
(322, 103, 'San José (Delta Amacuro)'),
(323, 103, 'José Vidal Marcano'),
(324, 103, 'Juan Millán'),
(325, 103, 'Leonardo Ruíz Pineda'),
(326, 103, 'Mariscal Antonio José de Sucre'),
(327, 103, 'Monseñor Argimiro García'),
(328, 103, 'San Rafael (Delta Amacuro)'),
(329, 103, 'Virgen del Valle'),
(330, 10, 'Clarines'),
(331, 10, 'Guanape'),
(332, 10, 'Sabana de Uchire'),
(333, 104, 'Capadare'),
(334, 104, 'La Pastora'),
(335, 104, 'Libertador'),
(336, 104, 'San Juan de los Cayos'),
(337, 105, 'Aracua'),
(338, 105, 'La Peña'),
(339, 105, 'San Luis'),
(340, 106, 'Bariro'),
(341, 106, 'Borojó'),
(342, 106, 'Capatárida'),
(343, 106, 'Guajiro'),
(344, 106, 'Seque'),
(345, 106, 'Zazárida'),
(346, 106, 'Valle de Eroa'),
(347, 107, 'Cacique Manaure'),
(348, 108, 'Norte'),
(349, 108, 'Carirubana'),
(350, 108, 'Santa Ana'),
(351, 108, 'Urbana Punta Cardón'),
(352, 109, 'La Vela de Coro'),
(353, 109, 'Acurigua'),
(354, 109, 'Guaibacoa'),
(355, 109, 'Las Calderas'),
(356, 109, 'Macoruca'),
(357, 110, 'Dabajuro'),
(358, 111, 'Agua Clara'),
(359, 111, 'Avaria'),
(360, 111, 'Pedregal'),
(361, 111, 'Piedra Grande'),
(362, 111, 'Purureche'),
(363, 112, 'Adaure'),
(364, 112, 'Adícora'),
(365, 112, 'Baraived'),
(366, 112, 'Buena Vista'),
(367, 112, 'Jadacaquiva'),
(368, 112, 'El Vínculo'),
(369, 112, 'El Hato'),
(370, 112, 'Moruy'),
(371, 112, 'Pueblo Nuevo'),
(372, 113, 'Agua Larga'),
(373, 113, 'El Paují'),
(374, 113, 'Independencia'),
(375, 113, 'Mapararí'),
(376, 114, 'Agua Linda'),
(377, 114, 'Araurima'),
(378, 114, 'Jacura'),
(379, 115, 'Tucacas'),
(380, 115, 'Boca de Aroa'),
(381, 116, 'Los Taques'),
(382, 116, 'Judibana'),
(383, 117, 'Mene de Mauroa'),
(384, 117, 'San Félix'),
(385, 117, 'Casigua'),
(386, 118, 'Guzmán Guillermo'),
(387, 118, 'Mitare'),
(388, 118, 'Río Seco'),
(389, 118, 'Sabaneta'),
(390, 118, 'San Antonio'),
(391, 118, 'San Gabriel'),
(392, 118, 'Santa Ana'),
(393, 119, 'Boca del Tocuyo'),
(394, 119, 'Chichiriviche'),
(395, 119, 'Tocuyo de la Costa'),
(396, 120, 'Palmasola'),
(397, 121, 'Cabure'),
(398, 121, 'Colina'),
(399, 121, 'Curimagua'),
(400, 122, 'San José de la Costa'),
(401, 122, 'Píritu'),
(402, 123, 'San Francisco'),
(403, 124, 'Sucre'),
(404, 124, 'Pecaya'),
(405, 125, 'Tocópero'),
(406, 126, 'El Charal'),
(407, 126, 'Las Vegas del Tuy'),
(408, 126, 'Santa Cruz de Bucaral'),
(409, 127, 'Bruzual'),
(410, 127, 'Urumaco'),
(411, 128, 'Puerto Cumarebo'),
(412, 128, 'La Ciénaga'),
(413, 128, 'La Soledad'),
(414, 128, 'Pueblo Cumarebo'),
(415, 128, 'Zazárida'),
(416, 113, 'Churuguara'),
(417, 129, 'Camaguán'),
(418, 129, 'Puerto Miranda'),
(419, 129, 'Uverito'),
(420, 130, 'Chaguaramas'),
(421, 131, 'El Socorro'),
(422, 132, 'Tucupido'),
(423, 132, 'San Rafael de Laya'),
(424, 133, 'Altagracia de Orituco'),
(425, 133, 'San Rafael de Orituco'),
(426, 133, 'San Francisco Javier de Lezama'),
(427, 133, 'Paso Real de Macaira'),
(428, 133, 'Carlos Soublette'),
(429, 133, 'San Francisco de Macaira'),
(430, 133, 'Libertad de Orituco'),
(431, 134, 'Cantaclaro'),
(432, 134, 'San Juan de los Morros'),
(433, 134, 'Parapara'),
(434, 135, 'El Sombrero'),
(435, 135, 'Sosa'),
(436, 136, 'Las Mercedes'),
(437, 136, 'Cabruta'),
(438, 136, 'Santa Rita de Manapire'),
(439, 137, 'Valle de la Pascua'),
(440, 137, 'Espino'),
(441, 138, 'San José de Unare'),
(442, 138, 'Zaraza'),
(443, 139, 'San José de Tiznados'),
(444, 139, 'San Francisco de Tiznados'),
(445, 139, 'San Lorenzo de Tiznados'),
(446, 139, 'Ortiz'),
(447, 140, 'Guayabal'),
(448, 140, 'Cazorla'),
(449, 141, 'San José de Guaribe'),
(450, 141, 'Uveral'),
(451, 142, 'Santa María de Ipire'),
(452, 142, 'Altamira'),
(453, 143, 'El Calvario'),
(454, 143, 'El Rastro'),
(455, 143, 'Guardatinajas'),
(456, 143, 'Capital Urbana Calabozo'),
(457, 144, 'Quebrada Honda de Guache'),
(458, 144, 'Pío Tamayo'),
(459, 144, 'Yacambú'),
(460, 145, 'Fréitez'),
(461, 145, 'José María Blanco'),
(462, 146, 'Catedral'),
(463, 146, 'Concepción'),
(464, 146, 'El Cují'),
(465, 146, 'Juan de Villegas'),
(466, 146, 'Santa Rosa'),
(467, 146, 'Tamaca'),
(468, 146, 'Unión'),
(469, 146, 'Aguedo Felipe Alvarado'),
(470, 146, 'Buena Vista'),
(471, 146, 'Juárez'),
(472, 147, 'Juan Bautista Rodríguez'),
(473, 147, 'Cuara'),
(474, 147, 'Diego de Lozada'),
(475, 147, 'Paraíso de San José'),
(476, 147, 'San Miguel'),
(477, 147, 'Tintorero'),
(478, 147, 'José Bernardo Dorante'),
(479, 147, 'Coronel Mariano Peraza '),
(480, 148, 'Bolívar'),
(481, 148, 'Anzoátegui'),
(482, 148, 'Guarico'),
(483, 148, 'Hilario Luna y Luna'),
(484, 148, 'Humocaro Alto'),
(485, 148, 'Humocaro Bajo'),
(486, 148, 'La Candelaria'),
(487, 148, 'Morán'),
(488, 149, 'Cabudare'),
(489, 149, 'José Gregorio Bastidas'),
(490, 149, 'Agua Viva'),
(491, 150, 'Sarare'),
(492, 150, 'Buría'),
(493, 150, 'Gustavo Vegas León'),
(494, 151, 'Trinidad Samuel'),
(495, 151, 'Antonio Díaz'),
(496, 151, 'Camacaro'),
(497, 151, 'Castañeda'),
(498, 151, 'Cecilio Zubillaga'),
(499, 151, 'Chiquinquirá'),
(500, 151, 'El Blanco'),
(501, 151, 'Espinoza de los Monteros'),
(502, 151, 'Lara'),
(503, 151, 'Las Mercedes'),
(504, 151, 'Manuel Morillo'),
(505, 151, 'Montaña Verde'),
(506, 151, 'Montes de Oca'),
(507, 151, 'Torres'),
(508, 151, 'Heriberto Arroyo'),
(509, 151, 'Reyes Vargas'),
(510, 151, 'Altagracia'),
(511, 152, 'Siquisique'),
(512, 152, 'Moroturo'),
(513, 152, 'San Miguel'),
(514, 152, 'Xaguas'),
(515, 179, 'Presidente Betancourt'),
(516, 179, 'Presidente Páez'),
(517, 179, 'Presidente Rómulo Gallegos'),
(518, 179, 'Gabriel Picón González'),
(519, 179, 'Héctor Amable Mora'),
(520, 179, 'José Nucete Sardi'),
(521, 179, 'Pulido Méndez'),
(522, 180, 'La Azulita'),
(523, 181, 'Santa Cruz de Mora'),
(524, 181, 'Mesa Bolívar'),
(525, 181, 'Mesa de Las Palmas'),
(526, 182, 'Aricagua'),
(527, 182, 'San Antonio'),
(528, 183, 'Canagua'),
(529, 183, 'Capurí'),
(530, 183, 'Chacantá'),
(531, 183, 'El Molino'),
(532, 183, 'Guaimaral'),
(533, 183, 'Mucutuy'),
(534, 183, 'Mucuchachí'),
(535, 184, 'Fernández Peña'),
(536, 184, 'Matriz'),
(537, 184, 'Montalbán'),
(538, 184, 'Acequias'),
(539, 184, 'Jají'),
(540, 184, 'La Mesa'),
(541, 184, 'San José del Sur'),
(542, 185, 'Tucaní'),
(543, 185, 'Florencio Ramírez'),
(544, 186, 'Santo Domingo'),
(545, 186, 'Las Piedras'),
(546, 187, 'Guaraque'),
(547, 187, 'Mesa de Quintero'),
(548, 187, 'Río Negro'),
(549, 188, 'Arapuey'),
(550, 188, 'Palmira'),
(551, 189, 'San Cristóbal de Torondoy'),
(552, 189, 'Torondoy'),
(553, 190, 'Antonio Spinetti Dini'),
(554, 190, 'Arias'),
(555, 190, 'Caracciolo Parra Pérez'),
(556, 190, 'Domingo Peña'),
(557, 190, 'El Llano'),
(558, 190, 'Gonzalo Picón Febres'),
(559, 190, 'Jacinto Plaza'),
(560, 190, 'Juan Rodríguez Suárez'),
(561, 190, 'Lasso de la Vega'),
(562, 190, 'Mariano Picón Salas'),
(563, 190, 'Milla'),
(564, 190, 'Osuna Rodríguez'),
(565, 190, 'Sagrario'),
(566, 190, 'El Morro'),
(567, 190, 'Los Nevados'),
(568, 191, 'Andrés Eloy Blanco'),
(569, 191, 'La Venta'),
(570, 191, 'Piñango'),
(571, 191, 'Timotes'),
(572, 192, 'Eloy Paredes'),
(573, 192, 'San Rafael de Alcázar'),
(574, 192, 'Santa Elena de Arenales'),
(575, 193, 'Santa María de Caparo'),
(576, 194, 'Pueblo Llano'),
(577, 195, 'Cacute'),
(578, 195, 'La Toma'),
(579, 195, 'Mucuchíes'),
(580, 195, 'Mucurubá'),
(581, 195, 'San Rafael'),
(582, 196, 'Gerónimo Maldonado'),
(583, 196, 'Bailadores'),
(584, 197, 'Tabay'),
(585, 198, 'Chiguará'),
(586, 198, 'Estánquez'),
(587, 198, 'Lagunillas'),
(588, 198, 'La Trampa'),
(589, 198, 'Pueblo Nuevo del Sur'),
(590, 198, 'San Juan'),
(591, 199, 'El Amparo'),
(592, 199, 'El Llano'),
(593, 199, 'San Francisco'),
(594, 199, 'Tovar'),
(595, 200, 'Independencia'),
(596, 200, 'María de la Concepción Palacios Blanco'),
(597, 200, 'Nueva Bolivia'),
(598, 200, 'Santa Apolonia'),
(599, 201, 'Caño El Tigre'),
(600, 201, 'Zea'),
(601, 223, 'Aragüita'),
(602, 223, 'Arévalo González'),
(603, 223, 'Capaya'),
(604, 223, 'Caucagua'),
(605, 223, 'Panaquire'),
(606, 223, 'Ribas'),
(607, 223, 'El Café'),
(608, 223, 'Marizapa'),
(609, 224, 'Cumbo'),
(610, 224, 'San José de Barlovento'),
(611, 225, 'El Cafetal'),
(612, 225, 'Las Minas'),
(613, 225, 'Nuestra Señora del Rosario'),
(614, 226, 'Higuerote'),
(615, 226, 'Curiepe'),
(616, 226, 'Tacarigua de Brión'),
(617, 227, 'Mamporal'),
(618, 228, 'Carrizal'),
(619, 229, 'Chacao'),
(620, 230, 'Charallave'),
(621, 230, 'Las Brisas'),
(622, 231, 'El Hatillo'),
(623, 232, 'Altagracia de la Montaña'),
(624, 232, 'Cecilio Acosta'),
(625, 232, 'Los Teques'),
(626, 232, 'El Jarillo'),
(627, 232, 'San Pedro'),
(628, 232, 'Tácata'),
(629, 232, 'Paracotos'),
(630, 233, 'Cartanal'),
(631, 233, 'Santa Teresa del Tuy'),
(632, 234, 'La Democracia'),
(633, 234, 'Ocumare del Tuy'),
(634, 234, 'Santa Bárbara'),
(635, 235, 'San Antonio de los Altos'),
(636, 236, 'Río Chico'),
(637, 236, 'El Guapo'),
(638, 236, 'Tacarigua de la Laguna'),
(639, 236, 'Paparo'),
(640, 236, 'San Fernando del Guapo'),
(641, 237, 'Santa Lucía del Tuy'),
(642, 238, 'Cúpira'),
(643, 238, 'Machurucuto'),
(644, 239, 'Guarenas'),
(645, 240, 'San Antonio de Yare'),
(646, 240, 'San Francisco de Yare'),
(647, 241, 'Leoncio Martínez'),
(648, 241, 'Petare'),
(649, 241, 'Caucagüita'),
(650, 241, 'Filas de Mariche'),
(651, 241, 'La Dolorita'),
(652, 242, 'Cúa'),
(653, 242, 'Nueva Cúa'),
(654, 243, 'Guatire'),
(655, 243, 'Bolívar'),
(656, 258, 'San Antonio de Maturín'),
(657, 258, 'San Francisco de Maturín'),
(658, 259, 'Aguasay'),
(659, 260, 'Caripito'),
(660, 261, 'El Guácharo'),
(661, 261, 'La Guanota'),
(662, 261, 'Sabana de Piedra'),
(663, 261, 'San Agustín'),
(664, 261, 'Teresen'),
(665, 261, 'Caripe'),
(666, 262, 'Areo'),
(667, 262, 'Capital Cedeño'),
(668, 262, 'San Félix de Cantalicio'),
(669, 262, 'Viento Fresco'),
(670, 263, 'El Tejero'),
(671, 263, 'Punta de Mata'),
(672, 264, 'Chaguaramas'),
(673, 264, 'Las Alhuacas'),
(674, 264, 'Tabasca'),
(675, 264, 'Temblador'),
(676, 265, 'Alto de los Godos'),
(677, 265, 'Boquerón'),
(678, 265, 'Las Cocuizas'),
(679, 265, 'La Cruz'),
(680, 265, 'San Simón'),
(681, 265, 'El Corozo'),
(682, 265, 'El Furrial'),
(683, 265, 'Jusepín'),
(684, 265, 'La Pica'),
(685, 265, 'San Vicente'),
(686, 266, 'Aparicio'),
(687, 266, 'Aragua de Maturín'),
(688, 266, 'Chaguamal'),
(689, 266, 'El Pinto'),
(690, 266, 'Guanaguana'),
(691, 266, 'La Toscana'),
(692, 266, 'Taguaya'),
(693, 267, 'Cachipo'),
(694, 267, 'Quiriquire'),
(695, 268, 'Santa Bárbara'),
(696, 269, 'Barrancas'),
(697, 269, 'Los Barrancos de Fajardo'),
(698, 270, 'Uracoa'),
(699, 271, 'Antolín del Campo'),
(700, 272, 'Arismendi'),
(701, 273, 'García'),
(702, 273, 'Francisco Fajardo'),
(703, 274, 'Bolívar'),
(704, 274, 'Guevara'),
(705, 274, 'Matasiete'),
(706, 274, 'Santa Ana'),
(707, 274, 'Sucre'),
(708, 275, 'Aguirre'),
(709, 275, 'Maneiro'),
(710, 276, 'Adrián'),
(711, 276, 'Juan Griego'),
(712, 276, 'Yaguaraparo'),
(713, 277, 'Porlamar'),
(714, 278, 'San Francisco de Macanao'),
(715, 278, 'Boca de Río'),
(716, 279, 'Tubores'),
(717, 279, 'Los Baleales'),
(718, 280, 'Vicente Fuentes'),
(719, 280, 'Villalba'),
(720, 281, 'San Juan Bautista'),
(721, 281, 'Zabala'),
(722, 283, 'Capital Araure'),
(723, 283, 'Río Acarigua'),
(724, 284, 'Capital Esteller'),
(725, 284, 'Uveral'),
(726, 285, 'Guanare'),
(727, 285, 'Córdoba'),
(728, 285, 'San José de la Montaña'),
(729, 285, 'San Juan de Guanaguanare'),
(730, 285, 'Virgen de la Coromoto'),
(731, 286, 'Guanarito'),
(732, 286, 'Trinidad de la Capilla'),
(733, 286, 'Divina Pastora'),
(734, 287, 'Monseñor José Vicente de Unda'),
(735, 287, 'Peña Blanca'),
(736, 288, 'Capital Ospino'),
(737, 288, 'Aparición'),
(738, 288, 'La Estación'),
(739, 289, 'Páez'),
(740, 289, 'Payara'),
(741, 289, 'Pimpinela'),
(742, 289, 'Ramón Peraza'),
(743, 290, 'Papelón'),
(744, 290, 'Caño Delgadito'),
(745, 291, 'San Genaro de Boconoito'),
(746, 291, 'Antolín Tovar'),
(747, 292, 'San Rafael de Onoto'),
(748, 292, 'Santa Fe'),
(749, 292, 'Thermo Morles'),
(750, 293, 'Santa Rosalía'),
(751, 293, 'Florida'),
(752, 294, 'Sucre'),
(753, 294, 'Concepción'),
(754, 294, 'San Rafael de Palo Alzado'),
(755, 294, 'Uvencio Antonio Velásquez'),
(756, 294, 'San José de Saguaz'),
(757, 294, 'Villa Rosa'),
(758, 295, 'Turén'),
(759, 295, 'Canelones'),
(760, 295, 'Santa Cruz'),
(761, 295, 'San Isidro Labrador'),
(762, 296, 'Mariño'),
(763, 296, 'Rómulo Gallegos'),
(764, 297, 'San José de Aerocuar'),
(765, 297, 'Tavera Acosta'),
(766, 298, 'Río Caribe'),
(767, 298, 'Antonio José de Sucre'),
(768, 298, 'El Morro de Puerto Santo'),
(769, 298, 'Puerto Santo'),
(770, 298, 'San Juan de las Galdonas'),
(771, 299, 'El Pilar'),
(772, 299, 'El Rincón'),
(773, 299, 'General Francisco Antonio Váquez'),
(774, 299, 'Guaraúnos'),
(775, 299, 'Tunapuicito'),
(776, 299, 'Unión'),
(777, 300, 'Santa Catalina'),
(778, 300, 'Santa Rosa'),
(779, 300, 'Santa Teresa'),
(780, 300, 'Bolívar'),
(781, 300, 'Maracapana'),
(782, 302, 'Libertad'),
(783, 302, 'El Paujil'),
(784, 302, 'Yaguaraparo'),
(785, 303, 'Cruz Salmerón Acosta'),
(786, 303, 'Chacopata'),
(787, 303, 'Manicuare'),
(788, 304, 'Tunapuy'),
(789, 304, 'Campo Elías'),
(790, 305, 'Irapa'),
(791, 305, 'Campo Claro'),
(792, 305, 'Maraval'),
(793, 305, 'San Antonio de Irapa'),
(794, 305, 'Soro'),
(795, 306, 'Mejía'),
(796, 307, 'Cumanacoa'),
(797, 307, 'Arenas'),
(798, 307, 'Aricagua'),
(799, 307, 'Cogollar'),
(800, 307, 'San Fernando'),
(801, 307, 'San Lorenzo'),
(802, 308, 'Villa Frontado (Muelle de Cariaco)'),
(803, 308, 'Catuaro'),
(804, 308, 'Rendón'),
(805, 308, 'San Cruz'),
(806, 308, 'Santa María'),
(807, 309, 'Altagracia'),
(808, 309, 'Santa Inés'),
(809, 309, 'Valentín Valiente'),
(810, 309, 'Ayacucho'),
(811, 309, 'San Juan'),
(812, 309, 'Raúl Leoni'),
(813, 309, 'Gran Mariscal'),
(814, 310, 'Cristóbal Colón'),
(815, 310, 'Bideau'),
(816, 310, 'Punta de Piedras'),
(817, 310, 'Güiria'),
(818, 341, 'Andrés Bello'),
(819, 342, 'Antonio Rómulo Costa'),
(820, 343, 'Ayacucho'),
(821, 343, 'Rivas Berti'),
(822, 343, 'San Pedro del Río'),
(823, 344, 'Bolívar'),
(824, 344, 'Palotal'),
(825, 344, 'General Juan Vicente Gómez'),
(826, 344, 'Isaías Medina Angarita'),
(827, 345, 'Cárdenas'),
(828, 345, 'Amenodoro Ángel Lamus'),
(829, 345, 'La Florida'),
(830, 346, 'Córdoba'),
(831, 347, 'Fernández Feo'),
(832, 347, 'Alberto Adriani'),
(833, 347, 'Santo Domingo'),
(834, 348, 'Francisco de Miranda'),
(835, 349, 'García de Hevia'),
(836, 349, 'Boca de Grita'),
(837, 349, 'José Antonio Páez'),
(838, 350, 'Guásimos'),
(839, 351, 'Independencia'),
(840, 351, 'Juan Germán Roscio'),
(841, 351, 'Román Cárdenas'),
(842, 352, 'Jáuregui'),
(843, 352, 'Emilio Constantino Guerrero'),
(844, 352, 'Monseñor Miguel Antonio Salas'),
(845, 353, 'José María Vargas'),
(846, 354, 'Junín'),
(847, 354, 'La Petrólea'),
(848, 354, 'Quinimarí'),
(849, 354, 'Bramón'),
(850, 355, 'Libertad'),
(851, 355, 'Cipriano Castro'),
(852, 355, 'Manuel Felipe Rugeles'),
(853, 356, 'Libertador'),
(854, 356, 'Doradas'),
(855, 356, 'Emeterio Ochoa'),
(856, 356, 'San Joaquín de Navay'),
(857, 357, 'Lobatera'),
(858, 357, 'Constitución'),
(859, 358, 'Michelena'),
(860, 359, 'Panamericano'),
(861, 359, 'La Palmita'),
(862, 360, 'Pedro María Ureña'),
(863, 360, 'Nueva Arcadia'),
(864, 361, 'Delicias'),
(865, 361, 'Pecaya'),
(866, 362, 'Samuel Darío Maldonado'),
(867, 362, 'Boconó'),
(868, 362, 'Hernández'),
(869, 363, 'La Concordia'),
(870, 363, 'San Juan Bautista'),
(871, 363, 'Pedro María Morantes'),
(872, 363, 'San Sebastián'),
(873, 363, 'Dr. Francisco Romero Lobo'),
(874, 364, 'Seboruco'),
(875, 365, 'Simón Rodríguez'),
(876, 366, 'Sucre'),
(877, 366, 'Eleazar López Contreras'),
(878, 366, 'San Pablo'),
(879, 367, 'Torbes'),
(880, 368, 'Uribante'),
(881, 368, 'Cárdenas'),
(882, 368, 'Juan Pablo Peñalosa'),
(883, 368, 'Potosí'),
(884, 369, 'San Judas Tadeo'),
(885, 370, 'Araguaney'),
(886, 370, 'El Jaguito'),
(887, 370, 'La Esperanza'),
(888, 370, 'Santa Isabel'),
(889, 371, 'Boconó'),
(890, 371, 'El Carmen'),
(891, 371, 'Mosquey'),
(892, 371, 'Ayacucho'),
(893, 371, 'Burbusay'),
(894, 371, 'General Ribas'),
(895, 371, 'Guaramacal'),
(896, 371, 'Vega de Guaramacal'),
(897, 371, 'Monseñor Jáuregui'),
(898, 371, 'Rafael Rangel'),
(899, 371, 'San Miguel'),
(900, 371, 'San José'),
(901, 372, 'Sabana Grande'),
(902, 372, 'Cheregüé'),
(903, 372, 'Granados'),
(904, 373, 'Arnoldo Gabaldón'),
(905, 373, 'Bolivia'),
(906, 373, 'Carrillo'),
(907, 373, 'Cegarra'),
(908, 373, 'Chejendé'),
(909, 373, 'Manuel Salvador Ulloa'),
(910, 373, 'San José'),
(911, 374, 'Carache'),
(912, 374, 'La Concepción'),
(913, 374, 'Cuicas'),
(914, 374, 'Panamericana'),
(915, 374, 'Santa Cruz'),
(916, 375, 'Escuque'),
(917, 375, 'La Unión'),
(918, 375, 'Santa Rita'),
(919, 375, 'Sabana Libre'),
(920, 376, 'El Socorro'),
(921, 376, 'Los Caprichos'),
(922, 376, 'Antonio José de Sucre'),
(923, 377, 'Campo Elías'),
(924, 377, 'Arnoldo Gabaldón'),
(925, 378, 'Santa Apolonia'),
(926, 378, 'El Progreso'),
(927, 378, 'La Ceiba'),
(928, 378, 'Tres de Febrero'),
(929, 379, 'El Dividive'),
(930, 379, 'Agua Santa'),
(931, 379, 'Agua Caliente'),
(932, 379, 'El Cenizo'),
(933, 379, 'Valerita'),
(934, 380, 'Monte Carmelo'),
(935, 380, 'Buena Vista'),
(936, 380, 'Santa María del Horcón'),
(937, 381, 'Motatán'),
(938, 381, 'El Baño'),
(939, 381, 'Jalisco'),
(940, 382, 'Pampán'),
(941, 382, 'Flor de Patria'),
(942, 382, 'La Paz'),
(943, 382, 'Santa Ana'),
(944, 383, 'Pampanito'),
(945, 383, 'La Concepción'),
(946, 383, 'Pampanito II'),
(947, 384, 'Betijoque'),
(948, 384, 'José Gregorio Hernández'),
(949, 384, 'La Pueblita'),
(950, 384, 'Los Cedros'),
(951, 385, 'Carvajal'),
(952, 385, 'Campo Alegre'),
(953, 385, 'Antonio Nicolás Briceño'),
(954, 385, 'José Leonardo Suárez'),
(955, 386, 'Sabana de Mendoza'),
(956, 386, 'Junín'),
(957, 386, 'Valmore Rodríguez'),
(958, 386, 'El Paraíso'),
(959, 387, 'Andrés Linares'),
(960, 387, 'Chiquinquirá'),
(961, 387, 'Cristóbal Mendoza'),
(962, 387, 'Cruz Carrillo'),
(963, 387, 'Matriz'),
(964, 387, 'Monseñor Carrillo'),
(965, 387, 'Tres Esquinas'),
(966, 388, 'Cabimbú'),
(967, 388, 'Jajó'),
(968, 388, 'La Mesa de Esnujaque'),
(969, 388, 'Santiago'),
(970, 388, 'Tuñame'),
(971, 388, 'La Quebrada'),
(972, 389, 'Juan Ignacio Montilla'),
(973, 389, 'La Beatriz'),
(974, 389, 'La Puerta'),
(975, 389, 'Mendoza del Valle de Momboy'),
(976, 389, 'Mercedes Díaz'),
(977, 389, 'San Luis'),
(978, 390, 'Caraballeda'),
(979, 390, 'Carayaca'),
(980, 390, 'Carlos Soublette'),
(981, 390, 'Caruao Chuspa'),
(982, 390, 'Catia La Mar'),
(983, 390, 'El Junko'),
(984, 390, 'La Guaira'),
(985, 390, 'Macuto'),
(986, 390, 'Maiquetía'),
(987, 390, 'Naiguatá'),
(988, 390, 'Urimare'),
(989, 391, 'Arístides Bastidas'),
(990, 392, 'Bolívar'),
(991, 407, 'Chivacoa'),
(992, 407, 'Campo Elías'),
(993, 408, 'Cocorote'),
(994, 409, 'Independencia'),
(995, 410, 'José Antonio Páez'),
(996, 411, 'La Trinidad'),
(997, 412, 'Manuel Monge'),
(998, 413, 'Salóm'),
(999, 413, 'Temerla'),
(1000, 413, 'Nirgua'),
(1001, 414, 'San Andrés'),
(1002, 414, 'Yaritagua'),
(1003, 415, 'San Javier'),
(1004, 415, 'Albarico'),
(1005, 415, 'San Felipe'),
(1006, 416, 'Sucre'),
(1007, 417, 'Urachiche'),
(1008, 418, 'El Guayabo'),
(1009, 418, 'Farriar'),
(1010, 441, 'Isla de Toas'),
(1011, 441, 'Monagas'),
(1012, 442, 'San Timoteo'),
(1013, 442, 'General Urdaneta'),
(1014, 442, 'Libertador'),
(1015, 442, 'Marcelino Briceño'),
(1016, 442, 'Pueblo Nuevo'),
(1017, 442, 'Manuel Guanipa Matos'),
(1018, 443, 'Ambrosio'),
(1019, 443, 'Carmen Herrera'),
(1020, 443, 'La Rosa'),
(1021, 443, 'Germán Ríos Linares'),
(1022, 443, 'San Benito'),
(1023, 443, 'Rómulo Betancourt'),
(1024, 443, 'Jorge Hernández'),
(1025, 443, 'Punta Gorda'),
(1026, 443, 'Arístides Calvani'),
(1027, 444, 'Encontrados'),
(1028, 444, 'Udón Pérez'),
(1029, 445, 'Moralito'),
(1030, 445, 'San Carlos del Zulia'),
(1031, 445, 'Santa Cruz del Zulia'),
(1032, 445, 'Santa Bárbara'),
(1033, 445, 'Urribarrí'),
(1034, 446, 'Carlos Quevedo'),
(1035, 446, 'Francisco Javier Pulgar'),
(1036, 446, 'Simón Rodríguez'),
(1037, 446, 'Guamo-Gavilanes'),
(1038, 448, 'La Concepción'),
(1039, 448, 'San José'),
(1040, 448, 'Mariano Parra León'),
(1041, 448, 'José Ramón Yépez'),
(1042, 449, 'Jesús María Semprún'),
(1043, 449, 'Barí'),
(1044, 450, 'Concepción'),
(1045, 450, 'Andrés Bello'),
(1046, 450, 'Chiquinquirá'),
(1047, 450, 'El Carmelo'),
(1048, 450, 'Potreritos'),
(1049, 451, 'Libertad'),
(1050, 451, 'Alonso de Ojeda'),
(1051, 451, 'Venezuela'),
(1052, 451, 'Eleazar López Contreras'),
(1053, 451, 'Campo Lara'),
(1054, 452, 'Bartolomé de las Casas'),
(1055, 452, 'Libertad'),
(1056, 452, 'Río Negro'),
(1057, 452, 'San José de Perijá'),
(1058, 453, 'San Rafael'),
(1059, 453, 'La Sierrita'),
(1060, 453, 'Las Parcelas'),
(1061, 453, 'Luis de Vicente'),
(1062, 453, 'Monseñor Marcos Sergio Godoy'),
(1063, 453, 'Ricaurte'),
(1064, 453, 'Tamare'),
(1065, 454, 'Antonio Borjas Romero'),
(1066, 454, 'Bolívar'),
(1067, 454, 'Cacique Mara'),
(1068, 454, 'Carracciolo Parra Pérez'),
(1069, 454, 'Cecilio Acosta'),
(1070, 454, 'Cristo de Aranza'),
(1071, 454, 'Coquivacoa'),
(1072, 454, 'Chiquinquirá'),
(1073, 454, 'Francisco Eugenio Bustamante'),
(1074, 454, 'Idelfonzo Vásquez'),
(1075, 454, 'Juana de Ávila'),
(1076, 454, 'Luis Hurtado Higuera'),
(1077, 454, 'Manuel Dagnino'),
(1078, 454, 'Olegario Villalobos'),
(1079, 454, 'Raúl Leoni'),
(1080, 454, 'Santa Lucía'),
(1081, 454, 'Venancio Pulgar'),
(1082, 454, 'San Isidro'),
(1083, 455, 'Altagracia'),
(1084, 455, 'Faría'),
(1085, 455, 'Ana María Campos'),
(1086, 455, 'San Antonio'),
(1087, 455, 'San José'),
(1088, 456, 'Donaldo García'),
(1089, 456, 'El Rosario'),
(1090, 456, 'Sixto Zambrano'),
(1091, 457, 'San Francisco'),
(1092, 457, 'El Bajo'),
(1093, 457, 'Domitila Flores'),
(1094, 457, 'Francisco Ochoa'),
(1095, 457, 'Los Cortijos'),
(1096, 457, 'Marcial Hernández'),
(1097, 458, 'Santa Rita'),
(1098, 458, 'El Mene'),
(1099, 458, 'Pedro Lucas Urribarrí'),
(1100, 458, 'José Cenobio Urribarrí'),
(1101, 459, 'Rafael Maria Baralt'),
(1102, 459, 'Manuel Manrique'),
(1103, 459, 'Rafael Urdaneta'),
(1104, 460, 'Bobures'),
(1105, 460, 'Gibraltar'),
(1106, 460, 'Heras'),
(1107, 460, 'Monseñor Arturo Álvarez'),
(1108, 460, 'Rómulo Gallegos'),
(1109, 460, 'El Batey'),
(1110, 461, 'Rafael Urdaneta'),
(1111, 461, 'La Victoria'),
(1112, 461, 'Raúl Cuenca'),
(1113, 447, 'Sinamaica'),
(1114, 447, 'Alta Guajira'),
(1115, 447, 'Elías Sánchez Rubio'),
(1116, 447, 'Guajira'),
(1117, 462, 'Altagracia'),
(1118, 462, 'Antímano'),
(1119, 462, 'Caricuao'),
(1120, 462, 'Catedral'),
(1121, 462, 'Coche'),
(1122, 462, 'El Junquito'),
(1123, 462, 'El Paraíso'),
(1124, 462, 'El Recreo'),
(1125, 462, 'El Valle'),
(1126, 462, 'La Candelaria'),
(1127, 462, 'La Pastora'),
(1128, 462, 'La Vega'),
(1129, 462, 'Macarao'),
(1130, 462, 'San Agustín'),
(1131, 462, 'San Bernardino'),
(1132, 462, 'San José'),
(1133, 462, 'San Juan'),
(1134, 462, 'San Pedro'),
(1135, 462, 'Santa Rosalía'),
(1136, 462, 'Santa Teresa'),
(1137, 462, 'Sucre (Catia)'),
(1138, 462, '23 de enero');

-- --------------------------------------------------------

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos` (
  `id_permisos` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `permiso` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permisos`
--

INSERT INTO `permisos` (`id_permisos`, `id_menu`, `id_role`, `permiso`) VALUES
(13, 7, 1, 1),
(14, 8, 1, 1),
(15, 7, 3, 1),
(16, 8, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `peso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `role`, `peso`) VALUES
(1, 'admin_sistem', 1),
(2, 'anonimo', 1),
(3, 'usuario_1', 10);

-- --------------------------------------------------------

--
-- Table structure for table `switch`
--

DROP TABLE IF EXISTS `switch`;
CREATE TABLE `switch` (
  `id` int(11) NOT NULL,
  `accion` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefono_emp`
--

DROP TABLE IF EXISTS `telefono_emp`;
CREATE TABLE `telefono_emp` (
  `id_tlf` int(11) NOT NULL,
  `id_propietario` int(11) NOT NULL,
  `tlf` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `telefono_emp`
--

INSERT INTO `telefono_emp` (`id_tlf`, `id_propietario`, `tlf`, `tipo`) VALUES
(53, 1, 'telefono 1', 'empresa');

-- --------------------------------------------------------

--
-- Table structure for table `telefono_gere`
--

DROP TABLE IF EXISTS `telefono_gere`;
CREATE TABLE `telefono_gere` (
  `id_tlf` int(11) NOT NULL,
  `id_propietario` int(11) NOT NULL,
  `tlf` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `telefono_gere`
--

INSERT INTO `telefono_gere` (`id_tlf`, `id_propietario`, `tlf`, `tipo`) VALUES
(19, 51, 'telefono 1 dueeño', 'propietario'),
(20, 51, 'telefono 2 dueeño', 'propietario'),
(21, 52, '04145896963', 'encargado');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_role` int(11) NOT NULL DEFAULT '2',
  `login` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_role`, `login`, `password`, `estado`) VALUES
(1, 1, 'admin', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1),
(2, 3, 'usuario', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `capacidades`
--
ALTER TABLE `capacidades`
  ADD PRIMARY KEY (`id_capacidad`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indexes for table `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indexes for table `email_emp`
--
ALTER TABLE `email_emp`
  ADD PRIMARY KEY (`id_email`),
  ADD KEY `id_propietario` (`id_propietario`);

--
-- Indexes for table `email_gere`
--
ALTER TABLE `email_gere`
  ADD PRIMARY KEY (`id_email`),
  ADD KEY `id_propietario` (`id_propietario`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD KEY `id_parroquia` (`id_parroquia`);

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indexes for table `gerencia`
--
ALTER TABLE `gerencia`
  ADD PRIMARY KEY (`id_gerencia`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `maquinas`
--
ALTER TABLE `maquinas`
  ADD PRIMARY KEY (`id_maquinaria`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indexes for table `materia_prima_req`
--
ALTER TABLE `materia_prima_req`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indexes for table `parroquias`
--
ALTER TABLE `parroquias`
  ADD PRIMARY KEY (`id_parroquia`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indexes for table `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permisos`),
  ADD KEY `id_menu` (`id_menu`,`id_role`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `switch`
--
ALTER TABLE `switch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telefono_emp`
--
ALTER TABLE `telefono_emp`
  ADD PRIMARY KEY (`id_tlf`),
  ADD KEY `id_propietario` (`id_propietario`);

--
-- Indexes for table `telefono_gere`
--
ALTER TABLE `telefono_gere`
  ADD PRIMARY KEY (`id_tlf`),
  ADD KEY `id_propietario` (`id_propietario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_role_2` (`id_role`),
  ADD KEY `id_role_3` (`id_role`),
  ADD KEY `id_role_4` (`id_role`),
  ADD KEY `id_role_5` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `capacidades`
--
ALTER TABLE `capacidades`
  MODIFY `id_capacidad` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;
--
-- AUTO_INCREMENT for table `email_emp`
--
ALTER TABLE `email_emp`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `email_gere`
--
ALTER TABLE `email_gere`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `gerencia`
--
ALTER TABLE `gerencia`
  MODIFY `id_gerencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;
--
-- AUTO_INCREMENT for table `maquinas`
--
ALTER TABLE `maquinas`
  MODIFY `id_maquinaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `materia_prima_req`
--
ALTER TABLE `materia_prima_req`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;
--
-- AUTO_INCREMENT for table `parroquias`
--
ALTER TABLE `parroquias`
  MODIFY `id_parroquia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1139;
--
-- AUTO_INCREMENT for table `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permisos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `switch`
--
ALTER TABLE `switch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `telefono_emp`
--
ALTER TABLE `telefono_emp`
  MODIFY `id_tlf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `telefono_gere`
--
ALTER TABLE `telefono_gere`
  MODIFY `id_tlf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `capacidades`
--
ALTER TABLE `capacidades`
  ADD CONSTRAINT `capacidades_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `email_emp`
--
ALTER TABLE `email_emp`
  ADD CONSTRAINT `email_emp_ibfk_1` FOREIGN KEY (`id_propietario`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `email_gere`
--
ALTER TABLE `email_gere`
  ADD CONSTRAINT `email_gere_ibfk_1` FOREIGN KEY (`id_propietario`) REFERENCES `gerencia` (`id_gerencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`id_parroquia`) REFERENCES `parroquias` (`id_parroquia`);

--
-- Constraints for table `gerencia`
--
ALTER TABLE `gerencia`
  ADD CONSTRAINT `gerencia_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maquinas`
--
ALTER TABLE `maquinas`
  ADD CONSTRAINT `maquinas_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `materia_prima_req`
--
ALTER TABLE `materia_prima_req`
  ADD CONSTRAINT `materia_prima_req_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parroquias`
--
ALTER TABLE `parroquias`
  ADD CONSTRAINT `parroquias_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `telefono_emp`
--
ALTER TABLE `telefono_emp`
  ADD CONSTRAINT `telefono_emp_ibfk_1` FOREIGN KEY (`id_propietario`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `telefono_gere`
--
ALTER TABLE `telefono_gere`
  ADD CONSTRAINT `telefono_gere_ibfk_1` FOREIGN KEY (`id_propietario`) REFERENCES `gerencia` (`id_gerencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
