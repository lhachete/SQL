SET SERVEROUTPUT ON;
-- Funciones
/*1. (1 punto) Define una función para sacar la diferencia de edad (en
años) entre dos fechas. Si la fecha1 que nos pasan (que es la mayor)
es nula, entonces deberemos sustituirla por la fecha actual. */
CREATE OR REPLACE FUNCTION edadEntreFechas (
    fecha1 DATE,
    fecha2 DATE
) RETURN NUMBER
IS
    fechaUno DATE;
    edad NUMBER;
BEGIN
    fechaUno := fecha1;
    
    IF fechaUno IS NULL THEN
        fechaUno := SYSDATE;
    END IF;
    
    
    edad := TRUNC(MONTHS_BETWEEN(fechaUno, fecha2) / 12);
    RETURN edad;
END;


DECLARE
    primeraFecha date := to_date('23/01/2024','DD/MM/YYYY');
    segundaFecha date := to_date('23/10/1997','DD/MM/YYYY');
BEGIN
    DBMS_OUTPUT.PUT_LINE
    ('La diferencia de edad entre las dos fechas es de ' || ABS(edadEntreFechas(primeraFecha,segundaFecha)));
END;

-- Procedimientos
/*2. (1 punto) Crea el procedimiento mostrar, que mostrará por pantalla el
texto que se pase como parámetro, y será usado en el resto de
procedimientos.*/

CREATE OR REPLACE PROCEDURE mostrar (texto varchar2)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE(texto);
END;

DECLARE
BEGIN
    mostrar('Prueba para impresión de texto');
END;

/*3. (1 punto) Crea un procedimiento que modifique la nota de un alumno,
para un módulo y periodo concreto. Como parámetros de entrada
tendremos el DNI del alumno, el código del módulo, el trimestre y la
futura nota.*/

CREATE OR REPLACE PROCEDURE modificarNota(
    DNI varchar2,
    codMod varchar2,
    codTri number,
    futNota number
)  
IS
BEGIN
    UPDATE ciclos_evaluacion
    SET nota = futNota 
    WHERE DNI_ALUMNO = DNI AND codigo_modulo = codMod AND codigo_trimestre = codTri;
    
    mostrar('Nota del alumno modificada');
    mostrar('DNI: ' || DNI || ' - Módulo: ' || codMod || ' - Trimestre: ' || codTri );
END;


DECLARE
BEGIN
     modificarNota('33111118', '0226', 1, 8);

END;
/*4. (1 punto) Crea un procedimiento que inserte la nota de un alumno.
Como parámetros de entrada, tendremos el DNI del alumno, el código
del módulo, el trimestre y la nota. Antes de insertar, se deberá
comprobar si el alumno está matriculado en ese módulo, y así sacará
también el código del ciclo al que pertenece para realizar la inserción.*/
CREATE OR REPLACE PROCEDURE insertarNota(
    DNI varchar2,
    codMod varchar2,
    codTri number
)
IS
    codModulo ciclos_evaluacion.codigo_modulo%type;
    futNota ciclos_evaluacion.nota%type := trunc(dbms_random.value(0, 10), 2);
BEGIN
/*Con esta consulta vemos todos los modulos que tiene el alumno, podria contar
con que si tiene 0 modulos, los datos no serian correctos.
    SELECT count(*)
    FROM ciclos_alumno a
    JOIN ciclos_impartir i ON
        a.CODIGO_CICLO = i.CODIGO_CICLO AND
        a.GRUPO_CURSO = i.GRUPO_CURSO AND
        a.NUMERO_CURSO = i.NUMERO_CURSO
    WHERE a.dni_alumno = '45111133'; */

