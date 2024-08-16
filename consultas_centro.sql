/*Listar los géneros con todos sus datos mostrando a qué época pertenece y al periodo de inicio y los músicos que pertenecen a ese género de los músicos mostrar su nombre y fecha de nacimiento.*/
SELECT G.Nombre_Genero, G.Nom_E, G.Instrumento, G.origenes, G.MusicosAsoc, G.DivCarac, E.Nombre_Epoca, E.Perdiodo FROM generos G, epocas E WHERE G.Nom_E = E.Nombre_Epoca;

MariaDB [centrocultural]> SELECT G.Nombre_Genero, G.Nom_E, G.Instrumento, G.origenes, G.MusicosAsoc, G.DivCarac, E.Nombre_Epoca, E.Perdiodo FROM generos G, epocas E WHERE G.Nom_E = E.Nombre_Epoca;
+---------------+---------------+--------------+-------------------+---------------------------------------+-----------------------------+---------------+------------+
| Nombre_Genero | Nom_E         | Instrumento  | origenes          | MusicosAsoc                           | DivCarac                    | Nombre_Epoca  | Perdiodo   |
+---------------+---------------+--------------+-------------------+---------------------------------------+-----------------------------+---------------+------------+
| Blues         | Rock          | Guitarra     | Cantos de trabajo | B.B. King, Muddy Waters               | Estructura de 12 compases   | Rock          | 1950-01-01 |
| Cl?sica       | Cl?sico       | Viol?n       | M?sica medieval   | Beethoven, Mozart                     | Orquestaci?n compleja       | Cl?sico       | 1750-01-01 |
| Country       | Pop           | Guitarra     | M?sica folk       | Johnny Cash, Dolly Parton             | Narrativa en letras         | Pop           | 1960-01-01 |
| Electronic    | Jazz          | Sintetizador | Disco, Synthpop   | Daft Punk, Kraftwerk                  | Beats electr?nicos          | Jazz          | 1920-01-01 |
| Funk          | Electr?nica   | Bajo         | Soul, R&B         | James Brown, Sly and the Family Stone | Ritmos fuertes y sincopados | Electr?nica   | 1990-01-01 |
| Hip-Hop       | Rom?ntico     | Turntable    | Funk, Disco       | Tupac, Notorious B.I.G.               | Rap, sampling               | Rom?ntico     | 1820-01-01 |
| Jazz          | Barroco       | Piano        | Blues, Ragtime    | Miles Davis, John Coltrane            | Improvisaci?n, s?ncopa      | Barroco       | 1600-01-01 |
| Pop           | Hip-Hop       | Voz          | Rock & Roll       | Michael Jackson, Madonna              | Melod?as pegadizas          | Hip-Hop       | 1980-01-01 |
| Reggae        | Impresionismo | Guitarra     | Ska, Rocksteady   | Bob Marley, Peter Tosh                | Ritmos sincopados           | Impresionismo | 1890-01-01 |
| Rock          | Renacimiento  | Guitarra     | Blues, Country    | The Beatles, Led Zeppelin             | Guitarra el?ctrica, bater?a | Renacimiento  | 1500-01-01 |
+---------------+---------------+--------------+-------------------+---------------------------------------+-----------------------------+---------------+------------+
10 rows in set (0.001 sec)

/*  y los músicos que pertenecen a ese género de los músicos mostrar su nombre y fecha de nacimiento. */

