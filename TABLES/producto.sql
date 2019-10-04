/* Poner en uso la base de datos */
USE VENTA;

/* Crear una tabla */
CREATE TABLE PRODUCTO
	(
		IDPROD int auto_increment comment 'Identificador de cada producto.',
		DESCPROD varchar(60) not null comment 'Descripción del producto.',
		PRECPROD decimal(6,2) not null comment 'Contiene el precio unitario del producto',
        CONSTRAINT PROD_PK PRIMARY KEY (IDPROD)
	) comment 'Contiene toda la información de los productos';
    
/* Mostrar estructura de la tabla cliente */
DESCRIBE PRODUCTO;

/* Mensaje */
SELECT 'La tabla se ha creado satisfactoriamente'
AS 'Resultado';
