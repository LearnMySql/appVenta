/* Poner en uso la base de datos */
USE VENTA;

/* Crear una tabla */
CREATE TABLE producto
	(idprod int auto_increment,
	 nomprod varchar(60),
     CONSTRAINT PK PRIMARY KEY (idprod));
