/* 11. La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IVA
y el total facturado. La base imponible se calcula sumando el coste del producto por el número
de unidades vendidas de la tabla detalle_pedido. El IVA es el 21 % de la base imponible, y el
total la suma de los dos campos anteriores. */


/* 13. La misma información que en la pregunta anterior, pero agrupada por código de producto
filtrada por los códigos que empiecen por OR. */

/* 14. Lista las ventas totales de los productos que hayan facturado más de 3000 euros. Se mostrará
el nombre, unidades vendidas, total facturado y total facturado con impuestos (21% IVA). */

SELECT prod.nombre, dp.cantidad, SUM(dp.precio_unidad * dp.cantidad), SUM(dp.precio_unidad * dp.cantidad) * 0.79
FROM producto prod JOIN detalle_pedido dp ON prod.codigo_producto = dp.codigo_producto 
GROUP BY prod.nombre HAVING SUM(dp.precio_unidad * dp.cantidad) > 3000;


/* 17. Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que
tendrá que calcular cuál es el número total de unidades que se han vendido de cada producto a
partir de los datos de la tabla detalle_pedido. Una vez que sepa cuál es el código del producto,
puede obtener su nombre fácilmente.) */

SELECT prod.nombre, dp.cantidad 
FROM producto prod JOIN detalle_pedido dp ON prod.codigo_producto = dp.codigo_producto 
WHERE dp.cantidad = ANY( 
    SELECT MAX(dp.cantidad) 
    FROM detalle_pedido dp 
) 
ORDER BY dp.cantidad LIMIT 1;

+----------------------------------+----------+
| nombre                           | cantidad |
+----------------------------------+----------+
| Thymus Citriodra (Tomillo lim?n) |      450 |
+----------------------------------+----------+



