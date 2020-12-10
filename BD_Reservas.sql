CREATE DATABASE `bd_sistema_reservas_hotel`;

CREATE TABLE `clientes` (
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cedula`)
);
CREATE TABLE `habitaciones` (
  `numero_habitacion` varchar(100) NOT NULL,
  `codigo_hotel` varchar(5) DEFAULT NULL,
  `tipo_habitacion` varchar(5) NOT NULL,
  PRIMARY KEY (`numero_habitacion`),
  KEY `fk_habitacion.tipo_habitacion_idx` (`tipo_habitacion`),
  CONSTRAINT `fk_habitacion.tipo_habitacion` FOREIGN KEY (`tipo_habitacion`) REFERENCES `tipos_habitaciones` (`codigo_tipo`) 
) ;

CREATE TABLE `reservas` (
  `codigo_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `numero_habitacion` varchar(100) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `cedula_cliente` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_reserva`),
  KEY `fk_reserva.cedula_cliente_idx` (`cedula_cliente`),
  KEY `fk_reserva.numero_habiacion_idx` (`numero_habitacion`),
  CONSTRAINT `fk_reserva.cedula_cliente` FOREIGN KEY (`cedula_cliente`) REFERENCES `clientes` (`cedula`),
  CONSTRAINT `fk_reserva.numero_habiacion` FOREIGN KEY (`numero_habitacion`) REFERENCES `habitaciones` (`numero_habitacion`)
) ;

CREATE TABLE `servicios` (
  `codigo_servicio` varchar(5) NOT NULL,
  `servicio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_servicio`)
);

CREATE TABLE `tipos_habitaciones` (
  `codigo_tipo` varchar(5) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `descripcion1` varchar(100) DEFAULT NULL,
  `descripcion2` varchar(500) DEFAULT NULL,
  `numero_baños` int(11) DEFAULT NULL,
  `numero_personas` int(11) DEFAULT NULL,
  `numero_camas` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `url_imagen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_tipo`)
);

CREATE TABLE `tipos_habitaciones_servicios` (
  `codigo` int(11) NOT NULL,
  `codigo_tipo` varchar(5) DEFAULT NULL,
  `codigo_servicio` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_codigo_servicio_idx` (`codigo_servicio`),
  KEY `fk_codigo_tipo_idx` (`codigo_tipo`),
  CONSTRAINT `fk_codigo_servicio` FOREIGN KEY (`codigo_servicio`) REFERENCES `servicios` (`codigo_servicio`),
  CONSTRAINT `fk_codigo_tipo` FOREIGN KEY (`codigo_tipo`) REFERENCES `tipos_habitaciones` (`codigo_tipo`)
);

