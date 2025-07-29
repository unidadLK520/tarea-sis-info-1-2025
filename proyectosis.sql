-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para proyectosis
CREATE DATABASE IF NOT EXISTS `proyectosis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `proyectosis`;

-- Volcando estructura para tabla proyectosis.clientepuente
CREATE TABLE IF NOT EXISTS `clientepuente` (
  `id_comprador` varchar(10) NOT NULL,
  `id_usuario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_comprador`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `clientepuente_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla proyectosis.clientepuente: ~20 rows (aproximadamente)
INSERT INTO `clientepuente` (`id_comprador`, `id_usuario`) VALUES
	('com-001', 'usu-001'),
	('com-002', 'usu-002'),
	('com-003', 'usu-003'),
	('com-004', 'usu-004'),
	('com-005', 'usu-005'),
	('com-006', 'usu-011'),
	('com-007', 'usu-012'),
	('com-008', 'usu-013'),
	('com-009', 'usu-014'),
	('com-010', 'usu-015'),
	('com-011', 'usu-021'),
	('com-012', 'usu-022'),
	('com-013', 'usu-023'),
	('com-014', 'usu-024'),
	('com-015', 'usu-025'),
	('com-016', 'usu-031'),
	('com-017', 'usu-032'),
	('com-018', 'usu-033'),
	('com-019', 'usu-034'),
	('com-020', 'usu-035');