SELECT G.MusicosAsoc, M.Nombre_musicos, M.fecha_N FROM musicos M, generos G, epocas E WHERE G.Nom_E = E.Nombre_Epoca;
MariaDB [centrocultural]> SELECT G.MusicosAsoc, M.Nombre_musicos, M.fecha_N FROM musicos M, generos G, epocas E WHERE G.Nom_E = E.Nombre_Epoca;
+---------------------------------------+-------------------------+------------+
| MusicosAsoc                           | Nombre_musicos          | fecha_N    |
+---------------------------------------+-------------------------+------------+
| B.B. King, Muddy Waters               | Bob Marley              | 1945-02-06 |
| B.B. King, Muddy Waters               | Elvis Presley           | 1935-01-08 |
| B.B. King, Muddy Waters               | Frederic Chopin         | 1810-03-01 |
| B.B. King, Muddy Waters               | Jimi Hendrix            | 1942-11-27 |
| B.B. King, Muddy Waters               | Johann Sebastian Bach   | 1685-03-31 |
| B.B. King, Muddy Waters               | John Coltrane           | 1926-09-23 |
| B.B. King, Muddy Waters               | Ludwig van Beethoven    | 1770-12-17 |
| B.B. King, Muddy Waters               | Miles Davis             | 1926-05-26 |
| B.B. King, Muddy Waters               | Tupac Shakur            | 1971-06-16 |
| B.B. King, Muddy Waters               | Wolfgang Amadeus Mozart | 1756-01-27 |
| Beethoven, Mozart                     | Bob Marley              | 1945-02-06 |
| Beethoven, Mozart                     | Elvis Presley           | 1935-01-08 |
| Beethoven, Mozart                     | Frederic Chopin         | 1810-03-01 |
| Beethoven, Mozart                     | Jimi Hendrix            | 1942-11-27 |
| Beethoven, Mozart                     | Johann Sebastian Bach   | 1685-03-31 |
| Beethoven, Mozart                     | John Coltrane           | 1926-09-23 |
| Beethoven, Mozart                     | Ludwig van Beethoven    | 1770-12-17 |
| Beethoven, Mozart                     | Miles Davis             | 1926-05-26 |
| Beethoven, Mozart                     | Tupac Shakur            | 1971-06-16 |
| Beethoven, Mozart                     | Wolfgang Amadeus Mozart | 1756-01-27 |
| Johnny Cash, Dolly Parton             | Bob Marley              | 1945-02-06 |
| Johnny Cash, Dolly Parton             | Elvis Presley           | 1935-01-08 |
| Johnny Cash, Dolly Parton             | Frederic Chopin         | 1810-03-01 |
| Johnny Cash, Dolly Parton             | Jimi Hendrix            | 1942-11-27 |
| Johnny Cash, Dolly Parton             | Johann Sebastian Bach   | 1685-03-31 |
| Johnny Cash, Dolly Parton             | John Coltrane           | 1926-09-23 |
| Johnny Cash, Dolly Parton             | Ludwig van Beethoven    | 1770-12-17 |
| Johnny Cash, Dolly Parton             | Miles Davis             | 1926-05-26 |
| Johnny Cash, Dolly Parton             | Tupac Shakur            | 1971-06-16 |
| Johnny Cash, Dolly Parton             | Wolfgang Amadeus Mozart | 1756-01-27 |
| Daft Punk, Kraftwerk                  | Bob Marley              | 1945-02-06 |
| Daft Punk, Kraftwerk                  | Elvis Presley           | 1935-01-08 |
| Daft Punk, Kraftwerk                  | Frederic Chopin         | 1810-03-01 |
| Daft Punk, Kraftwerk                  | Jimi Hendrix            | 1942-11-27 |
| Daft Punk, Kraftwerk                  | Johann Sebastian Bach   | 1685-03-31 |
| Daft Punk, Kraftwerk                  | John Coltrane           | 1926-09-23 |
| Daft Punk, Kraftwerk                  | Ludwig van Beethoven    | 1770-12-17 |
| Daft Punk, Kraftwerk                  | Miles Davis             | 1926-05-26 |
| Daft Punk, Kraftwerk                  | Tupac Shakur            | 1971-06-16 |
| Daft Punk, Kraftwerk                  | Wolfgang Amadeus Mozart | 1756-01-27 |
| James Brown, Sly and the Family Stone | Bob Marley              | 1945-02-06 |
| James Brown, Sly and the Family Stone | Elvis Presley           | 1935-01-08 |
| James Brown, Sly and the Family Stone | Frederic Chopin         | 1810-03-01 |
| James Brown, Sly and the Family Stone | Jimi Hendrix            | 1942-11-27 |
| James Brown, Sly and the Family Stone | Johann Sebastian Bach   | 1685-03-31 |
| James Brown, Sly and the Family Stone | John Coltrane           | 1926-09-23 |
| James Brown, Sly and the Family Stone | Ludwig van Beethoven    | 1770-12-17 |
| James Brown, Sly and the Family Stone | Miles Davis             | 1926-05-26 |
| James Brown, Sly and the Family Stone | Tupac Shakur            | 1971-06-16 |
| James Brown, Sly and the Family Stone | Wolfgang Amadeus Mozart | 1756-01-27 |
| Tupac, Notorious B.I.G.               | Bob Marley              | 1945-02-06 |
| Tupac, Notorious B.I.G.               | Elvis Presley           | 1935-01-08 |
| Tupac, Notorious B.I.G.               | Frederic Chopin         | 1810-03-01 |
| Tupac, Notorious B.I.G.               | Jimi Hendrix            | 1942-11-27 |
| Tupac, Notorious B.I.G.               | Johann Sebastian Bach   | 1685-03-31 |
| Tupac, Notorious B.I.G.               | John Coltrane           | 1926-09-23 |
| Tupac, Notorious B.I.G.               | Ludwig van Beethoven    | 1770-12-17 |
| Tupac, Notorious B.I.G.               | Miles Davis             | 1926-05-26 |
| Tupac, Notorious B.I.G.               | Tupac Shakur            | 1971-06-16 |
| Tupac, Notorious B.I.G.               | Wolfgang Amadeus Mozart | 1756-01-27 |
| Miles Davis, John Coltrane            | Bob Marley              | 1945-02-06 |
| Miles Davis, John Coltrane            | Elvis Presley           | 1935-01-08 |
| Miles Davis, John Coltrane            | Frederic Chopin         | 1810-03-01 |
| Miles Davis, John Coltrane            | Jimi Hendrix            | 1942-11-27 |
| Miles Davis, John Coltrane            | Johann Sebastian Bach   | 1685-03-31 |
| Miles Davis, John Coltrane            | John Coltrane           | 1926-09-23 |
| Miles Davis, John Coltrane            | Ludwig van Beethoven    | 1770-12-17 |
| Miles Davis, John Coltrane            | Miles Davis             | 1926-05-26 |
| Miles Davis, John Coltrane            | Tupac Shakur            | 1971-06-16 |
| Miles Davis, John Coltrane            | Wolfgang Amadeus Mozart | 1756-01-27 |
| Michael Jackson, Madonna              | Bob Marley              | 1945-02-06 |
| Michael Jackson, Madonna              | Elvis Presley           | 1935-01-08 |
| Michael Jackson, Madonna              | Frederic Chopin         | 1810-03-01 |
| Michael Jackson, Madonna              | Jimi Hendrix            | 1942-11-27 |
| Michael Jackson, Madonna              | Johann Sebastian Bach   | 1685-03-31 |
| Michael Jackson, Madonna              | John Coltrane           | 1926-09-23 |
| Michael Jackson, Madonna              | Ludwig van Beethoven    | 1770-12-17 |
| Michael Jackson, Madonna              | Miles Davis             | 1926-05-26 |
| Michael Jackson, Madonna              | Tupac Shakur            | 1971-06-16 |
| Michael Jackson, Madonna              | Wolfgang Amadeus Mozart | 1756-01-27 |
| Bob Marley, Peter Tosh                | Bob Marley              | 1945-02-06 |
| Bob Marley, Peter Tosh                | Elvis Presley           | 1935-01-08 |
| Bob Marley, Peter Tosh                | Frederic Chopin         | 1810-03-01 |
| Bob Marley, Peter Tosh                | Jimi Hendrix            | 1942-11-27 |
| Bob Marley, Peter Tosh                | Johann Sebastian Bach   | 1685-03-31 |
| Bob Marley, Peter Tosh                | John Coltrane           | 1926-09-23 |
| Bob Marley, Peter Tosh                | Ludwig van Beethoven    | 1770-12-17 |
| Bob Marley, Peter Tosh                | Miles Davis             | 1926-05-26 |
| Bob Marley, Peter Tosh                | Tupac Shakur            | 1971-06-16 |
| Bob Marley, Peter Tosh                | Wolfgang Amadeus Mozart | 1756-01-27 |
| The Beatles, Led Zeppelin             | Bob Marley              | 1945-02-06 |
| The Beatles, Led Zeppelin             | Elvis Presley           | 1935-01-08 |
| The Beatles, Led Zeppelin             | Frederic Chopin         | 1810-03-01 |
| The Beatles, Led Zeppelin             | Jimi Hendrix            | 1942-11-27 |
| The Beatles, Led Zeppelin             | Johann Sebastian Bach   | 1685-03-31 |
| The Beatles, Led Zeppelin             | John Coltrane           | 1926-09-23 |
| The Beatles, Led Zeppelin             | Ludwig van Beethoven    | 1770-12-17 |
| The Beatles, Led Zeppelin             | Miles Davis             | 1926-05-26 |
| The Beatles, Led Zeppelin             | Tupac Shakur            | 1971-06-16 |
| The Beatles, Led Zeppelin             | Wolfgang Amadeus Mozart | 1756-01-27 |
+---------------------------------------+-------------------------+------------+

