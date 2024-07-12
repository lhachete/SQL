/* 1- (2 puntos) Vamos a crear nuestro primer bloque an�nimo. Vas a pedir tres
variables de sustituci�n al usuario, una para guardar tu nombre y las otras dos
para dos n�meros. El programa deber� saludarte �Hola <tu nombre>� y deber�
mostrar una segunda l�nea que diga �El resultado de la suma es: mostrar la
suma de los dos n�meros�. Usa dbms_output para sacar por pantalla los
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


/* 2- (3 puntos) Haz un bloque an�nimo que pida dos n�meros. Con estos dos
n�meros deber� realizar lo siguiente:
a. Usando un bucle for, mostrar� todos los n�meros que hay entre ambos de mayor a menor.
b. La cantidad total de n�meros y la suma de todos.
c. La cantidad de positivos y de negativos (consideramos el 0 como un n�mero positivo).
d. Si alguno de los valores es null, debes ponerle el valor -5, si ambos valores son null, entonces uno ser� 5 y el otro -5. */
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
    
    DBMS_OUTPUT.PUT('Lista de n�meros: ');
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
    DBMS_OUTPUT.PUT_LINE('Cantidad total de n�meros: '||vItem);
    DBMS_OUTPUT.PUT_LINE('Suma de todos los n�meros: '||vSuma);
    DBMS_OUTPUT.PUT_LINE('Cantidad de n�meros negativos: '||vNegativo);
    DBMS_OUTPUT.PUT_LINE('Cantidad de n�meros positivos: '||vPositivo);
END;




 /*3. Realiza un bloque an�nimo que calcule el aumento del salario de un profesor, seg�n sea jefe de otros profesores. 
Si no tiene profesores a su cargo, la subida ser� de 50�.
Si tiene entre 1 y 5 profesores a su cargo, la subida ser� de 80�.
Si tiene m�s de 5 profesores a su cargo, la subida ser� de 100�.
Adem�s, si tiene m�s de 6 a�os de antig�edad, se le aumentar�n otros 100�.
En el bloque an�nimo, primero pregunta a qu� profesor quieres subir el sueldo con una variable de sustituci�n. 
Despu�s tendr�s que mostrar por pantalla: �La subida de salario para <nombre del profesor> ser� de: <cantidad calculada>�
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
	
    DBMS_OUTPUT.PUT_LINE('El aumento para el profesor: '||v_profesor||' ser� de: '||v_aumento||' EUROS');
END;