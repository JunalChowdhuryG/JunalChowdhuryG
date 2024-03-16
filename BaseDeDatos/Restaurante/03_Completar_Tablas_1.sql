USE BD_Restaurante;


INSERT INTO Restaurantes_Restaurante (nombre, direccion, telefono, hora_apertura, hora_cierre, descripcion) VALUES
    ('Restaurante La Buena Mesa', 'Calle Principal 123', '123-456-7890', '09:00:00', '21:00:00', 'Restaurante de comida internacional con un ambiente acogedor.'),
    ('El Rincón del Sabor', 'Avenida Central 456', '987-654-3210', '08:00:00', '22:00:00', 'Especializado en cocina tradicional local con ingredientes frescos y de temporada.'),
    ('La Cuchara Feliz', 'Plaza Mayor 789', '456-789-0123', '10:00:00', '20:00:00', 'Ofrecemos una variedad de platillos vegetarianos y veganos.'),
    ('Sabor Oriental', 'Calle de los Sabores 234', '321-098-7654', '11:00:00', '23:00:00', 'Disfrute de auténtica comida asiática en un ambiente moderno y elegante.'),
    ('Cocina del Mar', 'Calle del Puerto 567', '234-567-8901', '12:00:00', '22:00:00', 'Especializado en mariscos frescos y pescados del día.'),
    ('La Parrilla Argenta', 'Avenida de las Brasas 890', '678-901-2345', '13:00:00', '23:00:00', 'Carnes a la parrilla con cortes argentinos y vinos seleccionados.'),
    ('Sabor y Tradición', 'Paseo de las Delicias 123', '345-678-9012', '11:30:00', '21:30:00', 'Platillos caseros inspirados en recetas de familia con un toque moderno.'),
    ('Fusión Oriental', 'Calle de los Sabores 567', '789-012-3456', '11:30:00', '22:30:00', 'Experimente una fusión de sabores asiáticos con influencias occidentales.'),
    ('Rincón Mexicano', 'Plaza de las Flores 890', '901-234-5678', '12:00:00', '23:00:00', 'Auténtica cocina mexicana con una amplia selección de tequilas y mezcales.'),
    ('La Terraza Italiana', 'Avenida del Sol 234', '123-456-7890', '12:30:00', '22:30:00', 'Ambiente al aire libre para disfrutar de deliciosos platos italianos y vinos.'),
    ('Sabor Criollo', 'Calle de la Tradición 567', '234-567-8901', '11:00:00', '21:00:00', 'Comida criolla con ingredientes locales y recetas tradicionales transmitidas por generaciones.');

INSERT INTO Restaurantes_Restaurante (nombre, direccion, telefono, hora_apertura, hora_cierre, descripcion) VALUES
    ('El Bistró Francés', 'Rue de la Cuisine 123', '987-654-3210', '10:00:00', '22:00:00', 'Deléitese con la auténtica cocina francesa en nuestro acogedor bistró.'),
    ('Thai Spice', 'Sukhumvit Road 456', '321-098-7654', '11:30:00', '23:00:00', 'Sabores picantes y exóticos de Tailandia en un ambiente elegante y contemporáneo.'),
    ('La Tasca Española', 'Calle de Tapas 789', '234-567-8901', '12:00:00', '23:30:00', 'Tapas españolas tradicionales y una extensa selección de vinos españoles.'),
    ('Sabor del Caribe', 'Playa del Sabor 234', '678-901-2345', '11:00:00', '21:00:00', 'Disfrute de la frescura y los sabores tropicales del Caribe en cada bocado.'),
    ('Panorama Lounge', 'Skyline Avenue 567', '901-234-5678', '18:00:00', '02:00:00', 'Vistas panorámicas y cócteles exclusivos en nuestro lounge de alta gama.'),
    ('La Trattoria', 'Via della Pasta 890', '345-678-9012', '12:30:00', '22:30:00', 'Auténtica cocina italiana con ingredientes frescos y recetas tradicionales.'),
    ('Sabor Peruano', 'Plaza de Lima 123', '789-012-3456', '11:00:00', '23:00:00', 'Explora la riqueza de la gastronomía peruana con platos llenos de sabor y color.'),
    ('Burger Haven', 'Burger Boulevard 456', '123-456-7890', '11:30:00', '00:00:00', 'Hamburguesas gourmet y batidos deliciosos en un ambiente relajado y moderno.'),
    ('Sushi Delight', 'Sushi Street 789', '234-567-8901', '12:00:00', '22:30:00', 'Saborea el mejor sushi fresco y creativo, preparado por nuestros expertos chefs.'),
    ('La Cantina Mexicana', 'Calle del Tequila 234', '678-901-2345', '12:00:00', '23:00:00', 'Auténticos tacos, margaritas y música en vivo en nuestra colorida cantina mexicana.');



