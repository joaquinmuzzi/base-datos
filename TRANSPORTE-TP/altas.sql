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
+------------+----------+-------------+---------------------+
| nro_sube   | DNI      | CUIL        | Nombre_titular_sube |
+------------+----------+-------------+---------------------+
| 1000000001 | 48123456 | 20481234561 | Juan Perez          |
| 1000000002 | 48234567 | 20482345672 | Maria Lopez         |
| 1000000003 | 48345678 | 20483456783 | Carlos Garcia       |
| 1000000004 | 48456789 | 20484567894 | Ana Martinez        |
| 1000000005 | 48567890 | 20485678905 | Luis Rodriguez      |
| 1000000006 | 33445566 | 20334455667 | Laura Fernandez     |
| 1000000007 | 55667788 | 20556677889 | Pablo Ramirez       |
| 1000000008 | 66778899 | 20667788992 | Sofia Diaz          |
| 1000000009 | 77889900 | 20778899001 | Jorge Gonzalez      |
| 1000000010 | 88990011 | 20889900112 | Marta Sanchez       |
+------------+----------+-------------+---------------------+

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

+------------------------+----------+
| nombre_area            | telefono |
+------------------------+----------+
| Auditoria              | 47567890 |
| Cobranza y Recaudacion |     NULL |
| Contabilidad           | 45123456 |
| Facturacion            | 46123457 |
| Impuestos              | 46123456 |
| Pagos y Obligaciones   | 43789012 |
| Planeacion Financiera  |     NULL |
| Presupuesto            | 49678901 |
| Proveedores            | 42345678 |
| Tesoreria              | 45234567 |
+------------------------+----------+

--Infraestructura:
INSERT INTO infraestructura (id_infra, chasis, carroceria, marca_aire_acondicionado) VALUES
(101, 'Mercedes-Benz OF 1721', 'Carroceria Metalpar', 'Webasto'),
(102, 'Volkswagen 17-230', 'Carroceria Busscar', 'Dometic'),
(103, 'Iveco 170E18', 'Carroceria El Detalle', NULL),
(104, 'Scania K310', 'Carroceria Irizar', 'Carrier'),
(105, 'MAN 16.280', 'Carroceria Ugarte', NULL),
(106, 'Volvo B9R', 'Carroceria Busscar', 'Eberspacher'),
(107, 'Mercedes-Benz O500', 'Carroceria Caio', 'CoolAir'),
(108, 'Ford 1722', 'Carroceria Metalpar', 'Truma'),
(109, 'Chevrolet 9000', 'Carroceria Metalpar', NULL),
(110, 'Renault 370', 'Carroceria Ugarte', 'Airstream');

+----------+-----------------------+-----------------------+--------------------------+
| id_infra | chasis                | carroceria            | marca_aire_acondicionado |
+----------+-----------------------+-----------------------+--------------------------+
|      101 | Mercedes-Benz OF 1721 | Carroceria Metalpar   | Webasto                  |
|      102 | Volkswagen 17-230     | Carroceria Busscar    | Dometic                  |
|      103 | Iveco 170E18          | Carroceria El Detalle | NULL                     |
|      104 | Scania K310           | Carroceria Irizar     | Carrier                  |
|      105 | MAN 16.280            | Carroceria Ugarte     | NULL                     |
|      106 | Volvo B9R             | Carroceria Busscar    | Ebersp├ñcher             |
|      107 | Mercedes-Benz O500    | Carroceria Caio       | CoolAir                  |
|      108 | Ford 1722             | Carroceria Metalpar   | Truma                    |
|      109 | Chevrolet 9000        | Carroceria Metalpar   | NULL                     |
|      110 | Renault 370           | Carroceria Ugarte     | Airstream                |
+----------+-----------------------+-----------------------+--------------------------+

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

