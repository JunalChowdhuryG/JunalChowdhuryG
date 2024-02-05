USE BD_Biblioteca
go

-- Insertando datos en la tabla de Ubicaciones
INSERT INTO Ubicacion.Ubicaciones (nombre_ubicacion)
VALUES ('Planta Baja'),
       ('Primer Piso'),
       ('Segundo Piso'),
       ('Tercer Piso'),
       ('Cuarto Piso'),
       ('Quinto Piso'),
       ('Sótano 1'),
       ('Sótano 2'),
       ('Sótano 3'),
       ('Sala de Lectura'),
       ('Área de Referencia'),
	   ('Sección Infantil'),
       ('Sección de Ficción'),
       ('Sección de No Ficción'),
       ('Sección de Historia');
go

-- Insertando datos en la tabla Estanterias
INSERT INTO Ubicacion.Estanterias (ubicacion_id, nombre_estanteria)
VALUES 
	-- Estanterias de la Planta Baja
	(1, 'Estantería A'),
	(1, 'Estantería B'),
	(1, 'Estantería C'),
	(1, 'Estantería D'),
	(1, 'Estantería E'),
	(1, 'Estantería F'),
	-- Estanterias del Primer Piso
	(2, 'Estantería G'),
	(2, 'Estantería H'),
	(2, 'Estantería I'),
	(2, 'Estantería J'),
	(2, 'Estantería K'),
	(2, 'Estantería L'),
	-- Estanterias del Segundo Piso
	(3, 'Estantería M'),
	(3, 'Estantería N'),
	(3, 'Estantería O'),
	(3, 'Estantería P'),
	(3, 'Estantería Q'),
	(3, 'Estantería R'),
	-- Estanterias del Tercer Piso
	(4, 'Estantería S'),
	(4, 'Estantería T'),
	(4, 'Estantería U'),
	(4, 'Estantería V'),
	(4, 'Estantería W'),
	(4, 'Estantería X'),
	-- Estanterias del Cuarto Piso
	(5, 'Estantería Y'),
	(5, 'Estantería Z'),
	(5, 'Estantería AA'),
	(5, 'Estantería AB'),
	(5, 'Estantería AC'),
	(5, 'Estantería AD'),
	-- Estanterias del Quinto Piso
	(6, 'Estantería AE'),
	(6, 'Estantería AF'),
	(6, 'Estantería AG'),
	(6, 'Estantería AH'),
	(6, 'Estantería AI'),
	(6, 'Estantería AJ'),
	-- Estanterias del Sótano 1
	(7, 'Estantería AK'),
	(7, 'Estantería AL'),
	(7, 'Estantería AM'),
	(7, 'Estantería AN'),
	(7, 'Estantería AO'),
	(7, 'Estantería AP'),
	-- Estanterias del Sótano 2
	(8, 'Estantería AQ'),
	(8, 'Estantería AR'),
	(8, 'Estantería AS'),
	(8, 'Estantería AT'),
	(8, 'Estantería AU'),
	(8, 'Estantería AV'),
	-- Estanterias del Sotano 3
	(9, 'Estantería AW'),
	(9, 'Estantería AX'),
	(9, 'Estantería AY'),
	(9, 'Estantería AZ'),
	(9, 'Estantería BA'),
	(9, 'Estantería BB'),
	-- Estanterias de la Sala de Lectura
	(10, 'Estantería BC'),
	(10, 'Estantería BD'),
	(10, 'Estantería BE'),
	(10, 'Estantería BF'),
	(10, 'Estantería BG'),
	(10, 'Estantería BH'),
	-- Estanterias de la Área de Referencia
	(11, 'Estantería BI'),
	(11, 'Estantería BJ'),
	(11, 'Estantería BK'),
	(11, 'Estantería BL'),
	(11, 'Estantería BM'),
	(11, 'Estantería BN'),
	-- Estanterias de la Sección de Infantil
	(12, 'Estantería BO'),
	(12, 'Estantería BP'),
	(12, 'Estantería BQ'),
	(12, 'Estantería BR'),
	(12, 'Estantería BS'),
	(12, 'Estantería BT'),
	-- Estanterias de la Sección de Ficción
	(13, 'Estantería BU'),
	(13, 'Estantería BV'),
	(13, 'Estantería BW'),
	(13, 'Estantería BX'),
	(13, 'Estantería BY'),
	(13, 'Estantería BZ'),
	-- Estanterias de la Sección No Ficción
	(14, 'Estantería CA'),
	(14, 'Estantería CB'),
	(14, 'Estantería CC'),
	(14, 'Estantería CD'),
	(14, 'Estantería CE'),
	(14, 'Estantería CF'),
	-- Estanterias de la Sección de Historia
	(15, 'Estantería DA'),
	(15, 'Estantería DB'),
	(15, 'Estantería DC'),
	(15, 'Estantería DD'),
	(15, 'Estantería DE'),
	(15, 'Estantería DF');
go


-- Insertando datos en la tabla Autores
INSERT INTO [Libro].[Autores] (nombre_autor)
VALUES 
    ('J.K. Rowling'),
    ('Stephen King'),
    ('Gabriel García Márquez'),
    ('Haruki Murakami'),
    ('Agatha Christie'),
    ('Jane Austen'),
    ('George Orwell'),
    ('Leo Tolstoy'),
    ('Ernest Hemingway'),
    ('Virginia Woolf'),
    ('Fyodor Dostoevsky'),
    ('Mark Twain'),
    ('Herman Melville'),
    ('Emily Dickinson'),
    ('Charles Dickens'),
    ('Toni Morrison'),
    ('Jorge Luis Borges'),
    ('Miguel de Cervantes'),
    ('William Shakespeare'),
    ('Albert Camus'),
    ('Franz Kafka'),
    ('J.R.R. Tolkien'),
    ('Aldous Huxley'),
    ('John Steinbeck'),
    ('Oscar Wilde'),
    ('F. Scott Fitzgerald'),
    ('Homero'),
    ('Platon'),
    ('Friedrich Nietzsche'),
    ('Anton Chekhov'),
    ('Dante Alighieri'),
    ('James Joyce'),
    ('H.G. Wells'),
    ('Marcel Proust'),
    ('Walt Whitman'),
    ('Jack London'),
    ('Charlotte Brontë'),
    ('Emily Brontë'),
    ('Anne Brontë'),
    ('Arthur Conan Doyle'),
    ('Mary Shelley'),
    ('Edgar Allan Poe'),
    ('Robert Louis Stevenson'),
    ('George Eliot'),
    ('Voltaire');
go

-- Insertando datos en la tabla Editoriales
INSERT INTO Libro.Editoriales (nombre_editorial)
VALUES 
	('Penguin Random House'),
	('HarperCollins'),
	('Simon & Schuster'),
	('Macmillan Publishers'),
	('Hachette Livre'),
	('Wiley'),
	('Oxford University Press'),
	('Cambridge University Press'),
	('Elsevier'),
	('Pearson');
go


-- Insertando datos en la tabla Categorias
INSERT INTO Libro.Categorias (nombre_categoria)
VALUES 
	('Ficción'),
	('No Ficción'),
	('Ciencia Ficción'),
	('Misterio'),
	('Terror'),
	('Fantasía'),
	('Biografía'),
	('Historia'),
	('Arte'),
	('Autoayuda'),
	('Ciencia'),
	('Poesía'),
	('Drama'),
	('Ensayo'),
	('Infantil');
go

-- Insertar libros en la tabla
INSERT INTO [Libro].[Libros] (titulo, autor_id, editorial_id, anio_publicacion, cantidad_disponible)
VALUES 
    -- J.K. Rowling
    ('Harry Potter y la Piedra Filosofal', 1, 1, 1997, 10),
    ('Harry Potter y la Cámara Secreta', 1, 2, 1998, 8),
    ('Harry Potter y el Prisionero de Azkaban', 1, 3, 1999, 6),
    -- Stephen King
    ('It', 2, 4, 1986, 12),
    ('El Resplandor', 2, 5, 1977, 9),
    ('Cementerio de animales', 2, 6, 1983, 7),
    -- Gabriel García Márquez
    ('Cien años de soledad', 3, 7, 1967, 15),
    ('El amor en los tiempos del cólera', 3, 8, 1985, 11),
    ('Crónica de una muerte anunciada', 3, 9, 1981, 8),
    -- Haruki Murakami
    ('Tokio Blues', 4, 10, 1987, 10),
    ('Kafka en la orilla', 4, 1, 2002, 7),
    ('1Q84', 4, 2, 2009, 5),
    -- Agatha Christie
    ('Asesinato en el Orient Express', 5, 3, 1934, 14),
    ('Diez negritos', 5, 4, 1939, 10),
    ('El misterio de la guía de ferrocarriles', 5, 5, 1937, 8),
    -- Jane Austen
    ('Orgullo y prejuicio', 6, 6, 1813, 20),
    ('Sentido y sensibilidad', 6, 7, 1811, 15),
    ('Emma', 6, 8, 1815, 12),
    -- George Orwell
    ('1984', 7, 9, 1949, 18),
    ('Rebelión en la granja', 7, 10, 1945, 16),
    ('Homenaje a Cataluña', 7, 1, 1938, 10),
    -- Leo Tolstoy
    ('Guerra y paz', 8, 2, 1869, 25),
    ('Anna Karenina', 8, 3, 1877, 20),
    ('La muerte de Ivan Ilich', 8, 4, 1886, 14),
    -- Ernest Hemingway
    ('Adiós a las armas', 9, 5, 1929, 15),
    ('El viejo y el mar', 9, 6, 1952, 12),
    ('Por quién doblan las campanas', 9, 7, 1940, 10),
    -- Virginia Woolf
    ('La señora Dalloway', 10, 8, 1925, 18),
    ('Al faro', 10, 9, 1927, 14),
    ('Orlando', 10, 10, 1928, 11)
GO