INSERT INTO Restaurantes_UbicacionMesa (nombre) VALUES
    ('Interior'),
    ('Terraza'),
    ('Barra'),
    ('Jardín'),
    ('Balcón'),
    ('Sala Privada'),
    ('Azotea'),
    ('Patio'),
    ('Salón Principal');

INSERT INTO Restaurantes_EstadoMesa (estado) VALUES
    ('Disponible'),
    ('Reservada'),
    ('Ocupada'),
    ('En limpieza');
    
INSERT INTO Restaurantes_Mesa (id_restaurante,capacidad,id_ubicacion_mesa,id_estado) VALUES    
	( 1 , 2 , 2 , 1 ), ( 1 , 2 , 4 , 2 ), ( 1 , 2 , 2 , 1 ), ( 1 , 6 , 8 , 1 ), ( 1 , 2 , 9 , 3 ), ( 1 , 4 , 1 , 2 ), ( 1 , 6 , 3 , 3 ), ( 1 , 6 , 6 , 1 ), ( 1 , 6 , 7 , 2 ), ( 1 , 4 , 6 , 2 ), 
	( 1 , 4 , 3 , 3 ), ( 1 , 2 , 4 , 4 ), ( 1 , 4 , 6 , 1 ), ( 1 , 2 , 4 , 3 ), ( 1 , 6 , 1 , 4 ), ( 1 , 4 , 8 , 4 ), ( 1 , 2 , 5 , 4 ), ( 1 , 4 , 1 , 2 ), ( 1 , 2 , 2 , 2 ), ( 1 , 2 , 5 , 4 ), 
	( 1 , 6 , 1 , 3 ), ( 1 , 2 , 6 , 2 ), ( 1 , 6 , 2 , 3 ), ( 1 , 6 , 3 , 1 ), ( 1 , 4 , 5 , 2 ), ( 1 , 2 , 6 , 4 ), ( 1 , 4 , 3 , 3 ), ( 1 , 4 , 7 , 1 ), ( 1 , 4 , 8 , 2 ), ( 1 , 6 , 1 , 2 ), 
	( 1 , 6 , 4 , 4 ), ( 1 , 4 , 8 , 1 ), ( 1 , 4 , 4 , 2 ), ( 1 , 6 , 3 , 4 ), ( 1 , 6 , 8 , 4 ), ( 1 , 4 , 8 , 3 ), ( 1 , 6 , 4 , 1 ), ( 1 , 2 , 7 , 3 ), ( 1 , 6 , 5 , 4 ), ( 1 , 6 , 4 , 3 ), 
	( 1 , 4 , 8 , 3 ), ( 1 , 4 , 4 , 2 ), ( 1 , 4 , 4 , 4 ), ( 1 , 6 , 3 , 2 ), ( 1 , 6 , 7 , 1 ), ( 1 , 6 , 7 , 1 ), ( 1 , 2 , 5 , 2 ), ( 1 , 4 , 4 , 1 ), ( 1 , 4 , 4 , 4 ), ( 1 , 4 , 7 , 3 ), 
	( 1 , 4 , 4 , 3 ), ( 1 , 4 , 2 , 2 ), ( 1 , 4 , 8 , 2 ), ( 1 , 2 , 4 , 3 ), ( 1 , 2 , 7 , 4 ), ( 1 , 4 , 7 , 1 ), ( 1 , 6 , 1 , 3 ), ( 1 , 6 , 4 , 3 ), ( 1 , 2 , 3 , 1 ), ( 1 , 4 , 5 , 3 ), 
	( 1 , 4 , 5 , 4 ), ( 1 , 6 , 6 , 3 ), ( 1 , 2 , 9 , 4 ), ( 1 , 4 , 7 , 3 ), ( 1 , 6 , 6 , 1 ), ( 1 , 4 , 4 , 2 ), ( 1 , 2 , 8 , 4 ), ( 1 , 2 , 4 , 3 ), ( 1 , 2 , 1 , 1 ), ( 1 , 6 , 4 , 4 ), 
	( 1 , 4 , 6 , 2 ), ( 1 , 6 , 8 , 3 ), ( 1 , 2 , 5 , 2 ), ( 1 , 2 , 8 , 3 ), ( 1 , 4 , 2 , 4 ), ( 1 , 2 , 3 , 3 ), ( 1 , 4 , 8 , 4 ), ( 1 , 6 , 7 , 1 ), ( 1 , 2 , 9 , 3 ), ( 1 , 6 , 4 , 3 ), 
	( 1 , 2 , 7 , 2 ), ( 1 , 6 , 9 , 4 ), ( 1 , 4 , 9 , 3 ), ( 1 , 2 , 4 , 3 ), ( 1 , 2 , 9 , 1 ), ( 1 , 6 , 2 , 4 ), ( 1 , 4 , 8 , 1 ), ( 1 , 4 , 6 , 3 ), ( 1 , 6 , 7 , 4 ), ( 1 , 6 , 7 , 3 ), 
	( 1 , 2 , 5 , 4 ), ( 1 , 4 , 1 , 4 ), ( 1 , 2 , 1 , 2 ), ( 1 , 4 , 9 , 3 ), ( 1 , 2 , 8 , 4 ), ( 1 , 2 , 9 , 3 ), ( 1 , 6 , 7 , 3 ), ( 1 , 2 , 2 , 4 ), ( 1 , 2 , 7 , 3 ), ( 1 , 6 , 5 , 1 ), 
	( 1 , 4 , 7 , 4 ), ( 1 , 2 , 5 , 2 ), ( 1 , 2 , 7 , 3 ), ( 1 , 6 , 5 , 2 ), ( 1 , 4 , 7 , 2 ), ( 1 , 6 , 2 , 4 ), ( 1 , 6 , 1 , 3 ), ( 1 , 2 , 8 , 3 ), ( 1 , 4 , 5 , 2 ), ( 1 , 4 , 6 , 4 ), 
	( 1 , 6 , 5 , 3 ), ( 1 , 4 , 8 , 2 ), ( 1 , 2 , 4 , 4 ), ( 1 , 6 , 3 , 3 ), ( 1 , 4 , 9 , 4 ), ( 1 , 4 , 1 , 4 ), ( 1 , 4 , 9 , 3 ), ( 1 , 4 , 4 , 1 ), ( 1 , 4 , 2 , 3 ), ( 1 , 6 , 4 , 1 ), 
	( 1 , 2 , 8 , 2 ), ( 1 , 2 , 7 , 1 ), ( 1 , 2 , 4 , 4 ), ( 1 , 6 , 3 , 2 ), ( 1 , 2 , 3 , 1 ), ( 1 , 6 , 5 , 4 ), ( 1 , 2 , 2 , 2 ), ( 1 , 4 , 5 , 4 ), ( 1 , 6 , 3 , 1 ), ( 1 , 6 , 9 , 1 ), 
	( 1 , 2 , 1 , 4 ), ( 1 , 2 , 7 , 2 ), ( 1 , 2 , 8 , 2 ), ( 1 , 2 , 1 , 3 ), ( 1 , 4 , 2 , 2 ), ( 1 , 2 , 7 , 3 ), ( 1 , 2 , 7 , 4 ), ( 1 , 6 , 3 , 1 ), ( 1 , 4 , 5 , 1 ), ( 1 , 6 , 9 , 3 ), 
	( 1 , 6 , 1 , 1 ), ( 1 , 6 , 4 , 3 ), ( 1 , 4 , 7 , 1 ), ( 1 , 6 , 1 , 4 ), ( 1 , 6 , 3 , 4 ), ( 1 , 2 , 4 , 1 ), ( 1 , 6 , 9 , 2 ), ( 1 , 6 , 8 , 3 ), ( 1 , 2 , 5 , 1 ), ( 1 , 4 , 3 , 2 ), 
	( 1 , 6 , 3 , 2 ), ( 1 , 6 , 7 , 2 ), ( 1 , 2 , 8 , 4 ), ( 1 , 2 , 3 , 3 ), ( 1 , 4 , 2 , 3 ), ( 1 , 4 , 5 , 3 ), ( 1 , 6 , 9 , 3 ), ( 1 , 2 , 3 , 1 ), ( 1 , 6 , 1 , 1 ), ( 1 , 6 , 8 , 2 ), 
	( 1 , 4 , 7 , 2 ), ( 1 , 4 , 8 , 4 ), ( 1 , 2 , 4 , 3 ), ( 1 , 4 , 1 , 4 ), ( 1 , 2 , 3 , 4 ), ( 1 , 2 , 8 , 2 ), ( 1 , 4 , 8 , 4 ), ( 1 , 6 , 7 , 4 ), ( 1 , 6 , 8 , 3 ), ( 1 , 4 , 1 , 1 ), 
	( 1 , 6 , 3 , 4 ), ( 1 , 6 , 5 , 4 ), ( 1 , 2 , 9 , 2 ), ( 1 , 4 , 5 , 2 ), ( 1 , 6 , 7 , 2 ), ( 1 , 6 , 9 , 2 ), ( 1 , 6 , 5 , 2 ), ( 1 , 4 , 4 , 4 ), ( 1 , 6 , 4 , 4 ), ( 1 , 2 , 3 , 3 ), 
	( 1 , 4 , 9 , 2 ), ( 1 , 2 , 9 , 4 ), ( 1 , 2 , 9 , 3 ), ( 1 , 6 , 6 , 3 ), ( 1 , 4 , 4 , 1 ), ( 1 , 4 , 7 , 2 ), ( 1 , 6 , 2 , 2 ), ( 1 , 2 , 1 , 4 ), ( 1 , 4 , 8 , 2 ), ( 1 , 4 , 2 , 2 ), 
	( 1 , 2 , 4 , 4 ), ( 1 , 2 , 8 , 1 ), ( 1 , 4 , 5 , 4 ), ( 1 , 6 , 7 , 2 ), ( 1 , 6 , 2 , 2 ), ( 1 , 6 , 2 , 1 ), ( 1 , 2 , 5 , 4 ), ( 1 , 4 , 7 , 3 ), ( 1 , 2 , 5 , 4 ), ( 1 , 2 , 5 , 4 ), 
	( 1 , 4 , 9 , 4 ), ( 1 , 4 , 7 , 1 ), ( 1 , 6 , 9 , 4 ), ( 1 , 6 , 8 , 3 ), ( 1 , 6 , 8 , 2 ), ( 1 , 2 , 9 , 1 ), ( 1 , 4 , 1 , 3 ), ( 1 , 6 , 7 , 4 ), ( 1 , 4 , 2 , 4 ), ( 1 , 2 , 9 , 4 ), 
	( 1 , 6 , 4 , 2 ), ( 1 , 6 , 6 , 2 ), ( 1 , 2 , 3 , 3 ), ( 1 , 2 , 8 , 1 ), ( 1 , 6 , 9 , 3 ), ( 1 , 4 , 2 , 1 ), ( 1 , 6 , 5 , 1 ), ( 1 , 2 , 2 , 2 ), ( 1 , 6 , 3 , 4 ), ( 1 , 4 , 2 , 3 ), 
	( 1 , 4 , 8 , 2 ), ( 1 , 4 , 7 , 2 ), ( 1 , 2 , 1 , 4 ), ( 1 , 2 , 5 , 1 ), ( 1 , 2 , 5 , 3 ), ( 1 , 4 , 4 , 3 ), ( 1 , 2 , 8 , 3 ), ( 1 , 6 , 9 , 1 ), ( 1 , 6 , 3 , 2 ), ( 1 , 4 , 8 , 1 ), 
	( 1 , 4 , 2 , 2 ), ( 1 , 6 , 3 , 2 ), ( 1 , 4 , 9 , 4 ), ( 1 , 4 , 2 , 2 ), ( 1 , 2 , 6 , 3 ), ( 1 , 2 , 3 , 1 ), ( 1 , 6 , 3 , 4 ), ( 1 , 4 , 6 , 4 ), ( 1 , 2 , 3 , 1 ), ( 1 , 6 , 8 , 2 ), 
	( 1 , 4 , 7 , 2 ), ( 1 , 6 , 5 , 2 ), ( 1 , 6 , 7 , 2 ), ( 1 , 2 , 7 , 3 ), ( 1 , 4 , 6 , 4 ), ( 1 , 4 , 6 , 4 ), ( 1 , 2 , 8 , 1 ), ( 1 , 4 , 3 , 4 ), ( 1 , 6 , 7 , 2 ), ( 1 , 6 , 3 , 3 ), 
	( 1 , 6 , 7 , 1 ), ( 1 , 6 , 3 , 2 ), ( 1 , 2 , 9 , 3 ), ( 1 , 6 , 6 , 1 ), ( 1 , 2 , 9 , 4 ), ( 1 , 6 , 9 , 4 ), ( 1 , 4 , 5 , 4 ), ( 1 , 6 , 3 , 4 ), ( 1 , 4 , 9 , 3 ), ( 1 , 4 , 8 , 4 ), 
	( 1 , 4 , 5 , 1 ), ( 1 , 2 , 5 , 2 ), ( 1 , 2 , 6 , 3 ), ( 1 , 6 , 5 , 4 ), ( 1 , 6 , 3 , 1 ), ( 1 , 6 , 1 , 4 ), ( 1 , 2 , 1 , 3 ), ( 1 , 2 , 8 , 4 ), ( 1 , 2 , 3 , 2 ), ( 1 , 4 , 6 , 3 ), 
	( 1 , 2 , 8 , 4 ), ( 1 , 6 , 2 , 3 ), ( 1 , 4 , 4 , 3 ), ( 1 , 6 , 8 , 1 ), ( 1 , 6 , 7 , 3 ), ( 1 , 2 , 6 , 3 ), ( 1 , 4 , 4 , 2 ), ( 1 , 2 , 4 , 4 ), ( 1 , 2 , 7 , 3 ), ( 1 , 4 , 7 , 4 ); 
	

    
