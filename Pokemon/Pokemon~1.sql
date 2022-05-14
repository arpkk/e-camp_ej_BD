CREATE TABLE pokemon(
    pokedex NUMBER,
    nombre VARCHAR2(12),
    tipo1 VARCHAR2(12),
    tipo2 VARCHAR2(12),
    PRIMARY KEY (pokedex)
);

CREATE TABLE mis_pokemon(
    pokedex NUMBER,
    fecha_captura DATE,
    lugar VARCHAR2(30),
    huevo CHAR(5),
    peso NUMBER(10,2),
    estatura NUMBER(10,2),
    FOREIGN KEY (pokedex) REFERENCES pokemon(pokedex)
);


SELECT
    * FROM pokemon;
    
SELECT
    * FROM mis_pokemon;
    
--Solo pokemon volador

SELECT
    * FROM pokemon WHERE tipo1= 'volador' OR tipo2='volador';
    
--Solo pokeon que comiencen con n
SELECT
    * FROM pokemon WHERE nombre like 'N%';
    
-- Seleccionar todos los pokemon cuyo id esten entre 7 y 45
SELECT
    * FROM pokemon WHERE pokedex BETWEEN 7 AND 45;
    
-- Seleccionar pokemon que tengan soklo un tipo
SELECT
    * FROM pokemon WHERE tipo2 IS NULL;
    
-- Seleccionar cantidad de los pokemon
SELECT
    COUNT(*) FROM pokemon;  
    
-- Funcion para sumar
SELECT
    SUM(pokedex) FROM pokemon;
    
-- Cantidad total caracteres de toda las columnas nombre
SELECT
    nombre, length(nombre) AS cantidad_caracteres FROM pokemon;
    
-- conocer la suma total de caracteres de los nombres
SELECT
    SUM(length(nombre)) FROM pokemon;
    
-- Mostrar los 50 primeros pokemon y el largo de su nombre siempre y cuando que el nombre empiece con M
SELECT
    nombre, length(nombre) FROM pokemon WHERE ROWNUM <= 50 AND nombre LIKE 'M%';
    
-- GROUP BY

SELECT
    * FROM pokemon;
    
-- agrupar cantidades e pokemon de cada tipo1    
SELECT tipo1 count(*) FROM pokemon GROUP BY tipo1;  

--Nombre de los pokemon que capturate en cada comuna
--inner join interseccion de dos conjuntos
SELECT
    nombre, lugar FROM pokemon p INNER JOIN mis_pokemon mp ON p.pokedex = mp.pokedex GROUP BY nombre, lugar;
    
SELECT
    p.nombre, mp.lugar, mp.fecha_captura FROM pokemon p INNER JOIN mis_pokemon mp ON p.pokedex=mp.pokedex 
    GROUP BY p.nombre, mp.lugar, mp.fecha_captura
    ORDER BY p.nombre ASC;

-- todo pokemon pero no acuaticos
SELECT
    * FROM pokemon where tipo1!='agua' OR tipo2!='agua';
    
CREATE INDEX nombre_nombre_pokemon ON pokemon(nombre);    