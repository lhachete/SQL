/*1. Selecciona el nombre artístico, el nombre real y el nombre de la ciudad
de los artistas independientes cuyo país sea Estados Unidos.*/
SELECT a1.nombreartistico, a2.nombrereal, a1.nom_ciudad
FROM LISTAS_ARTISTA a1, LISTAS_ARTISTAIND a2
WHERE a1.nom_pais = 'Estados Unidos' and a1.cod=a2.cod;


/*2. Muestra la posición, el nombre del artista y el nombre de la canción de 
la lista 7.*/
SELECT pl.posicion, a.nombreartistico ,c.titulo
FROM listas_posicion_lista pl, listas_cancion c, listas_artista a
WHERE cod_lista = 7 AND pl.cod_cancion=c.cod AND a.cod=c.cod_artista;

/*3. Lista el nombre de todos los géneros ordenados alfabéticamente.*/
SELECT Nombre FROM LISTAS_GENERO order by nombre ASC;

/*4. Lista el nombre y el género de todas las canciones que tengan como género
alguno que contenga en su interior la palabra rock (indistintamente de si está
en mayúsculas o minúsculas).*/
SELECT c.titulo, g.nombre
FROM listas_cancion c, listas_genero g, listas_genero_cancion gc
WHERE c.cod = gc.cod_cancion AND gc.cod_genero = g.cod
AND lower(g.nombre) LIKE '%rock%' or UPPER(g.nombre) LIKE '%rock%';
-- listas_cancion(cod) = (cod_cancion)listas_genero_cancion(cod_genero) = (cod)listas_genero 

/*5. Lista el nombre artístico, la fecha de nacimiento y la fecha de la muerte
de los artistas independientes que hayan muerto y que nacieron después de los
años 70.*/
SELECT a1.nombreartistico, a2.fnac, a2.fmuerte
FROM listas_artista a1, listas_artistaind a2
WHERE a2.cod = a1.cod AND a2.fmuerte IS NOT NULL
AND a2.fnac >= to_date ('01/01/1970','DD/MM/YYYY');

/*6. Selecciona el nombre y la fecha de disolución de los grupos que se han
disuelto ordenados por fecha de disolución.*/
SELECT a.nombreartistico, g.fdisolucion
FROM LISTAS_ARTISTA a, LISTAS_GRUPO g
WHERE g.cod = a.cod AND g.fdisolucion IS NOT NULL
ORDER BY g.fdisolucion;


/*7. Obtén el nombre de todos los grupos que se crearon después de la muerte
de Elvis Presley ordenado por fecha de creación.*/
SELECT a1.nombreartistico, g.fcreacion
FROM LISTAS_ARTISTA a1, LISTAS_GRUPO g
WHERE g.cod = a1.cod
AND g.fcreacion > (SELECT fmuerte FROM listas_artistaind WHERE nombrereal Like 'Elvis%')
ORDER BY g.fcreacion;

