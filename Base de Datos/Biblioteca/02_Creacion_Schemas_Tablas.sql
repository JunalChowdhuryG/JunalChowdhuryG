USE BD_Biblioteca
go

--Esquema Ubicacion
create schema Ubicacion
go

--Tabla Ubicaciones
create  table [Ubicacion].[Ubicaciones](
	ubicacion_id		INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombre_ubicacion	VARCHAR(255)	UNIQUE,
)
go

--Tabla Estanterias
create  table [Ubicacion].[Estanterias](
	estanteria_id		INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	ubicacion_id		INT				NOT NULL,
	nombre_estanteria	VARCHAR(255)	UNIQUE,
	FOREIGN KEY (ubicacion_id)	REFERENCES [Ubicacion].[Ubicaciones](ubicacion_id),
)
go

--Esquema Libro
create schema Libro
go

create table [Libro].[Autores](
	autor_id			INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombre_autor		VARCHAR(255)	UNIQUE,
)
go

--Tabla Editoriales
create table [Libro].[Editoriales](
	editorial_id		INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombre_editorial	VARCHAR(255)	UNIQUE,
)
go

--Tabla Categorias
create table [Libro].[Categorias](
	categoria_id		INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombre_categoria	VARCHAR(255)	UNIQUE,
)
go

--Tabla Libros
create table [Libro].[Libros](
	ISBN				INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	titulo				VARCHAR(255)	NOT NULL,
	autor_id			INT				NOT NULL,
	editorial_id		INT				NOT NULL, 
	anio_publicacion	INT, 
	cantidad_disponible	INT,
	FOREIGN KEY (autor_id)		REFERENCES [Libro].[Autores](autor_id),
	FOREIGN KEY (editorial_id)	REFERENCES [Libro].[Editoriales](editorial_id)
)
go

--Tabla Libros_Categorias
create table [Libro].[Libros_Categorias](
	ISBN				INT				NOT NULL,
	categoria_id		INT				NOT NULL,
	FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN),
	FOREIGN KEY (categoria_id)	REFERENCES [Libro].[Categorias](categoria_id)
)
go

--Tabla Estado
create table [Libro].[Estado](
	estado_id		INT			NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombre_estado	VARCHAR(50) --disponible, prestado, etc.
)
go

--Tabla Ejemplares
create table [Libro].[Ejemplares](
	ejemplar_id			INT		IDENTITY(1,1) PRIMARY KEY,
	ISBN				INT,
	--ubicacion_id		INT,
	estanteria_id		INT,
	estado_id			INT,
	FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN),
	--FOREIGN KEY (ubicacion_id)	REFERENCES [Ubicacion].[Ubicaciones](ubicacion_id),
	FOREIGN KEY (estanteria_id)	REFERENCES [Ubicacion].[Estanterias](estanteria_id),
	FOREIGN KEY (estado_id)		REFERENCES [Libro].[Estado](estado_id)
)
go

--Esquema Cliente
create schema Cliente;
go

--Tabla Clientes
create table [Cliente].[Clientes](
	cliente_id		INT			NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombre_cliente	VARCHAR(255),
	direccion		VARCHAR(255),
	telefono		VARCHAR(15)
)
go

--Tabla Historial_Prestamos
create table [Cliente].[Historial_Prestamos](
	historial_id		INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	cliente_id			INT		NOT NULL,	
	ISBN				INT		NOT NULL,
	fecha_prestamo 		DATE,
	fecha_devolucion 	DATE,
	estado_id			INT,
	FOREIGN KEY (estado_id)		REFERENCES [Libro].[Estado](estado_id),
	FOREIGN KEY (cliente_id)	REFERENCES [Cliente].[Clientes](cliente_id),
	FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN),
)
go

