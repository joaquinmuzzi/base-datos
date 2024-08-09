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

