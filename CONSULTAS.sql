SHOW tables ventas
-- +------------------+
-- | Tables_in_ventas |
-- +------------------+
-- | clientes         |
-- | facturas         |
-- | productos        |
-- +------------------+ 

SHOW columns FROM clientes
-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | cod_cli   | int(6)      | NO   | PRI | NULL    |       |
-- | nombre    | varchar(50) | NO   |     | NULL    |       |
-- | apellido  | varchar(50) | NO   |     | NULL    |       |
-- | domicilio | varchar(70) | NO   |     | NULL    |       |
-- | telefono  | int(10)     | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+

SHOW columns FROM productos
-- +-------------+--------------+------+-----+---------+----------------+
-- | Field       | Type         | Null | Key | Default | Extra          |
-- +-------------+--------------+------+-----+---------+----------------+
-- | cod_pro     | int(6)       | NO   | PRI | NULL    | auto_increment |
-- | descripcion | varchar(50)  | NO   |     | NULL    |                |
-- | precio      | double(13,2) | NO   |     | NULL    |                |
-- | stock       | int(4)       | NO   |     | NULL    |                |
-- +-------------+--------------+------+-----+---------+----------------+

SHOW columns FROM facturas
-- +----------+--------------+------+-----+---------+----------------+
-- | Field    | Type         | Null | Key | Default | Extra          |
-- +----------+--------------+------+-----+---------+----------------+
-- | num_fact | int(10)      | NO   | PRI | NULL    | auto_increment |
-- | fecha    | date         | NO   |     | NULL    |                |
-- | IVA      | double(6,2)  | NO   |     | NULL    |                |
-- | cant     | int(4)       | NO   |     | NULL    |                |
-- | total    | double(11,2) | NO   |     | NULL    |                |
-- | num_cli  | int(6)       | NO   | MUL | NULL    |                |
-- | num_pro  | int(6)       | NO   | MUL | NULL    |                |
-- +----------+--------------+------+-----+---------+----------------+

-- Ejercicio 1: 
TABLE table usuarios(
	cod_usr INT(6) NOT NULL,
	nombre_usr VARCHAR(50) NOT NULL,
	apellido_usr VARCHAR(50) NOT NULL,
	domicilio_usr VARCHAR(70) NOT NULL,
	telefono_usr INT(10),
	PRIMARY KEY(cod_usr)
);

-- Salida:
-- +------------------+
-- | Tables_in_ventas |
-- +------------------+
-- | clientes         |
-- | facturas         |
-- | productos        |
-- | usuarios         |
-- +------------------+

-- Ejercicio 2: 
ALTER table clientes change column telefono celular int(10);
-- Ejercicio 3: 
ALTER table clientes ADD column DNI varchar(8);

-- Salida:
-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | cod_cli   | int(6)      | NO   | PRI | NULL    |       |
-- | nombre    | varchar(50) | NO   |     | NULL    |       |
-- | apellido  | varchar(50) | NO   |     | NULL    |       |
-- | domicilio | varchar(70) | NO   |     | NULL    |       |
-- | celular   | int(10)     | YES  |     | NULL    |       |
-- | DNI       | varchar(8)  | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+

-- Ejercicio 4: 
ALTER table usuarios ADD column nacimiento date;

-- Salida:
-- +---------------+-------------+------+-----+---------+-------+
-- | Field         | Type        | Null | Key | Default | Extra |
-- +---------------+-------------+------+-----+---------+-------+
-- | cod_usr       | int(6)      | NO   | PRI | NULL    |       |
-- | nombre_usr    | varchar(50) | NO   |     | NULL    |       |
-- | apellido_usr  | varchar(50) | NO   |     | NULL    |       |
-- | domicilio_usr | varchar(70) | NO   |     | NULL    |       |
-- | telefono_usr  | int(10)     | YES  |     | NULL    |       |
-- | nacimiento    | date        | YES  |     | NULL    |       |
-- +---------------+-------------+------+-----+---------+-------+

-- Ejercicio 5: 
ALTER table usuarios DROP column nacimiento;

-- Salida:
-- +---------------+-------------+------+-----+---------+-------+
-- | Field         | Type        | Null | Key | Default | Extra |
-- +---------------+-------------+------+-----+---------+-------+
-- | cod_usr       | int(6)      | NO   | PRI | NULL    |       |
-- | nombre_usr    | varchar(50) | NO   |     | NULL    |       |
-- | apellido_usr  | varchar(50) | NO   |     | NULL    |       |
-- | domicilio_usr | varchar(70) | NO   |     | NULL    |       |
-- | telefono_usr  | int(10)     | YES  |     | NULL    |       |
-- +---------------+-------------+------+-----+---------+-------+