--Tabla Multas
create table [Cliente].[Multas](
	multa_id		INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	cliente_id		INT		NOT NULL,	
	historial_id	INT		NOT NULL,
	estado_id		INT,
	monto			MONEY,
	fecha_pago		DATE,
	FOREIGN KEY (estado_id)		REFERENCES [Libro].[Estado](estado_id),
	FOREIGN KEY (cliente_id)	REFERENCES [Cliente].[Clientes](cliente_id),
	FOREIGN KEY (historial_id)	REFERENCES [Cliente].[Historial_Prestamos](historial_id),
)
go

--Tabla Reservas_Clientes
create table [Cliente].[Reservas_Clientes](
	reserva_id			INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	cliente_id			INT		NOT NULL,	
	ISBN				INT		NOT NULL,
	estado_id			INT		NOT NULL,
	fecha_reserva 		DATE,
	fecha_expiracion 	DATE,
	FOREIGN KEY (estado_id)		REFERENCES [Libro].[Estado](estado_id),
	FOREIGN KEY (cliente_id)	REFERENCES [Cliente].[Clientes](cliente_id),
	FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN),
)
go

--Esquema Prestamos
create schema Prestamo
go

--Tabla Prestamos
create table [Prestamo].[Prestamos](
	prestamo_id			INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	cliente_id			INT		NOT NULL,	
	ISBN				INT		NOT NULL,
	estado_id			INT		NOT NULL,
	fecha_prestamo  	DATE,
	fecha_devolucion  	DATE,
	FOREIGN KEY (estado_id)		REFERENCES [Libro].[Estado](estado_id),
	FOREIGN KEY (cliente_id)	REFERENCES [Cliente].[Clientes](cliente_id),
	FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN),
)
go

--Tabla Multas_Prestamo
create table [Prestamo].[Multas_Prestamo](
	multa_id			INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	prestamo_id			INT		NOT NULL,	
	monto				MONEY	NOT NULL,
	estado_id			INT		NOT NULL,
	fecha_pago  		DATE,
	FOREIGN KEY (estado_id)		REFERENCES [Libro].[Estado](estado_id),
	FOREIGN KEY (prestamo_id)	REFERENCES [Prestamo].[Prestamos](prestamo_id),
)
go

--Esquema Empleado
create schema Empleado
go

--Tabla Roles
create table [Empleado].[Roles](
	rol_id INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombre_rol		VARCHAR(255),
)
go

--Tabla Empleados
create table [Empleado].[Empleados](
	empleado_id			INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombre_empleado		VARCHAR(255),
	direccion			VARCHAR(255),
	telefono			VARCHAR(15),
	rol_id				INT				NOT NULL,
	fecha_contratacion	DATE,
	correo_electronico	VARCHAR(50),
	salario				MONEY,
	FOREIGN KEY (rol_id)	REFERENCES [Empleado].[Roles](rol_id),
);
go

--Esquema Reservas
create schema Reservas
go

--Tabla Estado
create table [Reservas].[Estado](
	estado_id		INT	NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombre_estado	VARCHAR(255),
)
go

--Tabla Reservas
create table [Reservas].[Reservas](
	reserva_id			INT	NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	cliente_id			INT	NOT NULL,
	ISBN				INT	NOT NULL,
	fecha_reserva		DATE,
	fecha_expiracion	DATE,
	estado_id			INT NOT NULL,
	FOREIGN KEY (estado_id)	REFERENCES [Reservas].[Estado](estado_id),
	FOREIGN KEY (cliente_id)	REFERENCES [Cliente].[Clientes](cliente_id),
)
go

--Tabla Lista_de_Espera
create table [Reservas].[Lista_de_Espera](
	lista_espera_id		INT	NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	cliente_id			INT	NOT NULL,
	ISBN				INT	NOT NULL,
	fecha_solicitud		DATE,
	posicion_lista 		INT,
	notificado			BIT, --(indicador de si el cliente ha sido notificado sobre la disponibilidad del libro)
	FOREIGN KEY (cliente_id)	REFERENCES [Cliente].[Clientes](cliente_id),
	FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN),
)
go

--Esquema Reservas
create schema  Feedback
go

