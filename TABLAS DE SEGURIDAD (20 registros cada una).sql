INSERT INTO permisos(nombre) VALUES
('Crear Usuarios'),('Eliminar Usuarios'),('Editar Usuarios'),
('Ver Reportes'),('Crear Reservas'),('Cerrar Reservas'),
('Facturar'),('Auditar'),('Entrar Panel'),
('Ver Seguridad'),('Gestionar Empleados'),('Ver Clientes'),
('Editar Tarifas'),('Exportar Datos'),('Backup'),
('Restaurar'),('Ver Logs'),('Editar Roles'),
('Asignar Permisos'),('Acceso Total');

INSERT INTO rol_permiso(rol_id, permiso_id) VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),
(2,5),(2,6),(2,11),(2,12),(2,13),
(3,12),(3,5),(3,6),(4,4),(4,8),
(5,8),(6,7),(7,10),(8,9),(9,14);

INSERT INTO bitacora_logins(usuario_id, exito) VALUES
(1,1),(2,1),(3,0),(4,1),(5,1),
(6,1),(7,0),(8,1),(9,1),(10,1),
(11,1),(12,1),(13,0),(14,1),(15,1),
(16,1),(17,1),(18,1),(19,1),(20,1);

INSERT INTO sesiones_activas(usuario_id, token, fecha_inicio) VALUES
(1,'tok1',NOW()),(2,'tok2',NOW()),(3,'tok3',NOW()),(4,'tok4',NOW()),
(5,'tok5',NOW()),(6,'tok6',NOW()),(7,'tok7',NOW()),(8,'tok8',NOW()),
(9,'tok9',NOW()),(10,'tok10',NOW()),(11,'tok11',NOW()),(12,'tok12',NOW()),
(13,'tok13',NOW()),(14,'tok14',NOW()),(15,'tok15',NOW()),(16,'tok16',NOW()),
(17,'tok17',NOW()),(18,'tok18',NOW()),(19,'tok19',NOW()),(20,'tok20',NOW());

INSERT INTO tokens_recuperacion(usuario_id, token, expiracion) VALUES
(1,'rec1',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(2,'rec2',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(3,'rec3',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(4,'rec4',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(5,'rec5',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(6,'rec6',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(7,'rec7',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(8,'rec8',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(9,'rec9',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(10,'rec10',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(11,'rec11',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(12,'rec12',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(13,'rec13',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(14,'rec14',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(15,'rec15',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(16,'rec16',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(17,'rec17',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(18,'rec18',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(19,'rec19',DATE_ADD(NOW(),INTERVAL 1 DAY)),
(20,'rec20',DATE_ADD(NOW(),INTERVAL 1 DAY));

INSERT INTO accesos_denegados(usuario, razon) VALUES
('Invitado','No autenticado'),
('Luis','Sin permisos'),
('Cliente X','Intento fallido'),
('Desconocido','IP bloqueada'),
('Juan','Clave incorrecta'),
('Pedro','Clave incorrecta'),
('Ana','Clave incorrecta'),
('Sofia','Token inválido'),
('Daniel','No autorizado'),
('Luisa','IP restringida'),
('Mario','Clave incorrecta'),
('Brenda','Intento sospechoso'),
('Paola','Token expirado'),
('Kevin','Permiso insuficiente'),
('Rosa','Intento fallido'),
('Fabián','Clave incorrecta'),
('Tatiana','No autenticado'),
('Lucas','Intento fallido'),
('Erika','Intento sospechoso'),
('Manuel','Intento fallido');

INSERT INTO cambios_criticos(tabla_afectada, descripcion) VALUES
('usuarios','Cambio masivo'),
('vehiculos','Actualización placas'),
('reservas','Cierre masivo'),
('facturacion','Ajuste valores'),
('empleados','Aumento salarial'),
('roles','Actualización nombres'),
('permisos','Adición permisos nuevos'),
('logs','Limpieza general'),
('parqueaderos','Aumento capacidad'),
('clientes','Corrección de correos'),
('usuarios','Bloqueo masivo'),
('reservas','Reapertura registros'),
('vehiculos','Corrección tipos'),
('tarifas','Ajuste de precios'),
('empleados','Asignación cargos'),
('roles','Actualización detalles'),
('clientes','Actualización teléfonos'),
('parqueaderos','Cambio de nombre'),
('facturacion','Recalculo total'),
('reservas','Anulación registros');

INSERT INTO logs_triggers(evento, descripcion) VALUES
('INSERT','Registro insertado'),
('UPDATE','Registro actualizado'),
('DELETE','Registro eliminado'),
('ALERTA','Alerta generada'),
('ERROR','Error encontrado'),
('LOGIN_OK','Acceso exitoso'),
('LOGIN_FAIL','Acceso fallido'),
('RESERVA','Nueva reserva'),
('FACTURA','Factura generada'),
('AUDITORIA','Cambio auditado'),
('BACKUP','Backup realizado'),
('RESTORE','Restauración realizada'),
('TOKEN','Token creado'),
('SESION','Sesión iniciada'),
('PERMISOS','Actualización permisos'),
('ROL','Cambio de rol'),
('PAGO','Pago registrado'),
('CIERRE','Cierre de caja'),
('APERTURA','Apertura de caja'),
('EVENTO','Evento general');

