--Valeria: 10 consultas de operadores (2 de cada uno: LIKE, IS NULL, NOT IN, IN, BETWEEN y 1 de funciones de fechas y 1 INNER JOIN).
--Sofía  : 10 consultas (1 de funciones de fechas, 2 de GROUP BY, 2 de HAVING, 2 de ORDER BY y 1 INNER JOIN).
--Muzzi  : 10 consultas (2 de cada uno: COUNT, SUM, MAX/MIN, AVG; 2 de subconsultas).

-- VALERIA --

-- LIKE
1. Mostrar el nombre y el número de sube de los pasajeros que su nombre empiece por 'J'.
    SELECT Nombre_titular_sube, nro_sube FROM pasajeros WHERE Nombre_titular_sube LIKE '%'

2. Mostrar el nombre y el CUIL de los choferes que su nombre termine en 'z'.

    SELECT nombre_choferes, CUIL_choferes FROM choferes WHERE nombre_choferes LIKE '%z'

-- IS NULL
1.Seleccionar el nombre del area de finanzas que no tiene telefono registrado.

    SELECT nombre_area  FROM area_finanzas WHERE telefono IS NULL;

 2.Seleccionar el número de boleto y su valor de aquellos que no tienen subsidio.

    SELECT nro_boleto, valor_boleto FROM boletos WHERE subsidio IS NULL;

--NOT IN 
1. Mostar los nombre de los pasajeros cuya SUBE no aparezca en la tabla de los boletos.   

    SELECT Nombre_titular_sube FROM pasajeros WHERE nro_sube NOT IN (SELECT sube FROM boletos);

2. Seleccionar los nombre de los choferes y sus empresas que no están asosiados a la empresa "Rutatlantica S.A" .

   SELECT nombre_choferes, empresa_choferes FROM choferes WHERE empresa_choferes NOT IN ('Rutatlantica S.A.');

--IN

1.Mostar las lineas y el año de inicio de las empresas "Platabus S.A." O "Union Platense S.R.L".

    SELECT nro_linea, anio_inicio FROM lineas WHERE empresa IN ('Platabus S.A.', 'Union Platense S.R.L.');

2.Seleccionar el nombre del area de finanzas que  tiene relacion con algún recibo de sueldo.
 
    SELECT nombre_area FROM recibo_sueldo WHERE nombre_area IN (SELECT nombre_area FROM area_finanzas);


-- SOFIA --
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

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

  
-- para pipe

BDK > PPALA

o mejor dicho

MUERTITOX > KROCTOR

o mejor dicho

ANNRII > VALYTRIOS

o mejor dicho

ELDRUIDO > EPILLEF

o mejor dicho

BARTOLITOO > GIGO

o mejor dicho

ARIKKAZAI > HOJILAND

o mejor dicho 

FRODOUWU > KROCTOR