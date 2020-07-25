CREATE DATABASE Prueba01;

CREATE TABLE cliente(
IdCliente SERIAL PRIMARY KEY,
Nombre VARCHAR,
Rut VARCHAR,
Direccion VARCHAR,
Comuna VARCHAR,
Telefono VARCHAR
);


CREATE TABLE facturas(
IdFactura SERIAL PRIMARY KEY,
IdCliente INT,
Fecha DATE,
FOREIGN KEY (IdCliente) REFERENCES cliente(IdCliente));


CREATE TABLE categorias(
IdCat SERIAL PRIMARY KEY,
Desripcion VARCHAR
);

CREATE TABLE producto_inv(
IdProducto SERIAL PRIMARY KEY,
NombreProducto VARCHAR,
Descripcion VARCHAR,
PrecioUnit int,
IdCategoria int,
FOREIGN KEY (IdCategoria) REFERENCES categorias(IdCat));

CREATE TABLE detalle_factura(
idDetalle SERIAL PRIMARY KEY,
IdFactura INT,
IdProducto INT,
Cantidad INT,
FOREIGN KEY (IdFactura) REFERENCES facturas(IdFactura),
FOREIGN KEY (IdProducto) REFERENCES producto_inv(IdProducto)
);


#INSERTO 5 CLIENTES
INSERT INTO cliente (Nombre, Rut, Direccion, Comuna, Telefono)
VALUES ('JORGE MELO', '13465288-8','LA SIEMBRA NORTE 111', 'COLINA', '+56 9 7767 33 50');

INSERT INTO cliente (Nombre, Rut, Direccion, Comuna, Telefono)
VALUES ('VICENTE MELO', '24299957-6','LA SIEMBRA NORTE 111', 'COLINA', '+56 9 7767 33 50');

INSERT INTO cliente (Nombre, Rut, Direccion, Comuna, Telefono)
VALUES ('JOAQUIN MELO', '24321546-9','LA SIEMBRA NORTE 111', 'COLINA', '+56 9 7767 33 50');

INSERT INTO cliente (Nombre, Rut, Direccion, Comuna, Telefono)
VALUES ('JAVIER MELO', '22321526-9','LA SIEMBRA NORTE 111', 'COLINA', '+56 9 7767 33 50');

INSERT INTO cliente (Nombre, Rut, Direccion, Comuna, Telefono)
VALUES ('GUSTAVO MELO', '12654326-8','LA SIEMBRA NORTE 111', 'COLINA', '+56 9 7767 33 50');

#3 CATEGORIAS
INSERT INTO categorias (Desripcion)
VALUES ('ALMUERZO');

INSERT INTO categorias (Desripcion)
VALUES ('BEBESTIBLES');

INSERT INTO categorias (Desripcion)
VALUES ('ONCE');



#8 PRODUCTOS
INSERT INTO producto_inv (NombreProducto, Descripcion,PrecioUnit,IdCategoria)
VALUES ('POLLO ASADO', 'ALMUERZO DIARIO','4500','1');

INSERT INTO producto_inv (NombreProducto, Descripcion,PrecioUnit,IdCategoria)
VALUES ('PAPAS FRITAS', 'ALMUERZO DIARIO','4500','1');

INSERT INTO producto_inv (NombreProducto, Descripcion,PrecioUnit,IdCategoria)
VALUES ('SALCHIPAPAS', 'ALMUERZO DIARIO','4500','1');

INSERT INTO producto_inv (NombreProducto, Descripcion,PrecioUnit,IdCategoria)
VALUES ('FANTA ZERO', 'GASESEOSA','2500','2');

INSERT INTO producto_inv (NombreProducto, Descripcion,PrecioUnit,IdCategoria)
VALUES ('BILZ ZERO', 'GASESEOSA','2500','2');

INSERT INTO producto_inv (NombreProducto, Descripcion,PrecioUnit,IdCategoria)
VALUES ('COCACOLA LIGHT', 'GASESEOSA','2500','2');

INSERT INTO producto_inv (NombreProducto, Descripcion,PrecioUnit,IdCategoria)
VALUES ('FRAQ', 'GALLETAS DE CHOCOLATE','1500','3');

INSERT INTO producto_inv (NombreProducto, Descripcion,PrecioUnit,IdCategoria)
VALUES ('PAN DULCE', 'BERLINES Y CONEJOS','2500','3');



#2 para el cliente 1, con 2 y 3 productos
INSERT INTO facturas (IdCliente, Fecha)
VALUES ('1','1-8-2020');

INSERT INTO facturas (IdCliente, Fecha)
VALUES ('1','2-8-2020');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('9','2','1');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('9','3','2');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('10','2','1');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('10','3','2');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('10','3','2');


#3 para el cliente 2, con 3, 2 y 3 productos
INSERT INTO facturas (IdCliente, Fecha)
VALUES ('2','1-8-2020');

INSERT INTO facturas (IdCliente, Fecha)
VALUES ('2','2-8-2020');

INSERT INTO facturas (IdCliente, Fecha)
VALUES ('2','3-8-2020');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('11','2','1');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('11','3','2');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('11','3','2');



INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('12','2','1');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('12','3','2');



INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('13','4','2');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('13','5','2');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('13','6','2');




#1 para el cliente 3, con 1 producto
INSERT INTO facturas (IdCliente, Fecha)
VALUES ('3','5-8-2020');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('14','9','1');



#4 para el cliente 4, con 2, 3, 4 y 1 producto

INSERT INTO facturas (IdCliente, Fecha)
VALUES ('4','5-8-2020');

INSERT INTO facturas (IdCliente, Fecha)
VALUES ('4','6-8-2020');

INSERT INTO facturas (IdCliente, Fecha)
VALUES ('4','7-8-2020');

INSERT INTO facturas (IdCliente, Fecha)
VALUES ('4','8-8-2020');




INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('15','9','1');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('15','8','3');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('16','5','1');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('16','4','3');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('16','3','2');


***
INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('17','8','3');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('17','5','1');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('17','4','3');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('17','3','2');

INSERT INTO detalle_factura (IdFactura, IdProducto, Cantidad)
VALUES ('18','1','2');





