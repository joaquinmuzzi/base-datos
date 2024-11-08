



-- CONSULTAS DE 60 A 80 -----------------------------------------------------------------------------------------------------------
/* 1. Listar los nombres de los clientes que tienen asignado el representante Lorena Pauxton (suponiendo que no puede haber representantes con el mismo nombre). */

SELECT c.nombre_cliente FROM cliente c JOIN empleado e ON c.codigo_empleado_rep_ventas = e.codigo_empleado WHERE e.nombre LIKE 'Lorena' AND e.apellido1 LIKE 'Paxton';

+----------------+
| nombre_cliente |
+----------------+
| Gerudo Valley  |
| Tendo Garden   |
+----------------+

/* 13. Devuelve el nombre, apellido1 y cargo de los empleados que no representan a ningún cliente. (Utilizar IN, NOT IN) */
SELECT e.nombre, e.apellido1, e.puesto FROM empleado e WHERE e.codigo_empleado NOT IN ( SELECT codigo_empleado_rep_ventas FROM cliente )

/* 21. Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor. */

SELECT c.nombre_cliente, fecha_pedido FROM cliente c JOIN pedido p ON c.codigo_cliente = p.codigo_cliente WHERE YEAR(p.fecha_pedido) = 2008 ORDER BY p.fecha_pedido ASC;

+--------------------------------+--------------+
| nombre_cliente                 | fecha_pedido |
+--------------------------------+--------------+
| Tutifruti S.A                  | 2008-01-04   |
| Flores S.L.                    | 2008-03-05   |
| Gerudo Valley                  | 2008-03-10   |
| Jardines y Mansiones Cactus SL | 2008-03-17   |
| Jardines y Mansiones Cactus SL | 2008-03-17   |
| Tutifruti S.A                  | 2008-03-20   |
| Tendo Garden                   | 2008-06-20   |
| El Jardin Viviente S.L         | 2008-06-28   |
| Jardines y Mansiones Cactus SL | 2008-07-12   |
| Dardena S.A.                   | 2008-07-14   |
| Dardena S.A.                   | 2008-08-01   |
| Camunas Jardines S.L.          | 2008-08-03   |
| El Jardin Viviente S.L         | 2008-08-25   |
| Camunas Jardines S.L.          | 2008-09-04   |
| Jardines y Mansiones Cactus SL | 2008-10-01   |
| Tutifruti S.A                  | 2008-10-08   |
| Dardena S.A.                   | 2008-10-15   |
| Camunas Jardines S.L.          | 2008-10-15   |
| Flores S.L.                    | 2008-10-28   |
| Gerudo Valley                  | 2008-11-03   |
| GoldFish Garden                | 2008-11-09   |
| GoldFish Garden                | 2008-11-09   |
| El Jardin Viviente S.L         | 2008-11-10   |
| Jardin de Flores               | 2008-11-15   |
| Flores S.L.                    | 2008-11-29   |
| Jardines y Mansiones Cactus SL | 2008-12-07   |
| Dardena S.A.                   | 2008-12-10   |
| Jardin de Flores               | 2008-12-15   |
| Camunas Jardines S.L.          | 2008-12-19   |
| GoldFish Garden                | 2008-12-22   |
| GoldFish Garden                | 2008-12-22   |
| Flores Marivi                  | 2008-12-28   |
| Flores Marivi                  | 2008-12-28   |
| Tendo Garden                   | 2008-12-30   |
+--------------------------------+--------------+

/* 20. Devuelve un listado de los productos que nunca han aparecido en un pedido. (Utilizar EXISTS y NOT EXISTS) */