INSERT INTO Menu_Categoria (nombre) VALUES
    ('Entradas'),
    ('Platos Principales'),
    ('Postres'),
    ('Bebidas'),
    ('Aperitivos'),
    ('Ensaladas'),
    ('Sopas'),
    ('Pizzas'),
    ('Pasta'),
    ('Sushi'),
    ('Tacos'),
    ('Hamburguesas'),
    ('Carnes a la Parrilla'),
    ('Comida Vegetariana');

-- Entradas
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (1, 'Bruschetta', 'Pan tostado con tomate, ajo y albahaca.', 8.99),
    (1, 'Ceviche', 'Pescado marinado en jugo de limón con cebolla, chile y cilantro.', 12.50),
    (1, 'Calamares Fritos', 'Calamares empanizados y fritos, acompañados de salsa tártara.', 10.99),
    (1, 'Ensalada Caprese', 'Tomates frescos, mozzarella y albahaca con aderezo balsámico.', 9.99),
    (1, 'Empanadas', 'Pastelitos rellenos de carne, pollo o verduras.', 7.99),
    (1, 'Rollitos de Primavera', 'Vegetales frescos envueltos en papel de arroz y fritos.', 6.99);

-- Platos Principales
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (2, 'Filete de Salmón a la Parrilla', 'Filete de salmón fresco a la parrilla con salsa de limón y eneldo.', 18.99),
    (2, 'Lasaña de Carne', 'Lasaña casera de carne con capas de pasta, carne molida y queso.', 14.50),
    (2, 'Pollo al Curry', 'Pollo en salsa de curry con vegetales salteados y arroz.', 16.99),
    (2, 'Bistec a la Parrilla', 'Bistec de res a la parrilla con papas fritas y vegetales asados.', 20.99),
    (2, 'Pasta Alfredo', 'Pasta con salsa cremosa de queso parmesano y tocino.', 12.99),
    (2, 'Tacos de Carnitas', 'Tacos de cerdo asado con cebolla, cilantro y salsa verde.', 9.99);