+----------------------------------+------------+----------------+------------------+------------------------+
| nombre_empresa                   | id_empresa | fecha_creacion | telefono_empresa | area_finanzas          |
+----------------------------------+------------+----------------+------------------+------------------------+
| 13 de Noviembre S.A.             |          8 | 2019-04-18     |         40123456 | Presupuesto            |
| Empresa Nueve de Julio S.A.T.    |          4 | 2015-11-05     |         47567890 | Auditoria              |
| Grupo de Transporte DOTA         |          6 | 2013-08-30     |         42345678 | Cobranza y Recaudacion |
| Micro Omnibus Quilmes S.A.       |          9 | 2017-09-25     |         47567891 | Proveedores            |
| Micro Omnibus Tigre S.A.         |          5 | 2011-02-20     |         49678901 | Pagos y Obligaciones   |
| Platabus S.A.                    |          2 | 2000-03-10     |         48234567 | Tesoreria              |
| Rutatlantica S.A.                |         10 | 2020-06-15     |         48890123 | Planeacion Financiera  |
| Transporte La Union S.A.         |          1 | 1995-06-15     |         48123456 | Contabilidad           |
| Transportes Unidos de Merlo S.A. |          7 | 2016-01-12     |         43789012 | Facturacion            |
| Union Platense S.R.L.            |          3 | 2010-07-22     |         46123456 | Impuestos              |
+----------------------------------+------------+----------------+------------------+------------------------+
 
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

+-----------+-------------+----------------------------------+
| nro_linea | anio_inicio | empresa                          |
+-----------+-------------+----------------------------------+
|         1 |        2010 | Rutatlantica S.A.                |
|         4 |        2006 | Micro Omnibus Quilmes S.A.       |
|        11 |        2004 | 13 de Noviembre S.A.             |
|        13 |        2001 | Grupo de Transporte DOTA         |
|        45 |        1995 | Transporte La Union S.A.         |
|        54 |        1999 | Micro Omnibus Tigre S.A.         |
|        57 |        2004 | Transportes Unidos de Merlo S.A. |
|        89 |        2000 | Platabus S.A.                    |
|        92 |        1998 | Empresa Nueve de Julio S.A.T.    |
|       146 |        1999 | Union Platense S.R.L.            |
+-----------+-------------+----------------------------------+

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

+-------------+---------------+---------+----------+
| num_interno | linea_interno | circula | id_infra |
+-------------+---------------+---------+----------+
|        1123 |             4 |       1 |      109 |
|        2023 |            45 |       1 |      101 |
|        3154 |            89 |       0 |      102 |
|        4287 |           146 |       1 |      103 |
|        4538 |             1 |       1 |      110 |
|        5342 |            92 |       1 |      104 |
|        6420 |            54 |       0 |      105 |
|        7511 |            13 |       1 |      106 |
|        8904 |            57 |       1 |      107 |
|        9056 |            11 |       0 |      108 |
+-------------+---------------+---------+----------+

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

+----------------+------------------+-------------+-------+
| nombre_ramal   | inicio_recorrido | terminal    | linea |
+----------------+------------------+-------------+-------+
| Ramal Barracas | Barracas         | Dock Sud    |    57 |
| Ramal Centro   | Once             | Caballito   |    54 |
| Ramal Este     | Avellaneda       | Lanus       |   146 |
| Ramal Liniers  | Liniers          | San Justo   |    13 |
| Ramal Merlo    | Merlo            | Ituzaingo   |     1 |
| Ramal Norte    | Plaza de Mayo    | Retiro      |    45 |
| Ramal Oeste    | Moron            | Castelar    |    92 |
| Ramal Quilmes  | Quilmes          | Berazategui |     4 |
| Ramal Sur      | Constitucion     | Liniers     |    89 |
| Ramal Tigre    | Tigre            | Pilar       |    11 |
+----------------+------------------+-------------+-------+

