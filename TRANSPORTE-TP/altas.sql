                                  --INSERTS--
--Pasajeros:

INSERT INTO pasajeros (nro_sube, DNI, CUIL, Nombre_titular_sube) VALUES
(1000000001, 48123456, 20481234561, 'Juan Perez'),
(1000000002, 48234567, 20482345672, 'Maria Lopez'),
(1000000003, 48345678, 20483456783, 'Carlos Garcia'),
(1000000004, 48456789, 20484567894, 'Ana Martinez'),
(1000000005, 48567890, 20485678905, 'Luis Rodriguez'),
(1000000006, 33445566, 20334455667, 'Laura Fernandez'),
(1000000007, 55667788, 20556677889, 'Pablo Ramirez'),
(1000000008, 66778899, 20667788992, 'Sofia Diaz'),
(1000000009, 77889900, 20778899001, 'Jorge Gonzalez'),
(1000000010, 88990011, 20889900112, 'Marta Sanchez');

--Área Finanzas:
INSERT INTO area_finanzas (nombre_area, telefono) VALUES
('Contabilidad', 45123456),
('Tesoreria', 45234567),
('Impuestos', 46123456),  
('Facturacion', 46123457),  
('Auditoria', 47567890),
('Presupuesto', 49678901),
('Proveedores', 42345678),
('Pagos y Obligaciones', 43789012),
('Cobranza y Recaudacion', NULL),
('Planeacion Financiera', NULL);

--Infraestructura:
INSERT INTO infraestructura (id_infra, chasis, carroceria, marca_aire_acondicionado) VALUES
(101, 'Mercedes-Benz OF 1721', 'Carrocería Metalpar', 'Webasto'),
(102, 'Volkswagen 17-230', 'Carrocería Busscar', 'Dometic'),
(103, 'Iveco 170E18', 'Carrocería El Detalle', NULL),
(104, 'Scania K310', 'Carrocería Irizar', 'Carrier'),
(105, 'MAN 16.280', 'Carrocería Ugarte', NULL),
(106, 'Volvo B9R', 'Carrocería Busscar', 'Eberspächer'),
(107, 'Mercedes-Benz O500', 'Carrocería Caio', 'CoolAir'),
(108, 'Ford 1722', 'Carrocería Metalpar', 'Truma'),
(109, 'Chevrolet 9000', 'Carrocería Metalpar', NULL),
(110, 'Renault 370', 'Carrocería Ugarte', 'Airstream');

--Empresas:
INSERT INTO empresas (nombre_empresa, id_empresa, fecha_creacion, telefono_empresa, area_finanzas) VALUES
('Transporte La Union S.A.', 1, '1995-06-15', 48123456, 'Contabilidad'),
('Platabus S.A.', 2, '2000-03-10', 48234567, 'Tesoreria'),
('Union Platense S.R.L.', 3, '2010-07-22', 46123456, 'Impuestos'),
('Empresa Nueve de Julio S.A.T.', 4, '2015-11-05', 47567890, 'Auditoria'),
('Micro Omnibus Tigre S.A.', 5, '2011-02-20', 49678901, 'Pagos y Obligaciones'),
('Grupo de Transporte DOTA', 6, '2013-08-30', 42345678, 'Cobranza y Recaudacion'),
('Transportes Unidos de Merlo S.A.', 7, '2016-01-12', 43789012, 'Facturacion'),
('13 de Noviembre S.A.', 8, '2019-04-18', 40123456, 'Presupuesto'),
('Micro Omnibus Quilmes S.A.', 9, '2017-09-25', 47567891, 'Proveedores'),
('Rutatlantica S.A.', 10, '2020-06-15', 48890123, 'Planeacion Financiera');
 
--Líneas: 
INSERT INTO lineas (nro_linea, anio_inicio, empresa) VALUES
(45, 1995, 'Transporte La Union S.A.'),
(89, 2000, 'Platabus S.A.'),
(146, 1999, 'Union Platense S.R.L.'),
(92, 1998, 'Empresa Nueve de Julio S.A.T.'),
(54, 1999, 'Micro Omnibus Tigre S.A.'),
(13, 2001, 'Grupo de Transporte DOTA'),
(57, 2004, 'Transportes Unidos de Merlo S.A.'),
(11, 2004, '13 de Noviembre S.A.'),
(4, 2006, 'Micro Omnibus Quilmes S.A.'),
(1, 2010, 'Rutatlantica S.A.');

--Internos
INSERT INTO internos (num_interno, linea_interno, circula, id_infra) VALUES
(2023, 45, TRUE, 101),
(3154, 89, FALSE, 102),
(4287, 146, TRUE, 103),
(5342, 92, TRUE, 104),
(6420, 54, FALSE, 105),
(7511, 13, TRUE, 106),
(8904, 57, TRUE, 107),
(9056, 11, FALSE, 108),
(1123, 4, TRUE, 109),
(4538, 1, TRUE, 110);

