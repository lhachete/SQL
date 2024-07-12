--1 Visualiza todos los módulos que contengan tres letras "o" en su interior.
SELECT * 
FROM CICLOS_MODULO m 
WHERE m.nombre_modulo LIKE '%o%o%o%';

--2 Visualiza los nombres y apellidos de alumnos matriculados en 1º de SMR y que hayan nacido después del año 2001 ordenados por nombre.
SELECT a.nombre_alumno,c.abreviatura_ciclo
FROM CICLOS_alumno a, CICLOS_curso c
WHERE a.grupo_curso = c.grupo_curso AND a.codigo_ciclo = c.codigo_ciclo AND a.numero_curso = c.numero_curso
AND UPPER(c.abreviatura_ciclo) LIKE '%1SMR%' 
AND a.fecha_nacimiento_alumno >= to_date('01/01/2001','DD/MM/YYYY') 
ORDER BY a.nombre_alumno;

--3 Muestra los nombres, los apellidos y la fecha de nacimiento de todos aquellos profesores que pertenezcan al mismo departamento 
--que Marta Vidal, ordenados por fecha de nacimiento de forma descendente.
SELECT nombre_profesor, fecha_nacimiento_profesor
FROM CICLOS_profesor 
WHERE departamento = (SELECT departamento FROM CICLOS_profesor WHERE nombre_profesor = 'Marta Vidal') 
ORDER BY fecha_nacimiento_profesor DESC; 

--4 Obtén los datos de los módulos con mayor número de horas que ningún otro módulo.
SELECT * 
FROM CICLOS_modulo 
WHERE numero_horas_totales >= ALL(SELECT numero_horas_totales FROM CICLOS_modulo);

SELECT * FROM ciclos_modulo WHERE numero_horas_totales = (SELECT MAX(numero_horas_totales) FROM ciclos_modulo);


--5 Obtén los datos de los módulos con menor número de horas que ningún otro módulo.
SELECT * 
FROM CICLOS_modulo 
WHERE numero_horas_totales <= ALL(SELECT numero_horas_totales FROM CICLOS_modulo);

SELECT * FROM ciclos_modulo WHERE numero_horas_totales = (SELECT MIN(numero_horas_totales) FROM ciclos_modulo);

--6 Obtén el nombre y apellido de los profesores cuyo jefe de departamento sea Carlos Martín Ruiz.
SELECT p2.nombre_profesor 
FROM CICLOS_profesor p2
WHERE p2.departamento = (SELECT d.codigo_departamento FROM CICLOS_profesor p, CICLOS_departamento d 
                         WHERE d.jefe_departamento = p.dni_profesor AND p.nombre_profesor like '%Carlos Martín Ruiz');
                         
                         

    

-- CONCE
--1 Obtén las ciudades en las que no haya ningún cliente ordenadas por nombre.
SELECT nombre 
FROM CONCE_CIUDAD 
WHERE nombre NOT IN (SELECT ciudad FROM CONCE_CLIENTES) 
ORDER BY nombre;

--2 Obtén las ciudades distintas en las que haya algún cliente ordenadas por nombre.
SELECT DISTINCT ciudad 
FROM CONCE_CLIENTES 
ORDER BY ciudad;


--3 Selecciona el nombre de aquellos coches que se hayan vendido en concesionarios de Alicante ordenados por nombre.
SELECT coches.nombre
FROM conce_coches coches, conce_concesionario concesionario, conce_ventas ventas
WHERE coches.cod = ventas.coche AND concesionario.cif = ventas.cif AND concesionario.ciudad = 'Alicante';


--4 Visualiza las columnas nombre, apellido y ciudad de los clientes cuyo apellido no esté comprendido entre la "B" y la "Q", ordenado por apellido.
SELECT nombre, apellido, ciudad 
FROM CONCE_CLIENTES 
WHERE apellido NOT BETWEEN 'B' and 'Q' 
ORDER BY apellido;


--5 Visualiza las columnas nombre, apellido y ciudad de los clientes cuyo apellido esté comprendido entre la “B” y la “P”.
SELECT nombre, apellido, ciudad 
FROM CONCE_CLIENTES 
WHERE apellido BETWEEN 'B' and 'P';

--6 Visualiza la marca, el nombre y los colores de los coches distintos que han sido comprados en agosto de 2019 y cuya marca sea Kia, Seat o BMW ordenado por marca y nombre del coche .
SELECT DISTINCT marca, nombre, color 
FROM CONCE_COCHES,CONCE_VENTAS
WHERE COD = COCHE 
  AND UPPER(MARCA) IN ('KIA','SEAT','BMW') 
  AND FECHA >= TO_DATE('01/08/2019','DD/MM/YYYY') AND FECHA <= TO_DATE('31/08/2019','DD/MM/YYYY')
ORDER BY marca, nombre;




--LISTAS

--1- Selecciona el nombre artístico, el nombre real y el nombre de la ciudad de los artistas independientes cuyo país sea Estados Unidos.
SELECT a.nombreartistico, i.nombrereal, a.nom_ciudad
FROM LISTAS_ARTISTA a,LISTAS_ARTISTAIND i
WHERE a.cod = i.cod AND a.nom_pais = 'Estados Unidos';


--2 Muestra la posición, el nombre del artista y el nombre de la canción de la lista 7.
SELECT l1.posicion, l3.nombreartistico, l2.titulo
FROM listas_posicion_lista l1, listas_cancion l2, listas_artista l3
WHERE l1.cod_cancion = l2.cod AND l1.cod_lista = 7 AND l3.cod = l2.cod_artista
ORDER BY posicion;


--3 Lista el nombre de todos los géneros ordenados alfabéticamente.
SELECT nombre FROM listas_genero ORDER BY nombre;


--4 Lista el nombre y el género de todas las canciones que tengan como género alguno que contenga en su interior la palabra rock (indistintamente de si está en mayúsculas o minúsculas).
SELECT titulo,l1.nombre 
FROM listas_genero l1,listas_cancion l2, listas_genero_cancion l3
WHERE UPPER(l1.nombre) like '%ROCK%' AND l3.cod_cancion = l2.cod AND l3.cod_genero = l1.cod;


--5 Lista el nombre artístico, la fecha de nacimiento y la fecha de la muerte de los artistas independientes que hayan muerto y que nacieron después de los años 70.
SELECT nombreartistico, fnac, fmuerte 
FROM listas_artistaind l1,listas_artista l2
WHERE l1.cod = l2.cod AND fnac >= '01-01-1970' AND fmuerte IS NOT NULL;



--6 Selecciona el nombre y la fecha de disolución de los grupos que se han disuelto ordenados por fecha de disolución.
SELECT nombreartistico, fdisolucion
FROM listas_artista l1, listas_grupo l2
WHERE l2.fdisolucion IS NOT NULL AND l1.cod = l2.cod
ORDER BY 2;


--7 Obtén el nombre de todos los grupos que se crearon después de la muerte de Elvis Presley ordenado por fecha de creación.
SELECT nombreartistico, fcreacion
FROM listas_Artista l1, listas_grupo l2
WHERE l1.cod = l2.cod AND
fcreacion >(select fmuerte from listas_artista l4, listas_artistaind l5 where l4.cod=l5.cod and l4.nombreartistico = 'Elvis Presley')
ORDER BY fcreacion;

















