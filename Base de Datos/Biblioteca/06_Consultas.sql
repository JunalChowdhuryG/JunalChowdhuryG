USE BD_Biblioteca
GO

--Preguntas a Responder

--Pregunta 1:
--¿Cuantos libros  hay disponibles en la biblioteca? ¿Y cuales son los de mejor puntuacion promedio?
SELECT COUNT(*) AS Total_Libros
FROM  [Libro].[Libros];
GO 

SELECT TOP 5 WITH TIES L.Titulo, AVG(CONVERT(FLOAT, V.Puntuacion)) AS promedio_puntuacion, COUNT(V.valoracion_id) AS cantidad_votantes
FROM [Libro].[Libros] L
JOIN [Feedback].[Valoraciones] V ON L.ISBN = V.ISBN
GROUP BY L.Titulo
ORDER BY promedio_puntuacion DESC;
GO


--Pregunta 2:
--¿Cuantos eventos se han realizado hasta ahora? ¿Cuales son los que se aproximan este mes?

DECLARE @FechaHoy DATE = '2024-05-05'
SELECT COUNT(*) AS total_eventos_virtuales_realizados
FROM [EventosProgramacion].[Eventos]
WHERE fecha_inicio <=  CAST(@FechaHoy AS DATE);
GO

DECLARE @FechaHoy DATE = '2024-05-05'
SELECT E.evento_id, E.fecha_inicio, E.titulo, E.ubicacion,TE.nombreEvento 
FROM [EventosProgramacion].[Eventos] E
INNER JOIN [EventosProgramacion].[TipoEvento] AS TE ON TE.tipoEvento_id = E.tipoEvento_id
WHERE MONTH(fecha_inicio) = MONTH(CAST(@FechaHoy AS DATE))
ORDER BY E.fecha_fin;
GO


--Pregunta 3:
--¿Cuál es el libro  más valorado por los usuarios (Biblioteca y BibliotecaVirtual)?

SELECT top 1 L.ISBN, L.Titulo AS Nombre_Libro,L.Autor ,AVG(promedio_puntuacion) AS promedio_total_puntuacion
FROM [Libro].[Libros] L
LEFT JOIN (
    SELECT ISBN, CONVERT(FLOAT, puntuacion) AS promedio_puntuacion
    FROM [Feedback].[Valoraciones]
    UNION ALL
    SELECT ISBN, CONVERT(FLOAT, puntuacion) AS promedio_puntuacion
    FROM [BibliotecaVirtual].[Resenas]
) AS combined_ratings ON L.ISBN = combined_ratings.ISBN
GROUP BY L.ISBN, L.Titulo
ORDER BY promedio_total_puntuacion DESC;



--Pregunta 4:
--¿Quiénes son los autores más populares según el número de libros prestados?
SELECT TOP 3 A.nombre_autor AS autor, COUNT(*) AS total_prestamos
FROM [Libro].[Autores] AS A
JOIN [Libro].[Libros] AS L ON A.autor_id = L.autor_id
JOIN [Prestamo].[Prestamos] AS P ON L.ISBN = P.ISBN
GROUP BY A.nombre_autor
ORDER BY total_prestamos DESC
GO


--Pregunta 5:
--¿Cuantos y quienes son los usuarios que tienen multas pendientes en este momento?
SELECT C.nombre_cliente,MP.monto
FROM [Prestamo].[Multas_Prestamo] AS MP
INNER JOIN [Prestamo].[Prestamos] AS P on P.prestamo_id = MP.prestamo_id
INNER JOIN [Cliente].[Clientes] AS C on C.cliente_id = P.cliente_id
ORDER BY MP.monto DESC
GO


--Pregunta 6:
--¿Cuántos empleados están registrados en el sistema y cuales son sus roles?
SELECT COUNT(*) AS total_empleados
FROM [Empleado].[Empleados];
GO

SELECT E.nombre_empleado, R.nombre_rol
FROM [Empleado].[Empleados] AS E
INNER JOIN [Empleado].[Roles] AS R ON E.empleado_id = R.rol_id
GO

--Pregunta 7:
--¿Cuántos usuarios tienen al menos un libro en su lista de deseos?
SELECT COUNT(DISTINCT usuario_id) AS total_usuarios_con_lista_de_deseos
FROM [BibliotecaVirtual].[Listas_de_Deseos];
GO

SELECT DISTINCT  U.nombre_usuario, L.ISBN, L.titulo
FROM [BibliotecaVirtual].[Listas_de_Deseos] as LD
INNER JOIN [Usuario].[Usuarios] AS U ON U.usuario_id = LD.usuario_id 
INNER JOIN [Libro].[Libros] AS L ON L.ISBN = LD.ISBN
ORDER BY U.nombre_usuario;
GO

--Pregunta 8:
--¿Cuál es la ubicación de los ejemplares del libro "Moby Dick"?
SELECT DISTINCT L.titulo, U.nombre_ubicacion, ES.nombre_estanteria
FROM [Libro].[Libros] AS L
INNER JOIN [Libro].[Ejemplares] AS E ON E.ISBN = L.ISBN
INNER JOIN [Ubicacion].[Estanterias] AS ES ON ES.estanteria_id = E.estanteria_id
INNER JOIN [Ubicacion].[Ubicaciones] AS U ON U.ubicacion_id = ES.ubicacion_id
WHERE L.titulo = 'Moby Dick';
GO


--Pregunta 9:
--¿Cuál es el método de pago más utilizado para las compras de libros electrónicos?
SELECT MP.tipo_metodo_pago, COUNT(*) AS total_compras
FROM [Pagos].[Metodos_Pago] AS MP
GROUP BY MP.tipo_metodo_pago
ORDER BY total_compras DESC
GO


--Pregunta 10:
--¿Cuántos usuarios han realizado comentarios en el foro?
SELECT COUNT(DISTINCT C.cliente_id) AS total_usuarios_con_comentarios
FROM [Feedback].[Comentarios] AS C
GO