-- Crear la base de datos
CREATE DATABASE ODS;
USE ODS;
-- Crear la tabla 'users' basada en tu estructura
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


-- Insertar usuarios en la tabla user
INSERT INTO users(name, surnames, identification_document, document_number, email, cellular) 
VALUES 
('Carlos', 'Ramirez', 'DNI', '12345678', 'carlos.ramirez@email.com', '987654321'),
('Lucia', 'Gonzales', 'PAS', 'A123456', 'lucia.gonzales@email.com', '912345678'),
('Ana', 'Martinez', 'DNI', '87654321', 'ana.martinez@email.com', NULL);

-- Listar todos los usuarios
SELECT * FROM users;

-- Listar usuarios con su tipo y número de documento
SELECT names, surnames, identification_document, document_number FROM users;

-- Buscar un usuario por correo electrónico
SELECT * FROM users WHERE name = 'carlos';


-- Actualizar el número de celular de un usuario
UPDATE users 
SET cellular = '999888777' 
WHERE ID = 1;

-- Actualizar el correo de un usuario
UPDATE users 
SET email = 'lucia.new@email.com' 
WHERE id = 2;


-- Añadir columna 'activo' para eliminación lógica (opcional)
ALTER TABLE users ADD COLUMN activo BOOLEAN DEFAULT TRUE;

-- Marcar a un usuario como inactivo
UPDATE users 
SET activo = FALSE 
WHERE id = 3;

-- Eliminar un usuario de forma permanente
DELETE FROM users 
WHERE id = 3;

select * from users;