--Tabla Comentarios
create table [Feedback].[Comentarios](
	comentario_id		INT	NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	cliente_id			INT	NOT NULL,
	ISBN				INT	NOT NULL,
	contenido 			VARCHAR(255),
	fecha_comentario 	DATE,
	FOREIGN KEY (cliente_id)	REFERENCES [Cliente].[Clientes](cliente_id),
	FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN),
)
go

--Tabla Valoraciones
create table [Feedback].[Valoraciones](
	valoracion_id 		INT	NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	cliente_id			INT	NOT NULL,
	ISBN				INT	NOT NULL,
	puntuacion  		VARCHAR(255), 
	fecha_valoracion  	DATE,
	FOREIGN KEY (cliente_id)	REFERENCES [Cliente].[Clientes](cliente_id),
	FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN),
)
go

--Esquema Eventos Programacion
create schema  EventosProgramacion
go

--Tabla Tipo Evento
create table [EventosProgramacion].[TipoEvento](
	tipoEvento_id			INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombreEvento			VARCHAR(255),	-- charla, presentacion de libros, etc.
	descripcion				VARCHAR(255),
)
go

--Tabla Tipo Programacion
create table [EventosProgramacion].[TipoProgramacion](
	tipoProgramacion_id		INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	nombreProgramacion		VARCHAR(255),	--	club de lectura, taller, etc.
	descripcion				VARCHAR(255),
)
go

--Tabla Eventos
create table [EventosProgramacion].[Eventos](
	evento_id				INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	titulo					VARCHAR(255),								
	descripcion				VARCHAR(255),								
	fecha_inicio			DATE,										
	fecha_fin				DATE,										
	ubicacion				VARCHAR(255),											
	tipoEvento_id			INT,
	FOREIGN KEY (tipoEvento_id)	REFERENCES [EventosProgramacion].[TipoEvento](tipoEvento_id),
)
go

--Tabla Programacion
create table [EventosProgramacion].[Programacion](
	programacion_id 		INT		NOT NULL	IDENTITY(1,1) PRIMARY KEY,
	titulo					VARCHAR(255),								
	descripcion				VARCHAR(255),								
	dias_semana 			DATE,										
	hora_inicio 			TIME,										
	hora_fin 				TIME,											
	tipoProgramacion_id		INT,
	FOREIGN KEY (tipoProgramacion_id)	REFERENCES [EventosProgramacion].[TipoProgramacion](tipoProgramacion_id),
)
go


--Esquema Usuario
create schema Usuario
go

-- Tabla Perfiles
CREATE TABLE [Usuario].[Perfiles](
    perfil_id			INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nombre_perfil		VARCHAR(255) NOT NULL
);
GO

-- Tabla Usuarios
CREATE TABLE [Usuario].[Usuarios](
    usuario_id			INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nombre_usuario		VARCHAR(255) NOT NULL,
    contrasena			VARCHAR(255) NOT NULL,
    correo_electronico	VARCHAR(255) NOT NULL,
    perfil_id			INT,
    fecha_registro		DATETIME NOT NULL,
    FOREIGN KEY (perfil_id) REFERENCES [Usuario].[Perfiles](perfil_id)
);
GO

-- Tabla Historial_Sesiones
CREATE TABLE [Usuario].[Historial_Sesiones](
    sesion_id			INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    fecha_inicio		DATETIME NOT NULL,
    fecha_fin			DATETIME,
    actividad			VARCHAR(255),
    FOREIGN KEY (usuario_id) REFERENCES [Usuario].[Usuarios](usuario_id)
);
GO

-- Tabla Detalles_Usuario
CREATE TABLE [Usuario].[Detalles_Usuario](
    detalle_id			INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    nombre_completo		VARCHAR(255),
    direccion			VARCHAR(255),
    telefono			VARCHAR(20),
    fecha_nacimiento	DATE,
    otros_detalles		VARCHAR(MAX),
    FOREIGN KEY (usuario_id) REFERENCES [Usuario].[Usuarios](usuario_id)
);
GO


--Esquema BibliotecaVirtual
create schema BibliotecaVirtual
go

