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

SELECT p.codigo_pedido, p.codigo_cliente, p.fecha_esperada, p.fecha_entrega FROM pedido p WHERE DATEDIFF(p.fecha_esperada, p.fecha_entrega) >= 2;

+---------------+----------------+----------------+---------------+
| codigo_pedido | codigo_cliente | fecha_esperada | fecha_entrega |
+---------------+----------------+----------------+---------------+
|             2 |              5 | 2007-10-28     | 2007-10-26    |
|            24 |             14 | 2008-07-31     | 2008-07-25    |
|            30 |             13 | 2008-09-03     | 2008-08-31    |
|            36 |             14 | 2008-12-15     | 2008-12-10    |
|            53 |             13 | 2008-11-15     | 2008-11-09    |
|            89 |             35 | 2007-12-13     | 2007-12-10    |
|            91 |             27 | 2009-03-29     | 2009-03-27    |
|            93 |             27 | 2009-05-30     | 2009-05-17    |
+---------------+----------------+----------------+---------------+

SELECT p.codigo_pedido, p.codigo_cliente, p.fecha_esperada, p.fecha_entrega FROM pedido p WHERE fecha_entrega <= ADDDATE(fecha_esperada, -2);
+---------------+----------------+----------------+---------------+
| codigo_pedido | codigo_cliente | fecha_esperada | fecha_entrega |
+---------------+----------------+----------------+---------------+
|             2 |              5 | 2007-10-28     | 2007-10-26    |
|            24 |             14 | 2008-07-31     | 2008-07-25    |
|            30 |             13 | 2008-09-03     | 2008-08-31    |
|            36 |             14 | 2008-12-15     | 2008-12-10    |
|            53 |             13 | 2008-11-15     | 2008-11-09    |
|            89 |             35 | 2007-12-13     | 2007-12-10    |
|            91 |             27 | 2009-03-29     | 2009-03-27    |
|            93 |             27 | 2009-05-30     | 2009-05-17    |
+---------------+----------------+----------------+---------------+


/* 11. Devuelve un listado de todos los pedidos que fueron rechazados en 2009. */
SELECT p.codigo_pedido, p.estado, p.fecha_entrega FROM pedido p WHERE YEAR(p.fecha_entrega) = 2009 AND p.estado LIKE 'rechazado';

+---------------+-----------+---------------+
| codigo_pedido | estado    | fecha_entrega |
+---------------+-----------+---------------+
|            21 | Rechazado | 2009-01-09    |
|            40 | Rechazado | 2009-03-13    |
|            46 | Rechazado | 2009-03-05    |
|           113 | Rechazado | 2009-01-09    |
+---------------+-----------+---------------+

/* 12. Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año */

SELECT codigo_pedido, fecha_entrega FROM pedido WHERE MONTH(fecha_entrega) = 1;

+---------------+---------------+
| codigo_pedido | fecha_entrega |
+---------------+---------------+
|             1 | 2006-01-19    |
|            13 | 2009-01-15    |
|            15 | 2009-01-11    |
|            16 | 2009-01-15    |
|            17 | 2009-01-11    |
|            18 | 2009-01-07    |
|            21 | 2009-01-09    |
|            22 | 2009-01-13    |
|            32 | 2007-01-27    |
|            55 | 2009-01-11    |
|            58 | 2009-01-30    |
|            64 | 2009-01-30    |
|            75 | 2009-01-13    |
|            79 | 2009-01-13    |
|            82 | 2009-01-29    |
|            95 | 2008-01-19    |
|           100 | 2009-01-15    |
|           102 | 2009-01-08    |
|           103 | 2009-01-24    |
|           113 | 2009-01-09    |
|           114 | 2009-01-31    |
|           119 | 2009-01-15    |
|           121 | 2009-01-08    |
|           123 | 2009-01-24    |
+---------------+---------------+

/* 13. Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor */

SELECT codigo_cliente, YEAR(fecha_pago) FROM pago WHERE DATE_FORMAT(fecha_pago, '%Y') = 2008 ORDER BY fecha_pago DESC; 
+----------------+------------------+
| codigo_cliente | YEAR(fecha_pago) |
+----------------+------------------+
|              1 |             2008 |
|              1 |             2008 |
|             13 |             2008 |
|             14 |             2008 |
|             26 |             2008 |
+----------------+------------------+

/* 14. Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas. */

SELECT DISTINCT forma_pago FROM pago;

+---------------+
| forma_pago    |
+---------------+
| PayPal        |
| Transferencia |
| Cheque        |
+---------------+

/* 15. Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio */

SELECT prod.codigo_producto, prod.gama FROM producto prod WHERE prod.gama LIKE 'Ornamentales' AND prod.cantidad_en_stock > 100 ORDER BY prod.precio_venta DESC;

+-----------------------------+-----------------+--------+
| nombre_cliente              | codigo_empleado | region |
+-----------------------------+-----------------+--------+
| Beragua                     |              11 | Madrid |
| Club Golf Puerta del hierro |              11 | Madrid |
| Naturagua                   |              11 | Madrid |
| DaraDistribuciones          |              11 | Madrid |
| Madrile?a de riegos         |              11 | Madrid |
| Jardin de Flores            |              30 | Madrid |
| Naturajardin                |              30 | Madrid |
| Vivero Humanes              |              30 | Madrid |
| Agrojardin                  |              30 | Madrid |
| Campohermoso                |              30 | Madrid |
+-----------------------------+-----------------+--------+

/* 16. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30. */

SELECT c.codigo_cliente FROM cliente c WHERE c.region LIKE ''