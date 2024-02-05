USE DC_Autos
GO

IF OBJECT_ID('TablaGeneral', 'U') IS NOT NULL
BEGIN
    DROP TABLE TablaGeneral;
END
GO

CREATE TABLE TablaGeneral (
    ID INT PRIMARY KEY,
    FechaExtraccion DATETIME,
    NombreCoche NVARCHAR(255),
    PrecioEUR DECIMAL(10, 2),
    PruebaAB NVARCHAR(50),
    TipoVehiculo NVARCHAR(50),
    AnioRegistro INT,
    TipoTransmision NVARCHAR(50),
    PotenciaPS INT,
    Modelo NVARCHAR(255),
    Kilometraje INT,
    MesRegistro INT,
    TipoCombustible NVARCHAR(50),
    Marca NVARCHAR(50),
    DanioNoReparado NVARCHAR(10),
    FechaCreacionAnuncio DATE,
    CodigoPostal NVARCHAR(20),
    UltimaVisualizacion DATETIME
);
GO

BULK INSERT TablaGeneral
FROM 'C:\Users\ACER\Desktop\data\data_autos.csv'
WITH
(
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n', 
    FIRSTROW = 2
);
GO




