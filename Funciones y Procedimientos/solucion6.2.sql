/* 1- Define una función para sacar la diferencia de edad (en años) entre dos fechas.
 Si la fecha1 que nos pasan (que es la mayor) es nula, entonces deberemos sustituirla por la fecha actual.*/
CREATE OR REPLACE FUNCTION edad_diferencia (p_fecha2 date, p_fecha1 date default sysdate) 
RETURN number
IS
    edad_diferencia_devuelta number;
    v_fecha1 date := p_fecha1;

BEGIN
    if p_fecha1 is null then			
        v_fecha1 := sysdate;
	end if;
    
    edad_diferencia_devuelta := trunc(months_between(p_fecha2,v_fecha1)/12);
	
    RETURN edad_diferencia_devuelta;
END;

--Pruebas
BEGIN
DBMS_OUTPUT.PUT_LINE(edad_diferencia('21-06-1985','15-05-1979'));
END;

select nombrereal, edad_diferencia(fmuerte,fnac) from listas_artistaind order by 2; 



/*
2- crea el procedimiento mostrar, que mostrará por pantalla el texto que se pase como parámetro y 
será usado en el resto de procedimientos.
*/
CREATE OR REPLACE PROCEDURE mostrar(texto varchar2) IS
BEGIN
	dbms_output.put_line(texto);
END;

--Prueba
BEGIN
    mostrar('Hola');
    mostrar('Ya queda poco para terminar :D');
END;




/*
3- Crea un procedimiento que modifique la nota de un alumno, para un módulo y periodo concreto. 
Como parámetros de entrada tendremos el dni del alumno, el código del módulo, el código del periodo y la futura nota.
*/
CREATE OR REPLACE PROCEDURE modificar_nota (p_dni varchar2, p_mod varchar2,p_periodo number,p_nota number) 
IS
    vNombreAlumno varchar2(100);
BEGIN

    select nombre_alumno into vNombreAlumno from ciclos_alumno where dni_alumno = p_dni;
    
    update ciclos_evaluacion set nota=p_nota where dni_alumno=p_dni and codigo_modulo = p_mod and codigo_trimestre = p_periodo;
    
    dbms_output.put_line('Al alumno: '||vNombreAlumno||' se le ha cambiado la nota del módulo: '||p_mod|| ' para el periodo: '||p_periodo);
END;

-- Pruebas
BEGIN
	modificar_nota('33111118','0226',1,5);
    modificar_nota('15111122','0485',1,8);
END;

/*
4-Crea un procedimiento que inserte la nota de un alumno. Como parámetros de entrada, tendremos el DNI del alumno, el código del módulo, el trimestre y la nota. 
Antes de insertar, se deberá comprobar si el alumno está matriculado en ese módulo.
*/
CREATE OR REPLACE PROCEDURE insertar_nota (p_dni varchar2, p_mod varchar2, p_periodo number, p_nota number) 
IS
    vNombreAlumno ciclos_alumno.nombre_alumno%type;
    vCiclo ciclos_alumno.codigo_ciclo%type;
    vCurso ciclos_alumno.numero_curso%type;
    vGrupo ciclos_alumno.grupo_curso%type;

BEGIN
    select a.codigo_ciclo,a.numero_curso,a.grupo_curso,nombre_alumno into vCiclo,vCurso,vGrupo,vNombreAlumno 
    from ciclos_alumno a,ciclos_impartir i
    where a.dni_alumno=p_dni and i.grupo_curso=a.grupo_curso and i.codigo_ciclo=a.codigo_ciclo
    and i.numero_curso=a.numero_curso and i.codigo_modulo=p_mod;

    insert into ciclos_evaluacion values (p_dni,p_mod,p_periodo,p_nota);
           
    dbms_output.put_line('Al alumno: '||vNombreAlumno||' se le ha insertado la nota del módulo: '||p_mod|| ' para el periodo: '||p_periodo);
END;



--Pruebas
--Alumno no matriculado en el módulo, debería dar error
	begin
		insertar_nota('33111118','5049',1,8);
	end;
--Alumno matriculado en el módulo, sí debe insertarlo
	begin
		insertar_nota('33111118','0224',1,8);
	end;





/*5- Crea un procedimiento que inserte la ciudad de la base de datos de artistas, 
teniendo en cuenta que, antes de insertar la ciudad, deberá insertar el país y el estado. 
Las tres serán los parámetros del procedimiento.*/
CREATE OR REPLACE PROCEDURE insertar_ciudad(p_pais varchar2, p_estado varchar2, p_ciudad varchar2) 
IS
    v_contarciudad number default 0;
    v_contarestado number default 0;
    v_contarpais number default 0;
