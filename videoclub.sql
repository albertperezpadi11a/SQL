#Crear base de dades
DROP SCHEMA

IF EXISTS videoclub_berzal_perez;
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
    CONSTRAINT director_id FOREIGN KEY (director) REFERENCES director(id)
	);
	
CREATE TABLE actores (
	id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    nacionalidad VARCHAR(25),
    sexo CHAR(1) NOT NULL,
    CONSTRAINT chk_sexo CHECK (sexo IN ("H","M"))
    );

CREATE TABLE actua (
	actor INT UNSIGNED AUTO_INCREMENT,
    id_peli INT UNSIGNED AUTO_INCREMENT,
    personaje VARCHAR(25),
    prota CHAR(2) DEFAULT "no",
    PRIMARY KEY (id_actor, id_peli),
    CONSTRAINT id_actor FOREIGN KEY (actor) REFERENCES actores(id),
    CONSTRAINT peli FOREIGN KEY (id_peli) REFERENCES pelicula(id),
    CONSTRAINT chk_prota CHECK (prota IN ("sí","no"))
    );
    
CREATE TABLE socio (
	dni CHAR(9) NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    direccion VARCHAR(25),
    telefono INT,
    avalador CHAR(9),
    PRIMARY KEY(dni),
    CONSTRAINT avala FOREIGN KEY (avalador) REFERENCES socio(dni)
    );
    
CREATE TABLE ejemplar (
    id_peli INT UNSIGNED AUTO_INCREMENT,
    numero INT,
    estado VARCHAR(25),
    PRIMARY KEY (id_peli, numero),
    CONSTRAINT peli FOREIGN KEY (id_peli) REFERENCES pelicula(id)
    );
    
CREATE TABLE alquila (
	dni CHAR(9) NOT NULL,
    id_peli INT UNSIGNED AUTO_INCREMENT,
    numero INT,
    fecha_alquiler DATE,
    fecha_devolucion DATE,
    PRIMARY KEY (dni, id_peli, numero, fecha_alquiler),
    CONSTRAINT dni_socio FOREIGN KEY (dni) REFERENCES socio(dni),
    CONSTRAINT peli FOREIGN KEY (id_peli) REFERENCES ejemplar(id_peli),
    CONSTRAINT numero_ejemplar FOREIGN KEY (numero) REFERENCES ejemplar(numero),
    CONSTRAINT chk_fecha_alquiler CHECK (fecha_alquiler <= fecha_devolucion)
    );