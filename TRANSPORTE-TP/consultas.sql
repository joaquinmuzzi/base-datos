--Valeria: 10 consultas de operadores (2 de cada uno: LIKE, IS NULL, NOT IN, IN, BETWEEN y 1 de funciones de fechas y 1 INNER JOIN).
--Sofía  : 10 consultas (1 de funciones de fechas, 2 de GROUP BY, 2 de HAVING, 2 de ORDER BY y 1 INNER JOIN).
--Muzzi  : 10 consultas (2 de cada uno: COUNT, SUM, MAX/MIN, AVG; 2 de subconsultas).

-- VALERIA -- 

-- LIKE
1. Mostrar el nombre y el número de sube de los pasajeros que su nombre empiece por 'J'.
    SELECT Nombre_titular_sube, nro_sube FROM pasajeros WHERE Nombre_titular_sube LIKE 'J%'
+---------------------+------------+
| Nombre_titular_sube | nro_sube   |
+---------------------+------------+
| Juan Perez          | 1000000001 |
| Jorge Gonzalez      | 1000000009 |
+---------------------+------------+

2. Mostrar el nombre y el CUIL de los choferes que su nombre termine en 'z'.

    SELECT nombre_choferes, CUIL_choferes FROM choferes WHERE nombre_choferes LIKE '%z';
+------------------+---------------+
| nombre_choferes  | CUIL_choferes | 
+------------------+---------------+
| Juan Perez       |    2032012345 | er
| Maria Lopez      |    2043206789 | DKJS
| Pedro Fernandez  |    2038012378 |
| Ana Martinez     |    2038098765 |
| Laura Gonzalez   |    2054356789 |
| Ricardo Diaz     |    2067890123 |
+------------------+---------------+

-- IS NULL
1.Seleccionar el nombre del area de finanzas que no tiene telefono registrado.

    SELECT nombre_area  FROM area_finanzas WHERE telefono IS NULL;

+------------------------+
| nombre_area            |
+------------------------+
| Cobranza y Recaudacion |
| Planeacion Financiera  |
+------------------------+

 2.Seleccionar el número de boleto y su valor de aquellos que no tienen subsidio.

    SELECT nro_boleto, valor_boleto FROM boletos WHERE subsidio IS NULL;

 +------------+--------------+
| nro_boleto | valor_boleto |
+------------+--------------+
|     100003 |        60.00 |
|     100004 |        55.00 |
|     100007 |        65.00 |
|     100012 |        60.00 |
|     100014 |        58.00 |
|     100016 |        54.00 |
|     100017 |        56.00 |
|     100019 |        59.00 |
|     100020 |        64.00 |
|     100022 |        63.00 |
|     100023 |        49.00 |
|     100025 |        48.00 |
|     200001 |        50.00 |
|     200002 |        45.00 |
|     200004 |        46.00 |
|     200005 |        70.00 |
|     200007 |        45.00 |
|     200009 |        55.00 |
+------------+--------------+

--NOT IN 
1. Seleccionar los nombres de las empresas que no tienes el area financiera "Contabilidad".
  
    SELECT nombre_empresa FROM empresas WHERE area_finanzas NOT IN ('Contabilidad');

+----------------------------------+
| nombre_empresa                   |
+----------------------------------+
| Empresa Nueve de Julio S.A.T.    |
| Grupo de Transporte DOTA         |
| Transportes Unidos de Merlo S.A. |
| Union Platense S.R.L.            |
| Micro Omnibus Tigre S.A.         |
| Rutatlantica S.A.                |
| 13 de Noviembre S.A.             |
| Micro Omnibus Quilmes S.A.       |
| Platabus S.A.                    |
+----------------------------------+

2. Seleccionar los nombre de los choferes y sus empresas que no están asosiados a la empresa "Rutatlantica S.A" .

   SELECT nombre_choferes, empresa_choferes FROM choferes WHERE empresa_choferes NOT IN ('Rutatlantica S.A.');