-- Postres
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (3, 'Tiramisú', 'Postre italiano de capas de bizcocho empapado en café con crema de mascarpone.', 8.99),
    (3, 'Flan de Caramelo', 'Flan cremoso con un toque de caramelo.', 6.50),
    (3, 'Cheesecake de Fresa', 'Pastel de queso cremoso con cobertura de fresas frescas.', 7.99),
    (3, 'Helado de Vainilla', 'Helado casero de vainilla con salsa de chocolate caliente.', 5.99),
    (3, 'Crema Catalana', 'Postre español de crema pastelera con caramelo quemado en la superficie.', 9.50),
    (3, 'Pastel de Chocolate', 'Pastel de chocolate esponjoso con ganache de chocolate.', 7.99);

-- Bebidas
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (4, 'Margarita', 'Cóctel a base de tequila, jugo de limón y triple sec.', 9.99),
    (4, 'Piña Colada', 'Cóctel tropical a base de ron, crema de coco y jugo de piña.', 8.50),
    (4, 'Mojito', 'Cóctel refrescante a base de ron, menta, azúcar, limón y soda.', 7.99),
    (4, 'Vino Tinto', 'Vino tinto de la región con cuerpo medio y aroma a frutas rojas.', 12.99),
    (4, 'Agua Mineral', 'Agua mineral natural embotellada.', 2.50),
    (4, 'Refresco de Cola', 'Bebida gaseosa refrescante con sabor a cola.', 3.00);

