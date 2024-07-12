/*1. De los artistas, visualiza el nombre artístico, el último carácter del
nombre artístico que no sea blanco y el número de caracteres del
nombre artístico (sin contar los blancos de la derecha) ordenados por
el nombre artístico, de aquellos artistas que empiecen por J.*/
SELECT nombreArtistico,
       substr(rtrim(nombreArtistico), -1) "Último Carácter",
       length(nombreArtistico) "Longitud"
from LISTAS_ARTISTA
WHERE upper(nombreArtistico) LIKE 'J%'
ORDER BY nombreArtistico;


/*2. Muestra el nombre artístico de todos los artistas individuales que ya no
están entre nosotros, y la edad a la que murieron ordenado por edad.*/
SELECT l1.nombreartistico, TRUNC(MONTHS_BETWEEN(l2.FMUERTE, l2.FNAC)/12) "Edad a la que murió"
FROM LISTAS_ARTISTAIND l2, LISTAS_ARTISTA l1
WHERE l2.FMUERTE IS NOT NULL AND l2.cod=l1.cod
ORDER BY 2;

