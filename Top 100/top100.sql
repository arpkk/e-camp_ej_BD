CREATE TABLE pelicula(
    id_pelicula NUMBER,
    pelicula VARCHAR2(100),
    ano_estreno NUMBER,
    director VARCHAR2(30),
    PRIMARY KEY (id_pelicula)
);


CREATE TABLE REPARTO(
    id_pelicula NUMBER,
    actor VARCHAR2(30),
    FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula)
);

--  Obtener el ID de la película “Titanic”.
SELECT id_pelicula FROM PELICULA WHERE pelicula = 'Titanic';

--  Listar a todos los actores que aparecen en la película "Titanic".
SELECT actor FROM REPARTO r INNER JOIN PELICULA p ON r.id_pelicula = p.id_pelicula
WHERE p.pelicula = 'Titanic'
GROUP BY actor
ORDER BY r.actor ASC;

--Consultar en cuántas películas del top 100 participa Harrison Ford
SELECT COUNT(*)  FROM REPARTO where actor = 'Harrison Ford';


--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
SELECT pelicula FROM PELICULA p where p.ano_estreno
BETWEEN 1990 AND 1999
ORDER BY p.pelicula ASC;

--Hacer una consulta SQL que agrupe los títulos con su longitud, la longitud debe ser
--nombrado para la consulta como “longitud_titulo”.
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM pelicula
GROUP BY pelicula;

--Consultar cual es la longitud más grande entre todos los títulos de las películas.
SELECT MAX(LENGTH(pelicula)) as long_max FROM pelicula;
