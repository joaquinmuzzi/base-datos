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