-- Volcando estructura para tabla proyectosis.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `tipo` enum('electrónico','alimento','mueble','material escolar u oficina','bebida','material de construcción') NOT NULL,
  `id_vendedor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_vendedor` (`id_vendedor`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedorespuente` (`id_vendedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla proyectosis.productos: ~82 rows (aproximadamente)
INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `tipo`, `id_vendedor`) VALUES
	(1, 'Smartphone X12', 'Teléfono inteligente con 128GB de almacenamiento', 1200.00, 50, 'electrónico', 'ven-001'),
	(2, 'Laptop UltraBook', 'Laptop delgada con procesador i7 y 16GB RAM', 3500.00, 20, 'electrónico', 'ven-002'),
	(3, 'Arroz 5kg', 'Bolsa de arroz de alta calidad', 45.00, 200, 'alimento', 'ven-003'),
	(4, 'Aceite vegetal 1L', 'Aceite comestible de girasol', 20.00, 150, 'alimento', 'ven-004'),
	(5, 'Escritorio madera', 'Escritorio de madera con 3 cajones', 450.00, 15, 'mueble', 'ven-005'),
	(6, 'Silla ergonómica', 'Silla para oficina con soporte lumbar', 320.00, 30, 'mueble', 'ven-006'),
	(7, 'Cuaderno A4', 'Cuaderno de 100 hojas, rayado', 10.00, 500, 'material escolar u oficina', 'ven-007'),
	(8, 'Lápiz HB', 'Lápiz clásico de grafito con borrador', 1.50, 1000, 'material escolar u oficina', 'ven-008'),
	(9, 'Agua embotellada 2L', 'Agua mineral sin gas', 7.00, 300, 'bebida', 'ven-009'),
	(10, 'Jugo natural 1L', 'Jugo de naranja 100% natural', 15.00, 180, 'bebida', 'ven-010'),
	(11, 'Cemento Portland 50kg', 'Saco de cemento para construcción', 80.00, 100, 'material de construcción', 'ven-011'),
	(12, 'Ladrillo cerámico', 'Ladrillo cocido para muros', 2.50, 2000, 'material de construcción', 'ven-012'),
	(32, 'Auriculares Bluetooth', 'Auriculares inalámbricos con cancelación de ruido', 210.00, 70, 'electrónico', 'ven-001'),
	(33, 'Tablet 10"', 'Tablet con Android y pantalla HD', 880.00, 40, 'electrónico', 'ven-002'),
	(34, 'Monitor 24"', 'Monitor LED Full HD de 24 pulgadas', 1050.00, 25, 'electrónico', 'ven-003'),
	(35, 'Fideo 1kg', 'Pasta de trigo tipo espagueti', 9.50, 400, 'alimento', 'ven-004'),
	(36, 'Leche en polvo 400g', 'Leche entera instantánea', 28.00, 200, 'alimento', 'ven-005'),
	(37, 'Azúcar 1kg', 'Azúcar blanca refinada', 7.00, 350, 'alimento', 'ven-006'),
	(38, 'Estante metálico', 'Estante de 5 niveles, ideal para almacén', 370.00, 10, 'mueble', 'ven-007'),
	(39, 'Mesa redonda', 'Mesa de comedor para 4 personas', 600.00, 5, 'mueble', 'ven-008'),
	(40, 'Sofá 2 plazas', 'Sofá acolchonado con tela antimanchas', 1250.00, 8, 'mueble', 'ven-009'),
	(41, 'Bolígrafos (paquete x10)', 'Bolígrafos de tinta azul', 12.00, 300, 'material escolar u oficina', 'ven-010'),
	(42, 'Carpeta A4', 'Carpeta de cartón con broche metálico', 5.00, 600, 'material escolar u oficina', 'ven-011'),
	(43, 'Resma papel bond', 'Resma de 500 hojas tamaño carta', 32.00, 150, 'material escolar u oficina', 'ven-012'),
	(44, 'Gaseosa cola 2.5L', 'Bebida gaseosa con sabor cola', 10.00, 250, 'bebida', 'ven-001'),
	(45, 'Energizante 500ml', 'Bebida energética con cafeína y taurina', 12.00, 120, 'bebida', 'ven-002'),
	(46, 'Arena fina m3', 'Metro cúbico de arena lavada para mezcla', 60.00, 30, 'material de construcción', 'ven-003'),
	(47, 'Pintura 4L blanca', 'Pintura látex interior-exterior', 95.00, 40, 'material de construcción', 'ven-004'),
	(48, 'Tubo PVC 2m', 'Tubo de PVC para instalación sanitaria', 18.00, 100, 'material de construcción', 'ven-005'),
	(49, 'Yeso bolsa 25kg', 'Yeso para interiores, acabado fino', 42.00, 60, 'material de construcción', 'ven-006'),
	(50, 'Clavos 2” (1kg)', 'Clavos de acero templado', 15.00, 90, 'material de construcción', 'ven-007'),
	(51, 'Cemento blanco 50kg', 'Cemento blanco para acabados', 120.00, 25, 'material de construcción', 'ven-008'),
	(52, 'Cámara Digital HD', 'Cámara compacta con zoom óptico 20x', 750.00, 30, 'electrónico', 'ven-009'),
	(53, 'Router WiFi 6', 'Router de última generación con alta velocidad', 320.00, 45, 'electrónico', 'ven-010'),
	(54, 'Disco Duro Externo 1TB', 'Almacenamiento portátil USB 3.0', 150.00, 60, 'electrónico', 'ven-011'),
	(55, 'Harina de trigo 1kg', 'Harina para repostería y panadería', 8.50, 500, 'alimento', 'ven-001'),
	(56, 'Miel natural 500g', 'Miel pura extraída de flores silvestres', 22.00, 80, 'alimento', 'ven-002'),
	(57, 'Café molido 250g', 'Café arábica molido fresco', 15.00, 120, 'alimento', 'ven-003'),
	(58, 'Silla plegable', 'Silla portátil para eventos', 85.00, 40, 'mueble', 'ven-004'),
	(59, 'Mesa para computadora', 'Mesa con espacio para torre y teclado', 280.00, 15, 'mueble', 'ven-005'),
	(60, 'Armario metálico', 'Armario con cerradura y varias repisas', 980.00, 10, 'mueble', 'ven-006'),
	(61, 'Marcadores para pizarra (set x5)', 'Marcadores de colores para pizarras blancas', 25.00, 150, 'material escolar u oficina', 'ven-007'),
	(62, 'Tijeras escolares', 'Tijeras con punta redondeada para niños', 6.00, 300, 'material escolar u oficina', 'ven-008'),
	(63, 'Pegamento en barra', 'Pegamento sólido para papel y cartón', 4.50, 400, 'material escolar u oficina', 'ven-009'),
	(64, 'Té verde 20 bolsas', 'Té verde orgánico en bolsitas', 18.00, 90, 'bebida', 'ven-010'),
	(65, 'Jugo de manzana 1L', 'Jugo natural de manzana sin azúcar', 14.00, 110, 'bebida', 'ven-011'),
	(66, 'Cinta métrica 5m', 'Cinta de medición metálica resistente', 35.00, 70, 'material de construcción', 'ven-012'),
	(67, 'Taladro eléctrico', 'Taladro inalámbrico con batería recargable', 950.00, 12, 'material de construcción', 'ven-001'),
	(68, 'Nivel de burbuja', 'Nivel para medir superficies horizontales', 45.00, 35, 'material de construcción', 'ven-002'),
	(69, 'Brocha 3”', 'Brocha para pintura de paredes y techos', 12.00, 100, 'material de construcción', 'ven-003'),
	(70, 'Llave inglesa', 'Herramienta ajustable para tuercas y tornillos', 30.00, 50, 'material de construcción', 'ven-004'),
	(71, 'Mortero 25kg', 'Mortero para albañilería y pegado de ladrillos', 40.00, 80, 'material de construcción', 'ven-005'),
	(72, 'Smartwatch Series 5', 'Reloj inteligente con monitor de frecuencia cardíaca', 350.00, 40, 'electrónico', 'ven-001'),
	(73, 'Teclado mecánico', 'Teclado RGB para gamers con switches azules', 120.00, 75, 'electrónico', 'ven-002'),
	(74, 'Mouse inalámbrico', 'Mouse ergonómico con conexión Bluetooth', 45.00, 100, 'electrónico', 'ven-003'),
	(75, 'Cargador rápido USB-C', 'Cargador con soporte para carga rápida 30W', 25.00, 150, 'electrónico', 'ven-004'),
	(76, 'Altavoz portátil', 'Altavoz Bluetooth resistente al agua', 80.00, 60, 'electrónico', 'ven-005'),
	(77, 'Webcam HD 1080p', 'Cámara web con micrófono integrado', 70.00, 40, 'electrónico', 'ven-006'),
	(78, 'Power Bank 10000mAh', 'Batería portátil para cargar dispositivos', 55.00, 85, 'electrónico', 'ven-007'),
	(79, 'Monitor gaming 27"', 'Monitor 144Hz con resolución 2K', 450.00, 20, 'electrónico', 'ven-008'),
	(80, 'SSD 500GB', 'Unidad de estado sólido para PC y laptops', 150.00, 50, 'electrónico', 'ven-009'),
	(81, 'Router WiFi Mesh', 'Sistema de red WiFi para toda la casa', 300.00, 15, 'electrónico', 'ven-010'),
	(82, 'Cámara deportiva 4K', 'Cámara para deportes con resistencia al agua', 180.00, 25, 'electrónico', 'ven-011'),
	(83, 'Lámpara LED escritorio', 'Lámpara regulable para estudio', 35.00, 70, 'electrónico', 'ven-012'),
	(84, 'Tablet 8"', 'Tablet compacta para lectura y navegación', 230.00, 45, 'electrónico', 'ven-001'),
	(85, 'Impresora multifuncional', 'Impresora, escáner y copiadora', 320.00, 18, 'electrónico', 'ven-002'),
	(86, 'Disco duro externo 2TB', 'Almacenamiento portátil USB 3.1', 220.00, 30, 'electrónico', 'ven-003'),
	(87, 'Teclado inalámbrico', 'Teclado compacto Bluetooth', 50.00, 90, 'electrónico', 'ven-004'),
	(88, 'Cable HDMI 2m', 'Cable para conexión de video y audio HD', 15.00, 200, 'electrónico', 'ven-005'),
	(89, 'Smart TV 43"', 'Televisor inteligente Full HD', 850.00, 12, 'electrónico', 'ven-006'),
	(90, 'Auriculares gaming', 'Auriculares con micrófono y sonido envolvente', 110.00, 40, 'electrónico', 'ven-007'),
	(91, 'Silla de oficina', 'Silla ergonómica con ruedas', 250.00, 35, 'mueble', 'ven-008'),
	(92, 'Escritorio de oficina', 'Escritorio con cajonera', 480.00, 20, 'mueble', 'ven-009'),
	(93, 'Cuaderno rayado', 'Cuaderno tamaño A4, 200 hojas', 15.00, 200, 'material escolar u oficina', 'ven-010'),
	(94, 'Bolígrafo azul', 'Bolígrafo de tinta líquida', 3.00, 500, 'material escolar u oficina', 'ven-011'),
	(95, 'Resma de papel', 'Resma de 500 hojas tamaño carta', 30.00, 100, 'material escolar u oficina', 'ven-012'),
	(96, 'Agua mineral 1L', 'Botella de agua sin gas', 5.00, 400, 'bebida', 'ven-001'),
	(97, 'Jugo de piña 1L', 'Jugo natural de piña', 12.00, 150, 'bebida', 'ven-002'),
	(98, 'Cemento gris 50kg', 'Saco de cemento para construcción', 70.00, 80, 'material de construcción', 'ven-003'),
	(100, 'Ladrillo rojo', 'Ladrillo para construcción', 3.00, 1500, 'material de construcción', 'ven-005'),
	(101, 'calculadora hp prime', 'calculadora pro', 200.00, 100, 'electrónico', 'ven-003'),
	(102, 'celular gt 20 pro', 'celular 16 de ram 128 gb almacenamiento', 400.00, 5, 'electrónico', 'ven-020');