-- Conttinuando la inserccion
INSERT INTO [Libro].[Libros] (titulo, autor_id, editorial_id, anio_publicacion, cantidad_disponible)
VALUES 
    -- Fyodor Dostoevsky
    ('Crimen y castigo', 11, 1, 1866, 20),
    ('El idiota', 11, 2, 1869, 15),
    ('Los hermanos Karamazov', 11, 3, 1880, 18),
    -- Mark Twain
    ('Las aventuras de Tom Sawyer', 12, 4, 1876, 25),
    ('Las aventuras de Huckleberry Finn', 12, 5, 1884, 20),
    ('Un yanqui en la corte del Rey Arturo', 12, 6, 1889, 14),
    -- Herman Melville
    ('Moby Dick', 13, 7, 1851, 30),
    ('Bartleby, el escribiente', 13, 8, 1853, 18),
    ('Billy Budd', 13, 9, 1924, 12),
    -- Emily Dickinson
    ('Poemas', 14, 10, NULL, NULL),
    ('Cartas', 14, 1, NULL, NULL),
    ('Naturaleza', 14, 2, NULL, NULL),
    -- Charles Dickens
    ('David Copperfield', 15, 3, 1850, 22),
    ('Cuento de Navidad', 15, 4, 1843, 20),
    ('Grandes esperanzas', 15, 5, 1861, 18),
    -- Toni Morrison
    ('Beloved', 16, 6, 1987, 20),
    ('Jazz', 16, 7, 1992, 18),
    ('Paraíso', 16, 8, 1997, 15),
    -- Jorge Luis Borges
    ('Ficciones', 17, 9, 1944, 25),
    ('El Aleph', 17, 10, 1949, 20),
    ('El hacedor', 17, 1, 1960, 18),
    -- Miguel de Cervantes
    ('Don Quijote de la Mancha', 18, 2, 1605, 30),
    ('Novelas ejemplares', 18, 3, 1613, 22),
    ('La Galatea', 18, 4, 1585, 18),
    -- William Shakespeare
    ('Romeo y Julieta', 19, 5, 1597, 25),
    ('Hamlet', 19, 6, 1601, 20),
    ('Macbeth', 19, 7, 1606, 18)
GO
INSERT INTO [Libro].[Libros] (titulo, autor_id, editorial_id, anio_publicacion, cantidad_disponible)
VALUES 
    -- Albert Camus
    ('El extranjero', 20, 8, 1942, 20),
    ('La peste', 20, 9, 1947, 18),
    ('El mito de Sísifo', 20, 10, 1942, 15),
    -- Franz Kafka
    ('La metamorfosis', 21, 1, 1915, 22),
    ('El proceso', 21, 2, 1925, 20),
    ('El castillo', 21, 3, 1926, 18),
    -- J.R.R. Tolkien
    ('El hobbit', 22, 4, 1937, 25),
    ('El Señor de los Anillos: La Comunidad del Anillo', 22, 5, 1954, 22),
    ('El Señor de los Anillos: Las dos torres', 22, 6, 1954, 20),
    -- Aldous Huxley
    ('Un mundo feliz', 23, 7, 1932, 20),
    ('Las puertas de la percepción', 23, 8, 1954, 18),
    ('Islandia', 23, 9, 1962, 15),
    -- John Steinbeck
    ('Las uvas de la ira', 24, 10, 1939, 25),
    ('Al este del Edén', 24, 1, 1952, 22),
    ('La perla', 24, 2, 1947, 20),
    -- Oscar Wilde
    ('El retrato de Dorian Gray', 25, 3, 1890, 20),
    ('El fantasma de Canterville', 25, 4, 1887, 18),
    ('La importancia de llamarse Ernesto', 25, 5, 1895, 15),
    -- F. Scott Fitzgerald
    ('El gran Gatsby', 26, 6, 1925, 22),
    ('Suave es la noche', 26, 7, 1934, 20),
    ('El curioso caso de Benjamin Button', 26, 8, 1922, 18)
GO

INSERT INTO [Libro].[Libros] (titulo, autor_id, editorial_id, anio_publicacion, cantidad_disponible)
VALUES
    -- Homer
    ('Ilíada', 27, 9, NULL, NULL),
    ('Odisea', 27, 10, NULL, NULL),
    ('Himnos homéricos', 27, 1, NULL, NULL),
    -- Platón
    ('La república', 28, 2, NULL, NULL),
    ('Fedro', 28, 3, NULL, NULL),
    ('Simposio', 28, 4, NULL, NULL),
    -- Friedrich Nietzsche
    ('Así habló Zaratustra', 29, 5, 1883, NULL),
    ('La genealogía de la moral', 29, 6, 1887, NULL),
    ('Más allá del bien y del mal', 29, 7, 1886, NULL),
    -- Anton Chekhov
    ('La dama del perrito', 30, 8, 1899, NULL),
    ('La estepa', 30, 9, 1888, NULL),
    ('El jardín de los cerezos', 30, 10, 1904, NULL),
    -- Dante Alighieri
    ('La Divina Comedia', 31, 1, 1320, NULL),
    ('Convivio', 31, 2, 1304, NULL),
    ('La vida nueva', 31, 3, 1295, NULL),
    -- James Joyce
    ('Ulises', 32, 4, 1922, NULL),
    ('Retrato del artista adolescente', 32, 5, 1916, NULL),
    ('Dublineses', 32, 6, 1914, NULL),
    -- H.G. Wells
    ('La máquina del tiempo', 33, 7, 1895, NULL),
    ('La guerra de los mundos', 33, 8, 1898, NULL),
    ('El hombre invisible', 33, 9, 1897, NULL),
    -- Marcel Proust
    ('En busca del tiempo perdido', 34, 10, 1913, NULL),
    ('A la sombra de las muchachas en flor', 34, 1, 1919, NULL),
    ('El mundo de Guermantes', 34, 2, 1920, NULL),
    -- Walt Whitman
    ('Hojas de hierba', 35, 3, 1855, NULL),
    ('Canto a mí mismo', 35, 4, 1855, NULL),
    ('Aves de América', 35, 5, 1855, NULL),
    -- Jack London
    ('Colmillo blanco', 36, 6, 1906, NULL),
    ('La llamada de lo salvaje', 36, 7, 1903, NULL),
    ('El lobo de mar', 36, 8, 1904, NULL),
    -- Charlotte Brontë
    ('Jane Eyre', 37, 9, 1847, NULL),
    ('Shirley', 37, 10, 1849, NULL),
    ('Villette', 37, 1, 1853, NULL),
    -- Emily Brontë
    ('Cumbres borrascosas', 38, 2, 1847, NULL),
    ('Poemas', 38, 3, NULL, NULL),
    ('Diario', 38, 4, NULL, NULL),
    -- Anne Bronte
    ('Agnes Grey', 39, 5, 1847, NULL),
    ('La inquilina de Wildfell Hall', 39, 6, 1848, NULL),
    ('Poemas', 39, 7, NULL, NULL),
    -- Arthur Conan Doyle
    ('Estudio en escarlata', 40, 8, 1887, NULL),
    ('El signo de los cuatro', 40, 9, 1890, NULL),
    ('El sabueso de los Baskerville', 40, 10, 1902, NULL)
GO

INSERT INTO [Libro].[Libros] (titulo, autor_id, editorial_id, anio_publicacion, cantidad_disponible)
VALUES
    -- Mary Shelley
    ('Frankenstein', 41, 1, 1818, NULL),
    ('Mathilda', 41, 2, 1959, NULL),
    ('El último hombre', 41, 3, 1826, NULL),
    -- Edgar Allan Poe
    ('Los crímenes de la calle Morgue', 42, 4, 1841, NULL),
    ('El gato negro', 42, 5, 1843, NULL),
    ('El corazón delator', 42, 6, 1843, NULL),
    -- Robert Louis Stevenson
    ('La isla del tesoro', 43, 7, 1883, NULL),
    ('El extraño caso del Dr. Jekyll y Mr. Hyde', 43, 8, 1886, NULL),
    ('Secuestrado', 43, 9, 1886, NULL),
    -- George Eliot
    ('Middlemarch', 44, 10, 1871, NULL),
    ('Adam Bede', 44, 1, 1859, NULL),
    ('Los molinos de los dioses', 44, 2, 1860, NULL),
    -- Voltaire
    ('Cándido', 45, 3, 1759, NULL),
    ('Cartas filosóficas', 45, 4, 1734, NULL),
    ('Tratado sobre la tolerancia', 45, 5, 1763, NULL);
GO