-- CONSULTA para averiguar si el alumno esta matriculado en modulo y mostrar cod
    SELECT i.codigo_modulo INTO codModulo
    FROM ciclos_alumno a
    JOIN ciclos_impartir i ON
        a.CODIGO_CICLO = i.CODIGO_CICLO AND
        a.GRUPO_CURSO = i.GRUPO_CURSO AND
        a.NUMERO_CURSO = i.NUMERO_CURSO
    WHERE a.dni_alumno = DNI AND i.codigo_modulo = codMod;
    
    INSERT INTO ciclos_evaluacion VALUES (DNI, codMod, codTri, futNota);
    
    mostrar('Nota introducida correctamente: ' || futNota );
END;


DECLARE
BEGIN
    -- Si el modulo, DNI o trimestre no se encuentra, saltará una excepción
    insertarNota('45111133', '0378', 3);
END;

/*5. (2 puntos) Crea un procedimiento que inserte la ciudad de la base de
datos de artistas, teniendo en cuenta que, antes de insertar la ciudad,
deberá insertar el país y el estado. Las tres serán los parámetros del
procedimiento.*/
--Realiza los siguientes casos de prueba: (Mirar imagen)
--commit;
--revoke;
--2 HORAS PARA ESTO, NO PUEDO HACER MÁS.
CREATE OR REPLACE PROCEDURE insertar_ciudad(
    ciud varchar2,
    prov varchar2,
    pais varchar2
)
IS
    siPais NUMBER;
    siProv NUMBER;
    siCiud NUMBER;
    todoSi NUMBER := 0;
BEGIN
    -- Verificar si el país existe
    SELECT count(*) INTO siPais 
    FROM listas_pais 
    WHERE NOMBRE = pais;

    IF siPais = 0 THEN
        INSERT INTO listas_pais (NOMBRE) VALUES (pais);
        todoSi := todoSi +1;
    ELSE
        mostrar('Ya existe el país: ' || pais || ', no se insertará el país.');
    END IF;

    -- Verificar si la provincia/estado existe
    SELECT count(*) INTO siProv
    FROM listas_estado_provincia 
    WHERE NOMBRE = prov AND NOM_PAIS = pais;

    IF siProv = 0 THEN
        INSERT INTO listas_estado_provincia (NOMBRE, NOM_PAIS) VALUES (prov, pais);
        todoSi := todoSi +1;
    ELSE
        mostrar('Ya existe el estado o la provincia: ' || prov || ', no se insertará la provincia/estado.');
    END IF;

    -- Verificar si la ciudad existe
    SELECT count(*) INTO siCiud 
    FROM listas_ciudad 
    WHERE NOMBRE = ciud AND NOM_ESTADO_PROV = prov AND NOM_PAIS = pais;

    IF siCiud = 0 THEN
        INSERT INTO listas_ciudad (NOMBRE, NOM_ESTADO_PROV, NOM_PAIS) VALUES (ciud, prov, pais);
        todoSi := todoSi +1;
    ELSE
        mostrar('Ya existe la ciudad: ' || ciud || ', no se insertará la ciudad.');
    END IF;
    
    IF todoSi = 3 THEN
    mostrar('No existe, se insertará todo. País: ' || pais || ', provincia o estado: ' || prov || ', ciudad: ' || ciud);
    END IF;
END;




DECLARE
BEGIN
    --caso 1. que exista la ciudad.
    insertar_ciudad('España', 'Madrid', 'Madrid');
    --caso 2. que exista la provincia, pero no la ciudad.
    insertar_ciudad('España', 'Madrid', 'Villaverde');
    --caso 3. que exista el pais, pero nada más.
    insertar_ciudad('España', 'Castellón', 'Font den Torres');
    --caso 4. que no exista nada
    insertar_ciudad('Portugal', 'Región de Lisboa', 'Lisboa');
    
END;

/*6. (2 puntos) Crea un procedimiento que descuente un coche de un
concesionario en la tabla conce_distribución. Como parámetro de
entrada nos pasarán el CIF del concesionario y el código del coche.*/
CREATE OR REPLACE PROCEDURE descontarCoche (
    cifConce conce_concesionario.cif%TYPE,
    codCoche conce_coche.codigo%TYPE
) 
IS
    cantidadAct NUMBER;
