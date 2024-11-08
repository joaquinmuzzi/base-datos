/* 17. Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que
tendrá que calcular cuál es el número total de unidades que se han vendido de cada producto a
partir de los datos de la tabla detalle_pedido. Una vez que sepa cuál es el código del producto,
puede obtener su nombre fácilmente.) */

SELECT prod.nombre, dp.cantidad FROM producto prod JOIN detalle_pedido dp ON prod.codigo_producto = dp.codigo_producto WHERE dp.cantidad = ANY( SELECT MAX(dp.cantidad) FROM detalle_pedido dp ) ORDER BY dp.cantidad LIMIT 1;