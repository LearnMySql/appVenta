/* Poner en uso la base de datos */
USE VENTA;

/* Crear una tabla */
CREATE TABLE CLIENTE
	(
		IDCLI int auto_increment comment 'Identificador de cada cliente.',
		NOMCLI varchar(60) not null comment 'Contiene el nombre del cliente',
		APECLI varchar(60) not null comment 'Contiene el apellido del cliente',
        CIUCLI varchar(60) comment 'Contiene la ciudad de origen del estudiante.',
		CONSTRAINT CLI_PK PRIMARY KEY (IDCLI)
	) comment 'Contiene toda la información de la tabla cliente.';
   
/* Validar si se ha creado la tabla */
select IF 
	(EXISTS 
		(select Table_Name from information_schema.TABLES where Table_Name='CLIENTE' and TABLE_SCHEMA='venta'), 
        'La tabla se ha creado satisfactoriamente', 
        'No se ha podido crear la tabla'); 
        
/* Mostrar estructura de la tabla cliente */
-- DESCRIBE CLIENTE;

/* Mensaje */
-- SELECT 'La tabla se ha creado satisfactoriamente'
-- AS 'Resultado';