BEGIN
    -- Busco la cantidad de coches que hay en el concesionario
    SELECT CANTIDAD INTO cantidadAct
    FROM conce_distribucion
    WHERE CONCESIONARIO = cifConce AND COCHE = codCoche;

    -- Si hay coches, descuento uno
    IF cantidadAct > 0 THEN
        UPDATE conce_distribucion SET CANTIDAD = CANTIDAD - 1
        WHERE CONCESIONARIO = cifConce AND COCHE = codCoche;
        mostrar('Se ha descontado un coche '|| codCoche ||' del concesionario ' || cifConce);
    ELSE
        mostrar('No hay coches disponibles para restar.');
    END IF;

END;


DECLARE
BEGIN
    descontarCoche(11111111, 'BMWs1');
END;
/*7. (2 puntos) Crea un procedimiento que inserte un artista, teniendo en
cuenta que como parámetro recibiremos los siguientes (esta vez no quiero nada 
opcional):
a. nombre artístico.
b. ciudad, estado, país (el nombre, y tendremos que buscarla, si
no existe, insertarla).
c. Si es grupo ‘GRUPO’ o artista independiente
‘INDEPENDIENTE’, para saber en qué tabla buscar.
*/
CREATE OR REPLACE PROCEDURE insertarArtista(
    nomArt varchar2,
    ciudad varchar2,
    estado varchar2,
    pais varchar2,
    tipo varchar2)
IS
    codPais NUMBER(4);
    codEstado NUMBER(4);
    codCiudad NUMBER(4);
    codArtista NUMBER(4);
BEGIN
    -- Buscar o insertar pais
    SELECT count(*) INTO codPais FROM listas_pais WHERE NOMBRE = pais;
    IF codPais = 0 THEN
        INSERT INTO listas_pais(NOMBRE) VALUES (pais);
    END IF;

    -- Buscar o insertar estado
    SELECT count(*) INTO codEstado FROM listas_estado_provincia WHERE NOMBRE = estado AND NOM_PAIS = pais;
    IF codEstado = 0 THEN
        INSERT INTO listas_estado_provincia(NOMBRE, NOM_PAIS) VALUES (estado, pais);
    END IF;

    -- Buscar o insertar ciudad
    SELECT count(*) INTO codCiudad FROM listas_ciudad WHERE NOMBRE = ciudad AND NOM_ESTADO_PROV = estado AND NOM_PAIS = pais;
    IF codCiudad = 0 THEN
        INSERT INTO listas_ciudad(NOMBRE, NOM_ESTADO_PROV, NOM_PAIS) VALUES (ciudad, estado, pais);
    END IF;

    -- Insertar artista
    SELECT max(COD) + 1 INTO codArtista FROM listas_artista;
    INSERT INTO listas_artista(COD, nombreArtistico, NOM_CIUDAD, NOM_ESTADO_PROV, NOM_PAIS) VALUES (codArtista, nomArt, ciudad, estado, pais);

    -- Insertar grupo o artistaInd según eligamos
    IF tipo = 'GRUPO' THEN
        INSERT INTO listas_grupo(COD, FCREACION) VALUES (codArtista, SYSDATE);
    ELSIF tipo = 'INDEPENDIENTE' THEN
        INSERT INTO listas_artistaind(COD, nombreReal, FNAC) VALUES (codArtista, nomArt, to_date('23/10/1997','DD/MM/YYYY')); 
    END IF;
    
    mostrar('Se ha insertado a ' || nomArt ||
    ' - Ciudad: ' || ciudad ||
    ' - Estado: ' || estado || 
    ' Pais: ' || pais ||
    ' - Tipo: ' || tipo);
END;

DECLARE
BEGIN
    insertarArtista('Tu Peluquero9', 'Gandía', 'Valencia', 'España', 'INDEPENDIENTE');
END;