--Boletos
INSERT INTO boletos (nro_boleto, valor_boleto, estudiantil, subsidio, fecha, horario, sube, linea) VALUES
(100003, 60.00, 0, NULL, '2023-07-03', '10:15:00', 1000000001, 146),
(100012, 60.00, 0, NULL, '2023-07-03', '11:00:00', 1000000002, 146),
(100013, 62.50, 1, 2.50, '2023-07-03', '11:30:00', 1000000003, 146),
(100014, 58.00, 0, NULL, '2023-07-03', '12:00:00', 1000000004, 146),
(100015, 61.00, 1, 4.00, '2023-07-03', '12:30:00', 1000000005, 146),
(100004, 55.00, 0, NULL, '2024-02-27', '11:45:00', 1000000004, 92),
(100016, 54.00, 0, NULL, '2024-02-27', '12:15:00', 1000000006, 92),
(100017, 56.00, 0, NULL, '2024-02-27', '12:45:00', 1000000007, 92),
(100018, 57.00, 1, 5.00, '2024-02-27', '13:15:00', 1000000008, 92),
(100019, 59.00, 0, NULL, '2024-02-27', '13:45:00', 1000000009, 92),
(100007, 65.00, 0, NULL, '2024-01-27', '14:00:00', 1000000007, 57),
(100020, 64.00, 0, NULL, '2024-01-27', '14:30:00', 1000000001, 57),
(100021, 66.50, 1, 6.50, '2024-01-27', '15:00:00', 1000000001, 57),
(100022, 63.00, 0, NULL, '2024-01-27', '15:30:00', 1000000002, 57),
(100008, 50.00, 1, 5.00, '2024-02-11', '15:15:00', 1000000008, 11),
(100023, 49.00, 0, NULL, '2024-02-11', '15:45:00', 1000000003, 11),
(100024, 51.50, 1, 6.00, '2024-02-11', '16:15:00', 1000000004, 11),
(100025, 48.00, 0, NULL, '2024-02-11', '16:45:00', 1000000005, 11),
(200001, 50.00, 0, NULL, '2023-06-14', '08:30:00', 1000000001, 45),
(200002, 45.00, 0, NULL, '2024-09-01', '09:00:00', 1000000002, 89),
(200003, 47.50, 1, 5.50, '2024-09-01', '09:30:00', 1000000003, 89),
(200004, 46.00, 0, NULL, '2024-09-01', '10:00:00', 1000000004, 89),
(200005, 70.00, 0, NULL, '2023-09-16', '12:00:00', 1000000005, 54),
(200006, 40.00, 1, 3.00, '2024-11-03', '13:30:00', 1000000006, 13),
(200007, 45.00, 0, NULL, '2024-11-03', '14:00:00', 1000000007, 13),
(200008, 42.50, 1, 3.50, '2024-11-03', '14:30:00', 1000000008, 13),
(200009, 55.00, 0, NULL, '2023-08-05', '16:00:00', 1000000009, 4),
(200010, 75.00, 1, 10.00, '2023-09-18', '17:45:00', 1000000010, 1);

