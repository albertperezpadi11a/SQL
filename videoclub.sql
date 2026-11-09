DROP SCHEMA IF EXISTS videoclub_berzal_perez;
CREATE SCHEMA videoclub_berzal_perez COLLATE = utf8_general_ci;

USE videoclub_berzal_perez;

#Crear taules
CREATE TABLE director (
    id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    nacionalidad VARCHAR(25),
    PRIMARY KEY (id)
);
    
CREATE TABLE pelicula (
    id INT UNSIGNED AUTO_INCREMENT,
    titulo VARCHAR(25) NOT NULL,
    productora VARCHAR(25),
    nacionalidad VARCHAR(25),
    fecha DATE NOT NULL,
    director INT UNSIGNED,
    PRIMARY KEY (id),
    CONSTRAINT fk_pelicula_director FOREIGN KEY (director) REFERENCES director(id)
);
    
CREATE TABLE actores (
    id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    nacionalidad VARCHAR(25),
    sexo CHAR(1) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT chk_sexo CHECK (sexo IN ("H","M"))
);

CREATE TABLE actua (
    id_actor INT UNSIGNED,
    id_peli INT UNSIGNED,
    personaje VARCHAR(25),
    prota CHAR(2) DEFAULT "no",
    PRIMARY KEY (id_actor, id_peli),
    CONSTRAINT fk_actua_actor FOREIGN KEY (id_actor) REFERENCES actores(id),
    CONSTRAINT fk_actua_pelicula FOREIGN KEY (id_peli) REFERENCES pelicula(id),
    CONSTRAINT chk_prota CHECK (prota IN ("sí","no"))
);
    
CREATE TABLE socio (
    dni CHAR(9) NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    direccion VARCHAR(25),
    telefono INT,
    avalador CHAR(9),
    PRIMARY KEY (dni),
    CONSTRAINT fk_socio_avalador FOREIGN KEY (avalador) REFERENCES socio(dni)
);
    
CREATE TABLE ejemplar (
    id_peli INT UNSIGNED,
    numero INT,
    estado VARCHAR(25),
    PRIMARY KEY (id_peli, numero),
    CONSTRAINT fk_ejemplar_pelicula FOREIGN KEY (id_peli) REFERENCES pelicula(id)
);
    
CREATE TABLE alquila (
    dni CHAR(9) NOT NULL,
    id_peli INT UNSIGNED,
    numero INT,
    fecha_alquiler DATE,
    fecha_devolucion DATE,
    PRIMARY KEY (dni, id_peli, numero, fecha_alquiler),
    CONSTRAINT fk_alquila_socio FOREIGN KEY (dni) REFERENCES socio(dni),
    CONSTRAINT fk_alquila_ejemplar FOREIGN KEY (id_peli, numero) REFERENCES ejemplar(id_peli, numero),
    CONSTRAINT chk_fecha_alquiler CHECK (fecha_alquiler <= fecha_devolucion)
);