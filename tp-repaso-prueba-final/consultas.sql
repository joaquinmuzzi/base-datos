/* 1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas. */

SELECT codigo_oficina, ciudad FROM oficina;

+----------------+----------------------+
| codigo_oficina | ciudad               |
+----------------+----------------------+
| BCN-ES         | Barcelona            |
| BOS-USA        | Boston               |
| LON-UK         | Londres              |
| MAD-ES         | Madrid               |
| PAR-FR         | Paris                |
| SFC-USA        | San Francisco        |
| SYD-AU         | Sydney               |
| TAL-ES         | Talavera de la Reina |
| TOK-JP         | Tokyo                |
+----------------+----------------------+

/* 2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España. */

SELECT ciudad, telefono FROM oficina WHERE codigo_oficina LIKE '%-ES';

+----------------------+----------------+
| ciudad               | telefono       |
+----------------------+----------------+
| Barcelona            | +34 93 3561182 |
| Madrid               | +34 91 7514487 |
| Talavera de la Reina | +34 925 867231 |
+----------------------+----------------+

/* 3. Devuelve un listado con el email, nombre, apellidos completos (Por ej. Fernandez Alonso,
Mario Alfredo) de los empleados cuyo jefe tiene un código de jefe igual a 7. */

SELECT email, nombre, apellido1, apellido2 FROM empleado WHERE codigo_jefe = 7;

+--------------------------+---------+-----------+-----------+
| email                    | nombre  | apellido1 | apellido2 |
+--------------------------+---------+-----------+-----------+
| mlopez@jardineria.es     | Mariano | L?pez     | Murcia    |
| lcampoamor@jardineria.es | Lucio   | Campoamor | Mart?n    |
| hrodriguez@jardineria.es | Hilario | Rodriguez | Huertas   |
+--------------------------+---------+-----------+-----------+

/* 4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa */

SELECT puesto, nombre, apellido1, apellido2, email FROM empleado WHERE codigo_jefe IS NULL;

+------------------+--------+-----------+-----------+----------------------+
| puesto           | nombre | apellido1 | apellido2 | email                |
+------------------+--------+-----------+-----------+----------------------+
| Director General | Marcos | Maga?a    | Perez     | marcos@jardineria.es |
+------------------+--------+-----------+-----------+----------------------+

/* 5. Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean
representantes de ventas */

SELECT nombre, apellido1, apellido2, puesto FROM empleado WHERE puesto != 'Representante Ventas';

+----------+------------+-----------+-----------------------+
| nombre   | apellido1  | apellido2 | puesto                |
+----------+------------+-----------+-----------------------+
| Marcos   | Maga?a     | Perez     | Director General      |
| Ruben    | L?pez      | Martinez  | Subdirector Marketing |
| Alberto  | Soria      | Carrasco  | Subdirector Ventas    |
| Maria    | Sol?s      | Jerez     | Secretaria            |
| Carlos   | Soria      | Jimenez   | Director Oficina      |
| Francois | Fignon     |           | Director Oficina      |
| Michael  | Bolton     |           | Director Oficina      |
| Hilary   | Washington |           | Director Oficina      |
| Nei      | Nishikori  |           | Director Oficina      |
| Amy      | Johnson    |           | Director Oficina      |
| Kevin    | Fallmer    |           | Director Oficina      |
+----------+------------+-----------+-----------------------+

/* 6. Devuelve un listado con el nombre de todos los clientes españoles. */

SELECT nombre_cliente FROM cliente WHERE pais LIKE 'Spain';

+--------------------------------+
| nombre_cliente                 |
+--------------------------------+
| Lasas S.A.                     |
| Lasas S.A.                     |
| Camunas Jardines S.L.          |
| Dardena S.A.                   |
| Jardin de Flores               |
| Flores Marivi                  |
| Flowers, S.A                   |
| Naturajardin                   |
| Vivero Humanes                 |
| Fuenla City                    |
| Jardines y Mansiones Cactus SL |
| Jardiner?as Mat?as SL          |
| Agrojardin                     |
| Top Campo                      |
| Jardineria Sara                |
| Campohermoso                   |
| Flores S.L.                    |
+--------------------------------+

/* 7. Devuelve un listado con los distintos estados por los que puede pasar un pedido. */

SELECT DISTINCT estado FROM pedido;

