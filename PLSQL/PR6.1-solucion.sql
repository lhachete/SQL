/* 1- (2 puntos) Vamos a crear nuestro primer bloque anónimo. Vas a pedir tres
variables de sustitución al usuario, una para guardar tu nombre y las otras dos
para dos números. El programa deberá saludarte “Hola <tu nombre>” y deberá
mostrar una segunda línea que diga “El resultado de la suma es: mostrar la
suma de los dos números”. Usa dbms_output para sacar por pantalla los
valores */

DECLARE
	NOMBRE VARCHAR2(20):='&DIME_TU_NOMBRE';
	NUM1 NUMBER:=&DAME_UN_ENTERO;
	NUM2 NUMBER:=&DAME_OTRO_ENTERO;
	RESULTADO NUMBER;
BEGIN
	RESULTADO:=NUM1+NUM2;
	DBMS_OUTPUT.PUT_LINE('Hola: '||nombre);
	DBMS_OUTPUT.PUT_LINE('El resultado es: '||resultado);
END;


/* 2- (3 puntos) Haz un bloque anónimo que pida dos números. Con estos dos
números deberá realizar lo siguiente:
a. Usando un bucle for, mostrará todos los números que hay entre ambos de mayor a menor.
b. La cantidad total de números y la suma de todos.
c. La cantidad de positivos y de negativos (consideramos el 0 como un número positivo).
d. Si alguno de los valores es null, debes ponerle el valor -5, si ambos valores son null, entonces uno será 5 y el otro -5. */
DECLARE
    vNumero1 NUMBER:=&NUM1;
    vNumero2 NUMBER:=&NUM2;
    vMenor NUMBER;
    vMayor NUMBER;
    vItem NUMBER:=0;
    vSuma NUMBER:=0;
    vPositivo NUMBER:=0;
    vNegativo NUMBER:=0;  
BEGIN
    IF vNumero1 IS NULL AND vNumero2 IS NULL THEN
        vNumero1:=-5;
        vNumero2:=5;
    ELSIF vNumero1 IS NULL THEN
        vNumero1:=-5;
    ELSIF vNumero2 IS NULL THEN
        vNumero2:=-5;
    END IF;
    
    IF vNumero1<=vNumero2 THEN
        vMenor:=vNumero1;
        vMayor:=vNumero2;
    ELSE
        vMenor:=vNumero2;
        vMayor:=vNumero1;
    END IF;
    
    DBMS_OUTPUT.PUT('Lista de números: ');
    FOR i IN REVERSE vMenor..vMayor
    LOOP
        DBMS_OUTPUT.PUT(I||' ');
        vItem:=vItem + 1;
        vSuma:=vSuma + i;
        IF i<0 THEN
            vNegativo:=vNegativo+1;
        ELSE
            vPositivo:=vPositivo+1;
        END IF;
    END LOOP;
	
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('Cantidad total de números: '||vItem);
    DBMS_OUTPUT.PUT_LINE('Suma de todos los números: '||vSuma);
    DBMS_OUTPUT.PUT_LINE('Cantidad de números negativos: '||vNegativo);
    DBMS_OUTPUT.PUT_LINE('Cantidad de números positivos: '||vPositivo);
END;




 /*3. Realiza un bloque anónimo que calcule el aumento del salario de un profesor, según sea jefe de otros profesores. 
Si no tiene profesores a su cargo, la subida será de 50€.
Si tiene entre 1 y 5 profesores a su cargo, la subida será de 80€.
Si tiene más de 5 profesores a su cargo, la subida será de 100€.
Además, si tiene más de 6 años de antigüedad, se le aumentarán otros 100€.
En el bloque anónimo, primero pregunta a qué profesor quieres subir el sueldo con una variable de sustitución. 
Después tendrás que mostrar por pantalla: “La subida de salario para <nombre del profesor> será de: <cantidad calculada>”
*/

DECLARE
	v_profesor ciclos_profesor.dni_profesor%type;
	v_cargoprof number(2); 
	v_aumento number(7) default 0;
	v_antig number(2) default 0;
    
BEGIN
	v_profesor:=&vt_prof;
    
	select antig into v_antig from ciclos_profesor where dni_profesor=v_profesor;
    
	if v_antig>6 THEN
		v_aumento:=v_aumento+100;
	end if;
    
	select count(*) into v_cargoprof from ciclos_profesor prof, ciclos_departamento dep,ciclos_profesor jefe 
	where jefe.dni_profesor=dep.jefe_departamento and prof.departamento=dep.codigo_departamento and jefe.dni_profesor=v_profesor;
    
	if v_cargoprof > 5 then 
		v_aumento:=v_aumento+100;
	elsif v_cargoprof > 1 then 
		v_aumento:=v_aumento+80; 
	else 
		v_aumento:=v_aumento+50;
	end if;
	
    DBMS_OUTPUT.PUT_LINE('El aumento para el profesor: '||v_profesor||' será de: '||v_aumento||' EUROS');
END;