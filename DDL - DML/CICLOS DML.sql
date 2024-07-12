--INSERCIÓN DE DATOS
--Tabla Ciclos
INSERT INTO CICLOS_ciclo
VALUES (1, 'CFGM SMR', 'Sistemas microinformáticos y redes');
INSERT INTO CICLOS_ciclo
VALUES (2, 'CFGS ASIR', 'Administración de Sistemas Informáticos en Red');
INSERT INTO CICLOS_ciclo
VALUES (3, 'CFGS DAW', 'Desarrollo de Aplicaciones Web');
INSERT INTO CICLOS_ciclo
VALUES (4, 'CFGS DAM', 'Desarrollo de Aplicaciones Multiplataforma');
INSERT INTO CICLOS_ciclo
VALUES (5, 'Curso especialización de videojuegos', 'Curso de especialización de videojuegos y realidad virtual');

--Tabla Curso
INSERT INTO CICLOS_curso (codigo_ciclo, numero_curso, grupo_curso, abreviatura_ciclo) VALUES (1, 1, 'A', '1SMRA');
INSERT INTO CICLOS_CURSO (numero_curso, grupo_curso, codigo_ciclo, abreviatura_ciclo) VALUES (1,'B',1,'1SMRB');
insert into CICLOS_curso (codigo_ciclo, numero_curso, grupo_curso, abreviatura_ciclo) values (1, 1, 'C', '1SMRC');
INSERT INTO ciclos_curso (numero_curso, grupo_curso, codigo_ciclo, abreviatura_ciclo) VALUES ( 2, 'B', 1, '2SMRB');
INSERT INTO CICLOS_curso (codigo_ciclo, numero_curso, grupo_curso, abreviatura_ciclo) VALUES (1,  2, 'C','2SMRC');
INSERT INTO CICLOS_curso (numero_curso, grupo_curso, codigo_ciclo, abreviatura_ciclo) VALUES (1, 'A', 4, '1DAM');
insert into CICLOS_CURSO values (2,'A', 4,'2DAM',null);
INSERT INTO CICLOS_curso (numero_curso,grupo_curso,codigo_ciclo,abreviatura_ciclo) VALUES (2,'A',2,'2ASIRA');
INSERT INTO ciclos_curso (codigo_ciclo, numero_curso, grupo_curso, abreviatura_ciclo) VALUES (3, 2, 'A', '2DAWA');
insert into CICLOS_curso(numero_curso,grupo_curso,codigo_ciclo,abreviatura_ciclo) values(1,'A',5,'Videojuego');
INSERT INTO CICLOS_curso (codigo_ciclo,numero_curso, grupo_curso, abreviatura_ciclo) VALUES(3, 1, 'Sem', '1DAWSemi');
INSERT INTO CICLOS_curso (numero_curso, grupo_curso, codigo_ciclo, abreviatura_ciclo) VALUES (1, 'A', 3, '1DAW');
INSERT INTO CICLOS_curso VALUES(2, 'A',1,'1ASIRA',null);

--Tabla Módulo 
--1ºSMR
INSERT INTO CICLOS_modulo (codigo_modulo, nombre_modulo, numero_horas_totales) VALUES ('0221', 'Montaje y mantenimiento de equipos', 224);
INSERT INTO CICLOS_modulo (codigo_modulo, nombre_modulo, numero_horas_totales) VALUES ('0225', 'Redes locales', 224);
INSERT INTO CICLOS_modulo (codigo_modulo, nombre_modulo, numero_horas_totales) VALUES ('0223', 'Aplicaciones ofimáticas', 224);
INSERT INTO CICLOS_modulo (codigo_modulo, nombre_modulo, numero_horas_totales) VALUES ('0222', 'Sistemas operativos monopuesto', 128);
INSERT INTO CICLOS_modulo (codigo_modulo, nombre_modulo, numero_horas_totales) VALUES ('0229', 'Formación y Orientación Laboral', 96);
INSERT INTO CICLOS_modulo (codigo_modulo, nombre_modulo, numero_horas_totales) VALUES ('CV0001', 'Inglés Técnico I-M', 64);

--2ºSMR
INSERT INTO CICLOS_modulo VALUES ('0224', 'Sistemas operativos en red', 176);
INSERT INTO CICLOS_modulo VALUES ('0226', 'Seguridad informática', 110);
INSERT INTO CICLOS_modulo VALUES ('0227', 'Servicios en red', 176);
INSERT INTO CICLOS_modulo VALUES ('0228', 'Aplicaciones web', 88);
INSERT INTO CICLOS_modulo VALUES ('0230', 'Empresa e iniciativa emprendedora', 66);
INSERT INTO CICLOS_modulo VALUES ('CV0002', 'Inglés Técnico II-M', 44);
INSERT INTO CICLOS_modulo VALUES ('0231', 'Formación en Centros de Trabajo', 380);

--1ºDAM
INSERT INTO CICLOS_MODULO VALUES ('0373','Lenguajes de marcas y sistemas de gestión de información',96);
INSERT INTO CICLOS_MODULO VALUES ('0483','Sistemas informáticos',160);
INSERT INTO CICLOS_MODULO VALUES ('0484','Bases de Datos',160);
INSERT INTO CICLOS_MODULO VALUES ('0485','Programación',96);
INSERT INTO CICLOS_MODULO VALUES ('0487','Entornos de desarrollo',96);
INSERT INTO CICLOS_MODULO VALUES ('0493','Formación y Orientación Laboral',96);
INSERT INTO CICLOS_MODULO VALUES ('CV0003','Inglés Técnico I-S',96);

