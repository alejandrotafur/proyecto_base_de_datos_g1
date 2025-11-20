-- 1. Cliente + Vehículo
SELECT c.nombre, v.placa, v.tipo
FROM clientes c
JOIN vehiculos v ON c.id = v.cliente_id;

-- 2. Vehículo + Reservas
SELECT v.placa, r.fecha_entrada, r.estado
FROM vehiculos v
JOIN reservas r ON v.id = r.vehiculo_id;

-- 3. Reserva + Factura
SELECT r.id, f.total
FROM reservas r
JOIN facturacion f ON r.id = f.reserva_id;

-- 4. Usuario + Rol
SELECT u.nombre, r.nombre
FROM usuarios u
JOIN roles r ON u.rol_id = r.id;

-- 5. Roles + Permisos
SELECT r.nombre AS rol, p.nombre AS permiso
FROM rol_permiso rp
JOIN roles r ON rp.rol_id = r.id
JOIN permisos p ON rp.permiso_id = p.id;

-- 6. Clientes + Vehículos + Reservas
SELECT c.nombre, v.placa, r.estado
FROM clientes c
JOIN vehiculos v ON c.id = v.cliente_id
JOIN reservas r ON v.id = r.vehiculo_id;

-- 7. Reservas + Facturación + Tarifa
SELECT r.id, v.tipo, t.precio_hora, f.total
FROM reservas r
JOIN vehiculos v ON r.vehiculo_id = v.id
JOIN tarifas t ON v.tipo = t.tipo_vehiculo
JOIN facturacion f ON r.id = f.reserva_id;

-- 8. Auditoría + Reservas
SELECT a.accion, r.estado
FROM auditoria_reservas a
JOIN reservas r ON a.reserva_id = r.id;

-- 9. Empleados + Auditoría
SELECT e.nombre, a.accion
FROM empleados e
JOIN auditoria_reservas a ON e.id = a.id;

-- 10. Sesiones + Usuarios
SELECT s.token, u.nombre
FROM sesiones_activas s
JOIN usuarios u ON s.usuario_id = u.id;