/* Mencionar las obras famosas, el nombre y el año de creación y el género a que pertenecen y el nombre del músico.*/
SELECT OF.Nombre_ObrasFam, OF.anioCreacion, GOF.Nombre_GOF, GOF.Artista FROM ObrasFamosas OF, Genero_ObrasFamosas GOF WHERE OF.Nombre_ObrasFam = GOF.Nombre_GOF;

+---------------------------+--------------+---------------------------+-------------------------+
| Nombre_ObrasFam           | anioCreacion | Nombre_GOF                | Artista                 |
+---------------------------+--------------+---------------------------+-------------------------+
| Tocata y fuga en re menor | 1707-01-01   | Tocata y Fuga en Re Menor | Johann Sebastian Bach   |
| Eine kleine Nachtmusik    | 1787-01-01   | Eine Kleine Nachtmusik    | Wolfgang Amadeus Mozart |
| Nocturno Op. 9 No. 2      | 1832-01-01   | Nocturno Op. 9 No. 2      | Frederic Chopin         |
| So What                   | 1959-01-01   | So What                   | Miles Davis             |
| A Love Supreme            | 1964-01-01   | A Love Supreme            | John Coltrane           |
| Purple Haze               | 1967-01-01   | Purple Haze               | Jimi Hendrix            |
| Jailhouse Rock            | 1957-01-01   | Jailhouse Rock            | Elvis Presley           |
| No Woman, No Cry          | 1974-01-01   | No Woman, No Cry          | Bob Marley              |
| California Love           | 1995-01-01   | California Love           | Tupac Shakur            |
+---------------------------+--------------+---------------------------+-------------------------+