+------------------+----------------------------------+
| nombre_choferes  | empresa_choferes                 |
+------------------+----------------------------------+
| Silvia Romero    | 13 de Noviembre S.A.             |
| Juan Perez       | Transporte La Union S.A.         |
| Carlos Garcia    | Union Platense S.R.L.            |
| Maria Lopez      | Platabus S.A.                    |
| Pedro Fernandez  | Micro Omnibus Tigre S.A.         |
| Ana Martinez     | Empresa Nueve de Julio S.A.T.    |
| Laura Gonzalez   | Grupo de Transporte DOTA         |
| Ricardo Diaz     | Transportes Unidos de Merlo S.A. |
| Jorge Silva      | Micro Omnibus Quilmes S.A.       |
+------------------+----------------------------------+

--IN

1.Mostar las lineas y el año de inicio de las empresas "Platabus S.A." O "Union Platense S.R.L".

    SELECT nro_linea, anio_inicio FROM lineas WHERE empresa IN ('Platabus S.A.', 'Union Platense S.R.L.');

+-----------+-------------+
| nro_linea | anio_inicio |
+-----------+-------------+
|        89 |        2000 |
|       146 |        1999 |
+-----------+-------------+

2.Seleccionar el nombre del area de finanzas que  tiene relacion con algún recibo de sueldo.
 
    SELECT nombre_area FROM recibo_sueldo WHERE nombre_area IN (SELECT nombre_area FROM area_finanzas);

+------------------------+
| nombre_area            |
+------------------------+
| Auditoria              |
| Cobranza y Recaudacion |
| Contabilidad           |
| Facturacion            |
| Impuestos              |
| Pagos y Obligaciones   |
| Planeacion Financiera  |
| Presupuesto            |
| Proveedores            |
| Tesoreria              |
+------------------------+

--BETWEEN
1.Mostrar  los numeros de recibo y el sueldo neto de aquellos con un sueldo neto entre 35000 y 50000.
  SELECT nro_recibo, sueldo_neto FROM recibo_sueldo WHERE sueldo_neto BETWEEN 35000.00 AND 50000.00;

+------------+-------------+
| nro_recibo | sueldo_neto |
+------------+-------------+
|   10000003 |    40500.00 |
|   10000004 |    45000.00 |
|   10000007 |    37800.00 |
|   10000008 |    35100.00 |
|   20000002 |    36000.00 |
+------------+-------------+

2.Seleccionar el numero de boleto y el valor de aquellos boletos cuyo valor esté entre 40 y 60 pesos.

  SELECT nro_boleto, valor_boleto FROM boletos WHERE valor_boleto BETWEEN 40.00 AND 60.00;
+------------+--------------+
| nro_boleto | valor_boleto |
+------------+--------------+
|     100003 |        60.00 |
|     100004 |        55.00 |
|     100008 |        50.00 |
|     100012 |        60.00 |
|     100014 |        58.00 |
|     100016 |        54.00 |
|     100017 |        56.00 |
|     100018 |        57.00 |
|     100019 |        59.00 |
|     100023 |        49.00 |
|     100024 |        51.50 |
|     100025 |        48.00 |
|     200001 |        50.00 |
|     200002 |        45.00 |
|     200003 |        47.50 |
|     200004 |        46.00 |
|     200006 |        40.00 |
|     200007 |        45.00 |
|     200008 |        42.50 |
|     200009 |        55.00 |
+------------+--------------+


  --Función Fecha

  1.Seleccionar el nombrey  la fecha de creacion de las empresas creadas en los ultimos 10 años
  SELECT nombre_empresa, fecha_creacion FROM empresas WHERE fecha_creacion >= DATE_SUB(CURDATE(), INTERVAL 10 YEAR);

+----------------------------------+----------------+
| nombre_empresa                   | fecha_creacion |
+----------------------------------+----------------+
| 13 de Noviembre S.A.             | 2019-04-18     |
| Empresa Nueve de Julio S.A.T.    | 2015-11-05     |
| Micro Omnibus Quilmes S.A.       | 2017-09-25     |
| Rutatlantica S.A.                | 2020-06-15     |
| Transportes Unidos de Merlo S.A. | 2016-01-12     |
+----------------------------------+----------------+


