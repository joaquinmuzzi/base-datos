INSERT INTO epocas (Nombre_Epoca, genero_Musi, Perdiodo, DifCaractRelevantes)
VALUES
    ('Renacimiento', 'Música Clásica', '1500-01-01', 'Uso del contrapunto y la polifonía'),
    ('Barroco', 'Música Clásica', '1600-01-01', 'Desarrollo de la ópera y las formas instrumentales'),
    ('Clásico', 'Música Clásica', '1750-01-01', 'Claridad estructural, equilibrio y proporción'),
    ('Romántico', 'Música Clásica', '1820-01-01', 'Expresión emocional intensa, formas más libres'),
    ('Impresionismo', 'Música Clásica', '1890-01-01', 'Uso de escalas modales, armonías no tradicionales'),
    ('Jazz', 'Jazz', '1920-01-01', 'Improvisación, ritmos sincopados, swing'),
    ('Rock', 'Rock', '1950-01-01', 'Uso extensivo de la guitarra eléctrica, ritmos fuertes'),
    ('Hip-Hop', 'Hip-Hop', '1980-01-01', 'Rapping, beatboxing, DJing'),
    ('Electrónica', 'Electronic', '1990-01-01', 'Producción digital, uso de sintetizadores y samplers'),
    ('Pop', 'Pop', '1960-01-01', 'Melodías pegajosas, estructura simple de canciones');

INSERT INTO Instrumentos (Nombre_Instr, creador, Materiales, foto, TipoInstrumento, lugarCreacion)
VALUES
    ('Guitarra Eléctrica', 'Adolph Rickenbacker', 'Madera, metal, plástico', 'guitarra_electrica.jpg', 'Cuerda', 'Estados Unidos'),
    ('Piano', 'Bartolomeo Cristofori', 'Madera, marfil, hierro', 'piano.jpg', 'Cuerda percusiva', 'Italia'),
    ('Saxofón', 'Adolphe Sax', 'Latón', 'saxofon.jpg', 'Viento-madera', 'Bélgica'),
    ('Violín', 'Antonio Stradivari', 'Madera, tripa, ébano', 'violin.jpg', 'Cuerda frotada', 'Italia'),
    ('Flauta', 'Theobald Boehm', 'Metal, madera', 'flauta.jpg', 'Viento-madera', 'Alemania'),
    ('Batería', 'Desconocido', 'Madera, metal, plástico', 'bateria.jpg', 'Percusión', 'Global'),
    ('Trompeta', 'Desconocido', 'Latón', 'trompeta.jpg', 'Viento-metal', 'Antiguo Egipto'),
    ('Sintetizador', 'Robert Moog', 'Plástico, metal', 'sintetizador.jpg', 'Electrónico', 'Estados Unidos'),
    ('Contrabajo', 'Gasparo da Salò', 'Madera, tripa, ébano', 'contrabajo.jpg', 'Cuerda frotada', 'Italia'),
    ('Arpa', 'Desconocido', 'Madera, tripa', 'arpa.jpg', 'Cuerda pulsada', 'Antiguo Egipto');

INSERT INTO Instrumentos (Nombre_Instr, creador, Materiales, foto, TipoInstrumento, lugarCreacion)
VALUES
    ('Guitarra Electrica', 'Adolph Rickenbacker', 'Madera, metal, plastico', 'guitarra_electrica.jpg', 'Cuerda', 'Estados Unidos'),
    ('Piano', 'Bartolomeo Cristofori', 'Madera, marfil, hierro', 'piano.jpg', 'Cuerda percusiva', 'Italia'),
    ('Saxofon', 'Adolphe Sax', 'Laton', 'saxofon.jpg', 'Viento-madera', 'Belgica'),
    ('Violin', 'Antonio Stradivari', 'Madera, tripa, ebano', 'violin.jpg', 'Cuerda frotada', 'Italia'),
    ('Flauta', 'Theobald Boehm', 'Metal, madera', 'flauta.jpg', 'Viento-madera', 'Alemania'),
    ('Bateria', 'Desconocido', 'Madera, metal, plastico', 'bateria.jpg', 'Percusion', 'Global'),
    ('Trompeta', 'Desconocido', 'Laton', 'trompeta.jpg', 'Viento-metal', 'Antiguo Egipto'),
    ('Sintetizador', 'Robert Moog', 'Plastico, metal', 'sintetizador.jpg', 'Electronico', 'Estados Unidos'),
    ('Contrabajo', 'Gasparo da Salo', 'Madera, tripa, ebano', 'contrabajo.jpg', 'Cuerda frotada', 'Italia'),
    ('Arpa', 'Desconocido', 'Madera, tripa', 'arpa.jpg', 'Cuerda pulsada', 'Antiguo Egipto');