-- Volcando estructura para tabla proyectosis.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `ci` varchar(20) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `tipo_usuario` enum('cliente','vendedor','admin') NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `ci` (`ci`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla proyectosis.usuarios: ~45 rows (aproximadamente)
INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `ci`, `fecha_nacimiento`, `correo`, `telefono`, `direccion`, `tipo_usuario`, `password`, `fecha_registro`) VALUES
	('usu-001', 'Juan', 'Pérez', '1234567', '1985-03-15', 'juan.perez1@gmail.com', '78945612', 'Calle 1, La Paz', 'cliente', 'juan123', '2025-07-26 15:56:37'),
	('usu-002', 'Ana', 'Torres', '2345678', '1992-07-10', 'ana.torres2@hotmail.com', '76543210', 'Av. Aroma, Cochabamba', 'cliente', 'ana123', '2025-07-26 15:56:37'),
	('usu-003', 'Carlos', 'Gómez', '3456789', '1988-11-20', 'carlosg3@gmail.com', '77889900', 'Zona Sur, Santa Cruz', 'cliente', 'gaa441', '2025-07-26 15:56:37'),
	('usu-004', 'Lucía', 'Reyes', '4567890', '2000-01-05', 'lucia.reyes4@yahoo.com', '74185296', 'Calle A, Sucre', 'cliente', '123sdyf', '2025-07-26 15:56:37'),
	('usu-005', 'Miguel', 'Rojas', '5678901', '1995-05-30', 'miguel.rojas5@correo.com', '69874512', 'Zona Norte, Oruro', 'cliente', 'falcon412', '2025-07-26 15:56:37'),
	('usu-006', 'Pedro', 'Vargas', '6789012', '1980-06-18', 'pedro.vargas6@ventas.com', '78945623', 'Av. Siempre Viva, La Paz', 'vendedor', 'pvargas123', '2025-07-26 15:56:37'),
	('usu-007', 'Camila', 'Salazar', '7890123', '1993-09-25', 'camila.salazar7@ventas.com', '71234567', 'Av. América, Cochabamba', 'vendedor', 'csalazar456', '2025-07-26 15:56:37'),
	('usu-008', 'Diego', 'Loza', '8901234', '1987-12-08', 'dloza8@ventas.com', '72345678', 'Centro, Tarija', 'vendedor', 'dloza789', '2025-07-26 15:56:37'),
	('usu-009', 'María', 'Fernández', '9012345', '1990-03-03', 'maria.fernandez9@admin.com', '73456789', 'Zona Central, Potosí', 'admin', 'maria123', '2025-07-26 15:56:37'),
	('usu-010', 'Roberto', 'Sánchez', '9123456', '1979-08-12', 'roberto.admin10@correo.com', '74567890', 'Zona Este, Trinidad', 'admin', 'rootroberto', '2025-07-26 15:56:37'),
	('usu-011', 'Juan', 'sanchez', '10234567', '1984-02-20', 'juan.perez11@gmail.com', '78940000', 'Calle 2, La Paz', 'cliente', '123324', '2025-07-26 15:56:37'),
	('usu-012', 'Ana', 'Torres', '11234567', '1991-06-15', 'ana.torres12@hotmail.com', '76540000', 'Av. Aroma, Cochabamba', 'cliente', '4123', '2025-07-26 15:56:37'),
	('usu-013', 'Carlos', 'Gómez', '12234567', '1989-10-18', 'carlosg13@gmail.com', '77880000', 'Zona Sur, Santa Cruz', 'cliente', '4123', '2025-07-26 15:56:37'),
	('usu-014', 'Lucía', 'Reyes', '13234567', '1999-12-25', 'lucia.reyes14@yahoo.com', '74185000', 'Calle A, Sucre', 'cliente', '41234', '2025-07-26 15:56:37'),
	('usu-015', 'Miguel', 'Rojas', '14234567', '1994-04-30', 'miguel.rojas15@correo.com', '69874000', 'Zona Norte, Oruro', 'cliente', '4123', '2025-07-26 15:56:37'),
	('usu-016', 'Pedro', 'Vargas', '15234567', '1979-05-18', 'pedro.vargas16@ventas.com', '78945000', 'Av. Siempre Viva, La Paz', 'vendedor', 'pvargas321', '2025-07-26 15:56:37'),
	('usu-017', 'Camila', 'Salazar', '16234567', '1992-08-25', 'camila.salazar17@ventas.com', '71234000', 'Av. América, Cochabamba', 'vendedor', 'csalazar654', '2025-07-26 15:56:37'),
	('usu-018', 'Diego', 'Loza', '17234567', '1986-11-08', 'dloza18@ventas.com', '72345000', 'Centro, Tarija', 'vendedor', 'dloza987', '2025-07-26 15:56:37'),
	('usu-019', 'María', 'Fernández', '18234567', '1989-03-03', 'maria.fernandez19@admin.com', '73456000', 'Zona Central, Potosí', 'admin', 'adminmaria2', '2025-07-26 15:56:37'),
	('usu-020', 'Roberto', 'Sánchez', '19234567', '1978-07-12', 'roberto.admin20@correo.com', '74567000', 'Zona Este, Trinidad', 'admin', 'rootroberto2', '2025-07-26 15:56:37'),
	('usu-021', 'Sofía', 'Mendoza', '20234567', '1994-06-12', 'sofia.mendoza21@gmail.com', '70123456', 'Calle Real, La Paz', 'cliente', 'yosoygart', '2025-07-26 15:59:04'),
	('usu-022', 'Javier', 'Ortiz', '21234567', '1987-08-23', 'javier.ortiz22@hotmail.com', '70234567', 'Av. Libertad, Cochabamba', 'cliente', 'garpitna', '2025-07-26 15:59:04'),
	('usu-023', 'Mariana', 'Campos', '22234567', '1991-11-30', 'mariana.campos23@yahoo.com', '70345678', 'Zona Norte, Santa Cruz', 'cliente', '123asdv', '2025-07-26 15:59:04'),
	('usu-024', 'Luis', 'Vargas', '23234567', '1985-01-15', 'luis.vargas24@gmail.com', '70456789', 'Calle Larga, Sucre', 'cliente', '123123412', '2025-07-26 15:59:04'),
	('usu-025', 'Isabel', 'Suárez', '24234567', '1998-04-20', 'isabel.suarez25@correo.com', '70567890', 'Zona Centro, Oruro', 'cliente', '123faw', '2025-07-26 15:59:04'),
	('usu-026', 'David', 'Mendoza', '25234567', '1982-07-11', 'david.mendoza26@ventas.com', '70678901', 'Av. Siempre Viva, La Paz', 'vendedor', 'davidm123', '2025-07-26 15:59:04'),
	('usu-027', 'Ana', 'Ortiz', '26234567', '1993-10-18', 'ana.ortiz27@ventas.com', '70789012', 'Av. América, Cochabamba', 'vendedor', 'anaortiz456', '2025-07-26 15:59:04'),
	('usu-028', 'Pedro', 'Campos', '27234567', '1989-05-05', 'pedro.campos28@ventas.com', '70890123', 'Centro, Tarija', 'vendedor', 'pedrocam789', '2025-07-26 15:59:04'),
	('usu-029', 'Elena', 'Vargas', '28234567', '1990-09-29', 'elena.vargas29@ventas.com', '70901234', 'Zona Sur, Santa Cruz', 'vendedor', 'elenav123', '2025-07-26 15:59:04'),
	('usu-030', 'Carlos', 'Suárez', '29234567', '1988-12-07', 'carlos.suarez30@ventas.com', '71012345', 'Zona Este, Trinidad', 'vendedor', 'carloss456', '2025-07-26 15:59:04'),
	('usu-031', 'Laura', 'Gómez', '30234567', '1995-02-14', 'laura.gomez31@gmail.com', '71123456', 'Calle 7, La Paz', 'cliente', 'asdcasd123', '2025-07-26 15:59:04'),
	('usu-032', 'Fernando', 'Morales', '31234567', '1984-03-20', 'fernando.morales32@hotmail.com', '71234567', 'Av. Central, Cochabamba', 'cliente', 'dfefqdqwe', '2025-07-26 15:59:04'),
	('usu-033', 'Valeria', 'Rojas', '32234567', '1997-06-18', 'valeria.rojas33@yahoo.com', '71345678', 'Zona Norte, Santa Cruz', 'cliente', '123sdfqad', '2025-07-26 15:59:04'),
	('usu-034', 'Jorge', 'Cruz', '33234567', '1986-08-25', 'jorge.cruz34@gmail.com', '71456789', 'Av. Libertad, Sucre', 'cliente', '1243erasd', '2025-07-26 15:59:04'),
	('usu-035', 'Marta', 'Reyes', '34234567', '1992-11-10', 'marta.reyes35@correo.com', '71567890', 'Zona Centro, Oruro', 'cliente', '123sf', '2025-07-26 15:59:04'),
	('usu-036', 'Sergio', 'Gómez', '35234567', '1983-04-15', 'sergio.gomez36@ventas.com', '71678901', 'Av. Siempre Viva, La Paz', 'vendedor', 'sergiog123', '2025-07-26 15:59:04'),
	('usu-037', 'Carolina', 'Morales', '36234567', '1990-07-22', 'carolina.morales37@ventas.com', '71789012', 'Av. América, Cochabamba', 'vendedor', 'carolinam456', '2025-07-26 15:59:04'),
	('usu-038', 'Ricardo', 'Rojas', '37234567', '1987-10-01', 'ricardo.rojas38@ventas.com', '71890123', 'Centro, Tarija', 'vendedor', 'ricardor789', '2025-07-26 15:59:04'),
	('usu-039', 'Patricia', 'Cruz', '38234567', '1991-01-09', 'patricia.cruz39@ventas.com', '71901234', 'Zona Sur, Santa Cruz', 'vendedor', 'patriciac123', '2025-07-26 15:59:04'),
	('usu-040', 'Gabriel', 'Reyes', '39234567', '1989-03-18', 'gabriel.reyes40@ventas.com', '72012345', 'Zona Este, Trinidad', 'vendedor', 'gabrielr456', '2025-07-26 15:59:04'),
	('usu-041', 'pablo', 'escobar', '123123', '2000-12-12', 'pal@gmail.com', '342234234', 'palermo y palacios 123', 'vendedor', '12324123', '2025-07-26 18:20:07'),
	('usu-042', 'eliot', 'heredia', '123412', '2000-05-05', 'el@gmail.com', '12345678', 'plaza banderas 132', 'vendedor', '1233451234', '2025-07-26 18:40:20'),
	('usu-043', 'jotaro', 'valdez', '41234123', '2005-07-26', 'jo@gmail.com', '23434423', 'santiago chile', 'vendedor', 'abc123', '2025-07-26 22:29:04'),
	('usu-044', 'dio', 'amakano', '41235312', '2003-07-26', 'dio@gmail.com', '345234123', 'washington dc', 'vendedor', 'cavad212', '2025-07-26 22:32:49'),
	('usu-045', 'raul', 'vargas', '0000921', '1999-07-06', 'ral@gmail.com', '9876542', 'folicula y ramon', 'cliente', 'launion', '2025-07-27 15:01:03');