-- INNER JOIN

1.Obtener el nombre del chofer y la empresa donde trabaja, uniendo las tablas choferes y empresas.

  SELECT c.nombre_choferes, e.nombre_empresa FROM choferes c INNER JOIN empresas e ON c.empresa_choferes = e.nombre_empresa;

+------------------+----------------------------------+
| nombre_choferes  | nombre_empresa                   |
+------------------+----------------------------------+
| Silvia Romero    | 13 de Noviembre S.A.             |
| Juan Perez       | Transporte La Union S.A.         |
| Carlos Garcia    | Union Platense S.R.L.            |
| Maria Lopez      | Platabus S.A.                    |
| Pedro Fernandez  | Micro Omnibus Tigre S.A.         |
| Ana Martinez     | Empresa Nueve de Julio S.A.T.    |
| Laura Gonzalez   | Grupo de Transporte DOTA         |
| Ricardo Diaz     | Transportes Unidos de Merlo S.A. |
| Jorge Silva      | Micro Omnibus Quilmes S.A.       |
| Claudia Castro   | Rutatlantica S.A.                |
+------------------+----------------------------------+


-- SOFIA --

1. Contar la cantidad de boletos estudiantiles emitidos en el año actual

SELECT COUNT(*) AS boletos_estudiantiles
FROM boletos
WHERE estudiantil = TRUE AND YEAR(fecha) = YEAR(CURDATE());

+-----------------------+
| boletos_estudiantiles |
+-----------------------+
|                     7 |
+-----------------------+

2. Calcular el total de boletos vendidos por cada linea 

SELECT linea, COUNT(nro_boleto) AS total_boletos
FROM boletos
GROUP BY linea;

+-------+---------------+
| linea | total_boletos |
+-------+---------------+
|     1 |             1 |
|     4 |             1 |
|    11 |             4 |
|    13 |             3 |
|    45 |             1 |
|    54 |             1 |
|    57 |             4 |
|    89 |             3 |
|    92 |             5 |
|   146 |             5 |
+-------+---------------+

3. Ingresos totales y promedio del valor del boleto por linea 

SELECT linea, SUM(valor_boleto) AS ingresos_totales, AVG(valor_boleto)
FROM boletos
GROUP BY linea;

+-------+------------------+-------------------+
| linea | ingresos_totales | AVG(valor_boleto) |
+-------+------------------+-------------------+
|     1 |            75.00 |         75.000000 |
|     4 |            55.00 |         55.000000 |
|    11 |           198.50 |         49.625000 |
|    13 |           127.50 |         42.500000 |
|    45 |            50.00 |         50.000000 |
|    54 |            70.00 |         70.000000 |
|    57 |           258.50 |         64.625000 |
|    89 |           138.50 |         46.166667 |
|    92 |           281.00 |         56.200000 |
|   146 |           301.50 |         60.300000 |
+-------+------------------+-------------------+

4. Empresas donde el sueldo neto promedio de los choferes es superior a $50000

SELECT e.nombre_empresa AS empresa_choferes, AVG(r.sueldo_neto) AS promedio_sueldo
FROM recibo_sueldo r
JOIN choferes c ON r.DNI_choferes = c.dni_choferes
JOIN empresas e ON c.empresa_choferes = e.nombre_empresa
GROUP BY e.nombre_empresa
HAVING AVG(r.sueldo_neto) > 50000;

+--------------------------+-----------------+
| empresa_choferes         | promedio_sueldo |
+--------------------------+-----------------+
| Micro Omnibus Tigre S.A. |    54000.000000 |
| Rutatlantica S.A.        |    99999.990000 |
+--------------------------+-----------------+

5. Nombre de los empleados cuyo sueldo neto promedio es mayor a $35000

