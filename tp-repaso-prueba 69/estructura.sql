CREATE DATABASE ventas;
USE ventas;

CREATE TABLE fabricantes (
    codigo INT(9) NOT NULL AUTO_INCREMENT,
    nombre NVARCHAR(100) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE articulos (
    codigo INT(9) NOT NULL AUTO_INCREMENT,
    nombre NVARCHAR(100) NOT NULL,
    precio DOUBLE(10,2) NOT NULL,
    fabricante INT(9) NOT NULL,
    PRIMARY KEY(codigo),
    FOREIGN KEY(fabricante) REFERENCES fabricantes(codigo)
);