-- EJ 6:

DELETE FROM clientes WHERE apellido LIKE '%M';

-- +---------+---------+-----------+-------------------------+------------+
-- | cod_cli | nombre  | apellido  | domicilio               | telefono   |
-- +---------+---------+-----------+-------------------------+------------+
-- |       2 | Nicolas | Maria     | Segurola 3503           |  157655531 |
-- |       3 | Rick    | Sanchez   | Avenida Siempreviva 742 |  154655531 |
-- |       4 | Felipe  | Rodriguez | Nogoya 3500             |  152593497 |
-- +---------+---------+-----------+-------------------------+------------+

-- EJ 7:

DELETE FROM clientes WHERE nombre LIKE '%n' AND telefono LIKE '%5531';

-- +---------+---------+-----------+-------------------------+------------+
-- | cod_cli | nombre  | apellido  | domicilio               | telefono   |
-- +---------+---------+-----------+-------------------------+------------+
-- |       2 | Nicolas | Maria     | Segurola 3503           |  157655531 |
-- |       3 | Rick    | Sanchez   | Avenida Siempreviva 742 |  154655531 |
-- |       4 | Felipe  | Rodriguez | Nogoya 3500             |  152593497 |
-- +---------+---------+-----------+-------------------------+------------+

-- EJ 8:

UPDATE clientes SET domicilio = 'Lope De Vega 1124' WHERE cod_cli LIKE '1';

-- +---------+---------+-----------+-------------------------+-----------+
-- | cod_cli | nombre  | apellido  | domicilio               | telefono  |
-- +---------+---------+-----------+-------------------------+-----------+
-- |       1 | Alan    | Menez     | Lope De Vega 1124       | 155255531 |
-- |       2 | Nicolas | Maria     | Segurola 3503           | 157655531 |
-- |       3 | Rick    | Sanchez   | Avenida Siempreviva 742 | 154655531 |
-- |       4 | Felipe  | Rodriguez | Nogoya 3500             | 152593497 |
-- +---------+---------+-----------+-------------------------+-----------+

UPDATE clientes SET domicilio = 'Sector G', telefono = '154849331' WHERE cod_cli LIKE '3';

-- +---------+---------+-----------+-------------------+-----------+
-- | cod_cli | nombre  | apellido  | domicilio         | telefono  |
-- +---------+---------+-----------+-------------------+-----------+
-- |       1 | Alan    | Menez     | Lope De Vega 1124 | 155255531 |
-- |       2 | Nicolas | Maria     | Segurola 3503     | 157655531 |
-- |       3 | Rick    | Sanchez   | Sector G          | 154849331 |
-- |       4 | Felipe  | Rodriguez | Nogoya 3500       | 152593497 |
-- +---------+---------+-----------+-------------------+-----------+

-- EJ 9:

SELECT * FROM productos WHERE precio BETWEEN 200 AND 400;

-- +---------+--------------+--------+-------+
-- | cod_pro | descripcion  | precio | stock |
-- +---------+--------------+--------+-------+
-- |       2 | No tan bueno | 399.00 |   432 |
-- |       3 | Algo malo    | 249.00 |   562 |
-- +---------+--------------+--------+-------+

-- EJ 10:

SELECT apellido FROM clientes ORDER BY apellido DESC;

-- +-----------+
-- | apellido  |
-- +-----------+
-- | Sanchez   |
-- | Rodriguez |
-- | Ramiros   |
-- | Menez     |
-- | Mars      |
-- | Maria     |
-- | Jesus     |
-- | Carlmagne |
-- +-----------+

-- EJ 11:

ALTER TABLE clientes ADD column fecha_nac DATE;

-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | cod_cli   | int(6)      | NO   | PRI | NULL    |       |
-- | nombre    | varchar(50) | NO   |     | NULL    |       |
-- | apellido  | varchar(50) | NO   |     | NULL    |       |
-- | domicilio | varchar(70) | NO   |     | NULL    |       |
-- | telefono  | int(10)     | YES  |     | NULL    |       |
-- | fecha_nac | date        | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+

insert into clientes VALUES(' ', 'AlejANDro', 'Mars', 'Baigorria 1564', '152324512', '1974-6-20');
insert into clientes VALUES('5', 'Pablo', 'Jesus', 'Cuzco 154', '152321512', '2001-4-20');

