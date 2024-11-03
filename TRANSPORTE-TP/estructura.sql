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
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| nro_sube            | bigint(16)  | NO   | PRI | NULL    |       |
| DNI                 | int(8)      | NO   |     | NULL    |       |
| CUIL                | bigint(11)  | NO   | UNI | NULL    |       |
| Nombre_titular_sube | varchar(30) | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+

CREATE TABLE area_finanzas (
    nombre_area VARCHAR (100) NOT NULL,
    telefono INT (8) NULL,
    PRIMARY KEY (nombre_area)
);
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| nombre_area | varchar(100) | NO   | PRI | NULL    |       |
| telefono    | int(8)       | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+


CREATE TABLE infraestructura (
    id_infra INT(3) NOT NULL,
    chasis VARCHAR(30) NOT NULL,
    carroceria VARCHAR(30) NOT NULL,
    marca_aire_acondicionado VARCHAR(30) NULL,
    PRIMARY KEY(id_infra)
);
+--------------------------+-------------+------+-----+---------+-------+
| Field                    | Type        | Null | Key | Default | Extra |
+--------------------------+-------------+------+-----+---------+-------+
| id_infra                 | int(3)      | NO   | PRI | NULL    |       |
| chasis                   | varchar(30) | NO   |     | NULL    |       |
| carroceria               | varchar(30) | NO   |     | NULL    |       |
| marca_aire_acondicionado | varchar(30) | YES  |     | NULL    |       |
+--------------------------+-------------+------+-----+---------+-------+

CREATE TABLE empresas (
    nombre_empresa VARCHAR (50) NOT NULL,
    id_empresa INT(3) NOT NULL UNIQUE,
    fecha_creacion DATE NULL,
    telefono_empresa INT (8) NULL,
    area_finanzas VARCHAR (100) NOT NULL,
    PRIMARY KEY (nombre_empresa),
    FOREIGN KEY (area_finanzas) REFERENCES area_finanzas(nombre_area) ON UPDATE CASCADE ON DELETE CASCADE
);
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| nombre_empresa   | varchar(50)  | NO   | PRI | NULL    |       |
| id_empresa       | int(3)       | NO   | UNI | NULL    |       |
| fecha_creacion   | date         | YES  |     | NULL    |       |
| telefono_empresa | int(8)       | YES  |     | NULL    |       |
| area_finanzas    | varchar(100) | NO   | MUL | NULL    |       |
+------------------+--------------+------+-----+---------+-------+

CREATE TABLE lineas (
    nro_linea INT(3) NOT NULL,
    anio_inicio YEAR NULL,
    empresa VARCHAR(50) NOT NULL,
    PRIMARY KEY(nro_linea),
    FOREIGN KEY(empresa) REFERENCES empresas(nombre_empresa) ON UPDATE CASCADE ON DELETE CASCADE
);
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| nro_linea   | int(3)      | NO   | PRI | NULL    |       |
| anio_inicio | year(4)     | YES  |     | NULL    |       |
| empresa     | varchar(50) | NO   | MUL | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

CREATE TABLE internos (    
    num_interno INT(4) NOT NULL,
    linea_interno INT(4) NOT NULL,
    circula BOOLEAN NOT NULL,
    id_infra INT(3) NOT NULL,
    PRIMARY KEY(num_interno),
    FOREIGN KEY(linea_interno) REFERENCES lineas(nro_linea) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(id_infra) REFERENCES infraestructura(id_infra) ON UPDATE CASCADE ON DELETE CASCADE
);
+---------------+------------+------+-----+---------+-------+
| Field         | Type       | Null | Key | Default | Extra |
+---------------+------------+------+-----+---------+-------+
| num_interno   | int(4)     | NO   | PRI | NULL    |       |
| linea_interno | int(4)     | NO   | MUL | NULL    |       |
| circula       | tinyint(1) | NO   |     | NULL    |       |
| id_infra      | int(3)     | NO   | MUL | NULL    |       |
+---------------+------------+------+-----+---------+-------+

