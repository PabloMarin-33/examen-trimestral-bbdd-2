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
    FOREIGN KEY (marca_id) REFERENCES marcas(id)
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
    FOREIGN KEY (marca_id) REFERENCES marcas(id),
    FOREIGN KEY (centro_id) REFERENCES centros(id)
 
);  

INSERT INTO marcas (nombre) VALUES
("Toyota"),
("Ford"),
("Volkswagen"),
("BMW"),
("Mercedes");

INSERT INTO modelos (nombre, marca_id) VALUES
("Corolla", ()),
("Focus", (SELECT WHERE id FROM marca LIKE = "Ford")),
("Golf", (SELECT WHERE id FROM marca LIKE = "Volkswagen")),
("X3", (SELECT WHERE id FROM marca LIKE = "BMW")),
("C-Class", (SELECT WHERE id FROM marca LIKE = "Mercedes"));

INSERT INTO centros (provincia, direccion) VALUES
("Granada", "Avenida Andaluces 18"),
("Malaga", "Avenida Comandante García 12"),
("Malaga", "Centro Comercial Vialia"),
("Sevilla", "Estación Santa Justa P2");

INSERT INTO vehiculos (marca_id, centro_id, precio, kilometros_recorridos) VALUES
((SELECT WHERE id FROM marca LIKE = "Toyota"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Andaluces 18"), 50, 4000),
((SELECT WHERE id FROM marca LIKE = "Ford"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Andaluces 18"), 55, 4000),
((SELECT WHERE id FROM marca LIKE = "Volkswagen"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Andaluces 18"), 50, 4000),
((SELECT WHERE id FROM marca LIKE = "BMW"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Andaluces 18"), 95, 4000),
((SELECT WHERE id FROM marca LIKE = "Mercedes"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Andaluces 18"), 120, 4000),
((SELECT WHERE id FROM marca LIKE = "Toyota"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Comandante García 12"), 50, 4000),
((SELECT WHERE id FROM marca LIKE = "Ford"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Comandante García 12"), 55, 4000),
((SELECT WHERE id FROM marca LIKE = "Volkswagen"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Comandante García 12"), 50, 4000),
((SELECT WHERE id FROM marca LIKE = "BMW"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Comandante García 12"), 95, 4000),
((SELECT WHERE id FROM marca LIKE = "Mercedes"), (SELECT WHERE direccion FROM centro LIKE = "Avenida Comandante García 12"), 120, 4000),
((SELECT WHERE id FROM marca LIKE = "Toyota"), (SELECT WHERE direccion FROM centro LIKE = "Centro Comercial Vialia"), 50, 4000),
((SELECT WHERE id FROM marca LIKE = "Ford"), (SELECT WHERE direccion FROM centro LIKE = "Centro Comercial Vialia"), 55, 4000),
((SELECT WHERE id FROM marca LIKE = "Volkswagen"), (SELECT WHERE direccion FROM centro LIKE = "Centro Comercial Vialia"), 50, 4000),
((SELECT WHERE id FROM marca LIKE = "BMW"), (SELECT WHERE direccion FROM centro LIKE = "Centro Comercial Vialia"), 95, 4000),
((SELECT WHERE id FROM marca LIKE = "Mercedes"), (SELECT WHERE direccion FROM centro LIKE = "Centro Comercial Vialia"), 120, 4000),
((SELECT WHERE id FROM marca LIKE = "Toyota"), (SELECT WHERE direccion FROM centro LIKE = "Estación Santa Justa P2"), 50, 4000),
((SELECT WHERE id FROM marca LIKE = "Ford"), (SELECT WHERE direccion FROM centro LIKE = "Estación Santa Justa P2"), 55, 4000),
((SELECT WHERE id FROM marca LIKE = "Volkswagen"), (SELECT WHERE direccion FROM centro LIKE = "Estación Santa Justa P2"), 50, 4000),
((SELECT WHERE id FROM marca LIKE = "BMW"), (SELECT WHERE direccion FROM centro LIKE = "Estación Santa Justa P2"), 95, 4000),
((SELECT WHERE id FROM marca LIKE = "Mercedes"), (SELECT WHERE direccion FROM centro LIKE = "Estación Santa Justa P2"), 120, 4000);



