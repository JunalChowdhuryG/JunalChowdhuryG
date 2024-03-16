USE bd_restaurante;

SHOW TABLES FROM BD_Restaurante;

CREATE VIEW Horarios_Empleados AS
SELECT e.id_empleado, e.nombre, e.apellido, h.dia_semana, h.hora_entrada, h.hora_salida
FROM empleados_empleado e
JOIN empleados_horarioempleado h ON e.id_empleado = h.id_empleado;


CREATE VIEW Estado_Mesas AS
SELECT m.id_mesa, m.capacidad, e.estado AS estado
FROM restaurantes_mesa m
JOIN restaurantes_estadomesa e ON m.id_estado = e.id_estado;


CREATE VIEW Menu_Categorias AS
SELECT c.nombre AS categoria, p.nombre AS producto, p.descripcion, p.precio
FROM menu_categoria c
JOIN menu_producto p ON c.id_categoria = p.id_categoria;

CREATE VIEW Resumen_Pedidos_Pagos AS
SELECT p.id_pedido, p.fecha_hora AS fecha_pedido, d.id_producto, d.cantidad, d.precio_unitario,
       e.nombre AS estado_pedido, pg.id_pago, pg.fecha_hora , pg.total_pagado, tp.nombre AS tipo_pago
FROM pedidos_pedido p
JOIN pedidos_detallepedido d ON p.id_pedido = d.id_pedido
JOIN pedidos_estadospedidos e ON p.id_estado = e.id_estado
LEFT JOIN finanzas_pagos pg ON p.id_pedido = pg.id_pedido
LEFT JOIN finanzas_tipospagos tp ON pg.id_metodo_pago = tp.id_metodo_pago;

CREATE VIEW vista_reservas_eventos AS
SELECT
    r.id_reserva,
    r.id_restaurante,
    r.id_cliente,
    r.id_mesa,
    r.fecha AS fecha_reserva,
    r.hora AS hora_reserva,
    r.tipo AS tipo_reserva,
    r.estado AS estado_reserva,
    NULL AS id_evento,
    NULL AS nombre_evento,
    NULL AS descripcion_evento,
    NULL AS fecha_evento,
    NULL AS hora_inicio_evento,
    NULL AS hora_fin_evento,
    NULL AS aforo_maximo_evento
FROM
    reservas_reserva r
UNION
SELECT
    NULL AS id_reserva,
    re.id_restaurante,
    NULL AS id_cliente,
    NULL AS id_mesa,
    NULL AS fecha_reserva,
    NULL AS hora_reserva,
    NULL AS tipo_reserva,
    NULL AS estado_reserva,
    re.id_evento,
    re.nombre AS nombre_evento,
    re.descripcion AS descripcion_evento,
    re.fecha AS fecha_evento,
    re.hora_inicio AS hora_inicio_evento,
    re.hora_fin AS hora_fin_evento,
    re.aforo_maximo AS aforo_maximo_evento
FROM
    reservas_evento re;

