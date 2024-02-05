USE master
GO

IF EXISTS (SELECT name FROM sysdatabases WHERE name = 'BD_Biblioteca')
BEGIN
	ALTER DATABASE BD_Biblioteca SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE BD_Biblioteca;
END
GO

CREATE DATABASE BD_Biblioteca
ON PRIMARY
(
    NAME = 'biblioteca_dat',
    FILENAME = 'c:\db\BD_biblioteca_dat.mdf',
    SIZE = 10MB,
    FILEGROWTH = 10%
)
LOG ON
(
    NAME = 'biblioteca_log',
    FILENAME = 'c:\db\BD_biblioteca_log.ldf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
);
GO

