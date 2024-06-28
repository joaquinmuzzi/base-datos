/*
    SENTENCIAS DDL:

    CREATE database: crea una base de datos
    USE database: activar la base de datos desde la shell
    DROP database name: borrar una base de datos desde la shell
    conectarse al servidor desde la shell: mysql -u root -p "password"
    CREATE TABLE(atributos (AUTO_INCREMENT si es PK)): crear una tabla
*/
CREATE DATABASE ventas;
USE ventas;
CREATE TABLE clientes(
    cod_cli INT(50) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    domicilio VARCHAR(70) NOT NULL,
    telefono INT(10),
    PRIMARY KEY(cod_cli)
);
CREATE TABLE productos(
    cod_prod INT(6) NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(100) NOT NULL,
    precio DOUBLE(11,2) NOT NULL,
    stock INT(4) NOT NULL,
    PRIMARY KEY(cod_prod)
);
CREATE TABLE facturas(
    nro_fact INT(10) NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    IVA Double(5,2) NOT NULL,
    cant INT(4) NOT NULL,
    total Double(11,2),
    nro_cli INT(6) NOT NULL,
    nro_prod INT(6) NOT NULL,
    PRIMARY KEY(nro_fact),
    FOREIGN KEY(nro_cli) REFERENCES clientes(cod_cli),
    FOREIGN KEY(nro_prod) REFERENCES productos(cod_prod)
);

MariaDB [ventas]> SHOW TABLES;
+------------------+
| Tables_in_ventas |
+------------------+
| clientes         |
| facturas         |
| productos        |
+------------------+
3 rows in set (0.001 sec)

MariaDB [ventas]> SHOW COLUMNS FROM clientes;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cod_cli   | int(50)     | NO   | PRI | NULL    |       |
| nombre    | varchar(30) | NO   |     | NULL    |       |
| apellido  | varchar(50) | NO   |     | NULL    |       |
| domicilio | varchar(70) | NO   |     | NULL    |       |
| telefono  | int(10)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.028 sec)

MariaDB [ventas]> SHOW COLUMNS FROM facturas;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| nro_fact | int(10)      | NO   | PRI | NULL    | auto_increment |
| fecha    | date         | NO   |     | NULL    |                |
| IVA      | double(5,2)  | NO   |     | NULL    |                |
| cant     | int(4)       | NO   |     | NULL    |                |
| total    | double(11,2) | YES  |     | NULL    |                |
| nro_cli  | int(6)       | NO   | MUL | NULL    |                |
| nro_prod | int(6)       | NO   | MUL | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
7 rows in set (0.019 sec)

MariaDB [ventas]> SHOW COLUMNS FROM productos;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| cod_pro     | int(6)       | NO   | PRI | NULL    | auto_increment |
| descripcion | varchar(100) | NO   |     | NULL    |                |
| precio      | double(11,2) | NO   |     | NULL    |                |
| stock       | int(4)       | NO   |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
4 rows in set (0.017 sec)

/*
    ALTER TABLE nombre: cambiar el nombre de una tabla
    ADD COLUMN: agrega una columna
    MODIFY COLUMN: modificar una columna
    CHANGE COLUMN: modificar una columna
    DROP COLUMN: eliminar una columna

    ALTER TABLE clientes CHANGE COLUMN telefono celular INT(10);
*/

1. Crear una tabla similar a clientes, llamada usuarios:
CREATE TABLE usuarios(
    cod_cli INT(50) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    domicilio VARCHAR(70) NOT NULL,
    telefono INT(10),
    PRIMARY KEY(cod_cli)
);

2. Renombrar la columna teléfono por celular DE CLIENTES.
MariaDB [ventas]> ALTER TABLE clientes CHANGE COLUMN telefono celular INT(10);
Query OK, 0 rows affected (0.016 sec)
Records: 0  Duplicates: 0  Warnings: 0
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cod_cli   | int(50)     | NO   | PRI | NULL    |       |
| nombre    | varchar(30) | NO   |     | NULL    |       |
| apellido  | varchar(50) | NO   |     | NULL    |       |
| domicilio | varchar(70) | NO   |     | NULL    |       |
| celular   | int(10)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.020 sec)

3. Agregar una columna llamada DNI de tipo varchar DE CLIENTES.
ALTER TABLE clientes ADD COLUMN DNI VARCHAR(10) NOT NULL;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cod_cli   | int(50)     | NO   | PRI | NULL    |       |
| nombre    | varchar(30) | NO   |     | NULL    |       |
| apellido  | varchar(50) | NO   |     | NULL    |       |
| domicilio | varchar(70) | NO   |     | NULL    |       |
| celular   | int(10)     | YES  |     | NULL    |       |
| DNI       | VARCHAR(10) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.019 sec)

4. Agregar una columna llamada fecha de nacimiento en la tabla usuarios.
ALTER TABLE usuarios ADD COLUMN fecha_nacimiento DATE NOT NULL;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| cod_cli          | int(50)     | NO   | PRI | NULL    |       |
| nombre           | varchar(30) | NO   |     | NULL    |       |
| apellido         | varchar(50) | NO   |     | NULL    |       |
| domicilio        | varchar(70) | NO   |     | NULL    |       |
| telefono         | int(10)     | YES  |     | NULL    |       |
| fecha_nacimiento | date        | NO   |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
6 rows in set (0.020 sec)

5. Eliminar la columna fecha de nacimiento de la tabla usuarios.
ALTER TABLE usuarios DROP COLUMN fecha_nacimiento
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cod_cli   | int(50)     | NO   | PRI | NULL    |       |
| nombre    | varchar(30) | NO   |     | NULL    |       |
| apellido  | varchar(50) | NO   |     | NULL    |       |
| domicilio | varchar(70) | NO   |     | NULL    |       |
| telefono  | int(10)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.019 sec)

/* 
    SENTENCIAS DML:

    INSERT: alta
    SELECT: consulta
    UPDATE: modificar
    DELETE: borrar

    ADM:    Alta, Baja y Modificación

    INSERT table cliente (cod_cli, nombre, apellido, domicilio, telefono) VALUES ('', 'Jose', 'Pérez', 'Lope de Vega 2015', '1555111111');
*/