SELECT OF.Nombre_ObrasFam, OF.anioCreacion, GOF.Nombre_GOF, GOF.Artista FROM ObrasFamosas OF, Genero_ObrasFamosas GOF WHERE OF.Nombre_ObrasFam = GOF.Nombre_GOF;

/* 3- Mencionar todos los instrumentos y a que género pertenecen . */
SELECT GI.Nom_I, I.Materiales FROM Genero_Instrumentos GI, Instrumentos I WHERE GI.Nom_I = I.Nombre_Instr;

+--------------------+-------------------------+
| Nom_I              | Materiales              |
+--------------------+-------------------------+
| Arpa               | Madera, tripa           |
| Bater?a            | Madera, metal, pl?stico |
| Contrabajo         | Madera, tripa, ?bano    |
| Flauta             | Metal, madera           |
| Guitarra El?ctrica | Madera, metal, pl?stico |
| Piano              | Madera, marfil, hierro  |
| Saxof?n            | Lat?n                   |
| Sintetizador       | Pl?stico, metal         |
| Trompeta           | Lat?n                   |
| Viol?n             | Madera, tripa, ?bano    |
+--------------------+-------------------------+

/* 4- Mencionar todos los músicos cuyos nombres terminan en n.  */
SELECT Nombre_musicos FROM musicos WHERE Nombre_musicos LIKE '%n';
MariaDB [CentroCultural]> Select Nombre_musicos FROM musicos WHERE Nombre_musicos LIKE '%n';
+----------------------+
| Nombre_musicos       |
+----------------------+
| Frederic Chopin      |
| Ludwig van Beethoven |
+----------------------+

