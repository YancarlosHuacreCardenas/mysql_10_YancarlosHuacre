# BASE DE DATOS EN MYSQL

1. [MYSQL](#mysql)
2. [Gestión de base de datos](#gestion-de-base-de-datos)
   * [Crear base de datos](#crear-base-de-datos)
   * [Archivos físicos de la base de datos](#archivos-fisicos-de-la-base-de-datos)
   * [Poner en uso de la base de datos](#poner-en-uso-de-la-base-de-datos)
   * [Inventario de base de datos](#inventario-de-base-de-datos)
   * [Eliminar base de datos](#eliminar-base-de-datos)
3. [Creación de base de datos PRO](#creacion-de-base-de-datos-pro)

### MySQL
- Es uno de los SGBD más populares en el mundo.
- MySQL Community Edition (5.x) VS MySQL Enterprise Edition (8.x).
- Existe una gran comunidad y documentación disponible.
- Se integra fácilmente con lenguajes de programación populares.
- Se adapta a una gran variedad de aplicaciones simples y complejas.

---

## GESTIÓN DE BASE DE DATOS
- Es el contenedor principal de todos los objetos de una base de datos.
- *Objetos:* tablas, vistas, cursores, índices, procedimientos almacenados, etc.

---

### CREAR BASE DE DATOS

1. Sintaxis para crear una base de datos:

````SQL
CREATE DATABASE ODS;
USE ODS;
````

## CREAR LA TABLA 'USERS' BASADA EN TU ESTRUCTURA

```sql
CREATE TABLE users (
    ID INT AUTO_INCREMENT PRIMARY KEY,           -- Clave primaria auto-incremental
    name VARCHAR(60) NOT NULL,                   -- Nombres del usuario
    surnames VARCHAR(100) NOT NULL,              -- Apellidos del usuario
    identification_document CHAR(3) NOT NULL,    -- Tipo de documento (DNI, PAS, etc.)
    document_number VARCHAR(20) NOT NULL UNIQUE, -- Número de documento único
    email VARCHAR(120) NOT NULL UNIQUE,          -- Email del usuario único
    cellular CHAR(9),                            -- Celular (opcional)
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de registro automática
    activo BOOLEAN DEFAULT TRUE                 -- Estado lógico (activo/inactivo)
);

````
## INSERTAR USUARIOS EN LA TABLAT 'USERS'
```sql
INSERT INTO users(name, surnames, identification_document, document_number, email, cellular) 
VALUES 
('Carlos', 'Ramirez', 'DNI', '12345678', 'carlos.ramirez@email.com', '987654321'),
('Lucia', 'Gonzales', 'PAS', 'A123456', 'lucia.gonzales@email.com', '912345678'),
('Ana', 'Martinez', 'DNI', '87654321', 'ana.martinez@email.com', NULL);
````

### INVENTARIO DE BASE DE DATOS

1. Sintaxis para listar las base de datos:

````SQL
SHOW DATABASES;
````

### ELIMINAR BASE DE DATOS

1. Antes de eliminar una base de datos, esta no debe estar en uso.
2. Para saber que base de datos está en uso utilice: SELECT DATABASE();
3. Poner otra base de datos en uso: USE sakila;
4. Para eliminar una base de datos utilice DROP DATABASE.
5. Sintaxis para eliminar una base de datos:

````SQL
DROP DATABASE nombre_de_tu_base_de_datos;
````

6. Ejemplo:

````SQL
DROP DATABASE dbConsultas_Carreras;
````

7. Verificar si se ha eliminado haciendo un listado de base de datos.

````SQL
SHOW DATABASES;
````

8. Tener presente que el eliminado es una operación irreversible.

## CREACION DE BASE DE DATOS PRO

````SQL
CREATE DATABASE IF NOT EXISTS dbConsultas_Carreras 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_spanish_ci;
USE dbConsultas_Carreras;
````
