Listar el título de todas las películas y nº de copias
Listar el título de todas las películas y nº de copias de los estrenos del mes (sólo ejemplares nuevos)
Listar el nombre de actor y título de película que actuó
Listar el título de las películas estrenadas antes de 2012 que fueron alquiladas en 2013
Listar las copias de las películas,que actualmente no están alquiladas

1)
SELECT C.cantidad, P.titulo
FROM copias C
JOIN peliculas P ON C.id_pelicula = P.id_pelicula;

/* 
+----------+----------------------+
| cantidad | titulo               |
+----------+----------------------+
|        3 | Furia Urbana         |
|        2 | Furia Urbana         |
|        5 | Reite Si Podes       |
|        3 | Reite Si Podes       |
|        4 | Galaxia Alfa         |
|        2 | Galaxia Alfa         |
|        6 | Rio de Lagrimas      |
|        4 | Rio de Lagrimas      |
|        3 | La Casa del Silencio |
|        5 | La Casa del Silencio |
|        7 | El Fin del Mundo     |
|        3 | El Fin del Mundo     |
|        2 | Amor de Invierno     |
|        6 | Amor de Invierno     |
|        5 | La Magia de Sofi     |
|        4 | La Magia de Sofi     |
|        3 | Expedicion Amazonia  |
|        2 | Expedicion Amazonia  |
|        6 | Canta y No Llores    |
|        4 | Canta y No Llores    |
+----------+----------------------+
*/

2)
SELECT C.cantidad, P.titulo, p.anio
FROM copias C
JOIN peliculas P ON C.id_pelicula = P.id_pelicula
WHERE MONTH(p.anio) = MONTH(CURDATE())
  AND YEAR(p.anio) = YEAR(CURDATE())
GROUP BY p.titulo;
/* 
+----------+------------------+------------+
| cantidad | titulo           | anio       |
+----------+------------------+------------+
|        5 | La Magia de Sofi | 2025-04-01 |
+----------+------------------+------------+
 */

3)
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

4)