--2ºDAM
insert into CICLOS_Modulo values ('CV0004','Inglés Técnico II-S',120);
insert into CICLOS_Modulo values ('0490','Programación de servicios y procesos',60);
insert into CICLOS_Modulo values ('0494','Empresa e iniciativa emprendedora',60);
insert into CICLOS_Modulo values ('0489','Programación multimedia y dispositivos móviles',100);
insert into CICLOS_Modulo values ('0491','Sistemas de gestión empresarial',100);
insert into CICLOS_Modulo values ('0486','Acceso a datos',120);
insert into CICLOS_Modulo values ('0488','Desarrollo de interfaces',120);
INSERT INTO CICLOS_modulo VALUES ('0495', 'Formación en Centros de Trabajo', 400);
INSERT INTO CICLOS_modulo VALUES ('0492', 'Proyecto de desarrollo de aplicaciones Multiplataforma', 40);

--1ºDAW
--Son los mismos que 1ºDAM
INSERT INTO CICLOS_MODULO VALUES ('0617','Formación y Orientación Laboral',96);

--2ºDAW
INSERT INTO ciclos_modulo (codigo_modulo, nombre_modulo, numero_horas_totales)
VALUES ('0612', 'Desarrollo web en entorno cliente', 140);
INSERT INTO ciclos_modulo (codigo_modulo, nombre_modulo, numero_horas_totales)
VALUES ('0613', 'Desarrollo en entorno servidor', 160);
INSERT INTO ciclos_modulo (codigo_modulo, nombre_modulo, numero_horas_totales)
VALUES ('0614', 'Despliegue de aplicaciones web', 80);
INSERT INTO ciclos_modulo (codigo_modulo, nombre_modulo, numero_horas_totales)
VALUES ('0615', 'Diseño de interfaces web', 120);
INSERT INTO ciclos_modulo (codigo_modulo, nombre_modulo, numero_horas_totales)
VALUES ('0618', 'Empresa e iniciativa emprendedora', 60);
INSERT INTO ciclos_modulo (codigo_modulo, nombre_modulo, numero_horas_totales)
VALUES ('0616', 'Proyecto de desarrollo de aplicaciones', 40);
INSERT INTO ciclos_modulo (codigo_modulo, nombre_modulo, numero_horas_totales)
VALUES ('0619', 'Formación en Centros de Trabajo', 400);

--1ºASIR
INSERT INTO CICLOS_modulo VALUES('0370','Planificación de sistemas operativos' , 192);
INSERT INTO CICLOS_modulo VALUES('0369','Implantación de sistemas operativos' , 224);
INSERT INTO CICLOS_modulo VALUES('0371','Fundamentos de Hardware' , 96);
INSERT INTO CICLOS_modulo VALUES('0372','Gestión de bases de datos' , 160);
INSERT INTO CICLOS_modulo VALUES('0380','Formación y orientación laboral' , 96);

--2ºASIR
INSERT INTO CICLOS_modulo (codigo_modulo,nombre_modulo,numero_horas_totales)
VALUES ('0374','Administración de sistemas operativos',120);
INSERT INTO CICLOS_modulo (codigo_modulo,nombre_modulo,numero_horas_totales)
VALUES ('0375','Servicios de red e Internet',120);
INSERT INTO CICLOS_modulo (codigo_modulo,nombre_modulo,numero_horas_totales)
VALUES ('0376','Implantación de aplicaciones web',100);
INSERT INTO CICLOS_modulo (codigo_modulo,nombre_modulo,numero_horas_totales)
VALUES ('0377','Administración de sistemas gestores de bases de datos',60);
INSERT INTO CICLOS_modulo (codigo_modulo,nombre_modulo,numero_horas_totales)
VALUES ('0378','Seguridad y alta disponibilidad',100);
INSERT INTO CICLOS_modulo (codigo_modulo,nombre_modulo,numero_horas_totales)
VALUES ('0381','Empresa e iniciativa emprendedora',60);
INSERT INTO CICLOS_modulo (codigo_modulo,nombre_modulo,numero_horas_totales)
VALUES ('0382','Formación en centros de trabajo',400);
INSERT INTO CICLOS_modulo (codigo_modulo,nombre_modulo,numero_horas_totales)
VALUES ('0379','Proyecto de administración de sistemas informáticos en red',40);

--Especialización de videojuegos
insert into CICLOS_modulo(codigo_modulo,nombre_modulo,numero_horas_totales) values(5048,'Programación y motores de viedojuegos',150);
insert into CICLOS_modulo(codigo_modulo,nombre_modulo,numero_horas_totales) values(5049,'Diseño gráfico 2D y 3D ',150);
insert into CICLOS_modulo(codigo_modulo,nombre_modulo,numero_horas_totales) values(5050,'Programación en red e inteligencia artifical ',150);
insert into CICLOS_modulo(codigo_modulo,nombre_modulo,numero_horas_totales) values(5051,'Realidad virtual y realidad aumentada',150);
insert into CICLOS_modulo(codigo_modulo,nombre_modulo,numero_horas_totales) values(5052,'Gestión, publicación y producción',150);

-- Inserciones de los departamentos
INSERT INTO CICLOS_departamento (codigo_departamento, nombre_departamento) VALUES (1, 'Informática');
INSERT INTO CICLOS_departamento (codigo_departamento, nombre_departamento) VALUES (2, 'Inglés');
INSERT INTO CICLOS_departamento (codigo_departamento, nombre_departamento) VALUES (3, 'FOL');

--Tabla Profesor






INSERT INTO CICLOS_profesor(dni_profesor, nombre_profesor, email_profesor, telefono_profesor,fecha_nacimiento_profesor, departamento) 
VALUES (11111111, ' Carlos Martín Ruiz', 'carlosmruiz.ingles@iespacomolla.es', 644857468, TO_DATE('14/06/1975','DD/MM/YYYY'),2);

INSERT INTO CICLOS_profesor(dni_profesor, nombre_profesor, email_profesor, telefono_profesor,fecha_nacimiento_profesor,departamento) 
VALUES (11111117, 'Ana López García', 'analopez.fol@iespacomolla.es', 644837468, TO_DATE('17/10/1982','DD/MM/YYYY'),3);

