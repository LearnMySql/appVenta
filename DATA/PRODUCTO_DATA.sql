/* Poner en uso la base de datos */
USE VENTA;

/* Ingresar un registro */
INSERT INTO producto
(idprod, nomprod)
values
(1, 'arroz');

/* Listar registros ingresados */
SELECT * FROM producto;