#Crear base de dades
DROP SCHEMA

IF EXISTS videoclub_berzal_perez;
	CREATE SCHEMA hr COLLATE = utf8_general_ci;

USE videoclub_berzal_perez;

#Crear taules
CREATE TABLE pelicula (
	id INT UNSIGNED AUTO_INCREMENT,
	titulo VARCHAR(25),
    productora VARCHAR(25),
    nacionalidad VARCHAR(25),
    fecha DATE NOT NULL,
    director VARCHAR(25),
	PRIMARY KEY (ID),
    CONSTRAINT director_id FOREIGN KEY (director) REFERENCES director(id)
	);
    
CREATE TABLE director (
	id INT UNSIGNED AUTO_INCREMENT,
	titulo VARCHAR(25),
    productora VARCHAR(25),
    nacionalidad VARCHAR(25),
    fecha DATE NOT NULL,
    director VARCHAR(25),
	PRIMARY KEY (ID),
    CONSTRAINT director_id FOREIGN KEY (director) REFERENCES director(id)
	);