+------------+--------------+-------------+----------+------------+----------+------------+-------+
| nro_boleto | valor_boleto | estudiantil | subsidio | fecha      | horario  | sube       | linea |
+------------+--------------+-------------+----------+------------+----------+------------+-------+
|     100003 |        60.00 |           0 |     NULL | 2023-07-03 | 10:15:00 | 1000000001 |   146 |
|     100004 |        55.00 |           0 |     NULL | 2024-02-27 | 11:45:00 | 1000000004 |    92 |
|     100007 |        65.00 |           0 |     NULL | 2024-01-27 | 14:00:00 | 1000000007 |    57 |
|     100008 |        50.00 |           1 |     5.00 | 2024-02-11 | 15:15:00 | 1000000008 |    11 |
|     100012 |        60.00 |           0 |     NULL | 2023-07-03 | 11:00:00 | 1000000002 |   146 |
|     100013 |        62.50 |           1 |     2.50 | 2023-07-03 | 11:30:00 | 1000000003 |   146 |
|     100014 |        58.00 |           0 |     NULL | 2023-07-03 | 12:00:00 | 1000000004 |   146 |
|     100015 |        61.00 |           1 |     4.00 | 2023-07-03 | 12:30:00 | 1000000005 |   146 |
|     100016 |        54.00 |           0 |     NULL | 2024-02-27 | 12:15:00 | 1000000006 |    92 |
|     100017 |        56.00 |           0 |     NULL | 2024-02-27 | 12:45:00 | 1000000007 |    92 |
|     100018 |        57.00 |           1 |     5.00 | 2024-02-27 | 13:15:00 | 1000000008 |    92 |
|     100019 |        59.00 |           0 |     NULL | 2024-02-27 | 13:45:00 | 1000000009 |    92 |
|     100020 |        64.00 |           0 |     NULL | 2024-01-27 | 14:30:00 | 1000000001 |    57 |
|     100021 |        66.50 |           1 |     6.50 | 2024-01-27 | 15:00:00 | 1000000001 |    57 |
|     100022 |        63.00 |           0 |     NULL | 2024-01-27 | 15:30:00 | 1000000002 |    57 |
|     100023 |        49.00 |           0 |     NULL | 2024-02-11 | 15:45:00 | 1000000003 |    11 |
|     100024 |        51.50 |           1 |     6.00 | 2024-02-11 | 16:15:00 | 1000000004 |    11 |
|     100025 |        48.00 |           0 |     NULL | 2024-02-11 | 16:45:00 | 1000000005 |    11 |
|     200001 |        50.00 |           0 |     NULL | 2023-06-14 | 08:30:00 | 1000000001 |    45 |
|     200002 |        45.00 |           0 |     NULL | 2024-09-01 | 09:00:00 | 1000000002 |    89 |
|     200003 |        47.50 |           1 |     5.50 | 2024-09-01 | 09:30:00 | 1000000003 |    89 |
|     200004 |        46.00 |           0 |     NULL | 2024-09-01 | 10:00:00 | 1000000004 |    89 |
|     200005 |        70.00 |           0 |     NULL | 2023-09-16 | 12:00:00 | 1000000005 |    54 |
|     200006 |        40.00 |           1 |     3.00 | 2024-11-03 | 13:30:00 | 1000000006 |    13 |
|     200007 |        45.00 |           0 |     NULL | 2024-11-03 | 14:00:00 | 1000000007 |    13 |
|     200008 |        42.50 |           1 |     3.50 | 2024-11-03 | 14:30:00 | 1000000008 |    13 |
|     200009 |        55.00 |           0 |     NULL | 2023-08-05 | 16:00:00 | 1000000009 |     4 |
|     200010 |        75.00 |           1 |    10.00 | 2023-09-18 | 17:45:00 | 1000000010 |     1 |
+------------+--------------+-------------+----------+------------+----------+------------+-------+

--Choferes:

INSERT INTO choferes (dni_choferes, CUIL_choferes, nombre_choferes, es_duenio, horas_semanales, empresa_choferes, num_interno) VALUES 
(32012345, 2032012345, 'Juan Perez', TRUE, 40, 'Transporte La Union S.A.', 2023),
(32067891, 2043206789, 'Maria Lopez', FALSE, 30, 'Platabus S.A.', 3154),
(32023456, 2023202345, 'Carlos Garcia', TRUE, 35, 'Union Platense S.R.L.', 4287),
(38098765, 2038098765, 'Ana Martinez', FALSE, 20, 'Empresa Nueve de Julio S.A.T.', 5342),
(38012378, 2038012378, 'Pedro Fernandez', TRUE, 45, 'Micro Omnibus Tigre S.A.', 6420),
(54356789, 2054356789, 'Laura Gonzalez', FALSE, 25, 'Grupo de Transporte DOTA', 7511),
(67890123, 2067890123, 'Ricardo Diaz', TRUE, 38, 'Transportes Unidos de Merlo S.A.', 8904),
(23456789, 2023456789, 'Silvia Romero', FALSE, 32, '13 de Noviembre S.A.', 9056),
(87654321, 2087654321, 'Jorge Silva', TRUE, 28, 'Micro Omnibus Quilmes S.A.', 1123),
(98765432, 2098765432, 'Claudia Castro', FALSE, 50, 'Rutatlantica S.A.', 4538);

