USE bd_restaurante;


INSERT INTO Finanzas_TiposPagos (nombre) VALUES
    ('Efectivo'),
    ('Tarjeta de crédito'),
    ('Tarjeta de débito'),
    ('Transferencia bancaria'),
    ('Cheque'),
    ('Pago móvil'),
    ('Vale de comida'),
    ('Pago en línea'),
    ('Criptomoneda'),
    ('Otro');


INSERT INTO Clientes_Cliente (dni, nombre, email, telefono, direccion) VALUES
    ('12345678', 'Juan Pérez', 'juan@example.com', '123-456-7890', 'Calle Principal 123'),
    ('87654321', 'María González', 'maria@example.com', '987-654-3210', 'Avenida Central 456'),
    ('23456789', 'Carlos Rodríguez', 'carlos@example.com', '234-567-8901', 'Plaza Mayor 789'),
    ('98765432', 'Ana Martínez', 'ana@example.com', '789-012-3456', 'Calle de los Sabores 234'),
    ('34567890', 'Pedro Sánchez', 'pedro@example.com', '456-789-0123', 'Calle del Puerto 567');


INSERT INTO Empleados_TipoEmpleado (nombre) VALUES
    ('Cocinero'),
    ('Camarero'),
    ('Barman'),
    ('Gerente'),
    ('Recepcionista'),
    ('Limpieza'),
    ('Encargado de seguridad');

INSERT INTO Empleados_Empleado (id_restaurante, id_tipo_empleado, nombre, apellido, fecha_contratacion, salario, telefono, email) VALUES
    (1, 1, 'Juan', 'López', '2023-05-15', 2000.00, '123-456-7890', 'juan.lopez@example.com'),
    (1, 2, 'María', 'García', '2023-06-20', 2500.00, '234-567-8901', 'maria.garcia@example.com'),
    (1, 3, 'Carlos', 'Martínez', '2023-07-10', 2200.00, '345-678-9012', 'carlos.martinez@example.com'),
    (1, 4, 'Ana', 'Rodríguez', '2023-08-05', 3100.00, '456-789-0123', 'ana.rodriguez@example.com'),
    (1, 5, 'Pedro', 'Sánchez', '2023-09-15', 2400.00, '567-890-1234', 'pedro.sanchez@example.com'),
    (1, 6, 'Laura', 'López', '2023-10-20', 2300.00, '678-901-2345', 'laura.lopez@example.com'),
    (1, 7, 'Diego', 'Gómez', '2023-11-10', 2200.00, '789-012-3456', 'diego.gomez@example.com'),
    (1, 1, 'Sofía', 'Pérez', '2023-12-05', 2500.00, '890-123-4567', 'sofia.perez@example.com'),
    (1, 2, 'Javier', 'Hernández', '2024-01-10', 2300.00, '901-234-5678', 'javier.hernandez@example.com'),
    (1, 3, 'Lucía', 'Martín', '2024-02-15', 2100.00, '012-345-6789', 'lucia.martin@example.com'),
    (1, 2, 'Daniel', 'Gutiérrez', '2024-03-20', 2400.00, '123-456-7890', 'daniel.gutierrez@example.com'),
    (1, 5, 'Carmen', 'Ruiz', '2024-04-05', 2200.00, '234-567-8901', 'carmen.ruiz@example.com'),
    (1, 6, 'Alejandro', 'Díaz', '2024-05-10', 2200.00, '345-678-9012', 'alejandro.diaz@example.com'),
    (1, 7, 'Luisa', 'Torres', '2024-06-15', 2500.00, '456-789-0123', 'luisa.torres@example.com'),
    (1, 1, 'Elena', 'Flores', '2024-07-20', 2300.00, '567-890-1234', 'elena.flores@example.com'),
    (1, 2, 'Andrés', 'Sanz', '2024-08-05', 2100.00, '678-901-2345', 'andres.sanz@example.com'),
    (1, 3, 'Silvia', 'Vázquez', '2024-09-10', 2400.00, '789-012-3456', 'silvia.vazquez@example.com'),
    (1, 2, 'Pablo', 'Iglesias', '2024-10-15', 2200.00, '890-123-4567', 'pablo.iglesias@example.com'),
    (1, 5, 'Marina', 'López', '2024-11-20', 2200.00, '901-234-5678', 'marina.lopez@example.com'),
    (1, 6, 'Alberto', 'García', '2024-12-05', 2500.00, '012-345-6789', 'alberto.garcia@example.com');


