/*1- Crea un procedimiento que inserte un cliente en la BD de concesionarios, teniendo en cuenta todas las posibles excepciones:
a. Si ya existe la clave primaria, debe decir en un mensaje: ‘Ya existe la clave primaria’
b. Si no existe la ciudad (clave ajena), debe decir en un mensaje: ‘Falla la clave ajena. Padre no encontrado’.
c. Si hay algún tipo de formato incorrecto (value_error): ‘Intentas insertar un tipo de dato distinto del almacenado en la base de datos’.
d. Define también una excepción si el campo que intentas almacenar es más largo que el campo de la BD, ORA-12899, con el mensaje: 
“El valor que intentas almacenar es demasiado grande”.
*/

CREATE OR REPLACE PROCEDURE insertar_cliente(
    pCod number, 
    pNom varchar2, 
    pApellido varchar2, 
    pCiudad varchar2,
    pActivo char default 'S'
) 
IS
    FK_Clave_ajena exception;
    pragma exception_init(FK_Clave_ajena,-2291);
    
    TOO_LONG exception;
	pragma exception_init(TOO_LONG,-12899);

BEGIN
		INSERT INTO conce_cliente VALUES(pCod,pNom,pApellido,pCiudad,pActivo);

EXCEPTION
		WHEN dup_val_on_index then
            DBMS_OUTPUT.PUT_LINE('Ya existe la clave primaria');
         
	    WHEN FK_Clave_ajena then
             DBMS_OUTPUT.PUT_LINE('Falla la clave ajena. Padre no encontrado');
         
	    WHEN value_error then    
            DBMS_OUTPUT.PUT_LINE('Intentas insertar un tipo de dato distinto del almacenado en la base de datos');
         
	   	WHEN TOO_LONG then
            DBMS_OUTPUT.PUT_LINE('El valor que intentas almacenar es demasiado grande');
END;


--pruebas
	begin
		insertar_cliente(11122222,'prueba1','apellidosprueba1','Madrid','S'); --valor de apellidos demasiado grande
	end; 

	begin
		insertar_cliente(11111114,'prueba2','apellidosp2','Madrid','S'); --Se inserta correctamente
	end;
    
	begin
		insertar_cliente(22222222,'prueba3','ap3','Caudete','S'); -- Falla la clave ajena, padre no encontrado
	end;
    
	begin
		insertar_cliente(11111111,'prueba4','ap4','Madrid','S'); --Ya existe la clave primaria
	end;
    
	begin
		insertar_cliente('Hola',22222,'ap5','Madrid','S'); --Tipo de dato distinto del almacenado en BD
	end;
    



/* 2. Muestra todos los coches disponibles en un concesionario que se pasará como parámetro.*/

CREATE OR REPLACE PROCEDURE mostrar_coches_conce(p_conce number) IS
	sin_datos exception;
	num_coches number;
    v_coche conce_distribucion.coche%type;
    v_cantidadcoches conce_distribucion.cantidad%type;
    v_nombreconce conce_concesionario.nombre%type;

	CURSOR c_coches IS
    select coche,cantidad from conce_distribucion where concesionario = p_conce;
    
BEGIN
    OPEN c_coches;
    FETCH c_coches into v_coche, v_cantidadcoches;
    
    IF c_coches%notfound then    
   	 	RAISE sin_datos;
    ELSE
    	select nombre into v_nombreconce from conce_concesionario where cif=p_conce;
   	 	mostrar('Concesionario: '||p_conce||' - '||v_nombreconce);
		mostrar('------------------------------------------------');
   	
     WHILE c_coches%found loop
   		mostrar(v_coche||' ->  '||v_cantidadcoches || ' unidades');
    	FETCH c_coches into v_coche,v_cantidadcoches;
   	 END LOOP;
     
   	 num_coches := c_coches%rowcount;
   	 mostrar('------------------------------------------------');
   	 mostrar('Total coches en el concesionario '||p_conce||': '||num_coches);
   	 mostrar('---------------------------------------------------------------');
     
    END IF;
    
    CLOSE c_coches;
    
EXCEPTION
    WHEN sin_datos then    
       DBMS_OUTPUT.PUT_LINE('No se encontró ningún coche en el concesionario: '||p_conce);

    WHEN others then
        DBMS_OUTPUT.PUT_LINE('Algo raro ha pasado:'||sqlerrm);
END;

-- Pruebas
begin
    mostrar_coches_conce(11111111);
    mostrar_coches_conce(22);
end;







