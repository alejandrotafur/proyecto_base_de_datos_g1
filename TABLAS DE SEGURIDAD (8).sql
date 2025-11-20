CREATE TABLE permisos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80)
);

CREATE TABLE rol_permiso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rol_id INT,
    permiso_id INT,
    FOREIGN KEY(rol_id) REFERENCES roles(id),
    FOREIGN KEY(permiso_id) REFERENCES permisos(id)
);

CREATE TABLE bitacora_logins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    exito TINYINT
);

CREATE TABLE sesiones_activas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    token VARCHAR(200),
    fecha_inicio DATETIME
);

CREATE TABLE tokens_recuperacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    token VARCHAR(200),
    expiracion DATETIME
);


CREATE TABLE accesos_denegados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(120),
    razon VARCHAR(200),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cambios_criticos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tabla_afectada VARCHAR(50),
    descripcion VARCHAR(200),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE logs_triggers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    evento VARCHAR(100),
    descripcion VARCHAR(255),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);




