CREATE DATABASE exa_estudiantes;
GO
USE exa_estudiantes;
GO
CREATE TABLE carreras (
  id INT IDENTITY(1,1) PRIMARY KEY,
  nombre NVARCHAR(120) NOT NULL UNIQUE
);
GO
CREATE TABLE estudiantes (
  id INT IDENTITY(1,1) PRIMARY KEY,
  cedula NVARCHAR(20) NOT NULL UNIQUE,
  nombres NVARCHAR(120) NOT NULL,
  email NVARCHAR(120) NULL,
  carrera_id INT NOT NULL,
  CONSTRAINT fk_est_carrera FOREIGN KEY (carrera_id) REFERENCES carreras(id)
);
GO
INSERT INTO carreras(nombre) VALUES
(N'Software'),
(N'Redes');
GO
INSERT INTO estudiantes(cedula, nombres, email, carrera_id) VALUES
(N'1755122841', N'Dayana Chinchin', N'e1755122841@uisrael.edu.ec', 1),
(N'0102030405', N'Ana Perez', N'ana@correo.com', 2),
(N'1122334455', N'Luis Gomez', N'luis@correo.com', 1);
GO
SELECT * FROM carreras;
SELECT * FROM estudiantes;