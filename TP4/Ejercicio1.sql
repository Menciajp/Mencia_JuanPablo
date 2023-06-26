-- Creación de la tablas
CREATE TABLE Alumno (
  cod_matricula VARCHAR(30)PRIMARY KEY NOT NULL,  
  nombre VARCHAR(30)  NOT NULL,
  dni VARCHAR(30) NOT NULL,
  fecha_nac DATETIME NOT NULL,
  email VARCHAR(30) NOT NULL
)ENGINE=InnoD30
CREATE TABLE Curso (
  cod_curso VARCHAR(30) PRIMARY KEY NOT NULL,
  nombre VARCHAR(30) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE Profesor (
  profesor_id VARCHAR(30) PRIMARY KEY NOT NULL,
  especialidad VARCHAR(30) NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  email VARCHAR(30) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE Alumno_Curso (
  cod_alumno VARCHAR(30),
  cod_curso VARCHAR(30),
  FOREIGN KEY (cod_alumno) REFERENCES Alumno(cod_matricula),
  FOREIGN KEY (cod_curso) REFERENCES Curso(cod_curso)
)ENGINE=InnoDB;

CREATE TABLE Curso_Profesor (
  cod_curso VARCHAR(30),
  profesor_id VARCHAR(30),
  FOREIGN KEY (cod_curso) REFERENCES Curso(cod_curso),
  FOREIGN KEY (profesor_id) REFERENCES Profesor(profesor_id)
) ENGINE=InnoDB;

-- Inserciones
INSERT INTO Alumno (cod_matricula, nombre, dni, fecha_nac, email)
VALUES ('A001', 'Juan Pérez', '12345678', '1996-03-25', 'juan@gmail.com'),
       ('A002', 'María López', '98765432', '1998-07-10', 'maria@gmail.com'),
       ('A003', 'Pedro Gómez', '45678912', '2001-11-15', 'pedro@gmail.com');


INSERT INTO Curso (cod_curso, nombre)
VALUES ('C001', 'Matemáticas'),
       ('C002', 'Historia'),
       ('C003', 'Inglés');


INSERT INTO Profesor (profesor_id, especialidad, nombre, email)
VALUES ('P001', 'Matemáticas', 'Carlos Rodríguez', 'carlos@gmail.com'),
       ('P002', 'Historia', 'Ana Martínez', 'ana@gmail.com'),
       ('P003', 'Inglés', 'Luisa García', 'luisa@gmail.com');


INSERT INTO Alumno_Curso (cod_alumno, cod_curso)
VALUES ('A001', 'C001'),
       ('A002', 'C002'),
       ('A003', 'C003');


INSERT INTO Curso_Profesor (cod_curso, profesor_id)
VALUES ('C001', 'P001'),
       ('C002', 'P002'),
       ('C003', 'P003');