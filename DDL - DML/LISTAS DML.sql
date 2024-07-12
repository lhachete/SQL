
-- Creamos la secuencia que pertenece al DDL pero que nuestra querida profesora no lo ha hecho.
-- DROP SEQUENCE secuencia_en_lista;
CREATE SEQUENCE secuencia_en_lista START WITH 1 INCREMENT BY 1 MAXVALUE 999;



-- El fallo es que en la tabla no estaba creado el campo de código.

INSERT INTO LISTAS_PAIS VALUES ('España');
INSERT INTO LISTAS_PAIS VALUES ('Senegal');
INSERT INTO LISTAS_PAIS VALUES ('Mongolia');
INSERT INTO LISTAS_PAIS VALUES ('Estados Unidos');
INSERT INTO LISTAS_PAIS VALUES ('Reino Unido');
INSERT INTO LISTAS_PAIS VALUES ('Suecia');
INSERT INTO LISTAS_PAIS VALUES ('Colombia');
INSERT INTO LISTAS_PAIS VALUES ('Trinidad y Tobago');
INSERT INTO LISTAS_PAIS VALUES ('Italia');
INSERT INTO LISTAS_PAIS VALUES ('Panamá');
INSERT INTO LISTAS_PAIS VALUES ('Australia');
INSERT INTO LISTAS_PAIS VALUES ('Canadá');
INSERT INTO LISTAS_PAIS VALUES ('Noruega');
INSERT INTO LISTAS_PAIS VALUES ('Francia');
INSERT INTO LISTAS_PAIS VALUES ('Nueva Zelanda');



-- A LA HORA DE INSERTAR NO PODEMOS HACERLO CON ESTA LINEA PORQUE ESTA DUPLICADA. 
-- INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Tennessee','Estados Unidos');

-- Además hemos tenido que modificar varias cosas como "nombre de la tabla", borrar el código de país y sustituir
-- el codigo pais por el nombre del país (una odisea, vamos).


INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Gran Londres','Reino Unido');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Nueva Jersey','Reino Unido');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Georgia','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Pensilvania','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Gran Machester','Reino Unido');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Nueva York','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Misisipi','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Misuri','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Indiana','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Merseyside','Reino Unido');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Minesota','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Washington','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('California','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Washington D. C.','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Estocolmo','Suecia');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Virginia','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Texas','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Míchigan','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Auckland','Nueva Zelanda');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Puerto Rico','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('West Yorkshire','Reino Unido');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Ontario','Canadá');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Atlántico','Colombia');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Oslo','Noruega');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Hawái','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Isla de Francia','Francia');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Florida','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Irlanda del Norte','Reino Unido');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Oregón','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Antioquia','Colombia');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Piamonte','Italia');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Granada','España');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Panamá','Panamá');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Victoria','Australia');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Kentucky','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Tennessee','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Alabama','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Arkansas','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Madrid','España');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Tarragona','España');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Valencia','España');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Dundgovi','Mongolia');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Sevilla','España');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Girona','España');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Dakar','Senegal');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Las Palmas de Gran Canaria', 'España');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Barcelona','España');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Escocia','Reino Unido');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Latina','Italia');


-- Vamos ahora a arreglar esta inserci�n "Listas_ciudad". En primer lugar vemos que est�n mal establecidos
-- los campos de la tabla. Por lo que tenemos que cambiarlos para que haga referencia a ella. O no ponerlos puesto
-- que como le voy a poner todos los datos no har�a falta poner los nombres de los campos. 

	
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Bexleyheath','Gran Londres','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Basildon','Nueva Jersey','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Memphis','Tennessee','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Atlanta','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Abingdon','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Londres','Gran Londres','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Reading','Pensilvania','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Manchester','Gran Machester','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Queens','Nueva York','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Tupelo','Misisipi','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('San Luis','Misuri','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Gary','Indiana','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('McComb','Misisipi','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Liverpool','Merseyside','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Duluth','Minesota','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Clarksdale','Misisipi','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Albany','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Aberdeen','Washington','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Hawthorne','California','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Washington D. C.','Washington D. C.','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Enfield','Gran Londres','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Estocolmo','Estocolmo','Suecia');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Brixton','Gran Londres','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Portsmouth','Virginia','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Brooklyn','Nueva York','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Compton','California','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Fort Worth','Texas','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Houston','Texas','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Hounslow','Gran Londres','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Detroit','Míchigan','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Nueva York','Nueva York','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Auckland','Auckland','Nueva Zelanda');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('San Juan','Puerto Rico','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Halifax','West Yorkshire','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Santa Bárbara','California','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('London','Ontario','Canadá');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Barranquilla','Atlántico','Colombia');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Oslo','Oslo','Noruega');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Honolulú','Hawái','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('París','Isla de Francia','Francia');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Bay City','Míchigan','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Mineápolis','Minesota','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Newark','Nueva Jersey','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Orlando','Florida','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Los Ángeles','California','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Belfast','Washington D. C.','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Malibú','California','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Long Branch','Nueva Jersey','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Toronto','Ontario','Canadá');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Portland','Oregón','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('New Rochelle','Nueva York','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Medellín','Antioquia','Colombia');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Turín','Piamonte','Italia');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Salinas','Puerto Rico','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Ítrabo','Granada','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Almirante Sur','Puerto Rico','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Río Abajo','Panamá','Panamá');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Mount Martha','Victoria','Australia');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Butcker Hollow','Kentucky','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Poteet','Texas','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Kosse','Texas','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Nashville','Tennessee','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Mount Olive','Alabama','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Rosine','Kentucky','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Sherman','Texas','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Dickenson County','Virginia','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Littlefield','Texas','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Sevierville','Tennessee','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Bakersfield','California','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Itawamba','Misisipi','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Vidor','Texas','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Winchester','Virginia','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Kingsland','Arkansas','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Madrid','Madrid','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Tortosa','Tarragona','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Sagunto','Valencia','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Mandalgobi','Dundgovi','Mongolia');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Sevilla','Sevilla','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Sant Jordi Desvalls','Girona','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Dakar','Dakar','Senegal');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Gran Canaria','Las Palmas de Gran Canaria', 'España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Barcelona','Barcelona','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Agoura Hills','California','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Clydebank','Escocia','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Latina','Latina','Italia');



-- Ahora vamos a insertar todos los componentes de la lista_artista; Aqu� vemos que hemos tenido que modificar tanto los datos de entrada
-- como la tabla DDL ya que la clave primaria era diferente. Al final lo hemos conseguido. 

INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (1,'Kate Bush','Bexleyheath','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (2,'Depeche Mode','Basildon','Nueva Jersey','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (3,'The Box Tops','Memphis','Tennessee','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (4,'OutKast','Atlanta','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (5,'Radiohead','Abingdon','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (6,'The B-52’s','Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (7,'Kanye West','Atlanta','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (8,'The Clash','Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (9,'Lil Nas X','Atlanta','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (10,'Taylor Swift','Reading','Pensilvania','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (11,'The Smiths','Manchester','Gran Machester','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (12,'Ramones','Queens','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (13,'Elvis Presley','Tupelo','Misisipi','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (14,'Led Zeppelin','Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (15,'R.E.M','Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (16,'Chuck Berry','San Luis','Misuri','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (17,'Run-DMC','Queens','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (18,'The Jackson 5','Gary','Indiana','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (19,'The Sex Pistols','Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (20,'Britney Spears','McComb','Misisipi','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (21,'The Beatles','Liverpool','Merseyside','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (22,'The Jimi Hendrix Experience','Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (24,'Bob Dylan','Duluth','Minesota','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (25,'Sam Cooke','Clarksdale','Misisipi','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (26,'The Who','Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (27,'Ray Charles','Albany','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (28,'Nirvana','Aberdeen','Washington','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (29,'The Beach Boys','Hawthorne','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (30,'Aretha Franklin','Memphis','Tennessee','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (31,'Marvin Gaye','Washington D. C.','Washington D. C.','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (32,'John Lennon','Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (33,'The Rolling Stones','Athens','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (34,'Amy Winehouse','Enfield','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (35,'Robyn','Estocolmo','Estocolmo','Suecia');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (36,'David Bowie','Brixton','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (37,'Missy Elliot','Portsmouth','Virginia','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (38,'LCD Soundsystem','Brooklyn','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (39,'Gnarls Barkley','Atlanta','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (40,'Kendrick Lamar','Compton','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (41,'Kelly Clarkson','Fort Worth','Texas','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (42,'Beyoncé','Houston','Texas','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (43,'M.I.A.','Hounslow','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (44,'The White Stripes','Detroit','Míchigan','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (45,'Jay-Z','Brooklyn','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (46,'Yeah Yeah Yeahs','Nueva York','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (47,'Adele','Londres','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (48,'Lorde','Auckland','Auckland','Nueva Zelanda');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (49,'The Strokes','Nueva York','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (50,'Luis Fonsi','San Juan','Puerto Rico','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (51,'Ed Sheeran','Halifax','West Yorkshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (52,'Katy Perry','Santa Bárbara','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (53,'Justin Bieber','London','Ontario','Canadá');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (54,'Shakira','Barranquilla','Atlántico','Colombia');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (55,'A-ha','Oslo','Oslo','Noruega');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (56,'Bruno Mars','Honolulú','Hawái','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (57,'Daft Punk','París','Isla de Francia','Francia');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (58,'Michael Jackson','Gary','Indiana','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (59,'Madonna','Bay City','Míchigan','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (60,'Prince','Mineápolis','Minesota','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (61,'Whitney Houston','Newark','Nueva Jersey','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (62,'Backstreet Boys','Orlando','Florida','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (63,'Lady Gaga','Nueva York','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (64,'Neil Young and Crazy Horse','Los Ángeles','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (65,'Van Morrison','Belfast','Washington D. C.','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (66,'Little Feat','Los Ángeles','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (67,'Paul Simon','Newark','Nueva Jersey','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (68,'Dereck and The Dominos','Londres','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (69,'Fleetwood Mac','Londres','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (70,'The Traveling Wilburys','Malibú','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (71,'Pink Floyd','Londres','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (72,'Bruce Springsteen','Long Branch','Nueva Jersey','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (73,'The Band','Toronto','Ontario','Canadá');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (74,'The Kinks','Londres','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (75,'Lou Reed','Brooklyn','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (76,'Eagles','Los Ángeles','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (77,'The Doors','Los Ángeles','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (78,'The Kingsmen','Portland','Oregón','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (79,'Don McLean','New Rochelle','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (80,'Karol G','Medellín','Antioquia','Colombia');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (81,'Fred de Palma','Turín','Piamonte','Italia');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (82,'Nio Garcia','San Juan','Puerto Rico','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (83,'Ozuna','San Juan','Puerto Rico','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (84,'Jay Wheeler','Salinas','Puerto Rico','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (85,'Chema Rivas','Ítrabo','Granada','España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (86,'J Balvin','Medellín','Antioquia','Colombia');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (87,'Bad Bunny','Almirante Sur','Puerto Rico','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (88,'Sech','Río Abajo','Panamá','Panamá');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (89,'Tones and I','Mount Martha','Victoria','Australia');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (90,'Kenny Rogers','Houston','Texas','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (91,'Loretta Lynn','Butcker Hollow','Kentucky','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (92,'George Strait','Poteet','Texas','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (93,'Bob Wills','Kosse','Texas','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (94,'Glen Campbell','Nashville','Tennessee','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (95,'Kitty Wells','Nashville','Tennessee','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (96,'Hank Williams','Mount Olive','Alabama','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (97,'Bill Monroe','Rosine','Kentucky','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (98,'Buck Owens','Sherman','Texas','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (99,'The Stanley Brothers','Dickenson County','Virginia','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (100,'Waylon Jennings','Littlefield','Texas','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (101,'Dolly Parton','Sevierville','Tennessee','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (102,'Merle Haggard','Bakersfield','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (103,'Tammy Wynette','Itawamba','Misisipi','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (104,'Jimmie Rodgers','Nueva York','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (105,'George Jones','Vidor','Texas','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (107,'Patsy Cline','Winchester','Virginia','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (108,'Johnny Cash','Kingsland','Arkansas','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (109,'Aless Gibaja','Madrid','Madrid','España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (110,'Karmele Marchante','Tortosa','Tarragona','España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (111,'John Cobra','Sagunto','Valencia','España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (112,'Pupi Poisson','Mandalgobi','Dundgovi','Mongolia');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (113,'Kiko Rivera','Sevilla','Sevilla','España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (114,'Flos Mariae','Sant Jordi Desvalls','Girona','España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (115,'Lory Money','Dakar','Dakar','Senegal');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (116,'La Ogra','Gran Canaria','Las Palmas de Gran Canaria', 'España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (117,'Leticia Sabater','Barcelona','Barcelona','España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (118,'Rodolfo Chikilicuatre','Barcelona','Barcelona','España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (119,'Hoobastank','Agoura Hills','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (120,'Wet Wet Wet','Clydebank','Escocia','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (121,'Tizziano Ferro','Latina','Latina','Italia');


-- En esta lista solo corregimos un par de errores: en uno pon�a "to data" en vez de "to date" y en el otro no estaba bien especificada la inserci�n. 

INSERT INTO LISTAS_GRUPO (COD, FCREACION) VALUES (2,to_date('01-01-1980','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION) VALUES (3,to_date('01-01-1967','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (4,TO_date('01-01-1992','dd-mm-yyyy'),to_date('01-01-2006','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (5,TO_date('01-01-1985','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (6,TO_date('01-01-1976','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (8,TO_date('01-01-1976','dd-mm-yyyy'),TO_date('01-01-1986','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (11,TO_date('01-01-1982','dd-mm-yyyy'),TO_date('01-01-1987','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (12,TO_date('01-01-1974','dd-mm-yyyy'),TO_date('01-01-1996','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (14,TO_date('01-01-1968','dd-mm-yyyy'),TO_date('04-12-1980','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (15,TO_date('01-01-1980','dd-mm-yyyy'),TO_date('01-01-2011','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (17,TO_date('01-01-1981','dd-mm-yyyy'),TO_date('01-01-2002','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (18,TO_date('01-01-1964','dd-mm-yyyy'),TO_date('01-01-1990','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (19,TO_date('01-01-1975','dd-mm-yyyy'),TO_date('01-01-1978','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (21,TO_date('01-01-1960','dd-mm-yyyy'),TO_date('09-04-1970','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (22,TO_date('01-01-1966','dd-mm-yyyy'),TO_date('01-01-1970','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (26,TO_date('01-01-1964','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (28,TO_date('01-01-1987','dd-mm-yyyy'),TO_date('01-01-1994','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (29,TO_date('01-01-1961','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (33,TO_date('01-01-1962','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (38,TO_DATE('01/01/2003','dd/mm/yyyy'), Null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (39,TO_DATE('01/01/2001','dd/mm/yyyy'), Null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (44,TO_date('14-08-1997','dd-mm-yyyy'),TO_date('02-02-2011','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (46,TO_date('01-01-2000','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (49,TO_date('01-01-1998','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (55,TO_date('02-02-1982','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (57,TO_date('12-10-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (62,TO_date('20-04-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (64,TO_date('01-01-1962','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (66,TO_date('01-01-1969','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (68,TO_date('01-01-1970','dd-mm-yyyy'),TO_date('01-01-1971','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (69,TO_date('01-01-1967','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (70,TO_date('01-01-1988','dd-mm-yyyy'),TO_date('01-01-1990','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (71,TO_date('01-01-1965','dd-mm-yyyy'),TO_date('01-01-1995','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (73,TO_date('01-01-1968','dd-mm-yyyy'),TO_date('01-01-1999','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (74,TO_date('01-01-1963','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (76,TO_date('01-01-1971','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (77,TO_date('01-01-1965','dd-mm-yyyy'),TO_date('01-01-1973','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (78,TO_date('01-01-1959','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (99,TO_date('01-01-1946','dd-mm-yyyy'),TO_date('01-01-1966','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (114,TO_date('12-01-2013','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (119,TO_date('20-02-1994','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (120,TO_date('25-05-1982','dd-mm-yyyy'),null);



-- Aqu� el error lo tenemos en "Pablo Monteagudo" m�s conocido como "Pau Monteagudo" (bueno, eso dicen porque y no tengo
-- ni pu�etera idea de qui�n es). En fin, que por m�s que he buscado su fecha de nacimiento no la he encontrado. Por eso se queda
-- comentado. Tampoco es que sea una persona importante en mi vida. 

INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (1,'Catherine Bush',TO_date('30-06-1958','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (7,'Kanye Omari West',TO_date('08-05-1977','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (9,'Montero Lamar Hill',TO_date('09-04-1999','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (10,'Taylor Alison Swift',TO_date('13-12-1989','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (13,'Elvis Aaron Presley',TO_date('08-01-1935','dd-mm-yyyy'),TO_date('16-08-1977','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (16,'Charles Anderson Edward Berry',TO_date('18-10-1926','dd-mm-yyyy'),TO_date('18-03-2017','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (20,'Britney Jean Spears',TO_date('02-12-1981','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (24,'Robert Allen Zimmerman',TO_date('24-05-1941','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (25,'Samuel Cook',TO_date('21-01-1931','dd-mm-yyyy'),TO_date('11-12-1964','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (27,'Ray Charles Robinson',TO_date('23-09-1930','dd-mm-yyyy'),TO_date('10-06-2004','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (30,'Aretha Louise Franklin',TO_date('25-03-1942','dd-mm-yyyy'),TO_date('16-08-2018','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (31,'Marvin Pentz Gay',TO_date('02-04-1939','dd-mm-yyyy'),TO_date('01-04-1984','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (32,'John Winston Lennon',TO_date('09-09-1940','dd-mm-yyyy'),TO_date('08-12-1980','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (34,'Amy Jade Winehouse',TO_DATE('14/09/1983','dd/mm/yyyy'), TO_DATE('23/07/2011','dd/mm/yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (35,'Robin Miriam Carlsson',TO_DATE('12/06/1979','dd/mm/yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (36,'David Robert Jones',TO_DATE('08/01/1947','dd/mm/yyyy'), TO_DATE('10/01/2016','dd/mm/yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (37,'Melissa Arnette Elliott',TO_DATE('01/07/1971','dd/mm/yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (40,'Kendric Lamar Duckworth',TO_DATE('17/06/1987','dd/mm/yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (41,'Kelly Brianne Clarkson',TO_DATE('24/04/1982','dd/mm/yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (42,'Beyoncé Giselle Knowles-Carter',TO_date('04-09-1981','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (43,'Mathangi Arulpragasam',TO_date('18-07-1975','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (45,'Shawn Corey Carter',TO_date('04-12-1969','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (47,'Adele Laurie Blue Adkins',TO_date('05-05-1988','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (48,'Ella Marija Lani Yelich O''Connor',TO_date('07/11/1996','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (50,'Luis Alfonso Rodríguez López-Cepero',TO_date('15-03-1978','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (51,'Edward Christopher Sheeran',TO_DATE('17,02,1991','DD/MM/YYYY'),NULL);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (52,'Katheryn Elizabeth Hudson',TO_DATE('25,10,1984','DD/MM/YYYY'),NULL);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (53,'Justin Drew Bieber',TO_DATE('1,03,1994','DD/MM/YYYY'),NULL);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (54,'Shakira Isabel Mebarak Ripoll',TO_DATE('2,2,1977','DD/MM/YYYY'),NULL);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (56,'Peter Gene Hernández',TO_date('08-10-1985','dd-mm-yyyy'),NULL);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (58,'Michael Joseph Jackson',TO_date('29-08-1958','dd-mm-yyyy'),TO_date('25-07-2009','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (59,'Madonna Louise Veronica Ciccone',TO_date('16-08-1958','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (60,'Prince Rogers Nelson',TO_date('07-06-1958','dd-mm-yyyy'),TO_date('21-04-2016','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (61,'Whitney Elizabeth Houston',TO_date('09-08-1963','dd-mm-yyyy'),TO_date('11-02-2012','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (63,'Stefani Joanne Angelina Germanotta',TO_date('28-03-1986','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (65,'George Ivan Morrison', to_date('31/08/1945','dd/mm/yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (67,'Paul Frederic Simon', to_date('01/01/1956','dd/mm/yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (72,'Bruce Frederick Joseph Springsteen', TO_date('23-09-1949','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (75,'Lewis Allan Reed', TO_date('02-03-1942','dd-mm-yyyy'), TO_date('27-10-2013','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (79,'Donald McLean II', TO_date('02-10-1945','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (80,'Carolina Giraldo Navarro', TO_date('14-02-1991','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (81,'Federico Palana', TO_date('03-11-1989','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (82,'Luis Antonio Quinones Garcia', TO_date('03-04-1989','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (83,'Juan Carlos Ozuna Rosado',TO_date('13-03-1992','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (84,'José �?ngel López Martínez', TO_date('25-04-1994','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (85,'Chema Rivas', TO_date('01-01-2001','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (86,'José �?lvaro Osorio Balvín', TO_date('07-05-1985','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (87,'Benito Antonio Martínez', TO_date('10-03-1994','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (88,'Carlos Isaías Morales',TO_date('03-12-1993','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (89,'Toni Watson', TO_date('01-01-1990','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (90,'Kenneth Donald Rogers', TO_date('21-08-1938','dd-mm-yyyy'), TO_date('20-03-2020','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (91,'Loretta Webb', TO_date('14-04-1932','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (92,'George Harvey Strait', TO_date('18-05-1952','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (93,'James Robert Wills', TO_date('06-03-1905','dd-mm-yyyy'), TO_date('13-05-1975','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (94,'Glen Travis Campbell', TO_date('22-04-1936','dd-mm-yyyy'), TO_date('08-08-2017','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (95,'Ellen Muriel Deason', TO_date('30-08-1919','dd-mm-yyyy'), TO_date('16-07-2012','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (96,'Hiram King Williams', TO_date('17-09-1923','dd-mm-yyyy'), TO_date('01-01-1953','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (97,'William Smith Monroe', TO_date('13-09-1911','dd-mm-yyyy'), TO_date('09-09-1996','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (98,'Alvis Edgar Owens Jr.', TO_date('12-08-1929','dd-mm-yyyy'), TO_date('25-03-2006','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (100,'Waylon Arnold Jennings', TO_date('15-06-1937','dd-mm-yyyy'), TO_date('13-02-2002','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (101,'Dolly Rebecca Parton', TO_date('19-01-1946','dd-mm-yyyy'), null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (102,'Merle Ronald Haggard', TO_date('06-04-1937','dd-mm-yyyy'), TO_date('06-04-2016','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (103,'Virginia Wynette Pugh', TO_date('05-05-1942','dd-mm-yyyy'), TO_date('06-04-1998','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (104,'James Charles Rodgers', TO_date('08-09-1897','dd-mm-yyyy'), TO_date('26-05-1933','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (105,'George Glenn Jones', TO_date('12-09-1931','dd-mm-yyyy'), TO_date('26-04-2013','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (107,'Virginia Patterson Hensley', TO_date('08-09-1932','dd-mm-yyyy'), TO_date('05-03-1963','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (108,'J. R. Cash', TO_date('26-02-1932','dd-mm-yyyy'), TO_date('12-09-2003','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (109,'Aless Gibaja', TO_date('19-04-1984','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (110,'María del Carmen Marchante Barrobés', TO_date('15-09-1946','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (111,'Mario Vaquero Garcés', TO_date('11-02-1978','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (112,'Alberto Zimmer', TO_date('01-06-1983','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (113,'Francisco José Rivera Pantoja', TO_date('09-02-1984','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (115,'Dara Dia', TO_date('26-12-1978','dd-mm-yyyy'),null);

-- Aqu� tenemos un error ya que la lista se cre� con el campo "fnac" not null por lo que s� o s� tiene que tener una fecha de nacimiento. 
-- INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (116,'Pablo Monteagudo', null,null);

INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (117,'Leticia Maria Sabater Alonso', TO_date('21-06-1966','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (118,'David Fernandez Ortiz', TO_date('24-06-1970','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (121,'Tizziano Ferro', TO_date('21-02-1980','dd-mm-yyyy'),null);


-- Ahora insertamos los datos de "Listas_genero" aqu� no he encontrado errores. �Menos mal!

INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (1,'Art pop');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (2,'Synth pop');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (3,'Pop');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (4,'Hip-hop');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (5,'Funk');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (6,'Rock Alternativo');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (7,'Grunge');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (8,'Trip-hop');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (9,'New wave');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (10,'Surf punk');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (11,'Punk rock');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (12,'Country');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (13,'Trap');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (14,'Reggae');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (15,'Punk');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (16,'Rock');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (17,'Indie');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (18,'Chamber pop');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (19,'Pop Rock');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (20,'Rock and roll');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (21,'Folk');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (22,'Soul');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (23,'Rhythm and blues');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (24,'Acústico');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (25,'Dance-pop');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (26,'Electro-pop');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (27,'Electronic dance');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (28,'Dirty rap');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (29,'Disco rock');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (30,'Kraut-rock');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (31,'Techno');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (32,'Reggaeton');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (33,'Disco');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (34,'Country rock');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (35,'Blugrass');
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (36,'Pop Católico');



-- Aqu� en la tabla de "Listas_canci�n" tampoco he encontrado nada raro.  Vamos bien!!!


INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (1,'Wuthering Heights',1978,1);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (2,'Dreaming of Me',1981,2);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (3,'The Letter',1967,3);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (4,'Player’s Ball',1993,4);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (5,'Creep',1993,5);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (6,'Rock Lobster',1978,6);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (7,'Through the Wire',2003,7);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (8,'White Riot',1977,8);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (9,'Old Town Road',2019,9);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (10,'Tim McGraw',2006,10);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (11,'Hand in Glove',1984,11);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (12,'Blitzkrieg Bop',1976,12);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (13,'Thats All Right',1956,13);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (14,'Good Times Bad Times',1969,14);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (15,'Radio Free Europe',1983,15);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (16,'Maybellene',1956,16);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (17,'Sucker M.C.s/Its Like That',1984,17);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (18,'I Want You Back',1969,18);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (19,'Anarchy in the U.K.',1977,19);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (20,'Baby One More Time',1998,20);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (21,'Yesterday',1965,21);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (22,'Let it be',1968,21);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (23,'Hound Dog',1956,13);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (24,'Purple Haze',1967,22);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (25,'I want to hold your hand',1963,21);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (26,'London Calling',1979,8);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (27,'Blowin in the Wind',1963,24);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (28,'A Change is Gonna Come',1964,25);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (29,'My generation',1965,26);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (30,'What’d I say',1959,27);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (31,'Smells like Teen Spirit',1991,28);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (32,'Hey Jude',1968,21);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (33,'Johnny B. Goode',1959,16);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (34,'Good Vibrations',1970,29);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (35,'Respect',1965,30);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (36,'Whats Going On',1971,31);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (37,'Imagine',1971,32);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (38,'(I Cant Get No) Satisfaction',1965,33);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (39,'Like a Rolling Stone',1965,24);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (40,'Rehab',2006,34);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (41,'Dancing On My Own', 2017,35);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (42,'Blackstar',2015,36);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (43,'Work it', 2002,37);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (44,'All My Friends', 2007,38);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (45,'Crazy', 2006,39);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (46,'Toxic', 2003,20);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (47,'Alright', 2015,40);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (48,'Since U Been Gone', 2004,41);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (49,'Get Ur Freak On', 2001,37);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (50,'Crazy in Love',2003,42);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (51,'Paper Planes',2007,43);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (52,'Seven Nation Army',2003,44);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (53,'Hey Ya!',2003,4);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (54,'99 Problems',2003,45);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (55,'Maps',2003,46);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (56,'Runaway',2010,7);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (57,'Rolling in the deep',2011,47);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (58,'Royals',2013,48);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (59,'Last Nite',2001,49);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (60,'Despacito',2019,50);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (61,'Shape of you',2017,51);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (62,'Firework',2019,52);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (63,'Sorry',2015,53);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (64,'Hips dont lie',2006,54);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (65,'Take on me',1985,55);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (66,'Uptown Funk',2014,56);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (67,'Get Lucky',2013,57);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (68,'Thriller',1982,58);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (69,'Like a Prayer',1989,59);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (70,'When Doves Cry',1984,60);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (71,'Wanna Dance With Somebody',1987,61);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (72,'Everybody',1997,62);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (73,'Poker Face',2008,63);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (74,'Single Ladies',2008,42);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (75,'Powderfinger',1979,64);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (76,'Into the mystic',1970,65);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (77,'Willin',1971,66);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (78,'Space Oddity',1969,36);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (79,'Suspicious Minds',1969,13);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (80,'Baba ORiley',1971,26);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (81,'Brown Sugar',1971,33);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (82,'American Tune',1973,67);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (83,'Layla',1970,68);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (84,'The Chain',1977,69);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (85,'Handle with care',1988,70);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (86,'Shine on you crazy diamond',1975,71);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (87,'Stairway to Heaven',1971,14);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (88,'Thunder Road',1975,72);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (89,'The Weight',1968,73);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (90,'Lola',1970,74);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (91,'A day in the life',1967,21);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (92,'Sweet Jane',1977,75);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (93,'Born to run',1975,72);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (94,'Hotel California',1976,76);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (95,'Light my Fire',1967,77);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (96,'Louie Louie',1963,78);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (97,'Wont get Fooled Again',1971,26);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (98,'Jailhouse Rock',1957,13);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (99,'American Pie',1971,79);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (100,'Tusa',2019,80);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (101,'Se iluminaba',2019,81);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (102,'La Jeepeta - Remix',2020,82);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (103,'Caramelo',2020,83);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (104,'La Curiosidad',2020,84);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (105,'Mil Tequilas',2020,85);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (106,'Morado',2020,86);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (107,'Safaera',2020,87);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (108,'Relación',2020,88);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (109,'Dance Monkey',2020,89);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (110,'The Gambler',1978,90);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (111,'Dont Come Home A Drinkin (With Lovin on Your Mind)',1966,91);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (112,'All My Exs Live in Texas',1987,92);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (113,'New San Antonio Rose',1940,93);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (114,'Witchita Lineman',1968,94);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (115,'It Wasn’t God Who Made Honky Tonk Angels',1952,95);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (116,'Settin’ the Woods on Fire',1952,96);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (117,'Blue Moon of Kentucky',1947,97);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (118,'Ive Got a Tiger By the Tail',1964,98);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (119,'Man of Constant Sorrow',1951,99);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (120,'Mammas, Dont Let Your Babies Grow Up to Be Cowboys',1978,100);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (121,'Jolene',1973,101);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (122,'Mama Tried',1968,102);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (123,'You Dont Know Me',1962,27);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (124,'Stand By Your Man',1968,103);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (125,'Standing on the Corner (Blue Yodel #9)',1930,104);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (126,'He Stopped Loving Her Today',1980,105);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (127,'I’m So Lonesome I Could Cry',1949,96);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (128,'Crazy',1961,107);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (129,'I Walk the Line',1956,108);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (130,'Sexy summer',2004,109);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (131,'Soy un tsunami',2010,110);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (132,'Carol',2012,111);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (133,'Putón verbenero',2015,112);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (134,'Dale',2015,113);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (135,'Amén',2015,114);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (136,'Ola k ase',2013,115);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (137,'Te borro del feisbuh',2015,116);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (138,'La Salchipapa',2016,117);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (139,'Baila el Chiki Chiki',2017,118);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (140,'The reason is you',2001,119);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (141,'Love Is All Around',1994,120);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (142,'El regalo m�s grande',2010,121);


-- En esta lista lo �nico "an�malo" es que una canci�n pertenece a varios generos; pero si lo pensamos bien s� puede ser as�.
-- As� que "aceptamos barco" y la damos por buena. 

INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (1,1);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (2,2);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (3,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (4,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (4,5);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (5,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (5,7);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (5,8);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (6,9);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (6,10);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (7,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (8,11);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (8,9);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (8,14);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (9,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (9,13);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (9,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (10,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (11,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (12,15);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (13,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (14,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (15,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (16,20);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (17,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (18,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (19,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (20,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (21,18);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (22,19);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (23,20);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (24,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (25,19);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (26,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (27,21);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (28,22);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (29,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (30,23);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (30,22);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (31,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (31,11);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (31,7);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (32,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (32,19);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (33,20);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (33,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (33,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (34,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (35,22);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (36,22);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (36,5);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (37,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (38,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (39,24);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (40,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (41,25);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (41,26);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (42,27);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (42,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (43,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (43,28);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (44,29);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (44,30);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (44,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (44,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (45,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (45,22);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (45,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (46,27);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (46,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (47,22);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (47,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (48,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (49,27);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (50,23);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (50,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (51,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (51,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (51,25);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (51,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (52,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (53,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (53,5);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (53,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (54,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (55,25);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (55,19);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (55,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (56,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (57,22);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (57,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (58,1);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (58,8);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (58,31);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (59,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (59,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (60,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (60,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (61,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (61,21);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (61,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (62,25);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (62,26);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (62,27);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (62,2);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (63,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (64,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (65,2);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (65,9);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (66,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (66,5);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (66,9);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (66,33);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (67,33);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (67,5);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (68,5);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (69,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (70,2);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (71,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (72,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (73,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (74,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (74,25);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (75,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (76,34);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (77,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (77,34);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (78,2);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (79,19);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (80,30);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (81,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (82,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (83,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (84,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (85,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (85,21);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (86,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (87,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (88,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (89,19);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (90,19);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (91,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (92,20);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (93,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (94,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (94,34);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (94,21);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (95,2);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (96,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (97,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (97,2);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (98,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (99,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (100,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (100,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (101,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (101,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (102,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (103,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (104,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (105,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (105,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (106,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (107,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (108,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (109,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (109,26);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (109,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (109,25);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (110,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (110,34);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (110,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (111,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (111,34);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (112,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (113,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (114,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (115,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (116,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (117,35);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (117,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (118,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (119,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (119,35);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (120,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (121,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (122,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (123,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (124,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (125,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (126,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (127,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (128,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (129,12);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (130,33);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (131,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (132,28);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (133,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (134,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (135,36);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (136,13);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (136,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (137,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (138,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (139,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (139,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (140,19);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (141,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (142,3);

--- Ahora vamos a crear la secuencia para las listas.
--- Debemos dividir la lista y a�adir las canciones que hay en ella. 


INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Mejores debuts RollingStone',2020,'https://los40.com/los40/2020/05/21/los40classic/1590052156_938806.html', 'Rolling Stone');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (1,secuencia_en_lista.CURRVAL,20);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (2,secuencia_en_lista.CURRVAL,19);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (3,secuencia_en_lista.CURRVAL,18);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (4,secuencia_en_lista.CURRVAL,17);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (5,secuencia_en_lista.CURRVAL,16);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (6,secuencia_en_lista.CURRVAL,15);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (7,secuencia_en_lista.CURRVAL,14);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (8,secuencia_en_lista.CURRVAL,13);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (9,secuencia_en_lista.CURRVAL,12);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (10,secuencia_en_lista.CURRVAL,11);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (11,secuencia_en_lista.CURRVAL,10);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (12,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (13,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (14,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (15,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (16,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (17,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (19,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (18,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (20,secuencia_en_lista.CURRVAL,1);




INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Las 20 imprescindibles de todos los tiempos',2019,'https://www.esquirelat.com/cultura/20-mejores-canciones-de-todos-los-tiempos/', 'Esquire');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (21,secuencia_en_lista.CURRVAL,13);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (22,secuencia_en_lista.CURRVAL,20);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (23,secuencia_en_lista.CURRVAL,19);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (16,secuencia_en_lista.CURRVAL,18);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (24,secuencia_en_lista.CURRVAL,17);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (25,secuencia_en_lista.CURRVAL,16);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (26,secuencia_en_lista.CURRVAL,15);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (27,secuencia_en_lista.CURRVAL,14);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (28,secuencia_en_lista.CURRVAL,12);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (29,secuencia_en_lista.CURRVAL,11);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (30,secuencia_en_lista.CURRVAL,10);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (31,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (32,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (33,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (34,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (35,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (36,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (37,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (38,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (39,secuencia_en_lista.CURRVAL,1);


INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Las mejores canciones del siglo',2018,'https://www.lanacion.com','Rolling Stone');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (40,secuencia_en_lista.CURRVAL,20);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (41,secuencia_en_lista.CURRVAL,19);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (42,secuencia_en_lista.CURRVAL,18);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (43,secuencia_en_lista.CURRVAL,17);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (44,secuencia_en_lista.CURRVAL,16);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (45,secuencia_en_lista.CURRVAL,15);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (46,secuencia_en_lista.CURRVAL,14);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (47,secuencia_en_lista.CURRVAL,13);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (48,secuencia_en_lista.CURRVAL,11);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (49,secuencia_en_lista.CURRVAL,12);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (50,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (51,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (52,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (53,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (54,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (55,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (56,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (57,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (58,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (59,secuencia_en_lista.CURRVAL,10);


INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Las 20 mejores canciones pop de la historia',2020,'https://www.timeout.es/madrid/es/musica/las-20-mejores-canciones-pop-de-la-historia','TimeOut');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (60,secuencia_en_lista.CURRVAL,20);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (53,secuencia_en_lista.CURRVAL,19);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (61,secuencia_en_lista.CURRVAL,18);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (62,secuencia_en_lista.CURRVAL,17);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (63,secuencia_en_lista.CURRVAL,16);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (64,secuencia_en_lista.CURRVAL,15);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (45,secuencia_en_lista.CURRVAL,14);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (65,secuencia_en_lista.CURRVAL,13);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (66,secuencia_en_lista.CURRVAL,12);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (67,secuencia_en_lista.CURRVAL,11);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (68,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (69,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (70,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (71,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (20,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (72,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (40,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (57,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (73,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (74,secuencia_en_lista.CURRVAL,10);



INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Las 20 mejores canciones del rock', 2019, 'http://www.lascosasdebravo.com/mejores-canciones-de-la-historia/', 'Alberto Bravo');


INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (75,secuencia_en_lista.CURRVAL,11);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (76,secuencia_en_lista.CURRVAL,12);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (77,secuencia_en_lista.CURRVAL,13);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (78,secuencia_en_lista.CURRVAL,14);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (79,secuencia_en_lista.CURRVAL,15);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (80,secuencia_en_lista.CURRVAL,16);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (81,secuencia_en_lista.CURRVAL,17);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (82,secuencia_en_lista.CURRVAL,18);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (83,secuencia_en_lista.CURRVAL,19);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (84,secuencia_en_lista.CURRVAL,20);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (85,secuencia_en_lista.CURRVAL,10);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (86,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (87,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (88,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (89,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (90,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (33,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (91,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (92,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (39,secuencia_en_lista.CURRVAL,1);




INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Las mejores canciones del rock de la historia segun VH1', 2019, 'https://www.abc.es/cultura/musica/abci-mejores-canciones-rock-historia-segun-201909251817_noticia.html', 'VH1');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (38,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (35,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (87,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (39,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (93,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (94,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (95,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (34,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (32,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (37,secuencia_en_lista.CURRVAL,10);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (96,secuencia_en_lista.CURRVAL,11);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (21,secuencia_en_lista.CURRVAL,12);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (29,secuencia_en_lista.CURRVAL,13);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (36,secuencia_en_lista.CURRVAL,14);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (33,secuencia_en_lista.CURRVAL,15);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (83,secuencia_en_lista.CURRVAL,16);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (97,secuencia_en_lista.CURRVAL,17);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (98,secuencia_en_lista.CURRVAL,18);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (99,secuencia_en_lista.CURRVAL,19);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (91,secuencia_en_lista.CURRVAL,20);


INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Canciones más escuchadas en España en 2020', 2020, 'https://www.elmundo.es/cultura/2020/12/01/5fc60292fdddffdd018b45ab.html', 'Spotify');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (100,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (101,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (102,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (103,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (104,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (105,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (106,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (107,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (108,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (109,secuencia_en_lista.CURRVAL,10);




INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Las 100 mejores canciones Country de todos los tiempos - 2020', 2020, 'https://aztechin.com/las-100-mejores-canciones-country-de-todos-los-tiempos/', 'Carlos Mestre');


INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (110,secuencia_en_lista.CURRVAL,20);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (111,secuencia_en_lista.CURRVAL,19);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (112,secuencia_en_lista.CURRVAL,18);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (113,secuencia_en_lista.CURRVAL,17);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (114,secuencia_en_lista.CURRVAL,16);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (115,secuencia_en_lista.CURRVAL,15);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (116,secuencia_en_lista.CURRVAL,14);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (117,secuencia_en_lista.CURRVAL,13);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (118,secuencia_en_lista.CURRVAL,12);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (119,secuencia_en_lista.CURRVAL,11);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (120,secuencia_en_lista.CURRVAL,10);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (121,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (122,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (123,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (124,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (125,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (126,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (127,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (128,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (129,secuencia_en_lista.CURRVAL,1);





INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Temazos frikis made in Spain',2015,'https://www.elespanol.com/social/20170324/203230101_0.html','El Español');


INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (130,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (131,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (132,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (133,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (134,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (135,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (136,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (137,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (138,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (139,secuencia_en_lista.CURRVAL,10);


--- Por �ltimo a�adir� mi lista con el TOP 10 de mis canciones favoritas.

INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Top 3 Pedro Sánchez',2023,'https://pedrosanchezflores.com/', 'Pedro S�nchez');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (140,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (141,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (142,secuencia_en_lista.CURRVAL,3);


--PAISES AÑADIDOS PARA LISTA DE FAVORITOS
INSERT INTO LISTAS_PAIS VALUES ('México');
--ESTADOS/PROVINCIAS AÑADIDAS PARA LA LISTA DE FAVORITOS
INSERT INTO LISTAS_ESTADO_PROVINCIA VALUES ('Chihuahua','México');
INSERT INTO LISTAS_ESTADO_PROVINCIA VALUES ('Vizcaya','España');
INSERT INTO LISTAS_ESTADO_PROVINCIA VALUES ('Ilinois','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA VALUES ('Iowa','Estados Unidos');
--CIUDADES AÑADIDAS PARA LA LISTA DE FAVORITOS
INSERT INTO LISTAS_CIUDAD VALUES ('Franklin', 'Tennessee','Estados Unidos');
INSERT INTO LISTAS_CIUDAD VALUES ('Meoqui', 'Chihuahua','México');
INSERT INTO LISTAS_CIUDAD VALUES ('San Sebastián', 'Vizcaya','España');
INSERT INTO LISTAS_CIUDAD VALUES ('Chicago', 'Ilinois','Estados Unidos');
INSERT INTO LISTAS_CIUDAD VALUES ('Des Moines', 'Iowa','Estados Unidos');
--ARTISTAS AÑADIDOS PARA LISTA DE FAVORITOS
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (126,'C Tangana','Madrid','Madrid','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (127,'Miley Cyrus','Franklin', 'Tennessee','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (128,'Kevin Kaarl','Meoqui', 'Chihuahua','México');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (122,'La oreja de Van Gogh','San Sebastián', 'Vizcaya','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (123,'Pol Granch','Madrid','Madrid','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (124,'Earth, Wind And Fire', 'Chicago', 'Ilinois','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (125,'Slipknot', 'Des Moines', 'Iowa','Estados Unidos');

--GRUPOS AÑADIDOS PARA LA LISTA DE FAVORITOS
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (122,TO_date('21-06-1996','dd-mm-yyyy'),TO_date('19-11-2007','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (124,TO_date('05-06-1970','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (125,TO_date('04-07-1995','dd-mm-yyyy'),null);
--ARTISTA AÑADIDOS PARA LA LISTA DE FAVORITOS
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (126,'Antón Álvarez Alfaro', TO_date('16-07-1990','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (127,'Miley Ray Cyrus', TO_date('23-11-1992','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (128,'Kevin Kaarl', TO_date('15-05-2001','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (123,'Pablo Grandjean', TO_date('04-04-1998','dd-mm-yyyy'),null);
--CANCIONES AÑADIDAS PARA LISTA DE FAVORITOS
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (147,'Nunca estoy',2020,126);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (148,'Flowers',2023,127);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (149,'San Lucas',2019,128);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (143,'Puedes contar conmigo',2003,122);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (144,'No pegamos',2022,123);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (145,'September',1978,124);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (146,'Snuff',2008,125);
--ASOCIACION DE GENERO A CANCION PARA LISTA DE FAVORITOS
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (147,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (148,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (149,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (143,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (144,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (145,33);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (146,6);
INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Mezcla improvisadísima de Diana :)',2023,null ,'Diana Soriano Cubí');
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (147,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (143,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (149,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (146,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (148,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (144,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (145,secuencia_en_lista.CURRVAL,7);


/*Lista Iván*/
--  ESTADO/PROVINCIA de mis artistas:
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Chesire','Reino Unido');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Nevada','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Chester','Chesire','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Oxford','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Las Vegas','Nevada','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (129,'Harry Styles','Chester','Chesire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (130,'Glass Animals','Oxford','Oxfordshire','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (131,'Imagine Dragons','Las Vegas','Nevada','Estados Unidos');
--  Mis GRUPOS:
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (130,TO_date('06-06-2014','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (131,TO_date('26-06-2009','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (129,'Harry Edward Styles', TO_date('12-05-2016','dd-mm-yyyy'),null);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (156,'As It Was',2022,129);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (157,'Heat Waves',2020,130);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (158,'Enemy',2021,131);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (156,19);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (157,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (158,22);
INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Top de Iván Ayuso Olivera', 2023, null, 'Iván Ayuso Olivera');
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (156,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (157,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (158,secuencia_en_lista.CURRVAL,1);

/*Lista de JP*/
INSERT INTO LISTAS_PAIS VALUES ('Corea del Sur');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Jeju','Corea del Sur');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Nueva Gales del Sur','Australia');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('condado de Sussex Occidental','Reino Unido');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Ciudad de Jeju','Jeju','Corea del Sur');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Sidney','Nueva Gales del Sur','Australia');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Worthing','condado de Sussex Occidental','Reino Unido');
--(Artistas de mi playlist)--
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (132,'Mirani','Ciudad de Jeju','Jeju','Corea del Sur');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (133,'Timmy Trumpet','Sidney','Nueva Gales del Sur','Australia');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (134,'DJ Fresh','Worthing','condado de Sussex Occidental','Reino Unido');

INSERT INTO LISTAS_ARTISTAIND (COD,nombreReal,FNAC,FMUERTE) VALUES (132,'Kim Yu Jin', TO_date('14-05-1996','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,nombreReal,FNAC,FMUERTE) VALUES (133,'Timothy Jude Smith', TO_date('09-06-1982','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,nombreReal,FNAC,FMUERTE) VALUES (134,'Daniel Edward Stein', TO_date('11-04-1977','dd-mm-yyyy'),null);

--(Canciones de mi playlist)--
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (150,'Can’t Slow Me Down',2022,132);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (151,'Freaks',2014,133);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (152,'Gold Dust',2010,134);--(Canciones de mi playlist)--
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (150,26);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (151,27);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (152,26);

INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.nextval,'Top 3 mejores rolitas para motivarte',2023,'https://open.spotify.com/playlist/7aQ4OxBIkyjZQgWz8HB4CS?si=d538bbc2ad4a4982','Juan Pablo');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (150,secuencia_en_lista.currval,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (151,secuencia_en_lista.currval,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (152,secuencia_en_lista.currval,3);

/*Lista de Pablo Espinosa*/
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (135,'Ministry of Sound','Londres','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (136,'Dr. Musicalite','Barcelona','Barcelona','España');
INSERT INTO LISTAS_ARTISTA (COD,nombreArtistico,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (137,'Faith No More','Los Ángeles','California','Estados Unidos');
INSERT INTO LISTAS_GRUPO (COD,FCREACION,FDISOLUCION) VALUES (137,TO_date('12-01-1979','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,nombreReal,FNAC,FMUERTE) VALUES (135,'Ministry of Sound', TO_date('24-06-1991','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,nombreReal,FNAC,FMUERTE) VALUES (136,'Dr. Musicalite', TO_date('24-06-1989','dd-mm-yyyy'),null);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (153,'Senator',2017,135);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (154,'Estudia que no llegaras a nada',201,136);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (155,'A small victory',1992,137);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (153,31);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (154,26);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (155,6);

INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.nextval,'Temazos para trabajar',2015,'https://www.youtube.com','YouTube');
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (153,secuencia_en_lista.currval,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (154,secuencia_en_lista.currval,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (155,secuencia_en_lista.currval,3);

/*Lista de José Raúl*/
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Tenerife','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Valencia','Valencia','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Tacoronte','Tenerife','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (138,'Erick Hervé','Valencia','Valencia','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (139,'Leïti Sene','Barcelona','Barcelona','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (140,'Cruz Cafuné','Tacoronte','Tenerife','España');
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (138,'Erick Hervé', TO_date('19-10-1988','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (139,'Leïti Sene', TO_date('30-10-1998','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (140,'Cruz Cafuné', TO_date('25-06-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (159,'Ya no estoy',2020,138);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (160,'SALAM AILEKUM',2022,139);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (161,'PAZ PLAN Y PAN',2023,140);
INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (37,'Afrobeat');
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (159,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (160,37);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (161,4);
INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Lista canciones JRHA',2023,'Silvia ponme un 10','Jose Raul');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (159,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (160,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (161,secuencia_en_lista.CURRVAL,3);

/*Lista Jose Manuel*/
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Nueva Jersey','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Massachusetts','Estados Unidos');
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Oio','Estados Unidos');
UPDATE LISTAS_ESTADO_PROVINCIA SET NOMBRE='Ohio' WHERE NOMBRE='Oio';
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Graná','Granada','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Princeton','Nueva Jersey','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Boston','Massachusetts','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Dayton','Ohio','Estados Unidos');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('San Francisco','California','Estados Unidos');
UPDATE LISTAS_CIUDAD SET NOMBRE='Granada' WHERE NOMBRE='Graná';
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (142,'Fun Lovin Criminals','Nueva York','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (143,'Los Planetas','Granada','Granada','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (144,'Blues Traveler','Princeton','Nueva Jersey','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (145,'Lily Allen','Londres','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (146,'Sonic Youth','Nueva York','Nueva York','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (147,'NoFX','Los Ángeles','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (148,'Pixies','Boston','Massachusetts','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (149,'Placebo','Londres','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (150,'Rage Against the Machine','Los Ángeles','California','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (151,'The Breeders','Dayton','Ohio','Estados Unidos');
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (142,TO_date('21-04-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (143,TO_date('18-06-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (144,TO_date('09-11-1987','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (146,TO_date('02-05-1981','dd-mm-yyyy'),TO_date('27-02-2011','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (147,TO_date('18-09-1983','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (148,TO_date('24-10-1986','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (149,TO_date('12-12-1994','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (150,TO_date('28-05-1991','dd-mm-yyyy'),null);
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (151,TO_date('07-04-1989','dd-mm-yyyy'),TO_date('10-10-2008','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (145,'Lily Allen', TO_date('02-05-1985','dd-mm-yyyy'),null);
UPDATE LISTAS_ARTISTAIND SET NOMBREREAL='Lily Rose Beatrice Allen' WHERE NOMBREREAL='Lily Allen';
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (162,'I Believe in Miracle',2015,12);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (163,'Aneurysm',2015,28);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (164,'Out of Time',2015,33);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (165,'Rockin in a free world',2015,64);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (166,'I care a lot',2015,137);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (167,'Scooby Snack',2015,142);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (168,'Nuevas Sensaciones',2015,143);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (169,'Hook',2015,144);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (170,'The Fear',2015,145);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (171,'Sunday',2015,146);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (172,'The Decline',2015,147);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (173,'Gouge Away',2015,148);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (174,'Teenage Angst',2015,149);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (175,'Freedom',2015,150);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (176,'Cannon Ball',2015,151);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (162,11);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (163,7);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (164,20);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (165,20);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (166,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (167,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (168,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (169,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (170,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (171,11);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (172,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (173,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (174,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (175,6);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (176,17);

INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES(secuencia_en_lista.NEXTVAL,'The Best of the Top 15 by DJ Jose',2023,'https://www.josemanueldiazsanchez.com/rundancing/','1º-DAW - Jose Manuel Díaz Sánchez');
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (162,secuencia_en_lista.CURRVAL,15);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (163,secuencia_en_lista.CURRVAL,14);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (164,secuencia_en_lista.CURRVAL,13);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (165,secuencia_en_lista.CURRVAL,12);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (166,secuencia_en_lista.CURRVAL,11);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (167,secuencia_en_lista.CURRVAL,10);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (168,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (169,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (170,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (171,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (172,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (173,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (174,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (175,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (176,secuencia_en_lista.CURRVAL,1);

/*Alejandro Lluch*/
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV, NOM_PAIS) VALUES (152,'Oasis', 'Manchester','Gran Machester','Reino Unido');
INSERT INTO LISTAS_GRUPO (COD, FCREACION,FDISOLUCION) VALUES (152,TO_date('01-01-1991','dd-mm-yyyy'), TO_date('01-01-2009','dd-mm-yyyy'));
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (177,'Wonderwall - Remastered', 1995,152);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (177,6);

INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Mi rock',2022,'https://open.spotify.com/playlist/5hw0yVXb2Pke2wBZPCZd2A?si=4d8b4b82a3164d2e','Alejandro Sanllu');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (177,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (38,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (31,secuencia_en_lista.CURRVAL,32);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (14,secuencia_en_lista.CURRVAL,38);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (21,secuencia_en_lista.CURRVAL,108);


/*Samuel Hernández*/
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (153,'Quevedo','Gran Canaria','Las Palmas de Gran Canaria','España');
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (153,'Quevedo', TO_date('07-12-2001','dd-mm-yyyy'),null);

INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (178,'Sin Señal',2022,153);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (179,'Vista al mar',2022,153);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (180,'Playa del Inglés',2022,153);

INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (178,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (179,32);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (180,32);

INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Canciones de SHP',2023,'Menudos temazos','Samuel Hernández');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (178,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (179,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (180,secuencia_en_lista.CURRVAL,3);


/*Manuel Martínez*/
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (154,'RVFV','Gran Canaria','Las Palmas de Gran Canaria','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (155,'Uña y Carne','Valencia','Valencia','España');

INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (154,'RVFV', TO_date('01-10-1990','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (153,'Quevedo', TO_date('02-10-1992','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (155,'Uña y Carne', TO_date('03-10-1993','dd-mm-yyyy'),null);

INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (182,'Mi Luz',2021,154);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (183,'Punto G',2022,153);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (184,'Pasa el canutito',2014,155);

INSERT INTO LISTAS_GENERO (COD, NOMBRE) VALUES (38,'kinki');

INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (182,13);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (183,38);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (184,13);

INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Canelita en rama de 27MMS_',2023,'Sigueme al insta @27mms_','Manuel Martinez');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (182,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (183,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (184,secuencia_en_lista.CURRVAL,3);



/*Héctor Valenzuela*/
INSERT INTO LISTAS_ESTADO_PROVINCIA (NOMBRE,NOM_PAIS) VALUES ('Ibiza','España');
INSERT INTO LISTAS_CIUDAD (NOMBRE,NOM_ESTADO_PROV,NOM_PAIS) VALUES ('Ibiza','Ibiza','España');

INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (156,'Fernando Costa','Ibiza','Ibiza','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (157,'Hoke','Valencia','Valencia','España');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (158,'Cruz Cafune','Tacoronte','Tenerife','España');

INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (156,'Fernando Costa', TO_date('13-07-1995','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (157,'Hoke', TO_date('04-03-1996','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (158,'Cruz Cafune', TO_date('25-06-1993','dd-mm-yyyy'),null);

INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (185, 'Dinamo', 2018, 156);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (186, 'Olympique', 2022, 157);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (187, 'Lo Pues Intentar', 2020, 158);

INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (185,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (186,4);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (187,4);

INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'Lista Canciones HectorVG',2023,'De los deseos','Héctor Valenzuela García');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (185,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (186,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (187,secuencia_en_lista.CURRVAL,3);



/*Marcos Ramón - Marcos no ha añadido las canciones a su lista.*/
INSERT INTO LISTAS_CIUDAD (NOM_PAIS,NOMBRE,NOM_ESTADO_PROV) VALUES ('Reino Unido','Pinner','Gran Londres');
INSERT INTO LISTAS_CIUDAD (NOM_PAIS,NOMBRE,NOM_ESTADO_PROV) VALUES ('Reino Unido','East Finchtley','Gran Londres');

INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (159,'The Killers','Las Vegas','Nevada','Estados Unidos');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (160,'George Michael','East Finchtley','Gran Londres','Reino Unido');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO,NOM_CIUDAD,NOM_ESTADO_PROV,NOM_PAIS) VALUES (161,'Elton John','Pinner', 'Gran Londres', 'Reino Unido');

INSERT INTO LISTAS_ARTISTAIND(COD,NOMBREREAL,FNAC) VALUES (161,'Elton John',TO_date('25-03-1947','dd-mm-yyyy'));
INSERT INTO LISTAS_ARTISTAIND(COD,NOMBREREAL,FNAC,FMUERTE) VALUES (160,'George Michel',TO_date('25-06-1963','dd-mm-yyyy'),TO_date('19-08-1992','dd-mm-yyyy'));
INSERT INTO LISTAS_GRUPO(COD, FCREACION) VALUES (159,TO_date('12-01-2001','dd-mm-yyyy'));

INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.nextval,'Fav songs Marcos',2023,'spoty','Marcos Ramón');


INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (188,'Carless Whisper',1984,160);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (189,'Losing my religion',1991,15);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (190,'Im still standing ',2023,161);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (191,'Human',2008,159);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (192,'There is a light that never goes out',1986,11);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (193,'Imagine',1986,32);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (194,'Cry wolf',1986,55);

INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (188,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (189,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (190,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (191,17);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (192,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (193,3);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (194,16);

/*Isaac*/
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO) VALUES (162,'The Pretty Reckless');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO) VALUES (163,'Queens of stone age');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO) VALUES (164,'Halestorm');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO) VALUES (165,'Volbeat');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO) VALUES (166,'Finger Eleven');
INSERT INTO LISTAS_ARTISTA (COD,NOMBREARTISTICO) VALUES (167,'Stonebank');

INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (162,'The Pretty Reckless', TO_date('25-03-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (163,'Queens of stone age', TO_date('25-03-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (164,'Halestorm', TO_date('25-03-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (165,'Volbeat', TO_date('25-03-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (166,'Finger Eleven', TO_date('25-03-1993','dd-mm-yyyy'),null);
INSERT INTO LISTAS_ARTISTAIND (COD,NOMBREREAL,FNAC,FMUERTE) VALUES (167,'Stonebank', TO_date('25-03-1993','dd-mm-yyyy'),null);

INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (195,'Dead by Rock and Roll',2021,162);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (196,'In My Head',2005,163);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (197,'Love Bites (So Do I)',2012,164);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (198,'Still Counting',2008,165);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (199,'Paralyzer',2007,166);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (200,'Only Love Can Save Me Now',2015,162);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (201,'My Medicine - Single Version',2010,162);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (202,'Mz.Hide',2012,164);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (203,'Heaven Knows',2013,162);
INSERT INTO LISTAS_CANCION(COD,TITULO,ANYO,COD_ARTISTA) VALUES (204,'Take me Away',2021,116);

INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (195,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (196,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (197,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (198,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (199,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (200,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (201,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (202,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (203,16);
INSERT INTO LISTAS_GENERO_CANCION (COD_CANCION,COD_GENERO) VALUES (204,31);


INSERT INTO LISTAS_LISTA (COD,NOMBRE,ANYO,FUENTE,AUTOR) VALUES (secuencia_en_lista.NEXTVAL,'DailyMixt 2 Isaac',2023,'https://open.spotify.com/playlist/37i9dQZF1E38NsMLg6EHIe?si=1f312e9446c648b0','Spotify');

INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (195,secuencia_en_lista.CURRVAL,1);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (196,secuencia_en_lista.CURRVAL,2);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (197,secuencia_en_lista.CURRVAL,3);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (198,secuencia_en_lista.CURRVAL,4);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (199,secuencia_en_lista.CURRVAL,5);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (200,secuencia_en_lista.CURRVAL,6);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (201,secuencia_en_lista.CURRVAL,7);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (202,secuencia_en_lista.CURRVAL,8);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (203,secuencia_en_lista.CURRVAL,9);
INSERT INTO LISTAS_POSICION_LISTA (COD_CANCION,COD_LISTA,POSICION) VALUES (204,secuencia_en_lista.CURRVAL,10);