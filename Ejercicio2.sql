DROP DATABASE IF EXISTS ejercicio2;
CREATE DATABASE ejercicio2;
USE ejercicio2;

CREATE TABLE clientes(
    DNI INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    direccion VARCHAR(100),
    telefono INT,
    sexo VARCHAR(30),
    fecha DATE,
    c_banc INT,
    carnet VARCHAR(30)
);

CREATE TABLE VEHICULOS(
    patente VARCHAR(10) PRIMARY KEY,
    marca VARCHAR(30),
    modelo VARCHAR(30),
    t_seguro VARCHAR(30),
    color VARCHAR(30),
    dni_cliente INT,
    FOREIGN KEY(dni_cliente) REFERENCES clientes(DNI)
);

CREATE TABLE accidentes(
    cod_accidente INT PRIMARY KEY, 
    lugar VARCHAR(100),
    fecha DATE,
    hora TIME,
    nro_vehiculo INT,
    patente_vehiculo VARCHAR(10),
    FOREIGN KEY(patente_vehiculo) REFERENCES VEHICULOS(patente)
);
