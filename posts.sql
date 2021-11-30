--Parte 1, crear tabla con el nombre "post", con los atributos id, nombre de usuario, fecha de creación, contenido y descripción
CREATE TABLE post(
	id SERIAL,
	nombre_usuario VARCHAR(25),
	fecha_creacion DATE,
	contenido VARCHAR(255),
	descripcion VARCHAR(255)
);

SELECT * FROM posts;

-- Parte 1, Insertar 3 post, 2 para el usuario "Pamela" y 1 para el usuario "Carlos"
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES(
	'Pamela',
	'12-11-2021',
	'Análisis de datos',
	'Poder analizar eventos de microsueños efectivos'
);

INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES(
	'Pamela',
	'16-11-2021',
	'Analítica Predictiva',
	'Análisis que nos ayude a predecir los EMS'
);

INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES(	
	'Carlos',
	'21-11-2021',
	'JavaScript',
	'Trabajar con Herencias'
);

SELECT * FROM posts;

--Parte 1, Modificar la tabla "post" agregando una nueva columna llamada "titulo"
ALTER TABLE post ADD titulo VARCHAR(25);

SELECT * FROM posts;

--Parte 1, Agregar titulo a las publicaciones ya ingresadas
UPDATE post SET titulo = 'DataScience' WHERE nombre_usuario = 'Pamela';
UPDATE post SET titulo = 'FullStack JavaScript' WHERE nombre_usuario = 'Carlos';

SELECT * FROM posts;

--Parte 1, Insertar 2 psot para el usuario "Pedro"
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES(
	'Pedro',
	'19-11-2021',
	'Triangulo de Exposición',
	'Veremos las tres variables para una correcta exposición',
	'Fotografía de Paisaje'
);

INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES(
	'Pedro',
	'26-11-2021',
	'Encuadre',
	'veremos el perfecto encuadro y sus tipos para fotografía de paisaje',
	'Fotografía de Paisaje'
);

SELECT * FROM posts;

-- Parte 1, Eliminar el post de Carlos
DELETE FROM post WHERE nombre_usuario = 'Carlos';

SELECT * FROM posts;

-- Parte 1, Ingresar un nuevo post para el ususario "Carlos"
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES(
	'Carlos',
	'28-11-2021',
	'JavaScript',
	'Trabajar con las clases',
	'Fullstack JavaScript'
);

SELECT * FROM posts;

-- Parte 2, Crear una tabla llamada "comentarios", con los atributos id, fecha, hora de creacion y contenido que se relacione con la tabla "posts"
ALTER TABLE post ADD PRIMARY KEY(id);

CREATE TABLE comentarios(
	id SMALLINT,
	fecha DATE,
	hora_creacion TIME,
	contenido VARCHAR(255)
);

ALTER TABLE comentarios ADD FOREIGN KEY(id) REFERENCES post(id);

SELECT * FROM comentarios;

--Parte 2, Crear 2 comentarios para Pamela y 4 comentarios para Carlos
INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	2,
	'17-11-2021',
	'17:00:35',
	'Qué modelo predectivos de pueden aplicar?'
);

INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	1,
	'15-11-2021',
	'10:11:28',
	'¿Cuáles son las mejores herramientas para análisis de datos?'
);

INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	6,
	'28-11-2021',
	'08:35:00',
	'¿Cómo se puede vincular la clases hijos al padre?'
);

INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	6,
	'28-11-2021',
	'11:45:21',
	'¿A los getter seimpre funcionan con el return?'
);

INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	6,
	'28-11-2021',
	'17:59:19',
	'¿La función "super" solo se aplica al realizar un extends?'
);

INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	6,
	'29-11-2021',
	'09:29:10',
	'Si existe un atributo adicional en el hijo y no entra en al "super", ¿se debe crear en un "this"?'
);

SELECT * FROM comentarios;

--Parte 2, Crear un nuevo post para "Margarita"
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES(
	'Margarita',
	'29-11-2021',
	'Metodología Ágil',
	'Los elementos y metodologías de la agilidad',
	'Scrum Master'
);

SELECT * FROM posts;

--Parte 2, Crear 5 comentarios para el post "Margarita"
INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	7,
	'29-11-2021',
	'08:20:11',
	'¿Cómo aplicar una cultura ágil en una empresa que no acostumbra?'
);

INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	7,
	'29-11-2021',
	'10:56:47',
	'¿Es siempre necesario un Scrum Master en una empresa ágil?'
);

INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	7,
	'29-11-2021',
	'12:47:04',
	'¿cada céclula de trabajo debe manejar su propio PO o un mismo PO puede estar en más de una célula?'
);

INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	7,
	'29-11-2021',
	'14:32:46',
	'¿Cuál es el mínimo en tiempo el desarrollo de un Sprint?'
);

INSERT INTO comentarios (id, fecha, hora_creacion, contenido) VALUES(
	7,
	'29-11-2021',
	'16:29:01',
	'¿Cómo se puede ir midiendo la velocidad de los desarrolladores?, ¿La metodología de scrum poker es útil?'
);

SELECT * FROM comentarios;