+-----------+
| estado    |
+-----------+
| Entregado |
| Rechazado |
| Pendiente |
+-----------+

/* 8. Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en
2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan
repetidos. Resuelva la consulta:
Utilizando la función YEAR
Utilizando DATE_FORMAT
Sin utilizar ninguna de las funciones anteriores. */

SELECT DISTINCT c.nombre_cliente, p.fecha_entrega FROM pedido p, cliente cWHERE p.codigo_cliente = c.codigo_cliente p.fecha_entrega >= '2008-01-01' AND p.fecha_entrega < '2009-01-01';

/* 9. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo. */
SELECT p.codigo_pedido, c.codigo_cliente, p.fecha_esperada, p.fecha_entrega FROM pedido p JOIN cliente c ON c.codigo_cliente = p.codigo_pedido WHERE p.fecha_entrega > p.fecha_esperada;

+---------------+----------------+----------------+---------------+
| codigo_pedido | codigo_cliente | fecha_esperada | fecha_entrega |
+---------------+----------------+----------------+---------------+
|            16 |             16 | 2009-01-07     | 2009-01-15    |
|            17 |             17 | 2009-01-09     | 2009-01-11    |
|            13 |             13 | 2009-01-14     | 2009-01-15    |
|             9 |              9 | 2008-12-27     | 2008-12-28    |
|            22 |             22 | 2009-01-11     | 2009-01-13    |
|            32 |             32 | 2007-01-19     | 2007-01-27    |
|            18 |             18 | 2009-01-06     | 2009-01-07    |
|            28 |             28 | 2009-02-17     | 2009-02-20    |
|            31 |             31 | 2008-09-30     | 2008-10-04    |
|            38 |             38 | 2009-03-06     | 2009-03-07    |
+---------------+----------------+----------------+---------------+
/* 
10. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de
entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha
esperada.
 Utilizando la función ADDDATE
 Utilizando la función DATEDIFF */

SELECT p.codigo_pedido, c.codigo_cliente, p.fecha_esperada, p.fecha_entrega FROM pedido p JOIN cliente c ON p.codigo_pedido = c.codigo_cliente WHERE DATEDIFF(p.fecha_esperada, p.fecha_entrega) >= 2;

+---------------+----------------+----------------+---------------+
| codigo_pedido | codigo_cliente | fecha_esperada | fecha_entrega |
+---------------+----------------+----------------+---------------+
|            30 |             30 | 2008-09-03     | 2008-08-31    |
|            36 |             36 | 2008-12-15     | 2008-12-10    |
|            24 |             24 | 2008-07-31     | 2008-07-25    |
+---------------+----------------+----------------+---------------+

SELECT p.codigo_pedido, c.codigo_cliente, p.fecha_esperada, p.fecha_entrega FROM pedido p JOIN cliente c ON p.codigo_pedido = c.codigo_cliente WHERE fecha_entrega <= ADDDATE(fecha_esperada, INTERVAL -2 DAY);

+---------------+----------------+----------------+---------------+
| codigo_pedido | codigo_cliente | fecha_esperada | fecha_entrega |
+---------------+----------------+----------------+---------------+
|            30 |             30 | 2008-09-03     | 2008-08-31    |
|            36 |             36 | 2008-12-15     | 2008-12-10    |
|            24 |             24 | 2008-07-31     | 2008-07-25    |
+---------------+----------------+----------------+---------------+


--CONSULTAS DE 20 A 40--

/* 1. Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus
representantes junto con la ciudad de la oficina a la que pertenece el representante. */

SELECT c.nombre_cliente, e.nombre AS nombre_representante, o.ciudad FROM cliente c JOIN empleado e ON c.codigo_empleado_rep_ventas = e.codigo_empleado JOIN oficina o  ON e.codigo_oficina = o.codigo_oficina WHERE c.codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);

