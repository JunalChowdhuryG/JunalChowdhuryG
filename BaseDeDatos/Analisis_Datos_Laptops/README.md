# Proyecto de Análisis de Datos de Laptops

Este es un proyecto básico de análisis de datos de laptops utilizando SQL. El objetivo principal es importar un archivo CSV llamado "datos_laptop.csv", insertarlo en una tabla llamada "laptops_sin_normalizar" en una base de datos MariaDB y luego normalizar los datos en varias tablas relacionadas. Posteriormente, realizaremos consultas SQL para realizar un análisis exploratorio de datos y preparar datos para visualización.

## Archivos

- `datos_laptop.csv`: Archivo CSV que contiene los datos de las laptops.
- `01_Importacion_Datos.sql`: Script SQL para importar los datos del archivo `datos_laptop.csv`.
- `02_Creacion_Tablas.sql`: Script SQL para crear las tablas en la base de datos.
- `03_Completar_Tablas.sql`: Script SQL con consultas insertar los datos a las tablas.
- `04_Analisis_Exploratorio.sql`: Script SQL con consultas para el análisis exploratorio de datos.
- `05_Preparacion_Datos_Visualizacion.sql`: Script SQL con consultas para preparar datos para visualización.

## Requerimientos

- MariaDB instalado y configurado en tu sistema.
- Un cliente de MariaDB para ejecutar consultas SQL (por ejemplo, MySQL Workbench, phpMyAdmin, línea de comandos de MariaDB, etc.).
- El archivo CSV `datos_laptop.csv` con los datos de las laptops.

## Estructura de la Base de Datos

El archivo `02_Creacion_Tablas.sql` contiene las instrucciones SQL para crear las siguientes tablas:

- `laptops_sin_normalizar`: Tabla principal donde se insertan los datos del archivo CSV.
- `laptops`: Tabla normalizada para almacenar datos específicos de cada laptop.
- `marca_Laptop`: Tabla para almacenar marcas de laptops.
- `tipo_Laptop`: Tabla para almacenar tipos de laptops.
- `procesadores`: Tabla para almacenar datos específicos de los procesadores.
- `marca_Procesador`: Tabla para almacenar marcas de procesadores.
- `GPUs`: Tabla para almacenar datos específicos de las GPUs.
- `marca_GPU`: Tabla para almacenar marcas de GPUs.
- `sistema_operativo`: Tabla para almacenar sistemas operativos.
- `almacenamiento_1` y `almacenamiento_2`: Tablas para almacenar información sobre el almacenamiento de las laptops.
- `resolucion`: Tabla para almacenar resoluciones de pantalla.
- `tipo_almacenamiento`: Tabla para almacenar tipos de almacenamiento.

## Ejecución del Proyecto

1. Crea una base de datos en MariaDB.
2. Ejecuta el script `01_Importacion_Datos.sql` para importar los datos a la tabla `laptops_sin_normalizar` (modifica la ruta del archivo).
3. Ejecuta el script `02_Creacion_Tablas.sql` para crear las tablas en la base de datos.
4. Ejecuta el script `03_Completar_Tablas.sql` para insertar los datos en las tablas.
5. Ejecuta consultas SQL en `04_Analisis_Exploratorio.sql` para realizar el análisis exploratorio de datos (ejecuta las consultas uno a uno). 
6. Utiliza las consultas en `05_Preparacion_Datos_Visualizacion.sql` para preparar datos para la visualización (ejecuta las consultas uno a uno).

## Notas

- Este proyecto es básico y puede contener errores. Se recomienda revisar y ajustar el código según sea necesario.
- Se asume que los datos en el archivo CSV están limpios y formateados correctamente.
- Se asume que los datos en el archivo CSV son representativos y adecuados para el análisis propuesto.




