USE videoclub_berzal_perez;

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

INSERT INTO actua (id_peli, actor, personaje) VALUES
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

INSERT INTO alquila (dni, id_peli, numero, fecha_alquiler, fecha_devolucion) VALUES
('11111111A', 1, 1, '2026-10-01', '2026-10-04'),
('22222222B', 2, 3, '2026-10-05', '2026-10-08'),
('11111111A', 3, 2, '2026-10-10', '2026-10-13'),
('33333333C', 8, 1, '2026-10-15', '2026-10-18'),
('44444444D', 6, 5, '2026-11-01', '2026-11-05'),
('66666666F', 10, 7, '2026-11-12', NULL),
('77777777G', 9, 2, '2026-11-15', NULL);

INSERT INTO ejemplar (numero, estado) VALUES
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