INSERT INTO Empleados_HorarioEmpleado (id_empleado, dia_semana, hora_entrada, hora_salida) VALUES
    (1, 'Lunes', '08:00:00', '16:00:00'),
    (1, 'Martes', '08:00:00', '16:00:00'),
    (1, 'Miercoles', '08:00:00', '16:00:00'),
    (1, 'Jueves', '08:00:00', '16:00:00'),
    (1, 'Viernes', '08:00:00', '16:00:00'),
    (2, 'Lunes', '10:00:00', '18:00:00'),
    (2, 'Martes', '10:00:00', '18:00:00'),
    (2, 'Miercoles', '10:00:00', '18:00:00'),
    (2, 'Jueves', '10:00:00', '18:00:00'),
    (2, 'Viernes', '10:00:00', '18:00:00');
INSERT INTO Empleados_HorarioEmpleado (id_empleado, dia_semana, hora_entrada, hora_salida) VALUES
    (3, 'Lunes', '09:00:00', '17:00:00'),
    (3, 'Martes', '09:00:00', '17:00:00'),
    (3, 'Miercoles', '09:00:00', '17:00:00');
INSERT INTO Empleados_HorarioEmpleado (id_empleado, dia_semana, hora_entrada, hora_salida) VALUES 
    (3, 'Jueves', '09:00:00', '17:00:00'),
    (3, 'Viernes', '09:00:00', '17:00:00'),
    (4, 'Lunes', '12:00:00', '20:00:00'),
    (4, 'Martes', '12:00:00', '20:00:00'),
    (4, 'Miercoles', '12:00:00', '20:00:00'),
    (4, 'Jueves', '12:00:00', '20:00:00'),
    (4, 'Viernes', '12:00:00', '20:00:00'),
    (5, 'Lunes', '13:00:00', '21:00:00'),
    (5, 'Martes', '13:00:00', '21:00:00'),
    (5, 'Miercoles', '13:00:00', '21:00:00'),
    (5, 'Jueves', '13:00:00', '21:00:00'),
    (5, 'Viernes', '13:00:00', '21:00:00');
    
INSERT INTO Empleados_HorarioEmpleado (id_empleado, dia_semana, hora_entrada, hora_salida) VALUES 
    (6, 'Lunes', '10:30:00', '18:30:00'),
    (6, 'Martes', '10:30:00', '18:30:00'),
    (6, 'Miercoles', '10:30:00', '18:30:00'),
    (6, 'Jueves', '10:30:00', '18:30:00'),
    (6, 'Viernes', '10:30:00', '18:30:00'),
    (7, 'Lunes', '11:00:00', '19:00:00'),
    (7, 'Martes', '11:00:00', '19:00:00'),
    (7, 'Miercoles', '11:00:00', '19:00:00'),
    (7, 'Jueves', '11:00:00', '19:00:00'),
    (7, 'Viernes', '11:00:00', '19:00:00'),
    (8, 'Lunes', '08:30:00', '16:30:00'),
    (8, 'Martes', '08:30:00', '16:30:00'),
    (8, 'Miercoles', '08:30:00', '16:30:00'),
    (8, 'Jueves', '08:30:00', '16:30:00');
    
INSERT INTO Empleados_HorarioEmpleado (id_empleado, dia_semana, hora_entrada, hora_salida) VALUES 
    (8, 'Viernes', '08:30:00', '16:30:00'),
    (9, 'Lunes', '09:30:00', '17:30:00'),
    (9, 'Martes', '09:30:00', '17:30:00'),
    (9, 'Miercoles', '09:30:00', '17:30:00'),
    (9, 'Jueves', '09:30:00', '17:30:00'),
    (9, 'Viernes', '09:30:00', '17:30:00'),
    (10, 'Lunes', '12:30:00', '20:30:00'),
    (10, 'Martes', '12:30:00', '20:30:00'),
    (10, 'Miercoles', '12:30:00', '20:30:00'),
    (10, 'Jueves', '12:30:00', '20:30:00'),
    (10, 'Viernes', '12:30:00', '20:30:00');
    
