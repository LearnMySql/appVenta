/* Crear schema */
CREATE SCHEMA IF NOT EXISTS VENTA
DEFAULT CHARACTER SET utf8;

/* Poner en uso la base de datos */
USE VENTA;

/* Mensaje */
SELECT 'La base de datos se ha creado satisfactoriamente'
AS 'Resultado';

/* Mostrar la base de datos en uso */
SELECT SCHEMA();