INSERT INTO CICLOS_profesor(dni_profesor, nombre_profesor, email_profesor, telefono_profesor,fecha_nacimiento_profesor,departamento) 
VALUES (11111126, 'Luisa Fernández', 'luisafernandez.informatica@iespacomolla.es', 644427758, TO_DATE('02/11/1985','DD/MM/YYYY'),1);

INSERT INTO CICLOS_profesor(dni_profesor, nombre_profesor, email_profesor, telefono_profesor,fecha_nacimiento_profesor,departamento) 
VALUES (11111120, 'Jorge Marín Soler', 'jorgemarin.informatica@iespacomolla.es', 644747595, TO_DATE('22/01/1973','DD/MM/YYYY'),1);

INSERT INTO CICLOS_profesor(dni_profesor, nombre_profesor, email_profesor, telefono_profesor,fecha_nacimiento_profesor,departamento) 
VALUES (11111128, 'David Serrano', 'davidserrano.informatica@iespacomolla.es', 647447665, TO_DATE('28/07/1979','DD/MM/YYYY'),1);

INSERT INTO CICLOS_profesor(dni_profesor, nombre_profesor, email_profesor, telefono_profesor,fecha_nacimiento_profesor,departamento) 
VALUES (11111133, 'Marta Vidal', 'martavidal.informatica@iespacomolla.es', 647447665, TO_DATE('18/08/1972','DD/MM/YYYY'),1);

INSERT INTO CICLOS_profesor(dni_profesor, nombre_profesor, email_profesor, telefono_profesor,fecha_nacimiento_profesor,departamento) 
VALUES (11111125, 'Sergio Ramírez', 'sergioramirez.fol@iespacomolla.es', 647446885, TO_DATE('16/11/1981','DD/MM/YYYY'),2);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111112, 'Laura Esteban', 'lauraesteban.fol@iespacomolla.es', 971403768, TO_DATE('23-04-1985', 'DD-MM-YYYY'), 3);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111113, 'Roberto Juárez', 'robertojuarez.informatica@iespacomolla.es', 152398710, TO_DATE('05-11-1990', 'DD-MM-YYYY'), 1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111114, 'Sofía Morales', 'sofiamorales.informatica@iespacomolla.es', 987712439, TO_DATE('12-06-1970', 'DD-MM-YYYY'), 1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111115, 'Daniel Ortiz', 'danielortiz.informatica@iespacomolla.es', 547123786, TO_DATE('11-02-1988', 'DD-MM-YYYY'), 1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111116, 'Patricia Gómez', 'patriciagomez.informatica@iespacomolla.es', 976632918, TO_DATE('01-09-1991', 'DD-MM-YYYY'), 1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor,departamento) 
VALUES (11111130, 'Raquel Sanz', 'raquelsanz.informatica@iespacomolla.es', 654321000, TO_DATE('10/02/1990','DD/MM/YYYY'),1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor,departamento) 
VALUES (11111134, 'Óscar Méndez', 'oscarmendez.informatica@iespacomolla.es', 655566999, TO_DATE('15/04/1968','DD/MM/YYYY'),1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor,departamento) 
VALUES (11111135, 'Irene Castillo', 'irenecastillo.ingles@iespacomolla.es', 625999874, TO_DATE('25/04/1990','DD/MM/YYYY'),2);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento) 
VALUES (11111121, 'Carlos Pérez', 'carlosperez.informatica@gmail.com', 745621935, TO_DATE('06/04/1992', 'DD/MM/YYYY'), 1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento) 
VALUES (11111118, 'Elena Navarro', 'elenanavarro.informatica@gmail.com', 658432756, TO_DATE('21/10/1985', 'DD/MM/YYYY'), 1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento) 
VALUES (11111119, 'Francisco Torres', 'franciscotorres.informatica@gmail.com', 685236875, TO_DATE('29/06/1974', 'DD/MM/YYYY'), 1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento) 
VALUES (11111122, 'Laura Jiménez', 'laurajimenez.informatica@gmail.com', 723541684, TO_DATE('29/06/1974', 'DD/MM/YYYY'), 1);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento) 
VALUES (11111124, 'Alberto Casado', 'albertocasado@gmail.com', 666666667, '01-01-2001', 1);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento) 
VALUES (11111129, 'Cristina Molina', 'cristinamolina@gmail.com', 666666668, '01-01-2003', 1);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento) 
VALUES (11111132, 'Javier Sánchez', 'javiersanchez@gmail.com', 666666669, '01-01-2004', 1);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento) 
VALUES (11111136, 'Mónica Fuentes', 'monicafuentes@gmail.com', 666666611, '01-01-2006', 1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111123, 'Andrés Gálvez', 'andresgalvez.informatica@iespacomolla.es', 965387384, TO_DATE('05/06/1983','DD/MM/YYYY'),1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111131, 'Sonia Rubio', 'soniarubio.informatica@iespacomolla.es', 965387385, TO_DATE('01/07/1988','DD/MM/YYYY'),1);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111127, 'Olivia Martínez', 'oliviamartinez.informatica@iespacomolla.es', 625147589, TO_DATE('20/10/1978', 'DD/MM/YYYY'),1);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111142, 'Alejandro Gómez', 'alejandrogomez.informatica@iespacomolla.es', 966313030, TO_DATE('01/01/1998', 'DD/MM/YYYY'), 1);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111138, 'Beatriz Prado', 'beatrizprado.ingles@iespacomolla.es', 966323030, TO_DATE('01/01/1998', 'DD/MM/YYYY'), 2);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111137, 'Marco Antonio Solís', 'marcoantoniosolis.informatica@iespacomolla.es', 966333030, TO_DATE('01/01/1998', 'DD/MM/YYYY'), 1);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111139, 'Carmen Ruiz', 'carmenruiz.informatica@iespacomolla.es', 966343030, TO_DATE('01/01/1998', 'DD/MM/YYYY'), 1);

