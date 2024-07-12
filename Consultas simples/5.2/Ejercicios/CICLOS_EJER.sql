/*1. De la tabla de profesores, realiza una sentencia SELECT que obtenga
la siguiente salida: NOMBRE, FNACIMIENTO, FECHA_FORMATEADA, donde FECHA_FORMATEADA tiene el
siguiente formato: “Nació el 12 de abril de 1992”.
Nota: es importante que no haya más de un espacio entre las palabras.*/
SELECT NOMBRE_PROFESOR "NOMBRE", FECHA_NACIMIENTO_PROFESOR "FNACIMIENTO",
to_char(FECHA_NACIMIENTO_PROFESOR, '"Nació el "DD "de" Month "de" YYYY')
"FECHA_FORMATEADA" FROM CICLOS_PROFESOR;

/*2. Muestra el “Nombre Completo” y la “Edad” de aquellos profesores que
están cerca de jubilarse, es decir, que tienen más de 55 años. Nombre
completo se refiere al nombre y apellidos en una misma columna
separados por un solo espacio.*/
SELECT NOMBRE_PROFESOR, TRUNC(MONTHS_BETWEEN(SYSDATE, fecha_nacimiento_profesor)/12) "Edad"
FROM CICLOS_PROFESOR WHERE TRUNC(MONTHS_BETWEEN(SYSDATE, fecha_nacimiento_profesor)/12)>55 ;

/*3. Realiza las siguientes consultas:*/
/*a. Muestra la longitud máxima del nombre de los módulos*/
SELECT  MAX(LENGTH (NOMBRE_MODULO)) FROM CICLOS_MODULO ;
/*b. Muestra el nombre de los módulos de la siguiente forma, que al
menos tengan un asterisco detrás:*/
SELECT RPAD(NOMBRE_MODULO, 56, '*') "Módulos" FROM CICLOS_MODULO ;


/*4. Muestra el nombre y apellidos del profesor, la antigüedad y el salario,
teniendo en cuenta que el sueldo base de un profesor 2000 € y, por
cada trienio 46 € más, y que los trienios se miden por años completos.
Ordénalo por salario, descendentemente. Además, si la antigüedad es
nula, deberá mostrarse el sueldo base.*/
SELECT nombre_profesor, antig, NVL(2000 + (FLOOR(antig / 3) * 46), '2000') "Salario"
FROM ciclos_profesor order by "Salario" desc;

/*5. Basándote en la consulta anterior, muestra el máximo, el mínimo y el
salario medio de los profesores de la tabla, éste último con dos
decimales.*/

SELECT max(NVL(2000 + (FLOOR(antig / 3) * 46), '2000')) "Salario Max",
min(NVL(2000 + (FLOOR(antig / 3) * 46), '2000')) "Salario Min",
trunc(avg(NVL(2000 + (FLOOR(antig / 3) * 46), '2000')),2) "Salario Medio"
FROM ciclos_profesor;

/*Función con ayuda de internet, se que no se ha visto en clase pero se está
haciendo una subconsulta para tener ya el salario de cada profesor y así utilizar
las funciones de min, max y avg*/