-- Tabla Libros_Electronicos
CREATE TABLE [BibliotecaVirtual].[Libros_Electronicos](
    ISBN				INT NOT NULL PRIMARY KEY,
    enlace_descarga		VARCHAR(255) NOT NULL,
    formato				VARCHAR(50),
    tamano_archivo		INT,
    FOREIGN KEY (ISBN)	REFERENCES [Libro].[Libros](ISBN)
);
GO

-- Tabla Lecturas_En_Linea
CREATE TABLE [BibliotecaVirtual].[Lecturas_En_Linea](
    lectura_id			INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    ISBN				INT,
    progreso_lectura	INT,
    FOREIGN KEY (usuario_id)	REFERENCES [Usuario].[Usuarios](usuario_id),
    FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN)
);
GO

-- Tabla Marcadores
CREATE TABLE [BibliotecaVirtual].[Marcadores](
    marcador_id			INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    ISBN				INT,
    pagina				INT,
    FOREIGN KEY (usuario_id)	REFERENCES [Usuario].[Usuarios](usuario_id),
    FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN)
);
GO

-- Tabla Listas_de_Deseos
CREATE TABLE [BibliotecaVirtual].[Listas_de_Deseos](
    deseo_id			INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    ISBN				INT,
    FOREIGN KEY (usuario_id)	REFERENCES [Usuario].[Usuarios](usuario_id),
    FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN)
);
GO

-- Tabla Resenas
CREATE TABLE [BibliotecaVirtual].[Resenas](
    resena_id			INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    ISBN				INT,
    contenido			VARCHAR(MAX),
    puntuacion			INT,
    FOREIGN KEY (usuario_id)	REFERENCES [Usuario].[Usuarios](usuario_id),
    FOREIGN KEY (ISBN)			REFERENCES [Libro].[Libros](ISBN)
);
GO

--Esquema Comunidad
create schema Comunidad
go

-- Tabla Foros
CREATE TABLE [Comunidad].[Foros](
    foro_id			INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nombre_foro		VARCHAR(255) NOT NULL,
    descripcion		VARCHAR(MAX),
    fecha_creacion	DATETIME NOT NULL
);
GO

-- Tabla Mensajes
CREATE TABLE [Comunidad].[Mensajes](
    mensaje_id		INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    foro_id			INT,
    usuario_id		INT,
    fecha_envio		DATETIME NOT NULL,
    contenido		VARCHAR(MAX),
    FOREIGN KEY (foro_id)		REFERENCES [Comunidad].[Foros](foro_id),
    FOREIGN KEY (usuario_id)	REFERENCES [Usuario].[Usuarios](usuario_id)
);
GO

-- Tabla Seguimiento_Usuarios
CREATE TABLE [Comunidad].[Seguimiento_Usuarios](
    seguimiento_id		INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    seguidor_id			INT,
    seguido_id			INT,
    fecha_seguimiento	DATETIME NOT NULL,
    FOREIGN KEY (seguidor_id)	REFERENCES [Usuario].[Usuarios](usuario_id),
    FOREIGN KEY (seguido_id)	REFERENCES [Usuario].[Usuarios](usuario_id)
);
GO


--Esquema ActividadesEnLinea
create schema ActividadesEnLinea
go

-- Tabla Eventos_Virtuales
CREATE TABLE [ActividadesEnLinea].[Eventos_Virtuales](
    evento_virtual_id	INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nombre_evento		VARCHAR(255) NOT NULL,
    descripcion			VARCHAR(MAX),
    fecha_inicio		DATETIME NOT NULL,
    fecha_fin			DATETIME NOT NULL,
    enlace_registro		VARCHAR(255),
    tipo_evento			VARCHAR(50) NOT NULL
);
GO