/* 3. Realiza un procedimiento que muestre todos los artistas de un determinado país, estado_provincia o ciudad, según le llegue el parámetro. 
El país será obligatorio, y la provincia y ciudad no:
    a. Si nos llegan provincia y ciudad a null, se deberán mostrar todos los artistas de ese país.
    b. Si nos llega la ciudad a null, se deberán mostrar todos los artistas de esa provincia.
    c. Si ningún parámetro nos llega a null, deberá mostrar los artistas de esa ciudad.
    
Los errores a manejar serán:
    - No_data_found: no se encontró ningún artista de esa ciudad, país o provincia.
    - Otros errores: ‘Algo raro ha pasado’ y saca el mensaje de error predefinido en la variable sqlerrm.

*/
 
CREATE OR REPLACE PROCEDURE mostrar_artista (
    p_pais varchar2, 
    p_provincia varchar2 default null, 
    p_ciudad varchar2 default null) 
IS
	sin_datos exception;
	v_nombreartista listas_Artista.nombreartistico%type;
	v_codartista listas_artista.cod%type;
    
    
    -- declaracion de los cursores
	CURSOR c_artistas_ciudad is
    	select nombreartistico,art.cod
    	from listas_artista art
    	where art.nom_ciudad = p_ciudad and art.nom_estado_prov = p_provincia and art.nom_pais = p_pais;
        
	CURSOR c_artistas_provincia is
    	select nombreartistico,art.cod
    	from listas_artista art
    	where art.nom_estado_prov = p_provincia and art.nom_pais = p_pais;
        
	CURSOR c_artistas_pais is
    	select nombreartistico,art.cod
    	from listas_artista art
    	where art.nom_pais = p_pais;
        
BEGIN

    -- Si ciudad y provincia son nulos, muestro los artistas del pais
	IF p_ciudad IS NULL AND p_provincia IS NULL then
        OPEN c_artistas_pais;
        
    	FETCH c_artistas_pais INTO v_nombreartista,v_codartista;
        
    	IF c_artistas_pais%notfound then
        	RAISE sin_datos;
    	ELSE
            mostrar('Artistas del país:' || p_pais);
            mostrar('------------------------------------');
            
        	WHILE c_artistas_pais%found LOOP
            	mostrar('Artista: '||v_codartista ||' ' ||v_nombreartista);
            	FETCH c_artistas_pais into v_nombreartista,v_codartista;
        	END LOOP;
            
        	mostrar('Total artistas en: '|| p_pais || ' ' || c_artistas_pais%rowcount);
    	END IF;
        
    	CLOSE c_artistas_pais;
   
    -- si ciudad es nulo, muestro los artistas de esa provincia y pais     
	ELSIF p_ciudad IS NULL then
    	OPEN c_artistas_provincia;
    	FETCH c_artistas_provincia into v_nombreartista,v_codartista;
        
    	IF c_artistas_provincia%notfound then
        	RAISE sin_datos;
    	ELSE
            mostrar('Artistas de la provincia:' || p_provincia|| ' - País: ' ||p_pais);
        	mostrar('------------------------------------');
            
        	WHILE c_artistas_provincia%found LOOP
            	mostrar('Artista: '||v_codartista||' ' ||v_nombreartista);
            	FETCH c_artistas_provincia into v_nombreartista,v_codartista;
        	END LOOP;
            
        	mostrar('Total artistas en: '||p_provincia||' y país: '||p_pais||' -> '||c_artistas_provincia%rowcount);
    	END IF;
        
    	CLOSE c_artistas_provincia;

    -- si ninguno es nulo, muestro los artistas de esa ciudad, provincia y pais
	ELSE
    	OPEN c_artistas_ciudad;
    	FETCH c_artistas_ciudad into v_nombreartista,v_codartista;
        
    	IF c_artistas_ciudad%notfound then
        	raise sin_datos;
    	ELSE
        	mostrar('Artistas de la ciudad:'||p_ciudad||' - Provincia: '||p_provincia||' - País: '||p_pais);
        	mostrar('------------------------------------');
            
        	WHILE c_artistas_ciudad%found loop
            	mostrar('Artista: '||v_codartista||' ' ||v_nombreartista);
            	FETCH c_artistas_ciudad into v_nombreartista,v_codartista;
        	END LOOP;
        	mostrar('Total artistas en: '||p_ciudad||', provincia: '||p_provincia||' y país: '||p_pais||' -> '||c_artistas_ciudad%rowcount);
    	END IF;
        
    	CLOSE c_artistas_ciudad;
	END IF;
    
EXCEPTION
	WHEN sin_datos then
    	DBMS_OUTPUT.PUT_LINE('No se encontró ningún artista del país: '||p_pais||' provincia: '||p_provincia||' y ciudad: '||p_Ciudad);
	WHEN others then
        DBMS_OUTPUT.PUT_LINE('Algo raro ha pasado:'||sqlerrm);
END;



-- pruebas
begin
mostrar_artista('España', 'Madrid', 'Madrid');
end;

begin
mostrar_artista('España', 'Valencia');
end;

begin
mostrar_artista('España');
end;

begin
mostrar_artista('España', 'Alicante', 'Elche');
end;