-- Inserción completa de libros y categorías en la tabla [Libro].[Libros_Categorias]
INSERT INTO [Libro].[Libros_Categorias] (ISBN, categoria_id)
-- Libros de Ficción
SELECT ISBN, 1 FROM [Libro].[Libros] WHERE titulo IN (
    'Harry Potter y la Piedra Filosofal',
	'Harry Potter y la Cámara Secreta',
	'Harry Potter y el Prisionero de Azkaban',
	'It',
	'El Resplandor',
	'Cementerio de animales',
	'Cien años de soledad',
	'El amor en los tiempos del cólera',
	'Crónica de una muerte anunciada',
	'Tokio Blues',
	'Kafka en la orilla',
	'1Q84',
	'Asesinato en el Orient Express',
	'Diez negritos',
	'El misterio de la guía de ferrocarriles',
	'Orgullo y prejuicio',
	'Sentido y sensibilidad',
	'Emma',
	'Ficciones',
	'El Aleph',
	'El hacedor',
	'Las aventuras de Tom Sawyer',
	'Las aventuras de Huckleberry Finn',
	'Un yanqui en la corte del Rey Arturo',
	'Bartleby, el escribiente',
	'Billy Budd',
	'David Copperfield',
	'Cuento de Navidad',
	'Grandes esperanzas',
	'Beloved',
	'Jazz',
	'Paraíso',
	'La señora Dalloway',
	'Al faro',
	'Orlando',
	'La Divina Comedia',
	'Ulises',
	'Retrato del artista adolescente',
	'Dublineses',
	'La máquina del tiempo',
	'La guerra de los mundos',
	'El hombre invisible',
	'En busca del tiempo perdido',
	'A la sombra de las muchachas en flor',
	'El mundo de Guermantes',
	'Hojas de hierba',
	'Canto a mí mismo',
	'La llamada de lo salvaje',
	'El lobo de mar',
	'Shirley',
	'Villette',
	'Cumbres borrascosas',
	'Agnes Grey',
	'La inquilina de Wildfell Hall',
	'Estudio en escarlata',
	'El signo de los cuatro',
	'Frankenstein',
	'Mathilda',
	'El último hombre',
	'Los crímenes de la calle Morgue',
	'El gato negro',
	'El corazón delator',
	'La isla del tesoro',
	'El extraño caso del Dr. Jekyll y Mr. Hyde',
	'Secuestrado',
	'Middlemarch',
	'Adam Bede',
	'Cándido'
)
UNION ALL
-- Libros de No Ficción
SELECT ISBN, 2 FROM [Libro].[Libros] WHERE titulo IN (
	'Cartas',
	'Naturaleza',
	'Poemas',
	'Diario',
	'Cartas filosóficas',
	'Tratado sobre la tolerancia'
)
UNION ALL
-- Libros de Ciencia Ficción
SELECT ISBN, 3 FROM [Libro].[Libros] WHERE titulo IN (
    '1984',
	'Rebelión en la granja',
	'Homenaje a Cataluña',
	'Un mundo feliz',
	'Las puertas de la percepción',
	'Islandia',
	'Ulises'
)
UNION ALL
-- Libros de Misterio
SELECT ISBN, 4 FROM [Libro].[Libros] WHERE titulo IN (
    'Asesinato en el Orient Express',
    'Diez negritos',
    'El misterio de la guía de ferrocarriles',
    'La dama del perrito',
    'Los crímenes de la calle Morgue',
    'El gato negro',
    'El corazón delator'
)
UNION ALL
-- Libros de Terror
SELECT ISBN, 5 FROM [Libro].[Libros] WHERE titulo IN (
    'It',
	'El Resplandor',
	'Cementerio de animales',
	'Frankenstein',
	'Mathilda',
	'El último hombre'
)
UNION ALL
-- Libros de Fantasía
SELECT ISBN, 6 FROM [Libro].[Libros] WHERE titulo IN (
    'Harry Potter y la Piedra Filosofal',
	'Harry Potter y la Cámara Secreta',
	'Harry Potter y el Prisionero de Azkaban',
	'El hobbit',
	'El Señor de los Anillos: La Comunidad del Anillo',
	'El Señor de los Anillos: Las dos torres',
	'Las crónicas de Narnia',
	'Crónicas del Asesino de Reyes',
	'La historia interminable'
)
UNION ALL
-- Libros de Biografía
/*
SELECT ISBN, 7 FROM [Libro].[Libros] WHERE titulo IN (
    
)
UNION ALL

-- Libros de Historia
SELECT ISBN, 8 FROM [Libro].[Libros] WHERE titulo IN (
    -- Agrega libros de Historia aquí si es necesario
)
UNION ALL
*/
-- Libros de Arte
SELECT ISBN, 9 FROM [Libro].[Libros] WHERE titulo IN (
    'Paraíso'
)
UNION ALL
/*
-- Libros de Autoayuda
SELECT ISBN, 10 FROM [Libro].[Libros] WHERE titulo IN (
    -- Agrega libros de Autoayuda aquí si es necesario
)
UNION ALL
*/
-- Libros de Ciencia
SELECT ISBN, 11 FROM [Libro].[Libros] WHERE titulo IN (
    'Islandia'
)
UNION ALL
-- Libros de Poesía
SELECT ISBN, 12 FROM [Libro].[Libros] WHERE titulo IN (
    'Poemas',
	'La Divina Comedia',
	'Convivio',
	'La vida nueva',
	'Retrato del artista adolescente',
	'Dublineses',
	'Canto a mí mismo',
	'Poemas',
	'Aves de América',
	'Hojas de hierba',
	'La llamada de lo salvaje',
	'La estepa',
	'El jardín de los cerezos',
	'Poemas'
)
UNION ALL
-- Libros de Drama
SELECT ISBN, 13 FROM [Libro].[Libros] WHERE titulo IN (
    'Otelo',
	'Romeo y Julieta',
	'Hamlet',
	'Macbeth',
	'La estepa',
	'El jardín de los cerezos'
)
UNION ALL
-- Libros de Ensayo
SELECT ISBN, 14 FROM [Libro].[Libros] WHERE titulo IN (
    'La república',
	'Fedro',
	'Simposio',
	'Así habló Zaratustra',
	'La genealogía de la moral',
	'Más allá del bien y del mal',
	'Tratado sobre la tolerancia'
)
UNION ALL
-- Libros Infantiles
SELECT ISBN, 15 FROM [Libro].[Libros] WHERE titulo IN (
    'Las aventuras de Tom Sawyer',
	'Las aventuras de Huckleberry Finn',
	'Un yanqui en la corte del Rey Arturo',
	'El hobbit',
	'El Señor de los Anillos: La Comunidad del Anillo',
	'El Señor de los Anillos: Las dos torres',
	'Las crónicas de Narnia',
	'La historia interminable'
);
go

-- Inserción de estados en la tabla [Libro].[Estado]
INSERT INTO [Libro].[Estado] (nombre_estado)
VALUES 
    ('Disponible'),
    ('Prestado'),
    ('En reparación'),
    ('Perdido'),
    ('En espera de reparación'),
    ('En proceso de adquisición'),
	('Devuelto'),
	('Atrasado'),
	('Dañado');
go


