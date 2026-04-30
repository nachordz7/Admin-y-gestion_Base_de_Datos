CREATE DATABASE tienda;
USE tienda;

CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    descripcion VARCHAR(100),
    precio DECIMAL(10,2),
    stock INT,
    id_categoria INT,

    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE cupones (
    codigo VARCHAR(20) PRIMARY KEY,
    descuento DECIMAL(5,2)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    fecha DATE,
    estado VARCHAR(20),
    codigo_cupon VARCHAR(20),

    FOREIGN KEY (codigo_cupon) REFERENCES cupones(codigo)
);

CREATE TABLE detalle_pedido (
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10,2),

    PRIMARY KEY (id_pedido, id_producto),

    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