-- Tabla Participacion_Usuarios
CREATE TABLE [ActividadesEnLinea].[Participacion_Usuarios](
    participacion_id		INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id				INT,
    evento_virtual_id		INT,
    fecha_participacion		DATETIME NOT NULL,
    FOREIGN KEY (usuario_id)		REFERENCES [Usuario].[Usuarios](usuario_id),
    FOREIGN KEY (evento_virtual_id)	REFERENCES [ActividadesEnLinea].[Eventos_Virtuales](evento_virtual_id)
);
GO

-- Tabla Registro_Pagos
CREATE TABLE [ActividadesEnLinea].[Registro_Pagos](
    pago_id				INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    evento_virtual_id	INT,
    monto_pagado		DECIMAL(10, 2) NOT NULL,
    fecha_pago			DATETIME NOT NULL,
    FOREIGN KEY (usuario_id)		REFERENCES [Usuario].[Usuarios](usuario_id),
    FOREIGN KEY (evento_virtual_id) REFERENCES [ActividadesEnLinea].[Eventos_Virtuales](evento_virtual_id)
);
GO

--Esquema Estadisticas En Linea
create schema EstadisticasEnLinea
go

-- Tabla Estadisticas_Uso
CREATE TABLE [EstadisticasEnLinea].[Estadisticas_Uso](
    estadistica_id			INT			NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id				INT,
	fecha_registro			DATETIME	NOT NULL,
    cantidad_descargas		INT,
    lecturas_en_linea		INT,
    interacciones_comunidad	INT,
	FOREIGN KEY (usuario_id) REFERENCES [Usuario].[Usuarios](usuario_id)
);
GO

-- Tabla Historial_Actividades
CREATE TABLE [EstadisticasEnLinea].[Historial_Actividades](
    actividad_id			INT			NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id				INT,
    fecha_actividad			DATETIME	NOT NULL,
    tipo_actividad			VARCHAR(50) NOT NULL,
    descripcion_actividad	VARCHAR(MAX),
	FOREIGN KEY (usuario_id) REFERENCES [Usuario].[Usuarios](usuario_id)
);
GO

--Esquema Pagos 
create schema Pagos
go

-- Tabla Transacciones
CREATE TABLE [Pagos].[Transacciones](
    transaccion_id		INT			NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    fecha_transaccion	DATETIME	NOT NULL,
    monto				MONEY		NOT NULL,
    descripcion			VARCHAR(MAX),
    FOREIGN KEY (usuario_id) REFERENCES [Usuario].[Usuarios](usuario_id)
);
GO

-- Tabla Metodos_Pago
CREATE TABLE [Pagos].[Metodos_Pago](
    metodo_pago_id		INT			NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    tipo_metodo_pago	VARCHAR(50)	NOT NULL,
    numero_tarjeta		VARCHAR(16),
    fecha_vencimiento	DATE,
    nombre_titular		VARCHAR(255),
    FOREIGN KEY (usuario_id) REFERENCES [Usuario].[Usuarios](usuario_id)
);
GO

-- Tabla Compras_Libros_Electronicos
CREATE TABLE [Pagos].[Compras_Libros_Electronicos](
    compra_id				INT			NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id				INT,
    libro_electronico_ISBN	INT,
    fecha_compra			DATETIME	NOT NULL,
    monto					MONEY		NOT NULL,
    FOREIGN KEY (usuario_id)				REFERENCES [Usuario].[Usuarios](usuario_id),
    FOREIGN KEY (libro_electronico_ISBN)	REFERENCES [BibliotecaVirtual].[Libros_Electronicos](ISBN)
);
GO

-- Tabla Eventos_Virtuales_Pagos
CREATE TABLE [Pagos].[Eventos_Virtuales_Pagos](
    pago_id				INT			NOT NULL IDENTITY(1,1) PRIMARY KEY,
    usuario_id			INT,
    evento_virtual_id	INT,
    fecha_pago			DATETIME	NOT NULL,
    monto				MONEY		NOT NULL,
    FOREIGN KEY (usuario_id)		REFERENCES [Usuario].[Usuarios](usuario_id),
    FOREIGN KEY (evento_virtual_id) REFERENCES [ActividadesEnLinea].[Eventos_Virtuales](evento_virtual_id)
);
GO