+-----------------------------+----------------------+----------------------+
| nombre_cliente              | nombre_representante | ciudad               |
+-----------------------------+----------------------+----------------------+
| Club Golf Puerta del hierro | Emmanuel             | Barcelona            |
| DaraDistribuciones          | Emmanuel             | Barcelona            |
| Madrile?a de riegos         | Emmanuel             | Barcelona            |
| Americh Golf Management SL  | Jos? Manuel          | Barcelona            |
| Aloha                       | Jos? Manuel          | Barcelona            |
| El Prat                     | Jos? Manuel          | Barcelona            |
| Lasas S.A.                  | Mariano              | Madrid               |
| Lasas S.A.                  | Mariano              | Madrid               |
| france telecom              | Lionel               | Paris                |
| Mus?e du Louvre             | Lionel               | Paris                |
| Flores S.L.                 | Michael              | San Francisco        |
| The Magic Garden            | Michael              | San Francisco        |
| Naturajardin                | Julian               | Sydney               |
| Vivero Humanes              | Julian               | Sydney               |
| Campohermoso                | Julian               | Sydney               |
| Flowers, S.A                | Felipe               | Talavera de la Reina |
| Fuenla City                 | Felipe               | Talavera de la Reina |
| Top Campo                   | Felipe               | Talavera de la Reina |
+-----------------------------+----------------------+----------------------+

/* 2. Lista la dirección de las oficinas que tengan clientes en Fuenlabrada. */

SELECT c.region, o.linea_direccion1, o.linea_direccion2 FROM oficina o JOIN empleado e ON e.codigo_oficina = o.codigo_oficina JOIN cliente c ON c.codigo_empleado_rep_ventas = e.codigo_empleado WHERE c.region LIKE 'Fuenlabrada';

+-------------+-------------------+------------------+
| region      | linea_direccion1  | linea_direccion2 |
+-------------+-------------------+------------------+
| Fuenlabrada | 100 Market Street | Suite 300        |
+-------------+-------------------+------------------+

/* 3. Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la
oficina a la que pertenece el representante. */

SELECT c.nombre_cliente, e.nombre, o.ciudad FROM oficina o JOIN empleado e ON e.codigo_oficina = o.codigo_oficina JOIN cliente c ON c.codigo_empleado_rep_ventas = e.codigo_empleado;

+--------------------------------+-----------------+----------------------+
| nombre_cliente                 | nombre          | ciudad               |
+--------------------------------+-----------------+----------------------+
| Beragua                        | Emmanuel        | Barcelona            |
| Club Golf Puerta del hierro    | Emmanuel        | Barcelona            |
| Naturagua                      | Emmanuel        | Barcelona            |
| DaraDistribuciones             | Emmanuel        | Barcelona            |
| Madrile?a de riegos            | Emmanuel        | Barcelona            |
| Golf S.A.                      | Jos? Manuel     | Barcelona            |
| Americh Golf Management SL     | Jos? Manuel     | Barcelona            |
| Aloha                          | Jos? Manuel     | Barcelona            |
| El Prat                        | Jos? Manuel     | Barcelona            |
| Sotogrande                     | Jos? Manuel     | Barcelona            |
| Gerudo Valley                  | Lorena          | Boston               |
| Tendo Garden                   | Lorena          | Boston               |
| Lasas S.A.                     | Mariano         | Madrid               |
| Lasas S.A.                     | Mariano         | Madrid               |
| Camunas Jardines S.L.          | Mariano         | Madrid               |
| Dardena S.A.                   | Mariano         | Madrid               |
| Jardines y Mansiones Cactus SL | Lucio           | Madrid               |
| Jardiner?as Mat?as SL          | Lucio           | Madrid               |
| france telecom                 | Lionel          | Paris                |
| Mus?e du Louvre                | Lionel          | Paris                |
| Flores S.L.                    | Michael         | San Francisco        |
| The Magic Garden               | Michael         | San Francisco        |
| GoldFish Garden                | Walter Santiago | San Francisco        |
| Gardening Associates           | Walter Santiago | San Francisco        |
| Jardin de Flores               | Julian          | Sydney               |
| Naturajardin                   | Julian          | Sydney               |
| Vivero Humanes                 | Julian          | Sydney               |
| Agrojardin                     | Julian          | Sydney               |
| Campohermoso                   | Julian          | Sydney               |
| Tutifruti S.A                  | Mariko          | Sydney               |
| El Jardin Viviente S.L         | Mariko          | Sydney               |
| Flores Marivi                  | Felipe          | Talavera de la Reina |
| Flowers, S.A                   | Felipe          | Talavera de la Reina |
| Fuenla City                    | Felipe          | Talavera de la Reina |
| Top Campo                      | Felipe          | Talavera de la Reina |
| Jardineria Sara                | Felipe          | Talavera de la Reina |
+--------------------------------+-----------------+----------------------+