SELECT c.nombre_choferes AS nombre_empleado, r.sueldo_neto
FROM recibo_sueldo r
JOIN choferes c ON r.DNI_choferes = c.dni_choferes
GROUP BY c.dni_choferes, c.nombre_choferes
HAVING r.sueldo_neto > 35000;

+------------------+-------------+
| nombre_empleado  | sueldo_neto |
+------------------+-------------+
| Silvia Romero    |    35100.00 |
| Carlos Garcia   |    40500.00 |
| Maria Lopez     |    36000.00 |
| Pedro Fernandez |    54000.00 |
| Ana Martinez    |    45000.00 |
| Ricardo Diaz    |    37800.00 |
| Claudia Castro   |    99999.99 |
+------------------+-------------+

6. Lista de boletos ordenados por valor de mayor a menor 

SELECT nro_boleto, valor_boleto
FROM boletos
ORDER BY valor_boleto DESC;

+------------+--------------+
| nro_boleto | valor_boleto |
+------------+--------------+
|     200010 |        75.00 |
|     200005 |        70.00 |
|     100021 |        66.50 |
|     100007 |        65.00 |
|     100020 |        64.00 |
|     100022 |        63.00 |
|     100013 |        62.50 |
|     100015 |        61.00 |
|     100003 |        60.00 |
|     100012 |        60.00 |
|     100019 |        59.00 |
|     100014 |        58.00 |
|     100018 |        57.00 |
|     100017 |        56.00 |
|     200009 |        55.00 |
|     100004 |        55.00 |
|     100016 |        54.00 |
|     100024 |        51.50 |
|     100008 |        50.00 |
|     200001 |        50.00 |
|     100023 |        49.00 |
|     100025 |        48.00 |
|     200003 |        47.50 |
|     200004 |        46.00 |
|     200007 |        45.00 |
|     200002 |        45.00 |
|     200008 |        42.50 |
|     200006 |        40.00 |
+------------+--------------+

7. Lista de choferes ordenados por el número de horas semanales trabajadas, de menor a mayor

SELECT nombre_choferes, DNI_choferes, horas_semanales
FROM choferes
ORDER BY horas_semanales ASC;

+------------------+--------------+-----------------+
| nombre_choferes  | DNI_choferes | horas_semanales |
+------------------+--------------+-----------------+
| Ana Martinez     |     38098765 |              20 |
| Laura Gonzalez   |     54356789 |              25 |
| Jorge Silva      |     87654321 |              28 |
| Maria Lopez      |     32067891 |              30 |
| Silvia Romero    |     23456789 |              32 |
| Carlos Garcia    |     32023456 |              35 |
| Ricardo Diaz     |     67890123 |              38 |
| Juan Perez       |     32012345 |              40 |
| Pedro Fernandez  |     38012378 |              45 |
| Claudia Castro   |     98765432 |              50 |
+------------------+--------------+-----------------+

8. Mostrar el nombre del chofer, el numero de su recibo de sueldo y los detalles del recibo, brindando informacion sobre la empresa para la que trabaja el chofer y el area de finanzas que emitio el recibo

SELECT c.nombre_choferes, r.fecha_emision, r.nro_recibo, r.sueldo_bruto, r.descuento, r.sueldo_neto, e.nombre_empresa, a.nombre_area, a.telefono FROM recibo_sueldo r 
INNER JOIN choferes c ON r.DNI_choferes = c.dni_choferes
INNER JOIN empresas e ON c.empresa_choferes = e.nombre_empresa
INNER JOIN area_finanzas a ON r.nombre_area = a.nombre_area;

