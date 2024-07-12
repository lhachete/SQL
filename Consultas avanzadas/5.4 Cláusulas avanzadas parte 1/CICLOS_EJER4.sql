/*1. Selecciona aquellos módulos que estén repetidos en más de un ciclo y
el número de veces que se repiten, ordenados por nombre.*/

SELECT COUNT(*) "Repeticiones", m.nombre_modulo 
FROM ciclos_modulo m
JOIN ciclos_impartir i ON m.codigo_modulo = i.codigo_modulo
GROUP BY m.nombre_modulo
HAVING COUNT(*) > 1
ORDER BY m.nombre_modulo;

/*2. Obtén el número de alumnos matriculados en cada curso (usa JOIN si
hay más de una tabla) y, además, el nombre de su tutor. Ten en
cuenta que, si el curso no tiene tutor, también deberá salir. Ordena por
curso.*/

SELECT count(a.dni_alumno) "Nº Alumnos", c.abreviatura_ciclo "Curso", p.nombre_profesor "Tutor"
FROM ciclos_curso c
LEFT JOIN ciclos_alumno a ON c.codigo_ciclo = a.codigo_ciclo AND c.numero_curso = a.numero_curso AND c.grupo_curso = a.grupo_curso
LEFT JOIN ciclos_profesor p ON c.tutor_curso = p.dni_profesor
GROUP BY c.abreviatura_ciclo, p.nombre_profesor
ORDER BY 2;

/*3. De cada departamento, muestra a su jefe y el nº de profesores que
tiene. Usa JOIN.*/

SELECT d.nombre_departamento "Departamento", ltrim(p1.nombre_profesor) "Jefe", count(p2.dni_profesor) "NºProfesores"
FROM ciclos_departamento d
JOIN ciclos_profesor p1 ON p1.dni_profesor = d.jefe_departamento
JOIN ciclos_profesor p2 ON p2.departamento = d.codigo_departamento
GROUP BY d.nombre_departamento, p1.nombre_profesor
ORDER BY 1;

/*4. Muestra la descripción del ciclo y cuántos alumnos hay matriculados en cada
ciclo (no en cada curso).*/

SELECT c.descripcion, count(a.codigo_ciclo) "Alumnos matriculados"
FROM ciclos_ciclo c
JOIN ciclos_alumno a ON c.codigo_ciclo = a.codigo_ciclo
GROUP BY c.descripcion
ORDER BY 1;
