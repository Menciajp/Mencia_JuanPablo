-- Creación de la tablas
CREATE TABLE PAIS(
    pais_id INT PRIMARY KEY NOT NULL,
    nombre_pais VARCHAR(50) UNIQUE NOT NULL
) ENGINE = InnoDB;

CREATE TABLE PROVINCIA(
    provincia_id INT PRIMARY KEY NOT NULL,
    nombre_provincia VARCHAR(50) NOT NULL,
    pais_id INT NOT NULL,
    FOREIGN KEY(pais_id) REFERENCES PAIS(pais_id)
) ENGINE = InnoDB;

CREATE TABLE LOCALIDAD(
    codigo_localidad INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    provincia_id INT NOT NULL,
    FOREIGN KEY(provincia_id) REFERENCES PROVINCIA(provincia_id)
) ENGINE = InnoDB;

CREATE TABLE EMPLEADO(
    empleado_id INT PRIMARY KEY NOT NULL,
    dni VARCHAR(30) UNIQUE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    fecha_alta DATE NOT NULL,
    codigo_localidad INT NOT NULL,
    FOREIGN KEY(codigo_localidad) REFERENCES LOCALIDAD(codigo_localidad)
) ENGINE = InnoDB;

--inserciones
INSERT INTO PAIS (pais_id, nombre_pais)
VALUES (1, 'Argentina'),
       (2, 'Brasil'),
       (3, 'Estados Unidos');


INSERT INTO PROVINCIA (provincia_id, nombre_provincia, pais_id)
VALUES (1, 'Misiones', 1),
       (2, 'Buenos Aires', 1),
       (3, 'Córdoba', 1);

INSERT INTO LOCALIDAD (codigo_localidad, nombre, codigo_postal, provincia_id)
VALUES (1, 'Posadas', '3300', 1),
       (2, 'Eldorado', '3380', 1),
       (3, 'Puerto Iguazú', '3370', 1);


INSERT INTO EMPLEADO (empleado_id, dni, nombre, telefono, email, fecha_alta, codigo_localidad)
VALUES (1, '12345678', 'Juan Perez', '3764123456', 'juan.perez@gmail.com', '2023-06-25', 1),
       (2, '23456789', 'Maria Rodriguez', '3764234567', 'maria.rodriguez@gmail.com', '2023-06-25', 1),
       (3, '34567890', 'Carlos Gomez', '3764345678', 'carlos.gomez@gmail.com', '2023-06-25', 1);