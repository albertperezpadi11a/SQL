USE videoclub_berzal_perez;

INSERT INTO PELICULA (id, titulo, productora, nacionalidad, fecha) VALUES
(1, 'Titanic', '20th Century Fox', 'Estats Units', '1997-12-19'),
(2, 'Inception', 'Warner Bros', 'Estats Units', '2010-07-16'),
(3, 'The Dark Knight', 'Warner Bros', 'Estats Units', '2008-07-18'),
(4, 'Forrest Gump', 'Paramount Pictures', 'Estats Units', '1994-07-06'),
(5, 'Pulp Fiction', 'Miramax Films', 'Estats Units', '1994-10-14'),
(6, 'Interstellar', 'Paramount Pictures', 'Estats Units', '2014-11-07'),
(7, 'Gladiator', 'DreamWorks Pictures', 'Estats Units', '2000-05-05'),
(8, 'The Revenant', '20th Century Fox', 'Estats Units', '2015-12-25'),
(9, 'Joker', 'Warner Bros', 'Estats Units', '2019-10-04'),
(10, 'The Wolf of Wall Street', 'Paramount Pictures', 'Estats Units', '2013-12-25');

INSERT INTO ACTOR VALUES
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

INSERT INTO ACTUA (id_peli, actor, personaje) VALUES
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

INSERT INTO DIRECTOR (id, nombre, nacionalidad) VALUES
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
(14, 'Federico Fellini', 'Itàlia');