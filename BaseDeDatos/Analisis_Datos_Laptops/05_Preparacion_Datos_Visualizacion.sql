

-- Datos para grafico de barras (numero de laptops por marca):
SELECT m.nombre AS marca, COUNT(*) AS cantidad_laptops
FROM laptops l
JOIN marca_laptop m ON l.id_marca = m.id_marca
GROUP BY m.nombre;

-- Datos para grafico de dispersion (precio vs. tamano de pantalla):
SELECT tamanio, precio
FROM laptops;

-- Datos para grafico de barras (promedio de precio por tipo de laptop):
SELECT t.nombre AS tipo, ROUND(AVG(l.precio),2) AS precio_promedio
FROM laptops l
JOIN tipo_laptop t ON l.id_tipo = t.id_tipo
GROUP BY t.nombre;


-- Datos para grafico de pastel (proporcion de laptops con pantalla tactil y sin pantalla tactil)
SELECT 
    CASE WHEN pantalla_tactil = 1 THEN 'Con pantalla táctil' 
         ELSE 'Sin pantalla táctil' 
    END AS tipo_pantalla_tactil,
    COUNT(*) AS cantidad_laptops
FROM laptops
GROUP BY tipo_pantalla_tactil;


-- Datos para grafico de barras apiladas 
-- (cantidad de laptops por tamano de pantalla y tipo de pantalla)
SELECT 
    tamanio,
    tipo_pantalla,
    COUNT(*) AS cantidad_laptops
FROM laptops
WHERE tipo_pantalla != ''
GROUP BY tamanio, tipo_pantalla;


-- Datos para grafico de barras 
-- (cantidad de laptops por marca y tipo de procesador)
SELECT 
    m.nombre AS marca,
    mp.nombre AS procesador,
    COUNT(*) AS cantidad_laptops
FROM laptops l
JOIN marca_laptop m ON l.id_marca = m.id_marca
JOIN procesadores p ON l.id_procesador = p.id_procesador
JOIN marca_procesador mp ON mp.id_marca = p.id_marca
GROUP BY marca, procesador;


-- Datos para grafico de dispersion 
-- (precio vs. peso de los laptops)
SELECT 
    peso,
    precio
FROM laptops;


