/*1. (0.5 puntos) Crea una tabla de antiguos profesores, con los mismos datos que
ya existen en la tabla de profesores. (Recuerda el prefijo ciclos).*/
CREATE TABLE ciclos_antiguos_profesores (
	dni_profesor number(10) PRIMARY KEY,
	nombre_profesor VARCHAR2(30) NOT NULL,
	email_profesor VARCHAR2(80),
	telefono_profesor NUMBER(10),
	fecha_nacimiento_profesor DATE,
	departamento NUMBER(10),
	antig NUMBER(2)
);

/*2. (1 punto) Crea un trigger que, al eliminar un profesor de la tabla de profesores,
lo inserte en la tabla antiguos profesores.*/

CREATE OR REPLACE TRIGGER eliminarProfesorYGuardar
	BEFORE DELETE ON ciclos_profesor
FOR EACH ROW
BEGIN
	INSERT INTO ciclos_antiguos_profesores(dni_profesor, nombre_profesor, email_profesor, telefono_profesor,fecha_nacimiento_profesor, departamento)
	VALUES (:old.dni_profesor, :old.nombre_profesor, :old.email_profesor, :old.telefono_profesor, :old.fecha_nacimiento_profesor, :old.departamento);
	mostrar('Profesor eliminado y añadido a la la tabla antiguos profesores: ' || :old.dni_profesor);
END;

BEGIN
	DELETE FROM CICLOS_impartir WHERE dni_profesor = 11111140;
	DELETE FROM CICLOS_profesor WHERE dni_profesor = 11111140;
END;


/*3. (0.5 puntos) Crea una tabla llamada conce_audit_cliente que contenga:
a. El código de auditoría que será la clave primaria.
b. El código del cliente
c. Una descripción
d. Una fecha de actualización*/
CREATE TABLE conce_audit_cliente (
	cod_aud NUMBER(8) PRIMARY KEY,
	cod_cli NUMBER(8),
	descripcion VARCHAR(255),
	fecha_de_actualizacion DATE
);

/*4. (1 punto) Crea un procedimiento insertar_audit_cliente2 que inserte los datos en
la tabla anterior y donde la fecha es opcional (si no ponemos nada insertará la
fecha del sistema).*/

CREATE OR REPLACE PROCEDURE insertar_audit_cliente2(
	p_cod_cli NUMBER,
    p_descripcion VARCHAR2,
	p_fecha_de_actualizacion DATE DEFAULT SYSDATE
)
IS
    new_cod_aud NUMBER;
BEGIN
    -- Asi obtengo el próximo codigo para que no hayan errores con la PK
    -- Uso NVL para que en caso de no haya aún un codigo se asigne el 0.
    SELECT NVL(MAX(cod_aud), 0) + 1 INTO new_cod_aud FROM conce_audit_cliente;

	INSERT INTO
    conce_audit_cliente (cod_aud, cod_cli, descripcion, fecha_de_actualizacion)
	VALUES (new_cod_aud, p_cod_cli, p_descripcion, p_fecha_de_actualizacion);
END;

    --Prueba de inserción
BEGIN
    insertar_audit_cliente2(11223344, 'SiTuTeVas' );
END;

/*5. (1 punto) Crea un disparador que se ejecute antes del borrado en la tabla de
clientes y que guarde en la tabla audit_cliente el código del cliente que se ha
borrado, la fecha actual y la siguiente descripción: ‘Borrado del cliente
{cod} : {nombre apellidos} de la ciudad :{ciudad}’.*/
CREATE OR REPLACE TRIGGER antesDeBorrarClienteGuardar
    BEFORE DELETE ON conce_cliente
    FOR EACH ROW
DECLARE
    new_cod_aud NUMBER;