/* 4. Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes. */

SELECT e.nombre AS empleado, j.nombre AS jefe FROM empleado e LEFT JOIN empleado j ON e.codigo_jefe = j.codigo_empleado;

+-----------------+----------+
| empleado        | jefe     |
+-----------------+----------+
| Marcos          | NULL     |
| Ruben           | Marcos   |
| Alberto         | Ruben    |
| Maria           | Ruben    |
| Felipe          | Alberto  |
| Juan Carlos     | Alberto  |
| Carlos          | Alberto  |
| Mariano         | Carlos   |
| Lucio           | Carlos   |
| Hilario         | Carlos   |
| Emmanuel        | Alberto  |
| Jos? Manuel     | Emmanuel |
| David           | Emmanuel |
| Oscar           | Emmanuel |
| Francois        | Alberto  |
| Lionel          | Francois |
| Laurent         | Francois |
| Michael         | Alberto  |
| Walter Santiago | Michael  |
| Hilary          | Alberto  |
| Marcus          | Hilary   |
| Lorena          | Hilary   |
| Nei             | Alberto  |
| Narumi          | Nei      |
| Takuma          | Nei      |
| Amy             | Alberto  |
| Larry           | Amy      |
| John            | Amy      |
| Kevin           | Alberto  |
| Julian          | Kevin    |
| Mariko          | Kevin    |
+-----------------+----------+

/* 5. Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido. */

SELECT c.nombre_cliente, p.fecha_esperada, p.fecha_entrega FROM cliente c JOIN pedido p ON c.codigo_cliente = p.codigo_cliente WHERE p.fecha_entrega < p.fecha_esperada;

+--------------------------------+----------------+---------------+
| nombre_cliente                 | fecha_esperada | fecha_entrega |
+--------------------------------+----------------+---------------+
| GoldFish Garden                | 2009-01-31     | 2009-01-30    |
| Gardening Associates           | 2009-01-31     | 2009-01-30    |
| Tendo Garden                   | 2007-10-28     | 2007-10-26    |
| Beragua                        | 2009-01-12     | 2009-01-11    |
| Camunas Jardines S.L.          | 2008-09-03     | 2008-08-31    |
| Camunas Jardines S.L.          | 2008-11-15     | 2008-11-09    |
| Dardena S.A.                   | 2008-07-31     | 2008-07-25    |
| Dardena S.A.                   | 2008-12-15     | 2008-12-10    |
| Jardines y Mansiones Cactus SL | 2008-03-30     | 2008-03-29    |
| Jardiner?as Mat?as SL          | 2009-03-29     | 2009-03-27    |
| Jardiner?as Mat?as SL          | 2009-05-30     | 2009-05-17    |
| Tutifruti S.A                  | 2007-12-13     | 2007-12-10    |
+--------------------------------+----------------+---------------+

/* 6. Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente. */

SELECT DISTINCT c.nombre_cliente, g.gama
FROM cliente c 
JOIN pedido p ON c.codigo_cliente = p.codigo_cliente 
JOIN detalle_pedido d ON p.codigo_pedido = d.codigo_pedido
JOIN producto pdto ON d.codigo_producto = pdto.codigo_producto
JOIN gama_producto g ON pdto.gama = g.gama;