INSERT INTO Genero_Instrumentos (Nom_I, Rol_instru_gen, AnioIntro_Instru_gen, NivelDificultad, Popularidad)
VALUES
    ('Guitarra Electrica', 'Principal', '1950-01-01', 'Media', 'Alta'),
    ('Piano', 'Principal', '1700-01-01', 'Alta', 'Alta'),
    ('Saxofon', 'Secundario', '1840-01-01', 'Media', 'Media'),
    ('Violin', 'Principal', '1500-01-01', 'Alta', 'Alta'),
    ('Flauta', 'Secundario', '1800-01-01', 'Media', 'Media'),
    ('Bateria', 'Principal', '1930-01-01', 'Media', 'Alta'),
    ('Trompeta', 'Secundario', '1500-01-01', 'Alta', 'Media'),
    ('Sintetizador', 'Principal', '1960-01-01', 'Media', 'Alta'),
    ('Contrabajo', 'Secundario', '1500-01-01', 'Alta', 'Media'),
    ('Arpa', 'Secundario', '1200-01-01', 'Alta', 'Baja');

INSERT INTO Musicos (Nombre_musicos, fecha_N, fecha_M)
VALUES
    ('Ludwig van Beethoven', '1770-12-17', '1827-03-26'),
    ('Johann Sebastian Bach', '1685-03-31', '1750-07-28'),
    ('Wolfgang Amadeus Mozart', '1756-01-27', '1791-12-05'),
    ('Frederic Chopin', '1810-03-01', '1849-10-17'),
    ('Miles Davis', '1926-05-26', '1991-09-28'),
    ('John Coltrane', '1926-09-23', '1967-07-17'),
    ('Jimi Hendrix', '1942-11-27', '1970-09-18'),
    ('Elvis Presley', '1935-01-08', '1977-08-16'),
    ('Bob Marley', '1945-02-06', '1981-05-11'),
    ('Tupac Shakur', '1971-06-16', '1996-09-13');

INSERT INTO ObrasFamosas (Nombre_ObrasFam, musicos_Autores, AnioCreacion, Partitura)
VALUES
    ('Sinfonia No. 5', 'Ludwig van Beethoven', '1808-01-01', 'sinfonia_no_5.pdf'),
    ('Tocata y fuga en re menor', 'Johann Sebastian Bach', '1707-01-01', 'tocata_y_fuga.pdf'),
    ('Eine kleine Nachtmusik', 'Wolfgang Amadeus Mozart', '1787-01-01', 'eine_kleine_nachtmusik.pdf'),
    ('Nocturno Op. 9 No. 2', 'Frederic Chopin', '1832-01-01', 'nocturno_op9_no2.pdf'),
    ('So What', 'Miles Davis', '1959-01-01', 'so_what.pdf'),
    ('A Love Supreme', 'John Coltrane', '1964-01-01', 'a_love_supreme.pdf'),
    ('Purple Haze', 'Jimi Hendrix', '1967-01-01', 'purple_haze.pdf'),
    ('Jailhouse Rock', 'Elvis Presley', '1957-01-01', 'jailhouse_rock.pdf'),
    ('No Woman, No Cry', 'Bob Marley', '1974-01-01', 'no_woman_no_cry.pdf'),
    ('California Love', 'Tupac Shakur', '1995-01-01', 'california_love.pdf');

SELECT 