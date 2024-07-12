-- Tablas BD Ciclos Formativos

/* 1. De la tabla de profesores, realiza una sentencia SELECT que obtenga la siguiente salida: NOMBRE, FNACIMIENTO, FECHA_FORMATEADA, donde FECHA_FORMATEADA tiene el siguiente formato:
“Nació el 12 de abril de 1992”.
Nota: es importante que no haya más de un espacio entre las palabras.*/
SELECT nombre_profesor, fecha_nacimiento_profesor, 
TO_CHAR(fecha_nacimiento_profesor, '"Nació el" dd "de" fmmonth "de" yyyy') "FECHA_FORMATEADA" 
FROM ciclos_profesor;

--Otra solución
SELECT nombre_profesor, fecha_nacimiento_profesor, 
CONCAT('Nació el ', CONCAT(TO_CHAR(fecha_nacimiento_profesor,'dd'),concat(' de ',
CONCAT(trim(TO_CHAR(fecha_nacimiento_profesor,'month')),CONCAT(' de ',TO_CHAR(fecha_nacimiento_profesor,'yyyy')))))) "FECHA_FORMATEADA" 
FROM ciclos_profesor;


/* 2. Muestra el “Nombre Completo” y la “Edad” de aquellos profesores que
están cerca de jubilarse, es decir, que tienen más de 55 años. Nombre
completo se refiere al nombre y apellidos en una misma columna
separados por un solo espacio. */
SELECT TRIM(nombre_profesor) "Nombre completo", 
TRUNC(MONTHS_BETWEEN(SYSDATE, fecha_nacimiento_profesor)/12, 0) "Edad" 
FROM ciclos_profesor 
WHERE TRUNC(MONTHS_BETWEEN(SYSDATE, fecha_nacimiento_profesor)/12, 0) > 55;


--Otra solución
SELECT TRIM(nombre_profesor) "Nombre completo", TO_NUMBER(TO_CHAR(TO_DATE(Sysdate),'YYYY')) - TO_NUMBER(TO_CHAR(TO_DATE(fecha_nacimiento_profesor),'YYYY')) "Edad" 
FROM ciclos_profesor
WHERE 55 < TO_NUMBER(TO_CHAR(TO_DATE(Sysdate),'YYYY')) - TO_NUMBER(TO_CHAR(TO_DATE(fecha_nacimiento_profesor),'YYYY'));  


/*3. Realiza las siguientes consultas: */
-- a. Muestra la longitud máxima del nombre de los módulos
SELECT MAX(LENGTH(nombre_modulo)) FROM ciclos_modulo;

-- b. Muestra el nombre de los módulos de la siguiente forma, que al menos tengan un asterisco detrás:
SELECT RPAD(nombre_modulo, 60, '*') "Módulos" FROM ciclos_modulo;

--Otra solución
SELECT RPAD(nombre_modulo,( select max(length(nombre_modulo)) from ciclos_modulo), '*') "Módulos" FROM ciclos_modulo;

/*4. Muestra el nombre y apellidos del profesor, la antigüedad y el salario,
teniendo en cuenta que el sueldo base de un profesor 2000 € y, por
cada trienio 46 € más, y que los trienios se miden por años completos.
Ordénalo por salario, descendentemente. Además, si la antigüedad es
nula, deberá mostrarse el sueldo base.*/
SELECT nombre_profesor, NVL(antig,0) "Antigüedad", 2000 + ( 46 * ( TRUNC( NVL(antig,0) / 3 ) ) ) "Salario" 
FROM ciclos_profesor 
ORDER BY 2 DESC;


/* 5. Basándote en la consulta anterior, muestra el máximo, el mínimo y el
salario medio de los profesores de la tabla, éste último con dos
decimales.*/
SELECT MAX((2000+(46*TRUNC(NVL(antig,0)/3)))) "Máx Salario", MIN((2000+(46*TRUNC(NVL(antig,0)/3)))) "Mín Salario", TRUNC(AVG((2000+(46*trunc(NVL(antig,0)/3)))),2) "Salario Medio" 
FROM ciclos_profesor;



-- Tablas BD Concesionario
/*1. Visualiza “Cantidad”, “Concesionario” y “Coche”, siendo:
a. Cantidad: cantidad de coches distribuidos que se corresponde con la máxima que hay en la tabla.
b. Concesionario: es el nombre del concesionario.
c. Coche: es una columna que contiene la Marca y el nombre del coche, separados por un espacio. */

SELECT d.cantidad, c.nombre "Concesionario", CONCAT(co.marca, CONCAT(' ', co.nombre)) "Coche"
FROM conce_distribucion d, conce_concesionario c, conce_coches co 
WHERE d.cif = c.cif 
      AND d.coche = co.cod 
      AND cantidad = (select max(cantidad) from conce_distribucion);


/* 2. Necesitamos crear contraseñas web seguras para todos los
concesionarios. ¿Qué tal si cogemos sus nombres y sustituimos las ‘A’
por ‘4’, las ‘E’ por ‘3’, las ‘I’ por ‘1’ las ‘O’ por ‘0’ y las ‘T’ por ‘7’?
Asegúrate para ello que el nombre está en mayúsculas y, si hubiera
algún acento, no sería el mismo carácter, así que no se tiene en
cuenta.*/
SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER(nombre),'A','4'),'E','3'),'I','1'),'O','0'),'T','7') "contraseña" FROM conce_concesionario;


--Tablas de BD Listas
/*1. De los artistas, 
visualiza el nombre artístico, 
el último carácter del nombre artístico que no sea blanco y 
el número de caracteres del nombre artístico (sin contar los blancos de la derecha) 
ordenados por el nombre artístico, 
de aquellos artistas que empiecen por J.*/
SELECT nombreartistico, SUBSTR(RTRIM(nombreartistico), -1, 1) "Último caracter", LENGTH(RTRIM(nombreartistico)) "Longitud" 
FROM listas_artista 
WHERE nombreartistico LIKE 'J%' 
ORDER BY nombreartistico;

/*2. Muestra el nombre artístico de todos los artistas individuales que ya no están entre nosotros, 
y la edad a la que murieron 
ordenado por edad.*/
SELECT nombreartistico,  TRUNC(months_between(fmuerte,fnac)/12) "Edad a la que murió"
FROM listas_Artista l1, listas_artistaind l2
WHERE l1.cod = l2.cod AND fmuerte IS NOT NULL
ORDER BY 2;