+--------------------------------+--------------+
| nombre_cliente                 | gama         |
+--------------------------------+--------------+
| GoldFish Garden                | Arom?ticas   |
| Golf S.A.                      | Arom?ticas   |
| Jardiner?as Mat?as SL          | Arom?ticas   |
| El Jardin Viviente S.L         | Arom?ticas   |
| Tendo Garden                   | Arom?ticas   |
| Camunas Jardines S.L.          | Arom?ticas   |
| Jardin de Flores               | Arom?ticas   |
| Flores Marivi                  | Arom?ticas   |
| Sotogrande                     | Arom?ticas   |
| Jardineria Sara                | Arom?ticas   |
| Dardena S.A.                   | Frutales     |
| Sotogrande                     | Frutales     |
| El Jardin Viviente S.L         | Frutales     |
| Tutifruti S.A                  | Frutales     |
| Beragua                        | Frutales     |
| Jardiner?as Mat?as SL          | Frutales     |
| Camunas Jardines S.L.          | Frutales     |
| Jardines y Mansiones Cactus SL | Frutales     |
| Gerudo Valley                  | Frutales     |
| GoldFish Garden                | Frutales     |
| Tendo Garden                   | Frutales     |
| Gardening Associates           | Frutales     |
| Agrojardin                     | Frutales     |
| Jardineria Sara                | Frutales     |
| Naturagua                      | Frutales     |
| Jardin de Flores               | Frutales     |
| Flores Marivi                  | Frutales     |
| Flores S.L.                    | Frutales     |
| Beragua                        | Herramientas |
| Naturagua                      | Herramientas |
| Gerudo Valley                  | Herramientas |
| Golf S.A.                      | Herramientas |
| Dardena S.A.                   | Herramientas |
| Jardiner?as Mat?as SL          | Herramientas |
| El Jardin Viviente S.L         | Herramientas |
| Jardin de Flores               | Herramientas |
| Flores Marivi                  | Herramientas |
| Jardineria Sara                | Herramientas |
| Beragua                        | Ornamentales |
| Gardening Associates           | Ornamentales |
| El Jardin Viviente S.L         | Ornamentales |
| Dardena S.A.                   | Ornamentales |
| Camunas Jardines S.L.          | Ornamentales |
| Tendo Garden                   | Ornamentales |
| Gerudo Valley                  | Ornamentales |
| Agrojardin                     | Ornamentales |
| Jardineria Sara                | Ornamentales |
| Tutifruti S.A                  | Ornamentales |
| Jardin de Flores               | Ornamentales |
| Flores Marivi                  | Ornamentales |
| Naturagua                      | Ornamentales |
| Jardines y Mansiones Cactus SL | Ornamentales |
| GoldFish Garden                | Ornamentales |
+--------------------------------+--------------+

/* 7. Devuelve un listado que muestre solamente a los clientes que no han realizado ningún pago. */

SELECT c.nombre_cliente FROM cliente c WHERE c.codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);

+-----------------------------+
| nombre_cliente              |
+-----------------------------+
| Lasas S.A.                  |
| Club Golf Puerta del hierro |
| DaraDistribuciones          |
| Madrile?a de riegos         |
| Lasas S.A.                  |
| Flowers, S.A                |
| Naturajardin                |
| Americh Golf Management SL  |
| Aloha                       |
| El Prat                     |
| Vivero Humanes              |
| Fuenla City                 |
| Top Campo                   |
| Campohermoso                |
| france telecom              |
| Mus?e du Louvre             |
| Flores S.L.                 |
| The Magic Garden            |
+-----------------------------+

/* 8. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido. */

SELECT c.nombre_cliente FROM cliente c WHERE c.codigo_cliente NOT IN (SELECT codigo_cliente FROM pedido);
+-----------------------------+
| nombre_cliente              |
+-----------------------------+
| Lasas S.A.                  |
| Club Golf Puerta del hierro |
| DaraDistribuciones          |
| Madrile?a de riegos         |
| Lasas S.A.                  |
| Flowers, S.A                |
| Naturajardin                |
| Americh Golf Management SL  |
| Aloha                       |
| El Prat                     |
| Vivero Humanes              |
| Fuenla City                 |
| Top Campo                   |
| Campohermoso                |
| france telecom              |
| Mus?e du Louvre             |
| The Magic Garden            |
+-----------------------------+

/* 9. Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido. */

SELECT c.nombre_cliente 

-- CONSULTAS DE 60 A 80 -----------------------------------------------------------------------------------------------------------
/* 1. Listar los nombres de los clientes que tienen asignado el representante Lorena Pauxton (suponiendo que no puede haber representantes con el mismo nombre). */

SELECT c.nombre_cliente FROM cliente c JOIN empleado e ON c.codigo_empleado_rep_ventas = e.codigo_empleado WHERE e.nombre LIKE 'Lorena' AND e.apellido1 LIKE 'Paxton';

+----------------+
| nombre_cliente |
+----------------+
| Gerudo Valley  |
| Tendo Garden   |
+----------------+

/* 21. Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor. */

SELECT c.nombre_cliente, fecha_pedido FROM cliente c JOIN pedido p ON c.codigo_cliente = p.codigo_cliente WHERE YEAR(p.fecha_pedido) = 2008 ORDER BY p.fecha_pedido ASC;

