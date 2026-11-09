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
    
