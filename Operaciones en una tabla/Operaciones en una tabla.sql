--Crear tabla
CREATE TABLE post(
    id_post NUMBER,
    usuario VARCHAR2(20),
    fecha_creacion DATE,
    contenido VARCHAR2(200),
    descripcion VARCHAR2(300),
    PRIMARY KEY (id_post)
);

--se verifica la estructura
DESCRIBE post;

--se inserta 3 post, 2 para pamela y 1 para carlos
INSERT INTO post(id_post, usuario, fecha_creacion, contenido, descripcion) 
VALUES (1,'Pamela', TO_DATE('02-05-2022', 'mm-dd-yyyy'),'Esto es algo','esto es una descripcion');

INSERT INTO post(id_post, usuario, fecha_creacion, contenido, descripcion) 
VALUES (2,'Pamela', TO_DATE('02-05-2022', 'mm-dd-yyyy'),'Esto es algo2','esto es una descripcion2');

INSERT INTO post(id_post, usuario, fecha_creacion, contenido, descripcion) 
VALUES (3,'Carlos', TO_DATE('02-05-2022', 'mm-dd-yyyy'),'Esto es algo3','esto es una descripcion3');

--modificar tabla post
ALTER TABLE post ADD titulo VARCHAR2(30);
DESCRIBE post;

--cargar con valores a titulo
UPDATE post SET titulo = 'titulo 1' WHERE id_post= 1;

SELECT * FROM post;

UPDATE post SET titulo = 'titulo 2' WHERE id_post= 2;

UPDATE post SET titulo = 'titulo 3' WHERE id_post= 3;

--insertar 2 post para Pedro
INSERT INTO post(id_post, usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES (4,'Pedro', TO_DATE('02-05-2022', 'mm-dd-yyyy'),'Esto es algo4','esto es una descripcion4', 'titulo 4');

INSERT INTO post(id_post, usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES (5,'Pedro', TO_DATE('02-05-2022', 'mm-dd-yyyy'),'Esto es algo5','esto es una descripcion5', 'titulo 5');

SELECT
    * FROM post;
    
--Eliminar a Carlos
DELETE FROM post WHERE id_post=3;

--Ingresar un nuevo post de Carlos
INSERT INTO post(id_post, usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES (3,'Carlos', TO_DATE('02-05-2022', 'mm-dd-yyyy'),'Esto es algo3','esto es una descripcion3', 'titulo 3');

--parte 2
--Crear la tabla comentarios

CREATE TABLE coment(
    id_coment NUMBER,
    id_post NUMBER,
    fecha_creacion DATE,
    contenido VARCHAR2(300),
    PRIMARY KEY (id_coment),
    FOREIGN KEY (id_post) REFERENCES post(id_post)
);

-- 2 comentarios de pamela y 4 para carlos
INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (1,1, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'hola');

INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (2,1, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'hola xd');

INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (3,3, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'soy el carlos');

INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (4,3, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'soy el carlos2');

INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (5,3, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'soy el carlos3');

--crear post de margarita
INSERT INTO post(id_post, usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES (6,'Margarita', TO_DATE('02-05-2022', 'mm-dd-yyyy'),'Esto es algo de margarita','esto es una descripcion de margarita', 'titulo margarita');

INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (6,6, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'soy margarita');

INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (7,6, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'soy el margarita1');

INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (8,6, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'soy el margarita2');

INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (9,6, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'soy el margarita3');

INSERT INTO coment(id_coment,id_post, fecha_creacion, contenido) 
VALUES (10,6, TO_DATE('02-05-2022', 'mm-dd-yyyy HH24:MI:SS'),'soy el margarita4');

SELECT
    * FROM post;
    
SELECT
    * FROM coment;


