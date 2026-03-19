CREATE DATABASE IF NOT EXISTS tienda_coches;
USE tienda_coches;

CREATE TABLE marcas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE modelos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    marca_id INT,
    FOREIGN KEY (marca_id) REFERENCES marca(id)
);

CREATE TABLE centros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    provincia VARCHAR(120) NOT NULL,
    direccion VARCHAR(120) NOT NULL 
);

CREATE TABLE vehiculos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca_id  INT,
    centro_id INT,
    precio INT NOT NULL,
    kilometros_recorridos INT NOT NULL,
    FOREIGN KEY (marca_id) REFERENCES marca(id),
    FOREIGN KEY (centro_id) REFERENCES centro(id)
 
);  

INSERT INTO marcas (nombre) VALUES
("Toyota"),
("Ford"),
("Volkswagen"),
("BMW"),
("Mercedes");

INSERT INTO modelos (nombre, marca_id) VALUES
("Corolla", (SELECT WHERE id FROM marca LIKE = "Toyota")),
("Golf", (SELECT WHERE id FROM marca LIKE = "Toyota")),