BEGIN   
    -- lo mismo que antes, para obtener la siguiente PK de la tabla
    SELECT NVL(MAX(cod_aud), 0) + 1 INTO new_cod_aud FROM conce_audit_cliente;
    
    INSERT INTO conce_audit_cliente (cod_aud, cod_cli, descripcion, fecha_de_actualizacion)
    VALUES (new_cod_aud, :old.IDCLI, 
    'Borrado del cliente ' || :old.idcli || ' : ' || :old.nombre || ' ' || :old.apellido || ' de la ciudad: ' || :old.ciudad, 
    SYSDATE);
END;

BEGIN
    DELETE FROM conce_ventas WHERE cliente = 44512333;
    DELETE FROM conce_cliente WHERE idcli = 44512333;
END;


/*6. (1 punto) Crea un disparador que se ejecute después de la inserción en la tabla
de clientes y que guarde en la tabla audit_cliente el código del cliente insertado,
la fecha y hora actual y la siguiente descripción: ‘Inserción del cliente{cod}:
{nombre apellido} de la ciudad {ciudad}’.*/
CREATE OR REPLACE TRIGGER despuesDeInsercion
    AFTER INSERT ON conce_cliente
    FOR EACH ROW
DECLARE
    new_cod_aud NUMBER;
BEGIN
    SELECT NVL(MAX(cod_aud), 0) + 1 INTO new_cod_aud FROM conce_audit_cliente;

    INSERT INTO conce_audit_cliente (cod_aud, cod_cli, descripcion, fecha_de_actualizacion)
    VALUES (new_cod_aud, :new.idcli, 'Inserción del cliente ' || :new.idcli || ': ' ||
    :new.nombre || ' ' || :new.apellido || ' de la ciudad ' || :new.ciudad, SYSDATE);
END;

    -- Prueba del disparador al insertar un cliente
BEGIN
    INSERT INTO conce_cliente (idcli, nombre, apellido, ciudad)
    VALUES (9, 'Juan', 'Pina', 'Petrer');
END;

/*7. (1.5 puntos) Crea un disparador que se ejecute después de la modificación de la
tabla clientes, concretamente después de modificar la ciudad del cliente, guarde
en la tabla audit_cliente la siguiente información: el código del cliente, la fecha y
hora de la modificación y la siguiente descripción: ‘Modificación de la ciudad del
cliente {cod-nombre}. Ciudad anterior: {ciudad ant}, ciudad actual: {nuevo
ciudad}’*/

CREATE OR REPLACE TRIGGER trasModificarClientes
    AFTER UPDATE ON conce_cliente
    FOR EACH ROW
     
DECLARE
    new_cod_aud NUMBER;
BEGIN
    IF :old.ciudad != :new.ciudad THEN -- Para que sea al modificar la ciudad del cliente
        SELECT NVL(MAX(cod_aud), 0) + 1 INTO new_cod_aud FROM conce_audit_cliente;
        
        INSERT INTO conce_audit_cliente (cod_aud, cod_cli, descripcion, fecha_de_actualizacion)
        VALUES (new_cod_aud, :new.idcli,
            'Modificación de la ciudad del cliente ' || :new.nombre || '. Ciudad anterior: ' || :old.ciudad || ', ciudad actual: ' || :new.ciudad,
            SYSDATE);
    END IF;
END;

    -- Prubea con el cliente que inserté antes.
BEGIN
    UPDATE conce_cliente SET ciudad = 'Barcelona' WHERE idcli = 17;
END;

/*8. (1.5 punto) Ahora borra los tres disparadores anteriores para compactarlos en
uno que contenga tanto insert como update y delete. La información a guardar
será la misma que en los disparadores de los ejercicios 5,6 y 7.*/
DROP TRIGGER antesDeBorrarClienteGuardar;
DROP TRIGGER despuesDeInsercion;
DROP TRIGGER trasModificarClientes;

CREATE OR REPLACE TRIGGER gestionAuditCliente
    AFTER INSERT OR UPDATE OR DELETE ON conce_cliente
    FOR EACH ROW
