1) Listar el título de todas las películas y nº de copias

SELECT P.titulo, COUNT(C.numero_registro) AS cantidad_copias
FROM Peliculas P
LEFT JOIN Copias C ON P.id_pelicula = C.id_pelicula
GROUP BY P.titulo;


/* 
+--------------------------------+-----------------+
| titulo                         | cantidad_copias |
+--------------------------------+-----------------+
| Amor de Invierno               |               8 |
| Canta y No Llores              |               9 |
| Destino Final: Avenida 9 de Ju |               0 |
| El Fin del Mundo               |              10 |
| El Lado Oscuro del Humor       |               0 |
| El Susurro del Bosque          |               0 |
| Expedicion Amazonia            |               5 |
| Furia Urbana                   |               5 |
| Galaxia Alfa                   |               6 |
| La Casa del Silencio           |               8 |
| La Magia de Sofi               |               9 |
| Planeta Azul                   |               0 |
| Recuerdos del Futuro           |               1 |
| Reite Si Podes                 |               8 |
| Rio de Lagrimas                |              10 |
+--------------------------------+-----------------+
*/
2) Listar el título de todas las películas y nº de copias de los estrenos del mes (sólo ejemplares nuevos)

SELECT P.titulo, COUNT(C.numero_registro) AS cantidad_copias
FROM Peliculas P
LEFT JOIN Copias C ON P.id_pelicula = C.id_pelicula
WHERE MONTH(P.anio) = MONTH(CURDATE())
  AND YEAR(P.anio) = YEAR(CURDATE())
GROUP BY P.titulo;

/* 
+------------------+-----------------+
| titulo           | cantidad_copias |
+------------------+-----------------+
| La Magia de Sofi |               9 |
+------------------+-----------------+
 */
3) Listar el nombre de actor y título de película que actuó

SELECT reparto, titulo FROM peliculas;
/* 
+-------------------------------------+--------------------------------+
| reparto                             | titulo                         |
+-------------------------------------+--------------------------------+
| Martin Piroyansky, Luis Machin      | Furia Urbana                   |
| Natalie Perez, Luciano Castro       | Reite Si Podes                 |
| Tom Hardy, Eva Green                | Galaxia Alfa                   |
| Mercedes Moran, Leonardo Sbaraglia  | Rio de Lagrimas                |
| Sofia Gala, Nahuel Perez Biscayart  | La Casa del Silencio           |
| Ricardo Darin, Cecilia Roth         | El Fin del Mundo               |
| China Suarez, Nicolas Furtado       | Amor de Invierno               |
| Voces de Lali Esposito, Adrian Suar | La Magia de Sofi               |
| Peter Lanzani, Laura Esquivel       | Expedicion Amazonia            |
| Florencia Pena, Benjamin Rojas      | Canta y No Llores              |
| Dolores Fonzi, Rodrigo de la Serna  | El Susurro del Bosque          |
| Chino Darin, Julieta Zylberberg     | Recuerdos del Futuro           |
| Sebastian Wainraich, Malena Pichot  | El Lado Oscuro del Humor       |
| Guillermo Francella, Natalia Oreiro | Planeta Azul                   |
| Esteban Lamothe, Violeta Urtizberea | Destino Final: Avenida 9 de Ju |
+-------------------------------------+--------------------------------+
 */

4) Listar el título de las películas estrenadas antes de 2012 que fueron alquiladas en 2013

SELECT DISTINCT P.titulo
FROM Peliculas P
JOIN Copias C ON P.id_pelicula = C.id_pelicula
JOIN Alquileres A ON C.numero_registro = A.numero_registro
WHERE YEAR(P.anio) < 2012
  AND YEAR(A.fecha_inicio) = 2013;

/* 
Empty set (0.000 sec)
*/

5) Listar las copias de las películas, que actualmente no están alquiladas

SELECT c.numero_registro, p.titulo
FROM copias c
JOIN peliculas p ON c.id_pelicula = p.id_pelicula
LEFT JOIN alquileres a ON c.numero_registro = a.numero_registro AND a.fecha_final IS NULL
WHERE a.numero_registro IS NULL;

/* 
+-----------------+----------------------+
| numero_registro | titulo               |
+-----------------+----------------------+
|            1001 | Furia Urbana         |
|            1002 | Furia Urbana         |
|            1005 | Furia Urbana         |
|            1006 | Reite Si Podes       |
|            1010 | Reite Si Podes       |
|            1011 | Reite Si Podes       |
|            1012 | Reite Si Podes       |
|            1015 | Galaxia Alfa         |
|            1016 | Galaxia Alfa         |
|            1019 | Galaxia Alfa         |
|            1020 | Rio de Lagrimas      |
|            1021 | Rio de Lagrimas      |
|            1022 | Rio de Lagrimas      |
|            1023 | Rio de Lagrimas      |
|            1024 | Rio de Lagrimas      |
|            1025 | Rio de Lagrimas      |
|            1026 | Rio de Lagrimas      |
|            1027 | Rio de Lagrimas      |
|            1028 | Rio de Lagrimas      |
|            1029 | Rio de Lagrimas      |
|            1030 | La Casa del Silencio |
|            1031 | La Casa del Silencio |
|            1032 | La Casa del Silencio |
|            1033 | La Casa del Silencio |
|            1034 | La Casa del Silencio |
|            1035 | La Casa del Silencio |
|            1036 | La Casa del Silencio |
|            1037 | La Casa del Silencio |
|            1038 | El Fin del Mundo     |
|            1039 | El Fin del Mundo     |
|            1040 | El Fin del Mundo     |
|            1041 | El Fin del Mundo     |
|            1042 | El Fin del Mundo     |
|            1043 | El Fin del Mundo     |
|            1044 | El Fin del Mundo     |
|            1045 | El Fin del Mundo     |
|            1046 | El Fin del Mundo     |
|            1047 | El Fin del Mundo     |
|            1048 | Amor de Invierno     |
|            1049 | Amor de Invierno     |
|            1050 | Amor de Invierno     |
|            1051 | Amor de Invierno     |
|            1052 | Amor de Invierno     |
|            1053 | Amor de Invierno     |
|            1054 | Amor de Invierno     |
|            1055 | Amor de Invierno     |
|            1056 | La Magia de Sofi     |
|            1057 | La Magia de Sofi     |
|            1058 | La Magia de Sofi     |
|            1059 | La Magia de Sofi     |
|            1060 | La Magia de Sofi     |
|            1061 | La Magia de Sofi     |
|            1062 | La Magia de Sofi     |
|            1063 | La Magia de Sofi     |
|            1064 | La Magia de Sofi     |
|            1065 | Expedicion Amazonia  |
|            1066 | Expedicion Amazonia  |
|            1067 | Expedicion Amazonia  |
|            1068 | Expedicion Amazonia  |
|            1069 | Expedicion Amazonia  |
|            1070 | Canta y No Llores    |
|            1071 | Canta y No Llores    |
|            1072 | Canta y No Llores    |
|            1073 | Canta y No Llores    |
|            1074 | Canta y No Llores    |
|            1075 | Canta y No Llores    |
|            1076 | Canta y No Llores    |
|            1077 | Canta y No Llores    |
|            1078 | Canta y No Llores    |
|            1079 | Recuerdos del Futuro |
+-----------------+----------------------+
 */