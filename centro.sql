CREATE DATABASE CentroCultural;
USE CentroCultural;
CREATE TABLE epocas(
        Nombre_Epoca VARCHAR (50) NOT NULL,
        genero_Musi VARCHAR (75) NOT NULL,
        Perdiodo DATE NOT NULL, 
        DifCaractRelevantes VARCHAR (100) NOT NULL,
        PRIMARY KEY (Nombre_Epoca)
    );
    
+---------------------+--------------+------+-----+---------+-------+
| Field               | Type         | Null | Key | Default | Extra |
+---------------------+--------------+------+-----+---------+-------+
| Nombre_Epoca        | varchar(50)  | NO   | PRI | NULL    |       |
| genero_Musi         | varchar(75)  | NO   |     | NULL    |       |
| Perdiodo            | date         | NO   |     | NULL    |       |
| DifCaractRelevantes | varchar(100) | NO   |     | NULL    |       |
+---------------------+--------------+------+-----+---------+-------+


    CREATE TABLE generos(
        Nombre_Genero VARCHAR (100) NOT NULL,
        Nom_E VARCHAR (100) NOT NULL,
        Instrumento VARCHAR (15) NOT NULL,
        origenes VARCHAR (70) NOT NULL,
        MusicosAsoc VARCHAR (70) NOT NULL,
        DivCarac VARCHAR (100) NOT NULL,
        PRIMARY KEY (Nombre_Genero),
        FOREIGN KEY (Nom_E) REFERENCES epocas (Nombre_Epoca)
    );
    
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Nombre_Genero| varchar(100) | NO   | PRI | NULL    |       |
| Nom_E        | varchar(100) | NO   | MUL | NULL    |       |
| Instrumento  | varchar(15)  | NO   |     | NULL    |       |
| origenes     | varchar(70)  | NO   |     | NULL    |       |
| MusicosAsoc  | varchar(70)  | NO   |     | NULL    |       |
| DivCarac     | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+


    CREATE TABLE Instrumentos(
        Nombre_Instr VARCHAR (75) NOT NULL,
        creador VARCHAR (50) NOT NULL,
        Materiales VARCHAR (50) NOT NULL,
        foto VARCHAR (50) NOT NULL,
        TipoInstrumento VARCHAR(50) NOT NULL,
        lugarCreacion VARCHAR (100) NOT NULL,
        PRIMARY KEY (Nombre_Instr)
    );
    
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Nombre_Instr    | varchar(75)  | NO   | PRI | NULL    |       |
| creador         | varchar(50)  | NO   |     | NULL    |       |
| Materiales      | varchar(50)  | NO   |     | NULL    |       |
| foto            | varchar(50)  | NO   |     | NULL    |       |
| TipoInstrumento | varchar(50)  | NO   |     | NULL    |       |
| lugarCreacion   | varchar(100) | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+


    CREATE TABLE Genero_Instrumentos(
        Nom_I VARCHAR (50) NOT NULL,
        Rol_instru_gen VARCHAR (50) NOT NULL,
        AnioIntro_Instru_gen DATE,
        NivelDificultad VARCHAR(40) NOT NULL,
        Popularidad VARCHAR (40) NOT NULL,
        FOREIGN KEY (Nom_I) REFERENCES Instrumentos (Nombre_Instr)
    );
    
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| Nom_I               | varchar(50) | NO   | MUL | NULL    |       |
| Rol_instru_gen      | varchar(50) | NO   |     | NULL    |       |
| AnioIntro_Instru_gen| date        | NO   |     | NULL    |       |
| NivelDificultad     | varchar(40) | NO   |     | NULL    |       |
| Popularidad         | varchar(40) | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+


CREATE TABLE Musicos(
        Nombre_musicos VARCHAR (75) NOT NULL,
        fecha_N DATE  NOT NULL,
        fecha_M DATE  NOT NULL,
        PRIMARY KEY (Nombre_musicos)
    );


+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Nombre_musicos| varchar(75) | NO   | PRI | NULL    |       |
| fecha_N       | date        | NO   |     | NULL    |       |
| fecha_M       | date        | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+


CREATE TABLE ObrasFamosas(
        Nombre_ObrasFam VARCHAR (100) NOT NULL,
        musicos_Autores VARCHAR (100) NOT NULL,
        AnioCreacion DATE  NOT NULL,
        Partitura VARCHAR (100) NOT NULL,
        PRIMARY KEY (Nombre_ObrasFam)
    );


+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Nombre_ObrasFam | varchar(100) | NO   | PRI | NULL    |       |
| musicos_Autores | varchar(100) | NO   |     | NULL    |       |
| AnioCreacion    | date         | NO   |     | NULL    |       |
| Partitura       | varchar(100) | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+


CREATE TABLE Genero_ObrasFamosas(
        Nombre_GOF VARCHAR (75) NOT NULL,
        NomUnico_Of VARCHAR (75) NOT NULL,
        NomUnico_G VARCHAR (75) NOT NULL,
        Artista VARCHAR (75) NOT NULL,
        Productor VARCHAR (75) NOT NULL,
        FOREIGN KEY (NomUnico_Of) REFERENCES ObrasFamosas (Nombre_ObrasFam),
        FOREIGN KEY (NomUnico_G) REFERENCES Generos (Nombre_Genero)
    );


+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Nombre_GOF  | varchar(75) | NO   |     | NULL    |       |
| NomUnico_Of | varchar(75) | NO   | MUL | NULL    |       |
| NomUnico_G  | varchar(75) | NO   | MUL | NULL    |       |
| Artista     | varchar(75) | NO   |     | NULL    |       |
| Productor   | varchar(75) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