INSERT INTO Empleados_HorarioEmpleado (id_empleado, dia_semana, hora_entrada, hora_salida) VALUES
    (11, 'Lunes', '13:30:00', '21:30:00'),
    (11, 'Martes', '13:30:00', '21:30:00'),
    (11, 'Miercoles', '13:30:00', '21:30:00'),
    (11, 'Jueves', '13:30:00', '21:30:00'),
    (11, 'Viernes', '13:30:00', '21:30:00'),
    (12, 'Lunes', '11:30:00', '19:30:00'),
    (12, 'Martes', '11:30:00', '19:30:00'),
    (12, 'Miercoles', '11:30:00', '19:30:00'),
    (12, 'Jueves', '11:30:00', '19:30:00'),
    (12, 'Viernes', '11:30:00', '19:30:00'),
    (13, 'Lunes', '08:00:00', '16:00:00'),
    (13, 'Martes', '08:00:00', '16:00:00'),
    (13, 'Miercoles', '08:00:00', '16:00:00'),
    (13, 'Jueves', '08:00:00', '16:00:00'),
    (13, 'Viernes', '08:00:00', '16:00:00');
INSERT INTO Empleados_HorarioEmpleado (id_empleado, dia_semana, hora_entrada, hora_salida) VALUES 
    (14, 'Lunes', '10:00:00', '18:00:00'),
    (14, 'Martes', '10:00:00', '18:00:00'),
    (14, 'Miercoles', '10:00:00', '18:00:00'),
    (14, 'Jueves', '10:00:00', '18:00:00'),
    (14, 'Viernes', '10:00:00', '18:00:00'),
    (15, 'Lunes', '13:00:00', '21:00:00'),
    (15, 'Martes', '13:00:00', '21:00:00'),
    (15, 'Miercoles', '13:00:00', '21:00:00'),
    (15, 'Jueves', '13:00:00', '21:00:00'),
    (15, 'Viernes', '13:00:00', '21:00:00');
INSERT INTO Empleados_HorarioEmpleado (id_empleado, dia_semana, hora_entrada, hora_salida) VALUES
    (16, 'Lunes', '10:30:00', '18:30:00'),
    (16, 'Martes', '10:30:00', '18:30:00'),
    (16, 'Miercoles', '10:30:00', '18:30:00'),
    (16, 'Jueves', '10:30:00', '18:30:00'),
    (16, 'Viernes', '10:30:00', '18:30:00'),
    (17, 'Lunes', '11:00:00', '19:00:00'),
    (17, 'Martes', '11:00:00', '19:00:00'),
    (17, 'Miercoles', '11:00:00', '19:00:00'),
    (17, 'Jueves', '11:00:00', '19:00:00'),
    (17, 'Viernes', '11:00:00', '19:00:00'),
    (18, 'Lunes', '08:30:00', '16:30:00'),
    (18, 'Martes', '08:30:00', '16:30:00'),
    (18, 'Miercoles', '08:30:00', '16:30:00'),
    (18, 'Jueves', '08:30:00', '16:30:00');
INSERT INTO Empleados_HorarioEmpleado (id_empleado, dia_semana, hora_entrada, hora_salida) VALUES 
    (18, 'Viernes', '08:30:00', '16:30:00'),
    (19, 'Lunes', '09:30:00', '17:30:00'),
    (19, 'Martes', '09:30:00', '17:30:00'),
    (19, 'Miercoles', '09:30:00', '17:30:00'),
    (19, 'Jueves', '09:30:00', '17:30:00'),
    (19, 'Viernes', '09:30:00', '17:30:00'),
    (20, 'Lunes', '12:30:00', '20:30:00'),
    (20, 'Martes', '12:30:00', '20:30:00'),
    (20, 'Miercoles', '12:30:00', '20:30:00'),
    (20, 'Jueves', '12:30:00', '20:30:00'),
    (20, 'Viernes', '12:30:00', '20:30:00');

INSERT INTO reservas_evento (id_restaurante, nombre, descripcion, fecha, hora_inicio, hora_fin, aforo_maximo) VALUES
    (1, 'Concierto en vivo', 'Concierto de música en vivo con artistas locales.', '2024-02-20', '19:00:00', '22:00:00', 100),
    (1, 'Noche de degustación de vinos', 'Degustación de vinos de diferentes regiones.', '2024-02-25', '18:30:00', '21:30:00', 50),
    (1, 'Evento de empresa', 'Reunión corporativa con cena incluida.', '2024-03-10', '17:00:00', '20:00:00', 80);

INSERT INTO reservas_reserva (id_restaurante, id_cliente, id_mesa, fecha, hora, tipo, estado) VALUES
    (1, 1, 1, '2024-02-20', '19:30:00', 'Evento', 'Confirmado'),
    (1, 2, 3, '2024-02-25', '19:00:00', 'Evento', 'Confirmado'),
    (1, 3, 2, '2024-03-10', '18:00:00', 'Evento', 'Pendiente');

INSERT INTO reservas_reservaevento (id_reserva, id_evento) VALUES
    (1, 1),
    (2, 2),
    (3, 3);