CREATE TABLE choferes (
    dni_choferes INT(8) NOT NULL,
    CUIL_choferes BIGINT(11) NOT NULL UNIQUE,
    nombre_choferes VARCHAR(50) NOT NULL,
    es_duenio BOOLEAN NOT NULL,
    horas_semanales INT(2) NOT NULL,
    empresa_choferes VARCHAR(50) NOT NULL,
    num_interno INT(4) NOT NULL,
    PRIMARY KEY(dni_choferes),
    FOREIGN KEY(empresa_choferes) REFERENCES empresas(nombre_empresa) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(num_interno) REFERENCES internos(num_interno) ON UPDATE CASCADE ON DELETE CASCADE
);
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| dni_choferes     | int(8)      | NO   | PRI | NULL    |       |
| CUIL_choferes    | bigint(11)  | NO   | UNI | NULL    |       |
| nombre_choferes  | varchar(50) | NO   |     | NULL    |       |
| es_duenio        | tinyint(1)  | NO   |     | NULL    |       |
| horas_semanales  | int(2)      | NO   |     | NULL    |       |
| empresa_choferes | varchar(50) | NO   | MUL | NULL    |       |
| num_interno      | int(4)      | NO   | MUL | NULL    |       |
+------------------+-------------+------+-----+---------+-------+

CREATE TABLE recibo_sueldo (
    nro_recibo INT(8) NOT NULL,
    fecha_emision DATE NOT NULL,
    sueldo_bruto DOUBLE(7,2) NOT NULL,
    descuento DOUBLE(5,2) NOT NULL,
    sueldo_neto DOUBLE(7,2) NOT NULL,
    DNI_choferes INT(8) NOT NULL,
    nombre_area VARCHAR(100) NOT NULL,
    PRIMARY KEY(nro_recibo),
    FOREIGN KEY(DNI_choferes) REFERENCES choferes(dni_choferes) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(nombre_area) REFERENCES area_finanzas(nombre_area) ON UPDATE CASCADE ON DELETE CASCADE
);
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| nro_recibo   | int(8)       | NO   | PRI | NULL    |       |
| sueldo_bruto | double(7,2)  | NO   |     | NULL    |       |
| descuento    | double(5,2)  | NO   |     | NULL    |       |
| sueldo_neto  | double(7,2)  | NO   |     | NULL    |       |
| DNI_choferes | int(8)       | NO   | MUL | NULL    |       |
| nombre_area  | varchar(100) | NO   | MUL | NULL    |       |
+--------------+--------------+------+-----+---------+-------+

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
    FOREIGN KEY (sube) REFERENCES pasajeros(nro_sube) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (linea) REFERENCES lineas(nro_linea) ON UPDATE CASCADE ON DELETE CASCADE
);
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| nro_boleto   | int(6)       | NO   | PRI | NULL    |       |
| valor_boleto | double(4,2)  | YES  |     | NULL    |       |
| estudiantil  | tinyint(1)   | NO   |     | NULL    |       |
| subsidio     | double(11,2) | YES  |     | NULL    |       |
| fecha        | date         | YES  |     | NULL    |       |
| horario      | time         | YES  |     | NULL    |       |
| sube         | bigint(16)   | NO   | MUL | NULL    |       |
| linea        | int(3)       | NO   | MUL | NULL    |       |
+--------------+--------------+------+-----+---------+-------+

CREATE TABLE ramales (
    nombre_ramal VARCHAR(70) NOT NULL,
    inicio_recorrido VARCHAR(50) NOT NULL,
    terminal VARCHAR(50) NOT NULL,
    linea INT(3) NOT NULL,
    PRIMARY KEY(nombre_ramal),
    FOREIGN KEY(linea) REFERENCES lineas(nro_linea) ON UPDATE CASCADE ON DELETE CASCADE
);
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| nombre_ramal     | varchar(70) | NO   | PRI | NULL    |       |
| inicio_recorrido | varchar(50) | NO   |     | NULL    |       |
| terminal         | varchar(50) | NO   |     | NULL    |       |
| linea            | int(3)      | NO   | MUL | NULL    |       |
+------------------+-------------+------+-----+---------+-------+