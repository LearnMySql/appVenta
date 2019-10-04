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

/* Validar si se ha creado la tabla */
select IF 
	(EXISTS 
		(select Table_Name from information_schema.TABLES where Table_Name='producto' and TABLE_SCHEMA='venta'), 
        'La tabla se ha creado satisfactoriamente', 
        'No se ha podido crear la tabla'); 

/* Mostrar estructura de la tabla cliente */
-- DESCRIBE PRODUCTO;

/* Mensaje */
-- SELECT 'La tabla se ha creado satisfactoriamente'
-- AS 'Resultado';