BEGIN
    -- Compruebo si la ciudad ya existe
    select count(*) into v_contarciudad from listas_ciudad where nombre = p_ciudad and nom_estado_prov = p_estado and nom_pais = p_pais;
    if v_contarciudad = 1 then
        mostrar('Ya existe la ciudad: '||p_ciudad);
    else
        -- Si la ciudad no existe, compruebo si el estado existe
        select count(*) into v_contarestado from listas_estado_provincia where nombre = p_estado and nom_pais = p_pais;
        
        if v_contarestado = 1 then
            mostrar('Ya existe el estado o la provincia: '||p_estado||', se insertará solo la ciudad: '||p_ciudad);
            insert into listas_ciudad(nombre,nom_estado_prov,nom_pais) values (p_ciudad,p_estado,p_pais);
            
        else
            -- Si el estado no existe, compruebo si el país existe
            select count(*) into v_contarpais from listas_pais where nombre = p_pais;
            
            if v_contarpais = 1 then
                insert into listas_estado_provincia (nombre,nom_pais) values (p_estado,p_pais);
                insert into listas_ciudad  (nombre,nom_estado_prov,nom_pais) values (p_ciudad,p_estado,p_pais);
                mostrar('Ya existe el país: '||p_pais||', se insertará la provincia: '||p_estado||' y la ciudad: '||p_ciudad);
            else
                insert into listas_pais (nombre) values (p_pais);
                insert into listas_estado_provincia (nombre,nom_pais) values (p_estado,p_pais);
                insert into listas_ciudad  (nombre,nom_estado_prov,nom_pais) values (p_ciudad,p_estado,p_pais);
                mostrar('No existe, se insertará todo. País: '||p_pais||' provincia o estado: '||p_estado||' ciudad: '||p_ciudad);
            end if;
        end if;
    end if;
END;


-- Pruebas
begin
--caso 1. que exista la ciudad.
insertar_ciudad('España','Madrid','Madrid');
end;

begin
--caso 2. que exista la provincia, pero no la ciudad.
insertar_ciudad('España','Madrid','Alcorcón');
end;

begin
--caso 3. que exista el país, pero nada más.
insertar_ciudad('España','Alicante','Petrer');
end;

begin
--caso 4. que no exista nada
insertar_ciudad('Andorra','Ordino','El Serrat');
end;





/*
6- Crea un procedimiento que descuente un coche de un concesionario en la tabla conce_distribución. 
Como parámetro de entrada nos pasarán el CIF del concesionario y el código del coche.
*/
CREATE OR REPLACE PROCEDURE descontar_coche(p_cif conce_concesionario.cif%type, p_coche conce_coche.codigo%type) IS
BEGIN
		update conce_distribucion set cantidad = cantidad-1 where concesionario = p_cif and coche = p_coche;
END;

-- Pruebas
	select * from conce_distribucion where coche='KRIO' and concesionario='1222222';
	begin
		descontar_coche('1222222','KRIO');
	end;
    select * from conce_distribucion where coche='KRIO' and concesionario='1222222';




/*7- Crea un procedimiento que inserte un artista, teniendo en cuenta que como parámetro recibiremos los siguientes (algunos serán opcionales): 
a. nombre artístico.
b. ciudad, estado, país (el nombre, y tendremos que buscarla, si no existe, insertarla). 
c. Si es grupo ‘GRUPO’ o artista independiente ‘INDEPENDIENTE’, para saber en qué tabla buscar.
d. Si es grupo: fecha creación y de disolución, que es opcional.
e. Si es artista independiente: nombre real, fecha de nacimiento y fecha de la muerte es opcional.


Nota: Los parámetros opcionales, deberán tener el valor por defecto a null si son de tipo carácter o fecha y 0 si son numéricos. Puedes definir las variables que necesites.

*/
CREATE OR REPLACE PROCEDURE insertar_artista(
    p_artista listas_artista.nombreartistico%type,
	p_ciudad listas_ciudad.nombre%type,
    p_estado listas_estado_provincia.nombre%type,
    p_pais listas_pais.nombre%type,
	p_tipo varchar2 default null,
    p_nombre_real listas_artistaind.nombrereal%type, 
    p_fecha1 date default null,
    p_fecha2 date default null)
IS
    v_contarartista number; 
    v_codartista listas_artista.cod%type; 
BEGIN
    -- comrpuebo si el artista está ya creado
	select count(*) into v_contarartista from listas_artista where nombreartistico=p_artista;
	
    if v_contarartista = 1 then
        mostrar('Ya existe el artista '||p_artista ||' que intentas insertar');
	else
        -- si el artista no está creado, inserto la ciudad, estado y pais con el procedimiento creado anteriormente.
        insertar_ciudad(p_pais,p_estado,p_ciudad);
        
        -- inserto el artista
        select max(cod)+1 into v_codartista from listas_artista;
        insert into listas_artista values (v_codartista,p_artista,p_ciudad,p_estado,p_pais);
        
        -- compruebo si es independiente o grupo
        if p_tipo='INDEPENDIENTE' then
            insert into listas_artistaind values (v_codartista,p_nombre_real,p_fecha1,p_fecha2);
        elsif p_tipo='GRUPO' then
            insert into listas_grupo values (v_codartista,p_fecha1,p_fecha2);
        end if;
        
        mostrar('Se ha insertado el artista con el código: '||v_codartista);
	end if;

END;

-- Pruebas
begin
   insertar_artista('Bad Bunny','Almirante Sur','Vega Baja','Puerto Rico','INDEPENDIENTE','Benito Antonio','10/03/1994');
   insertar_artista('Estopa','	Cornellà de Llobregat','Barcelona','España','GRUPO',null,'01/01/1984');
end;


