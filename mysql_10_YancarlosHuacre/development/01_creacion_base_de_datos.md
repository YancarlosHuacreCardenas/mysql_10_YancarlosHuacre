# BASE DE DATOS EN MYSQL
1. [MYSQL](#mysql)
2. [Gestión de base de datos](#gestion-de-base-de-datos)
   * [Crear base de datos](#crear-base-de-datos)
   *  [CREAR LA TABLA 'USERS' BASADA EN TU ESTRUCTURA](#crear-base-de-datos)
   *   [INSERTAR USUARIOS EN LA TABLAT 'USERS'](#crear-base-de-datos)
   *    [INVENTARIO DE BASE DE DATOS](#crear-base-de-datos)
   *     [ELIMINAR BASE DE DATOS](#crear-base-de-datos)
   *  [Crear base de datos](#crear-base-de-datos)
   *   [Crear base de datos](#crear-base-de-datos)
   *    [Crear base de datos](#crear-base-de-datos)
   *     [Crear base de datos](#crear-base-de-datos)

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

### LISTAR TODOS LOS USUARIOS
```sql
SELECT * FROM users;
````

### LISTAR USUARIOS CON SU TIPO Y NÚMERO DE DOCUMENTO
```sql
SELECT name, surnames, identification_document, document_number FROM users;
````

### BUSCAR UN USUARIO POR CORREO ELECTRÓNICO

```sql
SELECT * FROM users WHERE name = 'Carlos';
````

### ACTUALIZAR EL NÚMERO DE CELULAR DE UN USUARIO

```sql
UPDATE users 
SET cellular = '999888777' 
WHERE ID = 1;
````

### ACTUALIZAR EL CORREO DE UN USUARIO

```sql
UPDATE users 
SET email = 'lucia.new@email.com' 
WHERE ID = 2;
````

### AÑADIR COLUMNA 'ACTIVO' PARA ELIMINACIÓN LÓGICA (OPCIONAL)
```sql
ALTER TABLE users ADD COLUMN activo BOOLEAN DEFAULT TRUE;
````

### MARCAR A UN USUARIO COMO INACTIVO
```sql
UPDATE users 
SET activo = FALSE 
WHERE id = 3;
````

### ELIMINAR UN USUARIO DE FORMA PERMANENTE
```sql
DELETE FROM users 
WHERE id = 3;
````

### VERIFICAR LA TABLAT DE USUARIOS
```sql
SELECT * FROM users;
````
