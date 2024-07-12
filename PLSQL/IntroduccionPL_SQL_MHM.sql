/* 1. (2 puntos) Vamos a crear nuestro primer bloque anónimo. Vas a pedir tres
variables de sustitución al usuario, una para guardar tu nombre y las otras dos
para dos números. El programa deberá saludarte “Hola <tu nombre>” y deberá
mostrar una segunda línea que diga “El resultado de la suma es: mostrar la
suma de los dos números”. Usa dbms_output para sacar por pantalla los
valores.*/

DECLARE
    nombre VARCHAR2(25);
    num1 NUMBER;
    num2 NUMBER;
    suma number;
BEGIN 
    nombre := '&Tu_nombre';
    num1 := &Tu_primer_numero;
    num2 := &Tu_Segundo_num;
    suma := num1 + num2;
    DBMS_OUTPUT.PUT_LINE('Hola ' || nombre );
    DBMS_OUTPUT.PUT_LINE('La suma del número ' ||num1 || ' y el número ' ||num2 || ' es ' ||suma );
END;


/*2. (3 puntos) Haz un bloque anónimo que pida dos números. Con estos dos
números deberá realizar lo siguiente:
a. Usando un bucle for, mostrará todos los números que hay entre ambos de
mayor a menor.
b. La cantidad total de números y la suma de todos.
c. La cantidad de positivos y de negativos (consideramos el 0 como un
número positivo).
d. Si alguno de los valores es null, debes ponerle el valor -5, si ambos valores
son null, entonces uno será 5 y el otro -5.*/

DECLARE
    num1 number;
    num2 num1%TYPE;
    total num1%TYPE := 0;
    suma num1%TYPE := 0;
    positivos num1%TYPE := 0;
    negativos num1%TYPE := 0;
BEGIN
    num1 := &el_primer_num;
    num2 := &el_segundo_num;

    IF num1 IS NULL AND num2 IS NULL THEN
        num1 := -5;
        num2 := 5;
    ELSE
        IF num1 IS NULL THEN
            num1 := -5;
        END IF;
        
        IF num2 IS NULL THEN
            num2 := -5;
        END IF;
    END IF;
    
    
    FOR i in REVERSE num1..num2
    LOOP
    
        DBMS_OUTPUT.PUT(i || ' ');
        total := total +1;
        suma := suma + i;
        
        IF i >= 0 THEN
            positivos := positivos + 1;
        ELSE
            negativos := negativos + 1;
        END IF;
        
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('Cantidad de nums: ' || total || ' / Suma de todos: ' || suma);
    DBMS_OUTPUT.PUT_LINE('Cantidad de positivos: ' || positivos);
    DBMS_OUTPUT.PUT_LINE('Cantidad de negativos: ' || negativos);
    
END;


/*3. (5 puntos) Realiza un bloque anónimo que calcule el aumento del salario de un
profesor, según sea jefe de otros profesores.
a. Si no tiene profesores a su cargo, la subida será de 50€.
b. Si tiene entre 1 y 5 profesores a su cargo, la subida será de 80€.
c. Si tiene más de 5 profesores a su cargo, la subida será de 100€.
d. Además, si tiene más de 6 años de antigüedad, se le aumentarán otros
100€.*/
/*En el bloque anónimo, primero pregunta a qué profesor quieres subir el sueldo
con una variable de sustitución. Después tendrás que mostrar por pantalla: “La
subida de salario para <nombre del profesor> será de: <cantidad calculada>”*/
--COMMIT;
--REVOKE;

DECLARE
    profesor ciclos_profesor.nombre_profesor%TYPE;
    subida NUMBER := 0;
    esJefe NUMBER;
    nProfes NUMBER;
    anti NUMBER;
BEGIN
    profesor := ltrim('&aumentar_el_salario_del_profesor');
    
    -- Para ver si el profesor seleccionado es JEFE (1) y si no (0)
    SELECT count(nombre_profesor) INTO esJefe
    FROM ciclos_profesor p
    JOIN ciclos_departamento d ON d.jefe_departamento = p.dni_profesor
    WHERE nombre_profesor LIKE profesor;
        
    -- Para ver los profesores que hay en el departamento del seleccionado
    SELECT coalesce(count(nombre_profesor), 0) INTO nProfes
    FROM ciclos_profesor
    WHERE departamento = (SELECT departamento FROM ciclos_profesor WHERE nombre_profesor LIKE profesor);

    -- Para ver la antigüedad del profesor seleccionado
    SELECT coalesce(antig, 0) INTO anti
    FROM ciclos_profesor
    WHERE nombre_profesor LIKE profesor;


    IF esJefe = 1 THEN
        IF nProfes > 5 THEN
            subida := +100;
        ELSE
            subida := +80;
        END IF;
    ELSE
        subida := subida + 50;
    END IF;
    
    IF anti > 6 THEN
        subida := subida +100;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('La subida de salario para ' || profesor || ' será de: ' || subida);
END;

