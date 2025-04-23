CREATE DATABASE mihuerto;

CREATE LOGIN darwin WITH PASSWORD = '$Sql21210909server';
USE mihuerto;
CREATE USER darwin FOR LOGIN darwin;
ALTER ROLE db_owner ADD MEMBER darwin;

create schema terreno;


--Crear tabla de prueba
CREATE TABLE terreno.cliente (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL
);

--listar solo las tablas existentes
SELECT name 
FROM sys.tables;


--listar tablas y schemas
SELECT TABLE_SCHEMA, TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE';