DECLARE
    new_cod_aud NUMBER;
BEGIN
    SELECT NVL(MAX(cod_aud), 0) + 1 INTO new_cod_aud FROM conce_audit_cliente;

    -- Ejercicio 5, la inserción
    IF INSERTING THEN
        INSERT INTO conce_audit_cliente (cod_aud, cod_cli, descripcion, fecha_de_actualizacion)
        VALUES (new_cod_aud, :new.idcli,
            'Inserción del cliente ' || :new.idcli || ': ' || :new.nombre || ' ' || :new.apellido || ' de la ciudad ' || :new.ciudad,
            SYSDATE);

    -- Ejercicio 6, el borrado
    ELSIF DELETING THEN
        INSERT INTO conce_audit_cliente (cod_aud, cod_cli, descripcion, fecha_de_actualizacion)
        VALUES (new_cod_aud, :old.idcli,
            'Borrado del cliente ' || :old.idcli || ': ' || :old.nombre || ' ' || :old.apellido || ' de la ciudad: ' || :old.ciudad,
            SYSDATE);

    -- Ejercicio 7, la actualización
    ELSIF UPDATING THEN
        IF :old.ciudad != :new.ciudad THEN
            INSERT INTO conce_audit_cliente (cod_aud, cod_cli, descripcion, fecha_de_actualizacion)
            VALUES (new_cod_aud, :new.idcli,
                'Modificación de la ciudad del cliente ' || :new.idcli || ': ' || :new.nombre || ' ' || :new.apellido || '. Ciudad anterior: ' || :old.ciudad || ', ciudad actual: ' || :new.ciudad,
                SYSDATE);
        END IF;
        
    END IF;
END;


/*9. (0.5 puntos) Crea un nuevo campo en la tabla de listas_artista, que se llame
tipo_artista y será de tipo carácter y tendrá uno de los siguientes valores:
'INDEPENDIENTE' O 'GRUPO'. Actualiza el campo que acabas de crear usando
sentencias update (como mucho 2 sentencias).*/
ALTER TABLE LISTAS_ARTISTA add tipo_artista varchar2(25);

UPDATE LISTAS_ARTISTA SET tipo_artista = 'INDEPENDIENTE'
WHERE cod in (SELECT cod FROM listas_artistaind);

UPDATE LISTAS_ARTISTA SET tipo_artista = 'GRUPO'
WHERE cod in (SELECT cod FROM listas_grupo);

/*10. (1.5 puntos) Crea un disparador que se ejecute al insertar datos en las tablas de
listas_artistaind y listas_grupo. El disparador debe guardar en la tabla
listas_artista, ‘GRUPO’ si estamos insertando en listas_grupo o
'INDEPENDIENTE' si estamos insertando en la tabla listas_artistasind. Usa el
procedimiento creado en la anterior práctica.*/

-- Procdeimiento que use en la anterior practica 6.2
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


CREATE OR REPLACE TRIGGER asignarInd
    AFTER INSERT ON listas_artistaind
    FOR EACH ROW
BEGIN
    insertarArtista(:new.nombreReal, :new.NOM_CIUDAD, :new.NOM_ESTADO_PROV, :new.NOM_PAIS, 'INDEPENDIENTE');
END;


CREATE OR REPLACE TRIGGER asignarGrupo
    AFTER INSERT ON listas_grupo
    FOR EACH ROW
BEGIN
    insertarArtista(:new.nombreArtístico, :new.NOM_CIUDAD, :new.NOM_ESTADO_PROV, :new.NOM_PAIS, 'GRUPO');
END;

-- No me sale, me rindo

BEGIN
    insertarArtista('TuPeluquero', 'Gandía', 'Valencia', 'España', 'INDEPENDIENTE');
    insertarArtista('Los peluqueros', 'Las pelucas', 'Valencia', 'España', 'GRUPO');
END;

--COMMIT;
-- ROLLBACK;