
-- Estadisticas descriptivas basicas

-- Cantidad total de laptops en la base de datos
SELECT COUNT(*) AS total_laptops FROM laptops;

-- Calcular el precio promedio de las laptops
SELECT ROUND(AVG(precio),2) AS precio_promedio FROM laptops;

-- Encontrar la laptop mas cara
SELECT nombre, precio FROM laptops ORDER BY precio DESC LIMIT 1;

-- Encontrar la laptop mas barata
SELECT nombre, precio FROM laptops ORDER BY precio ASC LIMIT 1;



-- Distribucion de variables numericas

-- Histograma de precios de laptops
SELECT FLOOR(precio / 500) * 500 AS precio_range, COUNT(*) AS cantidad_laptops
FROM laptops
GROUP BY precio_range
ORDER BY precio_range;

-- Distribucion de tamanos de pantalla
SELECT tamanio, COUNT(*) AS cantidad_laptops
FROM laptops
GROUP BY tamanio
ORDER BY cantidad_laptops DESC;


-- Distribucion de variables categoricas:

-- Numero de laptops por tipo de pantalla
SELECT tipo_pantalla, COUNT(*) AS cantidad_laptops
FROM laptops
WHERE tipo_pantalla != ''
GROUP BY tipo_pantalla;

-- Numero de laptops por marca
SELECT m.nombre AS marca, COUNT(*) AS cantidad_laptops
FROM laptops l
JOIN marca_laptop m ON l.id_marca = m.id_marca
GROUP BY m.nombre
ORDER BY cantidad_laptops DESC;



-- Relaciones entre variables

-- Promedio de precio por tipo de laptop
SELECT t.nombre AS tipo, ROUND(AVG(l.precio),2) AS precio_promedio
FROM laptops l
JOIN tipo_laptop t ON l.id_tipo = t.id_tipo
GROUP BY t.nombre;

-- Top 5 marcas con laptops más caras en promedio
SELECT m.nombre AS marca, ROUND(AVG(l.precio),2) AS precio_promedio
FROM laptops l
JOIN marca_laptop m ON l.id_marca = m.id_marca
GROUP BY m.nombre
ORDER BY precio_promedio DESC
LIMIT 5;


