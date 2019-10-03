/* Poner en uso la base de datos */
USE VENTA;

/* Crear una tabla */
CREATE TABLE cliente
	(idclient int auto_increment,
	 nomclient varchar(60),
     CONSTRAINT PK PRIMARY KEY (idclient));
