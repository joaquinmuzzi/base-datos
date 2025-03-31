CREATE DATABASE Nutricion;
USE Nutricion;

-- Tabla Grupo_Alimento
CREATE TABLE Grupo_Alimento (
    id_grupo_alimento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_grupo_alimento VARCHAR(20) NOT NULL
);

-- Tabla Categoria_Plato
CREATE TABLE Categoria_Plato (
    id_categoria_plato INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria_plato VARCHAR(20) NOT NULL
);

-- Tabla Clasificacion_Comida
CREATE TABLE Clasificacion_Comida (
    id_clasificacion_comida INT AUTO_INCREMENT PRIMARY KEY,
    nombre_clasificacion_comida VARCHAR(20) NOT NULL
);

-- Tabla Dieta
CREATE TABLE Dieta (
    id_dieta INT AUTO_INCREMENT PRIMARY KEY,
    nombre_dieta VARCHAR(20) NOT NULL
);

-- Tabla Alimento
CREATE TABLE Alimento (
    id_alimento INT AUTO_INCREMENT PRIMARY KEY,
    Grupo_Alimento_id_grupo_alimento INT,
    nombre_alimento VARCHAR(20) NOT NULL,
    energia INT,
    agua INT,
    grasas INT,
    carbohidratos_totales INT,
    carbohidratos_disponibles INT,
    fibra_cruda INT,
    fibra_dietaria INT,
    calcio INT,
    fosforo INT,
    hierro INT,
    B_caroteno_equiv_totales INT,
    retinol INT,
    vit_A_equiv_totales INT,
    b1 INT,
    riboflavina INT,
    niacina INT,
    vit_C INT,
    asct INT,
    porcion_neta INT,
    porcion_comestible INT,
    porcentaje_variacion_cocinado INT,
    FOREIGN KEY (Grupo_Alimento_id_grupo_alimento) REFERENCES Grupo_Alimento(id_grupo_alimento)
);

-- Tabla Plato
CREATE TABLE Plato (
    id_plato INT AUTO_INCREMENT PRIMARY KEY,
    Categoria_Plato_id_categoria_plato INT,
    nombre_plato VARCHAR(20) NOT NULL,
    FOREIGN KEY (Categoria_Plato_id_categoria_plato) REFERENCES Categoria_Plato(id_categoria_plato)
);

-- Tabla Comida
CREATE TABLE Comida (
    id_comida INT AUTO_INCREMENT PRIMARY KEY,
    Clasificacion_Comida_id_clasificacion_comida INT,
    nombre_comida VARCHAR(20) NOT NULL,
    FOREIGN KEY (Clasificacion_Comida_id_clasificacion_comida) REFERENCES Clasificacion_Comida(id_clasificacion_comida)
);

-- Tabla Comida_has_Plato (relación muchos a muchos entre Comida y Plato)
CREATE TABLE Comida_has_Plato (
    Comida_id_comida INT,
    Comida_Clasificacion_Comida_id_clasificacion_comida INT,
    Plato_id_plato INT,
    Plato_Categoria_Plato_id_categoria_plato INT,
    PRIMARY KEY (Comida_id_comida, Plato_id_plato),
    FOREIGN KEY (Comida_id_comida) REFERENCES Comida(id_comida),
    FOREIGN KEY (Comida_Clasificacion_Comida_id_clasificacion_comida) REFERENCES Clasificacion_Comida(id_clasificacion_comida),
    FOREIGN KEY (Plato_id_plato) REFERENCES Plato(id_plato),
    FOREIGN KEY (Plato_Categoria_Plato_id_categoria_plato) REFERENCES Categoria_Plato(id_categoria_plato)
);

-- Tabla Dieta_has_Comida (relación muchos a muchos entre Dieta y Comida)
CREATE TABLE Dieta_has_Comida (
    Dieta_id_dieta INT,
    Comida_id_comida INT,
    Comida_Clasificacion_Comida_id_clasificacion_comida INT,
    PRIMARY KEY (Dieta_id_dieta, Comida_id_comida),
    FOREIGN KEY (Dieta_id_dieta) REFERENCES Dieta(id_dieta),
    FOREIGN KEY (Comida_id_comida) REFERENCES Comida(id_comida),
    FOREIGN KEY (Comida_Clasificacion_Comida_id_clasificacion_comida) REFERENCES Clasificacion_Comida(id_clasificacion_comida)
);

-- Tabla Plato_has_Alimento (relación muchos a muchos entre Plato y Alimento)
CREATE TABLE Plato_has_Alimento (
    Plato_id_plato INT,
    Plato_Categoria_Plato_id_categoria_plato INT,
    Alimento_id_alimento INT,
    Plato_Grupo_Alimento_id_grupo_alimento INT,
    cantidad INT,
    PRIMARY KEY (Plato_id_plato, Alimento_id_alimento),
    FOREIGN KEY (Plato_id_plato) REFERENCES Plato(id_plato),
    FOREIGN KEY (Plato_Categoria_Plato_id_categoria_plato) REFERENCES Categoria_Plato(id_categoria_plato),
    FOREIGN KEY (Alimento_id_alimento) REFERENCES Alimento(id_alimento),
    FOREIGN KEY (Plato_Grupo_Alimento_id_grupo_alimento) REFERENCES Grupo_Alimento(id_grupo_alimento)
);