+------------------+---------------+------------+--------------+-----------+-------------+----------------------------------+------------------------+----------+
| nombre_choferes  | fecha_emision | nro_recibo | sueldo_bruto | descuento | sueldo_neto | nombre_empresa                   | nombre_area            | telefono |
+------------------+---------------+------------+--------------+-----------+-------------+----------------------------------+------------------------+----------+
| Carlos Garcia    | 2024-03-20    |   10000003 |     45000.00 |    450.00 |    40500.00 | Union Platense S.R.L.            | Impuestos              | 46123456 |
| Ana Martinez     | 2024-04-25    |   10000004 |     50000.00 |    500.00 |    45000.00 | Empresa Nueve de Julio S.A.T.    | Auditoria              | 47567890 |
| Ricardo Diaz     | 2024-07-20    |   10000007 |     42000.00 |    420.00 |    37800.00 | Transportes Unidos de Merlo S.A. | Facturacion            | 46123457 |
| Silvia Romero    | 2024-08-25    |   10000008 |     39000.00 |    390.00 |    35100.00 | 13 de Noviembre S.A.             | Presupuesto            | 49678901 |
| Juan Perez       | 2024-01-10    |   20000001 |     35000.00 |    350.00 |    31500.00 | Transporte La Union S.A.         | Contabilidad           | 45123456 |
| Maria Lopez      | 2024-02-15    |   20000002 |     40000.00 |    400.00 |    36000.00 | Platabus S.A.                    | Tesoreria              | 45234567 |
| Pedro Fernandez  | 2024-05-30    |   20000005 |     60000.00 |    600.00 |    54000.00 | Micro Omnibus Tigre S.A.         | Pagos y Obligaciones   | 43789012 |
| Laura Gonzalez   | 2024-06-15    |   20000006 |     38000.00 |    380.00 |    34200.00 | Grupo de Transporte DOTA         | Cobranza y Recaudacion |     NULL |
| Jorge Silva      | 2024-09-10    |   20000009 |     33000.00 |    330.00 |    29700.00 | Micro Omnibus Quilmes S.A.       | Proveedores            | 42345678 |
| Claudia Castro   | 2024-10-15    |   20000010 |     31000.00 |    310.00 |    27900.00 | Rutatlantica S.A.                | Planeacion Financiera  |     NULL |
+------------------+---------------+------------+--------------+-----------+-------------+----------------------------------+------------------------+----------+

-- MUZZI --

1. Contar la cantidad total de pasajeros registrados
  SELECT COUNT(*) AS pasajeros_totales FROM pasajeros;
  +-------------------+
  | pasajeros_totales |
  +-------------------+
  |                10 |
  +-------------------+

2. Contar el número de boletos vendidos el 2024-11-01
  SELECT COUNT(*) AS vendidos FROM boletos WHERE fecha = '2024-11-03';
  +----------+
  | vendidos |
  +----------+
  |        3 |
  +----------+
  
3. Calcular el total de ingresos por boletos vendidos el 2023-09-18
  SELECT SUM(valor_boleto) AS ingresos FROM boletos WHERE fecha = '2023-09-18';
  +----------+
  | ingresos |
  +----------+
  |    75.00 | 
  +----------+

4. Calcular la suma de horas semanales de todos los choferes que trabajen en Transporte La Union S.A.
  SELECT SUM(horas_semanales) AS total_horas_semanales FROM choferes WHERE empresa_choferes LIKE 'Transporte La Union S.A.';
  +-----------------------+
  | total_horas_semanales |
  +-----------------------+
  |                    40 |
  +-----------------------+

5. Obtener el valor máximo y mínimo de los boletos vendidos el 2023-08-05
  SELECT MAX(valor_boleto) AS mayor_boleto, MIN(valor_boleto) AS menor_boleto FROM boletos WHERE fecha = '2024-09-01';
  +--------------+--------------+
  | mayor_boleto | menor_boleto |
  +--------------+--------------+
  |        47.50 |        45.00 |
  +--------------+--------------+

6. Obtener el sueldo neto máximo y mínimo entre los choferes registrados en el área de finanzas
  SELECT MAX(sueldo_neto) AS sueldo_neto_maximo, MIN(sueldo_neto) AS sueldo_neto_minimo FROM recibo_sueldo;
  +-----------------------------------------+
  | sueldo_neto_maximo | sueldo_neto_minimo |
  +--------------------+--------------------+
  |           99999.99 |           29700.00 |
  +--------------------+--------------------+