-- Aperitivos
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (5, 'Nachos', 'Tortilla chips cubiertos con queso fundido, jalapenos y guacamole.', 10.99),
    (5, 'Alitas de Pollo', 'Alitas de pollo sazonadas y fritas, servidas con salsa picante.', 11.50),
    (5, 'Tostadas de Atún', 'Tostadas crujientes con tartar de atun y aguacate.', 13.99),
    (5, 'Queso Fundido', 'Queso fundido con chorizo y pimientos, servido con tortillas de maiz.', 9.99),
    (5, 'Palitos de Mozzarella', 'Palitos de queso mozzarella empanizados y fritos, servidos con salsa marinara.', 8.99),
    (5, 'Ceviche de Camarón', 'Camarones marinados en jugo de limón con cebolla, chile y cilantro.', 12.99);

-- Ensaladas
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (6, 'Ensalada Cesar', 'Lechuga romana, crutones, queso parmesano y aderezo Cesar.', 9.99),
    (6, 'Ensalada Griega', 'Lechuga, tomate, pepino, cebolla, aceitunas y queso feta con aderezo de oliva.', 10.50),
    (6, 'Ensalada de Pollo', 'Lechuga, pollo a la parrilla, aguacate, maíz, tomate y aderezo de cilantro.', 11.99),
    (6, 'Ensalada de Frutas', 'Selección de frutas frescas de temporada con un toque de miel.', 8.99),
    (6, 'Ensalada Caprese', 'Tomates frescos, mozzarella y albahaca con aderezo balsámico.', 9.99),
    (6, 'Ensalada de Quinoa', 'Quinoa cocida con aguacate, tomate, pepino y aderezo de limón.', 12.99);

