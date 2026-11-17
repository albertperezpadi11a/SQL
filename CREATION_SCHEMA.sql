DROP SCHEMA IF EXISTS videoclub_cognom1_cognom2;
CREATE SCHEMA videoclub_cognom1_cognom2 COLLATE = utf8_general_ci;

USE videoclub_cognom1_cognom2;

#Crear taules
CREATE TABLE director (
    id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(35) NOT NULL,
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
    
CREATE TABLE actor (
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
    CONSTRAINT fk_actua_actor FOREIGN KEY (id_actor) REFERENCES actor(id),
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

INSERT INTO socio (dni, nombre, direccion, telefono, avalador) VALUES
('11111111A', 'Marc Puig i Ferrer', 'Carrer Major, 12', '600111111', NULL),
('22222222B', 'Laia Soler i Vila', 'Avinguda Diagonal, 45', '600222222', NULL),
('33333333C', 'Jordi Serra i Martí', 'Carrer de la Pau, 8', '600333333', '11111111A'),
('44444444D', 'Núria Pons i Roca', 'Rambla Nova, 23', '600444444', '22222222B'),
('55555555E', 'Pol Casals i Font', 'Carrer del Carme, 5', '600555555', NULL),
('66666666F', 'Mireia Rovira i Costa', 'Passeig de Gràcia, 88', '600666666', '11111111A'),
('77777777G', 'Arnau Vidal i Bosch', 'Carrer de Sant Antoni, 19', '600777777', '33333333C'),
('88888888H', 'Clàudia Mas i Duran', 'Avinguda de Catalunya, 31', '600888888', NULL),
('99999999J', 'Oriol Prat i Ribas', 'Carrer de la Mercè, 4', '600999999', '55555555E'),
('10101010K', 'Berta Riera i Salvat', 'Plaça de la Vila, 7', '600101010', '22222222B');

INSERT INTO director (id, nombre, nacionalidad) VALUES
(1, 'Carla Simón', 'Espanya'),
(2, 'Isabel Coixet', 'Espanya'),
(3, 'Ventura Pons', 'Espanya'),
(4, 'Steven Spielberg', 'Estats Units'),
(5, 'Christopher Nolan', 'Regne Unit'),
(6, 'Greta Gerwig', 'Estats Units'),
(7, 'Quentin Tarantino', 'Estats Units'),
(8, 'Hayao Miyazaki', 'Japó'),
(9, 'Bong Joon-ho', 'Corea del Sud'),
(10, 'Denis Villeneuve', 'Canadà'),
(11, 'Céline Sciamma', 'França'),
(12, 'Guillermo del Toro', 'Mèxic'),
(13, 'Martin Scorsese', 'Estats Units'),
(14, 'Federico Fellini', 'Itàlia'),
(15, 'James Cameron', 'Canadà'),
(16, 'Robert Zemeckis', 'Estats Units'),
(17, 'Ridley Scott', 'Regne Unit'),
(18, 'Alejandro González Iñárritu', 'Mèxic'),
(19, 'Todd Phillips', 'Estats Units');

INSERT INTO pelicula (id, titulo, productora, nacionalidad, fecha, director) VALUES
(1, 'Titanic', '20th Century Fox', 'Estats Units', '1997-12-19', 15),
(2, 'Inception', 'Warner Bros', 'Estats Units', '2010-07-16', 5),
(3, 'The Dark Knight', 'Warner Bros', 'Estats Units', '2008-07-18', 5),
(4, 'Forrest Gump', 'Paramount Pictures', 'Estats Units', '1994-07-06', 16),
(5, 'Pulp Fiction', 'Miramax Films', 'Estats Units', '1994-10-14', 7),
(6, 'Interstellar', 'Paramount Pictures', 'Estats Units', '2014-11-07', 5),
(7, 'Gladiator', 'DreamWorks Pictures', 'Estats Units', '2000-05-05', 17),
(8, 'The Revenant', '20th Century Fox', 'Estats Units', '2015-12-25', 18),
(9, 'Joker', 'Warner Bros', 'Estats Units', '2019-10-04', 19),
(10, 'The Wolf of Wall Street', 'Paramount Pictures', 'Estats Units', '2013-12-25', 13);

INSERT INTO actor VALUES
(1,'Leonardo DiCaprio', 'Estatunidenca', 'H'),
(2,'Kate Winslet', 'Britànica', 'M'),
(3,'Joseph Gordon-Levitt', 'Estatunidenca', 'H'),
(4,'Christian Bale', 'Britànica', 'H'),
(5,'Heath Ledger', 'Australiana', 'H'),
(6,'Tom Hanks', 'Estatunidenca', 'H'),
(7,'John Travolta', 'Estatunidenca', 'H'),
(8,'Samuel L. Jackson', 'Estatunidenca', 'H'),
(9,'Matthew McConaughey', 'Estatunidenca', 'H'),
(10,'Russell Crowe', 'Neozelandesa', 'H'),
(11,'Joaquin Phoenix', 'Estatunidenca', 'H'),
(12,'Margot Robbie', 'Australiana', 'M'),
(13,'2Jonah Hill', 'Estatunidenca', 'H'),
(14,'Tom Hardy', 'Britànica', 'H'),
(15,'Anne Hathaway', 'Estatunidenca', 'M');

INSERT INTO actua (id_peli, id_actor, personaje) VALUES
(1, 1, 'Jack Dawson'),
(1, 2, 'Rose DeWitt Bukater'),
(2, 1, 'Dom Cobb'),
(2, 3, 'Arthur'),
(2, 15, 'Ariadne'),
(3, 4, 'Bruce Wayne'),
(3, 5, 'Joker'),
(4, 6, 'Forrest Gump'),
(5, 7, 'Vincent Vega'),
(5, 8, 'Jules Winnfield'),
(6, 1, 'Cooper'),
(6, 9, 'Professor Brand'),
(6, 15, 'Murph'),
(7, 10, 'Maximus'),
(8, 1, 'Hugh Glass'),
(8, 14, 'John Fitzgerald'),
(9, 11, 'Arthur Fleck'),
(10, 1, 'Jordan Belfort'),
(10, 12, 'Naomi Lapaglia'),
(10, 13, 'Donnie Azoff');

INSERT INTO ejemplar (numero, id_peli, estado) VALUES
(1 ,1, 'Disponible'),
(2, 3, 'No Disponible'),
(3, 2, 'Disponible'),
(4, 2, 'No Disponible'),
(5, 7, 'Disponible'),
(6, 5, 'Reservado'),
(7, 4, 'Prestado'),
(8, 1, 'Disponible'),
(9, 2, 'Extraviado'),
(10, 7, 'Disponible');

INSERT INTO alquila (dni, numero, id_peli, fecha_alquiler, fecha_devolucion) VALUES
('11111111A', 1, 1, '2026-10-01', '2026-10-04'),
('22222222B', 2, 3, '2026-10-05', '2026-10-08'),
('11111111A', 3, 2, '2026-10-10', '2026-10-13'),
('33333333C', 8, 1, '2026-10-15', '2026-10-18'),
('44444444D', 6, 5, '2026-11-01', '2026-11-05'),
('66666666F', 10, 7, '2026-11-12', NULL),
('77777777G', 9, 2, '2026-11-15', NULL);