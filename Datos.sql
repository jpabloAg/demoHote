INSERT INTO `bd_sistema_reservas_hotel`.`clientes` (`cedula`, `nombre`, `apellido`, `email`, `celular`) VALUES ('10276548923', 'Maria ', 'Patricia', 'Patricia@gmail.com', '3102781986');

INSERT INTO `bd_sistema_reservas_hotel`.`servicios` (`codigo_servicio`, `servicio`) VALUES ('1', 'Aire');
INSERT INTO `bd_sistema_reservas_hotel`.`servicios` (`codigo_servicio`, `servicio`) VALUES ('2', 'Tv');
INSERT INTO `bd_sistema_reservas_hotel`.`servicios` (`codigo_servicio`, `servicio`) VALUES ('3', 'WiFi');
INSERT INTO `bd_sistema_reservas_hotel`.`servicios` (`codigo_servicio`, `servicio`) VALUES ('4', 'Telefono');
INSERT INTO `bd_sistema_reservas_hotel`.`servicios` (`codigo_servicio`, `servicio`) VALUES ('5', 'Toalla');
INSERT INTO `bd_sistema_reservas_hotel`.`servicios` (`codigo_servicio`, `servicio`) VALUES ('6', 'Tina');
INSERT INTO `bd_sistema_reservas_hotel`.`servicios` (`codigo_servicio`, `servicio`) VALUES ('7', 'Espacio de Trabajo');
INSERT INTO `bd_sistema_reservas_hotel`.`servicios` (`codigo_servicio`, `servicio`) VALUES ('8', 'MiniBar');

INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones` (`codigo_tipo`, `nombre`, `descripcion1`, `descripcion2`, `numero_baños`, `numero_personas`, `numero_camas`, `precio`, `url_imagen`) VALUES ('1', 'Standard Room', 'Nuestras habitaciones estándar son la combinación perfecta de funcionalidad y comodidad.', 'Funcional y confortable. Siéntese y disfrute de una de nuestras nuevas habitaciones estándar. Con vistas al patio, decoración elegante y luz natural, nuestras habitaciones estándar son la combinación perfecta de funcionalidad y comodidad. Ideal para quienes viajan por negocios o por placer.', '1', '1', '1', '150000', '../../../assets/hospedaje/standarRoom.jpg');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones` (`codigo_tipo`, `nombre`, `descripcion1`, `descripcion2`, `numero_baños`, `numero_personas`, `numero_camas`, `precio`, `url_imagen`) VALUES ('2', 'Junior Suite', 'Nuestras Junior Suites ofrecen impresionantes vistas del horizonte de la ciudad.', 'Lujo pagable. Nuestras Junior Suites son la opción perfecta si busca un lujo extra. Las Junior Suites ofrecen el espacio adicional que necesita para relajarse y disfrutar de las impresionantes vistas del horizonte de la ciudad.', '1', '2', '2', '250000', '../../../assets/hospedaje/juniorRoom.jpg');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones` (`codigo_tipo`, `nombre`, `descripcion1`, `descripcion2`, `numero_baños`, `numero_personas`, `numero_camas`, `precio`, `url_imagen`) VALUES ('3', 'Superior Room', 'Nuestras habitaciones superiores son cómodas, espaciosas y elegantes.', 'Sencillez elegante. Nuestras habitaciones superiores le brindan el espacio y la privacidad que necesita para trabajar o divertirse mientras viaja. Las espaciosas habitaciones incluyen una sala de estar íntima, una estación de trabajo de negocios y vistas al patio. Con todas las comodidades habituales, nuestras habitaciones superiores también incluyen un periódico diario y botellas de agua.', '1', '1', '1', '350000', '../../../assets/hospedaje/superiorRoom.jpg');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones` (`codigo_tipo`, `nombre`, `descripcion1`, `descripcion2`, `numero_baños`, `numero_personas`, `numero_camas`, `precio`, `url_imagen`) VALUES ('4', 'Standard Family Room', 'Calidez y sencilles para unas buenas vacaciones en familia', 'Nuestras habitaciones familiares son la combinación perfecta para que tanto niños como adultos disfruten de su estadía de la manera mas placentera posible, con espacios comodos y divertidos como el hogar.', '2', '5', '4', '550000', '../../../assets/hospedaje/familyRoom.jpg');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones` (`codigo_tipo`, `nombre`, `descripcion1`, `descripcion2`, `numero_baños`, `numero_personas`, `numero_camas`, `precio`, `url_imagen`) VALUES ('5', 'Standar Couple Room', 'Perfectas para parejas que buscan comodidad y tranquilidad', 'Funcional y confortable. Siéntese y disfrute de una de nuestras nuevas habitaciones estándar para pareja, dejese llevar y contemple hermosas vistas, con una tranquilidad y comodidia inigualable.', '1', '2', '1', '300000', '../../../assets/hospedaje/coupleRoom.jpg');


INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('1', '1', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('10', '1', '2');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('11', '1', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('12', '1', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('13', '1', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('14', '1', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('15', '1', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('16', '1', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('17', '1', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('18', '1', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('19', '1', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('2', '1', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('20', '1', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('21', '1', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('22', '1', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('23', '1', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('24', '1', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('25', '1', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('3', '1', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('4', '1', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('5', '1', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('6', '1', '2');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('7', '1', '2');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('8', '1', '2');
INSERT INTO `bd_sistema_reservas_hotel`.`habitaciones` (`numero_habitacion`, `codigo_hotel`, `tipo_habitacion`) VALUES ('9', '1', '2');

INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('1', '1', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('2', '1', '2');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('3', '1', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('4', '1', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('5', '1', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('6', '2', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('7', '2', '2');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('8', '2', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('9', '2', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('10', '2', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('11', '3', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('12', '3', '2');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('13', '3', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('14', '3', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('15', '3', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('16', '3', '6');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('17', '3', '7');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('18', '3', '8');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('19', '4', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('20', '4', '2');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('21', '4', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('22', '4', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('23', '4', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('24', '5', '1');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('25', '5', '2');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('26', '5', '3');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('27', '5', '4');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('28', '5', '5');
INSERT INTO `bd_sistema_reservas_hotel`.`tipos_habitaciones_servicios` (`codigo`, `codigo_tipo`, `codigo_servicio`) VALUES ('29', '5', '6');

