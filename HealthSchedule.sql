-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2024 at 01:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HealthSchedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit_weight` double DEFAULT NULL,
  `energy_per_100g` double DEFAULT NULL,
  `carbs_per_100g` double DEFAULT NULL,
  `protein_per_100g` double DEFAULT NULL,
  `fat_per_100g` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `unit_weight`, `energy_per_100g`, `carbs_per_100g`, `protein_per_100g`, `fat_per_100g`) VALUES
(1, 'MARGARINE SPREAD, WITHOUT SALT (SAPUAN MERJERIN TANPA GARAM)', 16.488, 519, 0.14, 0.6, 58.34),
(2, 'CHEESE SPREAD (KEJU SAPUAN)', 15, 295, 3.5, 7, 29),
(3, 'MARGARINE SPREAD, WITH SALT (SAPUAN MERJERIN BERGARAM)', 13.796, 621, NULL, 0.29, 70),
(4, 'CHOCOLATE, WHITE (COKLAT PUTIH)', 5.81094, 539, 59, 6, 32),
(5, 'RICE, ARAB (NASI ARAB)', 200, 222, 40.78, 5.2, 4.27),
(6, 'CAKE, CUP, WITH FROSTING/GLAZE (KEK CAWAN)', 48.36, 370, 67.8, 2.85, 10.96),
(7, 'YOGURT, DRINKING, PASTEURISED, NATURAL FLAVOUR', 250, 61, 4.7, 3.5, 3.3),
(8, 'KOLEH KACANG', 49, 175.52, 24.27, 4.65, 6.65),
(9, 'SAUCE, OYSTER FLAVOURED', 11.37, 51, 11, 1.4, 0.3),
(10, 'DESSERT, HONEYCOMB CAKE (KEK GULA HANGUS)', 88.16, 250, 42, 5.1, 7.1),
(11, 'TRADITIONAL MALAYSIAN KUIH, SWEET FERMENTED TAPIOCA (TAPAI UBI KAYU)', 272.26, 246, 59.96, 0.85, 0.31),
(12, 'OIL, BLEND (MINYAK CAMPURAN)', 2.794, 896.14, 0.46, 0, 99.37),
(13, 'COFFEE, WITH MILK AND SUGAR, FROM MAMAK STALLS', 200, 207, 51.54, 0.17, 0.02),
(14, 'COOKIES/CRACKERS, SANDWICH WITH FLAVOURED CREAM OREO', 9.65, 468, 69.86, 5.79, 18.43),
(15, 'OIL, VEGETABLE (MINYAK SAYURAN)', 3.308, 897.68, 0.08, 0, 99.71),
(16, 'POMEGRANATE (DELIMA)', 174.693, 80, 14.4, 1.53, 0.8),
(17, 'OIL, COCONUT (MINYAK KELAPA)', 3.899, 897.33, 0.09, 0.08, 99.63),
(18, 'CAKE, CHEESE (KEK KEJU)', 129.63, 321, 26, 6, 23),
(19, 'TRADITIONAL MALAYSIAN KUIH, SESAME BALLS (KUIH BOM)', 33.48, 335, 51.21, 6.54, 11.59),
(20, 'RICE, BRIYANI (DAGING)', 271.62, 195, 37.07, 7.85, 8.07),
(21, 'PASTRY, PUFF, CHOCOLATE FILLING', 31.08, 531.25, 56.25, 6.25, 35),
(22, 'TRADITIONAL MALAYSIAN KUIH, SWEET GLUTINOUS RICE CAKE (WAJIK)', 20, 290, 56, 3, 5),
(23, 'CEREAL, BREAKFAST, OAT/MULTIGRAIN', 100, 370, 65, 12, 6),
(24, 'BISCUIT, MILK (BISKUT SUSU)', 29, 473, 58.25, 8.83, 21.42),
(25, 'SUGAR, ICING (GULA ISING)', 14.568, 389, 100, NULL, NULL),
(26, 'SOFT MARGARINE (MARJERIN LEMBUT)', 18.606, 720, NULL, NULL, 80),
(27, 'CAROB FLOUR (TEPUNG KACANG KUDA)', 3, 311.01, 52.73, 21.11, 1.74),
(28, 'DESEERT, COCONUT MILK JELLY (AGAR-AGAR SANTAN)', 38.09, 120, 15, 1, 6),
(29, 'RICE, BRIYANI (AYAM)', 404.76, 159, 24.36, 3.24, 5.36),
(30, 'FRUIT JUICE ORANGE', 240, 33.47, 5.1, 0.64, 1.17),
(31, 'JAM, BLACKCURRENT (JEM ANGGUR HITAM)', 28.538, 266, 65.99, 0.27, 0.02),
(32, 'CEREAL, BREAKFAST, GRANOLA', 45, 451, 62.58, 9.44, 18.15),
(33, 'CHEESE, CHEDDAR, REDUCED FAT (KEJU CHEDDAR, KURANG LEMAK)', 68.99, 200, 3, 30, 8),
(34, 'DESSERT, BROWNIES, CHOCOLATE', 20.68, 380, 50, 5, 18),
(35, 'MILK, COW, FRESH', 200, 61, 4.8, 3.2, 3.3),
(36, 'DESSERT, MOON CAKES RED BEAN', 180, 260, 50, 6, 6),
(37, 'MUFFIN, CHOCOLATE', 60.93, 441, 58.92, 7.5, 19.45),
(38, 'BISCUIT, MARIE', 5.13, 446, 65.07, 8.46, 16.89),
(39, 'CHICKEN, SAUSAGE (SOSEJ DAGING AYAM)', 3.227, 193, 9.95, 11.68, 10.47),
(40, 'CAKE, SWISS ROLL (KEK SWISS ROLL)', 28.63, 310, 50, 5, 12),
(41, 'YOGURT, FLAVOURED (STRAWBERRY, ETC)', 120, 120, 18, 4, 3),
(42, 'FISH OIL, COD LIVER OIL (MINYAK IKAN KOD)', 10.719, 900, NULL, NULL, 100),
(43, 'CANNED COFFEE', 200, 40, 9, 1, NULL),
(44, 'BISCUIT, LEMON PUFF', 30, 455, 63.51, 7.87, 18.8),
(45, 'PASTRY, PUFF, APPLE FILLING', 84.34, 392, 52.15, 5.46, 17.99),
(46, 'CREAM CHEESE (KRIM KEJU)', 25.989, 350, 4, 6, 34),
(47, 'DESSERT, COCONUT MILK BASED, SWEET POTATOES AND TARO IN COCONUT MILK (BUBUR CHA CHA)', 334.33, 219, 39.54, 2.52, 5.61),
(48, 'BUN, POTATO (BAN KENTANG)', 36.267, 303, 46.27, 9.15, 8.98),
(49, 'TRADITIONAL MALAYSIAN KUIH, MINI EGG SPONGE CAKE (BAHULU CERMAI)', 7.47, 417, 82.55, 8.89, 5.68),
(50, 'STRAWBERRY FLAVOURED CANDY (GULA-GULA PERISA STRAWBERI)', 3.74, 400, 95, NULL, NULL),
(51, 'DESSERT, FRUIT CAKE (KEK BUAH)', 25.3, 250, 50, 4, 5),
(52, 'CEREAL, BREAKFAST, MULTICOLOURED, SUGAR-FILLED RING SHAPED', 30, 400, 80, 4, 5),
(53, 'PINEAPPLE FLAVOURED CANDY (GULA-GULA PERISA NANAS)', 4.073, 390, 95, NULL, NULL),
(54, 'CAKAR AYAM', 37.5, 423.03, 66.4, 1, 17.05),
(55, 'SAMOSA', 29.5, 218.04, 9.74, 5.4, 17.5),
(56, 'CAPSICUM, GREEN (LADA BENGALA, HIJAU)', 47.004, 20, 3.4, 0.68, 0.15),
(57, 'DESSERT, CORN IN SWEETENED COCONUT MILK (BUBUR JAGUNG)', 342.21, 213, 41.16, 2.62, 4.24),
(58, 'BREADFRUITS CHIPS (KEREPEK SUKUN)', 30, 556.85, 45.8, 2.19, 40.54),
(59, 'MILK, PASTEURISED, CHOCOLATE FLAVOUR', 200, 85, 13, 3, 3),
(60, 'CHOCOLATE, RAISIN (COKLAT BERKISMIS)', 2.81, 539, 53.52, 7.78, 32.63),
(61, 'KELEDEK GORENG', 8, 234.71, 33.26, 1.9, 10.45),
(62, 'HEN EGG, LOWER CHOLESTROL, WITH VITAMIN E (TELUR AYAM RENDAH KOLESTROL, DENGAN VITAMIN E)', 48.71, 136, 0.37, 2.03, 1.35),
(63, 'TAPIOCA CHIPS, PLAIN, SALTED (KEREPEK UBI KAYU, BERGARAM)', 30, 478.96, 65.52, 1.95, 23.23),
(64, 'CORDIAL, KIWI (KORDIAL KIWI)', 10.825, 258.58, 64.59, 0.06, 0),
(65, 'YOGURT, LOW FAT, NATURAL', 140, 50, 7, 4, 1),
(66, 'WAFER, STRAWBERRY FLAVOR (WAFER BERPERISA STRAWBERI)', 2.981, 520, 70, 4, 2),
(67, 'FRUIT JUICE, FRESH, ORANGE', 250, 47, 10.99, 0.13, 0.28),
(68, 'CHOCOLATE, MIXED NUTS (COKLAT KACANG CAMPURAN)', 4.2022, 550, 45, 8, 35),
(69, 'BABY CORN (JAGUNG SAYUR)', 12.52, 37, 6.12, 2.17, 0.1),
(70, 'DESSERT, SWEET LOTUS SEED SOUP (LIN-CHI-KANG)', 150, 120, 30, 2, NULL),
(71, 'CHICKEN SATAY (SATAY AYAM)', 80, 187, 5.28, 28.32, 11.77),
(72, 'BUN, RED BEANS (BAN KACANG MERAH)', 42.7, 294, 52.4, 7.93, 5.83),
(73, 'CORDIAL, GRAPE (KORDIAL ANGGUR)', 7.473, 150.15, 37.51, 0.02, 0),
(74, 'PEARL MILK TEA (WITH BREWED TEA, MILK, SUGAR SYRUP, TAPIOCA PEARLS), NORMAL SUGAR', 250, 60, 14, 1, 1),
(75, 'CUCUR BAWANG', 27, 241.41, 39.26, 6.64, 6.42),
(76, 'TEA, STEVIA (TEH STEVIA)', 240, 2, NULL, NULL, NULL),
(77, 'CROISSANT', 60, 414, 49.16, 8.67, 20.25),
(78, 'CAPSICUM, YELLOW (LADA BENGALA, KUNING)', 40.517, 29, 5.37, 0.85, 0.03),
(79, 'MAYONNAISE (MAYONIS)', 9.118, 433, 37.88, 1.09, 30.77),
(80, 'DESSERT, MOON CAKES PURE LOTUS', 180, 350, 50, 8, 12),
(81, 'BISCUIT, COCONUT', 13.02, 457, 66.75, 8.32, 17.44),
(82, 'SAUCE, CHILI THAI', 12.43, 80, 16, 1, 2),
(83, 'CORDIAL, SOURSOP (KORDIAL DURIAN BELANDA)', 10.055, 143.78, 35.83, 0.12, 0),
(84, 'FRUIT DRINK, ORANGE', 250, 45, 11, NULL, NULL),
(85, 'TRADITIONAL MALAYSIAN KUIH, COCONUT CREAM COOKIES (KUIH BANGKIT)', 30, 480, 60, 5, 25),
(86, 'BEEF RENDANG (RENDANG DAGING LEMBU)', 150, 360, 18.48, 18.76, 23.46),
(87, 'OIL, SUNFLOWER (MINYAK BUNGA MATAHARI)', 3.293, 896.21, 0.58, 0, 99.32),
(88, 'DRAGON FRUIT, WHITE (BUAH NAGA, ISI PUTIH)', 246.355, 53, 10.55, 1.6, 0.15),
(89, 'TRADITIONAL MALAYSIAN KUIH, FLOUR BASED, WITH RED PALM SUGAR  (KUIH CINCIN)', 50, 534, 54.06, 14.66, 28.75),
(90, 'BREAD, RAISIN (ROTI KISMIS)', 32.85, 449, 59.06, 9.92, 19.25),
(91, 'TAPIOCA CHIPS, PLAIN, UNSALTED (KEREPEK UBI KAYU, TANPA GARAM)', 30, 497.54, 62.67, 1.3, 26.85),
(92, 'JAM, ORANGE MARMALADE', 25.07, 250, 63, NULL, NULL),
(93, 'TRADITIONAL MALAYSIAN KUIH, GLUTINUOS RICE FLOUR BASED STUFFED WITH GRATED COCONUT COATED WITH MUNG BEAN POWDER (KUIH TEPUNG GOMAK)', 48.82, 510, 60, 3, 30),
(94, 'ASPARTAME (ASPARTAM)', 3.63, 4, 1, NULL, NULL),
(95, 'DESSERT, SOY MILK CUSTARD (TAUFU-FAH)', 297.37, 135, 28.43, 3.34, 0.93),
(96, 'SPINACH, (BAYAM MASAK AIR)', 50, 91, 13.92, 3.46, 2.41),
(97, 'CORDIAL, GUAVA (KORDIAL JAMBU BATU)', 11.603, 266.96, 66.74, NULL, NULL),
(98, 'DESSERT, BLACK GLUTINOUS RICE PORRIDGE (BUBUR PULUT HITAM)', 396.96, 229, 45.28, 2.58, 4.17),
(99, 'FLAVOURED DRINK, COLA TYPE', 250, 45, 11, NULL, NULL),
(100, 'CREAM ROLL, VANILLA FLAVOUR', 40.13, 370, 38.96, 6.86, 20.71),
(101, 'CHOCOLATE, HAZELNUT (COKLAT KACANG BADAM)', 5.2405, 544.49, 59.36, 9.43, 29.93),
(102, 'TEA, ICE LEMON, PACKET, WITH ADDED SUGAR', 200, 30, 8, NULL, NULL),
(103, 'NASI ARAB SET KHABSYAH (KAMBING)', 319.63, 206, 29.96, 3.59, 7.93),
(104, 'DESSERT, CHILLED COCONUT MILK- & PALM SUGAR-BASED, WITH PANDAN JELLY NOODLES AND RED BEAN (CENDOL)', 150, 110, 25, 1, 1),
(105, 'DESSERT, CHEESE TART', 14.92, 330, 30, 5, 20),
(106, 'CORDIAL, SARSI (KORDIAL SARSI)', 9.554, 153.01, 38.14, 0.09, 0.01),
(107, 'BEEF, FLOSS (SERUNDING DAGING)', 50, 435, 40.07, 23.08, 20.25),
(108, 'CEREAL, BREAKFAST, BRAN FLAKES', 30, 280, 51.87, 14.6, 1.59),
(109, 'TRADITIONAL MALAYSIAN KUIH, SWEET FERMENTED GLUTINOUS RICE (TAPAI PULUT)', 26.76, 120, 27, 2, NULL),
(110, 'CORDIAL, ORANGE (KORDIAL OREN)', 9.675, 122.35, 30.5, 0.09, 0),
(111, 'KEK PISANG', 15, 316.58, 42.19, 5.67, 13.91),
(112, 'CHEESE, CHESDALE SLICES, PROCESSED (KEPINGAN KEJU CHESDALE)', 19.636, 320, 4, 15, 27),
(113, 'CUTTLEFISH, DRIED, FRIED IN CHILLI (SAMBAL SOTONG KERING)', 30, 283, 18.75, 15.45, 16.29),
(114, 'CAPSICUM, RED (LADA BENGALA, MERAH)', 158.391, 29, 4.93, 0.87, 0.18),
(115, 'CORDIAL, LIME (KORDIAL LIMAU NIPIS)', 11.182, 118.69, 29.57, 0.1, 0),
(116, 'KALE WITH SALTED FISH (KAILAN IKAN MASIN)', NULL, 288, 17.35, 8.23, 20.58),
(117, 'CHEESE, RICOTTA (KEJU, RICOTTA)', 19.295, 150, 3, 11, 10),
(118, 'MILK, UHT, LOW FAT', 200, 45, 5, 2.96, 1.09),
(119, 'HEN EGG, OMEGA 3 (TELUR AYAM OMEGA 3)', 55.445, 56, 0.16, 5.06, 3.72),
(120, 'DOUGHNUT, WITH FROSTING/GLAZE (DONUT)', 60, 450, 50, 5, 25),
(121, 'ICE-CREAM, VANILLA', 100, 200, 22, 4, 11),
(122, 'SAUCE, SOYA, LIGHT', 6.07, 99.64, 22.23, 2.68, NULL),
(123, 'CHEESE, PARMESAN (KEJU PARMESAN)', 20, 430, 4, 38, 29),
(124, 'YOGURT, DRINKING, PASTEURISED, MIX FRUIT FLAVOURS', 250, 80, 15, 3, 1),
(125, 'COCKLES, BOILED (KERANG REBUS)', 100, 136, 14.3, 14.74, 2.18),
(126, 'BUTTER (MENTEGA KURANG MASIN)', 11.993, 715, NULL, NULL, 80),
(127, 'HOT CHOCOLATE, INSTANT PREMIX (WITH SUGAR, COCOA POWDER, CREAMER)', 40, 431, 69.89, 4.34, 14.88),
(128, 'ROJAK PASTE', 23.13, 150, 35, 2, NULL),
(129, 'OIL, CANOLA (MINYAK CANOLA)', 4.675, 896.87, 0.41, NULL, 99.47),
(130, 'CABBAGE, FRIED (KOBIS GORENG)', 100, 159, 10.98, 2.51, 11.68),
(131, 'TEA, CHRYSANTHEMUM, PACKET, WITH ADDED SUGAR', 200, 35, 8, NULL, NULL),
(132, 'PEANUT BUTTER CHOCOLATE STRIPES', 30, 514, 9.97, 20.38, 45.28),
(133, 'TEA, GREEN, WITH ADDED SUGAR', 200, 40, 9, 0.03, NULL),
(134, 'HONEYDEW (TEMBIKAI SUSU)', 165.748, 24, 4.33, 0.35, 0.35),
(135, 'DESSERT, SAGO PORRIDGE (BUBUR SAGU)', 371.07, 240, 47.18, 2.85, 4.47),
(136, 'SWAMP CABBAGE, FRIED WITH BELACAN (KANGKUNG GORENG BELACAN)', 150, 132, 11.63, 3.59, 7.93),
(137, 'GRAPE FLAVOURED CANDY (GULA-GULA PERISA ANGGUR)', 3.563, 400, 98, NULL, NULL),
(138, 'DESSERT, SHAVED ICE, ABC (AIR BATU CAMPUR/AIS KACANG)', 250, 80, 20, NULL, NULL),
(139, 'CHOCOLATE, BREAD SPREAD', 30, 550, 57, 6, 32),
(140, 'TRADITIONAL MALAYSIAN KUIH, SWEET BLACK GLUTINOUS RICE DUMPLING STUFFED WITH GRATED COCONUT FILLING (KUIH KOCI PULUT HITAM)', 35.81, 250, 50, 4, 6),
(141, 'BUN, COCONUT (BAN KELAPA)', 41.15, 295, 51.05, 7.22, 6.88),
(142, 'CAKE, CHOCOLATE (KEK COKLAT)', 74.74, 350, 45, 4, 18),
(143, 'ORANGE FLAVOURED CANDY (GULA-GULA PERISA OREN)', 3.599, 380, 95, NULL, NULL),
(144, 'TAPIOCA CHIPS, BARBEQUE (KEREPEK UBI KAYU PERISA BARBEQUE)', 30, 465.27, 65.53, 1.76, 21.79),
(145, 'GLUCOSE (GLUKOSA)', 15.163, 400, 100, NULL, NULL),
(146, 'ICE CHOCHOLATE BLENDED, WITH WHIPPING CREAM', 250, 235, 58.26, 0.68, 0.11),
(147, 'CRAB, IN COCONUT MILK (KETAM MASAK LEMAK CILI API)', 121.7, 117, 6.17, 9.69, 5.91),
(148, 'LEPAT LABU', 65, 169.23, 32.6, 3, 2.98),
(149, 'CAKE, SWISS ROLL, CHOCOLATE FLAVOUR (KEK SWISS ROLL PERASA COKLAT)', 52.15, 502, 51.18, 10.91, 28.18),
(150, 'CONDENSED/EVAPORATED MILK WITH ROSE CORDIAL (SIRAP BANDUNG)', 200, 77, 8.68, 4.67, 2.66),
(151, 'TRADITIONAL MALAYSIAN KUIH, TWO LAYERED STEAMED CAKE, TARO AND COCONUT MILK (KUIH TALAM KELADI)', 38.47, 200, 35, 3, 5),
(152, 'WAFER, ORANGE FLAVOR (WAFER BERPERISA OREN)', 4.127, 550, 65, 6, 25),
(153, 'BAHULU KEMBOJA', 236.5, 209.53, 26.43, 6.5, 8.65),
(154, 'CHOCOLATE, ROASTED ALMOND (COKLAT DENGAN KACANG BADAM)', 5.43825, 550, 50, 10, 35),
(155, 'CHEESE, BRIE (KEJU, BRIE)', 21.202, 334, 0.5, 19, 28),
(156, 'JAM, STRAWBERRY (JEM STRAWBERI)', 31.72, 274, 67.65, 0.41, 0.02),
(157, 'TEA, KUNDUR, PACKET, WITH ADDED SUGAR', 100, 60, 10, NULL, NULL),
(158, 'CORDIAL, ROSELLE (KORDIAL ROSEL)', 8.286, 209.63, 52.24, 0.16, 0),
(159, 'TRADITIONAL MALAYSIAN KUIH, STEAMED GLUTINOUS RICE BALLS COATED WITH SESAME/PEANUT SUGAR CRUMBS (MOCHI@CHEE-PAH)', 13.32, 392, 68.93, 8.74, 15.58),
(160, 'NASI ARAB SET MANDY (AYAM)', 468.26, 148, 24.53, 3.74, 3.84),
(161, 'CAKE, SPONGE (KEK SPAN)', 18.78, 471, 68.41, 7.12, 18.78),
(162, 'BEEF, SAUSAGE (SOSEJ DAGING LEMBU)', 32.295, 194, 6.1, 12.6, 11.4),
(163, 'MILK, UHT, FULL CREAM', 200, 70, 5, 2.83, 3.42),
(164, 'PLUM SAUCE (SOS PLUM)', 9.567, 220, 50, 1, NULL),
(165, 'JAM, PINEAPPLE (JEM NENAS)', 18.2, 250, 65, NULL, NULL),
(166, 'ROTI JALA', 23, 184.12, 33.25, 5.2, 3.37),
(167, 'CREAMER, POWDER (KRIMER SERBUK)', 9.77, 500, 50, 2, 25),
(168, 'EEEL, SWAMP, RAW (BELUT)', 100, 150, NULL, 18, 2.5),
(169, 'TRADITIONAL MALAYSIAN KUIH, STEAMED RICE FLOUR WITH COCONUT MILK AND SUGAR IN SMALL MOULD, SERVED WITH GRATED COCONUT (KUIH LOMPANG)', 50, 253, 56.77, 2.88, 1.65),
(170, 'DESSERT, BREAD PUDDING', 132.68, 200, 30, 4, 10),
(171, 'CHEESE, CAMEMBERT (KEJU, CAMEMBERT)', 30, 350, 1, 20, 25),
(172, 'SWEET POTATO, RED, CHIPS (KEREPEK UBI KELEDEK)', 30, 456.09, 67.09, 3.82, 19.16),
(173, 'CORDIAL ROOT BEER (KORDIAL RUT BIR)', 11.534, 223.16, 55.64, 0.15, 0),
(174, 'BUN, KAYA (BAN KAYA)', 37.8, 274, 54.73, 7.13, 2.9),
(175, 'CHOCOLATE, CASHEW NUT (COKLAT KACANG GAJUS)', 4.17, 500, 50, 7, 30),
(176, 'CHOCOLATE SPREAD', 25.48, 550, 60, 5, 30),
(177, 'SAUCE, SOYA, DARK', 20, 100, 8, 8, NULL),
(178, 'TAPIOCA CHIPS, BLACK PEPPER (KEREPEK UBI KAYU PERISA LADA HITAM)', 30, 483.05, 64.62, 0.87, 24.57),
(179, 'DESSERT , CARAMEL PUDDING', 36.89, 200, 25, 3, 6),
(180, 'FRUIT JUICE DRINK, ORANGE', 200, 50, 11, NULL, NULL),
(181, 'DESSERT, PUDDING, MILK (PUDING SUSU)', 39.06, 223, 46.99, 2.02, 2.94),
(182, 'TEA MIX, INSTANT', 14.5, 450, 90, 5, 3),
(183, 'CHOCOLATE, MILK (COKLAT SUSU)', 4.2, 550, 50, 7, 30),
(184, 'RICE, BRIYANI (RICE ONLY) (BASMATHI RICE)', 150, 190, 31.61, 2.59, 5.96),
(185, 'SOYA BEAN DRINK, PACKET, WITH REGULAR ADDED SUGAR', 200, 405.99, 96.97, 1.58, 1.31),
(186, 'BUN, CHEESE (BAN KEJU)', 55, 415, 46.06, 12.22, 20.26),
(187, 'LYCHEE IN TIN', 337.1, 70, 16, NULL, NULL),
(188, 'TRADITIONAL MALAYSIAN KUIH, GLUTINOUS RICE FLOUR AND COCONUT MILK BASED, BOILED PALM SUGAR TOFFEE-LIKE SWEET (DODOL)', 15.68, 350, 70, 3, 5),
(189, 'RICE, KERABU (NASI KERABU)(COMPLETE SET)', 168.47, 209, 41.52, 4, 2.99),
(190, 'JAM, MANGO (JEM MEMPELAM)', 31.34, 300, 65, NULL, NULL),
(191, 'ISOTONIC DRINK', 250, 41.23, 10.3, 0.01, NULL),
(192, 'RICE, \"DAGANG\" (NASI DAGANG)(COMPLETE SET)', 214, 196, 28.19, 6.66, 6.33),
(193, 'PASTRY, DANISH', 77.26, 400, 40, 5, 20),
(194, 'CHEESE, BLUE (KEJU, BIRU)', 27.251333, 372, 20.95, 18.06, 27.86),
(195, 'MILK DRINK, CULTURED', 200, 100, 10, 4, 3),
(196, 'CORDIAL, MANGO (KORDIAL MANGGA)', 10.482, 177.69, 44.37, 0.05, 0),
(197, 'CHEESE, MOZARELLA (KEJU MOZARELLA)', 30, 320, 2, 20, 22),
(198, 'BLACK EYE BEAN (KACANG MATA HITAM)', 50, 264.32, 44.6, 20.26, 0.54),
(199, 'VANILLA WAFER (WAFER VANILLA)', 9.664, 510, 75, 4, 22),
(200, 'DRAGON FRUIT, RED (BUAH NAGA, ISI MERAH)', 406.283, 51, 10.9, 1.37, 0.07),
(201, 'KUIH TALAM LABU', 51.5, 160, 35, 2, 2),
(202, 'HONEY', 11.63, 399.81, 99.91, 0.05, NULL),
(203, 'JAM, BLUEBERRY (JEM BLUEBERI)', 28.351, 272, 67.25, 0.31, 0.01),
(204, 'RICE, \"DAGANG\" (NASI DAGANG)(RICE ONLY)', 150, 183, 38.29, 3.27, 1.89),
(205, 'ENERGY DRINK', 250, 45, 11, NULL, NULL),
(206, 'SAUCE, THOUSAND ISLAND', 14.983, 150, 8, 1, 12),
(207, 'CREAM, WHIPPED (KRIM PUTAR)', 10.583, 340, 4, 1, 35),
(208, 'JAM, APRICOT (JEM APRIKOT)', 23.18, 272, 67.21, 0.43, 0),
(209, 'KARIPAP SARDIN', 26, 388.02, 39.76, 8.2, 21.8),
(210, 'MILK, SWEETENED, CONDENSED', 13.17, 320, 55, 7, 5),
(211, 'TRADITIONAL MALAYSIAN KUIH, GLUTINOUS RICE BALLS IN COCONUT MILK (BADAK BERENDAM)', 38.72, 190, 45, 2, 1),
(212, 'DESSERT, LAYER CAKE (KEK LAPIS SARAWAK)', 29.6, 280, 40, 5, 12),
(213, 'TAPIOCA CHIPS, SPICY (KEREPEK UBI KAYU PEDAS)', 30, 470.21, 68.1, 1.24, 21.43),
(214, 'COOKIES, PEANUT', 34.47, 514, 57.86, 11.61, 26.19),
(215, 'CHEESE, COLBY (KEJU, COLBY)', 30, 350, 1, 22, 28),
(216, 'CORDIAL, PINEAPPLE(KORDIAL NENAS)', 7.32, 237, 59.06, 0.19, 0),
(217, 'CARA MANIS', 27, 169.61, 31.27, 4.71, 2.85),
(218, 'STINGRAY, COOKED IN TAMARIND (IKAN PARI MASAK ASAM PEDAS)', 108.98, 115, 2.57, 21.68, 2.58),
(219, 'CATFISH, FRIED IN CHILLI (IKAN KELI GORENG BERLADA)', 174.64, 425, 18.07, 16.27, 31.96),
(220, 'CHOCOLATE (COKLAT BERTIH)', 11, 550, 60, 6, 30),
(221, 'CEREAL, BREAKFAST, CHOCOLATE FLAVOURED', 40, 400, 70, 6, 10),
(222, 'MUFFIN, VANILLA', 58.82, 290, 40, 4, 12),
(223, 'TRADITIONAL MALAYSIAN KUIH, FLOUR AND GHEE SUGAR BASED, SPHERE-SHAPED SWEETS (LADDU)', 63.05, 480, 60, 5, 25),
(224, 'DESSERT, RED TORTOISE CAKE (KUIH ANG KOO)', 60.63, 180, 40, 3, 1),
(225, 'MILK, MALTED (CHOCOLATE FLAVOUR)', 200, 85, 14, 3, 3),
(226, 'MIX VEGETABLES, STIR FRIED (SAYUR CAMPUR GORENG)', 150, 147, 17.86, 4.4, 6.39),
(227, 'FLOUR, SAGO (TEPUNG SAGU)', 30, 348.21, 86.63, 0.2, 0.1),
(228, 'ANCHOVY, DRIED, FRIED IN CHILLI (IKAN BILIS SAMBAL)', 30, 365, 26.87, 16.21, 21.38),
(229, 'MILK, UHT, CHOCOLATE FLAVOUR', 200, 90, 12, 3, 3),
(230, 'CHICKEN CHOP (BELAHAN AYAM TANPA TULANG)', 172.8, 264, 14.15, 16.9, 15.5),
(231, 'POTATO CHIPS, SPICY (KEROPOK UBI KENTANG BERPERISA REMPAH PEDAS)', 30, 483.27, 55.25, 6.05, 26.45);

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `id` int(11) NOT NULL,
  `amount_in_grams` double DEFAULT NULL,
  `calories` double DEFAULT NULL,
  `carbs_in_grams` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `fat_in_grams` double DEFAULT NULL,
  `meal_type` enum('BREAKFAST','DINNER','LUNCH','SNACK') DEFAULT NULL,
  `protein_in_grams` double DEFAULT NULL,
  `food_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`id`, `amount_in_grams`, `calories`, `carbs_in_grams`, `date`, `fat_in_grams`, `meal_type`, `protein_in_grams`, `food_id`, `user_id`) VALUES
(1, 100, 519, 0.14, NULL, 58.34, 'BREAKFAST', 0.6, 1, 1),
(2, 1, 4.17, 0.8255, NULL, 0.056799999999999996, 'BREAKFAST', 0.0889, 49, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `goal_calories` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `height` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `age`, `email`, `gender`, `goal_calories`, `name`, `password`, `weight`, `height`) VALUES
(1, 20, 'example@gmail.com', 'F', 2000, 'Miss Example', '123456', 55, 160);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8rbpjdbkct9awfymg01vhcuk4` (`food_id`),
  ADD KEY `FKckykxviti3jwd6vkcs55btrxa` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meal`
--
ALTER TABLE `meal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meal`
--
ALTER TABLE `meal`
  ADD CONSTRAINT `FK8rbpjdbkct9awfymg01vhcuk4` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`),
  ADD CONSTRAINT `FKckykxviti3jwd6vkcs55btrxa` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
