-- 1. Visualiza “Cantidad”, “Concesionario” y “Coche”, siendo:
/*a. Cantidad: cantidad de coches distribuidos que se corresponde
con la máxima que hay en la tabla.
b. Concesionario: es el nombre del concesionario.
c. Coche: es una columna que contiene la Marca y el nombre del
coche, separados por un espacio*/
SELECT d.cantidad, c.nombre "Concesionario", REPLACE(d.coche, 'KRIO', 'KIA RIO') "Coche"
FROM conce_distribucion d, conce_concesionario c
WHERE c.cif = d.concesionario AND d.cantidad = (SELECT MAX(cantidad) FROM conce_distribucion);


/*2. Necesitamos crear contraseñas web seguras para todos los
concesionarios. ¿Qué tal si cogemos sus nombres y sustituimos las ‘A’
por ‘4’, las ‘E’ por ‘3’, las ‘I’ por ‘1’ las ‘O’ por ‘0’ y las ‘T’ por ‘7’?
Asegúrate para ello que el nombre está en mayúsculas y, si hubiera
algún acento, no sería el mismo carácter, así que no se tiene en
cuenta.*/
SELECT REPLACE(
         REPLACE(
           REPLACE(
             REPLACE(
               REPLACE(UPPER(nombre), 'A', '4'), 
             'E', '3'), 
           'I', '1'), 
         'O', '0'), 
       'T', '7') "Contraseñas"
FROM conce_concesionario;