7. Calcular el valor promedio de los boletos vendidos el 2024-01-27
  SELECT AVG(valor_boleto) AS valor_promedio_boleto FROM boletos WHERE fecha = '2024-01-27';
  +-----------------------+
  | valor_promedio_boleto |
  +-----------------------+
  |             64.625000 |
  +-----------------------+

8. Calcular el sueldo neto promedio de todos los choferes
  SELECT AVG(sueldo_neto) AS sueldo_promedio FROM recibo_sueldo;
  +-----------------+
  | sueldo_promedio |
  +-----------------+
  |    44379.999000 |
  +-----------------+

9. Obtener el nombre de la empresa que tiene el chofer con el sueldo más alto
  SELECT empresa_choferes AS empresa_mas_generosa FROM choferes WHERE dni_choferes = (SELECT DNI_choferes FROM recibo_sueldo ORDER BY sueldo_bruto DESC LIMIT 1);
  +--------------------------+
  | empresa_mas_generosa     |
  +--------------------------+
  | Micro Omnibus Tigre S.A. |
  +--------------------------+

10. Listar los nombres de los pasajeros que tomaron un boleto cuyo valor es superior al valor promedio de todos los boletos vendidos
  SELECT Nombre_titular_sube FROM pasajeros WHERE nro_sube IN (SELECT sube FROM boletos WHERE valor_boleto > ( SELECT AVG(valor_boleto) FROM boletos ));
  +---------------------+
  | Nombre_titular_sube |
  +---------------------+
  | Juan Perez          |
  | Maria Lopez         |
  | Carlos Garcia       |
  | Ana Martinez        |
  | Luis Rodriguez      |
  | Pablo Ramirez       |
  | Sofia Diaz          |
  | Jorge Gonzalez      |
  | Marta Sanchez       |
  +---------------------+

  -- PIPE --

-- UPDATE --

1. Actualizar el numero de telefono del area financiera Contabilidad a: 49453125
UPDATE area_finanzas SET telefono = 49453125 WHERE nombre_area = 'Contabilidad';
+------------------------+----------+
| nombre_area            | telefono |
+------------------------+----------+
| Auditoria              | 47567890 |
| Cobranza y Recaudacion |     NULL |
| Contabilidad           | 49453125 |
| Facturacion            | 46123457 |
| Impuestos              | 46123456 |
| Pagos y Obligaciones   | 43789012 |
| Planeacion Financiera  |     NULL |
| Presupuesto            | 49678901 |
| Proveedores            | 42345678 |
| Tesoreria              | 45234567 |
+------------------------+----------+

2. Actualiza el interno 2023. Ya no circula mas.
UPDATE internos SET circula = FALSE WHERE num_interno = 2023 ;
+-------------+---------------+---------+----------+
| num_interno | linea_interno | circula | id_infra |
+-------------+---------------+---------+----------+
|        1123 |             4 |       1 |      109 |
|        2023 |            45 |       0 |      101 |
|        3154 |            89 |       0 |      102 |
|        4287 |           146 |       1 |      103 |
|        4538 |             1 |       1 |      110 |
|        5342 |            92 |       1 |      104 |
|        6420 |            54 |       0 |      105 |
|        7511 |            13 |       1 |      106 |
|        8904 |            57 |       1 |      107 |
|        9056 |            11 |       0 |      108 |
+-------------+---------------+---------+----------+

--DELETE 
Eliminar los nombres de las areas financieras que empiecen con Pr.
DELETE FROM area_finanzas WHERE nombre_area LIKE 'Pr%';
+------------------------+----------+
| nombre_area            | telefono |
+------------------------+----------+
| Auditoria              | 47567890 |
| Cobranza y Recaudacion |     NULL |
| Contabilidad           | 49453125 |
| Facturacion            | 46123457 |
| Impuestos              | 46123456 |
| Pagos y Obligaciones   | 43789012 |
| Tesoreria              | 45234567 |
+------------------------+----------+

--ON CASCADE
 --Los hago en casa -


