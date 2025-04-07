CREATE DATABASE DV;

USE DV;

CREATE TABLE Distribuidoras (
    id_distrubuidora INT(10) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    url_distribuidora VARCHAR(20) NOT NULL,
    direccion VARCHAR(65) NOT NULL,
    telefono INT(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_distrubuidora)
);

CREATE TABLE Clientes (
    dni INT(10) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    direccion VARCHAR(65),
    telefono INT(10),
    apellido VARCHAR(30),
    PRIMARY KEY(dni)
);
 
CREATE TABLE Peliculas (
    id_pelicula INT(10) NOT NULL,
    id_genero INT(10) NOT NULL,
    id_distrubuidora INT(10) NOT NULL,
    titulo VARCHAR(30) NOT NULL,
    reparto VARCHAR(200) NOT NULL,
    director VARCHAR(60),
    descripcion VARCHAR(200),
    anio DATE NOT NULL,
    PRIMARY KEY(id_pelicula),
    FOREIGN KEY(id_genero) REFERENCES Generos(id_genero),
    FOREIGN KEY(id_distrubuidora) REFERENCES Distribuidoras(id_distrubuidora)
);

CREATE TABLE Copias (
    numero_registro INT(10) NOT NULL,
    cantidad INT(5) NOT NULL,
    id_pelicula INT(10) NOT NULL,
    PRIMARY KEY(numero_registro),
    FOREIGN KEY(id_pelicula) REFERENCES Peliculas(id_pelicula)
);

CREATE TABLE Generos (
    id_genero INT(10) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    PRIMARY KEY(id_genero)
);

CREATE TABLE Alquileres (
    id_alquiler INT(10) NOT NULL,
    dni INT(10) NOT NULL,
    numero_registro INT(10) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_final DATE NOT NULL,
    fecha_devolucion DATE NULL,
    tarifa INT(10) NOT NULL,
    base INT(10) NOT NULL,
    penalizacion INT(15) NOT NULL,
    importe INT(10) NOT NULL,
    PRIMARY KEY(id_alquiler),
    FOREIGN KEY(dni) REFERENCES Clientes(dni),
    FOREIGN KEY(numero_registro) REFERENCES Copias(numero_registro)
);
