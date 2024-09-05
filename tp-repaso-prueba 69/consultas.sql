1) SELECT articulos.nombre AS 'Nombre de articulo' FROM articulos;
+--------------------+
| Nombre de articulo |
+--------------------+
| Computadora        |
| Teclado            |
| Auriculares        |
| Mouse              |
| Celular            |
| Notebook           |
| Netbook            |
| Disco duro         |
| Monitor            |
+--------------------+

2) SELECT a.nombre AS 'Nombre', a.precio AS 'Precio' FROM articulos a;
+-------------+-------------+
| Nombre      | Precio      |
+-------------+-------------+
| Computadora |    29000.00 |
| Teclado     |    38000.00 |
| Auriculares |    67777.00 |
| Mouse       | 99999999.99 |
| Celular     |  5678567.00 |
| Notebook    |   567865.00 |
| Netbook     |    56785.00 |
| Disco duro  | 99999999.99 |
| Monitor     |     2345.00 |
+-------------+-------------+

3) SELECT a.precio FROM articulos a WHERE a.precio < 200000;
+----------+
| precio   |
+----------+
| 29000.00 |
| 38000.00 |
| 67777.00 |
| 56785.00 |
|  2345.00 |
+----------+

4) SELECT a.precio FROM articulos a WHERE a.precio BETWEEN 60000 AND 1200000;
+-----------+
| precio    |
+-----------+
|  67777.00 |
| 567865.00 |
+-----------+

5) SELECT (a.precio / 1400) AS 'Precio en dolares', a.nombre AS 'Nombre' FROM articulos a;
+-------------------+-------------+
| Precio en dolares | Nombre      |
+-------------------+-------------+
|         20.714286 | Computadora |
|         27.142857 | Teclado     |
|         48.412143 | Auriculares |
|      71428.571421 | Mouse       |
|       4056.119286 | Celular     |
|        405.617857 | Notebook    |
|         40.560714 | Netbook     |
|      71428.571421 | Disco duro  |
|          1.675000 | Monitor     |
+-------------------+-------------+

6) SELECT AVG(articulos.precio) AS Promedio FROM articulos;
+-----------------+
| Promedio        |
+-----------------+
| 22937815.442222 |
+-----------------+

7) SELECT AVG(articulos.precio) AS Promedio FROM articulos WHERE articulos.fabricante = 2;
+--------------+
| Promedio     |
+--------------+
| 19750.000000 |
+--------------+

8) SELECT a.precio FROM articulos a WHERE a.precio >= 180000;
+-------------+
| precio      |
+-------------+
| 99999999.99 |
|  5678567.00 |
|   567865.00 |
| 99999999.99 |
+-------------+

9) SELECT a.precio, a.nombre FROM articulos a WHERE a.precio >= 180000 ORDER BY a.precio DESC, a.nombre ASC;
+-------------+------------+
| precio      | nombre     |
+-------------+------------+
| 99999999.99 | Disco duro |
| 99999999.99 | Mouse      |
|  5678567.00 | Celular    |
|   567865.00 | Notebook   |
+-------------+------------+

10) SELECT a.nombre AS 'nombre de articulo', a.precio, f.codigo AS fabricante, f.nombre AS 'nombre de fabricante' FROM articulos a, fabricantes f WHERE a.fabricante = f.codigo;
+--------------------+-------------+------------+----------------------+
| nombre de articulo | precio      | fabricante | nombre de fabricante |
+--------------------+-------------+------------+----------------------+
| Computadora        |    29000.00 |          1 | Lenovo               |
| Teclado            |    38000.00 |          2 | HP                   |
| Auriculares        |    67777.00 |          3 | Apple                |
| Mouse              | 99999999.99 |          4 | Acer                 |
| Celular            |  5678567.00 |          5 | Toshiba              |
| Notebook           |   567865.00 |          6 | Samsung              |
| Netbook            |    56785.00 |          7 | DELL                 |
| Disco duro         | 99999999.99 |          8 | EXO                  |
| Monitor            |     2345.00 |          9 | MSI                  |
| cable              |     1500.00 |          2 | HP                   |
+--------------------+-------------+------------+----------------------+

SELECT a.nombre AS 'nombre de articulo', a.precio, f.codigo AS fabricante, f.nombre AS 'nombre de fabricante' FROM articulos a INNER JOIN fabricantes f ON a.fabricante = f.codigo;
+--------------------+-------------+------------+----------------------+
| nombre de articulo | precio      | fabricante | nombre de fabricante |
+--------------------+-------------+------------+----------------------+
| Computadora        |    29000.00 |          1 | Lenovo               |
| Teclado            |    38000.00 |          2 | HP                   |
| Auriculares        |    67777.00 |          3 | Apple                |
| Mouse              | 99999999.99 |          4 | Acer                 |
| Celular            |  5678567.00 |          5 | Toshiba              |
| Notebook           |   567865.00 |          6 | Samsung              |
| Netbook            |    56785.00 |          7 | DELL                 |
| Disco duro         | 99999999.99 |          8 | EXO                  |
| Monitor            |     2345.00 |          9 | MSI                  |
| cable              |     1500.00 |          2 | HP                   |
+--------------------+-------------+------------+----------------------+

11) SELECT a.nombre, a.precio, a.fabricante FROM articulos a;
+-------------+-------------+------------+
| nombre      | precio      | fabricante |
+-------------+-------------+------------+
| Computadora |    29000.00 |          1 |
| Teclado     |    38000.00 |          2 |
| Auriculares |    67777.00 |          3 |
| Mouse       | 99999999.99 |          4 |
| Celular     |  5678567.00 |          5 |
| Notebook    |   567865.00 |          6 |
| Netbook     |    56785.00 |          7 |
| Disco duro  | 99999999.99 |          8 |
| Monitor     |     2345.00 |          9 |
| cable       |     1500.00 |          2 |
+-------------+-------------+------------+

12) SELECT f.nombre, AVG(a.precio) AS promedio FROM articulos a, fabricantes f WHERE a.fabricante = f.codigo GROUP BY f.nombre;
+---------+-----------------+
| nombre  | promedio        |
+---------+-----------------+
| Acer    | 99999999.990000 |
| Apple   |    67777.000000 |
| DELL    |    56785.000000 |
| EXO     | 99999999.990000 |
| HP      |    19750.000000 |
| Lenovo  |    29000.000000 |
| MSI     |     2345.000000 |
| Samsung |   567865.000000 |
| Toshiba |  5678567.000000 |
+---------+-----------------+

13)
SELECT f.nombre FROM articulos a, fabricantes f WHERE a.fabricante = f.codigo GROUP BY f.nombre HAVING AVG();