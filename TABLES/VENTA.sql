/* Poner en uso la base de datos */
USE VENTA;

/* Crear una tabla */
CREATE TABLE VENTA
	(
		IDVENT int auto_increment comment 'Identificador de cada venta realizada.',
		FECVENT date not null comment 'Fecha en que se realizó la venta.',
        IDCLI int comment 'Identificador del cliente que realiza la compra.',
		CONSTRAINT VENT_PK PRIMARY KEY (IDVENT),
        CONSTRAINT VENTA_CLIENTE_IDCLI FOREIGN KEY (IDCLI) REFERENCES CLIENTE (IDCLI)
	) comment 'Contiene toda la información de la tabla venta.';
   
/* Validar si se ha creado la tabla */
select IF 
	(EXISTS 
		(select Table_Name from information_schema.TABLES where Table_Name='VENTA' and TABLE_SCHEMA='venta'), 
        'La tabla se ha creado satisfactoriamente', 
        'No se ha podido crear la tabla'); 
        
/* Mostrar estructura de la tabla cliente */
-- DESCRIBE VENTA;

/* Mensaje */
-- SELECT 'La tabla se ha creado satisfactoriamente'
-- AS 'Resultado';
