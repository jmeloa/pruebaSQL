#¿Que cliente realizó la compra más cara?
SELECT FA.IdFactura, FA.venta, FA.IdCliente, cliente.Nombre, cliente.Rut FROM
(select SQ.IdFactura, SQ.venta, IdCliente from
(SELECT IdFactura, sum(Cantidad*producto_inv.PrecioUnit) as venta FROM detalle_factura
LEFT JOIN producto_inv ON detalle_factura.IdProducto=producto_inv.IdProducto
GROUP BY IdFactura 
ORDER BY sum(Cantidad*producto_inv.PrecioUnit) DESC
LIMIT 1) as SQ
LEFT JOIN facturas ON SQ.IdFactura=facturas.IdFactura) as FA
LEFT JOIN cliente ON FA.IdCliente=cliente.IdCliente;

#¿Que cliente pagó sobre 100 de monto?
Select QRY03.IdFactura, QRY03.venta, QRY03.IdCliente,cliente.Nombre, cliente.Rut
FROM
(select QRY02.IdFactura,QRY02.venta, IdCliente
FROM
(SELECT IdFactura, venta
FROM
(SELECT detalle_factura.IdFactura, sum(Cantidad*producto_inv.PrecioUnit) as venta 
FROM detalle_factura
LEFT JOIN producto_inv ON detalle_factura.IdProducto=producto_inv.IdProducto
GROUP BY IdFactura
) as QRY01
WHERE venta>100
) as QRY02
LEFT JOIN facturas ON QRY02.IdFactura=facturas.IdFactura
) as QRY03
LEFT JOIN cliente ON QRY03.IdCliente=cliente.IdCliente;

;



#¿Cuantos clientes han comprado el producto 6

Select QRY03.IdFactura, QRY03.venta, QRY03.IdCliente,cliente.Nombre, cliente.Rut
FROM
(select QRY02.IdFactura,QRY02.venta, IdCliente
FROM
(SELECT IdFactura, venta
FROM
(SELECT detalle_factura.IdFactura, sum(Cantidad*producto_inv.PrecioUnit) as venta 
FROM detalle_factura
LEFT JOIN producto_inv ON detalle_factura.IdProducto=producto_inv.IdProducto
WHERE detalle_factura.IdProducto='6'
GROUP BY IdFactura
) as QRY01

) as QRY02
LEFT JOIN facturas ON QRY02.IdFactura=facturas.IdFactura
) as QRY03
LEFT JOIN cliente ON QRY03.IdCliente=cliente.IdCliente;

;