INSERT INTO ciclos_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor, departamento)
VALUES (11111140, 'Isabel Méndez', 'isabelmendez.informatica@iespacomolla.es', 966353030, TO_DATE('01/01/1998', 'DD/MM/YYYY'), 1);

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor) VALUES (11111144, 'José Pérez');

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor) VALUES (11111143, 'Luisa Moreno');

INSERT INTO CICLOS_profesor (dni_profesor, nombre_profesor, email_profesor, telefono_profesor, fecha_nacimiento_profesor) 
VALUES (11111141, 'Roberto Carlos', 'robertocarlos.informatica@iespacomolla.es', 621498877, TO_DATE('05/02/1969','DD/MM/YYYY'));

-- Update de departamento
UPDATE CICLOS_departamento SET jefe_departamento = '11111133' WHERE codigo_departamento = 1;
UPDATE CICLOS_departamento SET jefe_departamento = '11111111' WHERE codigo_departamento = 2;
UPDATE CICLOS_departamento SET jefe_departamento = '11111125' WHERE codigo_departamento = 3;

--Tabla Impartir
--1ºSMA
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0221', 1, 1, 'A', '11111116', 7);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0225', 1, 1, 'A', '11111114', 7);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0223', 1, 1, 'A', '11111115', 7);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0222', 1, 1, 'A', '11111113', 4);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0229', 1, 1, 'A', '11111112', 3);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('CV0001', 1, 1, 'A', '11111111', 2);

--1ºSMRC
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
values ('0221', 1, 1, 'C', '11111122', 7);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
values ('0225', 1, 1, 'C', '11111119', 7);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
values ('0223', 1, 1, 'C', '11111118', 7);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
values ('0222', 1, 1, 'C', '11111121', 4);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
values ('0229', 1, 1, 'C', '11111117', 3);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
values ('CV0001', 1, 1, 'C', '11111111', 2);

--2ºSMRB
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('CV0002', 1, 2, 'B', '11111111', 2);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0228', 1, 2, 'B', '11111126', 4);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0226', 1, 2, 'B', '11111126', 5);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0230', 1, 2, 'B', '11111125', 3);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0224', 1, 2, 'B', '11111127', 8);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0227', 1, 2, 'B', '11111128', 8);


--2ºSMRC
INSERT INTO CICLOS_impartir VALUES('CV0002', 1, 2, 'C', '11111111', 2);
INSERT INTO CICLOS_impartir VALUES('0224', 1, 2, 'C', '11111120', 8);
INSERT INTO CICLOS_impartir VALUES('0226', 1, 2, 'C', '11111126', 5);
INSERT INTO CICLOS_impartir VALUES('0227', 1, 2, 'C', '11111128', 8);
INSERT INTO CICLOS_impartir VALUES('0228', 1, 2, 'C', '11111126', 4);
INSERT INTO CICLOS_impartir VALUES('0230', 1, 2, 'C', '11111117', 3);

--1ºDAM
INSERT INTO CICLOS_IMPARTIR VALUES ('0373',4,1,'A','11111130',3);
INSERT INTO CICLOS_IMPARTIR VALUES ('0483',4,1,'A','11111116',5);
INSERT INTO CICLOS_IMPARTIR VALUES ('0484',4,1,'A','11111130',5);
INSERT INTO CICLOS_IMPARTIR VALUES ('0485',4,1,'A','11111134',8);
INSERT INTO CICLOS_IMPARTIR VALUES ('0487',4,1,'A','11111134',3);
INSERT INTO CICLOS_IMPARTIR VALUES ('0493',4,1,'A','11111112',3);
INSERT INTO CICLOS_IMPARTIR VALUES ('CV0003',4,1,'A','11111135',3);

--2ºDAM
INSERT INTO ciclos_impartir VALUES ('CV0004','4',2,'A',11111135,2);
INSERT INTO ciclos_impartir VALUES ('0490','4',2,'A',11111124,3);
INSERT INTO ciclos_impartir VALUES ('0494','4',2,'A',11111112,3);
INSERT INTO ciclos_impartir VALUES ('0489','4',2,'A',11111129,5);
INSERT INTO ciclos_impartir VALUES ('0491','4',2,'A',11111132,5);
INSERT INTO ciclos_impartir VALUES ('0486','4',2,'A',11111134,6);
INSERT INTO ciclos_impartir VALUES ('0488','4',2,'A',11111136,6);

--1ºASIR

--2ºASIR
INSERT INTO CICLOS_impartir (codigo_modulo,codigo_ciclo,numero_curso,grupo_curso,dni_profesor,numero_horas_semanales)
VALUES ('0374',2,2,'A','11111132',6);
INSERT INTO CICLOS_impartir (codigo_modulo,codigo_ciclo,numero_curso,grupo_curso,dni_profesor,numero_horas_semanales)
VALUES ('0375',2,2,'A','11111123',6);
INSERT INTO CICLOS_impartir (codigo_modulo,codigo_ciclo,numero_curso,grupo_curso,dni_profesor,numero_horas_semanales)
VALUES ('0376',2,2,'A','11111129',5);
INSERT INTO CICLOS_impartir (codigo_modulo,codigo_ciclo,numero_curso,grupo_curso,dni_profesor,numero_horas_semanales)
VALUES ('0377',2,2,'A','11111133',3);
INSERT INTO CICLOS_impartir (codigo_modulo,codigo_ciclo,numero_curso,grupo_curso,dni_profesor,numero_horas_semanales)
VALUES ('0378',2,2,'A','11111131',5);
INSERT INTO CICLOS_impartir (codigo_modulo,codigo_ciclo,numero_curso,grupo_curso,dni_profesor,numero_horas_semanales)
VALUES ('0381',2,2,'A','11111125',3);
INSERT INTO CICLOS_impartir (codigo_modulo,codigo_ciclo,numero_curso,grupo_curso,dni_profesor,numero_horas_semanales)
VALUES ('CV0004',2,2,'A','11111111',2);

