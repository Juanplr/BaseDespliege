-- Crea la base de datos si no existe
CREATE DATABASE IF NOT EXISTS prueba;

-- Utiliza la base de datos creada
USE prueba;

-- Crea la tabla presupuesto
CREATE TABLE IF NOT EXISTS presupuesto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cantidad DECIMAL(10, 2),
    nombre VARCHAR(100)
);

-- Inserta los departamentos iniciales
INSERT INTO presupuesto (cantidad, nombre) VALUES (1000.00, 'Limpieza');
INSERT INTO presupuesto (cantidad, nombre) VALUES (2000.00, 'Mobiliario');
INSERT INTO presupuesto (cantidad, nombre) VALUES (1500.00, 'Equipo de Oficina');
