/*1. Obtén las ciudades en las que no haya ningún cliente ordenadas por 
nombre.*/
SELECT ciu.nombre FROM CONCE_CIUDAD ciu
WHERE NOT EXISTS (
    SELECT cli.nombre FROM CONCE_CLIENTE cli WHERE cli.ciudad = ciu.nombre)
ORDER BY ciu.nombre;


/*2. Obtén las ciudades distintas en las que haya algún cliente ordenadas por 
nombre.*/
SELECT ciu.nombre FROM CONCE_CIUDAD ciu
WHERE EXISTS (
    SELECT cli.nombre FROM CONCE_CLIENTE cli WHERE cli.ciudad = ciu.nombre)
ORDER BY ciu.nombre;

/*3. Selecciona el nombre de aquellos coches que se hayan vendido en 
concesionarios de Alicante ordenados por nombre.*/
SELECT nombre FROM CONCE_COCHE c
WHERE EXISTS (
    SELECT nombre 
    FROM CONCE_VENTAS v, CONCE_CONCESIONARIO m
    WHERE c.codigo = v.coche AND v.concesionario = m.cif AND m.ciudad = 'Alicante'
)
ORDER BY nombre;


/*4. Visualiza las columnas nombre, apellido y ciudad de los clientes cuyo 
apellido no esté comprendido entre la "B" y la "Q", ordenado por apellido.*/
SELECT nombre, apellido, ciudad FROM CONCE_CLIENTE
WHERE apellido < 'B' OR apellido > 'Q'
ORDER BY apellido;

/*5. Visualiza las columnas nombre, apellido y ciudad de los clientes cuyo 
apellido esté comprendido entre la “B” y la “P”.*/
SELECT nombre, apellido, ciudad FROM CONCE_CLIENTE
WHERE apellido >= 'B' AND apellido <= 'P';

/*6. Visualiza la marca, el nombre y los colores de los coches distintos que 
han sido comprados en agosto de 2019 y cuya marca sea Kia, Seat o BMW ordenado
por marca y nombre del coche.*/
SELECT distinct c.marca, c.nombre, v.color, v.fecha FROM CONCE_COCHE c, CONCE_VENTAS v
WHERE v.fecha BETWEEN to_date('31/07/2019','DD/MM/YYYY') AND to_date('01/09/2019','DD/MM/YYYY')
AND c.marca in ('KIA','Seat','BMW')
ORDER BY c.marca, c.nombre;