--1ºDAW semi
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales) VALUES ('0373', 3, 1, 'Sem', '11111130', 3);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales) VALUES ('0493', 3, 1, 'Sem', '11111117', 3);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales) VALUES ('0487', 3, 1, 'Sem', '11111143', 3);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales) VALUES ('CV0003', 3, 1, 'Sem', '11111138', 3);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales) VALUES ('0484', 3, 1, 'Sem', '11111137', 5);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales) VALUES ('0483', 3, 1, 'Sem', '11111127', 5);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales) VALUES ('0485', 3, 1, 'Sem', '11111141', 8);

--1ºDAW
INSERT INTO CICLOS_IMPARTIR VALUES ('0373',3,1,'A','11111137',3);
INSERT INTO CICLOS_IMPARTIR VALUES ('0483',3,1,'A','11111139',5);
INSERT INTO CICLOS_IMPARTIR VALUES ('0484',3,1,'A','11111140',5);
INSERT INTO CICLOS_IMPARTIR VALUES ('0485',3,1,'A','11111141',8);
INSERT INTO CICLOS_IMPARTIR VALUES ('0487',3,1,'A','11111119',3);
INSERT INTO CICLOS_IMPARTIR VALUES ('0617',3,1,'A','11111117',3);
INSERT INTO CICLOS_IMPARTIR VALUES ('CV0003',3,1,'A','11111138',3);


--2ºDAW
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('CV0004', 3, 2, 'A', 11111138, 2);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0614', 3, 2, 'A', 11111140, 4);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0618', 3, 2, 'A', 11111125, 3);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0615', 3, 2, 'A', 11111139, 6);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0612', 3, 2, 'A', 11111142, 7);
INSERT INTO ciclos_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, dni_profesor, numero_horas_semanales)
VALUES ('0613', 3, 2, 'A', 11111137, 7);

--Curso de especialización
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso,numero_horas_semanales,dni_profesor) VALUES(5049,5,1,'A',5,11111136);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso,numero_horas_semanales,dni_profesor) VALUES(5049,5,1,'A',5,11111144);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso,numero_horas_semanales,dni_profesor) VALUES(5052,5,1,'A',4,11111142);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso,numero_horas_semanales,dni_profesor) VALUES(5052,5,1,'A',4,11111121);
INSERT INTO CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso,numero_horas_semanales,dni_profesor) VALUES(5049,5,1,'A',5,11111139);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, numero_horas_semanales, dni_profesor) values (5052, 5, 1, 'A', 4, 11111144);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, numero_horas_semanales, dni_profesor) values (5048, 5, 1, 'A', 5, 11111144);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, numero_horas_semanales, dni_profesor) values (5051, 5, 1, 'A', 3, 11111143);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, numero_horas_semanales, dni_profesor) values (5051, 5, 1, 'A', 3, 11111144);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, numero_horas_semanales, dni_profesor) values (5050, 5, 1, 'A', 3, 11111121);
insert into CICLOS_impartir (codigo_modulo, codigo_ciclo, numero_curso, grupo_curso, numero_horas_semanales, dni_profesor) values (5050, 5, 1, 'A', 3, 11111144);

