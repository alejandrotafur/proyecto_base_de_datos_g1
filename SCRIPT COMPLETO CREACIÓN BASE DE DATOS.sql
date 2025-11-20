CREATE DATABASE urbanpark;
USE urbanpark;
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80),
    correo VARCHAR(120) UNIQUE,
    password VARCHAR(200),
    rol_id INT,
    activo TINYINT DEFAULT 1
);

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80),
    telefono VARCHAR(20),
    correo VARCHAR(120)
);

CREATE TABLE vehiculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    placa VARCHAR(10),
    tipo VARCHAR(30),
    FOREIGN KEY(cliente_id) REFERENCES clientes(id)
);


CREATE TABLE reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehiculo_id INT,
    fecha_entrada DATETIME,
    fecha_salida DATETIME NULL,
    estado VARCHAR(20),
    FOREIGN KEY(vehiculo_id) REFERENCES vehiculos(id)
);

CREATE TABLE tarifas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_vehiculo VARCHAR(40),
    precio_hora DECIMAL(10,2)
);

CREATE TABLE facturacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reserva_id INT,
    total DECIMAL(10,2),
    fecha_pago DATETIME,
    metodo_pago VARCHAR(30),
    FOREIGN KEY(reserva_id) REFERENCES reservas(id)
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80),
    cargo VARCHAR(50),
    salario DECIMAL(10,2)
);


CREATE TABLE parqueaderos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80),
    direccion VARCHAR(150),
    capacidad INT
);


CREATE TABLE auditoria_reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reserva_id INT,
    accion VARCHAR(50),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);





