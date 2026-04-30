CREATE DATABASE hospital;
USE hospital;

CREATE TABLE medicos (
    dni INT PRIMARY KEY,
    nombre VARCHAR(50),
    especialidad VARCHAR(50),
    matricula VARCHAR(20) UNIQUE
);

CREATE TABLE pacientes (
    dni INT PRIMARY KEY,
    nombre VARCHAR(50),
    direccion VARCHAR(100),
    grupo_sang VARCHAR(5)
);

CREATE TABLE turnos (
    dni_paciente INT,
    dni_medico INT,
    fecha DATE,
    hora TIME,
    consultorio VARCHAR(20),

    PRIMARY KEY (dni_paciente, dni_medico, fecha, hora),

    FOREIGN KEY (dni_paciente) REFERENCES pacientes(dni),
    FOREIGN KEY (dni_medico) REFERENCES medicos(dni)
);

CREATE TABLE ingresos (
    id_ingreso INT AUTO_INCREMENT PRIMARY KEY,
    dni_paciente INT,
    dni_medico INT,
    fecha_entrada DATE,
    cama VARCHAR(10),
    diagnostico VARCHAR(100),

    FOREIGN KEY (dni_paciente) REFERENCES pacientes(dni),
    FOREIGN KEY (dni_medico) REFERENCES medicos(dni)
);