INSERT INTO [Libro].[Ejemplares] (ISBN, estanteria_id, estado_id)
VALUES 
    ( 1 , 1 , 1 ), ( 1 , 1 , 1 ), ( 1 , 1 , 1 ), ( 1 , 1 , 1 ), ( 1 , 1 , 1 ), ( 1 , 1 , 1 ), ( 1 , 1 , 2 ), ( 1 , 1 , 2 ), ( 1 , 1 , 4 ), 
	( 2 , 1 , 1 ), ( 2 , 1 , 1 ), ( 2 , 1 , 1 ), ( 2 , 1 , 1 ), ( 2 , 1 , 1 ), ( 2 , 1 , 1 ), ( 2 , 1 , 2 ), ( 2 , 1 , 2 ), ( 2 , 1 , 4 ), 
	( 3 , 1 , 1 ), ( 3 , 1 , 1 ), ( 3 , 1 , 1 ), ( 3 , 1 , 1 ), ( 3 , 1 , 1 ), ( 3 , 1 , 1 ), ( 3 , 1 , 2 ), ( 3 , 1 , 2 ), ( 3 , 1 , 6 ), ( 3 , 1 , 6 ), ( 3 , 1 , 4 ), ( 3 , 1 , 5 ), 
	( 4 , 1 , 1 ), ( 4 , 1 , 1 ), ( 4 , 1 , 1 ), ( 4 , 1 , 1 ), ( 4 , 1 , 1 ), ( 4 , 1 , 1 ), ( 4 , 1 , 2 ), ( 4 , 1 , 2 ), ( 4 , 1 , 6 ), 
	( 5 , 1 , 1 ), ( 5 , 1 , 1 ), ( 5 , 1 , 1 ), ( 5 , 1 , 1 ), ( 5 , 1 , 1 ), ( 5 , 1 , 1 ), ( 5 , 1 , 2 ), ( 5 , 1 , 2 ), ( 5 , 1 , 6 ), ( 5 , 1 , 3 ), ( 5 , 1 , 6 ), ( 5 , 1 , 4 ), 
	( 6 , 1 , 1 ), ( 6 , 1 , 1 ), ( 6 , 1 , 1 ), ( 6 , 1 , 1 ), ( 6 , 1 , 1 ), ( 6 , 1 , 1 ), ( 6 , 1 , 2 ), ( 6 , 1 , 2 ), ( 6 , 1 , 5 ), ( 6 , 1 , 3 ), 
	( 7 , 1 , 1 ), ( 7 , 1 , 1 ), ( 7 , 1 , 1 ), ( 7 , 1 , 1 ), ( 7 , 1 , 1 ), ( 7 , 1 , 1 ), ( 7 , 1 , 2 ), ( 7 , 1 , 2 ), ( 7 , 1 , 6 ), ( 7 , 1 , 6 ), ( 7 , 1 , 4 ), ( 7 , 1 , 6 ), ( 7 , 1 , 4 ), 
	( 8 , 1 , 1 ), ( 8 , 1 , 1 ), ( 8 , 1 , 1 ), ( 8 , 1 , 1 ), ( 8 , 1 , 1 ), ( 8 , 1 , 1 ), ( 8 , 1 , 2 ), ( 8 , 1 , 2 ), ( 8 , 1 , 3 ), ( 8 , 1 , 3 ), ( 8 , 1 , 3 ), ( 8 , 1 , 5 ), 
	( 9 , 1 , 1 ), ( 9 , 1 , 1 ), ( 9 , 1 , 1 ), ( 9 , 1 , 1 ), ( 9 , 1 , 1 ), ( 9 , 1 , 1 ), ( 9 , 1 , 2 ), ( 9 , 1 , 2 ), ( 9 , 1 , 3 ), ( 9 , 1 , 3 ), ( 9 , 1 , 6 ), 
	( 10 , 2 , 1 ), ( 10 , 2 , 1 ), ( 10 , 2 , 1 ), ( 10 , 2 , 1 ), ( 10 , 2 , 1 ), ( 10 , 2 , 1 ), ( 10 , 2 , 2 ), ( 10 , 2 , 2 ), ( 10 , 2 , 6 ), ( 10 , 2 , 4 ), ( 10 , 2 , 4 ), ( 10 , 2 , 6 ), 
	( 11 , 2 , 1 ), ( 11 , 2 , 1 ), ( 11 , 2 , 1 ), ( 11 , 2 , 1 ), ( 11 , 2 , 1 ), ( 11 , 2 , 1 ), ( 11 , 2 , 2 ), ( 11 , 2 , 2 ), ( 11 , 2 , 4 ), ( 11 , 2 , 6 ), ( 11 , 2 , 6 ), ( 11 , 2 , 5 ), ( 11 , 2 , 5 ), ( 11 , 2 , 5 ), 
	( 12 , 2 , 1 ), ( 12 , 2 , 1 ), ( 12 , 2 , 1 ), ( 12 , 2 , 1 ), ( 12 , 2 , 1 ), ( 12 , 2 , 1 ), ( 12 , 2 , 2 ), ( 12 , 2 , 2 ), ( 12 , 2 , 3 ), ( 12 , 2 , 3 ), ( 12 , 2 , 6 ), 
	( 13 , 2 , 1 ), ( 13 , 2 , 1 ), ( 13 , 2 , 1 ), ( 13 , 2 , 1 ), ( 13 , 2 , 1 ), ( 13 , 2 , 1 ), ( 13 , 2 , 2 ), ( 13 , 2 , 2 ), ( 13 , 2 , 3 ), 
	( 14 , 2 , 1 ), ( 14 , 2 , 1 ), ( 14 , 2 , 1 ), ( 14 , 2 , 1 ), ( 14 , 2 , 1 ), ( 14 , 2 , 1 ), ( 14 , 2 , 2 ), ( 14 , 2 , 2 ), ( 14 , 2 , 3 ), 
	( 15 , 2 , 1 ), ( 15 , 2 , 1 ), ( 15 , 2 , 1 ), ( 15 , 2 , 1 ), ( 15 , 2 , 1 ), ( 15 , 2 , 1 ), ( 15 , 2 , 2 ), ( 15 , 2 , 2 ), ( 15 , 2 , 6 ), ( 15 , 2 , 5 ), 
	( 16 , 2 , 1 ), ( 16 , 2 , 1 ), ( 16 , 2 , 1 ), ( 16 , 2 , 1 ), ( 16 , 2 , 1 ), ( 16 , 2 , 1 ), ( 16 , 2 , 2 ), ( 16 , 2 , 2 ), ( 16 , 2 , 3 ), ( 16 , 2 , 4 ), 
	( 17 , 2 , 1 ), ( 17 , 2 , 1 ), ( 17 , 2 , 1 ), ( 17 , 2 , 1 ), ( 17 , 2 , 1 ), ( 17 , 2 , 1 ), ( 17 , 2 , 2 ), ( 17 , 2 , 2 ), ( 17 , 2 , 5 ), ( 17 , 2 , 6 ), ( 17 , 2 , 3 ), 
	( 18 , 2 , 1 ), ( 18 , 2 , 1 ), ( 18 , 2 , 1 ), ( 18 , 2 , 1 ), ( 18 , 2 , 1 ), ( 18 , 2 , 1 ), ( 18 , 2 , 2 ), ( 18 , 2 , 2 ), ( 18 , 2 , 4 ), ( 18 , 2 , 5 ), 
	( 19 , 2 , 1 ), ( 19 , 2 , 1 ), ( 19 , 2 , 1 ), ( 19 , 2 , 1 ), ( 19 , 2 , 1 ), ( 19 , 2 , 1 ), ( 19 , 2 , 2 ), ( 19 , 2 , 2 ), ( 19 , 2 , 3 ), 
	( 20 , 3 , 1 ), ( 20 , 3 , 1 ), ( 20 , 3 , 1 ), ( 20 , 3 , 1 ), ( 20 , 3 , 1 ), ( 20 , 3 , 1 ), ( 20 , 3 , 2 ), ( 20 , 3 , 2 ), 
	( 21 , 3 , 1 ), ( 21 , 3 , 1 ), ( 21 , 3 , 1 ), ( 21 , 3 , 1 ), ( 21 , 3 , 1 ), ( 21 , 3 , 1 ), ( 21 , 3 , 2 ), ( 21 , 3 , 2 ), ( 21 , 3 , 6 ), ( 21 , 3 , 6 ), ( 21 , 3 , 5 ), ( 21 , 3 , 4 ), ( 21 , 3 , 6 ), 
	( 22 , 3 , 1 ), ( 22 , 3 , 1 ), ( 22 , 3 , 1 ), ( 22 , 3 , 1 ), ( 22 , 3 , 1 ), ( 22 , 3 , 1 ), ( 22 , 3 , 2 ), ( 22 , 3 , 2 ), 
	( 23 , 3 , 1 ), ( 23 , 3 , 1 ), ( 23 , 3 , 1 ), ( 23 , 3 , 1 ), ( 23 , 3 , 1 ), ( 23 , 3 , 1 ), ( 23 , 3 , 2 ), ( 23 , 3 , 2 ), ( 23 , 3 , 6 ), ( 23 , 3 , 6 ), ( 23 , 3 , 6 ), ( 23 , 3 , 6 ), 
	( 24 , 3 , 1 ), ( 24 , 3 , 1 ), ( 24 , 3 , 1 ), ( 24 , 3 , 1 ), ( 24 , 3 , 1 ), ( 24 , 3 , 1 ), ( 24 , 3 , 2 ), ( 24 , 3 , 2 ), ( 24 , 3 , 6 ), ( 24 , 3 , 6 ), ( 24 , 3 , 4 ), ( 24 , 3 , 4 ), ( 24 , 3 , 3 ), ( 24 , 3 , 3 ), 
	( 25 , 3 , 1 ), ( 25 , 3 , 1 ), ( 25 , 3 , 1 ), ( 25 , 3 , 1 ), ( 25 , 3 , 1 ), ( 25 , 3 , 1 ), ( 25 , 3 , 2 ), ( 25 , 3 , 2 ), 
	( 26 , 3 , 1 ), ( 26 , 3 , 1 ), ( 26 , 3 , 1 ), ( 26 , 3 , 1 ), ( 26 , 3 , 1 ), ( 26 , 3 , 1 ), ( 26 , 3 , 2 ), ( 26 , 3 , 2 ), ( 26 , 3 , 5 ), 
	( 27 , 3 , 1 ), ( 27 , 3 , 1 ), ( 27 , 3 , 1 ), ( 27 , 3 , 1 ), ( 27 , 3 , 1 ), ( 27 , 3 , 1 ), ( 27 , 3 , 2 ), ( 27 , 3 , 2 ), ( 27 , 3 , 3 ), ( 27 , 3 , 5 ), ( 27 , 3 , 6 ), 
	( 28 , 3 , 1 ), ( 28 , 3 , 1 ), ( 28 , 3 , 1 ), ( 28 , 3 , 1 ), ( 28 , 3 , 1 ), ( 28 , 3 , 1 ), ( 28 , 3 , 2 ), ( 28 , 3 , 2 ), 
	( 29 , 4 , 1 ), ( 29 , 4 , 1 ), ( 29 , 4 , 1 ), ( 29 , 4 , 1 ), ( 29 , 4 , 1 ), ( 29 , 4 , 1 ), ( 29 , 4 , 2 ), ( 29 , 4 , 2 ), ( 29 , 4 , 6 ), ( 29 , 4 , 4 ), ( 29 , 4 , 6 ), ( 29 , 4 , 3 ), ( 29 , 4 , 3 ), ( 29 , 4 , 5 ), 
	( 30 , 4 , 1 ), ( 30 , 4 , 1 ), ( 30 , 4 , 1 ), ( 30 , 4 , 1 ), ( 30 , 4 , 1 ), ( 30 , 4 , 1 ), ( 30 , 4 , 2 ), ( 30 , 4 , 2 ), ( 30 , 4 , 4 ), ( 30 , 4 , 3 ), ( 30 , 4 , 6 ), 
	( 31 , 4 , 1 ), ( 31 , 4 , 1 ), ( 31 , 4 , 1 ), ( 31 , 4 , 1 ), ( 31 , 4 , 1 ), ( 31 , 4 , 1 ), ( 31 , 4 , 2 ), ( 31 , 4 , 2 ), ( 31 , 4 , 5 ), ( 31 , 4 , 6 ), ( 31 , 4 , 4 ), ( 31 , 4 , 6 ), ( 31 , 4 , 4 ), 
	( 32 , 4 , 1 ), ( 32 , 4 , 1 ), ( 32 , 4 , 1 ), ( 32 , 4 , 1 ), ( 32 , 4 , 1 ), ( 32 , 4 , 1 ), ( 32 , 4 , 2 ), ( 32 , 4 , 2 ), ( 32 , 4 , 3 ), ( 32 , 4 , 5 ), ( 32 , 4 , 4 ), ( 32 , 4 , 6 ), ( 32 , 4 , 5 ), 
	( 33 , 4 , 1 ), ( 33 , 4 , 1 ), ( 33 , 4 , 1 ), ( 33 , 4 , 1 ), ( 33 , 4 , 1 ), ( 33 , 4 , 1 ), ( 33 , 4 , 2 ), ( 33 , 4 , 2 ), ( 33 , 4 , 6 ), ( 33 , 4 , 4 ), ( 33 , 4 , 6 ), 
	( 34 , 4 , 1 ), ( 34 , 4 , 1 ), ( 34 , 4 , 1 ), ( 34 , 4 , 1 ), ( 34 , 4 , 1 ), ( 34 , 4 , 1 ), ( 34 , 4 , 2 ), ( 34 , 4 , 2 ), ( 34 , 4 , 5 ), ( 34 , 4 , 4 ), ( 34 , 4 , 5 ), ( 34 , 4 , 4 ), 
	( 35 , 4 , 1 ), ( 35 , 4 , 1 ), ( 35 , 4 , 1 ), ( 35 , 4 , 1 ), ( 35 , 4 , 1 ), ( 35 , 4 , 1 ), ( 35 , 4 , 2 ), ( 35 , 4 , 2 ), ( 35 , 4 , 3 ), 
	( 36 , 4 , 1 ), ( 36 , 4 , 1 ), ( 36 , 4 , 1 ), ( 36 , 4 , 1 ), ( 36 , 4 , 1 ), ( 36 , 4 , 1 ), ( 36 , 4 , 2 ), ( 36 , 4 , 2 ), ( 36 , 4 , 6 ), ( 36 , 4 , 3 ), ( 36 , 4 , 3 ), ( 36 , 4 , 4 ), 
	( 37 , 4 , 1 ), ( 37 , 4 , 1 ), ( 37 , 4 , 1 ), ( 37 , 4 , 1 ), ( 37 , 4 , 1 ), ( 37 , 4 , 1 ), ( 37 , 4 , 2 ), ( 37 , 4 , 2 ), ( 37 , 4 , 3 ), ( 37 , 4 , 6 ), ( 37 , 4 , 6 ), ( 37 , 4 , 3 ), 
	( 38 , 5 , 1 ), ( 38 , 5 , 1 ), ( 38 , 5 , 1 ), ( 38 , 5 , 1 ), ( 38 , 5 , 1 ), ( 38 , 5 , 1 ), ( 38 , 5 , 2 ), ( 38 , 5 , 2 ), ( 38 , 5 , 6 ), ( 38 , 5 , 6 ), ( 38 , 5 , 5 ), 
	( 39 , 5 , 1 ), ( 39 , 5 , 1 ), ( 39 , 5 , 1 ), ( 39 , 5 , 1 ), ( 39 , 5 , 1 ), ( 39 , 5 , 1 ), ( 39 , 5 , 2 ), ( 39 , 5 , 2 ), 
	( 40 , 5 , 1 ), ( 40 , 5 , 1 ), ( 40 , 5 , 1 ), ( 40 , 5 , 1 ), ( 40 , 5 , 1 ), ( 40 , 5 , 1 ), ( 40 , 5 , 2 ), ( 40 , 5 , 2 ), ( 40 , 5 , 6 ), ( 40 , 5 , 6 ), ( 40 , 5 , 4 ), ( 40 , 5 , 5 ), 
	( 41 , 5 , 1 ), ( 41 , 5 , 1 ), ( 41 , 5 , 1 ), ( 41 , 5 , 1 ), ( 41 , 5 , 1 ), ( 41 , 5 , 1 ), ( 41 , 5 , 2 ), ( 41 , 5 , 2 ), ( 41 , 5 , 5 ), ( 41 , 5 , 6 ), ( 41 , 5 , 6 ), 
	( 42 , 5 , 1 ), ( 42 , 5 , 1 ), ( 42 , 5 , 1 ), ( 42 , 5 , 1 ), ( 42 , 5 , 1 ), ( 42 , 5 , 1 ), ( 42 , 5 , 2 ), ( 42 , 5 , 2 ), 
	( 43 , 5 , 1 ), ( 43 , 5 , 1 ), ( 43 , 5 , 1 ), ( 43 , 5 , 1 ), ( 43 , 5 , 1 ), ( 43 , 5 , 1 ), ( 43 , 5 , 2 ), ( 43 , 5 , 2 ), ( 43 , 5 , 4 ), ( 43 , 5 , 3 ), 
	( 44 , 5 , 1 ), ( 44 , 5 , 1 ), ( 44 , 5 , 1 ), ( 44 , 5 , 1 ), ( 44 , 5 , 1 ), ( 44 , 5 , 1 ), ( 44 , 5 , 2 ), ( 44 , 5 , 2 ), ( 44 , 5 , 4 ), 
	( 45 , 5 , 1 ), ( 45 , 5 , 1 ), ( 45 , 5 , 1 ), ( 45 , 5 , 1 ), ( 45 , 5 , 1 ), ( 45 , 5 , 1 ), ( 45 , 5 , 2 ), ( 45 , 5 , 2 ), ( 45 , 5 , 3 ), ( 45 , 5 , 4 ), ( 45 , 5 , 3 ), 
	( 46 , 5 , 1 ), ( 46 , 5 , 1 ), ( 46 , 5 , 1 ), ( 46 , 5 , 1 ), ( 46 , 5 , 1 ), ( 46 , 5 , 1 ), ( 46 , 5 , 2 ), ( 46 , 5 , 2 ), ( 46 , 5 , 5 ), ( 46 , 5 , 5 ), ( 46 , 5 , 4 ), ( 46 , 5 , 4 ), ( 46 , 5 , 6 ), ( 46 , 5 , 5 ), 
	( 47 , 5 , 1 ), ( 47 , 5 , 1 ), ( 47 , 5 , 1 ), ( 47 , 5 , 1 ), ( 47 , 5 , 1 ), ( 47 , 5 , 1 ), ( 47 , 5 , 2 ), ( 47 , 5 , 2 ), ( 47 , 5 , 4 ), ( 47 , 5 , 6 ), 
	( 48 , 6 , 1 ), ( 48 , 6 , 1 ), ( 48 , 6 , 1 ), ( 48 , 6 , 1 ), ( 48 , 6 , 1 ), ( 48 , 6 , 1 ), ( 48 , 6 , 2 ), ( 48 , 6 , 2 ), ( 48 , 6 , 3 ), ( 48 , 6 , 6 ), ( 48 , 6 , 5 ), ( 48 , 6 , 4 ), 
	( 49 , 6 , 1 ), ( 49 , 6 , 1 ), ( 49 , 6 , 1 ), ( 49 , 6 , 1 ), ( 49 , 6 , 1 ), ( 49 , 6 , 1 ), ( 49 , 6 , 2 ), ( 49 , 6 , 2 ), ( 49 , 6 , 6 ), ( 49 , 6 , 6 ), ( 49 , 6 , 5 ), ( 49 , 6 , 5 ), ( 49 , 6 , 5 ), ( 49 , 6 , 4 ), 
	( 50 , 6 , 1 ), ( 50 , 6 , 1 ), ( 50 , 6 , 1 ), ( 50 , 6 , 1 ), ( 50 , 6 , 1 ), ( 50 , 6 , 1 ), ( 50 , 6 , 2 ), ( 50 , 6 , 2 ), ( 50 , 6 , 6 ), ( 50 , 6 , 6 ), ( 50 , 6 , 3 ), 
	( 51 , 6 , 1 ), ( 51 , 6 , 1 ), ( 51 , 6 , 1 ), ( 51 , 6 , 1 ), ( 51 , 6 , 1 ), ( 51 , 6 , 1 ), ( 51 , 6 , 2 ), ( 51 , 6 , 2 ), ( 51 , 6 , 6 ), 
	( 52 , 6 , 1 ), ( 52 , 6 , 1 ), ( 52 , 6 , 1 ), ( 52 , 6 , 1 ), ( 52 , 6 , 1 ), ( 52 , 6 , 1 ), ( 52 , 6 , 2 ), ( 52 , 6 , 2 ), ( 52 , 6 , 6 ), ( 52 , 6 , 3 ), ( 52 , 6 , 5 ), ( 52 , 6 , 6 ), ( 52 , 6 , 6 ), ( 52 , 6 , 4 ), 
	( 53 , 6 , 1 ), ( 53 , 6 , 1 ), ( 53 , 6 , 1 ), ( 53 , 6 , 1 ), ( 53 , 6 , 1 ), ( 53 , 6 , 1 ), ( 53 , 6 , 2 ), ( 53 , 6 , 2 ), 
	( 54 , 6 , 1 ), ( 54 , 6 , 1 ), ( 54 , 6 , 1 ), ( 54 , 6 , 1 ), ( 54 , 6 , 1 ), ( 54 , 6 , 1 ), ( 54 , 6 , 2 ), ( 54 , 6 , 2 ), ( 54 , 6 , 6 ), 
	( 55 , 6 , 1 ), ( 55 , 6 , 1 ), ( 55 , 6 , 1 ), ( 55 , 6 , 1 ), ( 55 , 6 , 1 ), ( 55 , 6 , 1 ), ( 55 , 6 , 2 ), ( 55 , 6 , 2 ), ( 55 , 6 , 3 ), ( 55 , 6 , 3 ), ( 55 , 6 , 6 ), ( 55 , 6 , 3 ), ( 55 , 6 , 5 ), 
	( 56 , 6 , 1 ), ( 56 , 6 , 1 ), ( 56 , 6 , 1 ), ( 56 , 6 , 1 ), ( 56 , 6 , 1 ), ( 56 , 6 , 1 ), ( 56 , 6 , 2 ), ( 56 , 6 , 2 ), ( 56 , 6 , 6 ), ( 56 , 6 , 6 ), ( 56 , 6 , 6 ), 
	( 57 , 7 , 1 ), ( 57 , 7 , 1 ), ( 57 , 7 , 1 ), ( 57 , 7 , 1 ), ( 57 , 7 , 1 ), ( 57 , 7 , 1 ), ( 57 , 7 , 2 ), ( 57 , 7 , 2 ), 
	( 58 , 7 , 1 ), ( 58 , 7 , 1 ), ( 58 , 7 , 1 ), ( 58 , 7 , 1 ), ( 58 , 7 , 1 ), ( 58 , 7 , 1 ), ( 58 , 7 , 2 ), ( 58 , 7 , 2 ), ( 58 , 7 , 6 ), ( 58 , 7 , 5 ), ( 58 , 7 , 4 ), 
	( 59 , 7 , 1 ), ( 59 , 7 , 1 ), ( 59 , 7 , 1 ), ( 59 , 7 , 1 ), ( 59 , 7 , 1 ), ( 59 , 7 , 1 ), ( 59 , 7 , 2 ), ( 59 , 7 , 2 ), ( 59 , 7 , 4 ), ( 59 , 7 , 6 )