-- Volcando estructura para tabla proyectosis.vendedorespuente
CREATE TABLE IF NOT EXISTS `vendedorespuente` (
  `id_vendedor` varchar(50) NOT NULL,
  `id_usuario` varchar(50) DEFAULT NULL,
  `verificar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_vendedor`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `FK__usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla proyectosis.vendedorespuente: ~19 rows (aproximadamente)
INSERT INTO `vendedorespuente` (`id_vendedor`, `id_usuario`, `verificar`) VALUES
	('ven-001', 'usu-027', 1),
	('ven-002', 'usu-006', 1),
	('ven-003', 'usu-044', 1),
	('ven-004', 'usu-017', 1),
	('ven-005', 'usu-007', 1),
	('ven-006', 'usu-043', 1),
	('ven-007', 'usu-037', 1),
	('ven-008', 'usu-038', 1),
	('ven-009', 'usu-008', 1),
	('ven-010', 'usu-029', 1),
	('ven-011', 'usu-036', 1),
	('ven-012', 'usu-039', 1),
	('ven-013', 'usu-040', 1),
	('ven-015', 'usu-026', 1),
	('ven-016', 'usu-016', 1),
	('ven-017', 'usu-041', 1),
	('ven-018', 'usu-028', 1),
	('ven-019', 'usu-030', 1),
	('ven-020', 'usu-042', 1);

-- Volcando estructura para tabla proyectosis.ventas_compras
CREATE TABLE IF NOT EXISTS `ventas_compras` (
  `id` varchar(50) NOT NULL DEFAULT '0',
  `id_vendedor` varchar(50) DEFAULT NULL,
  `id_comprador` varchar(50) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `tipo_pago` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ventas_compras_clientepuente` (`id_comprador`),
  KEY `FK_ventas_compras_productos_2` (`id_vendedor`),
  KEY `FK_ventas_compras_productos` (`id_producto`),
  CONSTRAINT `FK_ventas_compras_clientepuente` FOREIGN KEY (`id_comprador`) REFERENCES `clientepuente` (`id_comprador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ventas_compras_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ventas_compras_productos_2` FOREIGN KEY (`id_vendedor`) REFERENCES `productos` (`id_vendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla proyectosis.ventas_compras: ~1 rows (aproximadamente)
INSERT INTO `ventas_compras` (`id`, `id_vendedor`, `id_comprador`, `id_producto`, `nombre_producto`, `cantidad`, `precio`, `tipo_pago`) VALUES
	('20250727171009', 'ven-004', 'com-001', 47, 'Pintura 4L blanca', 1, 95, 'tarjeta');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
