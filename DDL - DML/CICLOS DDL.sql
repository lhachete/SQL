--2) Creación de las tablas

CREATE TABLE CICLOS_ciclo (
    codigo_ciclo NUMBER(5) PRIMARY KEY,
    nombre_ciclo VARCHAR2(50) NOT NULL,
    descripcion  VARCHAR2(100)
);

CREATE TABLE CICLOS_curso (
    numero_curso NUMBER(3),
    grupo_curso VARCHAR2(3), 
    codigo_ciclo NUMBER(5) NOT NULL REFERENCES CICLOS_ciclo,
    abreviatura_ciclo VARCHAR2(10) NOT NULL,
    CONSTRAINT PK_curso PRIMARY KEY (numero_curso, grupo_curso, codigo_ciclo)
);

CREATE TABLE CICLOS_modulo (
    codigo_modulo varchar2(10) PRIMARY KEY,
    nombre_modulo VARCHAR2(80) NOT NULL,
    numero_horas_totales NUMBER(3) NOT NULL
);

CREATE TABLE CICLOS_profesor (
    dni_profesor number(10) PRIMARY KEY,
    nombre_profesor VARCHAR2(30) NOT NULL,
    email_profesor VARCHAR2(80),
    telefono_profesor NUMBER(10),
    fecha_nacimiento_profesor DATE 
);

ALTER TABLE CICLOS_curso ADD (tutor_curso number(10)  UNIQUE REFERENCES CICLOS_profesor);

CREATE TABLE CICLOS_departamento (
    codigo_departamento NUMBER(10) PRIMARY KEY,
    nombre_departamento VARCHAR2(20) NOT NULL,
    jefe_departamento number(10) UNIQUE REFERENCES CICLOS_profesor
);

ALTER TABLE CICLOS_profesor ADD (departamento NUMBER(10) REFERENCES CICLOS_departamento);

CREATE TABLE CICLOS_impartir (
    codigo_modulo varchar2(10) REFERENCES CICLOS_modulo,
    codigo_ciclo NUMBER(5),
    numero_curso NUMBER(3), 
    grupo_curso VARCHAR2(3),
    dni_profesor number(10) REFERENCES CICLOS_profesor,
    numero_horas_semanales NUMBER(3) not null,
    CONSTRAINT FK_curso FOREIGN KEY (codigo_ciclo, numero_curso, grupo_curso) REFERENCES CICLOS_curso (codigo_ciclo, numero_curso, grupo_curso), 
    CONSTRAINT PK_impartir PRIMARY KEY (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso,dni_profesor)
);


CREATE TABLE CICLOS_alumno (
    dni_alumno VARCHAR2(10) PRIMARY KEY,
    nombre_alumno VARCHAR2(20) NOT NULL,
    email_alumno VARCHAR2(50) NOT NULL,
    fecha_nacimiento_alumno DATE,
    telefono_alumno NUMBER(10),
    codigo_ciclo NUMBER(5),
    numero_curso NUMBER(3),
    grupo_curso VARCHAR2(3),
    CONSTRAINT FK_matricula FOREIGN KEY (numero_curso,grupo_curso,codigo_ciclo) REFERENCES CICLOS_curso
);


CREATE TABLE CICLOS_trimestre (
    codigo_trimestre NUMBER(5) PRIMARY KEY,
    nombre_trimestre VARCHAR2(20) NOT NULL,
    fecha_trimestre DATE NOT NULL
);

CREATE TABLE CICLOS_evaluacion (
    dni_alumno VARCHAR2(10) REFERENCES CICLOS_alumno,
    codigo_modulo varchar2(10) REFERENCES CICLOS_modulo,
    codigo_trimestre NUMBER(5) REFERENCES CICLOS_trimestre,
    nota NUMBER(4,2) NOT NULL,
    CONSTRAINT PK_evaluacion PRIMARY KEY (dni_alumno, codigo_modulo, codigo_trimestre)
);



--3) Creación de restricciones

ALTER TABLE CICLOS_profesor ADD (CONSTRAINT CK_fecha_correcta CHECK (fecha_nacimiento_profesor >= TO_DATE ('01-01-1955', 'dd-mm-yyyy'))); 

ALTER TABLE CICLOS_curso ADD (CONSTRAINT CK_numero_curso_correcto CHECK (numero_curso = 1 OR numero_curso = 2));

ALTER TABLE CICLOS_impartir ADD (CONSTRAINT CK_horas_semanales_correctas CHECK (numero_horas_semanales >= 0 AND numero_horas_semanales <= 10));

ALTER TABLE CICLOS_modulo ADD (CONSTRAINT CK_horas_totales_correctas CHECK (numero_horas_totales >= 0 AND numero_horas_totales <= 400));

ALTER TABLE CICLOS_departamento ADD (CONSTRAINT UK_nombre_departamento UNIQUE (nombre_departamento));


--4) Borrado ordenado
/*DROP TABLE CICLOS_impartir CASCADE CONSTRAINTS;
DROP TABLE CICLOS_departamento CASCADE CONSTRAINTS;
DROP TABLE CICLOS_profesor CASCADE CONSTRAINTS;
DROP TABLE CICLOS_evaluacion CASCADE CONSTRAINTS;
DROP TABLE CICLOS_modulo CASCADE CONSTRAINTS;
DROP TABLE CICLOS_trimestre CASCADE CONSTRAINTS;
DROP TABLE CICLOS_alumno CASCADE CONSTRAINTS;
DROP TABLE CICLOS_curso CASCADE CONSTRAINTS;
DROP TABLE CICLOS_ciclo CASCADE CONSTRAINTS;*/
