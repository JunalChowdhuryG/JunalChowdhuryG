USE BD_Restaurante;


CREATE TABLE Restaurantes_Restaurante(
    id_restaurante 		INT 				AUTO_INCREMENT PRIMARY KEY,
    nombre 					VARCHAR(100),
    direccion 				VARCHAR(255),
    telefono 				VARCHAR(15),
    hora_apertura 		TIME,
    hora_cierre 			TIME,
    descripcion 			VARCHAR(255)
);


CREATE TABLE Restaurantes_UbicacionMesa (
    id_ubicacion_mesa 	INT 				AUTO_INCREMENT PRIMARY KEY,
    nombre 					VARCHAR(100)
);

CREATE TABLE Restaurantes_EstadoMesa (
    id_estado  			INT 				AUTO_INCREMENT,
    estado  				VARCHAR(100), /*disponible, reservada*/
    PRIMARY KEY (id_estado)
);


CREATE TABLE Restaurantes_Mesa (
    id_mesa  				INT 				AUTO_INCREMENT,
	 id_restaurante 		INT,
	 numero_mesa			INT,
	 capacidad				INT,
	 id_ubicacion_mesa 	INT,
	 id_estado 				INT,
	 FOREIGN KEY (id_restaurante) 		REFERENCES Restaurantes_Restaurante(id_restaurante),
    FOREIGN KEY (id_ubicacion_mesa) 	REFERENCES Restaurantes_UbicacionMesa(id_ubicacion_mesa),
    FOREIGN KEY (id_estado) 				REFERENCES Restaurantes_EstadoMesa(id_estado),
    PRIMARY KEY (id_mesa)
);


CREATE TABLE Menu_Categoria (
    id_categoria 			INT 				AUTO_INCREMENT PRIMARY KEY,
    nombre 					VARCHAR(255)
);


CREATE TABLE Menu_Producto (
    id_producto 			INT 				AUTO_INCREMENT PRIMARY KEY,
    id_categoria 			INT,
    nombre 					VARCHAR(255),
    descripcion 			VARCHAR(255),
    precio 					DECIMAL(10, 2),
    FOREIGN KEY (id_categoria) 			REFERENCES Menu_Categoria(id_categoria)
);


CREATE TABLE Pedidos_EstadosPedidos (
    id_estado 				INT 				AUTO_INCREMENT PRIMARY KEY,
    nombre 					VARCHAR(50)
);

CREATE TABLE Pedidos_Pedido (
    id_pedido 				INT 				AUTO_INCREMENT PRIMARY KEY,
    id_restaurante 		INT,
    id_mesa					INT,
	 fecha_hora 			TIMESTAMP 		DEFAULT CURRENT_TIMESTAMP,
    id_estado 				INT,
    FOREIGN KEY (id_restaurante) 		REFERENCES Restaurantes_Restaurante(id_restaurante),
    FOREIGN KEY (id_estado) 				REFERENCES Pedidos_EstadosPedidos(id_estado),
    FOREIGN KEY (id_mesa) 					REFERENCES Restaurantes_Mesa(id_mesa)
);



CREATE TABLE Pedidos_DetallePedido (
    id_detalle_pedido 	INT 				AUTO_INCREMENT PRIMARY KEY,
    id_pedido 				INT,
    id_producto 			INT,
    cantidad 				INT,
    precio_unitario 		DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) 				REFERENCES Pedidos_Pedido(id_pedido),
    FOREIGN KEY (id_producto) 			REFERENCES Menu_Producto(id_producto)
);



CREATE TABLE Finanzas_TiposPagos (
    id_metodo_pago INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);


CREATE TABLE Finanzas_Pagos (
    id_pago 				INT 				AUTO_INCREMENT PRIMARY KEY,
    id_pedido				INT,
    fecha_hora 			TIMESTAMP 		DEFAULT CURRENT_TIMESTAMP,
    total_pagado 			DECIMAL(10, 2),
    id_metodo_pago 		INT,
    FOREIGN KEY (id_pedido) 				REFERENCES Pedidos_Pedido(id_pedido),
    FOREIGN KEY (id_metodo_pago) 		REFERENCES Finanzas_TiposPagos(id_metodo_pago)
);



CREATE TABLE Finanzas_Ganancias (
    id_ganancia 			INT AUTO_INCREMENT PRIMARY KEY,
    fecha 					DATE,
    ingresos 				DECIMAL(10, 2),
    gastos 					DECIMAL(10, 2),
    ganancia_neta 		DECIMAL(10, 2)
);


CREATE TABLE Clientes_Cliente (
    id_cliente 			INT 				AUTO_INCREMENT PRIMARY KEY,
    dni 						CHAR(8),
    nombre 					VARCHAR(255),
    email 					VARCHAR(255),
    telefono 				VARCHAR(20),
    direccion 				TEXT
);

CREATE TABLE Empleados_TipoEmpleado (
    id_tipo_empleado 	INT 				AUTO_INCREMENT PRIMARY KEY,
    nombre 					VARCHAR(255) 	UNIQUE NOT NULL
);


CREATE TABLE Empleados_Empleado (
    id_empleado 			INT 				AUTO_INCREMENT PRIMARY KEY,
    id_restaurante 		INT,
    id_tipo_empleado 	INT,
    nombre 					VARCHAR(255),
    apellido 				VARCHAR(255),
    fecha_contratacion 	DATE, 
    salario 				DECIMAL(10, 2), 
    telefono 				VARCHAR(20),
    email 					VARCHAR(255),
    FOREIGN KEY (id_restaurante) 		REFERENCES Restaurantes_Restaurante(id_restaurante),
    FOREIGN KEY (id_tipo_empleado) 		REFERENCES Empleados_TipoEmpleado(id_tipo_empleado) 
);


CREATE TABLE Empleados_HorarioEmpleado (
    id_horario 			INT 				AUTO_INCREMENT PRIMARY KEY,
    id_empleado 			INT,
    dia_semana 			VARCHAR(15),
    hora_entrada 			TIME,
    hora_salida 			TIME,
    FOREIGN KEY (id_empleado) 			REFERENCES Empleados_Empleado(id_empleado)
);


CREATE TABLE reservas_evento (
    id_evento 				INT 				AUTO_INCREMENT PRIMARY KEY,
    id_restaurante 		INT,
    nombre 					VARCHAR(255),
    descripcion 			TEXT,
    fecha 					DATE,
    hora_inicio 			TIME,
    hora_fin 				TIME,
    aforo_maximo 			INT,
    FOREIGN KEY (id_restaurante) 		REFERENCES restaurantes_restaurante(id_restaurante)
);

CREATE TABLE reservas_reserva (
    id_reserva 			INT AUTO_INCREMENT PRIMARY KEY,
    id_restaurante 		INT,
    id_cliente 			INT,
    id_mesa 				INT,
    fecha 					DATE,
    hora 					TIME,
    tipo 					VARCHAR(50), 
    estado 					VARCHAR(50), 
    FOREIGN KEY (id_restaurante) REFERENCES restaurantes_restaurante(id_restaurante),
    FOREIGN KEY (id_cliente) REFERENCES clientes_cliente(id_cliente), 
    FOREIGN KEY (id_mesa) REFERENCES restaurantes_mesa(id_mesa) 
);

CREATE TABLE reservas_reservaevento (
    id_reserva_evento 	INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva 			INT,
    id_evento 				INT,
    FOREIGN KEY (id_reserva) REFERENCES reservas_reserva(id_reserva),
    FOREIGN KEY (id_evento) REFERENCES reservas_evento(id_evento)
);



