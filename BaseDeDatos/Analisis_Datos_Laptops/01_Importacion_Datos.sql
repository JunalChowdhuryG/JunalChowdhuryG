
DROP TABLE IF EXISTS laptops_sin_normalizar;

CREATE TABLE laptops_sin_normalizar(
	Laptop_Marca 				VARCHAR(50),
	Laptop_Nombre 				VARCHAR(50),
	Laptop_Tipo 				VARCHAR(50),
	Laptop_Tamanio 			VARCHAR(50),
	Procesador_Nombre 		VARCHAR(50),
	Memoria_RAM 				TINYINT,
	GPU_Nombre 					VARCHAR(50),
	SistemaOperativo 			VARCHAR(50),
	Laptop_Peso 				DECIMAL(7,4),
	Laptop_Precio 				DECIMAL(7,2),
	Laptop_Resolucion 		VARCHAR(50),
	Laptop_TipoPantalla 		VARCHAR(50),
	Laptop_PantallaTactil 	TINYINT(1),
	Procesador_freq 			DECIMAL(4,2),
	Almacenamiento_1_GB 		DECIMAL(4),
	Almacenamiento_1_tipo 	VARCHAR(50),
	Almacenamiento_2_GB 		DECIMAL(4),
	Almacenamiento_2_tipo 	VARCHAR(50),
	Procesador_Marca 			VARCHAR(50),
	GPU_Marca 					VARCHAR(50)
);

-- Cambiar la ruta, a la direccion del archivo "datos_laptop.csv"
LOAD DATA INFILE 'C:\\Users\\ACER\\Desktop\\GitHub_Portafolio\\JunalChowdhuryG\\BaseDeDatos\\LimpiezaDatos\\datos_laptop.csv'
INTO TABLE laptops_sin_normalizar
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SELECT *
FROM laptops_sin_normalizar
LIMIT 5;


