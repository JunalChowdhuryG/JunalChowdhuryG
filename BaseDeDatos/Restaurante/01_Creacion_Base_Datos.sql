
SET @dbname := 'BD_Restaurante';

SET @stmt := IF(EXISTS(SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = @dbname),
    CONCAT('DROP DATABASE ', @dbname), '');

PREPARE drop_stmt FROM @stmt;
EXECUTE drop_stmt;
DEALLOCATE PREPARE drop_stmt;


CREATE DATABASE IF NOT EXISTS BD_Restaurante;

USE BD_Restaurante;

