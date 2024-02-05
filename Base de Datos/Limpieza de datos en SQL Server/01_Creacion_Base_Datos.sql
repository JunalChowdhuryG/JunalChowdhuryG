USE master
GO

IF EXISTS (SELECT name FROM sysdatabases WHERE name = 'DC_Autos')
BEGIN
	ALTER DATABASE DC_Autos SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DC_Autos;
END
GO

CREATE DATABASE DC_Autos
ON PRIMARY
(
    NAME = 'DC_Autos_dat',
    FILENAME = 'c:\db\DC_Autos_dat.mdf',
    SIZE = 10MB,
    FILEGROWTH = 10%
)
LOG ON
(
    NAME = 'DC_Autos_log',
    FILENAME = 'c:\db\DC_Autos_log.ldf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
);
GO

USE DC_Autos
GO