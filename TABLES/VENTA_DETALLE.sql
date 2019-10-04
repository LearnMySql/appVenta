/* Poner en uso la base de datos */
USE VENTA;

/* Crear una tabla */
CREATE TABLE VENTA_DETALLE
	(
		IDVENTDET int auto_increment comment 'Identificador de item del detalle de una venta.',
        IDPROD int comment 'Identificador del producto que se está vendiendo.',
		CANTPRODVENTDET decimal(6,2) not null comment 'cantidad de productos que se está vendiendo.',
        IDVENT int comment 'Identificador de la orden de venta.',
		CONSTRAINT VENTDET_PK PRIMARY KEY (IDVENTDET),
        CONSTRAINT VENTA_DETALLE_VENTA_IDVENT FOREIGN KEY (IDVENT) REFERENCES VENTA (IDVENT),
        CONSTRAINT VENTA_DETALLE_PRODUCTO_IDPROD FOREIGN KEY (IDPROD) REFERENCES PRODUCTO (IDPROD)
	) comment 'Contiene toda la información de la tabla venta.';

/* Validar si se ha creado la tabla */
select IF 
	(EXISTS 
		(select Table_Name from information_schema.TABLES where Table_Name='venta_detalle' and TABLE_SCHEMA='venta'), 
        'La tabla se ha creado satisfactoriamente', 
        'No se ha podido crear la tabla'); 

/* Mostrar estructura de la tabla cliente */
-- DESCRIBE VENTA;

/* Mensaje */
-- SELECT 'La tabla se ha creado satisfactoriamente'
-- AS 'Resultado';
