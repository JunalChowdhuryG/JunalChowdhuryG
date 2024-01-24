-- Cambiamos al contexto de la base de datos 'master'
USE master
GO

-- Verificamos si la base de datos 'Biblioteca' ya existe
IF EXISTS (SELECT name FROM sysdatabases WHERE name = 'Biblioteca')
BEGIN
    -- Cambiamos la base de datos 'Biblioteca' a modo de usuario unico y forzamos la desconexión de cualquier sesion activa
    ALTER DATABASE Biblioteca SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    
    -- Eliminamos la base de datos 'Biblioteca'
    DROP DATABASE Biblioteca;
END
GO

-- Creamos la base de datos 'Biblioteca'
CREATE DATABASE Biblioteca
ON PRIMARY
(
    NAME = 'biblioteca_dat',
    FILENAME = 'c:\db\biblioteca_dat.mdf',
    SIZE = 10MB,
    FILEGROWTH = 10%
)
LOG ON
(
    NAME = 'biblioteca_log',
    FILENAME = 'c:\db\biblioteca_log.ldf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
);
GO

-- Cambiamos al contexto de la nueva base de datos 'biblioteca'
USE Biblioteca
GO