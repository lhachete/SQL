

/*1. (3 puntos) Crea un procedimiento que inserte un cliente en la BD de
concesionarios, teniendo en cuenta todas las posibles excepciones:
a. Si ya existe la clave primaria, debe decir en un mensaje: ‘Ya existe la
clave primaria’
b. Si no existe la ciudad (clave ajena), debe decir en un mensaje: ‘Falla la
clave ajena. Padre no encontrado’.
c. Si hay algún tipo de formato incorrecto (value_error): ‘Intentas insertar
un tipo de dato distinto del almacenado en la base de datos’.
d. Define también una excepción si el campo que intentas almacenar es
más largo que el campo de la BD, ORA-12899, con el mensaje: “El valor
que intentas almacenar es demasiado grande”.*/
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE mostrar (texto varchar2) IS
BEGIN DBMS_OUTPUT.PUT_LINE(texto);
END;

CREATE OR REPLACE PROCEDURE insertarCliente(
    idc number,
    nom varchar2,
    ape varchar2,
    ciu varchar2
)
IS
    desbordamiento EXCEPTION;
    PRAGMA EXCEPTION_INIT(desbordamiento, -12899);
    
    FK_Clave_ajena EXCEPTION;
    PRAGMA EXCEPTION_INIT(FK_Clave_ajena, -2291);
    
BEGIN
    INSERT INTO conce_cliente (idcli, nombre, apellido, ciudad) VALUES (idc, nom, ape, ciu);

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        mostrar('Ya existe la clave primaria');
    WHEN FK_Clave_ajena THEN
        mostrar('Falla la clave ajena. Padre no encontrado');
    WHEN value_error THEN
        mostrar('Intentas insertar un tipo de dato distinto del almacenado en la base de datos');
    WHEN desbordamiento THEN
        mostrar('El valor que intentas almacenar es demasiado grande');

END;


DECLARE
BEGIN
    insertarCliente(12445245, 'Pedro', 'Mapache', 'Elda'); -- EL que va
--A    insertarCliente(23287490, 'Rafaela', 'Mapache', 'Elda'); -- PK existente
--B    insertarCliente(123, 'Ana', 'Herrero', 'NoExiste'); -- FK fallando
--C    insertarCliente('abcx', 'Pedro', 'Canela', 2); -- Formato incorrecto // NO VA
--D    insertarCliente(532222, 'PedroOOOOOOOOOO', 'Canela', 'Elda'); -- Valor demasiado grande
    
END;



/*2. (3 puntos) Muestra todos los coches disponibles en un concesionario (CIF) que se
pasará como parámetro.*/


CREATE OR REPLACE PROCEDURE mostrarCoches(numConce number default null)
IS  
    v_coche conce_distribucion.coche%type;
    v_cantidad conce_distribucion.cantidad%type;

    CURSOR c_coches IS
        SELECT coche, cantidad
        FROM conce_distribucion
        WHERE concesionario = ltrim(numConce);

-- Información buscada para saber que código poner en excepciones personalizadas
-- https://elbauldelprogramador.com/plsql-excepciones/
    ningunValor EXCEPTION;
    PRAGMA EXCEPTION_INIT(ningunValor, -20001);
    ningunResultado EXCEPTION;
    PRAGMA EXCEPTION_INIT(ningunResultado, -20002);

BEGIN
    IF numConce IS NULL THEN
        RAISE ningunValor;
    END IF;

    OPEN c_coches;
    FETCH c_coches INTO v_coche, v_cantidad;

    IF c_coches%NOTFOUND THEN
        CLOSE c_coches;
        RAISE ningunResultado;
    ELSE
        mostrar('Los coches disponibles son: ');
    END IF;

    WHILE c_coches%found LOOP
        mostrar('Coche: ' || v_coche || ' -- Cantidad: ' || v_cantidad);
        FETCH c_coches INTO v_coche, v_cantidad;
    END LOOP;

    CLOSE c_coches;

EXCEPTION
    WHEN ningunValor THEN
        mostrar('Introduce un valor válido como argumento');
    WHEN ningunResultado THEN
        mostrar('No se encontraron coches para el concesionario especificado.');
    WHEN value_error THEN
        mostrar('El argumento tiene que ser numérico');
    WHEN OTHERS THEN
        mostrar('Ha ocurrido un error inesperado: ' || SQLERRM);
END;

DECLARE 
BEGIN
    mostrarCoches(11111111);
    -- mostrarCoches(51518959);
    -- mostrarCoches(); 
    -- mostrarCoches('asdf'); 
END;