SELECT prod.nombre FROM producto prod WHERE NOT EXISTS ( SELECT dp.codigo_pedido FROM detalle_pedido dp WHERE dp.codigo_producto = prod.codigo_producto );
+-------------------------------------------------------------+
| nombre                                                      |
+-------------------------------------------------------------+
| Olea-Olivos                                                 |
| Calamondin Mini                                             |
| Camelia Blanco, Chrysler Rojo, Soraya Naranja,              |
| Landora Amarillo, Rose Gaujard bicolor blanco-rojo          |
| Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte |
| Albaricoquero Corbato                                       |
| Albaricoquero Moniqui                                       |
| Albaricoquero Kurrot                                        |
| Cerezo Burlat                                               |
| Cerezo Picota                                               |
| Ciruelo R. Claudia Verde                                    |
| Ciruelo Golden Japan                                        |
| Ciruelo Claudia Negra                                       |
| Higuera Verdal                                              |
| Higuera Breva                                               |
| Melocotonero Spring Crest                                   |
| Melocotonero Federica                                       |
| Parra Uva de Mesa                                           |
| Mandarino -Plant?n joven                                    |
| Peral Castell                                               |
| Peral Williams                                              |
| Peral Conference                                            |
| Olivo Cipresino                                             |
| Albaricoquero                                               |
| Albaricoquero                                               |
| Albaricoquero                                               |
| Cerezo                                                      |
| Cerezo                                                      |
| Cerezo                                                      |
| Ciruelo                                                     |
| Granado                                                     |
| Granado                                                     |
| Granado                                                     |
| Higuera                                                     |
| Manzano                                                     |
| Melocotonero                                                |
| Melocotonero                                                |
| Melocotonero                                                |
| Membrillero                                                 |
| Membrillero                                                 |
| Membrillero                                                 |
| Membrillero                                                 |
| Arbustos Mix Maceta                                         |
| Mimosa Injerto CLASICA Dealbata                             |
| Mimosa Semilla Bayleyana                                    |
| Mimosa Semilla Espectabilis                                 |
| Mimosa Semilla Longifolia                                   |
| Mimosa Semilla Floribunda 4 estaciones                      |
| Abelia Floribunda                                           |
| Callistemom (Mix)                                           |
| Callistemom (Mix)                                           |
| Corylus Avellana "Contorta"                                 |
| Escallonia (Mix)                                            |
| Evonimus Emerald Gayeti                                     |
| Evonimus Pulchellus                                         |
| Hibiscus Syriacus  "Helene" -Blanco-C.rojo                  |
| Hibiscus Syriacus "Pink Giant" Rosa                         |
| Lonicera Nitida "Maigrum"                                   |
| Prunus pisardii                                             |
| Weigelia "Bristol Ruby"                                     |
| Leptospermum formado PIRAMIDE                               |
| Leptospermum COPA                                           |
| Nerium oleander-CALIDAD "GARDEN"                            |
| Nerium Oleander Arbusto GRANDE                              |
| Nerium oleander COPA  Calibre 6/8                           |
| ROSAL TREPADOR                                              |
| Camelia Blanco, Chrysler Rojo, Soraya Naranja,              |
| Solanum Jazminoide                                          |
| Wisteria Sinensis  azul, rosa, blanca                       |
| Wisteria Sinensis INJERTADAS DEC?                           |
| Bougamvillea Sanderiana Tutor                               |
| Bougamvillea Sanderiana Espaldera                           |
| Bougamvillea Sanderiana Espaldera                           |
| Bougamvillea Sanderiana, 3 tut. piramide                    |
| Expositor ?rboles clima mediterr?neo                        |
| Expositor ?rboles borde del mar                             |
| Brachychiton Acerifolius                                    |
| Cassia Corimbosa                                            |
| Cassia Corimbosa                                            |
| Chitalpa Summer Bells                                       |
| Erytrina Kafra                                              |
| Eucalyptus Citriodora                                       |
| Eucalyptus Ficifolia                                        |
| Hibiscus Syriacus  Var. Injertadas 1 Tallo                  |
| Lagunaria Patersonii                                        |
| Lagunaria Patersonii                                        |
| Morus Alba                                                  |
| Platanus Acerifolia                                         |
| Salix Babylonica  Pendula                                   |
| Tamarix  Ramosissima Pink Cascade                           |
| Tecoma Stands                                               |
| Tecoma Stands                                               |
| Tipuana Tipu                                                |
| Pleioblastus distichus-Bamb? enano                          |
| Sasa palmata                                                |
| Phylostachys aurea                                          |
| Phylostachys aurea                                          |
| Phylostachys Bambusa Spectabilis                            |
| Phylostachys biseti                                         |
| Pseudosasa japonica (Metake)                                |
| Pseudosasa japonica (Metake)                                |
| Cedrus Deodara "Feeling Blue" Novedad                       |
| Juniperus chinensis "Blue Alps"                             |
| Juniperus Chinensis Stricta                                 |
| Juniperus squamata "Blue Star"                              |
| Juniperus x media Phitzeriana verde                         |
| Bismarckia Nobilis                                          |
| Brahea Armata                                               |
| Brahea Edulis                                               |
| Butia Capitata                                              |
| Butia Capitata                                              |
| Butia Capitata                                              |
| Chamaerops Humilis                                          |
| Chamaerops Humilis                                          |
| Chamaerops Humilis "Cerifera"                               |
| Chrysalidocarpus Lutescens -ARECA                           |
| Cordyline Australis -DRACAENA                               |
| Cycas Revoluta                                              |
| Cycas Revoluta                                              |
| Dracaena Drago                                              |
| Dracaena Drago                                              |
| Livistonia Decipiens                                        |
| Livistonia Decipiens                                        |
| Rhaphis Excelsa                                             |
| Sabal Minor                                                 |
| Sabal Minor                                                 |
| Trachycarpus Fortunei                                       |
| Washingtonia Robusta                                        |
| Zamia Furfuracaea                                           |
+-------------------------------------------------------------+

/* 19. Devuelve un listado que muestre solamente a los clientes que sí han realizado algún pago.(Utilizar EXISTS y NOT EXISTS) */

SELECT prod.nombre FROM producto prod WHERE NOT EXISTS ( SELECT dp.codigo_pedido FROM detalle_pedido dp WHERE dp.codigo_producto = prod.codigo_producto );

+----------------+
| codigo_cliente |
+----------------+
|             16 |
|             30 |
|             13 |
|             14 |
|             26 |
|             27 |
|              7 |
|              9 |
|             19 |
|             23 |
|              1 |
|              3 |
|              4 |
|              5 |
|             15 |
|             28 |
|             35 |
|             38 |
+----------------+