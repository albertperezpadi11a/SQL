#Crear base de dades
DROP SCHEMA

IF EXISTS videoclub_berzal_perez;
	CREATE SCHEMA hr COLLATE = utf8_general_ci;

USE videoclub_berzal_perez;

#Crear taules
CREATE TABLE pelicula (
	ID INT UNSIGNED NOT NULL,
	region_name VARCHAR(25),
	PRIMARY KEY (ID)
	);