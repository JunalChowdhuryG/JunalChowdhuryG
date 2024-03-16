

INSERT INTO marca_laptop (nombre)
SELECT DISTINCT Laptop_Marca
FROM laptops_sin_normalizar;


INSERT INTO tipo_laptop (nombre)
SELECT DISTINCT Laptop_Tipo
FROM laptops_sin_normalizar;


INSERT INTO marca_procesador (nombre)
SELECT DISTINCT Procesador_Marca
FROM laptops_sin_normalizar;


INSERT INTO marca_GPU (nombre)
SELECT DISTINCT GPU_Marca
FROM laptops_sin_normalizar;


INSERT INTO sistema_operativo (nombre)
SELECT DISTINCT SistemaOperativo
FROM laptops_sin_normalizar;


INSERT INTO resolucion (nombre)
SELECT DISTINCT Laptop_Resolucion
FROM laptops_sin_normalizar;


INSERT INTO tipo_almacenamiento (nombre)
SELECT DISTINCT Almacenamiento_1_tipo
FROM laptops_sin_normalizar;


INSERT INTO procesadores(id_marca,nombre,frecuencia)
SELECT DISTINCT mp.id_marca,la.Procesador_Nombre,la.Procesador_freq
FROM laptops_sin_normalizar AS la
INNER JOIN marca_procesador AS mp ON mp.nombre = la.Procesador_Marca;


INSERT INTO GPUs(nombre,id_marca)
SELECT DISTINCT la.GPU_Nombre,mp.id_marca
FROM laptops_sin_normalizar AS la
INNER JOIN marca_GPU AS mp ON mp.nombre = la.GPU_Marca;


INSERT INTO almacenamiento_1(id_tipo,capacidad_GB)
SELECT DISTINCT ta.id_tipo,la.Almacenamiento_1_GB
FROM laptops_sin_normalizar AS la
INNER JOIN tipo_almacenamiento ta ON la.Almacenamiento_1_tipo = ta.nombre;


INSERT INTO almacenamiento_2(id_tipo,capacidad_GB)
SELECT DISTINCT ta.id_tipo,la.Almacenamiento_2_GB
FROM laptops_sin_normalizar AS la
INNER JOIN tipo_almacenamiento ta ON la.Almacenamiento_2_tipo = ta.nombre;


INSERT INTO laptops(id_marca,nombre,id_tipo,tamanio,id_procesador,RAM,id_gpu,id_SO,peso,precio,id_resolucion,tipo_pantalla,pantalla_tactil,id_almacenamiento_1,id_almacenamiento_2)
SELECT ml.id_marca, la.Laptop_Nombre,tl.id_tipo,la.Laptop_Tamanio, pr.id_procesador,la.Memoria_RAM,gpu.id_gpu,so.id_SO,la.Laptop_Peso,la.Laptop_Precio,re.id_resolucion,la.Laptop_TipoPantalla,la.Laptop_PantallaTactil,al1.id_almacenamiento_1,al2.id_almacenamiento_2
FROM laptops_sin_normalizar 		AS la
INNER JOIN marca_laptop 			AS ml ON ml.nombre = la.Laptop_Marca 
INNER JOIN tipo_laptop 				AS tl ON  tl.nombre = la.Laptop_Tipo
INNER JOIN procesadores 			AS pr ON  pr.nombre = la.Procesador_Nombre AND pr.frecuencia = la.Procesador_freq
INNER JOIN gpus 						AS gpu ON gpu.nombre = la.GPU_Nombre
INNER JOIN sistema_operativo 		AS so ON so.nombre = la.SistemaOperativo
INNER JOIN resolucion 				AS re ON re.nombre = la.Laptop_Resolucion
INNER JOIN tipo_almacenamiento 	AS tp1 ON tp1.nombre = la.Almacenamiento_1_tipo
INNER JOIN tipo_almacenamiento 	AS tp2 ON tp2.nombre = la.Almacenamiento_2_tipo
INNER JOIN almacenamiento_1 		AS al1 ON al1.id_tipo = tp1.id_tipo AND al1.capacidad_GB = la.Almacenamiento_1_GB
INNER JOIN almacenamiento_2 		AS al2 ON al2.id_tipo = tp2.id_tipo AND al2.capacidad_GB = la.Almacenamiento_2_GB;