+--------------+---------------+-----------------+-----------+-----------------+----------------------------------+-------------+
| dni_choferes | CUIL_choferes | nombre_choferes | es_duenio | horas_semanales | empresa_choferes                 | num_interno |
+--------------+---------------+-----------------+-----------+-----------------+----------------------------------+-------------+
|     23456789 |    2023456789 | Silvia Romero   |         0 |              32 | 13 de Noviembre S.A.             |        9056 |
|     32012345 |    2032012345 | Juan Perez      |         1 |              40 | Transporte La Union S.A.         |        2023 |
|     32023456 |    2023202345 | Carlos Garcia   |         1 |              35 | Union Platense S.R.L.            |        4287 |
|     32067891 |    2043206789 | Maria Lopez     |         0 |              30 | Platabus S.A.                    |        3154 |
|     38012378 |    2038012378 | Pedro Fernandez |         1 |              45 | Micro Omnibus Tigre S.A.         |        6420 |
|     38098765 |    2038098765 | Ana Martinez    |         0 |              20 | Empresa Nueve de Julio S.A.T.    |        5342 |
|     54356789 |    2054356789 | Laura Gonzalez  |         0 |              25 | Grupo de Transporte DOTA         |        7511 |
|     67890123 |    2067890123 | Ricardo Diaz    |         1 |              38 | Transportes Unidos de Merlo S.A. |        8904 |
|     87654321 |    2087654321 | Jorge Silva     |         1 |              28 | Micro Omnibus Quilmes S.A.       |        1123 |
|     98765432 |    2098765432 | Claudia Castro  |         0 |              50 | Rutatlantica S.A.                |        4538 |
+--------------+---------------+-----------------+-----------+-----------------+----------------------------------+-------------+

--Recibo Sueldo:
INSERT INTO recibo_sueldo (nro_recibo, sueldo_bruto, descuento, sueldo_neto, DNI_choferes, nombre_area, fecha_emision) VALUES
(20000001, 35000.00, 350.00, 31500.00, 32012345, 'Contabilidad', '2024-01-10'),
(20000002, 40000.00, 400.00, 36000.00, 32067891, 'Tesoreria', '2024-02-15'),
(10000003, 45000.00, 450.00, 40500.00, 32023456, 'Impuestos', '2024-03-20'),
(10000004, 50000.00, 500.00, 45000.00, 38098765, 'Auditoria', '2024-04-25'),
(20000005, 60000.00, 600.00, 54000.00, 38012378, 'Pagos y Obligaciones', '2024-05-30'),
(20000006, 38000.00, 380.00, 34200.00, 54356789, 'Cobranza y Recaudacion', '2024-06-15'),
(10000007, 42000.00, 420.00, 37800.00, 67890123, 'Facturacion', '2024-07-20'),
(10000008, 39000.00, 390.00, 35100.00, 23456789, 'Presupuesto', '2024-08-25'),
(20000009, 33000.00, 330.00, 29700.00, 87654321, 'Proveedores', '2024-09-10'),
(20000010, 31000.00, 310.00, 27900.00, 98765432, 'Planeacion Financiera', '2024-10-15');


+------------+--------------+-----------+-------------+--------------+------------------------+
| nro_recibo | sueldo_bruto | descuento | sueldo_neto | DNI_choferes | nombre_area            |
+------------+--------------+-----------+-------------+--------------+------------------------+
|   10000003 |     45000.00 |    450.00 |    40500.00 |     32023456 | Impuestos              |
|   10000004 |     50000.00 |    500.00 |    45000.00 |     38098765 | Auditoria              |
|   10000007 |     42000.00 |    420.00 |    37800.00 |     67890123 | Facturacion            |
|   10000008 |     39000.00 |    390.00 |    35100.00 |     23456789 | Presupuesto            |
|   20000001 |     35000.00 |    350.00 |    31500.00 |     32012345 | Contabilidad           |
|   20000002 |     40000.00 |    400.00 |    36000.00 |     32067891 | Tesoreria              |
|   20000005 |     60000.00 |    600.00 |    54000.00 |     38012378 | Pagos y Obligaciones   |
|   20000006 |     38000.00 |    380.00 |    34200.00 |     54356789 | Cobranza y Recaudacion |
|   20000009 |     33000.00 |    330.00 |    29700.00 |     87654321 | Proveedores            |
|   20000010 |     31000.00 |    310.00 |    99999.99 |     98765432 | Planeacion Financiera  |
+------------+--------------+-----------+-------------+--------------+------------------------+
