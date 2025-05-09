/* procedure para sumar 2 numeros */

DELIMITER //

CREATE PROCEDURE OpSuma(in dato1 int, dato2 int, out suma int)

BEGIN 
    DECLARE suma INT;
    SET @suma = (@dato1 + @dato2);
    SELECT + CAST(@suma as VARCHAR(50)) as Resultado;

END //

DELIMITER ;

SET @dato1 = '120';
SET @dato2 = '125';

CALL OpSuma(@dato1, @dato2, @suma);