/*
    CREATE database: crea una bas de datos
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
    PRIMARY KEY(cod_pro)
);
CREATE TABLE facturas(
    nro_fact INT(10) NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    IVA Double(5.,2) NOT NULL,
    cant INT(4) NOT NULL,
    total Double(11,2),
    nro_cli INT(6) NOT NULL,
    nro_prod INT(6) NOT NULL,
    PRIMARY KEY(nro_fact),
    FOREIGN KEY(nro_cli) REFERENCES clientes(cod_cli),
    FOREIGN KEY(nro_prod) REFERENCES productos(cod_prod)
);