--Ramales:
INSERT INTO ramales (nombre_ramal, inicio_recorrido, terminal, linea) VALUES
('Ramal Norte', 'Plaza de Mayo', 'Retiro', 45),
('Ramal Sur', 'Constitucion', 'Liniers', 89),
('Ramal Este', 'Avellaneda', 'Lanus', 146),
('Ramal Oeste', 'Moron', 'Castelar', 92),
('Ramal Centro', 'Once', 'Caballito', 54),
('Ramal Liniers', 'Liniers', 'San Justo', 13),
('Ramal Barracas', 'Barracas', 'Dock Sud', 57),
('Ramal Tigre', 'Tigre', 'Pilar', 11),
('Ramal Quilmes', 'Quilmes', 'Berazategui', 4),
('Ramal Merlo', 'Merlo', 'Ituzaingo', 1);

--Boletos
INSERT INTO boletos (nro_boleto, valor_boleto, estudiantil, subsidio, fecha, horario, sube, linea) VALUES
(200001, 50.00, FALSE, NULL, '2024-11-01', '08:30:00', 1000000001, 45),
(200002, 45.00, FALSE, NULL, '2024-11-01', '09:00:00', 1000000002, 89),
(100003, 60.00, FALSE, NULL, '2024-11-01', '10:15:00', 1000000003, 146),
(100004, 55.00, FALSE, NULL, '2024-11-01', '11:45:00', 1000000004, 92),
(200005, 70.00, FALSE, NULL, '2024-11-01', '12:00:00', 1000000005, 54),
(200006, 40.00, TRUE, 3.00, '2024-11-01', '13:30:00', 1000000006, 13),
(100007, 65.00, FALSE, NULL, '2024-11-01', '14:00:00', 1000000007, 57),
(100008, 50.00, TRUE, 5.00, '2024-11-01', '15:15:00', 1000000008, 11),
(200009, 55.00, FALSE, NULL, '2024-11-01', '16:00:00', 1000000009, 4),
(200010, 75.00, TRUE, 10.00, '2024-11-01', '17:45:00', 1000000010, 1);

--Recibo Sueldo:
INSERT INTO recibo_sueldo (nro_recibo, sueldo_bruto, descuento, sueldo_neto, DNI_choferes, nombre_area) VALUES
(20000001, 350000.00, 35000.00, 315000.00, 32012345, 'Contabilidad'),
(20000002, 400000.00, 40000.00, 360000.00, 32067891, 'Tesoreria'),
(10000003, 450000.00, 45000.00, 405000.00, 32023456, 'Impuestos'),
(10000004, 500000.00, 50000.00, 450000.00, 38098765, 'Auditoria'),
(20000005, 600000.00, 60000.00, 540000.00, 38012378, 'Pagos y Obligaciones'),
(20000006, 380000.00, 38000.00, 342000.00, 54356789, 'Cobranza y Recaudacion'),
(10000007, 420000.00, 42000.00, 378000.00, 67890123, 'Facturacion'),
(10000008, 390000.00, 39000.00, 351000.00, 23456789, 'Presupuesto'),
(20000009, 330000.00, 33000.00, 297000.00, 87654321, 'Proveedores'),
(20000010, 310000.00, 31000.00, 279000.00, 98765432, 'Planeacion Financiera');

--Choferes:

INSERT INTO choferes (dni_choferes, nombre_choferes, es_duenio, horas_semanales, empresa_choferes, num_interno) VALUES
(32012345, 'Fernando Gonzalez', TRUE, 40, 'Transporte La Union S.A.', 2023),  
(32067891, 'Patricia Alvarez', FALSE, 30, 'Platabus S.A.', 3154),
(32023456, 'Ricardo Fernandez', TRUE, 36, 'Union Platense S.R.L.', 4287),  
(38098765, 'Gabriela Romero', FALSE, 38, 'Empresa Nueve de Julio S.A.T.', 5342),
(38012378, 'Santiago Castillo', TRUE, 42, 'Micro Omnibus Tigre S.A.', 6420),  
(54356789, 'Laura Torres', FALSE, 35, 'Grupo de Transporte DOTA', 7511),
(67890123, 'Javier Martinez', TRUE, 40, 'Transportes Unidos de Merlo S.A.', 8904),
(23456789, 'Ana Silva', FALSE, 30, '13 de Noviembre S.A.', 9056),  
(87654321, 'Diego Lopez', TRUE, 45, 'Micro Omnibus Quilmes S.A.', 1123),  
(98765432, 'Marta Ruiz', FALSE, 28, 'Rutatlantica S.A.', 4538);


