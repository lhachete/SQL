/*1. Visualiza todos los módulos que contengan tres letras "o" en su 
interior.*/
SELECT nombre_modulo from ciclos_modulo where nombre_modulo LIKE '%o%o%o%';

/*2. Visualiza los nombres y apellidos de alumnos matriculados en 1º de SMR y 
que hayan nacido después del año 2001, ordenados por nombre.*/
SELECT DISTINCT a.nombre_alumno, a.fecha_nacimiento_alumno 
FROM CICLOS_ALUMNO a, CICLOS_CURSO c 
WHERE a.numero_curso =c.numero_curso 
    AND a.fecha_nacimiento_alumno >= to_date('01/01/2001','DD/MM/YYYY') 
    AND c.abreviatura_ciclo LIKE '1SMR%'
ORDER BY a.nombre_alumno;

/*3. Muestra los nombres, los apellidos y la fecha de nacimiento de todos 
aquellos profesores que pertenezcan al mismo departamento que Marta Vidal, 
ordenados por fecha de nacimiento de forma descendente.*/
SELECT nombre_profesor, fecha_nacimiento_profesor 
FROM CICLOS_PROFESOR WHERE departamento IN (SELECT departamento FROM ciclos_profesor WHERE nombre_profesor = 'Marta Vidal')
ORDER BY fecha_nacimiento_profesor DESC;

/*4. Obtén los datos de los módulos con mayor número de horas que ningún 
otro módulo.*/
SELECT CODIGO_MODULO ,NOMBRE_MODULO, NUMERO_HORAS_TOTALES 
FROM CICLOS_MODULO 
WHERE numero_horas_totales = (SELECT MAX(numero_horas_totales) FROM CICLOS_MODULO);

/*5. Obtén los datos de los módulos con menor número de horas que ningún 
otro módulo.*/
SELECT CODIGO_MODULO ,NOMBRE_MODULO, NUMERO_HORAS_TOTALES 
FROM CICLOS_MODULO 
WHERE numero_horas_totales = (SELECT min(numero_horas_totales) FROM CICLOS_MODULO);

/*6. Obtén el nombre y apellido de los profesores cuyo jefe de departamento 
sea Carlos Martín Ruiz.*/
SELECT nombre_profesor, fecha_nacimiento_profesor 
FROM CICLOS_PROFESOR WHERE departamento 
IN (SELECT departamento FROM ciclos_profesor WHERE LTRIM(nombre_profesor) = 'Carlos Martín Ruiz');