--Tabla Alumno
INSERT INTO CICLOS_alumno VALUES('33111118', 'Alejandro Martínez', 'alejandromartinez.alu@iespacomolla.es', TO_DATE('25/06/1999', 'DD/MM/YYYY'), 644985214, 1, 2, 'C');
INSERT INTO CICLOS_alumno VALUES('33111133', 'Lucía Hernández', 'luciahernandez.alu@iespacomolla.es', TO_DATE('14/08/2000', 'DD/MM/YYYY'), 644974522, 1, 2, 'C');
INSERT INTO CICLOS_alumno VALUES('33100951', 'Mario Garcia', 'mariogarcia.alu@iespacomolla.es', TO_DATE('15/07/1999', 'DD/MM/YYYY'), 644914575, 1, 2, 'C');
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('3511111125', 'Carmen López', 'carmenlopez.alu@iespacomolla.es', TO_DATE('10-07-1985', 'DD-MM-YYYY'), 752098879, 1, 1, 'A');
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('3511111133', 'Sara Jiménez', 'sarajimenez.alu@iespacomolla.es', TO_DATE('15-07-1999', 'DD-MM-YYYY'), 644904503, 1, 1, 'A');
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('3511111134', 'Iker González', 'ikergonzalez.alu@iespacomolla.es', TO_DATE('25-03-1995', 'DD-MM-YYYY'), 635535989, 1, 1, 'A');
INSERT INTO CICLOS_ALUMNO(DNI_ALUMNO, NOMBRE_ALUMNO, EMAIL_ALUMNO, FECHA_NACIMIENTO_ALUMNO, NUMERO_CURSO, GRUPO_CURSO, CODIGO_CICLO) 
VALUES('11111115','Laura Martín','lauramartin@iespacolla.es', TO_DATE('23/07/1993','DD/MM/YYYY'),1,'A',4);
INSERT INTO CICLOS_ALUMNO(DNI_ALUMNO, NOMBRE_ALUMNO, EMAIL_ALUMNO, FECHA_NACIMIENTO_ALUMNO, NUMERO_CURSO, GRUPO_CURSO, CODIGO_CICLO) 
VALUES('11167115','Óscar Muñoz','oscarmunoz@iespacolla.es', TO_DATE('28/02/1997','DD/MM/YYYY'),1,'A',4);
INSERT INTO CICLOS_ALUMNO(DNI_ALUMNO, NOMBRE_ALUMNO, EMAIL_ALUMNO, FECHA_NACIMIENTO_ALUMNO, NUMERO_CURSO, GRUPO_CURSO, CODIGO_CICLO) 
VALUES('11115515','Adrián García','adriangarcia@iespacolla.es', TO_DATE('13/08/1995','DD/MM/YYYY'),1,'A',4);
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('11111120', 'Raúl Gómez', 'raulgomez.alumno@iespacomolla.es', TO_DATE('10/05/1991', 'DD/MM/YYYY'), 632451751, 1, 1, 'C');
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('32111111', 'Esther Ruiz', 'estherruiz.alumno@iespacomolla.es', TO_DATE('02/06/2002', 'DD/MM/YYYY'), 765123489, 1, 1, 'C');
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('33111111', 'Clara Sánchez', 'clarasanchez.alumno@iespacomolla.es', TO_DATE('15/07/1999', 'DD/MM/YYYY'), 642587139, 1, 1, 'C');
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('31111111', 'Roberto Alonso', 'robertoalonso.alumno@iespacomolla.es', TO_DATE('07/09/1979', 'DD/MM/YYYY'), 743923415, 1, 1, 'C');
INSERT INTO ciclos_alumno values ('11111111','Elena Torres','elenatorres@gmail.com','29-11-1989',777777777,4,2,'A');
INSERT INTO ciclos_alumno values ('11111112','Iván Martínez','ivanmartinez@gmail.com','29-11-1990',777777778,4,2,'A');
INSERT INTO ciclos_alumno values ('11111113','María López','marialopez@gmail.com','29-11-1991',777777779,4,2,'A');
INSERT INTO CICLOS_alumno (dni_alumno,nombre_alumno,email_alumno,fecha_nacimiento_alumno,telefono_alumno,codigo_ciclo,numero_curso,grupo_curso)
VALUES ('45111126','Ana Isabel','ana.isabel.alu@iespacomolla.es',TO_DATE('07/08/1986','DD/MM/YYYY'),null,2,2,'A');
INSERT INTO CICLOS_alumno (dni_alumno,nombre_alumno,email_alumno,fecha_nacimiento_alumno,telefono_alumno,codigo_ciclo,numero_curso,grupo_curso)
VALUES ('45111133','Pedro Navaja','p.navaja.alu@iespacomolla.es',TO_DATE('21/01/1953','DD/MM/YYYY'),null,2,2,'A');
INSERT INTO CICLOS_alumno (dni_alumno,nombre_alumno,email_alumno,fecha_nacimiento_alumno,telefono_alumno,codigo_ciclo,numero_curso,grupo_curso)
VALUES ('45111134','Julio Iglesias','j.iglesias.alu@iespacomolla.es',TO_DATE('17/08/1944','DD/MM/YYYY'),null,2,2,'A');
INSERT INTO ciclos_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('11111114', 'Marta Dominguez', 'm.dominguez@iespacomolla.es', TO_DATE('24/11/2003','dd/mm/yyyy'), 666555225, 1, 2, 'B');
INSERT INTO ciclos_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('31111114', 'Juan Pérez', 'j.perez@miespacoolla.es', TO_DATE('24/10/2003','dd/mm/yyyy'), 666555222, 1, 2, 'B');
INSERT INTO ciclos_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('31111118', 'Luisa Pérez', 'l.perez@iespacomolla.es', TO_DATE('07/07/2003', 'dd/mm/yyyy'), 666555022, 1, 2, 'B');
INSERT INTO ciclos_alumno (dni_alumno, nombre_alumno, email_alumno, fecha_nacimiento_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso)
VALUES ('26111114', 'Sergio Almodovar', 'sergioalmodovar@iespacomolla.es', TO_DATE('20/09/1995', 'DD/MM/YYYY'), 966403030, 3, 2, 'A');
INSERT INTO CICLOS_alumno(dni_alumno,nombre_alumno,email_alumno,fecha_nacimiento_alumno,codigo_ciclo) VALUES(24111124,'Cristina Fernández', 'cristinafernandez.alu@iespacomolla.es',TO_DATE('03/05/1982','DD/MM/YYYY'),5);
INSERT INTO CICLOS_alumno(dni_alumno,nombre_alumno,email_alumno,fecha_nacimiento_alumno,codigo_ciclo) VALUES(24111128,'Laura Rodríguez', 'lararodriguez.alu@iespacomolla.es',TO_DATE('10/04/1988','DD/MM/YYYY'),5);
INSERT INTO CICLOS_alumno(dni_alumno,nombre_alumno,email_alumno,fecha_nacimiento_alumno,codigo_ciclo) VALUES(25111132,'Miguel Ángel','miguelangel.alu@iespacomolla.es',TO_DATE('19/04/1970','DD/MM/YYYY'),5);
INSERT INTO CICLOS_alumno(dni_alumno,nombre_alumno,email_alumno,fecha_nacimiento_alumno,codigo_ciclo) VALUES(25111123,'Carlos Sánchez','carlossanchez.alu@iespacomolla.es',TO_DATE('02/04/1975','DD/MM/YYYY'),5);
INSERT INTO CICLOS_alumno(dni_alumno,nombre_alumno,email_alumno,fecha_nacimiento_alumno,codigo_ciclo) VALUES(25111134,'Fernando Campello','fernandocampello.alu@iespacomolla.es',TO_DATE('09/05/1993','DD/MM/YYYY'),5);
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, fecha_nacimiento_alumno, email_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso) VALUES ('21111123', 'Enrique Castro', TO_DATE( '11/08/1983' ,'DD/MM//YYYY'), 'enrique@gmail.com', 611111110, 3, 1, 'Sem' );
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, fecha_nacimiento_alumno, email_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso) VALUES ('12111124', 'David Sánchez', TO_DATE('22/02/1969' ,'DD/MM//YYYY'), 'david@gmail.com', 617715163, 3, 1, 'Sem');
INSERT INTO CICLOS_alumno (dni_alumno, nombre_alumno, fecha_nacimiento_alumno, email_alumno, telefono_alumno, codigo_ciclo, numero_curso, grupo_curso) VALUES ('12111113', 'Alejandro Sempere', TO_DATE('16/02/1995' ,'DD/MM//YYYY'), 'alejandro@gmail.com', 611515163, 3, 1, 'Sem');
INSERT INTO CICLOS_ALUMNO(DNI_ALUMNO, NOMBRE_ALUMNO, EMAIL_ALUMNO, FECHA_NACIMIENTO_ALUMNO, NUMERO_CURSO, GRUPO_CURSO, CODIGO_CICLO) VALUES('15111122','Nacho Martínez','nachocano@iespacolla.es', TO_DATE('30/12/1986','DD/MM/YYYY'),1,'A',3);
INSERT INTO CICLOS_ALUMNO(DNI_ALUMNO, NOMBRE_ALUMNO, EMAIL_ALUMNO, FECHA_NACIMIENTO_ALUMNO, NUMERO_CURSO, GRUPO_CURSO, CODIGO_CICLO) VALUES('15111156','Rosario García','rosarioflores@iespacolla.es', TO_DATE('28/02/1997','DD/MM/YYYY'),1,'A',3);
INSERT INTO CICLOS_ALUMNO(DNI_ALUMNO, NOMBRE_ALUMNO, EMAIL_ALUMNO, FECHA_NACIMIENTO_ALUMNO, NUMERO_CURSO, GRUPO_CURSO, CODIGO_CICLO) VALUES('15111115','Pablo Sevilla','pabloalboran@iespacolla.es', TO_DATE('13/08/1995','DD/MM/YYYY'),1,'A',3);
INSERT INTO CICLOS_ALUMNO (DNI_ALUMNO, NOMBRE_ALUMNO, FECHA_NACIMIENTO_ALUMNO, NUMERO_CURSO, GRUPO_CURSO, CODIGO_CICLO,email_alumno) VALUES ('12111117','Antonio Campello',TO_DATE('08/12/1999','DD/MM/YYYY'),1,'B',1,'antonio@gmail.com');
INSERT INTO CICLOS_ALUMNO (DNI_ALUMNO, NOMBRE_ALUMNO, FECHA_NACIMIENTO_ALUMNO, NUMERO_CURSO, GRUPO_CURSO, CODIGO_CICLO,email_alumno) VALUES ('12111118','Carmen Pérez',TO_DATE('15/07/1999','DD/MM/YYYY'),1,'B',1,'malu@gmail.com');
INSERT INTO CICLOS_ALUMNO (DNI_ALUMNO, NOMBRE_ALUMNO, FECHA_NACIMIENTO_ALUMNO, NUMERO_CURSO, GRUPO_CURSO, CODIGO_CICLO,email_alumno) VALUES ('11111116','David Del Val',TO_DATE('12/12/1998','DD/MM/YYYY'),1,'B',1,'david@gmail.com');


