
DROP TABLE IF EXISTS laptops;
DROP TABLE IF EXISTS marca_Laptop;
DROP TABLE IF EXISTS tipo_Laptop;
DROP TABLE IF EXISTS procesadores;
DROP TABLE IF EXISTS marca_Procesador;
DROP TABLE IF EXISTS GPUs;
DROP TABLE IF EXISTS marca_GPU;
DROP TABLE IF EXISTS sistema_operativo;
DROP TABLE IF EXISTS almacenamiento_1;
DROP TABLE IF EXISTS almacenamiento_2;
DROP TABLE IF EXISTS resolucion;
DROP TABLE IF EXISTS tipo_almacenamiento;


CREATE TABLE marca_laptop (
    id_marca 		INT PRIMARY KEY AUTO_INCREMENT,
    nombre 			VARCHAR(50) UNIQUE
);

CREATE TABLE tipo_laptop (
    id_tipo 		INT PRIMARY KEY AUTO_INCREMENT,
    nombre 			VARCHAR(50) UNIQUE
);

CREATE TABLE marca_procesador (
    id_marca 		INT PRIMARY KEY AUTO_INCREMENT,
    nombre 			VARCHAR(50) UNIQUE
);

CREATE TABLE procesadores (
    id_procesador INT PRIMARY KEY AUTO_INCREMENT,
    id_marca		INT,
    nombre 			VARCHAR(50),
	 frecuencia    DECIMAL(4,2),
    FOREIGN KEY (id_marca) REFERENCES Marca_Procesador(id_marca)
);

CREATE TABLE marca_GPU (
    id_marca 		INT PRIMARY KEY AUTO_INCREMENT,
    nombre 			VARCHAR(50) UNIQUE
);

CREATE TABLE GPUs (
    id_gpu 			INT PRIMARY KEY AUTO_INCREMENT,
    nombre 			VARCHAR(50),
    id_marca 		INT,
    FOREIGN KEY (id_marca) REFERENCES Marca_GPU(id_marca)
);

CREATE TABLE sistema_operativo (
    id_SO 			INT PRIMARY KEY AUTO_INCREMENT,
    nombre 			VARCHAR(20) UNIQUE
);


CREATE TABLE resolucion(
	 id_resolucion 	INT PRIMARY KEY AUTO_INCREMENT,
	 nombre 		VARCHAR(20) UNIQUE
);


CREATE TABLE tipo_almacenamiento (
    id_tipo 		INT PRIMARY KEY AUTO_INCREMENT,
    nombre 			VARCHAR(20) UNIQUE
);
INSERT INTO tipo_almacenamiento(nombre) VALUE ('');



CREATE TABLE almacenamiento_1 (
    id_almacenamiento_1 	INT PRIMARY KEY AUTO_INCREMENT,
    id_tipo 					INT,
    capacidad_GB 				INT,
	 FOREIGN KEY (id_tipo) REFERENCES tipo_almacenamiento(id_tipo)
);

CREATE TABLE almacenamiento_2 (
    id_almacenamiento_2 	INT PRIMARY KEY AUTO_INCREMENT,
    id_tipo 					INT,
    capacidad_GB 				INT,
	 FOREIGN KEY (id_tipo) REFERENCES tipo_almacenamiento(id_tipo)
);

CREATE TABLE laptops(
	id_laptop 				INT PRIMARY KEY AUTO_INCREMENT,
	id_marca 				INT,
	nombre					VARCHAR(50),
	id_tipo 					INT,
	tamanio 					VARCHAR(50),
	id_procesador 			INT,
	RAM 						TINYINT,
	id_gpu 					INT,
	id_SO 					INT,
	peso 						DECIMAL(7,4),
	precio 					DECIMAL(7,2),
	id_resolucion 			INT,
	tipo_pantalla 			VARCHAR(50),
	pantalla_tactil 		TINYINT(1),
	id_almacenamiento_1 	INT,
	id_almacenamiento_2 	INT,
	FOREIGN KEY (id_marca) 	REFERENCES 	marca_laptop(id_marca),
	FOREIGN KEY (id_tipo) 	REFERENCES 	tipo_laptop(id_tipo),
	FOREIGN KEY (id_procesador) REFERENCES procesadores(id_procesador),
	FOREIGN KEY (id_gpu) REFERENCES GPUs(id_gpu),
	FOREIGN KEY (id_SO) REFERENCES sistema_Operativo(id_SO),
	FOREIGN KEY (id_resolucion) REFERENCES resolucion(id_resolucion),
	FOREIGN KEY (id_almacenamiento_1) REFERENCES almacenamiento_1(id_almacenamiento_1),
	FOREIGN KEY (id_almacenamiento_2) REFERENCES almacenamiento_2(id_almacenamiento_2)
);
