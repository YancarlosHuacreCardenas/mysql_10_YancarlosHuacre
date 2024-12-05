CREATE DATABASE preguntas;

USE preguntas;

CREATE TABLE asesor (
    identificador int  NOT NULL COMMENT 'Identificador único de asesor.',
    nombre varchar(50)  NOT NULL COMMENT 'Nombres del asesor.',
    apellido varchar(100)  NOT NULL COMMENT 'Apellidos del asesor.',
    documento_identificacion char(3)  NOT NULL COMMENT '(DNI) para Documento Nacional de Identificación | (CNE) para Carnet de Extranjería.',
    numero_documento varchar(20)  NOT NULL COMMENT 'Número de documento: CEN - 15 y DNI - 8.',
    correo_electronico varchar(60)  NOT NULL,
    celular char(9)  NOT NULL COMMENT 'Contiene el número de celular del asesor.',
    estado_asesor char(1)  NOT NULL COMMENT '(A) activo | (I) inactivo.',
    CONSTRAINT asesor_pk PRIMARY KEY (identificador)
) COMMENT 'Contiene los datos de los asesores responsables de atender las consultas por cada carrera.';

CREATE TABLE pregunta (
    identificador int  NOT NULL,
    fecha_pregunta timestamp  NOT NULL COMMENT 'Contiene la fecha y hora en que se registra la consulta.',
    usuario int  NOT NULL COMMENT 'Identificador numérico y único de cada solicitante.',
    pregunta varchar(400)  NOT NULL COMMENT 'Descripción de la consulta que se realiza.',
    asesor int  NOT NULL COMMENT 'Identificador único de asesor.',
    respuesta varchar(500)  NOT NULL COMMENT 'Contiene la respuesta de atención del asesor.',
    estado_consulta char(1)  NOT NULL COMMENT '(A) Activa | (P) Pendiente.',
    CONSTRAINT pregunta_pk PRIMARY KEY (identificador)
) COMMENT 'Almacena los datos que se registran al momento de hacer una pregunta.';

CREATE TABLE usuario (
    identificador int  NOT NULL COMMENT 'Identificador numérico y único de cada solicitante.',
    nombres varchar(60)  NOT NULL COMMENT 'Contiene los nombres del solicitante.',
    apellidos varchar(100)  NOT NULL COMMENT 'Contiene los apellidos del solicitante.',
    documento_identificacion char(3)  NOT NULL COMMENT '(DNI) Para Documento Nacional de Identificación | (CNE) Para Carnet de Extranjería.',
    numero_documento varchar(20)  NOT NULL COMMENT 'Número de documento de identificación: 8 para DNI | 20 para CNE.',
    correo_electronico varchar(120)  NOT NULL,
    celular char(9)  NULL COMMENT 'Número de celular del solicitante.',
    CONSTRAINT usuario_pk PRIMARY KEY (identificador)
) COMMENT 'Datos personales de la persona que realiza la consulta.';

-- FOREIGN KEYS
ALTER TABLE pregunta ADD CONSTRAINT asesor_consulta FOREIGN KEY asesor_consulta (asesor)
    REFERENCES asesor (identificador);

ALTER TABLE pregunta ADD CONSTRAINT solicitante_consulta FOREIGN KEY solicitante_consulta (usuario)
    REFERENCES usuario (identificador);

SELECT * FROM asesor;
SELECT * FROM pregunta;
SELECT * FROM usuario;