-- Sopas
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (7, 'Sopa de Tomate', 'Sopa de tomate casera con albahaca fresca y crema.', 7.99),
    (7, 'Sopa de Cebolla', 'Sopa de cebolla caramelizada con crutones y queso gratinado.', 8.50),
    (7, 'Sopa de Tortilla', 'Sopa de tortilla con pollo desmenuzado, aguacate, queso y tortillas fritas.', 9.99),
    (7, 'Caldo de Res', 'Caldo de res con verduras y carne de res en trozos.', 10.99),
    (7, 'Crema de Champiñones', 'Crema de champiñones con un toque de vino blanco.', 8.99),
    (7, 'Sopa Miso', 'Sopa japonesa de pasta de soja fermentada con tofu y algas.', 7.50);

-- Pizzas
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (8, 'Pizza Margarita', 'Tomate, mozzarella y albahaca fresca.', 11.99),
    (8, 'Pizza Pepperoni', 'Tomate, mozzarella y pepperoni.', 12.50),
    (8, 'Pizza Vegetariana', 'Tomate, mozzarella y una variedad de vegetales.', 13.99),
    (8, 'Pizza Hawaiana', 'Tomate, mozzarella, jamón y piña.', 12.99),
    (8, 'Pizza Cuatro Quesos', 'Tomate, mozzarella, gorgonzola, parmesano y queso de cabra.', 14.50),
    (8, 'Pizza Marinara', 'Tomate, ajo, orégano y aceitunas negras.', 10.99);

-- Pasta
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (9, 'Spaghetti Carbonara', 'Pasta con salsa de huevo, queso parmesano, panceta y pimienta negra.', 14.99),
    (9, 'Fettuccine Alfredo', 'Pasta con salsa cremosa de queso parmesano.', 13.50),
    (9, 'Lasaña de Vegetales', 'Lasaña con capas de pasta, vegetales y queso.', 12.99),
    (9, 'Raviolis de Ricotta y Espinacas', 'Raviolis rellenos de ricotta y espinacas con salsa de tomate.', 15.99),
    (9, 'Penne Arrabbiata', 'Pasta con salsa de tomate, ajo, chile y albahaca.', 11.99),
    (9, 'Tortellini con Salsa de Pesto', 'Tortellini rellenos de queso con salsa de pesto y nueces.', 16.50);