+--------------------------------+--------------+
| nombre_cliente                 | fecha_pedido |
+--------------------------------+--------------+
| Tutifruti S.A                  | 2008-01-04   |
| Flores S.L.                    | 2008-03-05   |
| Gerudo Valley                  | 2008-03-10   |
| Jardines y Mansiones Cactus SL | 2008-03-17   |
| Jardines y Mansiones Cactus SL | 2008-03-17   |
| Tutifruti S.A                  | 2008-03-20   |
| Tendo Garden                   | 2008-06-20   |
| El Jardin Viviente S.L         | 2008-06-28   |
| Jardines y Mansiones Cactus SL | 2008-07-12   |
| Dardena S.A.                   | 2008-07-14   |
| Dardena S.A.                   | 2008-08-01   |
| Camunas Jardines S.L.          | 2008-08-03   |
| El Jardin Viviente S.L         | 2008-08-25   |
| Camunas Jardines S.L.          | 2008-09-04   |
| Jardines y Mansiones Cactus SL | 2008-10-01   |
| Tutifruti S.A                  | 2008-10-08   |
| Dardena S.A.                   | 2008-10-15   |
| Camunas Jardines S.L.          | 2008-10-15   |
| Flores S.L.                    | 2008-10-28   |
| Gerudo Valley                  | 2008-11-03   |
| GoldFish Garden                | 2008-11-09   |
| GoldFish Garden                | 2008-11-09   |
| El Jardin Viviente S.L         | 2008-11-10   |
| Jardin de Flores               | 2008-11-15   |
| Flores S.L.                    | 2008-11-29   |
| Jardines y Mansiones Cactus SL | 2008-12-07   |
| Dardena S.A.                   | 2008-12-10   |
| Jardin de Flores               | 2008-12-15   |
| Camunas Jardines S.L.          | 2008-12-19   |
| GoldFish Garden                | 2008-12-22   |
| GoldFish Garden                | 2008-12-22   |
| Flores Marivi                  | 2008-12-28   |
| Flores Marivi                  | 2008-12-28   |
| Tendo Garden                   | 2008-12-30   |
+--------------------------------+--------------+

/* 20. Devuelve un listado de los productos que nunca han aparecido en un pedido. (Utilizar EXISTS y NOT EXISTS) */

