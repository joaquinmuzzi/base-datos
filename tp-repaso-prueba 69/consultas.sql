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
| Mousepad           |
| cable              |
+--------------------+ 
 
2) SELECT a.nombre AS 'Nombre', a.precio AS 'Precio' FROM articulos a;A

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
| Mousepad    |     1000.00 |
| cable       |     1500.00 |
+-------------+-------------+

3) SELECT a.nombre, a.precio FROM articulos a WHERE a.precio < 200000;
+-------------+----------+
| nombre      | precio   |
+-------------+----------+
| Computadora | 29000.00 |
| Teclado     | 38000.00 |
| Auriculares | 67777.00 |
| Netbook     | 56785.00 |
| Monitor     |  2345.00 |
| Mousepad    |  1000.00 |
| cable       |  1500.00 |
+-------------+----------+

4) SELECT a.nombre, a.precio FROM articulos a WHERE a.precio BETWEEN 60000 AND 1200000;
+-------------+-----------+
| nombre      | precio    |
+-------------+-----------+
| Auriculares |  67777.00 |
| Notebook    | 567865.00 |
+-------------+-----------+

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
|          0.714286 | Mousepad    |
|          1.071429 | cable       |
+-------------------+-------------+

6) SELECT AVG(articulos.precio) AS Promedio FROM articulos;
+-----------------+
| Promedio        |
+-----------------+
| 18767530.816364 |
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
| Computadora        |    29000.00 |          1 | Asus                 |
| Teclado            |    38000.00 |          2 | Lenovo               |
| Auriculares        |    67777.00 |          3 | HP                   |
| Mouse              | 99999999.99 |          4 | Apple                |
| Celular            |  5678567.00 |          5 | Acer                 |
| Notebook           |   567865.00 |          6 | Toshiba              |
| Netbook            |    56785.00 |          7 | Samsung              |
| Disco duro         | 99999999.99 |          8 | DELL                 |
| Monitor            |     2345.00 |          9 | EXO                  |
| Mousepad           |     1000.00 |         10 | MSI                  |
| cable              |     1500.00 |          2 | Lenovo               |
+--------------------+-------------+------------+----------------------+

SELECT a.nombre AS 'nombre de articulo', a.precio, f.codigo AS fabricante, f.nombre AS 'nombre de fabricante' FROM articulos a INNER JOIN fabricantes f ON a.fabricante = f.codigo;
+--------------------+-------------+------------+----------------------+
| nombre de articulo | precio      | fabricante | nombre de fabricante |
+--------------------+-------------+------------+----------------------+
| Computadora        |    29000.00 |          1 | Asus                 |
| Teclado            |    38000.00 |          2 | Lenovo               |
| Auriculares        |    67777.00 |          3 | HP                   |
| Mouse              | 99999999.99 |          4 | Apple                |
| Celular            |  5678567.00 |          5 | Acer                 |
| Notebook           |   567865.00 |          6 | Toshiba              |
| Netbook            |    56785.00 |          7 | Samsung              |
| Disco duro         | 99999999.99 |          8 | DELL                 |
| Monitor            |     2345.00 |          9 | EXO                  |
| Mousepad           |     1000.00 |         10 | MSI                  |
| cable              |     1500.00 |          2 | Lenovo               |
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
| Mousepad    |     1000.00 |         10 |
| cable       |     1500.00 |          2 |
+-------------+-------------+------------+

12) SELECT f.nombre, AVG(a.precio) AS promedio FROM articulos a, fabricantes f WHERE a.fabricante = f.codigo GROUP BY f.nombre;
+---------+-----------------+
| nombre  | promedio        |
+---------+-----------------+
| Acer    |  5678567.000000 |
| Apple   | 99999999.990000 |
| Asus    |    29000.000000 |
| DELL    | 99999999.990000 |
| EXO     |     2345.000000 |
| HP      |    67777.000000 |
| Lenovo  |    19750.000000 |
| MSI     |     1000.000000 |
| Samsung |    56785.000000 |
| Toshiba |   567865.000000 |
+---------+-----------------+

13) SELECT f.nombre, AVG(a.precio) AS promedio FROM articulos a, fabricantes f WHERE a.fabricante = f.codigo GROUP BY f.nombre HAVING AVG(a.precio) > 150000;
+---------+-----------------+
| nombre  | promedio        |
+---------+-----------------+
| Acer    |  5678567.000000 |
| Apple   | 99999999.990000 |
| DELL    | 99999999.990000 |
| Toshiba |   567865.000000 |
+---------+-----------------+

14) SELECT articulos.nombre, MIN(articulos.precio) AS precio FROM articulos;
+-------------+---------+
| nombre      | precio  |
+-------------+---------+
| Computadora | 1000.00 |
+-------------+---------+

  SELECT nombre, precio FROM articulos WHERE precio = (SELECT min(precio) FROM articulos);
+----------+---------+
| nombre   | precio  |
+----------+---------+
| Mousepad | 1000.00 |
+----------+---------+

15) INSERT INTO articulos (nombre, precio, fabricante) VALUES( 'Parlantes' , '70000.00', '2');
Query OK, 1 row affected (0.003 sec)

16) UPDATE articulos SET nombre = 'Impresora Laser' WHERE codigo = 8;
Query OK, 1 row affected (0.005 sec)
Rows matched: 1  Changed: 1  Warnings: 0

--17. Aplicar un descuento de 10 % a todos los productos cuyo precio sea mayor o igual a 200000$
17) SELECT nombre, (precio * 0.9) AS 'Precio con descuento' FROM articulos WHERE precio >= 200000; 
+-----------------+----------------------+
| nombre          | Precio con descuento |
+-----------------+----------------------+
| Mouse           |          89999999.99 |
| Celular         |           5110710.30 |
| Notebook        |            511078.50 |
| Impresora Laser |          89999999.99 |
+-----------------+----------------------+