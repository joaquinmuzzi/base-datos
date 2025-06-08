// Mostrar el nombre y el código del cliente que realizó el pedido más caro

SELECT c.codigo, c.nombre 
FROM clientes c JOIN pedidos p ON c.codigo = p.cliente
WHERE p.importe = (
    SELECT importe FROM pedidos ORDER BY importe DESC LIMIT 1
);

// Mostrar el nombre y la descripción de todos los ingredientes cuyo importe es mayor al importe promedio de todos los ingredientes.

SELECT codigo, descripcion, importe
FROM ingredientes
WHERE importe > (
    SELECT AVG(importe) FROM ingredientes
);

// Crear una función que reciba el código de un cliente y devuelva el total de pedidos que ha realizado.

DELIMITER //

CREATE FUNCTION clientePedidos(codigo INT(11))
RETURNS INT
DETERMINISTIC
BEGIN

    DECLARE total INT;

    SELECT COUNT(*) INTO total
    FROM pedidos p
    WHERE p.cliente = codigo;
    
    RETURN total;

END //

DELIMITER ;