SELECT prod.nombre FROM producto prod WHERE NOT EXISTS ( SELECT dp.codigo_pedido FROM detalle_pedido dp WHERE dp.codigo_producto = prod.codigo_producto );
+-------------------------------------------------------------+
| nombre                                                      |
+-------------------------------------------------------------+
| Olea-Olivos                                                 |
| Calamondin Mini                                             |
| Camelia Blanco, Chrysler Rojo, Soraya Naranja,              |
| Landora Amarillo, Rose Gaujard bicolor blanco-rojo          |
| Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte |
| Albaricoquero Corbato                                       |
| Albaricoquero Moniqui                                       |
| Albaricoquero Kurrot                                        |
| Cerezo Burlat                                               |
| Cerezo Picota                                               |
| Ciruelo R. Claudia Verde                                    |
| Ciruelo Golden Japan                                        |
| Ciruelo Claudia Negra                                       |
| Higuera Verdal                                              |
| Higuera Breva                                               |
| Melocotonero Spring Crest                                   |
| Melocotonero Federica                                       |
| Parra Uva de Mesa                                           |
| Mandarino -Plant?n joven                                    |
| Peral Castell                                               |
| Peral Williams                                              |
| Peral Conference                                            |
| Olivo Cipresino                                             |
| Albaricoquero                                               |
| Albaricoquero                                               |
| Albaricoquero                                               |
| Cerezo                                                      |
| Cerezo                                                      |
| Cerezo                                                      |
| Ciruelo                                                     |
| Granado                                                     |
| Granado                                                     |
| Granado                                                     |
| Higuera                                                     |
| Manzano                                                     |
| Melocotonero                                                |
| Melocotonero                                                |
| Melocotonero                                                |
| Membrillero                                                 |
| Membrillero                                                 |
| Membrillero                                                 |
| Membrillero                                                 |
| Arbustos Mix Maceta                                         |
| Mimosa Injerto CLASICA Dealbata                             |
| Mimosa Semilla Bayleyana                                    |
| Mimosa Semilla Espectabilis                                 |
| Mimosa Semilla Longifolia                                   |
| Mimosa Semilla Floribunda 4 estaciones                      |
| Abelia Floribunda                                           |
| Callistemom (Mix)                                           |
| Callistemom (Mix)                                           |
| Corylus Avellana "Contorta"                                 |
| Escallonia (Mix)                                            |
| Evonimus Emerald Gayeti                                     |
| Evonimus Pulchellus                                         |
| Hibiscus Syriacus  "Helene" -Blanco-C.rojo                  |
| Hibiscus Syriacus "Pink Giant" Rosa                         |
| Lonicera Nitida "Maigrum"                                   |
| Prunus pisardii                                             |
| Weigelia "Bristol Ruby"                                     |
| Leptospermum formado PIRAMIDE                               |
| Leptospermum COPA                                           |
| Nerium oleander-CALIDAD "GARDEN"                            |
| Nerium Oleander Arbusto GRANDE                              |
| Nerium oleander COPA  Calibre 6/8                           |
| ROSAL TREPADOR                                              |
| Camelia Blanco, Chrysler Rojo, Soraya Naranja,              |
| Solanum Jazminoide                                          |
| Wisteria Sinensis  azul, rosa, blanca                       |
| Wisteria Sinensis INJERTADAS DEC?                           |
| Bougamvillea Sanderiana Tutor                               |
| Bougamvillea Sanderiana Espaldera                           |
| Bougamvillea Sanderiana Espaldera                           |
| Bougamvillea Sanderiana, 3 tut. piramide                    |
| Expositor ?rboles clima mediterr?neo                        |
| Expositor ?rboles borde del mar                             |
| Brachychiton Acerifolius                                    |
| Cassia Corimbosa                                            |
| Cassia Corimbosa                                            |
| Chitalpa Summer Bells                                       |
| Erytrina Kafra                                              |
| Eucalyptus Citriodora                                       |
| Eucalyptus Ficifolia                                        |
| Hibiscus Syriacus  Var. Injertadas 1 Tallo                  |
| Lagunaria Patersonii                                        |
| Lagunaria Patersonii                                        |
| Morus Alba                                                  |
| Platanus Acerifolia                                         |
| Salix Babylonica  Pendula                                   |
| Tamarix  Ramosissima Pink Cascade                           |
| Tecoma Stands                                               |
| Tecoma Stands                                               |
| Tipuana Tipu                                                |
| Pleioblastus distichus-Bamb? enano                          |
| Sasa palmata                                                |
| Phylostachys aurea                                          |
| Phylostachys aurea                                          |
| Phylostachys Bambusa Spectabilis                            |
| Phylostachys biseti                                         |
| Pseudosasa japonica (Metake)                                |
| Pseudosasa japonica (Metake)                                |
| Cedrus Deodara "Feeling Blue" Novedad                       |
| Juniperus chinensis "Blue Alps"                             |
| Juniperus Chinensis Stricta                                 |
| Juniperus squamata "Blue Star"                              |
| Juniperus x media Phitzeriana verde                         |
| Bismarckia Nobilis                                          |
| Brahea Armata                                               |
| Brahea Edulis                                               |
| Butia Capitata                                              |
| Butia Capitata                                              |
| Butia Capitata                                              |
| Chamaerops Humilis                                          |
| Chamaerops Humilis                                          |
| Chamaerops Humilis "Cerifera"                               |
| Chrysalidocarpus Lutescens -ARECA                           |
| Cordyline Australis -DRACAENA                               |
| Cycas Revoluta                                              |
| Cycas Revoluta                                              |
| Dracaena Drago                                              |
| Dracaena Drago                                              |
| Livistonia Decipiens                                        |
| Livistonia Decipiens                                        |
| Rhaphis Excelsa                                             |
| Sabal Minor                                                 |
| Sabal Minor                                                 |
| Trachycarpus Fortunei                                       |
| Washingtonia Robusta                                        |
| Zamia Furfuracaea                                           |
+-------------------------------------------------------------+

/* 19. Devuelve un listado que muestre solamente a los clientes que sí han realizado algún pago.(Utilizar EXISTS y NOT EXISTS) */
SELECT c.nombre_cliente FROM cliente c WHERE EXISTS ( SELECT  ) 

SELECT prod.nombre FROM producto prod WHERE NOT EXISTS ( SELECT dp.codigo_pedido FROM detalle_pedido dp WHERE dp.codigo_producto = prod.codigo_producto );