/* 5- Listar todos las obras famosas cuyos años de creación estén comprendidos entre 1950 y 1970. */
SELECT Nombre_ObrasFam, anioCreacion FROM ObrasFamosas WHERE YEAR(anioCreacion) BETWEEN 1950 AND 1970;
+-----------------+--------------+
| Nombre_ObrasFam | anioCreacion |
+-----------------+--------------+
| A Love Supreme  | 1964-01-01   |
| Jailhouse Rock  | 1957-01-01   |
| Purple Haze     | 1967-01-01   |
| So What         | 1959-01-01   |
+-----------------+--------------+

/* 6- Listar el nombre de los músicos y su historia de vida ordenándolos del más chico al más grande. */
SELECT Nombre_musicos, fecha_N FROM Musicos ORDER BY fecha_N DESC;
+-------------------------+------------+
| Nombre_musicos          | fecha_N    |
+-------------------------+------------+
| Tupac Shakur            | 1971-06-16 |
| Bob Marley              | 1945-02-06 |
| Jimi Hendrix            | 1942-11-27 |
| Elvis Presley           | 1935-01-08 |
| John Coltrane           | 1926-09-23 |
| Miles Davis             | 1926-05-26 |
| Frederic Chopin         | 1810-03-01 |
| Ludwig van Beethoven    | 1770-12-17 |
| Wolfgang Amadeus Mozart | 1756-01-27 |
| Johann Sebastian Bach   | 1685-03-31 |
+-------------------------+------------+

/* 7- Listar el nombre de los músicos y su historia de vida ordenándolos del mayor al menor. */
SELECT Nombre_musicos, fecha_N FROM Musicos ORDER BY fecha_N ASC;
+-------------------------+------------+
| Nombre_musicos          | fecha_N    |
+-------------------------+------------+
| Johann Sebastian Bach   | 1685-03-31 |
| Wolfgang Amadeus Mozart | 1756-01-27 |
| Ludwig van Beethoven    | 1770-12-17 |
| Frederic Chopin         | 1810-03-01 |
| Miles Davis             | 1926-05-26 |
| John Coltrane           | 1926-09-23 |
| Elvis Presley           | 1935-01-08 |
| Jimi Hendrix            | 1942-11-27 |
| Bob Marley              | 1945-02-06 |
| Tupac Shakur            | 1971-06-16 |
+-------------------------+------------+

/* 8- Listar aquellos instrumentos, el nombre y el tipo cuyo material sea de madera y la cantidad cuyo material sea de madera. */
SELECT Nombre_Instr, TipoInstrumento FROM Instrumento WHERE Materiales LIKE '%madera%';
+--------------------+------------------+
| Nombre_Instr       | TipoInstrumento  |
+--------------------+------------------+
| Flauta             | Viento-madera    |
+--------------------+------------------+

/* 9- Mostrar todos los géneros que existen agrupándolos por época. */
SELECT Nombre_Genero, Nom_E FROM generos ORDER BY Nom_E, Nombre_Genero;
+---------------+---------------+
| Nombre_Genero | Nom_E         |
+---------------+---------------+
| Jazz          | Barroco       |
| Cl?sica       | Cl?sico       |
| Funk          | Electr?nica   |
| Pop           | Hip-Hop       |
| Reggae        | Impresionismo |
| Electronic    | Jazz          |
| Country       | Pop           |
| Rock          | Renacimiento  |
| Blues         | Rock          |
| Hip-Hop       | Rom?ntico     |
+---------------+---------------+

/* 10- Listar todos los géneros cuyo origen sea distinto de nulo */
SELECT Nombre_Genero, origenes FROM generos WHERE origenes IS NOT NULL;
+---------------+-------------------+
| Nombre_Genero | origenes          |
+---------------+-------------------+
| Blues         | Cantos de trabajo |
| Cl?sica       | M?sica medieval   |
| Country       | M?sica folk       |
| Electronic    | Disco, Synthpop   |
| Funk          | Soul, R&B         |
| Hip-Hop       | Funk, Disco       |
| Jazz          | Blues, Ragtime    |
| Pop           | Rock & Roll       |
| Reggae        | Ska, Rocksteady   |
| Rock          | Blues, Country    |
+---------------+-------------------+
