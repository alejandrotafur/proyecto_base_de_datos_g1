DELIMITER //
CREATE PROCEDURE crear_reserva(IN vehiculo INT)
BEGIN
    INSERT INTO reservas (vehiculo_id, fecha_entrada, estado)
    VALUES (vehiculo, NOW(), 'Activa');
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE registrar_pago(IN idReserva INT, IN valor DECIMAL(10,2))
BEGIN
    INSERT INTO facturacion(reserva_id, total, fecha_pago, metodo_pago)
    VALUES(idReserva, valor, NOW(), 'Efectivo');
END //
DELIMITER ;
