USE BD_Biblioteca
GO


--Vista de información general de libros:
CREATE VIEW Vista_Informacion_Libros AS
SELECT L.titulo, A.nombre_autor AS Autor, E.nombre_editorial AS Editorial, L.anio_publicacion, L.cantidad_disponible
FROM [Libro].[Libros] AS L
JOIN [Libro].[Autores] AS A ON L.autor_id = A.autor_id
JOIN [Libro].[Editoriales] AS E ON L.editorial_id = E.editorial_id;
GO

SELECT *
FROM Vista_Informacion_Libros;
GO


--Vista de usuarios con multas pendientes:
CREATE VIEW Vista_Cliente_Con_Multas AS
SELECT C.nombre_cliente, C.telefono, SUM(M.Monto) AS Total_Multas
FROM [Cliente].[Clientes] AS C
JOIN [Cliente].[Multas] M ON C.cliente_id = M.cliente_id
GROUP BY C.nombre_cliente, C.telefono;
GO

select *
from Vista_Cliente_Con_Multas;
GO


--Vista de libros más valorados:
CREATE VIEW Vista_Libros_Mas_Valorados AS
SELECT TOP 10 WITH TIES L.Titulo, AVG(CONVERT(FLOAT, V.Puntuacion)) AS promedio_puntuacion, COUNT(V.valoracion_id) AS cantidad_votantes
FROM [Libro].[Libros] L
JOIN [Feedback].[Valoraciones] V ON L.ISBN = V.ISBN
GROUP BY L.Titulo
ORDER BY promedio_puntuacion DESC;
GO

SELECT *
FROM Vista_Libros_Mas_Valorados;
GO


--Vista de eventos proximos:
CREATE VIEW Vista_Eventos_Proximos AS
SELECT TOP 10 E.evento_id, E.fecha_inicio, E.fecha_fin, E.titulo, E.ubicacion,TE.nombreEvento 
FROM [EventosProgramacion].[Eventos] E
INNER JOIN [EventosProgramacion].[TipoEvento] AS TE ON TE.tipoEvento_id = E.tipoEvento_id
WHERE fecha_inicio >= GETDATE()
ORDER BY E.fecha_fin ASC;
GO

SELECT *
FROM Vista_Eventos_Proximos;
GO