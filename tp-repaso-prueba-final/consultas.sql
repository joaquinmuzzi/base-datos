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