CREATE DATABASE IF NOT EXISTS tienda_coches;
USE tienda_coches

CREATE TABLE marca(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre TEXT NOT NULL UNIQUE
)

CREATE TABLE modelo(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre TEXT NOT NULL UNIQUE,
    marca_id INTEGER,
    FOREIGN KEY (marca_id) REFERENCES marca(id) ON DELETE CASCADE
)

CREATE TABLE vehiculos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    marca_id  INTEGER,
    modelo_id INTEGER,
    precio INTEGER NOT NULL,
    kilometros_recorridos INTEGER NOT NULL,
    FOREIGN KEY (marca_id) REFERENCES marca(id) ON DELETE CASCADE,
    FOREIGN KEY (modelo_id) REFERENCES modelo(id) ON DELETE CASCADE
)   

CREATE TABLE centro (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    provincia TEXT NOT NULL,
    calle TEXT NOT NULL,
    vehiculos_id INTEGER,
    FOREIGN KEY (vehiculos_id) REFERENCES vehiculos(id) ON DELETE CASCADE


)