--Tabla Trimestre
INSERT INTO CICLOS_trimestre VALUES(1, '1er trimestre 22/23', TO_DATE('22/12/2022', 'DD/MM/YYYY'));
INSERT INTO CICLOS_trimestre VALUES(2, '2º trimestre 22/23', TO_DATE('16/03/2023', 'DD/MM/YYYY'));
INSERT INTO CICLOS_trimestre VALUES(3, '3er trimestre 22/23', TO_DATE('19/06/2023', 'DD/MM/YYYY'));

--Tabla Evaluación

INSERT INTO CICLOS_evaluacion VALUES('33111118', '0226', 1, 6.7);
INSERT INTO CICLOS_evaluacion VALUES('33111118', '0227', 1, 5.35);
INSERT INTO CICLOS_evaluacion VALUES('33111118', '0228', 1, 4.3);

INSERT INTO CICLOS_evaluacion VALUES('33111133', '0226', 1, 2.41);
INSERT INTO CICLOS_evaluacion VALUES('33111133', '0227', 1, 8.00);
INSERT INTO CICLOS_evaluacion VALUES('33111133', '0228', 1, 5.00);

INSERT INTO CICLOS_evaluacion VALUES('33100951', '0226', 1, 7.00);
INSERT INTO CICLOS_evaluacion VALUES('33100951', '0227', 1, 7.50);
INSERT INTO CICLOS_evaluacion VALUES('33100951', '0228', 1, 3.85);

INSERT INTO CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('3511111125', '0221', 1, 4.5);
INSERT INTO CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('3511111133', '0225', 1, 8);
INSERT INTO CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('3511111134', '0223', 1, 8);

INSERT INTO CICLOS_EVALUACION VALUES ('11111115','0484',1,9);
INSERT INTO CICLOS_EVALUACION VALUES ('11167115','0484',1,6); 
INSERT INTO CICLOS_EVALUACION VALUES ('11115515','0484',1,3);

insert into CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota) values ('32111111', '0221', 3, 8.5);
insert into CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota) values ('33111111', '0223', 3, 3.2);
insert into CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota) values ('31111111', '0225', 3, 6.7);