GO

INSERT INTO [Libro].[Ejemplares] (ISBN, estanteria_id, estado_id)
VALUES 	
	( 60 , 7 , 1 ), ( 60 , 7 , 1 ), ( 60 , 7 , 1 ), ( 60 , 7 , 1 ), ( 60 , 7 , 1 ), ( 60 , 7 , 1 ), ( 60 , 7 , 2 ), ( 60 , 7 , 2 ), ( 60 , 7 , 4 ), 
	( 61 , 7 , 1 ), ( 61 , 7 , 1 ), ( 61 , 7 , 1 ), ( 61 , 7 , 1 ), ( 61 , 7 , 1 ), ( 61 , 7 , 1 ), ( 61 , 7 , 2 ), ( 61 , 7 , 2 ), ( 61 , 7 , 6 ), 
	( 62 , 7 , 1 ), ( 62 , 7 , 1 ), ( 62 , 7 , 1 ), ( 62 , 7 , 1 ), ( 62 , 7 , 1 ), ( 62 , 7 , 1 ), ( 62 , 7 , 2 ), ( 62 , 7 , 2 ), ( 62 , 7 , 4 ), ( 62 , 7 , 4 ), ( 62 , 7 , 4 ), ( 62 , 7 , 6 ), ( 62 , 7 , 3 ), 
	( 63 , 7 , 1 ), ( 63 , 7 , 1 ), ( 63 , 7 , 1 ), ( 63 , 7 , 1 ), ( 63 , 7 , 1 ), ( 63 , 7 , 1 ), ( 63 , 7 , 2 ), ( 63 , 7 , 2 ), ( 63 , 7 , 6 ), ( 63 , 7 , 3 ), 
	( 64 , 7 , 1 ), ( 64 , 7 , 1 ), ( 64 , 7 , 1 ), ( 64 , 7 , 1 ), ( 64 , 7 , 1 ), ( 64 , 7 , 1 ), ( 64 , 7 , 2 ), ( 64 , 7 , 2 ), ( 64 , 7 , 6 ), ( 64 , 7 , 4 ), ( 64 , 7 , 6 ), ( 64 , 7 , 5 ), ( 64 , 7 , 4 ), 
	( 65 , 7 , 1 ), ( 65 , 7 , 1 ), ( 65 , 7 , 1 ), ( 65 , 7 , 1 ), ( 65 , 7 , 1 ), ( 65 , 7 , 1 ), ( 65 , 7 , 2 ), ( 65 , 7 , 2 ), ( 65 , 7 , 6 ), ( 65 , 7 , 4 ), ( 65 , 7 , 5 ), ( 65 , 7 , 3 ), ( 65 , 7 , 6 ), 
	( 66 , 7 , 1 ), ( 66 , 7 , 1 ), ( 66 , 7 , 1 ), ( 66 , 7 , 1 ), ( 66 , 7 , 1 ), ( 66 , 7 , 1 ), ( 66 , 7 , 2 ), ( 66 , 7 , 2 ), ( 66 , 7 , 4 ), ( 66 , 7 , 5 ), 
	( 67 , 8 , 1 ), ( 67 , 8 , 1 ), ( 67 , 8 , 1 ), ( 67 , 8 , 1 ), ( 67 , 8 , 1 ), ( 67 , 8 , 1 ), ( 67 , 8 , 2 ), ( 67 , 8 , 2 ), 
	( 68 , 8 , 1 ), ( 68 , 8 , 1 ), ( 68 , 8 , 1 ), ( 68 , 8 , 1 ), ( 68 , 8 , 1 ), ( 68 , 8 , 1 ), ( 68 , 8 , 2 ), ( 68 , 8 , 2 ), ( 68 , 8 , 3 ), ( 68 , 8 , 6 ), ( 68 , 8 , 6 ), 
	( 69 , 8 , 1 ), ( 69 , 8 , 1 ), ( 69 , 8 , 1 ), ( 69 , 8 , 1 ), ( 69 , 8 , 1 ), ( 69 , 8 , 1 ), ( 69 , 8 , 2 ), ( 69 , 8 , 2 ), ( 69 , 8 , 6 ), 
	( 70 , 8 , 1 ), ( 70 , 8 , 1 ), ( 70 , 8 , 1 ), ( 70 , 8 , 1 ), ( 70 , 8 , 1 ), ( 70 , 8 , 1 ), ( 70 , 8 , 2 ), ( 70 , 8 , 2 ), ( 70 , 8 , 4 ), ( 70 , 8 , 6 ), ( 70 , 8 , 6 ), 
	( 71 , 8 , 1 ), ( 71 , 8 , 1 ), ( 71 , 8 , 1 ), ( 71 , 8 , 1 ), ( 71 , 8 , 1 ), ( 71 , 8 , 1 ), ( 71 , 8 , 2 ), ( 71 , 8 , 2 ), ( 71 , 8 , 6 ), ( 71 , 8 , 6 ), ( 71 , 8 , 5 ), 
	( 72 , 8 , 1 ), ( 72 , 8 , 1 ), ( 72 , 8 , 1 ), ( 72 , 8 , 1 ), ( 72 , 8 , 1 ), ( 72 , 8 , 1 ), ( 72 , 8 , 2 ), ( 72 , 8 , 2 ), ( 72 , 8 , 4 ), ( 72 , 8 , 3 ), ( 72 , 8 , 4 ), ( 72 , 8 , 6 ), 
	( 73 , 8 , 1 ), ( 73 , 8 , 1 ), ( 73 , 8 , 1 ), ( 73 , 8 , 1 ), ( 73 , 8 , 1 ), ( 73 , 8 , 1 ), ( 73 , 8 , 2 ), ( 73 , 8 , 2 ), ( 73 , 8 , 3 ), 
	( 74 , 8 , 1 ), ( 74 , 8 , 1 ), ( 74 , 8 , 1 ), ( 74 , 8 , 1 ), ( 74 , 8 , 1 ), ( 74 , 8 , 1 ), ( 74 , 8 , 2 ), ( 74 , 8 , 2 ), ( 74 , 8 , 5 ), ( 74 , 8 , 4 ), ( 74 , 8 , 4 ), 
	( 75 , 8 , 1 ), ( 75 , 8 , 1 ), ( 75 , 8 , 1 ), ( 75 , 8 , 1 ), ( 75 , 8 , 1 ), ( 75 , 8 , 1 ), ( 75 , 8 , 2 ), ( 75 , 8 , 2 ), ( 75 , 8 , 5 ), ( 75 , 8 , 5 ), ( 75 , 8 , 5 ), ( 75 , 8 , 3 ), 
	( 76 , 9 , 1 ), ( 76 , 9 , 1 ), ( 76 , 9 , 1 ), ( 76 , 9 , 1 ), ( 76 , 9 , 1 ), ( 76 , 9 , 1 ), ( 76 , 9 , 2 ), ( 76 , 9 , 2 ), ( 76 , 9 , 5 ), ( 76 , 9 , 3 ), ( 76 , 9 , 3 ), ( 76 , 9 , 4 ), ( 76 , 9 , 6 ), ( 76 , 9 , 3 ), 
	( 77 , 9 , 1 ), ( 77 , 9 , 1 ), ( 77 , 9 , 1 ), ( 77 , 9 , 1 ), ( 77 , 9 , 1 ), ( 77 , 9 , 1 ), ( 77 , 9 , 2 ), ( 77 , 9 , 2 ), ( 77 , 9 , 6 ), ( 77 , 9 , 3 ), ( 77 , 9 , 5 ), ( 77 , 9 , 3 ), 
	( 78 , 9 , 1 ), ( 78 , 9 , 1 ), ( 78 , 9 , 1 ), ( 78 , 9 , 1 ), ( 78 , 9 , 1 ), ( 78 , 9 , 1 ), ( 78 , 9 , 2 ), ( 78 , 9 , 2 ), ( 78 , 9 , 4 ), 
	( 79 , 9 , 1 ), ( 79 , 9 , 1 ), ( 79 , 9 , 1 ), ( 79 , 9 , 1 ), ( 79 , 9 , 1 ), ( 79 , 9 , 1 ), ( 79 , 9 , 2 ), ( 79 , 9 , 2 ), ( 79 , 9 , 6 ), ( 79 , 9 , 5 ), ( 79 , 9 , 4 ), ( 79 , 9 , 5 ), ( 79 , 9 , 6 ), ( 79 , 9 , 6 ), 
	( 80 , 9 , 1 ), ( 80 , 9 , 1 ), ( 80 , 9 , 1 ), ( 80 , 9 , 1 ), ( 80 , 9 , 1 ), ( 80 , 9 , 1 ), ( 80 , 9 , 2 ), ( 80 , 9 , 2 ), ( 80 , 9 , 4 ), ( 80 , 9 , 3 ), ( 80 , 9 , 4 ), ( 80 , 9 , 6 ), ( 80 , 9 , 6 ), ( 80 , 9 , 4 ), 
	( 81 , 9 , 1 ), ( 81 , 9 , 1 ), ( 81 , 9 , 1 ), ( 81 , 9 , 1 ), ( 81 , 9 , 1 ), ( 81 , 9 , 1 ), ( 81 , 9 , 2 ), ( 81 , 9 , 2 ), ( 81 , 9 , 3 ), ( 81 , 9 , 6 ), ( 81 , 9 , 6 ), ( 81 , 9 , 4 ), 
	( 82 , 9 , 1 ), ( 82 , 9 , 1 ), ( 82 , 9 , 1 ), ( 82 , 9 , 1 ), ( 82 , 9 , 1 ), ( 82 , 9 , 1 ), ( 82 , 9 , 2 ), ( 82 , 9 , 2 ), ( 82 , 9 , 6 ), ( 82 , 9 , 6 ), ( 82 , 9 , 3 ), ( 82 , 9 , 3 ), 
	( 83 , 9 , 1 ), ( 83 , 9 , 1 ), ( 83 , 9 , 1 ), ( 83 , 9 , 1 ), ( 83 , 9 , 1 ), ( 83 , 9 , 1 ), ( 83 , 9 , 2 ), ( 83 , 9 , 2 ), ( 83 , 9 , 6 ), ( 83 , 9 , 5 ), ( 83 , 9 , 4 ), ( 83 , 9 , 6 ), ( 83 , 9 , 3 ), ( 83 , 9 , 6 ), 
	( 84 , 10 , 1 ), ( 84 , 10 , 1 ), ( 84 , 10 , 1 ), ( 84 , 10 , 1 ), ( 84 , 10 , 1 ), ( 84 , 10 , 1 ), ( 84 , 10 , 2 ), ( 84 , 10 , 2 ), ( 84 , 10 , 6 ), ( 84 , 10 , 5 ), ( 84 , 10 , 4 ), ( 84 , 10 , 4 ), ( 84 , 10 , 6 ), ( 84 , 10 , 4 ), 
	( 85 , 10 , 1 ), ( 85 , 10 , 1 ), ( 85 , 10 , 1 ), ( 85 , 10 , 1 ), ( 85 , 10 , 1 ), ( 85 , 10 , 1 ), ( 85 , 10 , 2 ), ( 85 , 10 , 2 ), ( 85 , 10 , 5 ), 
	( 86 , 10 , 1 ), ( 86 , 10 , 1 ), ( 86 , 10 , 1 ), ( 86 , 10 , 1 ), ( 86 , 10 , 1 ), ( 86 , 10 , 1 ), ( 86 , 10 , 2 ), ( 86 , 10 , 2 ), ( 86 , 10 , 3 ), ( 86 , 10 , 5 ), ( 86 , 10 , 3 ), ( 86 , 10 , 4 ), ( 86 , 10 , 4 ), 
	( 87 , 10 , 1 ), ( 87 , 10 , 1 ), ( 87 , 10 , 1 ), ( 87 , 10 , 1 ), ( 87 , 10 , 1 ), ( 87 , 10 , 1 ), ( 87 , 10 , 2 ), ( 87 , 10 , 2 ), ( 87 , 10 , 6 ), ( 87 , 10 , 3 ), ( 87 , 10 , 3 ), ( 87 , 10 , 3 ), 
	( 88 , 10 , 1 ), ( 88 , 10 , 1 ), ( 88 , 10 , 1 ), ( 88 , 10 , 1 ), ( 88 , 10 , 1 ), ( 88 , 10 , 1 ), ( 88 , 10 , 2 ), ( 88 , 10 , 2 ), ( 88 , 10 , 5 ), ( 88 , 10 , 4 ), ( 88 , 10 , 6 ), ( 88 , 10 , 4 ), ( 88 , 10 , 5 ), ( 88 , 10 , 6 ), 
	( 89 , 10 , 1 ), ( 89 , 10 , 1 ), ( 89 , 10 , 1 ), ( 89 , 10 , 1 ), ( 89 , 10 , 1 ), ( 89 , 10 , 1 ), ( 89 , 10 , 2 ), ( 89 , 10 , 2 ), ( 89 , 10 , 3 ), ( 89 , 10 , 3 ), ( 89 , 10 , 6 ), ( 89 , 10 , 5 ), 
	( 90 , 10 , 1 ), ( 90 , 10 , 1 ), ( 90 , 10 , 1 ), ( 90 , 10 , 1 ), ( 90 , 10 , 1 ), ( 90 , 10 , 1 ), ( 90 , 10 , 2 ), ( 90 , 10 , 2 ), ( 90 , 10 , 6 ), ( 90 , 10 , 4 ), 
	( 91 , 10 , 1 ), ( 91 , 10 , 1 ), ( 91 , 10 , 1 ), ( 91 , 10 , 1 ), ( 91 , 10 , 1 ), ( 91 , 10 , 1 ), ( 91 , 10 , 2 ), ( 91 , 10 , 2 ), ( 91 , 10 , 3 ), ( 91 , 10 , 4 ), ( 91 , 10 , 4 ), ( 91 , 10 , 3 ), ( 91 , 10 , 4 ), 
	( 92 , 10 , 1 ), ( 92 , 10 , 1 ), ( 92 , 10 , 1 ), ( 92 , 10 , 1 ), ( 92 , 10 , 1 ), ( 92 , 10 , 1 ), ( 92 , 10 , 2 ), ( 92 , 10 , 2 ), ( 92 , 10 , 3 ), ( 92 , 10 , 6 ), 
	( 93 , 11 , 1 ), ( 93 , 11 , 1 ), ( 93 , 11 , 1 ), ( 93 , 11 , 1 ), ( 93 , 11 , 1 ), ( 93 , 11 , 1 ), ( 93 , 11 , 2 ), ( 93 , 11 , 2 ), ( 93 , 11 , 6 ), ( 93 , 11 , 4 ), 
	( 94 , 11 , 1 ), ( 94 , 11 , 1 ), ( 94 , 11 , 1 ), ( 94 , 11 , 1 ), ( 94 , 11 , 1 ), ( 94 , 11 , 1 ), ( 94 , 11 , 2 ), ( 94 , 11 , 2 ), 
	( 95 , 11 , 1 ), ( 95 , 11 , 1 ), ( 95 , 11 , 1 ), ( 95 , 11 , 1 ), ( 95 , 11 , 1 ), ( 95 , 11 , 1 ), ( 95 , 11 , 2 ), ( 95 , 11 , 2 ), ( 95 , 11 , 3 ), ( 95 , 11 , 3 ), ( 95 , 11 , 6 ), ( 95 , 11 , 4 ), ( 95 , 11 , 3 ), ( 95 , 11 , 5 ), 
	( 96 , 11 , 1 ), ( 96 , 11 , 1 ), ( 96 , 11 , 1 ), ( 96 , 11 , 1 ), ( 96 , 11 , 1 ), ( 96 , 11 , 1 ), ( 96 , 11 , 2 ), ( 96 , 11 , 2 ), ( 96 , 11 , 6 ), ( 96 , 11 , 6 ), ( 96 , 11 , 3 ), 
	( 97 , 11 , 1 ), ( 97 , 11 , 1 ), ( 97 , 11 , 1 ), ( 97 , 11 , 1 ), ( 97 , 11 , 1 ), ( 97 , 11 , 1 ), ( 97 , 11 , 2 ), ( 97 , 11 , 2 ), ( 97 , 11 , 6 ), ( 97 , 11 , 6 ), ( 97 , 11 , 6 ), ( 97 , 11 , 3 ), ( 97 , 11 , 6 ), 
	( 98 , 11 , 1 ), ( 98 , 11 , 1 ), ( 98 , 11 , 1 ), ( 98 , 11 , 1 ), ( 98 , 11 , 1 ), ( 98 , 11 , 1 ), ( 98 , 11 , 2 ), ( 98 , 11 , 2 ), ( 98 , 11 , 5 ), ( 98 , 11 , 6 ), ( 98 , 11 , 4 ), ( 98 , 11 , 3 ), ( 98 , 11 , 6 ), 
	( 99 , 11 , 1 ), ( 99 , 11 , 1 ), ( 99 , 11 , 1 ), ( 99 , 11 , 1 ), ( 99 , 11 , 1 ), ( 99 , 11 , 1 ), ( 99 , 11 , 2 ), ( 99 , 11 , 2 ), ( 99 , 11 , 5 ), ( 99 , 11 , 3 ), ( 99 , 11 , 3 ), ( 99 , 11 , 4 ), ( 99 , 11 , 5 ), ( 99 , 11 , 6 ), 
	( 100 , 11 , 1 ), ( 100 , 11 , 1 ), ( 100 , 11 , 1 ), ( 100 , 11 , 1 ), ( 100 , 11 , 1 ), ( 100 , 11 , 1 ), ( 100 , 11 , 2 ), ( 100 , 11 , 2 ), 
	( 101 , 11 , 1 ), ( 101 , 11 , 1 ), ( 101 , 11 , 1 ), ( 101 , 11 , 1 ), ( 101 , 11 , 1 ), ( 101 , 11 , 1 ), ( 101 , 11 , 2 ), ( 101 , 11 , 2 ), 
	( 102 , 12 , 1 ), ( 102 , 12 , 1 ), ( 102 , 12 , 1 ), ( 102 , 12 , 1 ), ( 102 , 12 , 1 ), ( 102 , 12 , 1 ), ( 102 , 12 , 2 ), ( 102 , 12 , 2 ), ( 102 , 12 , 4 ), ( 102 , 12 , 3 ), ( 102 , 12 , 6 ), 
	( 103 , 12 , 1 ), ( 103 , 12 , 1 ), ( 103 , 12 , 1 ), ( 103 , 12 , 1 ), ( 103 , 12 , 1 ), ( 103 , 12 , 1 ), ( 103 , 12 , 2 ), ( 103 , 12 , 2 ), ( 103 , 12 , 5 ), ( 103 , 12 , 5 ), 
	( 104 , 12 , 1 ), ( 104 , 12 , 1 ), ( 104 , 12 , 1 ), ( 104 , 12 , 1 ), ( 104 , 12 , 1 ), ( 104 , 12 , 1 ), ( 104 , 12 , 2 ), ( 104 , 12 , 2 ), ( 104 , 12 , 6 ), ( 104 , 12 , 6 ), ( 104 , 12 , 5 ), ( 104 , 12 , 3 ), ( 104 , 12 , 3 ), ( 104 , 12 , 6 ), 
	( 105 , 12 , 1 ), ( 105 , 12 , 1 ), ( 105 , 12 , 1 ), ( 105 , 12 , 1 ), ( 105 , 12 , 1 ), ( 105 , 12 , 1 ), ( 105 , 12 , 2 ), ( 105 , 12 , 2 ), ( 105 , 12 , 4 ), ( 105 , 12 , 5 ), ( 105 , 12 , 6 ), ( 105 , 12 , 6 ), ( 105 , 12 , 4 ), ( 105 , 12 , 6 ), 
	( 106 , 12 , 1 ), ( 106 , 12 , 1 ), ( 106 , 12 , 1 ), ( 106 , 12 , 1 ), ( 106 , 12 , 1 ), ( 106 , 12 , 1 ), ( 106 , 12 , 2 ), ( 106 , 12 , 2 ), 
	( 107 , 12 , 1 ), ( 107 , 12 , 1 ), ( 107 , 12 , 1 ), ( 107 , 12 , 1 ), ( 107 , 12 , 1 ), ( 107 , 12 , 1 ), ( 107 , 12 , 2 ), ( 107 , 12 , 2 ), 
	( 108 , 12 , 1 ), ( 108 , 12 , 1 ), ( 108 , 12 , 1 ), ( 108 , 12 , 1 ), ( 108 , 12 , 1 ), ( 108 , 12 , 1 ), ( 108 , 12 , 2 ), ( 108 , 12 , 2 ), ( 108 , 12 , 6 ), ( 108 , 12 , 6 ), ( 108 , 12 , 6 ), ( 108 , 12 , 3 ), 
	( 109 , 12 , 1 ), ( 109 , 12 , 1 ), ( 109 , 12 , 1 ), ( 109 , 12 , 1 ), ( 109 , 12 , 1 ), ( 109 , 12 , 1 ), ( 109 , 12 , 2 ), ( 109 , 12 , 2 ), ( 109 , 12 , 4 ), 
	( 110 , 12 , 1 ), ( 110 , 12 , 1 ), ( 110 , 12 , 1 ), ( 110 , 12 , 1 ), ( 110 , 12 , 1 ), ( 110 , 12 , 1 ), ( 110 , 12 , 2 ), ( 110 , 12 , 2 ), ( 110 , 12 , 6 ), ( 110 , 12 , 6 ), 
	( 111 , 12 , 1 ), ( 111 , 12 , 1 ), ( 111 , 12 , 1 ), ( 111 , 12 , 1 ), ( 111 , 12 , 1 ), ( 111 , 12 , 1 ), ( 111 , 12 , 2 ), ( 111 , 12 , 2 ), ( 111 , 12 , 4 ), ( 111 , 12 , 6 ), ( 111 , 12 , 6 ), ( 111 , 12 , 4 ), ( 111 , 12 , 3 ), 
	( 112 , 13 , 1 ), ( 112 , 13 , 1 ), ( 112 , 13 , 1 ), ( 112 , 13 , 1 ), ( 112 , 13 , 1 ), ( 112 , 13 , 1 ), ( 112 , 13 , 2 ), ( 112 , 13 , 2 ), ( 112 , 13 , 3 ), ( 112 , 13 , 3 ), ( 112 , 13 , 5 ), ( 112 , 13 , 5 ), ( 112 , 13 , 5 ), ( 112 , 13 , 3 ), 
	( 113 , 13 , 1 ), ( 113 , 13 , 1 ), ( 113 , 13 , 1 ), ( 113 , 13 , 1 ), ( 113 , 13 , 1 ), ( 113 , 13 , 1 ), ( 113 , 13 , 2 ), ( 113 , 13 , 2 ), ( 113 , 13 , 6 ), 
	( 114 , 13 , 1 ), ( 114 , 13 , 1 ), ( 114 , 13 , 1 ), ( 114 , 13 , 1 ), ( 114 , 13 , 1 ), ( 114 , 13 , 1 ), ( 114 , 13 , 2 ), ( 114 , 13 , 2 ), ( 114 , 13 , 6 ), ( 114 , 13 , 5 ), ( 114 , 13 , 5 ), ( 114 , 13 , 3 ), ( 114 , 13 , 6 ), 
	( 115 , 13 , 1 ), ( 115 , 13 , 1 ), ( 115 , 13 , 1 ), ( 115 , 13 , 1 ), ( 115 , 13 , 1 ), ( 115 , 13 , 1 ), ( 115 , 13 , 2 ), ( 115 , 13 , 2 ), ( 115 , 13 , 3 ), ( 115 , 13 , 6 ), ( 115 , 13 , 4 ), ( 115 , 13 , 5 ), ( 115 , 13 , 3 ), 
	( 116 , 13 , 1 ), ( 116 , 13 , 1 ), ( 116 , 13 , 1 ), ( 116 , 13 , 1 ), ( 116 , 13 , 1 ), ( 116 , 13 , 1 ), ( 116 , 13 , 2 ), ( 116 , 13 , 2 ), ( 116 , 13 , 6 ), ( 116 , 13 , 5 ), ( 116 , 13 , 4 ), ( 116 , 13 , 3 ), ( 116 , 13 , 6 ), ( 116 , 13 , 6 ), 
	( 117 , 13 , 1 ), ( 117 , 13 , 1 ), ( 117 , 13 , 1 ), ( 117 , 13 , 1 ), ( 117 , 13 , 1 ), ( 117 , 13 , 1 ), ( 117 , 13 , 2 ), ( 117 , 13 , 2 ), ( 117 , 13 , 5 ), ( 117 , 13 , 5 ), 
	( 118 , 13 , 1 ), ( 118 , 13 , 1 ), ( 118 , 13 , 1 ), ( 118 , 13 , 1 ), ( 118 , 13 , 1 ), ( 118 , 13 , 1 ), ( 118 , 13 , 2 ), ( 118 , 13 , 2 ), ( 118 , 13 , 3 ), ( 118 , 13 , 5 ), ( 118 , 13 , 6 ), ( 118 , 13 , 6 ), ( 118 , 13 , 6 ), 
	( 119 , 13 , 1 ), ( 119 , 13 , 1 ), ( 119 , 13 , 1 ), ( 119 , 13 , 1 ), ( 119 , 13 , 1 ), ( 119 , 13 , 1 ), ( 119 , 13 , 2 ), ( 119 , 13 , 2 ), 
	( 120 , 14 , 1 ), ( 120 , 14 , 1 ), ( 120 , 14 , 1 ), ( 120 , 14 , 1 ), ( 120 , 14 , 1 ), ( 120 , 14 , 1 ), ( 120 , 14 , 2 ), ( 120 , 14 , 2 ), ( 120 , 14 , 6 ), ( 120 , 14 , 6 ), ( 120 , 14 , 5 ), ( 120 , 14 , 5 ), ( 120 , 14 , 6 ), ( 120 , 14 , 4 ), 
	( 121 , 14 , 1 ), ( 121 , 14 , 1 ), ( 121 , 14 , 1 ), ( 121 , 14 , 1 ), ( 121 , 14 , 1 ), ( 121 , 14 , 1 ), ( 121 , 14 , 2 ), ( 121 , 14 , 2 ), ( 121 , 14 , 4 ), ( 121 , 14 , 5 ), ( 121 , 14 , 4 ), ( 121 , 14 , 5 ), 
	( 122 , 14 , 1 ), ( 122 , 14 , 1 ), ( 122 , 14 , 1 ), ( 122 , 14 , 1 ), ( 122 , 14 , 1 ), ( 122 , 14 , 1 ), ( 122 , 14 , 2 ), ( 122 , 14 , 2 ), ( 122 , 14 , 3 ), ( 122 , 14 , 3 ), ( 122 , 14 , 6 ), ( 122 , 14 , 5 ), ( 122 , 14 , 3 ), ( 122 , 14 , 3 ), 
	( 123 , 14 , 1 ), ( 123 , 14 , 1 ), ( 123 , 14 , 1 ), ( 123 , 14 , 1 ), ( 123 , 14 , 1 ), ( 123 , 14 , 1 ), ( 123 , 14 , 2 ), ( 123 , 14 , 2 ), ( 123 , 14 , 5 ), ( 123 , 14 , 6 ), ( 123 , 14 , 5 ), ( 123 , 14 , 6 ), ( 123 , 14 , 3 ), 
	( 124 , 14 , 1 ), ( 124 , 14 , 1 ), ( 124 , 14 , 1 ), ( 124 , 14 , 1 ), ( 124 , 14 , 1 ), ( 124 , 14 , 1 ), ( 124 , 14 , 2 ), ( 124 , 14 , 2 ), ( 124 , 14 , 4 ), ( 124 , 14 , 4 ), ( 124 , 14 , 3 ), 
	( 125 , 14 , 1 ), ( 125 , 14 , 1 ), ( 125 , 14 , 1 ), ( 125 , 14 , 1 ), ( 125 , 14 , 1 ), ( 125 , 14 , 1 ), ( 125 , 14 , 2 ), ( 125 , 14 , 2 ), ( 125 , 14 , 4 ), ( 125 , 14 , 4 ), ( 125 , 14 , 5 ), ( 125 , 14 , 4 ), ( 125 , 14 , 4 ), ( 125 , 14 , 3 ), 
	( 126 , 14 , 1 ), ( 126 , 14 , 1 ), ( 126 , 14 , 1 ), ( 126 , 14 , 1 ), ( 126 , 14 , 1 ), ( 126 , 14 , 1 ), ( 126 , 14 , 2 ), ( 126 , 14 , 2 ), ( 126 , 14 , 5 ), ( 126 , 14 , 3 ), ( 126 , 14 , 6 ), ( 126 , 14 , 4 ), ( 126 , 14 , 5 ), 
	( 127 , 14 , 1 ), ( 127 , 14 , 1 ), ( 127 , 14 , 1 ), ( 127 , 14 , 1 ), ( 127 , 14 , 1 ), ( 127 , 14 , 1 ), ( 127 , 14 , 2 ), ( 127 , 14 , 2 ), ( 127 , 14 , 3 ), ( 127 , 14 , 4 ), ( 127 , 14 , 3 ), ( 127 , 14 , 3 ), 
	( 128 , 15 , 1 ), ( 128 , 15 , 1 ), ( 128 , 15 , 1 ), ( 128 , 15 , 1 ), ( 128 , 15 , 1 ), ( 128 , 15 , 1 ), ( 128 , 15 , 2 ), ( 128 , 15 , 2 ), ( 128 , 15 , 3 ), ( 128 , 15 , 6 ), ( 128 , 15 , 6 ), ( 128 , 15 , 6 ), ( 128 , 15 , 5 ), 
	( 129 , 15 , 1 ), ( 129 , 15 , 1 ), ( 129 , 15 , 1 ), ( 129 , 15 , 1 ), ( 129 , 15 , 1 ), ( 129 , 15 , 1 ), ( 129 , 15 , 2 ), ( 129 , 15 , 2 ), ( 129 , 15 , 4 ), ( 129 , 15 , 5 ), ( 129 , 15 , 5 ), ( 129 , 15 , 4 ), 
	( 130 , 15 , 1 ), ( 130 , 15 , 1 ), ( 130 , 15 , 1 ), ( 130 , 15 , 1 ), ( 130 , 15 , 1 ), ( 130 , 15 , 1 ), ( 130 , 15 , 2 ), ( 130 , 15 , 2 ), ( 130 , 15 , 4 ), ( 130 , 15 , 3 ), ( 130 , 15 , 6 ), 
	( 131 , 15 , 1 ), ( 131 , 15 , 1 ), ( 131 , 15 , 1 ), ( 131 , 15 , 1 ), ( 131 , 15 , 1 ), ( 131 , 15 , 1 ), ( 131 , 15 , 2 ), ( 131 , 15 , 2 ), ( 131 , 15 , 6 ), ( 131 , 15 , 3 ), ( 131 , 15 , 5 ), ( 131 , 15 , 5 ), ( 131 , 15 , 6 ), ( 131 , 15 , 5 ), 
	( 132 , 15 , 1 ), ( 132 , 15 , 1 ), ( 132 , 15 , 1 ), ( 132 , 15 , 1 ), ( 132 , 15 , 1 ), ( 132 , 15 , 1 ), ( 132 , 15 , 2 ), ( 132 , 15 , 2 ), ( 132 , 15 , 3 ), ( 132 , 15 , 3 ), 
	( 133 , 15 , 1 ), ( 133 , 15 , 1 ), ( 133 , 15 , 1 ), ( 133 , 15 , 1 ), ( 133 , 15 , 1 ), ( 133 , 15 , 1 ), ( 133 , 15 , 2 ), ( 133 , 15 , 2 ), ( 133 , 15 , 4 ), ( 133 , 15 , 6 ), ( 133 , 15 , 6 ), ( 133 , 15 , 5 ), 
	( 134 , 15 , 1 ), ( 134 , 15 , 1 ), ( 134 , 15 , 1 ), ( 134 , 15 , 1 ), ( 134 , 15 , 1 ), ( 134 , 15 , 1 ), ( 134 , 15 , 2 ), ( 134 , 15 , 2 ), ( 134 , 15 , 6 ), ( 134 , 15 , 4 ), ( 134 , 15 , 5 ), ( 134 , 15 , 6 ), ( 134 , 15 , 5 ), ( 134 , 15 , 3 )
GO