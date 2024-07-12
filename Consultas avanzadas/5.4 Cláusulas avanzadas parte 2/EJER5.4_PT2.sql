-- Tablas BD Concesionario

/*1. Visualiza las ventas de todos los concesionarios, incluso aquellos que
no hayan vendido ningún coche, ordenados por número de ventas de
forma descendente y por nombre de concesionario. */
SELECT count(v.concesionario)"Total coches vendidos", c.nombre "Concesionario"
FROM CONCE_VENTAS v
RIGHT JOIN CONCE_CONCESIONARIO c ON c.cif = v.concesionario
GROUP BY c.nombre
ORDER BY 1 DESC, c.nombre;

/*2. Visualiza el número de coches vendidos, incluso para aquellos coches
que no hayan sido vendidos nunca, ordenado descendentemente por
el total de coches y por el coche.*/
SELECT count(*)"Total coches vendidos" ,c.nombre "Coche"
FROM conce_coche c
FULL JOIN conce_ventas v ON v.coche = c.codigo
GROUP BY c.nombre
ORDER BY 1 DESC, 2 ASC;

/*3. Queremos saber el stock total de cada concesionario (es decir, la
cantidad total de coches distribuidos), incluso aquellos que no tengan
stock, ordenado de mayor a menor stock.*/
SELECT c.nombre, sum(d.cantidad) "Stock"
FROM conce_concesionario c
LEFT JOIN conce_distribucion d ON c.cif = d.concesionario
GROUP BY c.nombre
ORDER BY 2 DESC;

-- 4. De la consulta anterior:
/*a. Filtrar aquellos concesionarios que no tengan stock*/
SELECT c.nombre, sum(d.cantidad) "Stock"
FROM conce_concesionario c
LEFT JOIN conce_distribucion d ON c.cif = d.concesionario
WHERE d.cantidad IS NULL
GROUP BY c.nombre
ORDER BY 2 DESC;
/*b. Filtrar aquellos concesionarios cuyo stock sea mayor o igual a 14*/
SELECT c.nombre, sum(d.cantidad) "Stock"
FROM conce_concesionario c
LEFT JOIN conce_distribucion d ON c.cif = d.concesionario
GROUP BY c.nombre
HAVING sum(d.cantidad) >= 14
ORDER BY 2 DESC;


-- Tablas de BD Listas

/*1. Obtén el número de artistas, ordenados por número de artistas de
forma descendente:*/
/*a. Por ciudad, sólo en aquellas en las que haya más de un artista.*/
SELECT count(a.nombreartistico) "Número de artistas" ,a.nom_ciudad
FROM Listas_artista a
GROUP BY a.nom_ciudad
HAVING count(a.nombreartistico) > 1
ORDER BY 1 DESC;

/*b. Por estado o provincia, sólo en aquellos en los que haya más
de un artista.*/
SELECT count(a.nombreartistico) "Número de artistas" ,a.nom_estado_prov
FROM Listas_artista a
GROUP BY a.nom_estado_prov
HAVING count(a.nombreartistico) > 1
ORDER BY 1 DESC;

/*c. Y por país, también sólo en aquellos en los que haya más de un
artista.*/
SELECT count(a.nombreartistico) "Número de artistas" ,a.nom_pais
FROM Listas_artista a
GROUP BY a.nom_pais
HAVING count(a.nombreartistico) > 1
ORDER BY 1 DESC;

/*2. Muestra el nombre del artista y el nombre de la canción, de todos los
artistas independientes que no hayan muerto y que tengan alguna
canción de un género que contenga la palabra “pop”. Usa JOIN.*/
SELECT a.nombreartistico, c.titulo
FROM listas_artista a
JOIN listas_artistaind ai ON a.cod = ai.cod
JOIN listas_cancion c ON a.cod = c.cod_artista
JOIN listas_genero_cancion gc ON c.cod = gc.cod_cancion
JOIN listas_genero g ON gc.cod_genero = g.cod
WHERE g.nombre LIKE '%pop%' AND ai.fmuerte IS NULL;