-- +---------+-----------+-----------+-------------------+-----------+------------+
-- | cod_cli | nombre    | apellido  | domicilio         | telefono  | fecha_nac  |
-- +---------+-----------+-----------+-------------------+-----------+------------+
-- |       0 | AlejANDro | Mars      | Baigorria 1564    | 152324512 | 1974-06-20 |
-- |       1 | Alan      | Menez     | Lope De Vega 1124 | 155255531 | NULL       |
-- |       2 | Nicolas   | Maria     | Segurola 3503     | 157655531 | NULL       |
-- |       3 | Rick      | Sanchez   | Sector G          | 154849331 | NULL       |
-- |       4 | Felipe    | Rodriguez | Nogoya 3500       | 152593497 | NULL       |
-- |       5 | Pablo     | Jesus     | Cuzco 154         | 152321512 | 2001-04-20 |
-- +---------+-----------+-----------+-------------------+-----------+------------+

SELECT nombre, apellido, fecha_nac FROM clientes WHERE year(fecha_nac) > 1974;

-- +--------+----------+------------+
-- | nombre | apellido | fecha_nac  |
-- +--------+----------+------------+
-- | Pablo  | Jesus    | 2001-04-20 |
-- +--------+----------+------------+

-- EJ 12:

SELECT descripcion, cod_pro FROM productos WHERE cod_pro = 3 || cod_pro = 5 || cod_pro = 7;

-- +----------------+---------+
-- | descripcion    | cod_pro |
-- +----------------+---------+
-- | Algo malo      |       3 |
-- | Demasiado malo |       5 |
-- | Maravilloso    |       7 |
-- +----------------+---------+

-- EJ 13:

SELECT nombre FROM clientes WHERE fecha_nac = (SELECT min(fecha_nac) FROM clientes);

-- +-----------+
-- | nombre    |
-- +-----------+
-- | AlejANDro |
-- +-----------+

-- EJ 14:

insert into clientes VALUES('6', 'Joaquin', 'Carlmagne', 'Cuzco 43', '152378512', '2006-2-12', 'Corrientes');
insert into clientes VALUES('7', 'Jose', 'Ramiros', 'Barrios 430', '152853512', '1984-5-04', 'Tucuman');

-- +---------+-----------+-----------+-------------------+-----------+------------+------------+
-- | cod_cli | nombre    | apellido  | domicilio         | telefono  | fecha_nac  | localidad  |
-- +---------+-----------+-----------+-------------------+-----------+------------+------------+
-- |       0 | AlejANDro | Mars      | Baigorria 1564    | 152324512 | 1974-06-20 | CABA       |
-- |       1 | Alan      | Menez     | Lope De Vega 1124 | 155255531 | NULL       | CABA       |
-- |       2 | Nicolas   | Maria     | Segurola 3503     | 157655531 | NULL       | CABA       |
-- |       3 | Rick      | Sanchez   | Sector G          | 154849331 | NULL       | CABA       |
-- |       4 | Felipe    | Rodriguez | Nogoya 3500       | 152593497 | NULL       | CABA       |
-- |       5 | Pablo     | Jesus     | Cuzco 154         | 152321512 | 2001-04-20 | CABA       |
-- |       6 | Joaquin   | Carlmagne | Cuzco 43          | 152378512 | 2006-02-12 | Corrientes |
-- |       7 | Jose      | Ramiros   | Barrios 430       | 152853512 | 1984-05-04 | Tucuman    |
-- +---------+-----------+-----------+-------------------+-----------+------------+------------+

SELECT count(localidad) as Cantidad_en_CABA FROM clientes WHERE localidad = 'CABA';

-- +------------------+
-- | Cantidad_en_CABA |
-- +------------------+
-- |                6 |
-- +------------------+

-- EJ 15: 

SELECT descripcion, precio FROM productos WHERE precio = (SELECT max(precio) FROM productos);

-- +-------------+---------+
-- | descripcion | precio  |
-- +-------------+---------+
-- | Maravilloso | 1099.00 |
-- +-------------+---------+

-- EJ 16: 

SELECT descripcion, precio FROM productos WHERE precio = (SELECT min(precio) FROM productos);

-- +----------------+--------+
-- | descripcion    | precio |
-- +----------------+--------+
-- | Demasiado malo | 109.00 |
-- +----------------+--------+

-- EJ 17:

SELECT avg(precio) as promedio_de_precio FROM productos;

-- +--------------------+
-- | promedio_de_precio |
-- +--------------------+
-- |         504.714286 |
-- +--------------------+

-- EJ 18:

SELECT sum(precio) as suma_de_precios FROM productos;

-- +-----------------+
-- | suma_de_precios |
-- +-----------------+
-- |         3533.00 |
-- +-----------------+

-- EJ 19:

DROP table usuarios;

-- +------------------+
-- | Tables_in_ventas |
-- +------------------+
-- | clientes         |
-- | facturas         |
-- | productos        |
-- +------------------+