INSERT INTO ciclos_evaluacion VALUES ('11111111','0494',1,5);
INSERT INTO Ciclos_Evaluacion VALUES ('11111112','0494',1,7); 
INSERT INTO ciclos_evaluacion VALUES ('11111113','0494',1,2);
INSERT INTO ciclos_evaluacion VALUES ('11111111','0488',1,2);
INSERT INTO Ciclos_Evaluacion VALUES ('11111112','0488',1,5); 
INSERT INTO ciclos_evaluacion VALUES ('11111113','0488',1,6);
INSERT INTO ciclos_evaluacion VALUES ('11111111','0486',1,8);
INSERT INTO Ciclos_Evaluacion VALUES ('11111112','0486',1,9); 
INSERT INTO ciclos_evaluacion VALUES ('11111113','0486',1,3);
INSERT INTO CICLOS_evaluacion (dni_alumno,codigo_modulo,codigo_trimestre,nota)
VALUES ('45111126','0374',3,9);
INSERT INTO CICLOS_evaluacion (dni_alumno,codigo_modulo,codigo_trimestre,nota)
VALUES ('45111126','0375',3,7);
INSERT INTO CICLOS_evaluacion (dni_alumno,codigo_modulo,codigo_trimestre,nota)
VALUES ('45111126','0376',3,2);
INSERT INTO CICLOS_evaluacion (dni_alumno,codigo_modulo,codigo_trimestre,nota)
VALUES ('45111133','0374',3,8);
INSERT INTO CICLOS_evaluacion (dni_alumno,codigo_modulo,codigo_trimestre,nota)
VALUES ('45111133','0375',3,6);
INSERT INTO CICLOS_evaluacion (dni_alumno,codigo_modulo,codigo_trimestre,nota)
VALUES ('45111133','0376',3,4);
INSERT INTO CICLOS_evaluacion (dni_alumno,codigo_modulo,codigo_trimestre,nota)
VALUES ('45111134','0374',3,5);
INSERT INTO CICLOS_evaluacion (dni_alumno,codigo_modulo,codigo_trimestre,nota)
VALUES ('45111134','0375',3,3);
INSERT INTO CICLOS_evaluacion (dni_alumno,codigo_modulo,codigo_trimestre,nota)
VALUES ('45111134','0376',3,1);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('11111114', '0228', 1, 8.5);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('11111114', '0230', 1, 5.5);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('11111114', '0227', 1, 3.2);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('31111114', '0228', 1, 8.5);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('31111114', '0230', 1, 2.5);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('31111114', '0227', 1, 8.2);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('31111118', '0228', 1, 5.5);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('31111118', '0230', 1, 1.5);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('31111118', '0227', 1, 8.2);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('26111114', '0612', 1, 6);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('26111114', '0613', 1, 7);
INSERT INTO ciclos_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota)
VALUES ('26111114', '0614', 1, 4);
insert into CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota) values (25111132, 5052, 2, 3);
insert into CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota) values (25111123, 5052, 2, 8);
insert into CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota) values (25111134, 5052, 2, 9);
INSERT INTO CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota) VALUES ('21111123', '0485', 2 , 8);
INSERT INTO CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota) VALUES ('12111124', '0485', 2 , 4);
INSERT INTO CICLOS_evaluacion (dni_alumno, codigo_modulo, codigo_trimestre, nota) VALUES ('12111113', '0485', 2 , 6);
INSERT INTO CICLOS_EVALUACION VALUES ('15111122','0485',1,7);
INSERT INTO CICLOS_EVALUACION VALUES ('15111156','0485',1,8); 
INSERT INTO CICLOS_EVALUACION VALUES ('15111115','0485',1,2);

INSERT INTO CICLOS_EVALUACION (DNI_ALUMNO, CODIGO_MODULO, CODIGO_TRIMESTRE, NOTA) VALUES ('12111117','0221','1',8);
INSERT INTO CICLOS_EVALUACION (DNI_ALUMNO, CODIGO_MODULO, CODIGO_TRIMESTRE, NOTA) VALUES ('12111118','0229','1',10);
INSERT INTO CICLOS_EVALUACION (DNI_ALUMNO, CODIGO_MODULO, CODIGO_TRIMESTRE, NOTA) VALUES ('12111118','CV0001','1',3);


--UPDATE CICLOS_curso para insertar al tutor
UPDATE CICLOS_curso SET tutor_curso=11111114 WHERE codigo_ciclo = 1 AND numero_curso = 1 AND grupo_curso = 'A';
UPDATE CICLOS_curso SET tutor_curso=11111128 WHERE numero_curso=2 AND grupo_curso='C' AND codigo_ciclo=1;
UPDATE CICLOS_CURSO SET tutor_curso=11111134 WHERE numero_curso=1 AND codigo_ciclo=4 AND grupo_curso='A'; 
update CICLOS_curso set tutor_curso=11111118 where abreviatura_ciclo='1SMRC';
update ciclos_curso set tutor_curso=11111136 where numero_curso=2 and codigo_ciclo=4 and grupo_curso='A';
UPDATE CICLOS_curso SET tutor_curso=11111129 WHERE numero_curso=2 AND grupo_curso='A' AND codigo_ciclo=2;
UPDATE ciclos_curso SET tutor_curso=11111127 WHERE numero_curso=2 and grupo_curso='B' and codigo_ciclo=1 and abreviatura_ciclo='2SMRB';
UPDATE CICLOS_curso SET tutor_curso=11111139 WHERE codigo_ciclo=5;
UPDATE CICLOS_curso SET tutor_curso=11111143 WHERE numero_curso=1 AND codigo_ciclo=3 AND grupo_curso='Sem'; 
UPDATE CICLOS_CURSO SET tutor_curso=11111141 WHERE numero_curso=1 AND codigo_ciclo=3 AND grupo_curso='A';
--UPDATE CICLOS_profesor, fechas de nacimiento
UPDATE CICLOS_profesor SET fecha_nacimiento_profesor=TO_DATE('15/12/1966','DD/MM/YYYY') WHERE dni_profesor=11111111;
UPDATE CICLOS_profesor SET fecha_nacimiento_profesor=TO_DATE('04/12/1977','DD/MM/YYYY') WHERE dni_profesor=11111117;
UPDATE CICLOS_profesor SET fecha_nacimiento_profesor=TO_DATE('06/02/1966','DD/MM/YYYY') WHERE dni_profesor=11111126;
UPDATE CICLOS_profesor SET fecha_nacimiento_profesor=TO_DATE('30/04/1977','DD/MM/YYYY') WHERE dni_profesor=11111128;
UPDATE CICLOS_profesor SET fecha_nacimiento_profesor=TO_DATE('15/07/1972','DD/MM/YYYY') WHERE dni_profesor=11111133;
UPDATE CICLOS_profesor SET fecha_nacimiento_profesor=TO_DATE('07/03/1964','DD/MM/YYYY') WHERE dni_profesor=11111028;

/*Añadir antigüedad*/
alter table ciclos_profesor add antig number(2);

update ciclos_profesor set antig=7 where departamento=3;
update ciclos_profesor set antig=10 where departamento=1;
update ciclos_profesor set antig=2 where departamento=2;