/*3. (4 puntos) Realiza un procedimiento que muestre todos los artistas de un
determinado país, estado_provincia o ciudad, según le llegue el parámetro. El
país será obligatorio, y la provincia y ciudad no:
a. Si nos llegan provincia y ciudad a null, se deberán mostrar
todos los artistas de ese país.
b. Si nos llega la ciudad a null, se deberán mostrar todos los
artistas de esa provincia.
c. Si ningún parámetro nos llega a null, deberá mostrar los artistas
de esa ciudad.*/

/*
Los errores a manejar serán:
- No_data_found: no se encontró ningún artista de esa ciudad, país o
provincia.
- Otros errores: ‘Algo raro ha pasado’ y saca el mensaje de error
predefinido en la variable sqlerrm.*/

CREATE OR REPLACE PROCEDURE mostrarArtistasSegun(
    v_pais listas_artista.nom_pais%type,
    v_prov listas_artista.nom_estado_prov%type default null,
    v_ciud listas_artista.nom_ciudad%type default null
)
IS
    v_nombre listas_artista.nombreartistico%type;
    contador number;
    
    desbordamiento EXCEPTION;
    PRAGMA EXCEPTION_INIT(desbordamiento, -12899);
    
    noExistePP EXCEPTION;
    PRAGMA EXCEPTION_INIT(noExistePP, -20003);

    CURSOR c_artistas_pais IS
        select nombreartistico
        from listas_artista
        where nom_pais LIKE v_pais;
         
     CURSOR c_artistas_prov IS
        select nombreartistico
        from listas_artista
        where nom_estado_prov LIKE v_prov;

     CURSOR c_artistas_ciud IS
        select nombreartistico
        from listas_artista
        where nom_ciudad LIKE v_ciud;


    
BEGIN

    IF v_prov IS NULL AND v_ciud IS NULL THEN
        OPEN c_artistas_pais; --Abro cursor

        FETCH c_artistas_pais INTO v_nombre; -- Asigno valores al cursor
        IF c_artistas_pais%notfound THEN -- Si no hay valores, excepcion
            RAISE NO_DATA_FOUND;
        end if;
        
        mostrar('Artistas del país de ' || v_pais || ': ');
        WHILE c_artistas_pais%found LOOP
            mostrar(v_nombre);
            FETCH c_artistas_pais INTO v_nombre;
        END LOOP;
        close c_artistas_pais; 
        
    ELSIF v_ciud IS NULL THEN
        OPEN c_artistas_prov;

        FETCH c_artistas_prov INTO v_nombre;
        IF c_artistas_prov%notfound THEN
            RAISE NO_DATA_FOUND;
        end if;
        
        
       select count(*) INTO contador -- Consulta para ver que si la provincia es correcta, ver que el país tambien lo es.
        from listas_artista
        where nom_pais LIKE nom_pais;
        
       if contador = 0 THEN
            RAISE noExistePP;
        end if;
        
        mostrar('Artistas de la provincia de ' || v_prov || ': ');
        WHILE c_artistas_prov%found LOOP
            mostrar(v_nombre);
            FETCH c_artistas_prov INTO v_nombre;
        END LOOP;
        close c_artistas_prov; 
        
    ELSE
        OPEN c_artistas_ciud;
 
        FETCH c_artistas_ciud INTO v_nombre;
        IF c_artistas_ciud%notfound THEN
            RAISE NO_DATA_FOUND;
        end if;
        
        select count(*) INTO contador -- Consulta para ver que si la ciudad es correcta, ver que la provincia tambien lo sea.
        from listas_artista
        where nom_estado_prov LIKE v_prov;
        
        if contador = 0 THEN
            RAISE noExistePP;
        end if;
        
        mostrar('Artistas de la ciudad de ' || v_ciud || ': ');
        WHILE c_artistas_ciud%found LOOP
            mostrar(v_nombre);
            FETCH c_artistas_ciud INTO v_nombre;
        END LOOP;
        close c_artistas_ciud; 
        
    END IF;
    
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        mostrar('No se encontró ningún artista de esa ciudad, país o provincia.');
    WHEN noExistePP THEN
        mostrar('No existe el País o Provincia');
--    WHEN VALUE_ERROR THEN
--        mostrar('Intentas insertar un tipo de dato distinto del almacenado en la base de datos');
    WHEN desbordamiento THEN
        mostrar('El valor que intentas almacenar es demasiado grande');
    WHEN OTHERS THEN
        mostrar('Algo raro ha pasado: ' || sqlerrm);
    
END;

DECLARE
BEGIN
--    mostrarArtistasSegun('Colombia');
--    mostrarArtistasSegun('Colombia', 'Antioquia');
    mostrarArtistasSegun('Colombia', 'Antioquia', 'Medellín');
    mostrarArtistasSegun('Bichota', 'Culona', 'Medellín');
    mostrarArtistasSegun('MiPeluca');
END;

