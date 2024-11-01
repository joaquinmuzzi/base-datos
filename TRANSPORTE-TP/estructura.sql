--ESTRUCTURA DE LA BASE DE DATOS--

CREATE DATABASE TRANSPORTE_PUBLICO;

USE TRANSPORTE_PUBLICO;

CREATE TABLE pasajeros (
    nro_sube BIGINT (16) NOT NULL UNIQUE,
    DNI INT (8) NOT NULL,
    CUIL BIGINT (11) NOT NULL UNIQUE,
    Nombre_titular_sube VARCHAR (30) NOT NULL,
    PRIMARY KEY (Nro_sube)
);

CREATE TABLE area_finanzas (
    nombre_area VARCHAR (100) NOT NULL,
    telefono INT (8) NULL,
    PRIMARY KEY (nombre_area)
);


CREATE TABLE infraestructura (
    id_infra INT(3) NOT NULL,
    chasis VARCHAR(30) NOT NULL,
    carroceria VARCHAR(30) NOT NULL,
    marca_aire_acondicionado VARCHAR(30) NULL,
    PRIMARY KEY(id_infra)
);

CREATE TABLE empresas (
    nombre_empresa VARCHAR (50) NOT NULL,
    id_empresa INT(3) NOT NULL UNIQUE,
    fecha_creacion DATE NULL,
    telefono_empresa INT (8) NULL,
    area_finanzas VARCHAR (100) NOT NULL,
    PRIMARY KEY (nombre_empresa),
    FOREIGN KEY (area_finanzas) REFERENCES area_finanzas(nombre_area)
);

CREATE TABLE lineas (
    nro_linea INT(3) NOT NULL,
    anio_inicio YEAR NULL,
    empresa VARCHAR(50) NOT NULL,
    PRIMARY KEY(nro_linea),
    FOREIGN KEY(empresa) REFERENCES empresas(nombre_empresa)
);

CREATE TABLE internos (    
    num_interno INT(4) NOT NULL,
    linea_interno INT(4) NOT NULL,
    circula BOOLEAN NOT NULL,
    id_infra INT(3) NOT NULL,
    PRIMARY KEY(num_interno),
    FOREIGN KEY(linea_interno) REFERENCES lineas(nro_linea),
    FOREIGN KEY(id_infra) REFERENCES infraestructura(id_infra)
);


CREATE TABLE choferes (
    dni_choferes INT(8) NOT NULL,
    nombre_choferes VARCHAR(50) NOT NULL,
    es_duenio BOOLEAN NOT NULL,
    horas_semanales INT(2) NOT NULL,
    empresa_choferes VARCHAR(50) NOT NULL,
    num_interno INT(4) NOT NULL,
    PRIMARY KEY(dni_choferes),
    FOREIGN KEY(empresa_choferes) REFERENCES empresas(nombre_empresa),
    FOREIGN KEY(num_interno) REFERENCES internos(num_interno)
);

CREATE TABLE recibo_sueldo (
    nro_recibo INT(8) NOT NULL,
    sueldo_bruto DOUBLE(7,2) NOT NULL,
    descuento DOUBLE(5,2) NOT NULL,
    sueldo_neto DOUBLE(7,2) NOT NULL,
    DNI_choferes INT(8) NOT NULL,
    nombre_area VARCHAR(100) NOT NULL,
    PRIMARY KEY(nro_recibo),
    FOREIGN KEY(DNI_choferes) REFERENCES choferes(dni_choferes),
    FOREIGN KEY(nombre_area) REFERENCES area_finanzas(nombre_area)
);


CREATE TABLE boletos (
    nro_boleto INT (6) NOT NULL,
    valor_boleto DOUBLE(4,2) NULL,
    estudiantil BOOLEAN NOT NULL,
    subsidio DOUBLE (11,2) NULL,
    fecha DATE NULL,
    horario TIME  NULL,
    sube BIGINT(16) NOT NULL,
    linea INT (3) NOT NULL,
    PRIMARY KEY (nro_boleto),
    FOREIGN KEY (sube) REFERENCES pasajeros(nro_sube),
    FOREIGN KEY (linea) REFERENCES lineas(nro_linea)
);


CREATE TABLE ramales (
    nombre_ramal VARCHAR(70) NOT NULL,
    inicio_recorrido VARCHAR(50) NOT NULL,
    terminal VARCHAR(50) NOT NULL,
    linea INT(3) NOT NULL,
    PRIMARY KEY(nombre_ramal),
    FOREIGN KEY(linea) REFERENCES lineas(nro_linea)
);