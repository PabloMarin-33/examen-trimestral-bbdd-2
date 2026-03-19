

CREATE TABLE vehiculos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    marca  TEXT NOT NULL,
    nombre TEXT NOT NULL,
    precio INTEGER NOT NULL,
    kilometros_recorridos INTEGER NOT NULL
)
     

CREATE TABLE centro (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    provincia TEXT NOT NULL,
    calle TEXT NOT NULL 
)