-- Sushi
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (10, 'Sashimi Variado', 'Selección de pescado crudo cortado en finas lonchas.', 22.99),
    (10, 'Maki California', 'Maki enrollado con cangrejo, aguacate y pepino.', 10.50),
    (10, 'Nigiri de Salmón', 'Bolas de arroz cubiertas con filete de salmón.', 12.99),
    (10, 'Uramaki Philadelphia', 'Maki invertido con salmón, queso crema y pepino.', 11.99),
    (10, 'Tempura Roll', 'Maki frito relleno de langostino tempura y aguacate.', 14.50),
    (10, 'Dragon Roll', 'Maki cubierto con anguila asada y aguacate.', 16.99);

-- Tacos
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (11, 'Tacos al Pastor', 'Tacos de carne de cerdo marinada con piña y cebolla.', 9.99),
    (11, 'Tacos de Bistec', 'Tacos de bistec con cebolla, cilantro y salsa verde.', 11.50),
    (11, 'Tacos de Camarón', 'Tacos de camarón a la plancha con repollo y salsa de chipotle.', 13.99),
    (11, 'Tacos de Pescado', 'Tacos de pescado empanizado con repollo y salsa de crema.', 12.99),
    (11, 'Tacos Vegetarianos', 'Tacos con una variedad de vegetales salteados y guacamole.', 10.50),
    (11, 'Tacos de Lengua', 'Tacos de lengua de res cocida lentamente con cebolla y cilantro.', 14.99);

-- Hamburguesas
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (12, 'Hamburguesa Clásica', 'Carne de res, lechuga, tomate, cebolla y mayonesa.', 9.99),
    (12, 'Hamburguesa BBQ', 'Carne de res, queso cheddar, cebolla caramelizada y salsa BBQ.', 11.50),
    (12, 'Hamburguesa Vegetariana', 'Hamburguesa de garbanzos con aguacate, lechuga y tomate.', 10.99),
    (12, 'Hamburguesa Tex-Mex', 'Carne de res, jalapeños, guacamole, queso pepper jack y salsa chipotle.', 12.99),
    (12, 'Hamburguesa de Pollo', 'Pechuga de pollo a la parrilla con lechuga, tomate y mayonesa.', 10.50),
    (12, 'Hamburguesa Doble', 'Doble carne de res, queso, lechuga, tomate y cebolla.', 14.50);

-- Carnes a la Parrilla
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (13, 'Ribeye', 'Corte de carne de res marmoleado a la parrilla.', 25.99),
    (13, 'Filete Mignon', 'Corte de solomillo de res a la parrilla con mantequilla de ajo.', 29.50),(13, 'Costillas de Cerdo BBQ', 'Costillas de cerdo glaseadas con salsa BBQ.', 21.99),
    (13, 'Pollo Asado', 'Pollo entero marinado y asado a la parrilla.', 18.99),
    (13, 'Chuletón de Cerdo', 'Chuletón de cerdo sazonado y asado a la parrilla.', 19.50),
    (13, 'Bife de Chorizo', 'Corte de carne de res argentino a la parrilla.', 22.50);

-- Comida Vegetariana
INSERT INTO Menu_Producto (id_categoria, nombre, descripcion, precio) VALUES
    (14, 'Bowl de Quinoa y Verduras', 'Quinoa, vegetales asados, aguacate y aderezo de limón.', 12.99),
    (14, 'Tacos de Hongos Portobello', 'Tacos con hongos portobello asados, guacamole y repollo.', 11.50),
    (14, 'Burger de Lentejas', 'Hamburguesa vegetariana de lentejas con lechuga y tomate.', 10.99),
    (14, 'Wrap de Tofu', 'Wrap con tofu marinado, espinacas, tomate y hummus.', 9.99),
    (14, 'Curry de Vegetales', 'Curry de vegetales con arroz basmati.', 13.50),
    (14, 'Ensalada de Garbanzos', 'Ensalada de garbanzos con pimientos, pepino, cebolla y aderezo de tahini.', 11.99);

