DELIMITER //
CREATE TRIGGER tr_reserva_insert
AFTER INSERT ON reservas
FOR EACH ROW
BEGIN
    INSERT INTO logs_triggers(evento, descripcion)
    VALUES ('INSERT_RESERVA', CONCAT('Reserva creada ID: ', NEW.id));
END //
DELIMITER ;
